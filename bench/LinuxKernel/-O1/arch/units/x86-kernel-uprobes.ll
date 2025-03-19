; ModuleID = 'arch/x86/kernel/uprobes.c'
source_filename = "arch/x86/kernel/uprobes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uprobe_xol_ops = type { ptr, ptr, ptr, ptr }
%struct.pcpu_hot = type { %union.anon.29 }
%union.anon.29 = type { %struct.anon.30, [16 x i8] }
%struct.anon.30 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.insn = type { %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %union.anon.14, %union.anon.15, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.insn_field = type { %union.anon.13, i8, i8 }
%union.anon.13 = type { i32 }
%union.anon.14 = type { %struct.insn_field }
%union.anon.15 = type { %struct.insn_field }
%struct.arch_uprobe = type { %union.anon.16, ptr, %union.anon.17 }
%union.anon.16 = type { [16 x i8] }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { i32, i8, i8 }
%struct.anon.19 = type { i8, i8 }
%struct.mm_struct = type { %struct.anon.26, [0 x i64] }
%struct.anon.26 = type { %struct.anon.27, %struct.maple_tree, ptr, i64, i64, i64, i64, i64, ptr, %struct.atomic_t, %struct.atomic_t, ptr, i64, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [52 x i64], [4 x %struct.percpu_counter], ptr, %struct.mm_context_t, i64, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.uprobes_state, %struct.atomic64_t, %struct.work_struct, [48 x i8] }
%struct.anon.27 = type { %struct.atomic_t, [60 x i8] }
%struct.maple_tree = type { %union.anon.28, i32, ptr }
%union.anon.28 = type { %struct.spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.seqcount = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.mm_context_t = type { i64, %struct.atomic64_t, i64, %struct.rw_semaphore, ptr, i64, %struct.mutex, ptr, ptr, %struct.atomic_t, i16, i16 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.atomic64_t = type { i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.anon.20 = type { i8, i8 }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i64] }
%struct.seqcount_spinlock = type { %struct.seqcount }
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
%struct.uprobe_task = type { i32, %union.anon.21, ptr, i64, ptr, ptr, i32 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { %struct.arch_uprobe_task, i64 }
%struct.arch_uprobe_task = type { i64, i32, i32 }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.24, i64, i64, %union.anon.25 }
%union.anon.24 = type { i64 }
%union.anon.25 = type { i64 }
%struct.die_args = type { ptr, ptr, i64, i32, i32 }
%struct.return_instance = type { ptr, i64, i64, i64, i8, ptr }

@default_xol_ops = internal constant %struct.uprobe_xol_ops { ptr null, ptr @default_pre_xol_op, ptr @default_post_xol_op, ptr @default_abort_op }, align 8, !dbg !0
@.str = private unnamed_addr constant [26 x i8] c"arch/x86/kernel/uprobes.c\00", align 1, !dbg !4143
@.str.1 = private unnamed_addr constant [58 x i8] c"\013return address clobbered: pid=%d, %%sp=%#lx, %%ip=%#lx\0A\00", align 1, !dbg !4148
@good_insns_64 = internal global [8 x i32] [i32 1061142335, i32 2139062143, i32 -1, i32 -61448, i32 -67108869, i32 -1, i32 -7401473, i32 -202568945], align 16, !dbg !4153
@good_insns_32 = internal global [8 x i32] [i32 2139094911, i32 -1, i32 -1, i32 -61441, i32 -1, i32 -1, i32 -61441, i32 -202567921], align 16, !dbg !4157
@good_2byte_insns = internal global [8 x i32] [i32 -3044, i32 -11599873, i32 -1, i32 -50331649, i32 -1, i32 -16385, i32 -1, i32 -1], align 16, !dbg !4159
@branch_xol_ops = internal constant %struct.uprobe_xol_ops { ptr @branch_emulate_op, ptr null, ptr @branch_post_xol_op, ptr null }, align 8, !dbg !4161
@push_xol_ops = internal constant %struct.uprobe_xol_ops { ptr @push_emulate_op, ptr null, ptr null, ptr null }, align 8, !dbg !4163
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.2 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !4165

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @arch_uprobe_analyze_insn(ptr noundef %auprobe, ptr noundef %mm, i64 noundef %addr) #0 align 16 !dbg !4180 {
entry:
  %retval = alloca i32, align 4
  %auprobe.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %insn = alloca %struct.insn, align 8
  %fix_ip_or_call = alloca i8, align 1
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %auprobe, ptr %auprobe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %auprobe.addr, metadata !4184, metadata !DIExpression()), !dbg !4235
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !4185, metadata !DIExpression()), !dbg !4236
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4186, metadata !DIExpression()), !dbg !4237
  call void @llvm.lifetime.start.p0(i64 112, ptr %insn) #13, !dbg !4238
  call void @llvm.dbg.declare(metadata ptr %insn, metadata !4187, metadata !DIExpression()), !dbg !4239
  call void @llvm.lifetime.start.p0(i64 1, ptr %fix_ip_or_call) #13, !dbg !4240
  call void @llvm.dbg.declare(metadata ptr %fix_ip_or_call, metadata !4233, metadata !DIExpression()), !dbg !4241
  store i8 1, ptr %fix_ip_or_call, align 1, !dbg !4241
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !4242
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4234, metadata !DIExpression()), !dbg !4243
  %0 = load ptr, ptr %auprobe.addr, align 8, !dbg !4244
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !4245
  %call = call zeroext i1 @is_64bit_mm(ptr noundef %1) #14, !dbg !4246
  %call1 = call i32 @uprobe_init_insn(ptr noundef %0, ptr noundef %insn, i1 noundef zeroext %call) #14, !dbg !4247
  store i32 %call1, ptr %ret, align 4, !dbg !4248
  %2 = load i32, ptr %ret, align 4, !dbg !4249
  %tobool = icmp ne i32 %2, 0, !dbg !4249
  br i1 %tobool, label %if.then, label %if.end, !dbg !4251

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %ret, align 4, !dbg !4252
  store i32 %3, ptr %retval, align 4, !dbg !4253
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4253

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %auprobe.addr, align 8, !dbg !4254
  %call2 = call i32 @branch_setup_xol_ops(ptr noundef %4, ptr noundef %insn) #14, !dbg !4255
  store i32 %call2, ptr %ret, align 4, !dbg !4256
  %5 = load i32, ptr %ret, align 4, !dbg !4257
  %cmp = icmp ne i32 %5, -38, !dbg !4259
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !4260

if.then3:                                         ; preds = %if.end
  %6 = load i32, ptr %ret, align 4, !dbg !4261
  store i32 %6, ptr %retval, align 4, !dbg !4262
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4262

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %auprobe.addr, align 8, !dbg !4263
  %call5 = call i32 @push_setup_xol_ops(ptr noundef %7, ptr noundef %insn) #14, !dbg !4264
  store i32 %call5, ptr %ret, align 4, !dbg !4265
  %8 = load i32, ptr %ret, align 4, !dbg !4266
  %cmp6 = icmp ne i32 %8, -38, !dbg !4268
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !4269

if.then7:                                         ; preds = %if.end4
  %9 = load i32, ptr %ret, align 4, !dbg !4270
  store i32 %9, ptr %retval, align 4, !dbg !4271
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4271

if.end8:                                          ; preds = %if.end4
  %opcode = getelementptr inbounds %struct.insn, ptr %insn, i32 0, i32 3, !dbg !4272
  %10 = getelementptr inbounds %struct.insn_field, ptr %opcode, i32 0, i32 0, !dbg !4272
  %arrayidx = getelementptr [4 x i8], ptr %10, i64 0, i64 0, !dbg !4272
  %11 = load i8, ptr %arrayidx, align 8, !dbg !4272
  %conv = zext i8 %11 to i32, !dbg !4272
  switch i32 %conv, label %sw.default [
    i32 157, label %sw.bb
    i32 195, label %sw.bb11
    i32 203, label %sw.bb11
    i32 194, label %sw.bb11
    i32 202, label %sw.bb11
    i32 234, label %sw.bb11
    i32 154, label %sw.bb12
    i32 255, label %sw.bb13
  ], !dbg !4273

sw.bb:                                            ; preds = %if.end8
  %12 = load ptr, ptr %auprobe.addr, align 8, !dbg !4274
  %13 = getelementptr inbounds %struct.arch_uprobe, ptr %12, i32 0, i32 2, !dbg !4276
  %fixups = getelementptr inbounds %struct.anon.19, ptr %13, i32 0, i32 0, !dbg !4277
  %14 = load i8, ptr %fixups, align 8, !dbg !4278
  %conv9 = zext i8 %14 to i32, !dbg !4278
  %or = or i32 %conv9, 4, !dbg !4278
  %conv10 = trunc i32 %or to i8, !dbg !4278
  store i8 %conv10, ptr %fixups, align 8, !dbg !4278
  br label %sw.epilog16, !dbg !4279

sw.bb11:                                          ; preds = %if.end8, %if.end8, %if.end8, %if.end8, %if.end8
  store i8 0, ptr %fix_ip_or_call, align 1, !dbg !4280
  br label %sw.epilog16, !dbg !4281

sw.bb12:                                          ; preds = %if.end8
  store i8 2, ptr %fix_ip_or_call, align 1, !dbg !4282
  br label %sw.epilog16, !dbg !4283

sw.bb13:                                          ; preds = %if.end8
  %modrm = getelementptr inbounds %struct.insn, ptr %insn, i32 0, i32 4, !dbg !4284
  %15 = getelementptr inbounds %struct.insn_field, ptr %modrm, i32 0, i32 0, !dbg !4284
  %16 = load i32, ptr %15, align 8, !dbg !4284
  %and = and i32 %16, 56, !dbg !4284
  %shr = ashr i32 %and, 3, !dbg !4284
  switch i32 %shr, label %sw.epilog [
    i32 2, label %sw.bb14
    i32 3, label %sw.bb14
    i32 4, label %sw.bb15
    i32 5, label %sw.bb15
  ], !dbg !4285

sw.bb14:                                          ; preds = %sw.bb13, %sw.bb13
  store i8 2, ptr %fix_ip_or_call, align 1, !dbg !4286
  br label %sw.epilog, !dbg !4288

sw.bb15:                                          ; preds = %sw.bb13, %sw.bb13
  store i8 0, ptr %fix_ip_or_call, align 1, !dbg !4289
  br label %sw.epilog, !dbg !4290

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb15, %sw.bb14
  br label %sw.default, !dbg !4291

sw.default:                                       ; preds = %if.end8, %sw.epilog
  %17 = load ptr, ptr %auprobe.addr, align 8, !dbg !4292
  call void @riprel_analyze(ptr noundef %17, ptr noundef %insn) #14, !dbg !4293
  br label %sw.epilog16, !dbg !4294

sw.epilog16:                                      ; preds = %sw.default, %sw.bb12, %sw.bb11, %sw.bb
  %length = getelementptr inbounds %struct.insn, ptr %insn, i32 0, i32 13, !dbg !4295
  %18 = load i8, ptr %length, align 2, !dbg !4295
  %19 = load ptr, ptr %auprobe.addr, align 8, !dbg !4296
  %20 = getelementptr inbounds %struct.arch_uprobe, ptr %19, i32 0, i32 2, !dbg !4297
  %ilen = getelementptr inbounds %struct.anon.19, ptr %20, i32 0, i32 1, !dbg !4298
  store i8 %18, ptr %ilen, align 1, !dbg !4299
  %21 = load i8, ptr %fix_ip_or_call, align 1, !dbg !4300
  %conv17 = zext i8 %21 to i32, !dbg !4300
  %22 = load ptr, ptr %auprobe.addr, align 8, !dbg !4301
  %23 = getelementptr inbounds %struct.arch_uprobe, ptr %22, i32 0, i32 2, !dbg !4302
  %fixups18 = getelementptr inbounds %struct.anon.19, ptr %23, i32 0, i32 0, !dbg !4303
  %24 = load i8, ptr %fixups18, align 8, !dbg !4304
  %conv19 = zext i8 %24 to i32, !dbg !4304
  %or20 = or i32 %conv19, %conv17, !dbg !4304
  %conv21 = trunc i32 %or20 to i8, !dbg !4304
  store i8 %conv21, ptr %fixups18, align 8, !dbg !4304
  %25 = load ptr, ptr %auprobe.addr, align 8, !dbg !4305
  %ops = getelementptr inbounds %struct.arch_uprobe, ptr %25, i32 0, i32 1, !dbg !4306
  store ptr @default_xol_ops, ptr %ops, align 8, !dbg !4307
  store i32 0, ptr %retval, align 4, !dbg !4308
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4308

cleanup:                                          ; preds = %sw.epilog16, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !4309
  call void @llvm.lifetime.end.p0(i64 1, ptr %fix_ip_or_call) #13, !dbg !4309
  call void @llvm.lifetime.end.p0(i64 112, ptr %insn) #13, !dbg !4309
  %26 = load i32, ptr %retval, align 4, !dbg !4309
  ret i32 %26, !dbg !4309
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @uprobe_init_insn(ptr noundef %auprobe, ptr noundef %insn, i1 noundef zeroext %x86_64) #0 align 16 !dbg !4310 {
entry:
  %retval = alloca i32, align 4
  %auprobe.addr = alloca ptr, align 8
  %insn.addr = alloca ptr, align 8
  %x86_64.addr = alloca i8, align 1
  %m = alloca i32, align 4
  %good_insns = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %auprobe, ptr %auprobe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %auprobe.addr, metadata !4315, metadata !DIExpression()), !dbg !4322
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !4316, metadata !DIExpression()), !dbg !4323
  %frombool = zext i1 %x86_64 to i8
  store i8 %frombool, ptr %x86_64.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %x86_64.addr, metadata !4317, metadata !DIExpression()), !dbg !4324
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #13, !dbg !4325
  call void @llvm.dbg.declare(metadata ptr %m, metadata !4318, metadata !DIExpression()), !dbg !4326
  %0 = load i8, ptr %x86_64.addr, align 1, !dbg !4327, !range !4328, !noundef !518
  %tobool = trunc i8 %0 to i1, !dbg !4327
  %1 = zext i1 %tobool to i64, !dbg !4327
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !4327
  store i32 %cond, ptr %m, align 4, !dbg !4326
  call void @llvm.lifetime.start.p0(i64 8, ptr %good_insns) #13, !dbg !4329
  call void @llvm.dbg.declare(metadata ptr %good_insns, metadata !4319, metadata !DIExpression()), !dbg !4330
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !4331
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4321, metadata !DIExpression()), !dbg !4332
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !4333
  %3 = load ptr, ptr %auprobe.addr, align 8, !dbg !4334
  %4 = getelementptr inbounds %struct.arch_uprobe, ptr %3, i32 0, i32 0, !dbg !4335
  %arraydecay = getelementptr inbounds [16 x i8], ptr %4, i64 0, i64 0, !dbg !4334
  %5 = load i32, ptr %m, align 4, !dbg !4336
  %call = call i32 @insn_decode(ptr noundef %2, ptr noundef %arraydecay, i32 noundef 16, i32 noundef %5) #14, !dbg !4337
  store i32 %call, ptr %ret, align 4, !dbg !4338
  %6 = load i32, ptr %ret, align 4, !dbg !4339
  %cmp = icmp slt i32 %6, 0, !dbg !4341
  br i1 %cmp, label %if.then, label %if.end, !dbg !4342

if.then:                                          ; preds = %entry
  store i32 -8, ptr %retval, align 4, !dbg !4343
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4343

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %insn.addr, align 8, !dbg !4344
  %call1 = call zeroext i1 @is_prefix_bad(ptr noundef %7) #14, !dbg !4346
  br i1 %call1, label %if.then2, label %if.end3, !dbg !4347

if.then2:                                         ; preds = %if.end
  store i32 -524, ptr %retval, align 4, !dbg !4348
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4348

if.end3:                                          ; preds = %if.end
  %8 = load ptr, ptr %insn.addr, align 8, !dbg !4349
  %call4 = call i32 @insn_masking_exception(ptr noundef %8) #14, !dbg !4351
  %tobool5 = icmp ne i32 %call4, 0, !dbg !4351
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !4352

if.then6:                                         ; preds = %if.end3
  store i32 -524, ptr %retval, align 4, !dbg !4353
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4353

if.end7:                                          ; preds = %if.end3
  %9 = load i8, ptr %x86_64.addr, align 1, !dbg !4354, !range !4328, !noundef !518
  %tobool8 = trunc i8 %9 to i1, !dbg !4354
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !4356

if.then9:                                         ; preds = %if.end7
  store ptr @good_insns_64, ptr %good_insns, align 8, !dbg !4357
  br label %if.end10, !dbg !4358

if.else:                                          ; preds = %if.end7
  store ptr @good_insns_32, ptr %good_insns, align 8, !dbg !4359
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then9
  %10 = load ptr, ptr %insn.addr, align 8, !dbg !4360
  %opcode = getelementptr inbounds %struct.insn, ptr %10, i32 0, i32 3, !dbg !4360
  %11 = getelementptr inbounds %struct.insn_field, ptr %opcode, i32 0, i32 0, !dbg !4360
  %arrayidx = getelementptr [4 x i8], ptr %11, i64 0, i64 0, !dbg !4360
  %12 = load i8, ptr %arrayidx, align 8, !dbg !4360
  %13 = call i1 @llvm.is.constant.i8(i8 %12), !dbg !4360
  br i1 %13, label %land.lhs.true, label %cond.false, !dbg !4360

land.lhs.true:                                    ; preds = %if.end10
  %14 = load ptr, ptr %good_insns, align 8, !dbg !4360
  %15 = ptrtoint ptr %14 to i64, !dbg !4360
  %cmp11 = icmp ne i64 %15, 0, !dbg !4360
  %conv = zext i1 %cmp11 to i32, !dbg !4360
  %16 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !4360
  br i1 %16, label %land.lhs.true12, label %cond.false, !dbg !4360

land.lhs.true12:                                  ; preds = %land.lhs.true
  %17 = load ptr, ptr %good_insns, align 8, !dbg !4360
  %18 = ptrtoint ptr %17 to i64, !dbg !4360
  %cmp13 = icmp ne i64 %18, 0, !dbg !4360
  br i1 %cmp13, label %land.lhs.true15, label %cond.false, !dbg !4360

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %19 = load ptr, ptr %good_insns, align 8, !dbg !4360
  %20 = load i64, ptr %19, align 8, !dbg !4360
  %21 = call i1 @llvm.is.constant.i64(i64 %20), !dbg !4360
  br i1 %21, label %cond.true, label %cond.false, !dbg !4362

cond.true:                                        ; preds = %land.lhs.true15
  %22 = load ptr, ptr %insn.addr, align 8, !dbg !4360
  %opcode16 = getelementptr inbounds %struct.insn, ptr %22, i32 0, i32 3, !dbg !4360
  %23 = getelementptr inbounds %struct.insn_field, ptr %opcode16, i32 0, i32 0, !dbg !4360
  %arrayidx17 = getelementptr [4 x i8], ptr %23, i64 0, i64 0, !dbg !4360
  %24 = load i8, ptr %arrayidx17, align 8, !dbg !4360
  %conv18 = zext i8 %24 to i64, !dbg !4360
  %25 = load ptr, ptr %good_insns, align 8, !dbg !4360
  %call19 = call zeroext i1 @const_test_bit(i64 noundef %conv18, ptr noundef %25) #14, !dbg !4360
  br i1 %call19, label %if.then26, label %if.end27, !dbg !4360

cond.false:                                       ; preds = %land.lhs.true15, %land.lhs.true12, %land.lhs.true, %if.end10
  %26 = load ptr, ptr %insn.addr, align 8, !dbg !4360
  %opcode21 = getelementptr inbounds %struct.insn, ptr %26, i32 0, i32 3, !dbg !4360
  %27 = getelementptr inbounds %struct.insn_field, ptr %opcode21, i32 0, i32 0, !dbg !4360
  %arrayidx22 = getelementptr [4 x i8], ptr %27, i64 0, i64 0, !dbg !4360
  %28 = load i8, ptr %arrayidx22, align 8, !dbg !4360
  %conv23 = zext i8 %28 to i64, !dbg !4360
  %29 = load ptr, ptr %good_insns, align 8, !dbg !4360
  %call24 = call zeroext i1 @_test_bit(i64 noundef %conv23, ptr noundef %29) #14, !dbg !4360
  br i1 %call24, label %if.then26, label %if.end27, !dbg !4362

if.then26:                                        ; preds = %cond.false, %cond.true
  store i32 0, ptr %retval, align 4, !dbg !4363
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4363

if.end27:                                         ; preds = %cond.false, %cond.true
  %30 = load ptr, ptr %insn.addr, align 8, !dbg !4364
  %opcode28 = getelementptr inbounds %struct.insn, ptr %30, i32 0, i32 3, !dbg !4366
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %opcode28, i32 0, i32 2, !dbg !4367
  %31 = load i8, ptr %nbytes, align 1, !dbg !4367
  %conv29 = zext i8 %31 to i32, !dbg !4364
  %cmp30 = icmp eq i32 %conv29, 2, !dbg !4368
  br i1 %cmp30, label %if.then32, label %if.end54, !dbg !4369

if.then32:                                        ; preds = %if.end27
  %32 = load ptr, ptr %insn.addr, align 8, !dbg !4370
  %opcode33 = getelementptr inbounds %struct.insn, ptr %32, i32 0, i32 3, !dbg !4370
  %33 = getelementptr inbounds %struct.insn_field, ptr %opcode33, i32 0, i32 0, !dbg !4370
  %arrayidx34 = getelementptr [4 x i8], ptr %33, i64 0, i64 1, !dbg !4370
  %34 = load i8, ptr %arrayidx34, align 1, !dbg !4370
  %35 = call i1 @llvm.is.constant.i8(i8 %34), !dbg !4370
  br i1 %35, label %land.lhs.true35, label %cond.false46, !dbg !4370

land.lhs.true35:                                  ; preds = %if.then32
  %conv36 = zext i1 icmp ne (i64 ptrtoint (ptr @good_2byte_insns to i64), i64 0) to i32, !dbg !4370
  %36 = call i1 @llvm.is.constant.i32(i32 %conv36), !dbg !4370
  br i1 %36, label %land.lhs.true37, label %cond.false46, !dbg !4370

land.lhs.true37:                                  ; preds = %land.lhs.true35
  br i1 icmp ne (i64 ptrtoint (ptr @good_2byte_insns to i64), i64 0), label %land.lhs.true39, label %cond.false46, !dbg !4370

land.lhs.true39:                                  ; preds = %land.lhs.true37
  %37 = load i64, ptr @good_2byte_insns, align 16, !dbg !4370
  %38 = call i1 @llvm.is.constant.i64(i64 %37), !dbg !4370
  br i1 %38, label %cond.true40, label %cond.false46, !dbg !4373

cond.true40:                                      ; preds = %land.lhs.true39
  %39 = load ptr, ptr %insn.addr, align 8, !dbg !4370
  %opcode41 = getelementptr inbounds %struct.insn, ptr %39, i32 0, i32 3, !dbg !4370
  %40 = getelementptr inbounds %struct.insn_field, ptr %opcode41, i32 0, i32 0, !dbg !4370
  %arrayidx42 = getelementptr [4 x i8], ptr %40, i64 0, i64 1, !dbg !4370
  %41 = load i8, ptr %arrayidx42, align 1, !dbg !4370
  %conv43 = zext i8 %41 to i64, !dbg !4370
  %call44 = call zeroext i1 @const_test_bit(i64 noundef %conv43, ptr noundef @good_2byte_insns) #14, !dbg !4370
  br i1 %call44, label %if.then52, label %if.end53, !dbg !4370

cond.false46:                                     ; preds = %land.lhs.true39, %land.lhs.true37, %land.lhs.true35, %if.then32
  %42 = load ptr, ptr %insn.addr, align 8, !dbg !4370
  %opcode47 = getelementptr inbounds %struct.insn, ptr %42, i32 0, i32 3, !dbg !4370
  %43 = getelementptr inbounds %struct.insn_field, ptr %opcode47, i32 0, i32 0, !dbg !4370
  %arrayidx48 = getelementptr [4 x i8], ptr %43, i64 0, i64 1, !dbg !4370
  %44 = load i8, ptr %arrayidx48, align 1, !dbg !4370
  %conv49 = zext i8 %44 to i64, !dbg !4370
  %call50 = call zeroext i1 @_test_bit(i64 noundef %conv49, ptr noundef @good_2byte_insns) #14, !dbg !4370
  br i1 %call50, label %if.then52, label %if.end53, !dbg !4373

if.then52:                                        ; preds = %cond.false46, %cond.true40
  store i32 0, ptr %retval, align 4, !dbg !4374
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4374

if.end53:                                         ; preds = %cond.false46, %cond.true40
  br label %if.end54, !dbg !4375

if.end54:                                         ; preds = %if.end53, %if.end27
  store i32 -524, ptr %retval, align 4, !dbg !4376
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4376

cleanup:                                          ; preds = %if.end54, %if.then52, %if.then26, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !4377
  call void @llvm.lifetime.end.p0(i64 8, ptr %good_insns) #13, !dbg !4377
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #13, !dbg !4377
  %45 = load i32, ptr %retval, align 4, !dbg !4377
  ret i32 %45, !dbg !4377
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_64bit_mm(ptr noundef %mm) #3 align 16 !dbg !4378 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !4382, metadata !DIExpression()), !dbg !4383
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !4384
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !4384
  %context = getelementptr inbounds %struct.anon.26, ptr %1, i32 0, i32 44, !dbg !4384
  %flags = getelementptr inbounds %struct.mm_context_t, ptr %context, i32 0, i32 5, !dbg !4384
  %2 = ptrtoint ptr %flags to i64, !dbg !4384
  %cmp = icmp ne i64 %2, 0, !dbg !4384
  %conv = zext i1 %cmp to i32, !dbg !4384
  %3 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !4384
  br i1 %3, label %land.lhs.true, label %cond.false, !dbg !4384

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %mm.addr, align 8, !dbg !4384
  %5 = getelementptr inbounds %struct.mm_struct, ptr %4, i32 0, i32 0, !dbg !4384
  %context1 = getelementptr inbounds %struct.anon.26, ptr %5, i32 0, i32 44, !dbg !4384
  %flags2 = getelementptr inbounds %struct.mm_context_t, ptr %context1, i32 0, i32 5, !dbg !4384
  %6 = ptrtoint ptr %flags2 to i64, !dbg !4384
  %cmp3 = icmp ne i64 %6, 0, !dbg !4384
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !4384

land.lhs.true5:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %mm.addr, align 8, !dbg !4384
  %8 = getelementptr inbounds %struct.mm_struct, ptr %7, i32 0, i32 0, !dbg !4384
  %context6 = getelementptr inbounds %struct.anon.26, ptr %8, i32 0, i32 44, !dbg !4384
  %flags7 = getelementptr inbounds %struct.mm_context_t, ptr %context6, i32 0, i32 5, !dbg !4384
  %9 = load i64, ptr %flags7, align 8, !dbg !4384
  %10 = call i1 @llvm.is.constant.i64(i64 %9), !dbg !4384
  br i1 %10, label %cond.true, label %cond.false, !dbg !4384

cond.true:                                        ; preds = %land.lhs.true5
  %11 = load ptr, ptr %mm.addr, align 8, !dbg !4384
  %12 = getelementptr inbounds %struct.mm_struct, ptr %11, i32 0, i32 0, !dbg !4384
  %context8 = getelementptr inbounds %struct.anon.26, ptr %12, i32 0, i32 44, !dbg !4384
  %flags9 = getelementptr inbounds %struct.mm_context_t, ptr %context8, i32 0, i32 5, !dbg !4384
  %call = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %flags9) #14, !dbg !4384
  %conv10 = zext i1 %call to i32, !dbg !4384
  br label %cond.end, !dbg !4384

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true, %entry
  %13 = load ptr, ptr %mm.addr, align 8, !dbg !4384
  %14 = getelementptr inbounds %struct.mm_struct, ptr %13, i32 0, i32 0, !dbg !4384
  %context11 = getelementptr inbounds %struct.anon.26, ptr %14, i32 0, i32 44, !dbg !4384
  %flags12 = getelementptr inbounds %struct.mm_context_t, ptr %context11, i32 0, i32 5, !dbg !4384
  %call13 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %flags12) #14, !dbg !4384
  %conv14 = zext i1 %call13 to i32, !dbg !4384
  br label %cond.end, !dbg !4384

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv10, %cond.true ], [ %conv14, %cond.false ], !dbg !4384
  %tobool = icmp ne i32 %cond, 0, !dbg !4385
  %lnot = xor i1 %tobool, true, !dbg !4385
  ret i1 %lnot, !dbg !4386
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @branch_setup_xol_ops(ptr noundef %auprobe, ptr noundef %insn) #0 align 16 !dbg !4387 {
entry:
  %retval = alloca i32, align 4
  %auprobe.addr = alloca ptr, align 8
  %insn.addr = alloca ptr, align 8
  %opc1 = alloca i8, align 1
  %p = alloca i8, align 1
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %auprobe, ptr %auprobe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %auprobe.addr, metadata !4391, metadata !DIExpression()), !dbg !4397
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !4392, metadata !DIExpression()), !dbg !4398
  call void @llvm.lifetime.start.p0(i64 1, ptr %opc1) #13, !dbg !4399
  call void @llvm.dbg.declare(metadata ptr %opc1, metadata !4393, metadata !DIExpression()), !dbg !4400
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !4401
  %opcode = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 3, !dbg !4401
  %1 = getelementptr inbounds %struct.insn_field, ptr %opcode, i32 0, i32 0, !dbg !4401
  %arrayidx = getelementptr [4 x i8], ptr %1, i64 0, i64 0, !dbg !4401
  %2 = load i8, ptr %arrayidx, align 8, !dbg !4401
  store i8 %2, ptr %opc1, align 1, !dbg !4400
  call void @llvm.lifetime.start.p0(i64 1, ptr %p) #13, !dbg !4402
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4394, metadata !DIExpression()), !dbg !4403
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !4404
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4395, metadata !DIExpression()), !dbg !4405
  %3 = load i8, ptr %opc1, align 1, !dbg !4406
  %conv = zext i8 %3 to i32, !dbg !4406
  switch i32 %conv, label %sw.default [
    i32 235, label %sw.bb
    i32 233, label %sw.bb
    i32 144, label %sw.bb1
    i32 232, label %sw.bb2
    i32 15, label %sw.bb3
  ], !dbg !4407

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.epilog, !dbg !4408

sw.bb1:                                           ; preds = %entry
  br label %setup, !dbg !4410

sw.bb2:                                           ; preds = %entry
  %4 = load ptr, ptr %auprobe.addr, align 8, !dbg !4411
  %5 = load ptr, ptr %insn.addr, align 8, !dbg !4412
  call void @branch_clear_offset(ptr noundef %4, ptr noundef %5) #14, !dbg !4413
  br label %sw.epilog, !dbg !4414

sw.bb3:                                           ; preds = %entry
  %6 = load ptr, ptr %insn.addr, align 8, !dbg !4415
  %opcode4 = getelementptr inbounds %struct.insn, ptr %6, i32 0, i32 3, !dbg !4417
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %opcode4, i32 0, i32 2, !dbg !4418
  %7 = load i8, ptr %nbytes, align 1, !dbg !4418
  %conv5 = zext i8 %7 to i32, !dbg !4415
  %cmp = icmp ne i32 %conv5, 2, !dbg !4419
  br i1 %cmp, label %if.then, label %if.end, !dbg !4420

if.then:                                          ; preds = %sw.bb3
  store i32 -38, ptr %retval, align 4, !dbg !4421
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4421

if.end:                                           ; preds = %sw.bb3
  %8 = load ptr, ptr %insn.addr, align 8, !dbg !4422
  %opcode7 = getelementptr inbounds %struct.insn, ptr %8, i32 0, i32 3, !dbg !4422
  %9 = getelementptr inbounds %struct.insn_field, ptr %opcode7, i32 0, i32 0, !dbg !4422
  %arrayidx8 = getelementptr [4 x i8], ptr %9, i64 0, i64 1, !dbg !4422
  %10 = load i8, ptr %arrayidx8, align 1, !dbg !4422
  %conv9 = zext i8 %10 to i32, !dbg !4422
  %sub = sub i32 %conv9, 16, !dbg !4423
  %conv10 = trunc i32 %sub to i8, !dbg !4422
  store i8 %conv10, ptr %opc1, align 1, !dbg !4424
  br label %sw.default, !dbg !4425

sw.default:                                       ; preds = %entry, %if.end
  %11 = load i8, ptr %opc1, align 1, !dbg !4426
  %call = call zeroext i1 @is_cond_jmp_opcode(i8 noundef zeroext %11) #14, !dbg !4428
  br i1 %call, label %if.end12, label %if.then11, !dbg !4429

if.then11:                                        ; preds = %sw.default
  store i32 -38, ptr %retval, align 4, !dbg !4430
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4430

if.end12:                                         ; preds = %sw.default
  br label %sw.epilog, !dbg !4431

sw.epilog:                                        ; preds = %if.end12, %sw.bb2, %sw.bb
  store i32 0, ptr %i, align 4, !dbg !4432
  br label %for.cond, !dbg !4432

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %12 = load i32, ptr %i, align 4, !dbg !4434
  %conv13 = sext i32 %12 to i64, !dbg !4434
  %cmp14 = icmp ult i64 %conv13, 4, !dbg !4434
  br i1 %cmp14, label %land.rhs, label %land.end, !dbg !4434

land.rhs:                                         ; preds = %for.cond
  %13 = load ptr, ptr %insn.addr, align 8, !dbg !4434
  %prefixes = getelementptr inbounds %struct.insn, ptr %13, i32 0, i32 0, !dbg !4434
  %14 = getelementptr inbounds %struct.insn_field, ptr %prefixes, i32 0, i32 0, !dbg !4434
  %15 = load i32, ptr %i, align 4, !dbg !4434
  %idxprom = sext i32 %15 to i64, !dbg !4434
  %arrayidx16 = getelementptr [4 x i8], ptr %14, i64 0, i64 %idxprom, !dbg !4434
  %16 = load i8, ptr %arrayidx16, align 1, !dbg !4434
  store i8 %16, ptr %p, align 1, !dbg !4434
  %conv17 = zext i8 %16 to i32, !dbg !4434
  %cmp18 = icmp ne i32 %conv17, 0, !dbg !4434
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %17 = phi i1 [ false, %for.cond ], [ %cmp18, %land.rhs ], !dbg !4436
  br i1 %17, label %for.body, label %for.end, !dbg !4432

for.body:                                         ; preds = %land.end
  %18 = load i8, ptr %p, align 1, !dbg !4437
  %conv20 = zext i8 %18 to i32, !dbg !4437
  %cmp21 = icmp eq i32 %conv20, 102, !dbg !4440
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !4441

if.then23:                                        ; preds = %for.body
  store i32 -524, ptr %retval, align 4, !dbg !4442
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4442

if.end24:                                         ; preds = %for.body
  br label %for.inc, !dbg !4443

for.inc:                                          ; preds = %if.end24
  %19 = load i32, ptr %i, align 4, !dbg !4434
  %inc = add i32 %19, 1, !dbg !4434
  store i32 %inc, ptr %i, align 4, !dbg !4434
  br label %for.cond, !dbg !4434, !llvm.loop !4444

for.end:                                          ; preds = %land.end
  br label %setup, !dbg !4445

setup:                                            ; preds = %for.end, %sw.bb1
  call void @llvm.dbg.label(metadata !4396), !dbg !4448
  %20 = load i8, ptr %opc1, align 1, !dbg !4449
  %21 = load ptr, ptr %auprobe.addr, align 8, !dbg !4450
  %22 = getelementptr inbounds %struct.arch_uprobe, ptr %21, i32 0, i32 2, !dbg !4451
  %opc125 = getelementptr inbounds %struct.anon.18, ptr %22, i32 0, i32 2, !dbg !4452
  store i8 %20, ptr %opc125, align 1, !dbg !4453
  %23 = load ptr, ptr %insn.addr, align 8, !dbg !4454
  %length = getelementptr inbounds %struct.insn, ptr %23, i32 0, i32 13, !dbg !4455
  %24 = load i8, ptr %length, align 2, !dbg !4455
  %25 = load ptr, ptr %auprobe.addr, align 8, !dbg !4456
  %26 = getelementptr inbounds %struct.arch_uprobe, ptr %25, i32 0, i32 2, !dbg !4457
  %ilen = getelementptr inbounds %struct.anon.18, ptr %26, i32 0, i32 1, !dbg !4458
  store i8 %24, ptr %ilen, align 4, !dbg !4459
  %27 = load ptr, ptr %insn.addr, align 8, !dbg !4460
  %28 = getelementptr inbounds %struct.insn, ptr %27, i32 0, i32 7, !dbg !4461
  %29 = getelementptr inbounds %struct.insn_field, ptr %28, i32 0, i32 0, !dbg !4462
  %30 = load i32, ptr %29, align 8, !dbg !4462
  %31 = load ptr, ptr %auprobe.addr, align 8, !dbg !4463
  %32 = getelementptr inbounds %struct.arch_uprobe, ptr %31, i32 0, i32 2, !dbg !4464
  %offs = getelementptr inbounds %struct.anon.18, ptr %32, i32 0, i32 0, !dbg !4465
  store i32 %30, ptr %offs, align 8, !dbg !4466
  %33 = load ptr, ptr %auprobe.addr, align 8, !dbg !4467
  %ops = getelementptr inbounds %struct.arch_uprobe, ptr %33, i32 0, i32 1, !dbg !4468
  store ptr @branch_xol_ops, ptr %ops, align 8, !dbg !4469
  store i32 0, ptr %retval, align 4, !dbg !4470
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4470

cleanup:                                          ; preds = %setup, %if.then23, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !4471
  call void @llvm.lifetime.end.p0(i64 1, ptr %p) #13, !dbg !4471
  call void @llvm.lifetime.end.p0(i64 1, ptr %opc1) #13, !dbg !4471
  %34 = load i32, ptr %retval, align 4, !dbg !4471
  ret i32 %34, !dbg !4471
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @push_setup_xol_ops(ptr noundef %auprobe, ptr noundef %insn) #0 align 16 !dbg !4472 {
entry:
  %retval = alloca i32, align 4
  %auprobe.addr = alloca ptr, align 8
  %insn.addr = alloca ptr, align 8
  %opc1 = alloca i8, align 1
  %reg_offset = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %auprobe, ptr %auprobe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %auprobe.addr, metadata !4474, metadata !DIExpression()), !dbg !4478
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !4475, metadata !DIExpression()), !dbg !4479
  call void @llvm.lifetime.start.p0(i64 1, ptr %opc1) #13, !dbg !4480
  call void @llvm.dbg.declare(metadata ptr %opc1, metadata !4476, metadata !DIExpression()), !dbg !4481
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !4482
  %opcode = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 3, !dbg !4482
  %1 = getelementptr inbounds %struct.insn_field, ptr %opcode, i32 0, i32 0, !dbg !4482
  %arrayidx = getelementptr [4 x i8], ptr %1, i64 0, i64 0, !dbg !4482
  %2 = load i8, ptr %arrayidx, align 8, !dbg !4482
  store i8 %2, ptr %opc1, align 1, !dbg !4481
  call void @llvm.lifetime.start.p0(i64 1, ptr %reg_offset) #13, !dbg !4480
  call void @llvm.dbg.declare(metadata ptr %reg_offset, metadata !4477, metadata !DIExpression()), !dbg !4483
  store i8 0, ptr %reg_offset, align 1, !dbg !4483
  %3 = load i8, ptr %opc1, align 1, !dbg !4484
  %conv = zext i8 %3 to i32, !dbg !4484
  %cmp = icmp slt i32 %conv, 80, !dbg !4486
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4487

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8, ptr %opc1, align 1, !dbg !4488
  %conv2 = zext i8 %4 to i32, !dbg !4488
  %cmp3 = icmp sgt i32 %conv2, 87, !dbg !4489
  br i1 %cmp3, label %if.then, label %if.end, !dbg !4490

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -38, ptr %retval, align 4, !dbg !4491
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4491

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %insn.addr, align 8, !dbg !4492
  %length = getelementptr inbounds %struct.insn, ptr %5, i32 0, i32 13, !dbg !4494
  %6 = load i8, ptr %length, align 2, !dbg !4494
  %conv5 = zext i8 %6 to i32, !dbg !4492
  %cmp6 = icmp sgt i32 %conv5, 2, !dbg !4495
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !4496

if.then8:                                         ; preds = %if.end
  store i32 -38, ptr %retval, align 4, !dbg !4497
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4497

if.end9:                                          ; preds = %if.end
  %7 = load ptr, ptr %insn.addr, align 8, !dbg !4498
  %length10 = getelementptr inbounds %struct.insn, ptr %7, i32 0, i32 13, !dbg !4500
  %8 = load i8, ptr %length10, align 2, !dbg !4500
  %conv11 = zext i8 %8 to i32, !dbg !4498
  %cmp12 = icmp eq i32 %conv11, 2, !dbg !4501
  br i1 %cmp12, label %if.then14, label %if.else, !dbg !4502

if.then14:                                        ; preds = %if.end9
  %9 = load ptr, ptr %insn.addr, align 8, !dbg !4503
  %rex_prefix = getelementptr inbounds %struct.insn, ptr %9, i32 0, i32 1, !dbg !4506
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %rex_prefix, i32 0, i32 2, !dbg !4507
  %10 = load i8, ptr %nbytes, align 1, !dbg !4507
  %conv15 = zext i8 %10 to i32, !dbg !4503
  %cmp16 = icmp ne i32 %conv15, 1, !dbg !4508
  br i1 %cmp16, label %if.then24, label %lor.lhs.false18, !dbg !4509

lor.lhs.false18:                                  ; preds = %if.then14
  %11 = load ptr, ptr %insn.addr, align 8, !dbg !4510
  %rex_prefix19 = getelementptr inbounds %struct.insn, ptr %11, i32 0, i32 1, !dbg !4511
  %12 = getelementptr inbounds %struct.insn_field, ptr %rex_prefix19, i32 0, i32 0, !dbg !4512
  %arrayidx20 = getelementptr [4 x i8], ptr %12, i64 0, i64 0, !dbg !4510
  %13 = load i8, ptr %arrayidx20, align 8, !dbg !4510
  %conv21 = zext i8 %13 to i32, !dbg !4510
  %cmp22 = icmp ne i32 %conv21, 65, !dbg !4513
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !4514

if.then24:                                        ; preds = %lor.lhs.false18, %if.then14
  store i32 -38, ptr %retval, align 4, !dbg !4515
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4515

if.end25:                                         ; preds = %lor.lhs.false18
  %14 = load i8, ptr %opc1, align 1, !dbg !4516
  %conv26 = zext i8 %14 to i32, !dbg !4516
  switch i32 %conv26, label %sw.epilog [
    i32 80, label %sw.bb
    i32 81, label %sw.bb27
    i32 82, label %sw.bb28
    i32 83, label %sw.bb29
    i32 84, label %sw.bb30
    i32 85, label %sw.bb31
    i32 86, label %sw.bb32
    i32 87, label %sw.bb33
  ], !dbg !4517

sw.bb:                                            ; preds = %if.end25
  store i8 72, ptr %reg_offset, align 1, !dbg !4518
  br label %sw.epilog, !dbg !4520

sw.bb27:                                          ; preds = %if.end25
  store i8 64, ptr %reg_offset, align 1, !dbg !4521
  br label %sw.epilog, !dbg !4522

sw.bb28:                                          ; preds = %if.end25
  store i8 56, ptr %reg_offset, align 1, !dbg !4523
  br label %sw.epilog, !dbg !4524

sw.bb29:                                          ; preds = %if.end25
  store i8 48, ptr %reg_offset, align 1, !dbg !4525
  br label %sw.epilog, !dbg !4526

sw.bb30:                                          ; preds = %if.end25
  store i8 24, ptr %reg_offset, align 1, !dbg !4527
  br label %sw.epilog, !dbg !4528

sw.bb31:                                          ; preds = %if.end25
  store i8 16, ptr %reg_offset, align 1, !dbg !4529
  br label %sw.epilog, !dbg !4530

sw.bb32:                                          ; preds = %if.end25
  store i8 8, ptr %reg_offset, align 1, !dbg !4531
  br label %sw.epilog, !dbg !4532

sw.bb33:                                          ; preds = %if.end25
  store i8 0, ptr %reg_offset, align 1, !dbg !4533
  br label %sw.epilog, !dbg !4534

sw.epilog:                                        ; preds = %if.end25, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb
  br label %if.end44, !dbg !4535

if.else:                                          ; preds = %if.end9
  %15 = load i8, ptr %opc1, align 1, !dbg !4536
  %conv34 = zext i8 %15 to i32, !dbg !4536
  switch i32 %conv34, label %sw.epilog43 [
    i32 80, label %sw.bb35
    i32 81, label %sw.bb36
    i32 82, label %sw.bb37
    i32 83, label %sw.bb38
    i32 84, label %sw.bb39
    i32 85, label %sw.bb40
    i32 86, label %sw.bb41
    i32 87, label %sw.bb42
  ], !dbg !4538

sw.bb35:                                          ; preds = %if.else
  store i8 80, ptr %reg_offset, align 1, !dbg !4539
  br label %sw.epilog43, !dbg !4541

sw.bb36:                                          ; preds = %if.else
  store i8 88, ptr %reg_offset, align 1, !dbg !4542
  br label %sw.epilog43, !dbg !4543

sw.bb37:                                          ; preds = %if.else
  store i8 96, ptr %reg_offset, align 1, !dbg !4544
  br label %sw.epilog43, !dbg !4545

sw.bb38:                                          ; preds = %if.else
  store i8 40, ptr %reg_offset, align 1, !dbg !4546
  br label %sw.epilog43, !dbg !4547

sw.bb39:                                          ; preds = %if.else
  store i8 -104, ptr %reg_offset, align 1, !dbg !4548
  br label %sw.epilog43, !dbg !4549

sw.bb40:                                          ; preds = %if.else
  store i8 32, ptr %reg_offset, align 1, !dbg !4550
  br label %sw.epilog43, !dbg !4551

sw.bb41:                                          ; preds = %if.else
  store i8 104, ptr %reg_offset, align 1, !dbg !4552
  br label %sw.epilog43, !dbg !4553

sw.bb42:                                          ; preds = %if.else
  store i8 112, ptr %reg_offset, align 1, !dbg !4554
  br label %sw.epilog43, !dbg !4555

sw.epilog43:                                      ; preds = %if.else, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35
  br label %if.end44

if.end44:                                         ; preds = %sw.epilog43, %sw.epilog
  %16 = load i8, ptr %reg_offset, align 1, !dbg !4556
  %17 = load ptr, ptr %auprobe.addr, align 8, !dbg !4557
  %18 = getelementptr inbounds %struct.arch_uprobe, ptr %17, i32 0, i32 2, !dbg !4558
  %reg_offset45 = getelementptr inbounds %struct.anon.20, ptr %18, i32 0, i32 0, !dbg !4559
  store i8 %16, ptr %reg_offset45, align 8, !dbg !4560
  %19 = load ptr, ptr %insn.addr, align 8, !dbg !4561
  %length46 = getelementptr inbounds %struct.insn, ptr %19, i32 0, i32 13, !dbg !4562
  %20 = load i8, ptr %length46, align 2, !dbg !4562
  %21 = load ptr, ptr %auprobe.addr, align 8, !dbg !4563
  %22 = getelementptr inbounds %struct.arch_uprobe, ptr %21, i32 0, i32 2, !dbg !4564
  %ilen = getelementptr inbounds %struct.anon.20, ptr %22, i32 0, i32 1, !dbg !4565
  store i8 %20, ptr %ilen, align 1, !dbg !4566
  %23 = load ptr, ptr %auprobe.addr, align 8, !dbg !4567
  %ops = getelementptr inbounds %struct.arch_uprobe, ptr %23, i32 0, i32 1, !dbg !4568
  store ptr @push_xol_ops, ptr %ops, align 8, !dbg !4569
  store i32 0, ptr %retval, align 4, !dbg !4570
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4570

cleanup:                                          ; preds = %if.end44, %if.then24, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %reg_offset) #13, !dbg !4571
  call void @llvm.lifetime.end.p0(i64 1, ptr %opc1) #13, !dbg !4571
  %24 = load i32, ptr %retval, align 4, !dbg !4571
  ret i32 %24, !dbg !4571
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @riprel_analyze(ptr noundef %auprobe, ptr noundef %insn) #0 align 16 !dbg !4572 {
entry:
  %auprobe.addr = alloca ptr, align 8
  %insn.addr = alloca ptr, align 8
  %cursor = alloca ptr, align 8
  %reg = alloca i8, align 1
  %reg2 = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %auprobe, ptr %auprobe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %auprobe.addr, metadata !4576, metadata !DIExpression()), !dbg !4582
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !4577, metadata !DIExpression()), !dbg !4583
  call void @llvm.lifetime.start.p0(i64 8, ptr %cursor) #13, !dbg !4584
  call void @llvm.dbg.declare(metadata ptr %cursor, metadata !4578, metadata !DIExpression()), !dbg !4585
  call void @llvm.lifetime.start.p0(i64 1, ptr %reg) #13, !dbg !4586
  call void @llvm.dbg.declare(metadata ptr %reg, metadata !4580, metadata !DIExpression()), !dbg !4587
  call void @llvm.lifetime.start.p0(i64 1, ptr %reg2) #13, !dbg !4588
  call void @llvm.dbg.declare(metadata ptr %reg2, metadata !4581, metadata !DIExpression()), !dbg !4589
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !4590
  %call = call i32 @insn_rip_relative(ptr noundef %0) #14, !dbg !4592
  %tobool = icmp ne i32 %call, 0, !dbg !4592
  br i1 %tobool, label %if.end, label %if.then, !dbg !4593

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4594

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %insn.addr, align 8, !dbg !4595
  %rex_prefix = getelementptr inbounds %struct.insn, ptr %1, i32 0, i32 1, !dbg !4597
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %rex_prefix, i32 0, i32 2, !dbg !4598
  %2 = load i8, ptr %nbytes, align 1, !dbg !4598
  %tobool1 = icmp ne i8 %2, 0, !dbg !4595
  br i1 %tobool1, label %if.then2, label %if.end5, !dbg !4599

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %auprobe.addr, align 8, !dbg !4600
  %4 = getelementptr inbounds %struct.arch_uprobe, ptr %3, i32 0, i32 0, !dbg !4602
  %arraydecay = getelementptr inbounds [16 x i8], ptr %4, i64 0, i64 0, !dbg !4600
  %5 = load ptr, ptr %insn.addr, align 8, !dbg !4603
  %call3 = call i32 @insn_offset_rex_prefix(ptr noundef %5) #14, !dbg !4604
  %idx.ext = sext i32 %call3 to i64, !dbg !4605
  %add.ptr = getelementptr i8, ptr %arraydecay, i64 %idx.ext, !dbg !4605
  store ptr %add.ptr, ptr %cursor, align 8, !dbg !4606
  %6 = load ptr, ptr %cursor, align 8, !dbg !4607
  %7 = load i8, ptr %6, align 1, !dbg !4608
  %conv = zext i8 %7 to i32, !dbg !4608
  %and = and i32 %conv, 254, !dbg !4608
  %conv4 = trunc i32 %and to i8, !dbg !4608
  store i8 %conv4, ptr %6, align 1, !dbg !4608
  br label %if.end5, !dbg !4609

if.end5:                                          ; preds = %if.then2, %if.end
  %8 = load ptr, ptr %insn.addr, align 8, !dbg !4610
  %vex_prefix = getelementptr inbounds %struct.insn, ptr %8, i32 0, i32 2, !dbg !4612
  %nbytes6 = getelementptr inbounds %struct.insn_field, ptr %vex_prefix, i32 0, i32 2, !dbg !4613
  %9 = load i8, ptr %nbytes6, align 1, !dbg !4613
  %conv7 = zext i8 %9 to i32, !dbg !4610
  %cmp = icmp sge i32 %conv7, 3, !dbg !4614
  br i1 %cmp, label %if.then9, label %if.end17, !dbg !4615

if.then9:                                         ; preds = %if.end5
  %10 = load ptr, ptr %auprobe.addr, align 8, !dbg !4616
  %11 = getelementptr inbounds %struct.arch_uprobe, ptr %10, i32 0, i32 0, !dbg !4618
  %arraydecay10 = getelementptr inbounds [16 x i8], ptr %11, i64 0, i64 0, !dbg !4616
  %12 = load ptr, ptr %insn.addr, align 8, !dbg !4619
  %call11 = call i32 @insn_offset_vex_prefix(ptr noundef %12) #14, !dbg !4620
  %idx.ext12 = sext i32 %call11 to i64, !dbg !4621
  %add.ptr13 = getelementptr i8, ptr %arraydecay10, i64 %idx.ext12, !dbg !4621
  %add.ptr14 = getelementptr i8, ptr %add.ptr13, i64 1, !dbg !4622
  store ptr %add.ptr14, ptr %cursor, align 8, !dbg !4623
  %13 = load ptr, ptr %cursor, align 8, !dbg !4624
  %14 = load i8, ptr %13, align 1, !dbg !4625
  %conv15 = zext i8 %14 to i32, !dbg !4625
  %or = or i32 %conv15, 96, !dbg !4625
  %conv16 = trunc i32 %or to i8, !dbg !4625
  store i8 %conv16, ptr %13, align 1, !dbg !4625
  br label %if.end17, !dbg !4626

if.end17:                                         ; preds = %if.then9, %if.end5
  %15 = load ptr, ptr %insn.addr, align 8, !dbg !4627
  %modrm = getelementptr inbounds %struct.insn, ptr %15, i32 0, i32 4, !dbg !4627
  %16 = getelementptr inbounds %struct.insn_field, ptr %modrm, i32 0, i32 0, !dbg !4627
  %17 = load i32, ptr %16, align 8, !dbg !4627
  %and18 = and i32 %17, 56, !dbg !4627
  %shr = ashr i32 %and18, 3, !dbg !4627
  %conv19 = trunc i32 %shr to i8, !dbg !4627
  store i8 %conv19, ptr %reg, align 1, !dbg !4628
  store i8 -1, ptr %reg2, align 1, !dbg !4629
  %18 = load ptr, ptr %insn.addr, align 8, !dbg !4630
  %vex_prefix20 = getelementptr inbounds %struct.insn, ptr %18, i32 0, i32 2, !dbg !4632
  %nbytes21 = getelementptr inbounds %struct.insn_field, ptr %vex_prefix20, i32 0, i32 2, !dbg !4633
  %19 = load i8, ptr %nbytes21, align 1, !dbg !4633
  %tobool22 = icmp ne i8 %19, 0, !dbg !4630
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !4634

if.then23:                                        ; preds = %if.end17
  %20 = load ptr, ptr %insn.addr, align 8, !dbg !4635
  %vex_prefix24 = getelementptr inbounds %struct.insn, ptr %20, i32 0, i32 2, !dbg !4636
  %21 = getelementptr inbounds %struct.insn_field, ptr %vex_prefix24, i32 0, i32 0, !dbg !4637
  %arrayidx = getelementptr [4 x i8], ptr %21, i64 0, i64 2, !dbg !4635
  %22 = load i8, ptr %arrayidx, align 2, !dbg !4635
  store i8 %22, ptr %reg2, align 1, !dbg !4638
  br label %if.end25, !dbg !4639

if.end25:                                         ; preds = %if.then23, %if.end17
  %23 = load i8, ptr %reg2, align 1, !dbg !4640
  %conv26 = zext i8 %23 to i32, !dbg !4640
  %shr27 = ashr i32 %conv26, 3, !dbg !4641
  %and28 = and i32 %shr27, 7, !dbg !4642
  %xor = xor i32 %and28, 7, !dbg !4643
  %conv29 = trunc i32 %xor to i8, !dbg !4644
  store i8 %conv29, ptr %reg2, align 1, !dbg !4645
  %24 = load i8, ptr %reg, align 1, !dbg !4646
  %conv30 = zext i8 %24 to i32, !dbg !4646
  %cmp31 = icmp ne i32 %conv30, 6, !dbg !4648
  br i1 %cmp31, label %land.lhs.true, label %if.else, !dbg !4649

land.lhs.true:                                    ; preds = %if.end25
  %25 = load i8, ptr %reg2, align 1, !dbg !4650
  %conv33 = zext i8 %25 to i32, !dbg !4650
  %cmp34 = icmp ne i32 %conv33, 6, !dbg !4651
  br i1 %cmp34, label %if.then36, label %if.else, !dbg !4652

if.then36:                                        ; preds = %land.lhs.true
  store i8 6, ptr %reg2, align 1, !dbg !4653
  %26 = load ptr, ptr %auprobe.addr, align 8, !dbg !4655
  %27 = getelementptr inbounds %struct.arch_uprobe, ptr %26, i32 0, i32 2, !dbg !4656
  %fixups = getelementptr inbounds %struct.anon.19, ptr %27, i32 0, i32 0, !dbg !4657
  %28 = load i8, ptr %fixups, align 8, !dbg !4658
  %conv37 = zext i8 %28 to i32, !dbg !4658
  %or38 = or i32 %conv37, 8, !dbg !4658
  %conv39 = trunc i32 %or38 to i8, !dbg !4658
  store i8 %conv39, ptr %fixups, align 8, !dbg !4658
  br label %if.end58, !dbg !4659

if.else:                                          ; preds = %land.lhs.true, %if.end25
  %29 = load i8, ptr %reg, align 1, !dbg !4660
  %conv40 = zext i8 %29 to i32, !dbg !4660
  %cmp41 = icmp ne i32 %conv40, 7, !dbg !4662
  br i1 %cmp41, label %land.lhs.true43, label %if.else52, !dbg !4663

land.lhs.true43:                                  ; preds = %if.else
  %30 = load i8, ptr %reg2, align 1, !dbg !4664
  %conv44 = zext i8 %30 to i32, !dbg !4664
  %cmp45 = icmp ne i32 %conv44, 7, !dbg !4665
  br i1 %cmp45, label %if.then47, label %if.else52, !dbg !4666

if.then47:                                        ; preds = %land.lhs.true43
  store i8 7, ptr %reg2, align 1, !dbg !4667
  %31 = load ptr, ptr %auprobe.addr, align 8, !dbg !4669
  %32 = getelementptr inbounds %struct.arch_uprobe, ptr %31, i32 0, i32 2, !dbg !4670
  %fixups48 = getelementptr inbounds %struct.anon.19, ptr %32, i32 0, i32 0, !dbg !4671
  %33 = load i8, ptr %fixups48, align 8, !dbg !4672
  %conv49 = zext i8 %33 to i32, !dbg !4672
  %or50 = or i32 %conv49, 16, !dbg !4672
  %conv51 = trunc i32 %or50 to i8, !dbg !4672
  store i8 %conv51, ptr %fixups48, align 8, !dbg !4672
  br label %if.end57, !dbg !4673

if.else52:                                        ; preds = %land.lhs.true43, %if.else
  store i8 3, ptr %reg2, align 1, !dbg !4674
  %34 = load ptr, ptr %auprobe.addr, align 8, !dbg !4676
  %35 = getelementptr inbounds %struct.arch_uprobe, ptr %34, i32 0, i32 2, !dbg !4677
  %fixups53 = getelementptr inbounds %struct.anon.19, ptr %35, i32 0, i32 0, !dbg !4678
  %36 = load i8, ptr %fixups53, align 8, !dbg !4679
  %conv54 = zext i8 %36 to i32, !dbg !4679
  %or55 = or i32 %conv54, 32, !dbg !4679
  %conv56 = trunc i32 %or55 to i8, !dbg !4679
  store i8 %conv56, ptr %fixups53, align 8, !dbg !4679
  br label %if.end57

if.end57:                                         ; preds = %if.else52, %if.then47
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then36
  %37 = load ptr, ptr %auprobe.addr, align 8, !dbg !4680
  %38 = getelementptr inbounds %struct.arch_uprobe, ptr %37, i32 0, i32 0, !dbg !4681
  %arraydecay59 = getelementptr inbounds [16 x i8], ptr %38, i64 0, i64 0, !dbg !4680
  %39 = load ptr, ptr %insn.addr, align 8, !dbg !4682
  %call60 = call i32 @insn_offset_modrm(ptr noundef %39) #14, !dbg !4683
  %idx.ext61 = sext i32 %call60 to i64, !dbg !4684
  %add.ptr62 = getelementptr i8, ptr %arraydecay59, i64 %idx.ext61, !dbg !4684
  store ptr %add.ptr62, ptr %cursor, align 8, !dbg !4685
  %40 = load i8, ptr %reg, align 1, !dbg !4686
  %conv63 = zext i8 %40 to i32, !dbg !4686
  %shl = shl i32 %conv63, 3, !dbg !4687
  %or64 = or i32 128, %shl, !dbg !4688
  %41 = load i8, ptr %reg2, align 1, !dbg !4689
  %conv65 = zext i8 %41 to i32, !dbg !4689
  %or66 = or i32 %or64, %conv65, !dbg !4690
  %conv67 = trunc i32 %or66 to i8, !dbg !4691
  %42 = load ptr, ptr %cursor, align 8, !dbg !4692
  store i8 %conv67, ptr %42, align 1, !dbg !4693
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4694
  br label %cleanup, !dbg !4694

cleanup:                                          ; preds = %if.end58, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %reg2) #13, !dbg !4694
  call void @llvm.lifetime.end.p0(i64 1, ptr %reg) #13, !dbg !4694
  call void @llvm.lifetime.end.p0(i64 8, ptr %cursor) #13, !dbg !4694
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4694

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @arch_uprobe_pre_xol(ptr noundef %auprobe, ptr noundef %regs) #0 align 16 !dbg !4695 {
entry:
  %retval = alloca i32, align 4
  %auprobe.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %utask = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %auprobe, ptr %auprobe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %auprobe.addr, metadata !4697, metadata !DIExpression()), !dbg !4703
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4698, metadata !DIExpression()), !dbg !4704
  call void @llvm.lifetime.start.p0(i64 8, ptr %utask) #13, !dbg !4705
  call void @llvm.dbg.declare(metadata ptr %utask, metadata !4699, metadata !DIExpression()), !dbg !4706
  %call = call ptr @get_current() #14, !dbg !4707
  %utask1 = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 177, !dbg !4708
  %0 = load ptr, ptr %utask1, align 16, !dbg !4708
  store ptr %0, ptr %utask, align 8, !dbg !4706
  %1 = load ptr, ptr %auprobe.addr, align 8, !dbg !4709
  %ops = getelementptr inbounds %struct.arch_uprobe, ptr %1, i32 0, i32 1, !dbg !4710
  %2 = load ptr, ptr %ops, align 8, !dbg !4710
  %pre_xol = getelementptr inbounds %struct.uprobe_xol_ops, ptr %2, i32 0, i32 1, !dbg !4711
  %3 = load ptr, ptr %pre_xol, align 8, !dbg !4711
  %tobool = icmp ne ptr %3, null, !dbg !4709
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4712

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !4713
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4700, metadata !DIExpression()), !dbg !4714
  %4 = load ptr, ptr %auprobe.addr, align 8, !dbg !4715
  %ops2 = getelementptr inbounds %struct.arch_uprobe, ptr %4, i32 0, i32 1, !dbg !4716
  %5 = load ptr, ptr %ops2, align 8, !dbg !4716
  %pre_xol3 = getelementptr inbounds %struct.uprobe_xol_ops, ptr %5, i32 0, i32 1, !dbg !4717
  %6 = load ptr, ptr %pre_xol3, align 8, !dbg !4717
  %7 = load ptr, ptr %auprobe.addr, align 8, !dbg !4718
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !4719
  %call4 = call i32 %6(ptr noundef %7, ptr noundef %8) #14, !dbg !4715
  store i32 %call4, ptr %err, align 4, !dbg !4714
  %9 = load i32, ptr %err, align 4, !dbg !4720
  %tobool5 = icmp ne i32 %9, 0, !dbg !4720
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !4722

if.then6:                                         ; preds = %if.then
  %10 = load i32, ptr %err, align 4, !dbg !4723
  store i32 %10, ptr %retval, align 4, !dbg !4724
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4724

if.end:                                           ; preds = %if.then
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4725
  br label %cleanup, !dbg !4725

cleanup:                                          ; preds = %if.end, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !4725
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup22 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end7, !dbg !4726

if.end7:                                          ; preds = %cleanup.cont, %entry
  %11 = load ptr, ptr %utask, align 8, !dbg !4727
  %xol_vaddr = getelementptr inbounds %struct.uprobe_task, ptr %11, i32 0, i32 3, !dbg !4728
  %12 = load i64, ptr %xol_vaddr, align 8, !dbg !4728
  %13 = load ptr, ptr %regs.addr, align 8, !dbg !4729
  %ip = getelementptr inbounds %struct.pt_regs, ptr %13, i32 0, i32 16, !dbg !4730
  store i64 %12, ptr %ip, align 8, !dbg !4731
  %call8 = call ptr @get_current() #14, !dbg !4732
  %thread = getelementptr inbounds %struct.task_struct, ptr %call8, i32 0, i32 197, !dbg !4733
  %trap_nr = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 12, !dbg !4734
  %14 = load i64, ptr %trap_nr, align 16, !dbg !4734
  %conv = trunc i64 %14 to i32, !dbg !4732
  %15 = load ptr, ptr %utask, align 8, !dbg !4735
  %16 = getelementptr inbounds %struct.uprobe_task, ptr %15, i32 0, i32 1, !dbg !4736
  %autask = getelementptr inbounds %struct.anon.22, ptr %16, i32 0, i32 0, !dbg !4736
  %saved_trap_nr = getelementptr inbounds %struct.arch_uprobe_task, ptr %autask, i32 0, i32 1, !dbg !4737
  store i32 %conv, ptr %saved_trap_nr, align 8, !dbg !4738
  %call9 = call ptr @get_current() #14, !dbg !4739
  %thread10 = getelementptr inbounds %struct.task_struct, ptr %call9, i32 0, i32 197, !dbg !4740
  %trap_nr11 = getelementptr inbounds %struct.thread_struct, ptr %thread10, i32 0, i32 12, !dbg !4741
  store i64 4294967295, ptr %trap_nr11, align 16, !dbg !4742
  %17 = load ptr, ptr %regs.addr, align 8, !dbg !4743
  %flags = getelementptr inbounds %struct.pt_regs, ptr %17, i32 0, i32 18, !dbg !4744
  %18 = load i64, ptr %flags, align 8, !dbg !4744
  %and = and i64 %18, 256, !dbg !4745
  %tobool12 = icmp ne i64 %and, 0, !dbg !4746
  %lnot = xor i1 %tobool12, true, !dbg !4746
  %lnot13 = xor i1 %lnot, true, !dbg !4747
  %lnot.ext = zext i1 %lnot13 to i32, !dbg !4747
  %19 = load ptr, ptr %utask, align 8, !dbg !4748
  %20 = getelementptr inbounds %struct.uprobe_task, ptr %19, i32 0, i32 1, !dbg !4749
  %autask14 = getelementptr inbounds %struct.anon.22, ptr %20, i32 0, i32 0, !dbg !4749
  %saved_tf = getelementptr inbounds %struct.arch_uprobe_task, ptr %autask14, i32 0, i32 2, !dbg !4750
  store i32 %lnot.ext, ptr %saved_tf, align 4, !dbg !4751
  %21 = load ptr, ptr %regs.addr, align 8, !dbg !4752
  %flags15 = getelementptr inbounds %struct.pt_regs, ptr %21, i32 0, i32 18, !dbg !4753
  %22 = load i64, ptr %flags15, align 8, !dbg !4754
  %or = or i64 %22, 256, !dbg !4754
  store i64 %or, ptr %flags15, align 8, !dbg !4754
  %call16 = call ptr @get_current() #14, !dbg !4755
  %call17 = call i32 @test_tsk_thread_flag(ptr noundef %call16, i32 noundef 25) #14, !dbg !4757
  %tobool18 = icmp ne i32 %call17, 0, !dbg !4757
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !4758

if.then19:                                        ; preds = %if.end7
  %call20 = call ptr @get_current() #14, !dbg !4759
  call void @set_task_blockstep(ptr noundef %call20, i1 noundef zeroext false) #14, !dbg !4760
  br label %if.end21, !dbg !4760

if.end21:                                         ; preds = %if.then19, %if.end7
  store i32 0, ptr %retval, align 4, !dbg !4761
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup22, !dbg !4761

cleanup22:                                        ; preds = %if.end21, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %utask) #13, !dbg !4762
  %23 = load i32, ptr %retval, align 4, !dbg !4762
  ret i32 %23, !dbg !4762
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #4 align 16 !dbg !4763 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #13, !dbg !4774
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4768, metadata !DIExpression()), !dbg !4774
  br label %do.body, !dbg !4774

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !4775
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4770, metadata !DIExpression()), !dbg !4775
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4775
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4775
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !4774
  br label %do.cond, !dbg !4775

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4775

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #13, !dbg !4776
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4772, metadata !DIExpression()), !dbg !4776
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #15, !dbg !4776, !srcloc !4777
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4776
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4776
  %3 = inttoptr i64 %2 to ptr, !dbg !4776
  store ptr %3, ptr %tmp, align 8, !dbg !4776
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #13, !dbg !4774
  %4 = load ptr, ptr %tmp, align 8, !dbg !4776
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4774
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4774
  store ptr %5, ptr %tmp1, align 8, !dbg !4774
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #13, !dbg !4778
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4774
  ret ptr %6, !dbg !4779
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_tsk_thread_flag(ptr noundef %tsk, i32 noundef %flag) #3 align 16 !dbg !4780 {
entry:
  %tsk.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !4784, metadata !DIExpression()), !dbg !4786
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !4785, metadata !DIExpression()), !dbg !4787
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !4788
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 0, !dbg !4788
  %1 = load i32, ptr %flag.addr, align 4, !dbg !4789
  %call = call i32 @test_ti_thread_flag(ptr noundef %thread_info, i32 noundef %1) #14, !dbg !4790
  ret i32 %call, !dbg !4791
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4792 dso_local void @set_task_blockstep(ptr noundef, i1 noundef zeroext) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @arch_uprobe_xol_was_trapped(ptr noundef %t) #0 align 16 !dbg !4795 {
entry:
  %retval = alloca i1, align 1
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !4799, metadata !DIExpression()), !dbg !4800
  %0 = load ptr, ptr %t.addr, align 8, !dbg !4801
  %thread = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 197, !dbg !4803
  %trap_nr = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 12, !dbg !4804
  %1 = load i64, ptr %trap_nr, align 16, !dbg !4804
  %cmp = icmp ne i64 %1, 4294967295, !dbg !4805
  br i1 %cmp, label %if.then, label %if.end, !dbg !4806

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !4807
  br label %return, !dbg !4807

if.end:                                           ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4808
  br label %return, !dbg !4808

return:                                           ; preds = %if.end, %if.then
  %2 = load i1, ptr %retval, align 1, !dbg !4809
  ret i1 %2, !dbg !4809
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @arch_uprobe_post_xol(ptr noundef %auprobe, ptr noundef %regs) #0 align 16 !dbg !4810 {
entry:
  %auprobe.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %utask = alloca ptr, align 8
  %send_sigtrap = alloca i8, align 1
  %err = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %auprobe, ptr %auprobe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %auprobe.addr, metadata !4812, metadata !DIExpression()), !dbg !4822
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4813, metadata !DIExpression()), !dbg !4823
  call void @llvm.lifetime.start.p0(i64 8, ptr %utask) #13, !dbg !4824
  call void @llvm.dbg.declare(metadata ptr %utask, metadata !4814, metadata !DIExpression()), !dbg !4825
  %call = call ptr @get_current() #14, !dbg !4826
  %utask1 = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 177, !dbg !4827
  %0 = load ptr, ptr %utask1, align 16, !dbg !4827
  store ptr %0, ptr %utask, align 8, !dbg !4825
  call void @llvm.lifetime.start.p0(i64 1, ptr %send_sigtrap) #13, !dbg !4828
  call void @llvm.dbg.declare(metadata ptr %send_sigtrap, metadata !4815, metadata !DIExpression()), !dbg !4829
  %1 = load ptr, ptr %utask, align 8, !dbg !4830
  %2 = getelementptr inbounds %struct.uprobe_task, ptr %1, i32 0, i32 1, !dbg !4831
  %autask = getelementptr inbounds %struct.anon.22, ptr %2, i32 0, i32 0, !dbg !4831
  %saved_tf = getelementptr inbounds %struct.arch_uprobe_task, ptr %autask, i32 0, i32 2, !dbg !4832
  %3 = load i32, ptr %saved_tf, align 4, !dbg !4832
  %tobool = icmp ne i32 %3, 0, !dbg !4830
  %frombool = zext i1 %tobool to i8, !dbg !4829
  store i8 %frombool, ptr %send_sigtrap, align 1, !dbg !4829
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !4833
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4816, metadata !DIExpression()), !dbg !4834
  store i32 0, ptr %err, align 4, !dbg !4834
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !4835
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4817, metadata !DIExpression()), !dbg !4835
  %call2 = call ptr @get_current() #14, !dbg !4835
  %thread = getelementptr inbounds %struct.task_struct, ptr %call2, i32 0, i32 197, !dbg !4835
  %trap_nr = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 12, !dbg !4835
  %4 = load i64, ptr %trap_nr, align 16, !dbg !4835
  %cmp = icmp ne i64 %4, 4294967295, !dbg !4835
  %lnot = xor i1 %cmp, true, !dbg !4835
  %lnot3 = xor i1 %lnot, true, !dbg !4835
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4835
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4835
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !4836
  %tobool4 = icmp ne i32 %5, 0, !dbg !4836
  %lnot5 = xor i1 %tobool4, true, !dbg !4836
  %lnot7 = xor i1 %lnot5, true, !dbg !4836
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !4836
  %conv = sext i32 %lnot.ext8 to i64, !dbg !4836
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4836
  %tobool9 = icmp ne i64 %expval, 0, !dbg !4836
  br i1 %tobool9, label %if.then, label %if.end, !dbg !4835

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4836

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !4837
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4819, metadata !DIExpression()), !dbg !4837
  store i32 2307, ptr %__flags, align 4, !dbg !4837
  br label %do.body10, !dbg !4837

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !4838

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !4838

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !4837

do.body11:                                        ; preds = %do.end
  %6 = load i32, ptr %__flags, align 4, !dbg !4840
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 969, i32 %6, i64 12) #13, !dbg !4840, !srcloc !4842
  br label %do.cond12, !dbg !4840

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !4840

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !4837

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !4843

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !4843

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !4836
  br label %do.cond17, !dbg !4837

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !4837

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !4837

if.end:                                           ; preds = %do.end18, %entry
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !4835
  %tobool19 = icmp ne i32 %7, 0, !dbg !4835
  %lnot20 = xor i1 %tobool19, true, !dbg !4835
  %lnot22 = xor i1 %lnot20, true, !dbg !4835
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !4835
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !4835
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !4835
  store i64 %expval25, ptr %tmp, align 8, !dbg !4836
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !4845
  %8 = load i64, ptr %tmp, align 8, !dbg !4835
  %9 = load ptr, ptr %utask, align 8, !dbg !4846
  %10 = getelementptr inbounds %struct.uprobe_task, ptr %9, i32 0, i32 1, !dbg !4847
  %autask26 = getelementptr inbounds %struct.anon.22, ptr %10, i32 0, i32 0, !dbg !4847
  %saved_trap_nr = getelementptr inbounds %struct.arch_uprobe_task, ptr %autask26, i32 0, i32 1, !dbg !4848
  %11 = load i32, ptr %saved_trap_nr, align 8, !dbg !4848
  %conv27 = zext i32 %11 to i64, !dbg !4846
  %call28 = call ptr @get_current() #14, !dbg !4849
  %thread29 = getelementptr inbounds %struct.task_struct, ptr %call28, i32 0, i32 197, !dbg !4850
  %trap_nr30 = getelementptr inbounds %struct.thread_struct, ptr %thread29, i32 0, i32 12, !dbg !4851
  store i64 %conv27, ptr %trap_nr30, align 16, !dbg !4852
  %12 = load ptr, ptr %auprobe.addr, align 8, !dbg !4853
  %ops = getelementptr inbounds %struct.arch_uprobe, ptr %12, i32 0, i32 1, !dbg !4855
  %13 = load ptr, ptr %ops, align 8, !dbg !4855
  %post_xol = getelementptr inbounds %struct.uprobe_xol_ops, ptr %13, i32 0, i32 2, !dbg !4856
  %14 = load ptr, ptr %post_xol, align 8, !dbg !4856
  %tobool31 = icmp ne ptr %14, null, !dbg !4853
  br i1 %tobool31, label %if.then32, label %if.end43, !dbg !4857

if.then32:                                        ; preds = %if.end
  %15 = load ptr, ptr %auprobe.addr, align 8, !dbg !4858
  %ops33 = getelementptr inbounds %struct.arch_uprobe, ptr %15, i32 0, i32 1, !dbg !4860
  %16 = load ptr, ptr %ops33, align 8, !dbg !4860
  %post_xol34 = getelementptr inbounds %struct.uprobe_xol_ops, ptr %16, i32 0, i32 2, !dbg !4861
  %17 = load ptr, ptr %post_xol34, align 8, !dbg !4861
  %18 = load ptr, ptr %auprobe.addr, align 8, !dbg !4862
  %19 = load ptr, ptr %regs.addr, align 8, !dbg !4863
  %call35 = call i32 %17(ptr noundef %18, ptr noundef %19) #14, !dbg !4858
  store i32 %call35, ptr %err, align 4, !dbg !4864
  %20 = load i32, ptr %err, align 4, !dbg !4865
  %tobool36 = icmp ne i32 %20, 0, !dbg !4865
  br i1 %tobool36, label %if.then37, label %if.end42, !dbg !4867

if.then37:                                        ; preds = %if.then32
  %21 = load ptr, ptr %utask, align 8, !dbg !4868
  %22 = getelementptr inbounds %struct.uprobe_task, ptr %21, i32 0, i32 1, !dbg !4870
  %vaddr = getelementptr inbounds %struct.anon.22, ptr %22, i32 0, i32 1, !dbg !4870
  %23 = load i64, ptr %vaddr, align 8, !dbg !4870
  %24 = load ptr, ptr %regs.addr, align 8, !dbg !4871
  %ip = getelementptr inbounds %struct.pt_regs, ptr %24, i32 0, i32 16, !dbg !4872
  store i64 %23, ptr %ip, align 8, !dbg !4873
  %25 = load i32, ptr %err, align 4, !dbg !4874
  %cmp38 = icmp eq i32 %25, -85, !dbg !4876
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !4877

if.then40:                                        ; preds = %if.then37
  store i32 0, ptr %err, align 4, !dbg !4878
  br label %if.end41, !dbg !4879

if.end41:                                         ; preds = %if.then40, %if.then37
  store i8 0, ptr %send_sigtrap, align 1, !dbg !4880
  br label %if.end42, !dbg !4881

if.end42:                                         ; preds = %if.end41, %if.then32
  br label %if.end43, !dbg !4882

if.end43:                                         ; preds = %if.end42, %if.end
  %26 = load i8, ptr %send_sigtrap, align 1, !dbg !4883, !range !4328, !noundef !518
  %tobool44 = trunc i8 %26 to i1, !dbg !4883
  br i1 %tobool44, label %if.then45, label %if.end48, !dbg !4885

if.then45:                                        ; preds = %if.end43
  %call46 = call ptr @get_current() #14, !dbg !4886
  %call47 = call i32 @send_sig(i32 noundef 5, ptr noundef %call46, i32 noundef 0) #14, !dbg !4887
  br label %if.end48, !dbg !4887

if.end48:                                         ; preds = %if.then45, %if.end43
  %27 = load ptr, ptr %utask, align 8, !dbg !4888
  %28 = getelementptr inbounds %struct.uprobe_task, ptr %27, i32 0, i32 1, !dbg !4890
  %autask49 = getelementptr inbounds %struct.anon.22, ptr %28, i32 0, i32 0, !dbg !4890
  %saved_tf50 = getelementptr inbounds %struct.arch_uprobe_task, ptr %autask49, i32 0, i32 2, !dbg !4891
  %29 = load i32, ptr %saved_tf50, align 4, !dbg !4891
  %tobool51 = icmp ne i32 %29, 0, !dbg !4888
  br i1 %tobool51, label %if.end53, label %if.then52, !dbg !4892

if.then52:                                        ; preds = %if.end48
  %30 = load ptr, ptr %regs.addr, align 8, !dbg !4893
  %flags = getelementptr inbounds %struct.pt_regs, ptr %30, i32 0, i32 18, !dbg !4894
  %31 = load i64, ptr %flags, align 8, !dbg !4895
  %and = and i64 %31, -257, !dbg !4895
  store i64 %and, ptr %flags, align 8, !dbg !4895
  br label %if.end53, !dbg !4893

if.end53:                                         ; preds = %if.then52, %if.end48
  %32 = load i32, ptr %err, align 4, !dbg !4896
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !4897
  call void @llvm.lifetime.end.p0(i64 1, ptr %send_sigtrap) #13, !dbg !4897
  call void @llvm.lifetime.end.p0(i64 8, ptr %utask) #13, !dbg !4897
  ret i32 %32, !dbg !4898
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4899 dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @arch_uprobe_exception_notify(ptr noundef %self, i64 noundef %val, ptr noundef %data) #0 align 16 !dbg !4902 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca ptr, align 8
  %val.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %args = alloca ptr, align 8
  %regs = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %self, ptr %self.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %self.addr, metadata !4915, metadata !DIExpression()), !dbg !4930
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4916, metadata !DIExpression()), !dbg !4931
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4917, metadata !DIExpression()), !dbg !4932
  call void @llvm.lifetime.start.p0(i64 8, ptr %args) #13, !dbg !4933
  call void @llvm.dbg.declare(metadata ptr %args, metadata !4918, metadata !DIExpression()), !dbg !4934
  %0 = load ptr, ptr %data.addr, align 8, !dbg !4935
  store ptr %0, ptr %args, align 8, !dbg !4934
  call void @llvm.lifetime.start.p0(i64 8, ptr %regs) #13, !dbg !4936
  call void @llvm.dbg.declare(metadata ptr %regs, metadata !4928, metadata !DIExpression()), !dbg !4937
  %1 = load ptr, ptr %args, align 8, !dbg !4938
  %regs1 = getelementptr inbounds %struct.die_args, ptr %1, i32 0, i32 0, !dbg !4939
  %2 = load ptr, ptr %regs1, align 8, !dbg !4939
  store ptr %2, ptr %regs, align 8, !dbg !4937
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !4940
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4929, metadata !DIExpression()), !dbg !4941
  store i32 0, ptr %ret, align 4, !dbg !4941
  %3 = load ptr, ptr %regs, align 8, !dbg !4942
  %tobool = icmp ne ptr %3, null, !dbg !4942
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4944

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %regs, align 8, !dbg !4945
  %call = call i32 @user_mode(ptr noundef %4) #14, !dbg !4946
  %tobool2 = icmp ne i32 %call, 0, !dbg !4946
  br i1 %tobool2, label %if.end, label %if.then, !dbg !4947

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !4948
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4948

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load i64, ptr %val.addr, align 8, !dbg !4949
  switch i64 %5, label %sw.default [
    i64 2, label %sw.bb
    i64 3, label %sw.bb7
  ], !dbg !4950

sw.bb:                                            ; preds = %if.end
  %6 = load ptr, ptr %regs, align 8, !dbg !4951
  %call3 = call i32 @uprobe_pre_sstep_notifier(ptr noundef %6) #14, !dbg !4954
  %tobool4 = icmp ne i32 %call3, 0, !dbg !4954
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !4955

if.then5:                                         ; preds = %sw.bb
  store i32 32769, ptr %ret, align 4, !dbg !4956
  br label %if.end6, !dbg !4957

if.end6:                                          ; preds = %if.then5, %sw.bb
  br label %sw.epilog, !dbg !4958

sw.bb7:                                           ; preds = %if.end
  %7 = load ptr, ptr %regs, align 8, !dbg !4959
  %call8 = call i32 @uprobe_post_sstep_notifier(ptr noundef %7) #14, !dbg !4961
  %tobool9 = icmp ne i32 %call8, 0, !dbg !4961
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !4962

if.then10:                                        ; preds = %sw.bb7
  store i32 32769, ptr %ret, align 4, !dbg !4963
  br label %if.end11, !dbg !4964

if.end11:                                         ; preds = %if.then10, %sw.bb7
  br label %sw.epilog, !dbg !4965

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !4966

sw.epilog:                                        ; preds = %sw.default, %if.end11, %if.end6
  %8 = load i32, ptr %ret, align 4, !dbg !4967
  store i32 %8, ptr %retval, align 4, !dbg !4968
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4968

cleanup:                                          ; preds = %sw.epilog, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !4969
  call void @llvm.lifetime.end.p0(i64 8, ptr %regs) #13, !dbg !4969
  call void @llvm.lifetime.end.p0(i64 8, ptr %args) #13, !dbg !4969
  %9 = load i32, ptr %retval, align 4, !dbg !4969
  ret i32 %9, !dbg !4969
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @user_mode(ptr noundef %regs) #4 align 16 !dbg !4970 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4974, metadata !DIExpression()), !dbg !4975
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !4976
  %1 = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 17, !dbg !4977
  %2 = load i16, ptr %1, align 8, !dbg !4977
  %conv = zext i16 %2 to i32, !dbg !4976
  %and = and i32 %conv, 3, !dbg !4978
  %tobool = icmp ne i32 %and, 0, !dbg !4979
  %lnot = xor i1 %tobool, true, !dbg !4979
  %lnot1 = xor i1 %lnot, true, !dbg !4980
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4980
  ret i32 %lnot.ext, !dbg !4981
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4982 dso_local i32 @uprobe_pre_sstep_notifier(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4983 dso_local i32 @uprobe_post_sstep_notifier(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @arch_uprobe_abort_xol(ptr noundef %auprobe, ptr noundef %regs) #0 align 16 !dbg !4984 {
entry:
  %auprobe.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %utask = alloca ptr, align 8
  store ptr %auprobe, ptr %auprobe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %auprobe.addr, metadata !4986, metadata !DIExpression()), !dbg !4989
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4987, metadata !DIExpression()), !dbg !4990
  call void @llvm.lifetime.start.p0(i64 8, ptr %utask) #13, !dbg !4991
  call void @llvm.dbg.declare(metadata ptr %utask, metadata !4988, metadata !DIExpression()), !dbg !4992
  %call = call ptr @get_current() #14, !dbg !4993
  %utask1 = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 177, !dbg !4994
  %0 = load ptr, ptr %utask1, align 16, !dbg !4994
  store ptr %0, ptr %utask, align 8, !dbg !4992
  %1 = load ptr, ptr %auprobe.addr, align 8, !dbg !4995
  %ops = getelementptr inbounds %struct.arch_uprobe, ptr %1, i32 0, i32 1, !dbg !4997
  %2 = load ptr, ptr %ops, align 8, !dbg !4997
  %abort = getelementptr inbounds %struct.uprobe_xol_ops, ptr %2, i32 0, i32 3, !dbg !4998
  %3 = load ptr, ptr %abort, align 8, !dbg !4998
  %tobool = icmp ne ptr %3, null, !dbg !4995
  br i1 %tobool, label %if.then, label %if.end, !dbg !4999

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %auprobe.addr, align 8, !dbg !5000
  %ops2 = getelementptr inbounds %struct.arch_uprobe, ptr %4, i32 0, i32 1, !dbg !5001
  %5 = load ptr, ptr %ops2, align 8, !dbg !5001
  %abort3 = getelementptr inbounds %struct.uprobe_xol_ops, ptr %5, i32 0, i32 3, !dbg !5002
  %6 = load ptr, ptr %abort3, align 8, !dbg !5002
  %7 = load ptr, ptr %auprobe.addr, align 8, !dbg !5003
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !5004
  call void %6(ptr noundef %7, ptr noundef %8) #14, !dbg !5000
  br label %if.end, !dbg !5000

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %utask, align 8, !dbg !5005
  %10 = getelementptr inbounds %struct.uprobe_task, ptr %9, i32 0, i32 1, !dbg !5006
  %autask = getelementptr inbounds %struct.anon.22, ptr %10, i32 0, i32 0, !dbg !5006
  %saved_trap_nr = getelementptr inbounds %struct.arch_uprobe_task, ptr %autask, i32 0, i32 1, !dbg !5007
  %11 = load i32, ptr %saved_trap_nr, align 8, !dbg !5007
  %conv = zext i32 %11 to i64, !dbg !5005
  %call4 = call ptr @get_current() #14, !dbg !5008
  %thread = getelementptr inbounds %struct.task_struct, ptr %call4, i32 0, i32 197, !dbg !5009
  %trap_nr = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 12, !dbg !5010
  store i64 %conv, ptr %trap_nr, align 16, !dbg !5011
  %12 = load ptr, ptr %utask, align 8, !dbg !5012
  %13 = getelementptr inbounds %struct.uprobe_task, ptr %12, i32 0, i32 1, !dbg !5013
  %vaddr = getelementptr inbounds %struct.anon.22, ptr %13, i32 0, i32 1, !dbg !5013
  %14 = load i64, ptr %vaddr, align 8, !dbg !5013
  %15 = load ptr, ptr %regs.addr, align 8, !dbg !5014
  %ip = getelementptr inbounds %struct.pt_regs, ptr %15, i32 0, i32 16, !dbg !5015
  store i64 %14, ptr %ip, align 8, !dbg !5016
  %16 = load ptr, ptr %utask, align 8, !dbg !5017
  %17 = getelementptr inbounds %struct.uprobe_task, ptr %16, i32 0, i32 1, !dbg !5019
  %autask5 = getelementptr inbounds %struct.anon.22, ptr %17, i32 0, i32 0, !dbg !5019
  %saved_tf = getelementptr inbounds %struct.arch_uprobe_task, ptr %autask5, i32 0, i32 2, !dbg !5020
  %18 = load i32, ptr %saved_tf, align 4, !dbg !5020
  %tobool6 = icmp ne i32 %18, 0, !dbg !5017
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !5021

if.then7:                                         ; preds = %if.end
  %19 = load ptr, ptr %regs.addr, align 8, !dbg !5022
  %flags = getelementptr inbounds %struct.pt_regs, ptr %19, i32 0, i32 18, !dbg !5023
  %20 = load i64, ptr %flags, align 8, !dbg !5024
  %and = and i64 %20, -257, !dbg !5024
  store i64 %and, ptr %flags, align 8, !dbg !5024
  br label %if.end8, !dbg !5022

if.end8:                                          ; preds = %if.then7, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %utask) #13, !dbg !5025
  ret void, !dbg !5025
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @arch_uprobe_skip_sstep(ptr noundef %auprobe, ptr noundef %regs) #0 align 16 !dbg !5026 {
entry:
  %auprobe.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %ret = alloca i8, align 1
  store ptr %auprobe, ptr %auprobe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %auprobe.addr, metadata !5028, metadata !DIExpression()), !dbg !5031
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5029, metadata !DIExpression()), !dbg !5032
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #13, !dbg !5033
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5030, metadata !DIExpression()), !dbg !5034
  %0 = load ptr, ptr %auprobe.addr, align 8, !dbg !5035
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !5036
  %call = call zeroext i1 @__skip_sstep(ptr noundef %0, ptr noundef %1) #14, !dbg !5037
  %frombool = zext i1 %call to i8, !dbg !5034
  store i8 %frombool, ptr %ret, align 1, !dbg !5034
  %2 = load i8, ptr %ret, align 1, !dbg !5038, !range !4328, !noundef !518
  %tobool = trunc i8 %2 to i1, !dbg !5038
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5040

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %regs.addr, align 8, !dbg !5041
  %flags = getelementptr inbounds %struct.pt_regs, ptr %3, i32 0, i32 18, !dbg !5042
  %4 = load i64, ptr %flags, align 8, !dbg !5042
  %and = and i64 %4, 256, !dbg !5043
  %tobool1 = icmp ne i64 %and, 0, !dbg !5043
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5044

if.then:                                          ; preds = %land.lhs.true
  %call2 = call ptr @get_current() #14, !dbg !5045
  %call3 = call i32 @send_sig(i32 noundef 5, ptr noundef %call2, i32 noundef 0) #14, !dbg !5046
  br label %if.end, !dbg !5046

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load i8, ptr %ret, align 1, !dbg !5047, !range !4328, !noundef !518
  %tobool4 = trunc i8 %5 to i1, !dbg !5047
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #13, !dbg !5048
  ret i1 %tobool4, !dbg !5049
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__skip_sstep(ptr noundef %auprobe, ptr noundef %regs) #0 align 16 !dbg !5050 {
entry:
  %retval = alloca i1, align 1
  %auprobe.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  store ptr %auprobe, ptr %auprobe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %auprobe.addr, metadata !5052, metadata !DIExpression()), !dbg !5054
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5053, metadata !DIExpression()), !dbg !5055
  %0 = load ptr, ptr %auprobe.addr, align 8, !dbg !5056
  %ops = getelementptr inbounds %struct.arch_uprobe, ptr %0, i32 0, i32 1, !dbg !5058
  %1 = load ptr, ptr %ops, align 8, !dbg !5058
  %emulate = getelementptr inbounds %struct.uprobe_xol_ops, ptr %1, i32 0, i32 0, !dbg !5059
  %2 = load ptr, ptr %emulate, align 8, !dbg !5059
  %tobool = icmp ne ptr %2, null, !dbg !5056
  br i1 %tobool, label %if.then, label %if.end, !dbg !5060

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %auprobe.addr, align 8, !dbg !5061
  %ops1 = getelementptr inbounds %struct.arch_uprobe, ptr %3, i32 0, i32 1, !dbg !5062
  %4 = load ptr, ptr %ops1, align 8, !dbg !5062
  %emulate2 = getelementptr inbounds %struct.uprobe_xol_ops, ptr %4, i32 0, i32 0, !dbg !5063
  %5 = load ptr, ptr %emulate2, align 8, !dbg !5063
  %6 = load ptr, ptr %auprobe.addr, align 8, !dbg !5064
  %7 = load ptr, ptr %regs.addr, align 8, !dbg !5065
  %call = call zeroext i1 %5(ptr noundef %6, ptr noundef %7) #14, !dbg !5061
  store i1 %call, ptr %retval, align 1, !dbg !5066
  br label %return, !dbg !5066

if.end:                                           ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5067
  br label %return, !dbg !5067

return:                                           ; preds = %if.end, %if.then
  %8 = load i1, ptr %retval, align 1, !dbg !5068
  ret i1 %8, !dbg !5068
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @arch_uretprobe_hijack_return_addr(i64 noundef %trampoline_vaddr, ptr noundef %regs) #0 align 16 !dbg !5069 {
entry:
  %retval = alloca i64, align 8
  %trampoline_vaddr.addr = alloca i64, align 8
  %regs.addr = alloca ptr, align 8
  %rasize = alloca i32, align 4
  %nleft = alloca i32, align 4
  %orig_ret_vaddr = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i64 %trampoline_vaddr, ptr %trampoline_vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trampoline_vaddr.addr, metadata !5073, metadata !DIExpression()), !dbg !5078
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5074, metadata !DIExpression()), !dbg !5079
  call void @llvm.lifetime.start.p0(i64 4, ptr %rasize) #13, !dbg !5080
  call void @llvm.dbg.declare(metadata ptr %rasize, metadata !5075, metadata !DIExpression()), !dbg !5081
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5082
  %call = call i32 @sizeof_long(ptr noundef %0) #14, !dbg !5083
  store i32 %call, ptr %rasize, align 4, !dbg !5081
  call void @llvm.lifetime.start.p0(i64 4, ptr %nleft) #13, !dbg !5080
  call void @llvm.dbg.declare(metadata ptr %nleft, metadata !5076, metadata !DIExpression()), !dbg !5084
  call void @llvm.lifetime.start.p0(i64 8, ptr %orig_ret_vaddr) #13, !dbg !5085
  call void @llvm.dbg.declare(metadata ptr %orig_ret_vaddr, metadata !5077, metadata !DIExpression()), !dbg !5086
  store i64 0, ptr %orig_ret_vaddr, align 8, !dbg !5086
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !5087
  %sp = getelementptr inbounds %struct.pt_regs, ptr %1, i32 0, i32 19, !dbg !5089
  %2 = load i64, ptr %sp, align 8, !dbg !5089
  %3 = inttoptr i64 %2 to ptr, !dbg !5090
  %4 = load i32, ptr %rasize, align 4, !dbg !5091
  %conv = sext i32 %4 to i64, !dbg !5091
  %call1 = call i64 @copy_from_user(ptr noundef %orig_ret_vaddr, ptr noundef %3, i64 noundef %conv) #14, !dbg !5092
  %tobool = icmp ne i64 %call1, 0, !dbg !5092
  br i1 %tobool, label %if.then, label %if.end, !dbg !5093

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !5094
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5094

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %orig_ret_vaddr, align 8, !dbg !5095
  %6 = load i64, ptr %trampoline_vaddr.addr, align 8, !dbg !5097
  %cmp = icmp eq i64 %5, %6, !dbg !5098
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !5099

if.then3:                                         ; preds = %if.end
  %7 = load i64, ptr %orig_ret_vaddr, align 8, !dbg !5100
  store i64 %7, ptr %retval, align 8, !dbg !5101
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5101

if.end4:                                          ; preds = %if.end
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !5102
  %sp5 = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 19, !dbg !5103
  %9 = load i64, ptr %sp5, align 8, !dbg !5103
  %10 = inttoptr i64 %9 to ptr, !dbg !5104
  %11 = load i32, ptr %rasize, align 4, !dbg !5105
  %conv6 = sext i32 %11 to i64, !dbg !5105
  %call7 = call i64 @copy_to_user(ptr noundef %10, ptr noundef %trampoline_vaddr.addr, i64 noundef %conv6) #14, !dbg !5106
  %conv8 = trunc i64 %call7 to i32, !dbg !5106
  store i32 %conv8, ptr %nleft, align 4, !dbg !5107
  %12 = load i32, ptr %nleft, align 4, !dbg !5108
  %tobool9 = icmp ne i32 %12, 0, !dbg !5108
  %lnot = xor i1 %tobool9, true, !dbg !5108
  %lnot10 = xor i1 %lnot, true, !dbg !5108
  %lnot11 = xor i1 %lnot10, true, !dbg !5108
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !5108
  %conv12 = sext i32 %lnot.ext to i64, !dbg !5108
  %expval = call i64 @llvm.expect.i64(i64 %conv12, i64 1), !dbg !5108
  %tobool13 = icmp ne i64 %expval, 0, !dbg !5108
  br i1 %tobool13, label %if.then14, label %if.end19, !dbg !5110

if.then14:                                        ; preds = %if.end4
  %13 = load i64, ptr %trampoline_vaddr.addr, align 8, !dbg !5111
  %call15 = call i32 @shstk_update_last_frame(i64 noundef %13) #14, !dbg !5114
  %tobool16 = icmp ne i32 %call15, 0, !dbg !5114
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !5115

if.then17:                                        ; preds = %if.then14
  call void @force_sig(i32 noundef 11) #14, !dbg !5116
  store i64 -1, ptr %retval, align 8, !dbg !5118
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5118

if.end18:                                         ; preds = %if.then14
  %14 = load i64, ptr %orig_ret_vaddr, align 8, !dbg !5119
  store i64 %14, ptr %retval, align 8, !dbg !5120
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5120

if.end19:                                         ; preds = %if.end4
  %15 = load i32, ptr %nleft, align 4, !dbg !5121
  %16 = load i32, ptr %rasize, align 4, !dbg !5123
  %cmp20 = icmp ne i32 %15, %16, !dbg !5124
  br i1 %cmp20, label %if.then22, label %if.end26, !dbg !5125

if.then22:                                        ; preds = %if.end19
  br label %do.body, !dbg !5126

do.body:                                          ; preds = %if.then22
  br label %do.cond, !dbg !5129

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5129

do.end:                                           ; preds = %do.cond
  %call23 = call ptr @get_current() #14, !dbg !5126
  %pid = getelementptr inbounds %struct.task_struct, ptr %call23, i32 0, i32 62, !dbg !5126
  %17 = load i32, ptr %pid, align 8, !dbg !5126
  %18 = load ptr, ptr %regs.addr, align 8, !dbg !5126
  %sp24 = getelementptr inbounds %struct.pt_regs, ptr %18, i32 0, i32 19, !dbg !5126
  %19 = load i64, ptr %sp24, align 8, !dbg !5126
  %20 = load ptr, ptr %regs.addr, align 8, !dbg !5126
  %ip = getelementptr inbounds %struct.pt_regs, ptr %20, i32 0, i32 16, !dbg !5126
  %21 = load i64, ptr %ip, align 8, !dbg !5126
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %17, i64 noundef %19, i64 noundef %21) #16, !dbg !5126
  store i32 %call25, ptr %tmp, align 4, !dbg !5129
  %22 = load i32, ptr %tmp, align 4, !dbg !5126
  call void @force_sig(i32 noundef 11) #14, !dbg !5131
  br label %if.end26, !dbg !5132

if.end26:                                         ; preds = %do.end, %if.end19
  store i64 -1, ptr %retval, align 8, !dbg !5133
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5133

cleanup:                                          ; preds = %if.end26, %if.end18, %if.then17, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %orig_ret_vaddr) #13, !dbg !5134
  call void @llvm.lifetime.end.p0(i64 4, ptr %nleft) #13, !dbg !5134
  call void @llvm.lifetime.end.p0(i64 4, ptr %rasize) #13, !dbg !5134
  %23 = load i64, ptr %retval, align 8, !dbg !5134
  ret i64 %23, !dbg !5134
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sizeof_long(ptr noundef %regs) #3 align 16 !dbg !5135 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5137, metadata !DIExpression()), !dbg !5138
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5139
  %call = call zeroext i1 @user_64bit_mode(ptr noundef %0) #14, !dbg !5140
  %1 = zext i1 %call to i64, !dbg !5140
  %cond = select i1 %call, i32 8, i32 4, !dbg !5140
  ret i32 %cond, !dbg !5141
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #4 align 16 !dbg !5142 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5147, metadata !DIExpression()), !dbg !5150
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5148, metadata !DIExpression()), !dbg !5151
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5149, metadata !DIExpression()), !dbg !5152
  %0 = load ptr, ptr %to.addr, align 8, !dbg !5153
  %1 = load i64, ptr %n.addr, align 8, !dbg !5155
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #14, !dbg !5156
  br i1 %call, label %if.then, label %if.end, !dbg !5157

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !5158
  %3 = load ptr, ptr %from.addr, align 8, !dbg !5159
  %4 = load i64, ptr %n.addr, align 8, !dbg !5160
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #14, !dbg !5161
  store i64 %call1, ptr %n.addr, align 8, !dbg !5162
  br label %if.end, !dbg !5163

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5164
  ret i64 %5, !dbg !5165
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #4 align 16 !dbg !5166 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5168, metadata !DIExpression()), !dbg !5171
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5169, metadata !DIExpression()), !dbg !5172
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5170, metadata !DIExpression()), !dbg !5173
  %0 = load ptr, ptr %from.addr, align 8, !dbg !5174
  %1 = load i64, ptr %n.addr, align 8, !dbg !5176
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #14, !dbg !5177
  br i1 %call, label %if.then, label %if.end, !dbg !5178

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !5179
  %3 = load ptr, ptr %from.addr, align 8, !dbg !5180
  %4 = load i64, ptr %n.addr, align 8, !dbg !5181
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #14, !dbg !5182
  store i64 %call1, ptr %n.addr, align 8, !dbg !5183
  br label %if.end, !dbg !5184

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5185
  ret i64 %5, !dbg !5186
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @shstk_update_last_frame(i64 noundef %val) #3 align 16 !dbg !5187 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5192, metadata !DIExpression()), !dbg !5193
  ret i32 0, !dbg !5194
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5195 dso_local void @force_sig(i32 noundef) #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5196 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @arch_uretprobe_is_alive(ptr noundef %ret, i32 noundef %ctx, ptr noundef %regs) #0 align 16 !dbg !5200 {
entry:
  %retval = alloca i1, align 1
  %ret.addr = alloca ptr, align 8
  %ctx.addr = alloca i32, align 4
  %regs.addr = alloca ptr, align 8
  store ptr %ret, ptr %ret.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ret.addr, metadata !5204, metadata !DIExpression()), !dbg !5207
  store i32 %ctx, ptr %ctx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !5205, metadata !DIExpression()), !dbg !5208
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5206, metadata !DIExpression()), !dbg !5209
  %0 = load i32, ptr %ctx.addr, align 4, !dbg !5210
  %cmp = icmp eq i32 %0, 0, !dbg !5212
  br i1 %cmp, label %if.then, label %if.else, !dbg !5213

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !5214
  %sp = getelementptr inbounds %struct.pt_regs, ptr %1, i32 0, i32 19, !dbg !5215
  %2 = load i64, ptr %sp, align 8, !dbg !5215
  %3 = load ptr, ptr %ret.addr, align 8, !dbg !5216
  %stack = getelementptr inbounds %struct.return_instance, ptr %3, i32 0, i32 2, !dbg !5217
  %4 = load i64, ptr %stack, align 8, !dbg !5217
  %cmp1 = icmp ult i64 %2, %4, !dbg !5218
  store i1 %cmp1, ptr %retval, align 1, !dbg !5219
  br label %return, !dbg !5219

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %regs.addr, align 8, !dbg !5220
  %sp2 = getelementptr inbounds %struct.pt_regs, ptr %5, i32 0, i32 19, !dbg !5221
  %6 = load i64, ptr %sp2, align 8, !dbg !5221
  %7 = load ptr, ptr %ret.addr, align 8, !dbg !5222
  %stack3 = getelementptr inbounds %struct.return_instance, ptr %7, i32 0, i32 2, !dbg !5223
  %8 = load i64, ptr %stack3, align 8, !dbg !5223
  %cmp4 = icmp ule i64 %6, %8, !dbg !5224
  store i1 %cmp4, ptr %retval, align 1, !dbg !5225
  br label %return, !dbg !5225

return:                                           ; preds = %if.else, %if.then
  %9 = load i1, ptr %retval, align 1, !dbg !5226
  ret i1 %9, !dbg !5226
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5227 dso_local i32 @insn_decode(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_prefix_bad(ptr noundef %insn) #0 align 16 !dbg !5230 {
entry:
  %retval = alloca i1, align 1
  %insn.addr = alloca ptr, align 8
  %p = alloca i8, align 1
  %i = alloca i32, align 4
  %attr = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !5234, metadata !DIExpression()), !dbg !5241
  call void @llvm.lifetime.start.p0(i64 1, ptr %p) #13, !dbg !5242
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5235, metadata !DIExpression()), !dbg !5243
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !5244
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5236, metadata !DIExpression()), !dbg !5245
  store i32 0, ptr %i, align 4, !dbg !5246
  br label %for.cond, !dbg !5246

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5247
  %conv = sext i32 %0 to i64, !dbg !5247
  %cmp = icmp ult i64 %conv, 4, !dbg !5247
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5247

land.rhs:                                         ; preds = %for.cond
  %1 = load ptr, ptr %insn.addr, align 8, !dbg !5247
  %prefixes = getelementptr inbounds %struct.insn, ptr %1, i32 0, i32 0, !dbg !5247
  %2 = getelementptr inbounds %struct.insn_field, ptr %prefixes, i32 0, i32 0, !dbg !5247
  %3 = load i32, ptr %i, align 4, !dbg !5247
  %idxprom = sext i32 %3 to i64, !dbg !5247
  %arrayidx = getelementptr [4 x i8], ptr %2, i64 0, i64 %idxprom, !dbg !5247
  %4 = load i8, ptr %arrayidx, align 1, !dbg !5247
  store i8 %4, ptr %p, align 1, !dbg !5247
  %conv2 = zext i8 %4 to i32, !dbg !5247
  %cmp3 = icmp ne i32 %conv2, 0, !dbg !5247
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ], !dbg !5248
  br i1 %5, label %for.body, label %for.end, !dbg !5246

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %attr) #13, !dbg !5249
  call void @llvm.dbg.declare(metadata ptr %attr, metadata !5237, metadata !DIExpression()), !dbg !5250
  %6 = load i8, ptr %p, align 1, !dbg !5251
  %call = call i32 @inat_get_opcode_attribute(i8 noundef zeroext %6) #14, !dbg !5252
  store i32 %call, ptr %attr, align 4, !dbg !5253
  %7 = load i32, ptr %attr, align 4, !dbg !5254
  switch i32 %7, label %sw.epilog [
    i32 7, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 10, label %sw.bb
    i32 4, label %sw.bb
  ], !dbg !5255

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body, %for.body
  store i1 true, ptr %retval, align 1, !dbg !5256
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5256

sw.epilog:                                        ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5258
  br label %cleanup, !dbg !5258

cleanup:                                          ; preds = %sw.epilog, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %attr) #13, !dbg !5258
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup5 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5259

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i32, ptr %i, align 4, !dbg !5247
  %inc = add i32 %8, 1, !dbg !5247
  store i32 %inc, ptr %i, align 4, !dbg !5247
  br label %for.cond, !dbg !5247, !llvm.loop !5260

for.end:                                          ; preds = %land.end
  store i1 false, ptr %retval, align 1, !dbg !5262
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup5, !dbg !5262

cleanup5:                                         ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !5263
  call void @llvm.lifetime.end.p0(i64 1, ptr %p) #13, !dbg !5263
  %9 = load i1, ptr %retval, align 1, !dbg !5263
  ret i1 %9, !dbg !5263
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @insn_masking_exception(ptr noundef %insn) #3 align 16 !dbg !5264 {
entry:
  %insn.addr = alloca ptr, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !5268, metadata !DIExpression()), !dbg !5269
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !5270
  %opcode = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 3, !dbg !5271
  %1 = getelementptr inbounds %struct.insn_field, ptr %opcode, i32 0, i32 0, !dbg !5272
  %arrayidx = getelementptr [4 x i8], ptr %1, i64 0, i64 0, !dbg !5270
  %2 = load i8, ptr %arrayidx, align 8, !dbg !5270
  %conv = zext i8 %2 to i32, !dbg !5270
  %cmp = icmp eq i32 %conv, 31, !dbg !5273
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5274

lor.rhs:                                          ; preds = %entry
  %3 = load ptr, ptr %insn.addr, align 8, !dbg !5275
  %opcode2 = getelementptr inbounds %struct.insn, ptr %3, i32 0, i32 3, !dbg !5276
  %4 = getelementptr inbounds %struct.insn_field, ptr %opcode2, i32 0, i32 0, !dbg !5277
  %arrayidx3 = getelementptr [4 x i8], ptr %4, i64 0, i64 0, !dbg !5275
  %5 = load i8, ptr %arrayidx3, align 8, !dbg !5275
  %conv4 = zext i8 %5 to i32, !dbg !5275
  %cmp5 = icmp eq i32 %conv4, 142, !dbg !5278
  br i1 %cmp5, label %land.rhs, label %land.end, !dbg !5279

land.rhs:                                         ; preds = %lor.rhs
  %6 = load ptr, ptr %insn.addr, align 8, !dbg !5280
  %modrm = getelementptr inbounds %struct.insn, ptr %6, i32 0, i32 4, !dbg !5280
  %7 = getelementptr inbounds %struct.insn_field, ptr %modrm, i32 0, i32 0, !dbg !5280
  %arrayidx7 = getelementptr [4 x i8], ptr %7, i64 0, i64 0, !dbg !5280
  %8 = load i8, ptr %arrayidx7, align 8, !dbg !5280
  %conv8 = zext i8 %8 to i32, !dbg !5280
  %and = and i32 %conv8, 56, !dbg !5280
  %shr = ashr i32 %and, 3, !dbg !5280
  %cmp9 = icmp eq i32 %shr, 2, !dbg !5281
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %9 = phi i1 [ false, %lor.rhs ], [ %cmp9, %land.rhs ], !dbg !5282
  br label %lor.end, !dbg !5274

lor.end:                                          ; preds = %land.end, %entry
  %10 = phi i1 [ true, %entry ], [ %9, %land.end ]
  %lor.ext = zext i1 %10 to i32, !dbg !5274
  ret i32 %lor.ext, !dbg !5283
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i8(i8) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5284 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5292, metadata !DIExpression()), !dbg !5297
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5293, metadata !DIExpression()), !dbg !5298
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #13, !dbg !5299
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5294, metadata !DIExpression()), !dbg !5300
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5301
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5302
  %div = udiv i64 %1, 64, !dbg !5302
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5303
  store ptr %add.ptr, ptr %p, align 8, !dbg !5300
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #13, !dbg !5304
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5295, metadata !DIExpression()), !dbg !5305
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5306
  %rem = urem i64 %2, 64, !dbg !5306
  %shl = shl i64 1, %rem, !dbg !5306
  store i64 %shl, ptr %mask, align 8, !dbg !5305
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #13, !dbg !5307
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5296, metadata !DIExpression()), !dbg !5308
  %3 = load ptr, ptr %p, align 8, !dbg !5309
  %4 = load i64, ptr %3, align 8, !dbg !5310
  store i64 %4, ptr %val, align 8, !dbg !5308
  %5 = load i64, ptr %val, align 8, !dbg !5311
  %6 = load i64, ptr %mask, align 8, !dbg !5312
  %and = and i64 %5, %6, !dbg !5313
  %tobool = icmp ne i64 %and, 0, !dbg !5314
  %lnot = xor i1 %tobool, true, !dbg !5314
  %lnot1 = xor i1 %lnot, true, !dbg !5315
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #13, !dbg !5316
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #13, !dbg !5316
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #13, !dbg !5316
  ret i1 %lnot1, !dbg !5317
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5318 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5321, metadata !DIExpression()), !dbg !5323
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5322, metadata !DIExpression()), !dbg !5324
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5325
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5326
  %div = udiv i64 %1, 64, !dbg !5326
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5327
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !5328
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5329
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5330
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !5331
  ret i1 %call, !dbg !5332
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5333 dso_local i32 @inat_get_opcode_attribute(i8 noundef zeroext) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !5337 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5345, metadata !DIExpression()), !dbg !5347
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5346, metadata !DIExpression()), !dbg !5348
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5349
  %1 = load i64, ptr %size.addr, align 8, !dbg !5350
  %conv = trunc i64 %1 to i32, !dbg !5350
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #14, !dbg !5351
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5352
  %3 = load i64, ptr %size.addr, align 8, !dbg !5352
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #14, !dbg !5352
  ret void, !dbg !5353
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5354 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5357, metadata !DIExpression()), !dbg !5359
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5358, metadata !DIExpression()), !dbg !5360
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5361
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5362
  br i1 %1, label %cond.true, label %cond.false, !dbg !5362

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5363
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5364
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !5365
  %conv = zext i1 %call to i32, !dbg !5365
  br label %cond.end, !dbg !5362

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5366
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5367
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #14, !dbg !5368
  %conv2 = zext i1 %call1 to i32, !dbg !5368
  br label %cond.end, !dbg !5362

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5362
  %tobool = icmp ne i32 %cond, 0, !dbg !5362
  ret i1 %tobool, !dbg !5369
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !5370 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5375, metadata !DIExpression()), !dbg !5377
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5376, metadata !DIExpression()), !dbg !5378
  ret i1 true, !dbg !5379
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !5380 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5385, metadata !DIExpression()), !dbg !5388
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5386, metadata !DIExpression()), !dbg !5389
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5387, metadata !DIExpression()), !dbg !5390
  ret void, !dbg !5391
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5392 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5396, metadata !DIExpression()), !dbg !5398
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5397, metadata !DIExpression()), !dbg !5399
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5400
  %and = and i64 %0, 63, !dbg !5401
  %shl = shl i64 1, %and, !dbg !5402
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5403
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5404
  %shr = ashr i64 %2, 6, !dbg !5405
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5403
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5403
  %and1 = and i64 %shl, %3, !dbg !5406
  %cmp = icmp ne i64 %and1, 0, !dbg !5407
  ret i1 %cmp, !dbg !5408
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5409 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5411, metadata !DIExpression()), !dbg !5414
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5412, metadata !DIExpression()), !dbg !5415
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #13, !dbg !5416
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5413, metadata !DIExpression()), !dbg !5417
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5418
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5419
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #13, !dbg !5420, !srcloc !5421
  %3 = icmp ult i8 %2, 2, !dbg !5420
  call void @llvm.assume(i1 %3), !dbg !5420
  store i8 %2, ptr %oldbit, align 1, !dbg !5420
  %4 = load i8, ptr %oldbit, align 1, !dbg !5422, !range !4328, !noundef !518
  %tobool = trunc i8 %4 to i1, !dbg !5422
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #13, !dbg !5423
  ret i1 %tobool, !dbg !5424
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @branch_clear_offset(ptr noundef %auprobe, ptr noundef %insn) #0 align 16 !dbg !5425 {
entry:
  %auprobe.addr = alloca ptr, align 8
  %insn.addr = alloca ptr, align 8
  store ptr %auprobe, ptr %auprobe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %auprobe.addr, metadata !5427, metadata !DIExpression()), !dbg !5429
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !5428, metadata !DIExpression()), !dbg !5430
  %0 = load ptr, ptr %auprobe.addr, align 8, !dbg !5431
  %1 = getelementptr inbounds %struct.arch_uprobe, ptr %0, i32 0, i32 0, !dbg !5432
  %arraydecay = getelementptr inbounds [16 x i8], ptr %1, i64 0, i64 0, !dbg !5431
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !5433
  %call = call i32 @insn_offset_immediate(ptr noundef %2) #14, !dbg !5434
  %idx.ext = sext i32 %call to i64, !dbg !5435
  %add.ptr = getelementptr i8, ptr %arraydecay, i64 %idx.ext, !dbg !5435
  %3 = load ptr, ptr %insn.addr, align 8, !dbg !5436
  %4 = getelementptr inbounds %struct.insn, ptr %3, i32 0, i32 7, !dbg !5437
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %4, i32 0, i32 2, !dbg !5438
  %5 = load i8, ptr %nbytes, align 1, !dbg !5438
  %conv = zext i8 %5 to i64, !dbg !5436
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %conv, i1 false), !dbg !5439
  ret void, !dbg !5440
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_cond_jmp_opcode(i8 noundef zeroext %opcode) #0 align 16 !dbg !5441 {
entry:
  %retval = alloca i1, align 1
  %opcode.addr = alloca i8, align 1
  store i8 %opcode, ptr %opcode.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %opcode.addr, metadata !5445, metadata !DIExpression()), !dbg !5446
  %0 = load i8, ptr %opcode.addr, align 1, !dbg !5447
  %conv = zext i8 %0 to i32, !dbg !5447
  switch i32 %conv, label %sw.default [
    i32 112, label %sw.bb
    i32 113, label %sw.bb1
    i32 114, label %sw.bb2
    i32 115, label %sw.bb3
    i32 116, label %sw.bb4
    i32 117, label %sw.bb5
    i32 120, label %sw.bb6
    i32 121, label %sw.bb7
    i32 122, label %sw.bb8
    i32 123, label %sw.bb9
    i32 118, label %sw.bb10
    i32 119, label %sw.bb11
    i32 124, label %sw.bb12
    i32 125, label %sw.bb13
    i32 126, label %sw.bb14
    i32 127, label %sw.bb15
  ], !dbg !5448

sw.bb:                                            ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !5449
  br label %return, !dbg !5449

sw.bb1:                                           ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !5449
  br label %return, !dbg !5449

sw.bb2:                                           ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !5449
  br label %return, !dbg !5449

sw.bb3:                                           ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !5449
  br label %return, !dbg !5449

sw.bb4:                                           ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !5449
  br label %return, !dbg !5449

sw.bb5:                                           ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !5449
  br label %return, !dbg !5449

sw.bb6:                                           ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !5449
  br label %return, !dbg !5449

sw.bb7:                                           ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !5449
  br label %return, !dbg !5449

sw.bb8:                                           ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !5449
  br label %return, !dbg !5449

sw.bb9:                                           ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !5449
  br label %return, !dbg !5449

sw.bb10:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !5449
  br label %return, !dbg !5449

sw.bb11:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !5449
  br label %return, !dbg !5449

sw.bb12:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !5449
  br label %return, !dbg !5449

sw.bb13:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !5449
  br label %return, !dbg !5449

sw.bb14:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !5449
  br label %return, !dbg !5449

sw.bb15:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !5449
  br label %return, !dbg !5449

sw.default:                                       ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5451
  br label %return, !dbg !5451

return:                                           ; preds = %sw.default, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i1, ptr %retval, align 1, !dbg !5452
  ret i1 %1, !dbg !5452
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @insn_offset_immediate(ptr noundef %insn) #3 align 16 !dbg !5453 {
entry:
  %insn.addr = alloca ptr, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !5455, metadata !DIExpression()), !dbg !5456
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !5457
  %call = call i32 @insn_offset_displacement(ptr noundef %0) #14, !dbg !5458
  %1 = load ptr, ptr %insn.addr, align 8, !dbg !5459
  %displacement = getelementptr inbounds %struct.insn, ptr %1, i32 0, i32 6, !dbg !5460
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %displacement, i32 0, i32 2, !dbg !5461
  %2 = load i8, ptr %nbytes, align 1, !dbg !5461
  %conv = zext i8 %2 to i32, !dbg !5459
  %add = add i32 %call, %conv, !dbg !5462
  ret i32 %add, !dbg !5463
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @insn_offset_displacement(ptr noundef %insn) #3 align 16 !dbg !5464 {
entry:
  %insn.addr = alloca ptr, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !5466, metadata !DIExpression()), !dbg !5467
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !5468
  %call = call i32 @insn_offset_sib(ptr noundef %0) #14, !dbg !5469
  %1 = load ptr, ptr %insn.addr, align 8, !dbg !5470
  %sib = getelementptr inbounds %struct.insn, ptr %1, i32 0, i32 5, !dbg !5471
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %sib, i32 0, i32 2, !dbg !5472
  %2 = load i8, ptr %nbytes, align 1, !dbg !5472
  %conv = zext i8 %2 to i32, !dbg !5470
  %add = add i32 %call, %conv, !dbg !5473
  ret i32 %add, !dbg !5474
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @insn_offset_sib(ptr noundef %insn) #3 align 16 !dbg !5475 {
entry:
  %insn.addr = alloca ptr, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !5477, metadata !DIExpression()), !dbg !5478
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !5479
  %call = call i32 @insn_offset_modrm(ptr noundef %0) #14, !dbg !5480
  %1 = load ptr, ptr %insn.addr, align 8, !dbg !5481
  %modrm = getelementptr inbounds %struct.insn, ptr %1, i32 0, i32 4, !dbg !5482
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %modrm, i32 0, i32 2, !dbg !5483
  %2 = load i8, ptr %nbytes, align 1, !dbg !5483
  %conv = zext i8 %2 to i32, !dbg !5481
  %add = add i32 %call, %conv, !dbg !5484
  ret i32 %add, !dbg !5485
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @insn_offset_modrm(ptr noundef %insn) #3 align 16 !dbg !5486 {
entry:
  %insn.addr = alloca ptr, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !5488, metadata !DIExpression()), !dbg !5489
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !5490
  %call = call i32 @insn_offset_opcode(ptr noundef %0) #14, !dbg !5491
  %1 = load ptr, ptr %insn.addr, align 8, !dbg !5492
  %opcode = getelementptr inbounds %struct.insn, ptr %1, i32 0, i32 3, !dbg !5493
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %opcode, i32 0, i32 2, !dbg !5494
  %2 = load i8, ptr %nbytes, align 1, !dbg !5494
  %conv = zext i8 %2 to i32, !dbg !5492
  %add = add i32 %call, %conv, !dbg !5495
  ret i32 %add, !dbg !5496
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @insn_offset_opcode(ptr noundef %insn) #3 align 16 !dbg !5497 {
entry:
  %insn.addr = alloca ptr, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !5499, metadata !DIExpression()), !dbg !5500
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !5501
  %call = call i32 @insn_offset_vex_prefix(ptr noundef %0) #14, !dbg !5502
  %1 = load ptr, ptr %insn.addr, align 8, !dbg !5503
  %vex_prefix = getelementptr inbounds %struct.insn, ptr %1, i32 0, i32 2, !dbg !5504
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %vex_prefix, i32 0, i32 2, !dbg !5505
  %2 = load i8, ptr %nbytes, align 1, !dbg !5505
  %conv = zext i8 %2 to i32, !dbg !5503
  %add = add i32 %call, %conv, !dbg !5506
  ret i32 %add, !dbg !5507
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @insn_offset_vex_prefix(ptr noundef %insn) #3 align 16 !dbg !5508 {
entry:
  %insn.addr = alloca ptr, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !5510, metadata !DIExpression()), !dbg !5511
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !5512
  %call = call i32 @insn_offset_rex_prefix(ptr noundef %0) #14, !dbg !5513
  %1 = load ptr, ptr %insn.addr, align 8, !dbg !5514
  %rex_prefix = getelementptr inbounds %struct.insn, ptr %1, i32 0, i32 1, !dbg !5515
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %rex_prefix, i32 0, i32 2, !dbg !5516
  %2 = load i8, ptr %nbytes, align 1, !dbg !5516
  %conv = zext i8 %2 to i32, !dbg !5514
  %add = add i32 %call, %conv, !dbg !5517
  ret i32 %add, !dbg !5518
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @insn_offset_rex_prefix(ptr noundef %insn) #3 align 16 !dbg !5519 {
entry:
  %insn.addr = alloca ptr, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !5521, metadata !DIExpression()), !dbg !5522
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !5523
  %prefixes = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 0, !dbg !5524
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %prefixes, i32 0, i32 2, !dbg !5525
  %1 = load i8, ptr %nbytes, align 1, !dbg !5525
  %conv = zext i8 %1 to i32, !dbg !5523
  ret i32 %conv, !dbg !5526
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @branch_emulate_op(ptr noundef %auprobe, ptr noundef %regs) #0 align 16 !dbg !5527 {
entry:
  %retval = alloca i1, align 1
  %auprobe.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %new_ip = alloca i64, align 8
  %offs = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %auprobe, ptr %auprobe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %auprobe.addr, metadata !5529, metadata !DIExpression()), !dbg !5533
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5530, metadata !DIExpression()), !dbg !5534
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_ip) #13, !dbg !5535
  call void @llvm.dbg.declare(metadata ptr %new_ip, metadata !5531, metadata !DIExpression()), !dbg !5536
  %0 = load ptr, ptr %auprobe.addr, align 8, !dbg !5537
  %1 = getelementptr inbounds %struct.arch_uprobe, ptr %0, i32 0, i32 2, !dbg !5538
  %ilen = getelementptr inbounds %struct.anon.18, ptr %1, i32 0, i32 1, !dbg !5539
  %2 = load i8, ptr %ilen, align 4, !dbg !5539
  %conv = zext i8 %2 to i64, !dbg !5537
  %3 = load ptr, ptr %regs.addr, align 8, !dbg !5540
  %ip = getelementptr inbounds %struct.pt_regs, ptr %3, i32 0, i32 16, !dbg !5541
  %4 = load i64, ptr %ip, align 8, !dbg !5542
  %add = add i64 %4, %conv, !dbg !5542
  store i64 %add, ptr %ip, align 8, !dbg !5542
  store i64 %add, ptr %new_ip, align 8, !dbg !5536
  call void @llvm.lifetime.start.p0(i64 8, ptr %offs) #13, !dbg !5543
  call void @llvm.dbg.declare(metadata ptr %offs, metadata !5532, metadata !DIExpression()), !dbg !5544
  %5 = load ptr, ptr %auprobe.addr, align 8, !dbg !5545
  %6 = getelementptr inbounds %struct.arch_uprobe, ptr %5, i32 0, i32 2, !dbg !5546
  %offs1 = getelementptr inbounds %struct.anon.18, ptr %6, i32 0, i32 0, !dbg !5547
  %7 = load i32, ptr %offs1, align 8, !dbg !5547
  %conv2 = sext i32 %7 to i64, !dbg !5548
  store i64 %conv2, ptr %offs, align 8, !dbg !5544
  %8 = load ptr, ptr %auprobe.addr, align 8, !dbg !5549
  %call = call zeroext i1 @branch_is_call(ptr noundef %8) #14, !dbg !5551
  br i1 %call, label %if.then, label %if.else, !dbg !5552

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %regs.addr, align 8, !dbg !5553
  %10 = load i64, ptr %new_ip, align 8, !dbg !5556
  %call3 = call i32 @emulate_push_stack(ptr noundef %9, i64 noundef %10) #14, !dbg !5557
  %tobool = icmp ne i32 %call3, 0, !dbg !5557
  br i1 %tobool, label %if.then4, label %if.end, !dbg !5558

if.then4:                                         ; preds = %if.then
  store i1 false, ptr %retval, align 1, !dbg !5559
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5559

if.end:                                           ; preds = %if.then
  br label %if.end8, !dbg !5560

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %auprobe.addr, align 8, !dbg !5561
  %12 = load ptr, ptr %regs.addr, align 8, !dbg !5563
  %call5 = call zeroext i1 @check_jmp_cond(ptr noundef %11, ptr noundef %12) #14, !dbg !5564
  br i1 %call5, label %if.end7, label %if.then6, !dbg !5565

if.then6:                                         ; preds = %if.else
  store i64 0, ptr %offs, align 8, !dbg !5566
  br label %if.end7, !dbg !5568

if.end7:                                          ; preds = %if.then6, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end
  %13 = load i64, ptr %new_ip, align 8, !dbg !5569
  %14 = load i64, ptr %offs, align 8, !dbg !5570
  %add9 = add i64 %13, %14, !dbg !5571
  %15 = load ptr, ptr %regs.addr, align 8, !dbg !5572
  %ip10 = getelementptr inbounds %struct.pt_regs, ptr %15, i32 0, i32 16, !dbg !5573
  store i64 %add9, ptr %ip10, align 8, !dbg !5574
  store i1 true, ptr %retval, align 1, !dbg !5575
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5575

cleanup:                                          ; preds = %if.end8, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %offs) #13, !dbg !5576
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_ip) #13, !dbg !5576
  %16 = load i1, ptr %retval, align 1, !dbg !5576
  ret i1 %16, !dbg !5576
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @branch_post_xol_op(ptr noundef %auprobe, ptr noundef %regs) #0 align 16 !dbg !5577 {
entry:
  %auprobe.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  store ptr %auprobe, ptr %auprobe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %auprobe.addr, metadata !5579, metadata !DIExpression()), !dbg !5581
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5580, metadata !DIExpression()), !dbg !5582
  br label %do.body, !dbg !5583

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %auprobe.addr, align 8, !dbg !5584
  %call = call zeroext i1 @branch_is_call(ptr noundef %0) #14, !dbg !5584
  %lnot = xor i1 %call, true, !dbg !5584
  %lnot1 = xor i1 %lnot, true, !dbg !5584
  %lnot2 = xor i1 %lnot1, true, !dbg !5584
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5584
  %conv = sext i32 %lnot.ext to i64, !dbg !5584
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5584
  %tobool = icmp ne i64 %expval, 0, !dbg !5584
  br i1 %tobool, label %if.then, label %if.end, !dbg !5587

if.then:                                          ; preds = %do.body
  br label %do.body3, !dbg !5584

do.body3:                                         ; preds = %if.then
  br label %do.body4, !dbg !5588

do.body4:                                         ; preds = %do.body3
  br label %do.end, !dbg !5590

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5588

do.body5:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 675, i32 0, i64 12) #13, !dbg !5592, !srcloc !5594
  br label %do.end6, !dbg !5592

do.end6:                                          ; preds = %do.body5
  unreachable, !dbg !5588

do.end7:                                          ; No predecessors!
  br label %if.end, !dbg !5588

if.end:                                           ; preds = %do.end7, %do.body
  br label %do.end8, !dbg !5587

do.end8:                                          ; preds = %if.end
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !5595
  %call9 = call i32 @sizeof_long(ptr noundef %1) #14, !dbg !5596
  %conv10 = sext i32 %call9 to i64, !dbg !5596
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5597
  %sp = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 19, !dbg !5598
  %3 = load i64, ptr %sp, align 8, !dbg !5599
  %add = add i64 %3, %conv10, !dbg !5599
  store i64 %add, ptr %sp, align 8, !dbg !5599
  ret i32 -85, !dbg !5600
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @branch_is_call(ptr noundef %auprobe) #0 align 16 !dbg !5601 {
entry:
  %auprobe.addr = alloca ptr, align 8
  store ptr %auprobe, ptr %auprobe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %auprobe.addr, metadata !5605, metadata !DIExpression()), !dbg !5606
  %0 = load ptr, ptr %auprobe.addr, align 8, !dbg !5607
  %1 = getelementptr inbounds %struct.arch_uprobe, ptr %0, i32 0, i32 2, !dbg !5608
  %opc1 = getelementptr inbounds %struct.anon.18, ptr %1, i32 0, i32 2, !dbg !5609
  %2 = load i8, ptr %opc1, align 1, !dbg !5609
  %conv = zext i8 %2 to i32, !dbg !5607
  %cmp = icmp eq i32 %conv, 232, !dbg !5610
  ret i1 %cmp, !dbg !5611
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @emulate_push_stack(ptr noundef %regs, i64 noundef %val) #0 align 16 !dbg !5612 {
entry:
  %retval = alloca i32, align 4
  %regs.addr = alloca ptr, align 8
  %val.addr = alloca i64, align 8
  %new_sp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5616, metadata !DIExpression()), !dbg !5619
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5617, metadata !DIExpression()), !dbg !5620
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_sp) #13, !dbg !5621
  call void @llvm.dbg.declare(metadata ptr %new_sp, metadata !5618, metadata !DIExpression()), !dbg !5622
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5623
  %sp = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 19, !dbg !5624
  %1 = load i64, ptr %sp, align 8, !dbg !5624
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5625
  %call = call i32 @sizeof_long(ptr noundef %2) #14, !dbg !5626
  %conv = sext i32 %call to i64, !dbg !5626
  %sub = sub i64 %1, %conv, !dbg !5627
  store i64 %sub, ptr %new_sp, align 8, !dbg !5622
  %3 = load i64, ptr %new_sp, align 8, !dbg !5628
  %4 = inttoptr i64 %3 to ptr, !dbg !5630
  %5 = load ptr, ptr %regs.addr, align 8, !dbg !5631
  %call1 = call i32 @sizeof_long(ptr noundef %5) #14, !dbg !5632
  %conv2 = sext i32 %call1 to i64, !dbg !5632
  %call3 = call i64 @copy_to_user(ptr noundef %4, ptr noundef %val.addr, i64 noundef %conv2) #14, !dbg !5633
  %tobool = icmp ne i64 %call3, 0, !dbg !5633
  br i1 %tobool, label %if.then, label %if.end, !dbg !5634

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !5635
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5635

if.end:                                           ; preds = %entry
  %6 = load i64, ptr %new_sp, align 8, !dbg !5636
  %7 = load ptr, ptr %regs.addr, align 8, !dbg !5637
  %sp4 = getelementptr inbounds %struct.pt_regs, ptr %7, i32 0, i32 19, !dbg !5638
  store i64 %6, ptr %sp4, align 8, !dbg !5639
  store i32 0, ptr %retval, align 4, !dbg !5640
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5640

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_sp) #13, !dbg !5641
  %8 = load i32, ptr %retval, align 4, !dbg !5641
  ret i32 %8, !dbg !5641
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_jmp_cond(ptr noundef %auprobe, ptr noundef %regs) #0 align 16 !dbg !5642 {
entry:
  %retval = alloca i1, align 1
  %auprobe.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %auprobe, ptr %auprobe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %auprobe.addr, metadata !5644, metadata !DIExpression()), !dbg !5647
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5645, metadata !DIExpression()), !dbg !5648
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !5649
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5646, metadata !DIExpression()), !dbg !5650
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5651
  %flags1 = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 18, !dbg !5652
  %1 = load i64, ptr %flags1, align 8, !dbg !5652
  store i64 %1, ptr %flags, align 8, !dbg !5650
  %2 = load ptr, ptr %auprobe.addr, align 8, !dbg !5653
  %3 = getelementptr inbounds %struct.arch_uprobe, ptr %2, i32 0, i32 2, !dbg !5654
  %opc1 = getelementptr inbounds %struct.anon.18, ptr %3, i32 0, i32 2, !dbg !5655
  %4 = load i8, ptr %opc1, align 1, !dbg !5655
  %conv = zext i8 %4 to i32, !dbg !5653
  switch i32 %conv, label %sw.default [
    i32 112, label %sw.bb
    i32 113, label %sw.bb4
    i32 114, label %sw.bb13
    i32 115, label %sw.bb22
    i32 116, label %sw.bb31
    i32 117, label %sw.bb40
    i32 120, label %sw.bb49
    i32 121, label %sw.bb58
    i32 122, label %sw.bb67
    i32 123, label %sw.bb76
    i32 118, label %sw.bb85
    i32 119, label %sw.bb96
    i32 124, label %sw.bb110
    i32 125, label %sw.bb127
    i32 126, label %sw.bb144
    i32 127, label %sw.bb166
  ], !dbg !5656

sw.bb:                                            ; preds = %entry
  %5 = load i64, ptr %flags, align 8, !dbg !5657
  %and = and i64 %5, 2048, !dbg !5657
  %tobool = icmp ne i64 %and, 0, !dbg !5657
  %lnot = xor i1 %tobool, true, !dbg !5657
  %lnot2 = xor i1 %lnot, true, !dbg !5657
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5657
  %cmp = icmp ne i32 %lnot.ext, 0, !dbg !5657
  store i1 %cmp, ptr %retval, align 1, !dbg !5657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5657

sw.bb4:                                           ; preds = %entry
  %6 = load i64, ptr %flags, align 8, !dbg !5657
  %and5 = and i64 %6, 2048, !dbg !5657
  %tobool6 = icmp ne i64 %and5, 0, !dbg !5657
  %lnot7 = xor i1 %tobool6, true, !dbg !5657
  %lnot9 = xor i1 %lnot7, true, !dbg !5657
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !5657
  %cmp11 = icmp eq i32 %lnot.ext10, 0, !dbg !5657
  store i1 %cmp11, ptr %retval, align 1, !dbg !5657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5657

sw.bb13:                                          ; preds = %entry
  %7 = load i64, ptr %flags, align 8, !dbg !5657
  %and14 = and i64 %7, 1, !dbg !5657
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5657
  %lnot16 = xor i1 %tobool15, true, !dbg !5657
  %lnot18 = xor i1 %lnot16, true, !dbg !5657
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !5657
  %cmp20 = icmp ne i32 %lnot.ext19, 0, !dbg !5657
  store i1 %cmp20, ptr %retval, align 1, !dbg !5657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5657

sw.bb22:                                          ; preds = %entry
  %8 = load i64, ptr %flags, align 8, !dbg !5657
  %and23 = and i64 %8, 1, !dbg !5657
  %tobool24 = icmp ne i64 %and23, 0, !dbg !5657
  %lnot25 = xor i1 %tobool24, true, !dbg !5657
  %lnot27 = xor i1 %lnot25, true, !dbg !5657
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !5657
  %cmp29 = icmp eq i32 %lnot.ext28, 0, !dbg !5657
  store i1 %cmp29, ptr %retval, align 1, !dbg !5657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5657

sw.bb31:                                          ; preds = %entry
  %9 = load i64, ptr %flags, align 8, !dbg !5657
  %and32 = and i64 %9, 64, !dbg !5657
  %tobool33 = icmp ne i64 %and32, 0, !dbg !5657
  %lnot34 = xor i1 %tobool33, true, !dbg !5657
  %lnot36 = xor i1 %lnot34, true, !dbg !5657
  %lnot.ext37 = zext i1 %lnot36 to i32, !dbg !5657
  %cmp38 = icmp ne i32 %lnot.ext37, 0, !dbg !5657
  store i1 %cmp38, ptr %retval, align 1, !dbg !5657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5657

sw.bb40:                                          ; preds = %entry
  %10 = load i64, ptr %flags, align 8, !dbg !5657
  %and41 = and i64 %10, 64, !dbg !5657
  %tobool42 = icmp ne i64 %and41, 0, !dbg !5657
  %lnot43 = xor i1 %tobool42, true, !dbg !5657
  %lnot45 = xor i1 %lnot43, true, !dbg !5657
  %lnot.ext46 = zext i1 %lnot45 to i32, !dbg !5657
  %cmp47 = icmp eq i32 %lnot.ext46, 0, !dbg !5657
  store i1 %cmp47, ptr %retval, align 1, !dbg !5657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5657

sw.bb49:                                          ; preds = %entry
  %11 = load i64, ptr %flags, align 8, !dbg !5657
  %and50 = and i64 %11, 128, !dbg !5657
  %tobool51 = icmp ne i64 %and50, 0, !dbg !5657
  %lnot52 = xor i1 %tobool51, true, !dbg !5657
  %lnot54 = xor i1 %lnot52, true, !dbg !5657
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !5657
  %cmp56 = icmp ne i32 %lnot.ext55, 0, !dbg !5657
  store i1 %cmp56, ptr %retval, align 1, !dbg !5657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5657

sw.bb58:                                          ; preds = %entry
  %12 = load i64, ptr %flags, align 8, !dbg !5657
  %and59 = and i64 %12, 128, !dbg !5657
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5657
  %lnot61 = xor i1 %tobool60, true, !dbg !5657
  %lnot63 = xor i1 %lnot61, true, !dbg !5657
  %lnot.ext64 = zext i1 %lnot63 to i32, !dbg !5657
  %cmp65 = icmp eq i32 %lnot.ext64, 0, !dbg !5657
  store i1 %cmp65, ptr %retval, align 1, !dbg !5657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5657

sw.bb67:                                          ; preds = %entry
  %13 = load i64, ptr %flags, align 8, !dbg !5657
  %and68 = and i64 %13, 4, !dbg !5657
  %tobool69 = icmp ne i64 %and68, 0, !dbg !5657
  %lnot70 = xor i1 %tobool69, true, !dbg !5657
  %lnot72 = xor i1 %lnot70, true, !dbg !5657
  %lnot.ext73 = zext i1 %lnot72 to i32, !dbg !5657
  %cmp74 = icmp ne i32 %lnot.ext73, 0, !dbg !5657
  store i1 %cmp74, ptr %retval, align 1, !dbg !5657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5657

sw.bb76:                                          ; preds = %entry
  %14 = load i64, ptr %flags, align 8, !dbg !5657
  %and77 = and i64 %14, 4, !dbg !5657
  %tobool78 = icmp ne i64 %and77, 0, !dbg !5657
  %lnot79 = xor i1 %tobool78, true, !dbg !5657
  %lnot81 = xor i1 %lnot79, true, !dbg !5657
  %lnot.ext82 = zext i1 %lnot81 to i32, !dbg !5657
  %cmp83 = icmp eq i32 %lnot.ext82, 0, !dbg !5657
  store i1 %cmp83, ptr %retval, align 1, !dbg !5657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5657

sw.bb85:                                          ; preds = %entry
  %15 = load i64, ptr %flags, align 8, !dbg !5657
  %and86 = and i64 %15, 1, !dbg !5657
  %tobool87 = icmp ne i64 %and86, 0, !dbg !5657
  br i1 %tobool87, label %lor.end, label %lor.rhs, !dbg !5657

lor.rhs:                                          ; preds = %sw.bb85
  %16 = load i64, ptr %flags, align 8, !dbg !5657
  %and88 = and i64 %16, 64, !dbg !5657
  %tobool89 = icmp ne i64 %and88, 0, !dbg !5657
  %lnot90 = xor i1 %tobool89, true, !dbg !5657
  %lnot92 = xor i1 %lnot90, true, !dbg !5657
  br label %lor.end, !dbg !5657

lor.end:                                          ; preds = %lor.rhs, %sw.bb85
  %17 = phi i1 [ true, %sw.bb85 ], [ %lnot92, %lor.rhs ]
  %lor.ext = zext i1 %17 to i32, !dbg !5657
  %cmp94 = icmp ne i32 %lor.ext, 0, !dbg !5657
  store i1 %cmp94, ptr %retval, align 1, !dbg !5657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5657

sw.bb96:                                          ; preds = %entry
  %18 = load i64, ptr %flags, align 8, !dbg !5657
  %and97 = and i64 %18, 1, !dbg !5657
  %tobool98 = icmp ne i64 %and97, 0, !dbg !5657
  br i1 %tobool98, label %lor.end106, label %lor.rhs99, !dbg !5657

lor.rhs99:                                        ; preds = %sw.bb96
  %19 = load i64, ptr %flags, align 8, !dbg !5657
  %and100 = and i64 %19, 64, !dbg !5657
  %tobool101 = icmp ne i64 %and100, 0, !dbg !5657
  %lnot102 = xor i1 %tobool101, true, !dbg !5657
  %lnot104 = xor i1 %lnot102, true, !dbg !5657
  br label %lor.end106, !dbg !5657

lor.end106:                                       ; preds = %lor.rhs99, %sw.bb96
  %20 = phi i1 [ true, %sw.bb96 ], [ %lnot104, %lor.rhs99 ]
  %lor.ext107 = zext i1 %20 to i32, !dbg !5657
  %cmp108 = icmp eq i32 %lor.ext107, 0, !dbg !5657
  store i1 %cmp108, ptr %retval, align 1, !dbg !5657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5657

sw.bb110:                                         ; preds = %entry
  %21 = load i64, ptr %flags, align 8, !dbg !5657
  %and111 = and i64 %21, 128, !dbg !5657
  %tobool112 = icmp ne i64 %and111, 0, !dbg !5657
  %lnot113 = xor i1 %tobool112, true, !dbg !5657
  %lnot115 = xor i1 %lnot113, true, !dbg !5657
  %lnot.ext116 = zext i1 %lnot115 to i32, !dbg !5657
  %22 = load i64, ptr %flags, align 8, !dbg !5657
  %and117 = and i64 %22, 2048, !dbg !5657
  %tobool118 = icmp ne i64 %and117, 0, !dbg !5657
  %lnot119 = xor i1 %tobool118, true, !dbg !5657
  %lnot121 = xor i1 %lnot119, true, !dbg !5657
  %lnot.ext122 = zext i1 %lnot121 to i32, !dbg !5657
  %cmp123 = icmp ne i32 %lnot.ext116, %lnot.ext122, !dbg !5657
  %conv124 = zext i1 %cmp123 to i32, !dbg !5657
  %cmp125 = icmp ne i32 %conv124, 0, !dbg !5657
  store i1 %cmp125, ptr %retval, align 1, !dbg !5657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5657

sw.bb127:                                         ; preds = %entry
  %23 = load i64, ptr %flags, align 8, !dbg !5657
  %and128 = and i64 %23, 128, !dbg !5657
  %tobool129 = icmp ne i64 %and128, 0, !dbg !5657
  %lnot130 = xor i1 %tobool129, true, !dbg !5657
  %lnot132 = xor i1 %lnot130, true, !dbg !5657
  %lnot.ext133 = zext i1 %lnot132 to i32, !dbg !5657
  %24 = load i64, ptr %flags, align 8, !dbg !5657
  %and134 = and i64 %24, 2048, !dbg !5657
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5657
  %lnot136 = xor i1 %tobool135, true, !dbg !5657
  %lnot138 = xor i1 %lnot136, true, !dbg !5657
  %lnot.ext139 = zext i1 %lnot138 to i32, !dbg !5657
  %cmp140 = icmp ne i32 %lnot.ext133, %lnot.ext139, !dbg !5657
  %conv141 = zext i1 %cmp140 to i32, !dbg !5657
  %cmp142 = icmp eq i32 %conv141, 0, !dbg !5657
  store i1 %cmp142, ptr %retval, align 1, !dbg !5657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5657

sw.bb144:                                         ; preds = %entry
  %25 = load i64, ptr %flags, align 8, !dbg !5657
  %and145 = and i64 %25, 64, !dbg !5657
  %tobool146 = icmp ne i64 %and145, 0, !dbg !5657
  br i1 %tobool146, label %lor.end162, label %lor.rhs147, !dbg !5657

lor.rhs147:                                       ; preds = %sw.bb144
  %26 = load i64, ptr %flags, align 8, !dbg !5657
  %and148 = and i64 %26, 128, !dbg !5657
  %tobool149 = icmp ne i64 %and148, 0, !dbg !5657
  %lnot150 = xor i1 %tobool149, true, !dbg !5657
  %lnot152 = xor i1 %lnot150, true, !dbg !5657
  %lnot.ext153 = zext i1 %lnot152 to i32, !dbg !5657
  %27 = load i64, ptr %flags, align 8, !dbg !5657
  %and154 = and i64 %27, 2048, !dbg !5657
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5657
  %lnot156 = xor i1 %tobool155, true, !dbg !5657
  %lnot158 = xor i1 %lnot156, true, !dbg !5657
  %lnot.ext159 = zext i1 %lnot158 to i32, !dbg !5657
  %cmp160 = icmp ne i32 %lnot.ext153, %lnot.ext159, !dbg !5657
  br label %lor.end162, !dbg !5657

lor.end162:                                       ; preds = %lor.rhs147, %sw.bb144
  %28 = phi i1 [ true, %sw.bb144 ], [ %cmp160, %lor.rhs147 ]
  %lor.ext163 = zext i1 %28 to i32, !dbg !5657
  %cmp164 = icmp ne i32 %lor.ext163, 0, !dbg !5657
  store i1 %cmp164, ptr %retval, align 1, !dbg !5657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5657

sw.bb166:                                         ; preds = %entry
  %29 = load i64, ptr %flags, align 8, !dbg !5657
  %and167 = and i64 %29, 64, !dbg !5657
  %tobool168 = icmp ne i64 %and167, 0, !dbg !5657
  br i1 %tobool168, label %lor.end184, label %lor.rhs169, !dbg !5657

lor.rhs169:                                       ; preds = %sw.bb166
  %30 = load i64, ptr %flags, align 8, !dbg !5657
  %and170 = and i64 %30, 128, !dbg !5657
  %tobool171 = icmp ne i64 %and170, 0, !dbg !5657
  %lnot172 = xor i1 %tobool171, true, !dbg !5657
  %lnot174 = xor i1 %lnot172, true, !dbg !5657
  %lnot.ext175 = zext i1 %lnot174 to i32, !dbg !5657
  %31 = load i64, ptr %flags, align 8, !dbg !5657
  %and176 = and i64 %31, 2048, !dbg !5657
  %tobool177 = icmp ne i64 %and176, 0, !dbg !5657
  %lnot178 = xor i1 %tobool177, true, !dbg !5657
  %lnot180 = xor i1 %lnot178, true, !dbg !5657
  %lnot.ext181 = zext i1 %lnot180 to i32, !dbg !5657
  %cmp182 = icmp ne i32 %lnot.ext175, %lnot.ext181, !dbg !5657
  br label %lor.end184, !dbg !5657

lor.end184:                                       ; preds = %lor.rhs169, %sw.bb166
  %32 = phi i1 [ true, %sw.bb166 ], [ %cmp182, %lor.rhs169 ]
  %lor.ext185 = zext i1 %32 to i32, !dbg !5657
  %cmp186 = icmp eq i32 %lor.ext185, 0, !dbg !5657
  store i1 %cmp186, ptr %retval, align 1, !dbg !5657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5657

sw.default:                                       ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !5659
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5659

cleanup:                                          ; preds = %sw.default, %lor.end184, %lor.end162, %sw.bb127, %sw.bb110, %lor.end106, %lor.end, %sw.bb76, %sw.bb67, %sw.bb58, %sw.bb49, %sw.bb40, %sw.bb31, %sw.bb22, %sw.bb13, %sw.bb4, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !5660
  %33 = load i1, ptr %retval, align 1, !dbg !5660
  ret i1 %33, !dbg !5660
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @push_emulate_op(ptr noundef %auprobe, ptr noundef %regs) #0 align 16 !dbg !5661 {
entry:
  %retval = alloca i1, align 1
  %auprobe.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %src_ptr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %auprobe, ptr %auprobe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %auprobe.addr, metadata !5663, metadata !DIExpression()), !dbg !5666
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5664, metadata !DIExpression()), !dbg !5667
  call void @llvm.lifetime.start.p0(i64 8, ptr %src_ptr) #13, !dbg !5668
  call void @llvm.dbg.declare(metadata ptr %src_ptr, metadata !5665, metadata !DIExpression()), !dbg !5669
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5670
  %1 = load ptr, ptr %auprobe.addr, align 8, !dbg !5671
  %2 = getelementptr inbounds %struct.arch_uprobe, ptr %1, i32 0, i32 2, !dbg !5672
  %reg_offset = getelementptr inbounds %struct.anon.20, ptr %2, i32 0, i32 0, !dbg !5673
  %3 = load i8, ptr %reg_offset, align 8, !dbg !5673
  %conv = zext i8 %3 to i32, !dbg !5671
  %idx.ext = sext i32 %conv to i64, !dbg !5674
  %add.ptr = getelementptr i8, ptr %0, i64 %idx.ext, !dbg !5674
  store ptr %add.ptr, ptr %src_ptr, align 8, !dbg !5669
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5675
  %5 = load ptr, ptr %src_ptr, align 8, !dbg !5677
  %6 = load i64, ptr %5, align 8, !dbg !5678
  %call = call i32 @emulate_push_stack(ptr noundef %4, i64 noundef %6) #14, !dbg !5679
  %tobool = icmp ne i32 %call, 0, !dbg !5679
  br i1 %tobool, label %if.then, label %if.end, !dbg !5680

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5681
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5681

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %auprobe.addr, align 8, !dbg !5682
  %8 = getelementptr inbounds %struct.arch_uprobe, ptr %7, i32 0, i32 2, !dbg !5683
  %ilen = getelementptr inbounds %struct.anon.20, ptr %8, i32 0, i32 1, !dbg !5684
  %9 = load i8, ptr %ilen, align 1, !dbg !5684
  %conv1 = zext i8 %9 to i64, !dbg !5682
  %10 = load ptr, ptr %regs.addr, align 8, !dbg !5685
  %ip = getelementptr inbounds %struct.pt_regs, ptr %10, i32 0, i32 16, !dbg !5686
  %11 = load i64, ptr %ip, align 8, !dbg !5687
  %add = add i64 %11, %conv1, !dbg !5687
  store i64 %add, ptr %ip, align 8, !dbg !5687
  store i1 true, ptr %retval, align 1, !dbg !5688
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5688

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %src_ptr) #13, !dbg !5689
  %12 = load i1, ptr %retval, align 1, !dbg !5689
  ret i1 %12, !dbg !5689
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5690 dso_local i32 @insn_rip_relative(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @default_pre_xol_op(ptr noundef %auprobe, ptr noundef %regs) #0 align 16 !dbg !5691 {
entry:
  %auprobe.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  store ptr %auprobe, ptr %auprobe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %auprobe.addr, metadata !5693, metadata !DIExpression()), !dbg !5695
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5694, metadata !DIExpression()), !dbg !5696
  %0 = load ptr, ptr %auprobe.addr, align 8, !dbg !5697
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !5698
  call void @riprel_pre_xol(ptr noundef %0, ptr noundef %1) #14, !dbg !5699
  ret i32 0, !dbg !5700
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @default_post_xol_op(ptr noundef %auprobe, ptr noundef %regs) #0 align 16 !dbg !5701 {
entry:
  %retval = alloca i32, align 4
  %auprobe.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %utask = alloca ptr, align 8
  %correction = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %auprobe, ptr %auprobe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %auprobe.addr, metadata !5703, metadata !DIExpression()), !dbg !5709
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5704, metadata !DIExpression()), !dbg !5710
  call void @llvm.lifetime.start.p0(i64 8, ptr %utask) #13, !dbg !5711
  call void @llvm.dbg.declare(metadata ptr %utask, metadata !5705, metadata !DIExpression()), !dbg !5712
  %call = call ptr @get_current() #14, !dbg !5713
  %utask1 = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 177, !dbg !5714
  %0 = load ptr, ptr %utask1, align 16, !dbg !5714
  store ptr %0, ptr %utask, align 8, !dbg !5712
  %1 = load ptr, ptr %auprobe.addr, align 8, !dbg !5715
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5716
  call void @riprel_post_xol(ptr noundef %1, ptr noundef %2) #14, !dbg !5717
  %3 = load ptr, ptr %auprobe.addr, align 8, !dbg !5718
  %4 = getelementptr inbounds %struct.arch_uprobe, ptr %3, i32 0, i32 2, !dbg !5719
  %fixups = getelementptr inbounds %struct.anon.19, ptr %4, i32 0, i32 0, !dbg !5720
  %5 = load i8, ptr %fixups, align 8, !dbg !5720
  %conv = zext i8 %5 to i32, !dbg !5718
  %and = and i32 %conv, 1, !dbg !5721
  %tobool = icmp ne i32 %and, 0, !dbg !5721
  br i1 %tobool, label %if.then, label %if.else, !dbg !5722

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %correction) #13, !dbg !5723
  call void @llvm.dbg.declare(metadata ptr %correction, metadata !5706, metadata !DIExpression()), !dbg !5724
  %6 = load ptr, ptr %utask, align 8, !dbg !5725
  %7 = getelementptr inbounds %struct.uprobe_task, ptr %6, i32 0, i32 1, !dbg !5726
  %vaddr = getelementptr inbounds %struct.anon.22, ptr %7, i32 0, i32 1, !dbg !5726
  %8 = load i64, ptr %vaddr, align 8, !dbg !5726
  %9 = load ptr, ptr %utask, align 8, !dbg !5727
  %xol_vaddr = getelementptr inbounds %struct.uprobe_task, ptr %9, i32 0, i32 3, !dbg !5728
  %10 = load i64, ptr %xol_vaddr, align 8, !dbg !5728
  %sub = sub i64 %8, %10, !dbg !5729
  store i64 %sub, ptr %correction, align 8, !dbg !5724
  %11 = load i64, ptr %correction, align 8, !dbg !5730
  %12 = load ptr, ptr %regs.addr, align 8, !dbg !5731
  %ip = getelementptr inbounds %struct.pt_regs, ptr %12, i32 0, i32 16, !dbg !5732
  %13 = load i64, ptr %ip, align 8, !dbg !5733
  %add = add i64 %13, %11, !dbg !5733
  store i64 %add, ptr %ip, align 8, !dbg !5733
  call void @llvm.lifetime.end.p0(i64 8, ptr %correction) #13, !dbg !5734
  br label %if.end17, !dbg !5735

if.else:                                          ; preds = %entry
  %14 = load ptr, ptr %auprobe.addr, align 8, !dbg !5736
  %15 = getelementptr inbounds %struct.arch_uprobe, ptr %14, i32 0, i32 2, !dbg !5738
  %fixups2 = getelementptr inbounds %struct.anon.19, ptr %15, i32 0, i32 0, !dbg !5739
  %16 = load i8, ptr %fixups2, align 8, !dbg !5739
  %conv3 = zext i8 %16 to i32, !dbg !5736
  %and4 = and i32 %conv3, 2, !dbg !5740
  %tobool5 = icmp ne i32 %and4, 0, !dbg !5740
  br i1 %tobool5, label %if.then6, label %if.end16, !dbg !5741

if.then6:                                         ; preds = %if.else
  %17 = load ptr, ptr %regs.addr, align 8, !dbg !5742
  %call7 = call i32 @sizeof_long(ptr noundef %17) #14, !dbg !5744
  %conv8 = sext i32 %call7 to i64, !dbg !5744
  %18 = load ptr, ptr %regs.addr, align 8, !dbg !5745
  %sp = getelementptr inbounds %struct.pt_regs, ptr %18, i32 0, i32 19, !dbg !5746
  %19 = load i64, ptr %sp, align 8, !dbg !5747
  %add9 = add i64 %19, %conv8, !dbg !5747
  store i64 %add9, ptr %sp, align 8, !dbg !5747
  %20 = load ptr, ptr %regs.addr, align 8, !dbg !5748
  %21 = load ptr, ptr %utask, align 8, !dbg !5750
  %22 = getelementptr inbounds %struct.uprobe_task, ptr %21, i32 0, i32 1, !dbg !5751
  %vaddr10 = getelementptr inbounds %struct.anon.22, ptr %22, i32 0, i32 1, !dbg !5751
  %23 = load i64, ptr %vaddr10, align 8, !dbg !5751
  %24 = load ptr, ptr %auprobe.addr, align 8, !dbg !5752
  %25 = getelementptr inbounds %struct.arch_uprobe, ptr %24, i32 0, i32 2, !dbg !5753
  %ilen = getelementptr inbounds %struct.anon.19, ptr %25, i32 0, i32 1, !dbg !5754
  %26 = load i8, ptr %ilen, align 1, !dbg !5754
  %conv11 = zext i8 %26 to i64, !dbg !5752
  %add12 = add i64 %23, %conv11, !dbg !5755
  %call13 = call i32 @emulate_push_stack(ptr noundef %20, i64 noundef %add12) #14, !dbg !5756
  %tobool14 = icmp ne i32 %call13, 0, !dbg !5756
  br i1 %tobool14, label %if.then15, label %if.end, !dbg !5757

if.then15:                                        ; preds = %if.then6
  store i32 -85, ptr %retval, align 4, !dbg !5758
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5758

if.end:                                           ; preds = %if.then6
  br label %if.end16, !dbg !5759

if.end16:                                         ; preds = %if.end, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then
  %27 = load ptr, ptr %auprobe.addr, align 8, !dbg !5760
  %28 = getelementptr inbounds %struct.arch_uprobe, ptr %27, i32 0, i32 2, !dbg !5762
  %fixups18 = getelementptr inbounds %struct.anon.19, ptr %28, i32 0, i32 0, !dbg !5763
  %29 = load i8, ptr %fixups18, align 8, !dbg !5763
  %conv19 = zext i8 %29 to i32, !dbg !5760
  %and20 = and i32 %conv19, 4, !dbg !5764
  %tobool21 = icmp ne i32 %and20, 0, !dbg !5764
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !5765

if.then22:                                        ; preds = %if.end17
  %30 = load ptr, ptr %utask, align 8, !dbg !5766
  %31 = getelementptr inbounds %struct.uprobe_task, ptr %30, i32 0, i32 1, !dbg !5767
  %autask = getelementptr inbounds %struct.anon.22, ptr %31, i32 0, i32 0, !dbg !5767
  %saved_tf = getelementptr inbounds %struct.arch_uprobe_task, ptr %autask, i32 0, i32 2, !dbg !5768
  store i32 1, ptr %saved_tf, align 4, !dbg !5769
  br label %if.end23, !dbg !5766

if.end23:                                         ; preds = %if.then22, %if.end17
  store i32 0, ptr %retval, align 4, !dbg !5770
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5770

cleanup:                                          ; preds = %if.end23, %if.then15
  call void @llvm.lifetime.end.p0(i64 8, ptr %utask) #13, !dbg !5771
  %32 = load i32, ptr %retval, align 4, !dbg !5771
  ret i32 %32, !dbg !5771
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @default_abort_op(ptr noundef %auprobe, ptr noundef %regs) #0 align 16 !dbg !5772 {
entry:
  %auprobe.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  store ptr %auprobe, ptr %auprobe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %auprobe.addr, metadata !5774, metadata !DIExpression()), !dbg !5776
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5775, metadata !DIExpression()), !dbg !5777
  %0 = load ptr, ptr %auprobe.addr, align 8, !dbg !5778
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !5779
  call void @riprel_post_xol(ptr noundef %0, ptr noundef %1) #14, !dbg !5780
  ret void, !dbg !5781
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @riprel_pre_xol(ptr noundef %auprobe, ptr noundef %regs) #0 align 16 !dbg !5782 {
entry:
  %auprobe.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %utask = alloca ptr, align 8
  %sr = alloca ptr, align 8
  store ptr %auprobe, ptr %auprobe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %auprobe.addr, metadata !5784, metadata !DIExpression()), !dbg !5790
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5785, metadata !DIExpression()), !dbg !5791
  %0 = load ptr, ptr %auprobe.addr, align 8, !dbg !5792
  %1 = getelementptr inbounds %struct.arch_uprobe, ptr %0, i32 0, i32 2, !dbg !5793
  %fixups = getelementptr inbounds %struct.anon.19, ptr %1, i32 0, i32 0, !dbg !5794
  %2 = load i8, ptr %fixups, align 8, !dbg !5794
  %conv = zext i8 %2 to i32, !dbg !5792
  %and = and i32 %conv, 56, !dbg !5795
  %tobool = icmp ne i32 %and, 0, !dbg !5795
  br i1 %tobool, label %if.then, label %if.end, !dbg !5796

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %utask) #13, !dbg !5797
  call void @llvm.dbg.declare(metadata ptr %utask, metadata !5786, metadata !DIExpression()), !dbg !5798
  %call = call ptr @get_current() #14, !dbg !5799
  %utask1 = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 177, !dbg !5800
  %3 = load ptr, ptr %utask1, align 16, !dbg !5800
  store ptr %3, ptr %utask, align 8, !dbg !5798
  call void @llvm.lifetime.start.p0(i64 8, ptr %sr) #13, !dbg !5801
  call void @llvm.dbg.declare(metadata ptr %sr, metadata !5789, metadata !DIExpression()), !dbg !5802
  %4 = load ptr, ptr %auprobe.addr, align 8, !dbg !5803
  %5 = load ptr, ptr %regs.addr, align 8, !dbg !5804
  %call2 = call ptr @scratch_reg(ptr noundef %4, ptr noundef %5) #14, !dbg !5805
  store ptr %call2, ptr %sr, align 8, !dbg !5802
  %6 = load ptr, ptr %sr, align 8, !dbg !5806
  %7 = load i64, ptr %6, align 8, !dbg !5807
  %8 = load ptr, ptr %utask, align 8, !dbg !5808
  %9 = getelementptr inbounds %struct.uprobe_task, ptr %8, i32 0, i32 1, !dbg !5809
  %autask = getelementptr inbounds %struct.anon.22, ptr %9, i32 0, i32 0, !dbg !5809
  %saved_scratch_register = getelementptr inbounds %struct.arch_uprobe_task, ptr %autask, i32 0, i32 0, !dbg !5810
  store i64 %7, ptr %saved_scratch_register, align 8, !dbg !5811
  %10 = load ptr, ptr %utask, align 8, !dbg !5812
  %11 = getelementptr inbounds %struct.uprobe_task, ptr %10, i32 0, i32 1, !dbg !5813
  %vaddr = getelementptr inbounds %struct.anon.22, ptr %11, i32 0, i32 1, !dbg !5813
  %12 = load i64, ptr %vaddr, align 8, !dbg !5813
  %13 = load ptr, ptr %auprobe.addr, align 8, !dbg !5814
  %14 = getelementptr inbounds %struct.arch_uprobe, ptr %13, i32 0, i32 2, !dbg !5815
  %ilen = getelementptr inbounds %struct.anon.19, ptr %14, i32 0, i32 1, !dbg !5816
  %15 = load i8, ptr %ilen, align 1, !dbg !5816
  %conv3 = zext i8 %15 to i64, !dbg !5814
  %add = add i64 %12, %conv3, !dbg !5817
  %16 = load ptr, ptr %sr, align 8, !dbg !5818
  store i64 %add, ptr %16, align 8, !dbg !5819
  call void @llvm.lifetime.end.p0(i64 8, ptr %sr) #13, !dbg !5820
  call void @llvm.lifetime.end.p0(i64 8, ptr %utask) #13, !dbg !5820
  br label %if.end, !dbg !5821

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5822
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @scratch_reg(ptr noundef %auprobe, ptr noundef %regs) #3 align 16 !dbg !5823 {
entry:
  %retval = alloca ptr, align 8
  %auprobe.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  store ptr %auprobe, ptr %auprobe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %auprobe.addr, metadata !5827, metadata !DIExpression()), !dbg !5829
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5828, metadata !DIExpression()), !dbg !5830
  %0 = load ptr, ptr %auprobe.addr, align 8, !dbg !5831
  %1 = getelementptr inbounds %struct.arch_uprobe, ptr %0, i32 0, i32 2, !dbg !5833
  %fixups = getelementptr inbounds %struct.anon.19, ptr %1, i32 0, i32 0, !dbg !5834
  %2 = load i8, ptr %fixups, align 8, !dbg !5834
  %conv = zext i8 %2 to i32, !dbg !5831
  %and = and i32 %conv, 8, !dbg !5835
  %tobool = icmp ne i32 %and, 0, !dbg !5835
  br i1 %tobool, label %if.then, label %if.end, !dbg !5836

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %regs.addr, align 8, !dbg !5837
  %si = getelementptr inbounds %struct.pt_regs, ptr %3, i32 0, i32 13, !dbg !5838
  store ptr %si, ptr %retval, align 8, !dbg !5839
  br label %return, !dbg !5839

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %auprobe.addr, align 8, !dbg !5840
  %5 = getelementptr inbounds %struct.arch_uprobe, ptr %4, i32 0, i32 2, !dbg !5842
  %fixups1 = getelementptr inbounds %struct.anon.19, ptr %5, i32 0, i32 0, !dbg !5843
  %6 = load i8, ptr %fixups1, align 8, !dbg !5843
  %conv2 = zext i8 %6 to i32, !dbg !5840
  %and3 = and i32 %conv2, 16, !dbg !5844
  %tobool4 = icmp ne i32 %and3, 0, !dbg !5844
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5845

if.then5:                                         ; preds = %if.end
  %7 = load ptr, ptr %regs.addr, align 8, !dbg !5846
  %di = getelementptr inbounds %struct.pt_regs, ptr %7, i32 0, i32 14, !dbg !5847
  store ptr %di, ptr %retval, align 8, !dbg !5848
  br label %return, !dbg !5848

if.end6:                                          ; preds = %if.end
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !5849
  %bx = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 5, !dbg !5850
  store ptr %bx, ptr %retval, align 8, !dbg !5851
  br label %return, !dbg !5851

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %9 = load ptr, ptr %retval, align 8, !dbg !5852
  ret ptr %9, !dbg !5852
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @riprel_post_xol(ptr noundef %auprobe, ptr noundef %regs) #0 align 16 !dbg !5853 {
entry:
  %auprobe.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %utask = alloca ptr, align 8
  %sr = alloca ptr, align 8
  store ptr %auprobe, ptr %auprobe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %auprobe.addr, metadata !5855, metadata !DIExpression()), !dbg !5861
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5856, metadata !DIExpression()), !dbg !5862
  %0 = load ptr, ptr %auprobe.addr, align 8, !dbg !5863
  %1 = getelementptr inbounds %struct.arch_uprobe, ptr %0, i32 0, i32 2, !dbg !5864
  %fixups = getelementptr inbounds %struct.anon.19, ptr %1, i32 0, i32 0, !dbg !5865
  %2 = load i8, ptr %fixups, align 8, !dbg !5865
  %conv = zext i8 %2 to i32, !dbg !5863
  %and = and i32 %conv, 56, !dbg !5866
  %tobool = icmp ne i32 %and, 0, !dbg !5866
  br i1 %tobool, label %if.then, label %if.end, !dbg !5867

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %utask) #13, !dbg !5868
  call void @llvm.dbg.declare(metadata ptr %utask, metadata !5857, metadata !DIExpression()), !dbg !5869
  %call = call ptr @get_current() #14, !dbg !5870
  %utask1 = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 177, !dbg !5871
  %3 = load ptr, ptr %utask1, align 16, !dbg !5871
  store ptr %3, ptr %utask, align 8, !dbg !5869
  call void @llvm.lifetime.start.p0(i64 8, ptr %sr) #13, !dbg !5872
  call void @llvm.dbg.declare(metadata ptr %sr, metadata !5860, metadata !DIExpression()), !dbg !5873
  %4 = load ptr, ptr %auprobe.addr, align 8, !dbg !5874
  %5 = load ptr, ptr %regs.addr, align 8, !dbg !5875
  %call2 = call ptr @scratch_reg(ptr noundef %4, ptr noundef %5) #14, !dbg !5876
  store ptr %call2, ptr %sr, align 8, !dbg !5873
  %6 = load ptr, ptr %utask, align 8, !dbg !5877
  %7 = getelementptr inbounds %struct.uprobe_task, ptr %6, i32 0, i32 1, !dbg !5878
  %autask = getelementptr inbounds %struct.anon.22, ptr %7, i32 0, i32 0, !dbg !5878
  %saved_scratch_register = getelementptr inbounds %struct.arch_uprobe_task, ptr %autask, i32 0, i32 0, !dbg !5879
  %8 = load i64, ptr %saved_scratch_register, align 8, !dbg !5879
  %9 = load ptr, ptr %sr, align 8, !dbg !5880
  store i64 %8, ptr %9, align 8, !dbg !5881
  call void @llvm.lifetime.end.p0(i64 8, ptr %sr) #13, !dbg !5882
  call void @llvm.lifetime.end.p0(i64 8, ptr %utask) #13, !dbg !5882
  br label %if.end, !dbg !5883

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5884
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #3 align 16 !dbg !5885 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !5890, metadata !DIExpression()), !dbg !5892
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !5891, metadata !DIExpression()), !dbg !5893
  %0 = load i32, ptr %flag.addr, align 4, !dbg !5894
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5894
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !5894

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ti.addr, align 8, !dbg !5894
  %flags = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 0, !dbg !5894
  %3 = ptrtoint ptr %flags to i64, !dbg !5894
  %cmp = icmp ne i64 %3, 0, !dbg !5894
  %conv = zext i1 %cmp to i32, !dbg !5894
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5894
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !5894

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %ti.addr, align 8, !dbg !5894
  %flags2 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 0, !dbg !5894
  %6 = ptrtoint ptr %flags2 to i64, !dbg !5894
  %cmp3 = icmp ne i64 %6, 0, !dbg !5894
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !5894

land.lhs.true5:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %ti.addr, align 8, !dbg !5894
  %flags6 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 0, !dbg !5894
  %8 = load i64, ptr %flags6, align 8, !dbg !5894
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !5894
  br i1 %9, label %cond.true, label %cond.false, !dbg !5894

cond.true:                                        ; preds = %land.lhs.true5
  %10 = load i32, ptr %flag.addr, align 4, !dbg !5894
  %conv7 = sext i32 %10 to i64, !dbg !5894
  %11 = load ptr, ptr %ti.addr, align 8, !dbg !5894
  %flags8 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 0, !dbg !5894
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv7, ptr noundef %flags8) #14, !dbg !5894
  %conv9 = zext i1 %call to i32, !dbg !5894
  br label %cond.end, !dbg !5894

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %flag.addr, align 4, !dbg !5894
  %conv10 = sext i32 %12 to i64, !dbg !5894
  %13 = load ptr, ptr %ti.addr, align 8, !dbg !5894
  %flags11 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 0, !dbg !5894
  %call12 = call zeroext i1 @_test_bit(i64 noundef %conv10, ptr noundef %flags11) #14, !dbg !5894
  %conv13 = zext i1 %call12 to i32, !dbg !5894
  br label %cond.end, !dbg !5894

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %conv13, %cond.false ], !dbg !5894
  ret i32 %cond, !dbg !5895
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @user_64bit_mode(ptr noundef %regs) #3 align 16 !dbg !5896 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5900, metadata !DIExpression()), !dbg !5901
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5902
  %1 = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 17, !dbg !5903
  %2 = load i16, ptr %1, align 8, !dbg !5903
  %conv = zext i16 %2 to i32, !dbg !5902
  %cmp = icmp eq i32 %conv, 51, !dbg !5904
  ret i1 %cmp, !dbg !5905
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #4 align 16 !dbg !5906 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5910, metadata !DIExpression()), !dbg !5920
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !5911, metadata !DIExpression()), !dbg !5921
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !5912, metadata !DIExpression()), !dbg !5922
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #13, !dbg !5923
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !5913, metadata !DIExpression()), !dbg !5924
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5925
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !5926
  %conv = trunc i64 %1 to i32, !dbg !5926
  store i32 %conv, ptr %sz, align 4, !dbg !5924
  %2 = load i32, ptr %sz, align 4, !dbg !5927
  %cmp = icmp sge i32 %2, 0, !dbg !5927
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5927

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !5927
  %conv2 = sext i32 %3 to i64, !dbg !5927
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !5927
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !5927
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !5929
  %lnot = xor i1 %5, true, !dbg !5927
  %lnot5 = xor i1 %lnot, true, !dbg !5927
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5927
  %conv6 = sext i32 %lnot.ext to i64, !dbg !5927
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !5927
  %tobool = icmp ne i64 %expval, 0, !dbg !5927
  br i1 %tobool, label %if.then, label %if.end12, !dbg !5930

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !5931
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !5934
  br i1 %7, label %if.else, label %if.then7, !dbg !5935

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !5936
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !5937
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #14, !dbg !5938
  br label %if.end11, !dbg !5938

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !5939, !range !4328, !noundef !518
  %tobool8 = trunc i8 %10 to i1, !dbg !5939
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !5941

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #14, !dbg !5942, !srcloc !5943
  br label %if.end, !dbg !5942

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #14, !dbg !5944, !srcloc !5945
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !5946
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5946

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !5947
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5914, metadata !DIExpression()), !dbg !5947
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !5947
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !5947
  %lnot15 = xor i1 %cmp13, true, !dbg !5947
  %lnot17 = xor i1 %lnot15, true, !dbg !5947
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !5947
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !5947
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !5948
  %tobool19 = icmp ne i32 %12, 0, !dbg !5948
  %lnot20 = xor i1 %tobool19, true, !dbg !5948
  %lnot22 = xor i1 %lnot20, true, !dbg !5948
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5948
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !5948
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !5948
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !5948
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !5947

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !5948

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !5949
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5917, metadata !DIExpression()), !dbg !5949
  store i32 2307, ptr %__flags, align 4, !dbg !5949
  br label %do.body28, !dbg !5949

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !5950

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !5950

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !5949

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !5952
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 249, i32 %13, i64 12) #13, !dbg !5952, !srcloc !5954
  br label %do.cond30, !dbg !5952

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !5952

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !5949

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !5955

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !5955

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !5948
  br label %do.cond35, !dbg !5949

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !5949

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !5949

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !5947
  %tobool38 = icmp ne i32 %14, 0, !dbg !5947
  %lnot39 = xor i1 %tobool38, true, !dbg !5947
  %lnot41 = xor i1 %lnot39, true, !dbg !5947
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !5947
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !5947
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !5947
  store i64 %expval44, ptr %tmp, align 8, !dbg !5948
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !5957
  %15 = load i64, ptr %tmp, align 8, !dbg !5947
  %tobool45 = icmp ne i64 %15, 0, !dbg !5957
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !5958

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !5959
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5959

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !5960
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !5961
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !5962, !range !4328, !noundef !518
  %tobool48 = trunc i8 %18 to i1, !dbg !5962
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #14, !dbg !5963
  store i1 true, ptr %retval, align 1, !dbg !5964
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5964

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #13, !dbg !5965
  %19 = load i1, ptr %retval, align 1, !dbg !5965
  ret i1 %19, !dbg !5965
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5966 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #3 align 16 !dbg !5967 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5971, metadata !DIExpression()), !dbg !5973
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5972, metadata !DIExpression()), !dbg !5974
  %0 = load i32, ptr %size.addr, align 4, !dbg !5975
  %1 = load i64, ptr %count.addr, align 8, !dbg !5977
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #14, !dbg !5978
  ret void, !dbg !5979
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5980 dso_local void @__bad_copy_from() #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5981 dso_local void @__bad_copy_to() #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #3 align 16 !dbg !5982 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5986, metadata !DIExpression()), !dbg !5989
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5987, metadata !DIExpression()), !dbg !5990
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !5988, metadata !DIExpression()), !dbg !5991
  ret void, !dbg !5992
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5993 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5994 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { nounwind memory(none) }
attributes #16 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178}
!llvm.ident = !{!4179}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "default_xol_ops", scope: !2, file: !3, line: 579, type: !3865, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.uprobes.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/uprobes\22 -D KBUILD_BASENAME=\22uprobes\22 -D KBUILD_MODNAME=\22uprobes\22 -D __KBUILD_MODNAME=kmod_uprobes -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/uprobes.ll arch/x86/kernel/uprobes.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !119, globals: !4142, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/uprobes.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d8ad78ac42de53fad813b3cf5aa46542")
!4 = !{!5, !11, !17, !24, !40, !46, !51, !57, !64, !72, !79, !87, !92, !107, !112}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !12, line: 16, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "TT_NONE", value: 0)
!15 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!16 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !18, line: 312, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!19 = !{!20, !21, !22, !23}
!20 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!21 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!22 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!23 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !25, line: 1325, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39}
!27 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!28 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!29 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!30 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!31 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!32 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!33 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!34 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!35 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!36 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!37 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!38 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!39 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !41, line: 26, baseType: !7, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!42 = !{!43, !44, !45}
!43 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!44 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!45 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !47, line: 2052, baseType: !7, size: 32, elements: !48)
!47 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!48 = !{!49, !50}
!49 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!50 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !52, line: 54, baseType: !7, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!53 = !{!54, !55, !56}
!54 = !DIEnumerator(name: "USRQUOTA", value: 0)
!55 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!56 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !58, line: 15, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!59 = !{!60, !61, !62, !63}
!60 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!61 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!62 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!63 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !65, line: 68, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!66 = !{!67, !68, !69, !70, !71}
!67 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!68 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!69 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!70 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!71 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !73, line: 51, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!74 = !{!75, !76, !77, !78}
!75 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!76 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!77 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!78 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !80, line: 9, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!81 = !{!82, !83, !84, !85, !86}
!82 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!83 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!84 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!85 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!86 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !88, line: 10, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!89 = !{!90, !91}
!90 = !DIEnumerator(name: "false", value: 0)
!91 = !DIEnumerator(name: "true", value: 1)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "die_val", file: !93, line: 10, baseType: !7, size: 32, elements: !94)
!93 = !DIFile(filename: "./arch/x86/include/asm/kdebug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b9e116c256f8ca47b10b852f08e11a")
!94 = !{!95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!95 = !DIEnumerator(name: "DIE_OOPS", value: 1)
!96 = !DIEnumerator(name: "DIE_INT3", value: 2)
!97 = !DIEnumerator(name: "DIE_DEBUG", value: 3)
!98 = !DIEnumerator(name: "DIE_PANIC", value: 4)
!99 = !DIEnumerator(name: "DIE_NMI", value: 5)
!100 = !DIEnumerator(name: "DIE_DIE", value: 6)
!101 = !DIEnumerator(name: "DIE_KERNELDEBUG", value: 7)
!102 = !DIEnumerator(name: "DIE_TRAP", value: 8)
!103 = !DIEnumerator(name: "DIE_GPF", value: 9)
!104 = !DIEnumerator(name: "DIE_CALL", value: 10)
!105 = !DIEnumerator(name: "DIE_PAGE_FAULT", value: 11)
!106 = !DIEnumerator(name: "DIE_NMIUNKNOWN", value: 12)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rp_check", file: !73, line: 95, baseType: !7, size: 32, elements: !108)
!108 = !{!109, !110, !111}
!109 = !DIEnumerator(name: "RP_CHECK_CALL", value: 0)
!110 = !DIEnumerator(name: "RP_CHECK_CHAIN_CALL", value: 1)
!111 = !DIEnumerator(name: "RP_CHECK_RET", value: 2)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "insn_mode", file: !113, line: 143, baseType: !7, size: 32, elements: !114)
!113 = !DIFile(filename: "./arch/x86/include/asm/insn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca1df7461e09b68408eb75c2e122471d")
!114 = !{!115, !116, !117, !118}
!115 = !DIEnumerator(name: "INSN_MODE_32", value: 0)
!116 = !DIEnumerator(name: "INSN_MODE_64", value: 1)
!117 = !DIEnumerator(name: "INSN_MODE_KERN", value: 2)
!118 = !DIEnumerator(name: "INSN_NUM_MODES", value: 3)
!119 = !{!120, !121, !124, !125, !127, !128, !129, !130, !123}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !122, line: 42, baseType: !123)
!122 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!123 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!127 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!128 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !132, line: 746, size: 58368, elements: !133)
!132 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!133 = !{!134, !146, !147, !148, !158, !159, !160, !161, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !253, !264, !391, !395, !398, !429, !430, !431, !432, !443, !445, !446, !447, !448, !449, !450, !461, !462, !465, !466, !467, !468, !469, !470, !471, !472, !479, !480, !487, !488, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3310, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3358, !3364, !3365, !3366, !3367, !3368, !3370, !3373, !3380, !3385, !3388, !3391, !3394, !3420, !3558, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3596, !3597, !3598, !3607, !3615, !3616, !3617, !3618, !3619, !3624, !3625, !3626, !3629, !3630, !3633, !3636, !3639, !3647, !3650, !3651, !3737, !3738, !3739, !3740, !3741, !3747, !3748, !3749, !3750, !3753, !3754, !3757, !3760, !3761, !3764, !3765, !3766, !3769, !3770, !3771, !3772, !3773, !3774, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3806, !3807, !3813, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3825, !3963, !3965, !3966, !3967, !3968, !3969, !3970, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3987, !3988, !3989}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !131, file: !132, line: 752, baseType: !135, size: 192)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !136, line: 56, size: 192, elements: !137)
!136 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!137 = !{!138, !139, !140, !145}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !135, file: !136, line: 57, baseType: !123, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !135, file: !136, line: 58, baseType: !123, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !135, file: !136, line: 59, baseType: !141, size: 32, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !142, line: 21, baseType: !143)
!142 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !144, line: 27, baseType: !7)
!144 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!145 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !135, file: !136, line: 61, baseType: !141, size: 32, offset: 160)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !131, file: !132, line: 754, baseType: !7, size: 32, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !131, file: !132, line: 767, baseType: !120, size: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !131, file: !132, line: 768, baseType: !149, size: 32, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !150, line: 113, baseType: !151)
!150 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !150, line: 111, size: 32, elements: !152)
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !151, file: !150, line: 112, baseType: !154, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !122, line: 174, baseType: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 172, size: 32, elements: !156)
!156 = !{!157}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !155, file: !122, line: 173, baseType: !127, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !131, file: !132, line: 770, baseType: !7, size: 32, offset: 352)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !131, file: !132, line: 771, baseType: !7, size: 32, offset: 384)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !131, file: !132, line: 774, baseType: !127, size: 32, offset: 416)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !131, file: !132, line: 775, baseType: !162, size: 128, offset: 448)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !163, line: 58, size: 128, elements: !164)
!163 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!164 = !{!165, !171, !176, !180}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !162, file: !163, line: 59, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !167, line: 60, size: 64, elements: !168)
!167 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !166, file: !167, line: 61, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, scope: !162, file: !163, line: 60, baseType: !172, size: 32, offset: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !162, file: !163, line: 60, size: 32, elements: !173)
!173 = !{!174, !175}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !172, file: !163, line: 61, baseType: !7, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !172, file: !163, line: 62, baseType: !154, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !162, file: !163, line: 65, baseType: !177, size: 16, offset: 96)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !142, line: 19, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !144, line: 24, baseType: !179)
!179 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !162, file: !163, line: 65, baseType: !177, size: 16, offset: 112)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !131, file: !132, line: 776, baseType: !7, size: 32, offset: 576)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !131, file: !132, line: 777, baseType: !123, size: 64, offset: 640)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !131, file: !132, line: 778, baseType: !130, size: 64, offset: 704)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !131, file: !132, line: 787, baseType: !127, size: 32, offset: 768)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !131, file: !132, line: 788, baseType: !127, size: 32, offset: 800)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !131, file: !132, line: 790, baseType: !127, size: 32, offset: 832)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !131, file: !132, line: 792, baseType: !127, size: 32, offset: 864)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !131, file: !132, line: 793, baseType: !127, size: 32, offset: 896)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !131, file: !132, line: 794, baseType: !127, size: 32, offset: 928)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !131, file: !132, line: 795, baseType: !7, size: 32, offset: 960)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !131, file: !132, line: 797, baseType: !192, size: 2048, offset: 1024)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !132, line: 551, size: 2048, elements: !193)
!193 = !{!194, !199, !207, !211, !212, !218, !219, !220, !221, !222, !223, !227, !228, !229, !230, !232, !235, !236, !237}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !192, file: !132, line: 553, baseType: !195, size: 128)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !132, line: 411, size: 128, elements: !196)
!196 = !{!197, !198}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !195, file: !132, line: 412, baseType: !123, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !195, file: !132, line: 413, baseType: !141, size: 32, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !192, file: !132, line: 554, baseType: !200, size: 192, align: 64, offset: 128)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !201, line: 5, size: 192, align: 64, elements: !202)
!201 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!202 = !{!203, !204, !206}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !200, file: !201, line: 6, baseType: !123, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !200, file: !201, line: 7, baseType: !205, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !200, file: !201, line: 8, baseType: !205, size: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !192, file: !132, line: 555, baseType: !208, size: 64, offset: 320)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !142, line: 23, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !144, line: 31, baseType: !210)
!210 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !192, file: !132, line: 556, baseType: !208, size: 64, offset: 384)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !192, file: !132, line: 558, baseType: !213, size: 128, offset: 448)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !122, line: 190, size: 128, elements: !214)
!214 = !{!215, !217}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !213, file: !122, line: 191, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !213, file: !122, line: 191, baseType: !216, size: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !192, file: !132, line: 559, baseType: !7, size: 32, offset: 576)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !192, file: !132, line: 561, baseType: !208, size: 64, offset: 640)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !192, file: !132, line: 562, baseType: !208, size: 64, offset: 704)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !192, file: !132, line: 563, baseType: !208, size: 64, offset: 768)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !192, file: !132, line: 564, baseType: !208, size: 64, offset: 832)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !192, file: !132, line: 565, baseType: !224, size: 64, offset: 896)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !142, line: 22, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !144, line: 30, baseType: !226)
!226 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !192, file: !132, line: 566, baseType: !208, size: 64, offset: 960)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !192, file: !132, line: 568, baseType: !208, size: 64, offset: 1024)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !192, file: !132, line: 571, baseType: !127, size: 32, offset: 1088)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !192, file: !132, line: 572, baseType: !231, size: 64, offset: 1152)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !192, file: !132, line: 574, baseType: !233, size: 64, offset: 1216)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !132, line: 49, flags: DIFlagFwdDecl)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !192, file: !132, line: 576, baseType: !233, size: 64, offset: 1280)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !192, file: !132, line: 578, baseType: !123, size: 64, offset: 1344)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !192, file: !132, line: 588, baseType: !238, size: 512, align: 512, offset: 1536)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !132, line: 497, size: 512, align: 512, elements: !239)
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !238, file: !132, line: 498, baseType: !208, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !238, file: !132, line: 499, baseType: !208, size: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !238, file: !132, line: 500, baseType: !208, size: 64, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !238, file: !132, line: 501, baseType: !141, size: 32, offset: 192)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !238, file: !132, line: 502, baseType: !141, size: 32, offset: 224)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !238, file: !132, line: 503, baseType: !123, size: 64, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !238, file: !132, line: 504, baseType: !123, size: 64, offset: 320)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !238, file: !132, line: 505, baseType: !123, size: 64, offset: 384)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !238, file: !132, line: 506, baseType: !249, size: 64, align: 64, offset: 448)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !132, line: 445, size: 64, align: 64, elements: !250)
!250 = !{!251, !252}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !249, file: !132, line: 446, baseType: !7, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !249, file: !132, line: 447, baseType: !7, size: 32, offset: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !131, file: !132, line: 798, baseType: !254, size: 384, offset: 3072)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !132, line: 592, size: 384, elements: !255)
!255 = !{!256, !257, !258, !259, !260, !261, !262}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !254, file: !132, line: 593, baseType: !213, size: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !254, file: !132, line: 594, baseType: !123, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !254, file: !132, line: 595, baseType: !123, size: 64, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !254, file: !132, line: 596, baseType: !7, size: 32, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !254, file: !132, line: 597, baseType: !179, size: 16, offset: 288)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !254, file: !132, line: 598, baseType: !179, size: 16, offset: 304)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !254, file: !132, line: 600, baseType: !263, size: 64, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !131, file: !132, line: 799, baseType: !265, size: 1792, offset: 3456)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !132, line: 610, size: 1792, elements: !266)
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !388, !389}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !265, file: !132, line: 611, baseType: !200, size: 192, align: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !265, file: !132, line: 618, baseType: !208, size: 64, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !265, file: !132, line: 619, baseType: !208, size: 64, offset: 256)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !265, file: !132, line: 620, baseType: !208, size: 64, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !265, file: !132, line: 621, baseType: !208, size: 64, offset: 384)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !265, file: !132, line: 622, baseType: !208, size: 64, offset: 448)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !265, file: !132, line: 629, baseType: !224, size: 64, offset: 512)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !265, file: !132, line: 630, baseType: !208, size: 64, offset: 576)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !265, file: !132, line: 631, baseType: !7, size: 32, offset: 640)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !265, file: !132, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !265, file: !132, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !265, file: !132, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !265, file: !132, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !265, file: !132, line: 662, baseType: !281, size: 512, offset: 704)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !282)
!282 = !{!283, !291, !292, !297, !384, !385, !386, !387}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !281, file: !6, line: 119, baseType: !284, size: 256)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !285, line: 9, size: 256, elements: !286)
!285 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!286 = !{!287, !288}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !284, file: !285, line: 10, baseType: !200, size: 192, align: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !284, file: !285, line: 11, baseType: !289, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !290, line: 29, baseType: !224)
!290 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !281, file: !6, line: 120, baseType: !289, size: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !281, file: !6, line: 121, baseType: !293, size: 64, offset: 320)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!5, !296}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !281, file: !6, line: 122, baseType: !298, size: 64, offset: 384)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !300)
!300 = !{!301, !352, !353, !357, !367, !368, !379, !383}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !299, file: !6, line: 160, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !304)
!304 = !{!305, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !303, file: !6, line: 216, baseType: !306, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !307, line: 23, baseType: !308)
!307 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !307, line: 14, size: 32, elements: !309)
!309 = !{!310}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !308, file: !307, line: 15, baseType: !311, size: 32)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !312, line: 44, baseType: !313)
!312 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !312, line: 14, size: 32, elements: !314)
!314 = !{!315}
!315 = !DIDerivedType(tag: DW_TAG_member, scope: !313, file: !312, line: 15, baseType: !316, size: 32)
!316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !313, file: !312, line: 15, size: 32, elements: !317)
!317 = !{!318, !319, !327}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !316, file: !312, line: 16, baseType: !154, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, scope: !316, file: !312, line: 24, baseType: !320, size: 16)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !316, file: !312, line: 24, size: 16, elements: !321)
!321 = !{!322, !326}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !320, file: !312, line: 25, baseType: !323, size: 8)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !142, line: 17, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !144, line: 21, baseType: !325)
!325 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !320, file: !312, line: 26, baseType: !323, size: 8, offset: 8)
!327 = !DIDerivedType(tag: DW_TAG_member, scope: !316, file: !312, line: 28, baseType: !328, size: 32)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !316, file: !312, line: 28, size: 32, elements: !329)
!329 = !{!330, !331}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !328, file: !312, line: 29, baseType: !177, size: 16)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !328, file: !312, line: 30, baseType: !177, size: 16, offset: 16)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !303, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !303, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !303, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !303, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !303, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !303, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !303, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !303, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !303, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !303, file: !6, line: 227, baseType: !179, size: 16, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !303, file: !6, line: 228, baseType: !179, size: 16, offset: 208)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !303, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !303, file: !6, line: 235, baseType: !289, size: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !303, file: !6, line: 236, baseType: !296, size: 64, offset: 320)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !303, file: !6, line: 237, baseType: !289, size: 64, offset: 384)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !303, file: !6, line: 238, baseType: !296, size: 64, offset: 448)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !303, file: !6, line: 239, baseType: !349, size: 4096, align: 512, offset: 512)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 4096, align: 512, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 8)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !299, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !299, file: !6, line: 162, baseType: !354, size: 32, offset: 96)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !122, line: 32, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !356, line: 96, baseType: !127)
!356 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!357 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !299, file: !6, line: 163, baseType: !358, size: 32, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !359, line: 274, baseType: !360)
!359 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !359, line: 274, size: 32, elements: !361)
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !360, file: !359, line: 274, baseType: !363, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !359, line: 69, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !359, line: 64, size: 32, elements: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !364, file: !359, line: 65, baseType: !7, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !299, file: !6, line: 164, baseType: !296, size: 64, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !299, file: !6, line: 165, baseType: !369, size: 128, offset: 256)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !285, line: 14, size: 128, elements: !370)
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !369, file: !285, line: 15, baseType: !372, size: 128)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !201, line: 26, size: 128, elements: !373)
!373 = !{!374, !378}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !372, file: !201, line: 27, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !201, line: 12, size: 64, elements: !376)
!376 = !{!377}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !375, file: !201, line: 13, baseType: !205, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !372, file: !201, line: 28, baseType: !205, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !299, file: !6, line: 166, baseType: !380, size: 64, offset: 384)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!289}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !299, file: !6, line: 167, baseType: !289, size: 64, offset: 448)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !281, file: !6, line: 123, baseType: !323, size: 8, offset: 448)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !281, file: !6, line: 124, baseType: !323, size: 8, offset: 456)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !281, file: !6, line: 125, baseType: !323, size: 8, offset: 464)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !281, file: !6, line: 126, baseType: !323, size: 8, offset: 472)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !265, file: !132, line: 671, baseType: !281, size: 512, offset: 1216)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !265, file: !132, line: 679, baseType: !390, size: 64, offset: 1728)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !131, file: !132, line: 800, baseType: !392, size: 64, offset: 5248)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!394 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !132, line: 800, flags: DIFlagFwdDecl)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !131, file: !132, line: 809, baseType: !396, size: 64, offset: 5312)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !132, line: 70, flags: DIFlagFwdDecl)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !131, file: !132, line: 825, baseType: !399, size: 2048, align: 512, offset: 5632)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !132, line: 509, size: 2048, align: 512, elements: !400)
!400 = !{!401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !399, file: !132, line: 511, baseType: !208, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !399, file: !132, line: 512, baseType: !208, size: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !399, file: !132, line: 513, baseType: !208, size: 64, offset: 128)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !399, file: !132, line: 514, baseType: !208, size: 64, offset: 192)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !399, file: !132, line: 515, baseType: !208, size: 64, offset: 256)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !399, file: !132, line: 516, baseType: !208, size: 64, offset: 320)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !399, file: !132, line: 518, baseType: !208, size: 64, offset: 384)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !399, file: !132, line: 519, baseType: !208, size: 64, offset: 448)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !399, file: !132, line: 520, baseType: !224, size: 64, offset: 512)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !399, file: !132, line: 522, baseType: !208, size: 64, offset: 576)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !399, file: !132, line: 523, baseType: !208, size: 64, offset: 640)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !399, file: !132, line: 524, baseType: !224, size: 64, offset: 704)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !399, file: !132, line: 526, baseType: !224, size: 64, offset: 768)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !399, file: !132, line: 527, baseType: !208, size: 64, offset: 832)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !399, file: !132, line: 529, baseType: !208, size: 64, offset: 896)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !399, file: !132, line: 530, baseType: !208, size: 64, offset: 960)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !399, file: !132, line: 531, baseType: !208, size: 64, offset: 1024)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !399, file: !132, line: 532, baseType: !208, size: 64, offset: 1088)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !399, file: !132, line: 533, baseType: !208, size: 64, offset: 1152)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !399, file: !132, line: 535, baseType: !208, size: 64, offset: 1216)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !399, file: !132, line: 536, baseType: !208, size: 64, offset: 1280)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !399, file: !132, line: 537, baseType: !208, size: 64, offset: 1344)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !399, file: !132, line: 538, baseType: !208, size: 64, offset: 1408)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !399, file: !132, line: 539, baseType: !208, size: 64, offset: 1472)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !399, file: !132, line: 540, baseType: !208, size: 64, offset: 1536)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !399, file: !132, line: 541, baseType: !208, size: 64, offset: 1600)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !399, file: !132, line: 542, baseType: !208, size: 64, offset: 1664)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !399, file: !132, line: 543, baseType: !208, size: 64, offset: 1728)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !131, file: !132, line: 833, baseType: !7, size: 32, offset: 7680)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !131, file: !132, line: 836, baseType: !7, size: 32, offset: 7712)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !131, file: !132, line: 837, baseType: !127, size: 32, offset: 7744)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !131, file: !132, line: 838, baseType: !433, size: 64, offset: 7808)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !436, line: 19, baseType: !437)
!436 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !436, line: 19, size: 64, elements: !438)
!438 = !{!439}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !437, file: !436, line: 19, baseType: !440, size: 64)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 64, elements: !441)
!441 = !{!442}
!442 = !DISubrange(count: 1)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !131, file: !132, line: 839, baseType: !444, size: 64, offset: 7872)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !131, file: !132, line: 840, baseType: !435, size: 64, offset: 7936)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !131, file: !132, line: 841, baseType: !120, size: 64, offset: 8000)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !131, file: !132, line: 843, baseType: !179, size: 16, offset: 8064)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !131, file: !132, line: 845, baseType: !179, size: 16, offset: 8080)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !131, file: !132, line: 848, baseType: !127, size: 32, offset: 8096)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !131, file: !132, line: 849, baseType: !451, size: 32, offset: 8128)
!451 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !132, line: 718, size: 32, elements: !452)
!452 = !{!453, !460}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !451, file: !132, line: 724, baseType: !454, size: 32)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !132, line: 719, size: 32, elements: !455)
!455 = !{!456, !457, !458, !459}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !454, file: !132, line: 720, baseType: !323, size: 8)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !454, file: !132, line: 721, baseType: !323, size: 8, offset: 8)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !454, file: !132, line: 722, baseType: !323, size: 8, offset: 16)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !454, file: !132, line: 723, baseType: !323, size: 8, offset: 24)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !451, file: !132, line: 725, baseType: !141, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !131, file: !132, line: 850, baseType: !213, size: 128, offset: 8192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !131, file: !132, line: 851, baseType: !463, size: 64, offset: 8320)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !132, line: 60, flags: DIFlagFwdDecl)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !131, file: !132, line: 855, baseType: !123, size: 64, offset: 8384)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !131, file: !132, line: 856, baseType: !323, size: 8, offset: 8448)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !131, file: !132, line: 857, baseType: !323, size: 8, offset: 8456)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !131, file: !132, line: 858, baseType: !127, size: 32, offset: 8480)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !131, file: !132, line: 859, baseType: !213, size: 128, offset: 8512)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !131, file: !132, line: 860, baseType: !127, size: 32, offset: 8640)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !131, file: !132, line: 861, baseType: !213, size: 128, offset: 8704)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !131, file: !132, line: 873, baseType: !473, size: 256, offset: 8832)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !132, line: 376, size: 256, elements: !474)
!474 = !{!475, !476, !477, !478}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !473, file: !132, line: 381, baseType: !123, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !473, file: !132, line: 384, baseType: !210, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !473, file: !132, line: 389, baseType: !210, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !473, file: !132, line: 392, baseType: !210, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !131, file: !132, line: 875, baseType: !213, size: 128, offset: 9088)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !131, file: !132, line: 877, baseType: !481, size: 320, offset: 9216)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !482, line: 86, size: 320, elements: !483)
!482 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!483 = !{!484, !485, !486}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !481, file: !482, line: 87, baseType: !127, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !481, file: !482, line: 88, baseType: !213, size: 128, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !481, file: !482, line: 89, baseType: !213, size: 128, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !131, file: !132, line: 878, baseType: !200, size: 192, align: 64, offset: 9536)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !131, file: !132, line: 881, baseType: !489, size: 64, offset: 9728)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !25, line: 733, size: 10240, elements: !491)
!491 = !{!492, !3229}
!492 = !DIDerivedType(tag: DW_TAG_member, scope: !490, file: !25, line: 734, baseType: !493, size: 10240)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !490, file: !25, line: 734, size: 10240, elements: !494)
!494 = !{!495, !499, !521, !3086, !3087, !3088, !3089, !3090, !3091, !3098, !3099, !3100, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3139, !3141, !3144, !3209, !3210, !3211, !3214, !3215, !3216, !3219, !3220, !3221, !3227, !3228}
!495 = !DIDerivedType(tag: DW_TAG_member, scope: !493, file: !25, line: 739, baseType: !496, size: 512, align: 512)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !493, file: !25, line: 739, size: 512, align: 512, elements: !497)
!497 = !{!498}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !496, file: !25, line: 747, baseType: !154, size: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !493, file: !25, line: 750, baseType: !500, size: 128, offset: 512)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !501, line: 218, size: 128, elements: !502)
!501 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!502 = !{!503, !519, !520}
!503 = !DIDerivedType(tag: DW_TAG_member, scope: !500, file: !501, line: 219, baseType: !504, size: 32)
!504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !500, file: !501, line: 219, size: 32, elements: !505)
!505 = !{!506, !515}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !504, file: !501, line: 220, baseType: !507, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !508, line: 29, baseType: !509)
!508 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !508, line: 17, size: 32, elements: !510)
!510 = !{!511}
!511 = !DIDerivedType(tag: DW_TAG_member, scope: !509, file: !508, line: 18, baseType: !512, size: 32)
!512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !509, file: !508, line: 18, size: 32, elements: !513)
!513 = !{!514}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !512, file: !508, line: 19, baseType: !308, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !504, file: !501, line: 221, baseType: !516)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !501, line: 197, baseType: !517)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !501, line: 197, elements: !518)
!518 = !{}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !500, file: !501, line: 223, baseType: !7, size: 32, offset: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !500, file: !501, line: 224, baseType: !120, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !493, file: !25, line: 752, baseType: !522, size: 64, offset: 640)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!123, !525, !123, !123, !123, !123}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !47, line: 994, size: 1856, align: 64, elements: !527)
!527 = !{!528, !542, !543, !545, !552, !564, !567, !568, !692, !902, !911, !3076, !3077, !3078, !3079, !3080, !3081, !3083, !3084, !3085}
!528 = !DIDerivedType(tag: DW_TAG_member, scope: !526, file: !47, line: 995, baseType: !529, size: 128)
!529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !526, file: !47, line: 995, size: 128, elements: !530)
!530 = !{!531, !532, !541}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !529, file: !47, line: 996, baseType: !166, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !529, file: !47, line: 997, baseType: !533, size: 128, align: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !122, line: 232, size: 128, align: 64, elements: !534)
!534 = !{!535, !537}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !533, file: !122, line: 233, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !533, file: !122, line: 234, baseType: !538, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !536}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !529, file: !47, line: 998, baseType: !7, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !526, file: !47, line: 1005, baseType: !507, size: 32, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !526, file: !47, line: 1006, baseType: !544, size: 32, offset: 160)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !122, line: 156, baseType: !7)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !526, file: !47, line: 1007, baseType: !546, size: 64, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !547, line: 13, baseType: !548)
!547 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !122, line: 181, baseType: !549)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 179, size: 64, elements: !550)
!550 = !{!551}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !549, file: !122, line: 180, baseType: !224, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !526, file: !47, line: 1008, baseType: !553, size: 256, offset: 256)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !554, line: 66, size: 256, elements: !555)
!554 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!555 = !{!556, !557, !558, !563}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !553, file: !554, line: 67, baseType: !546, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !553, file: !554, line: 68, baseType: !306, size: 32, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !553, file: !554, line: 70, baseType: !559, size: 32, offset: 96)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !560, line: 15, size: 32, elements: !561)
!560 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!561 = !{!562}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !559, file: !560, line: 20, baseType: !154, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !553, file: !554, line: 72, baseType: !213, size: 128, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !526, file: !47, line: 1009, baseType: !565, size: 64, offset: 512)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !122, line: 52, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !356, line: 88, baseType: !226)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !526, file: !47, line: 1010, baseType: !7, size: 32, offset: 576)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !526, file: !47, line: 1011, baseType: !569, size: 256, offset: 640)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !47, line: 948, size: 256, elements: !570)
!570 = !{!571, !594, !682, !683, !690, !691}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !569, file: !47, line: 949, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !573, line: 34, baseType: !574)
!573 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !573, line: 25, size: 64, elements: !575)
!575 = !{!576}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !574, file: !573, line: 26, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !578, line: 27, baseType: !579)
!578 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !578, line: 13, size: 64, elements: !580)
!580 = !{!581, !593}
!581 = !DIDerivedType(tag: DW_TAG_member, scope: !579, file: !578, line: 14, baseType: !582, size: 32)
!582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !579, file: !578, line: 14, size: 32, elements: !583)
!583 = !{!584, !585}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !582, file: !578, line: 15, baseType: !154, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, scope: !582, file: !578, line: 16, baseType: !586, size: 32)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !582, file: !578, line: 16, size: 32, elements: !587)
!587 = !{!588, !589}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !586, file: !578, line: 18, baseType: !323, size: 8)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !586, file: !578, line: 19, baseType: !590, size: 24, offset: 8)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 24, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 3)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !579, file: !578, line: 26, baseType: !311, size: 32, offset: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !569, file: !47, line: 950, baseType: !595, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !80, line: 59, size: 768, elements: !597)
!597 = !{!598, !599, !600, !601, !614, !615, !622, !623}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !596, file: !80, line: 61, baseType: !149, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !596, file: !80, line: 62, baseType: !7, size: 32, offset: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !596, file: !80, line: 63, baseType: !507, size: 32, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !596, file: !80, line: 65, baseType: !602, size: 256, offset: 128)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, size: 256, elements: !612)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !122, line: 194, size: 64, elements: !604)
!604 = !{!605}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !603, file: !122, line: 195, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !122, line: 198, size: 128, elements: !608)
!608 = !{!609, !610}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !607, file: !122, line: 199, baseType: !606, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !607, file: !122, line: 199, baseType: !611, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!612 = !{!613}
!613 = !DISubrange(count: 4)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !596, file: !80, line: 66, baseType: !603, size: 64, offset: 384)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !596, file: !80, line: 68, baseType: !616, size: 192, offset: 448)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !617, line: 41, baseType: !618)
!617 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !617, line: 37, size: 192, elements: !619)
!619 = !{!620, !621}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !618, file: !617, line: 38, baseType: !507, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !618, file: !617, line: 39, baseType: !213, size: 128, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !596, file: !80, line: 69, baseType: !533, size: 128, align: 64, offset: 640)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !596, file: !80, line: 70, baseType: !624, offset: 768)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !625, elements: !680)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !80, line: 54, size: 128, elements: !626)
!626 = !{!627, !628}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !625, file: !80, line: 55, baseType: !127, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !625, file: !80, line: 56, baseType: !629, size: 64, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !631, line: 26, size: 1152, elements: !632)
!631 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!632 = !{!633, !647, !648, !649, !650, !654, !655, !656, !659, !663, !667, !668, !679}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !630, file: !631, line: 27, baseType: !634, size: 192)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !635, line: 19, size: 192, elements: !636)
!635 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!636 = !{!637, !645, !646}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !634, file: !635, line: 20, baseType: !638, size: 128)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !639, line: 296, size: 128, elements: !640)
!639 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!640 = !{!641, !642, !644}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !638, file: !639, line: 297, baseType: !507, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !638, file: !639, line: 299, baseType: !643, size: 32, offset: 32)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !122, line: 154, baseType: !7)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !638, file: !639, line: 300, baseType: !120, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !634, file: !635, line: 21, baseType: !7, size: 32, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !634, file: !635, line: 22, baseType: !7, size: 32, offset: 160)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !630, file: !631, line: 28, baseType: !533, size: 128, align: 64, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !630, file: !631, line: 29, baseType: !7, size: 32, offset: 320)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !630, file: !631, line: 30, baseType: !130, size: 64, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !630, file: !631, line: 31, baseType: !651, size: 64, offset: 448)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !653, line: 325, flags: DIFlagFwdDecl)
!653 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!654 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !630, file: !631, line: 32, baseType: !7, size: 32, offset: 512)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !630, file: !631, line: 33, baseType: !629, size: 64, offset: 576)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !630, file: !631, line: 35, baseType: !657, size: 64, offset: 640)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !631, line: 17, flags: DIFlagFwdDecl)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !630, file: !631, line: 37, baseType: !660, size: 64, offset: 704)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !662, line: 18, flags: DIFlagFwdDecl)
!662 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!663 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !630, file: !631, line: 38, baseType: !664, size: 64, offset: 768)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !666, line: 16, flags: DIFlagFwdDecl)
!666 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!667 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !630, file: !631, line: 39, baseType: !127, size: 32, offset: 832)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !630, file: !631, line: 40, baseType: !669, size: 192, offset: 896)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !670, line: 9, size: 192, elements: !671)
!670 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!671 = !{!672, !673, !677, !678}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !669, file: !670, line: 10, baseType: !546, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !669, file: !670, line: 11, baseType: !674, size: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !676)
!676 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !670, line: 7, flags: DIFlagFwdDecl)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !669, file: !670, line: 12, baseType: !7, size: 32, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !669, file: !670, line: 13, baseType: !149, size: 32, offset: 160)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !630, file: !631, line: 42, baseType: !127, size: 32, offset: 1088)
!680 = !{!681}
!681 = !DISubrange(count: -1)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !569, file: !47, line: 951, baseType: !79, size: 32, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !569, file: !47, line: 952, baseType: !684, size: 32, offset: 160)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !662, line: 23, baseType: !685)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !662, line: 21, size: 32, elements: !686)
!686 = !{!687}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !685, file: !662, line: 22, baseType: !688, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !122, line: 37, baseType: !689)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !356, line: 49, baseType: !7)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !569, file: !47, line: 952, baseType: !684, size: 32, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !569, file: !47, line: 953, baseType: !127, size: 32, offset: 224)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !526, file: !47, line: 1012, baseType: !693, size: 64, offset: 896)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !695)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !696, line: 110, size: 1472, elements: !697)
!696 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!697 = !{!698, !699, !700, !707, !708, !709, !710, !711, !712, !713, !714, !720, !721, !722, !723, !724, !725, !852, !853, !854, !855, !856, !887, !888, !889, !897}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !695, file: !696, line: 111, baseType: !546, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !695, file: !696, line: 112, baseType: !684, size: 32, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !695, file: !696, line: 113, baseType: !701, size: 32, offset: 96)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !662, line: 28, baseType: !702)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !662, line: 26, size: 32, elements: !703)
!703 = !{!704}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !702, file: !662, line: 27, baseType: !705, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !122, line: 38, baseType: !706)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !356, line: 50, baseType: !7)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !695, file: !696, line: 114, baseType: !684, size: 32, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !695, file: !696, line: 115, baseType: !701, size: 32, offset: 160)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !695, file: !696, line: 116, baseType: !684, size: 32, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !695, file: !696, line: 117, baseType: !701, size: 32, offset: 224)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !695, file: !696, line: 118, baseType: !684, size: 32, offset: 256)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !695, file: !696, line: 119, baseType: !701, size: 32, offset: 288)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !695, file: !696, line: 120, baseType: !7, size: 32, offset: 320)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !695, file: !696, line: 121, baseType: !715, size: 64, offset: 384)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !716, line: 24, baseType: !717)
!716 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !716, line: 24, size: 64, elements: !718)
!718 = !{!719}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !717, file: !716, line: 24, baseType: !208, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !695, file: !696, line: 122, baseType: !715, size: 64, offset: 448)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !695, file: !696, line: 123, baseType: !715, size: 64, offset: 512)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !695, file: !696, line: 124, baseType: !715, size: 64, offset: 576)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !695, file: !696, line: 125, baseType: !715, size: 64, offset: 640)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !695, file: !696, line: 127, baseType: !325, size: 8, offset: 704)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !695, file: !696, line: 129, baseType: !726, size: 64, offset: 768)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !728, line: 195, size: 1728, elements: !729)
!728 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!729 = !{!730, !731, !736, !741, !750, !753, !754, !761, !762, !763, !764, !767, !768, !769, !771, !772, !816, !837}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !727, file: !728, line: 196, baseType: !149, size: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !727, file: !728, line: 197, baseType: !732, size: 32, offset: 32)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !728, line: 28, baseType: !733)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !122, line: 104, baseType: !734)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !142, line: 20, baseType: !735)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !144, line: 26, baseType: !127)
!736 = !DIDerivedType(tag: DW_TAG_member, scope: !727, file: !728, line: 198, baseType: !737, size: 192, offset: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !727, file: !728, line: 198, size: 192, elements: !738)
!738 = !{!739, !740}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !737, file: !728, line: 199, baseType: !213, size: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !737, file: !728, line: 200, baseType: !200, size: 192, align: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !727, file: !728, line: 205, baseType: !742, size: 320, offset: 256)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !743, line: 48, size: 320, elements: !744)
!743 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!744 = !{!745, !746, !747, !748, !749}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !742, file: !743, line: 49, baseType: !546, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !742, file: !743, line: 55, baseType: !546, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !742, file: !743, line: 57, baseType: !559, size: 32, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !742, file: !743, line: 59, baseType: !306, size: 32, offset: 160)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !742, file: !743, line: 60, baseType: !213, size: 128, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !727, file: !728, line: 206, baseType: !751, size: 64, offset: 576)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !728, line: 206, flags: DIFlagFwdDecl)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !727, file: !728, line: 207, baseType: !120, size: 64, offset: 640)
!754 = !DIDerivedType(tag: DW_TAG_member, scope: !727, file: !728, line: 208, baseType: !755, size: 64, offset: 704)
!755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !727, file: !728, line: 208, size: 64, elements: !756)
!756 = !{!757, !760}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !755, file: !728, line: 209, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !759, line: 8, baseType: !225)
!759 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!760 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !755, file: !728, line: 210, baseType: !758, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !727, file: !728, line: 212, baseType: !758, size: 64, offset: 768)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !727, file: !728, line: 213, baseType: !684, size: 32, offset: 832)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !727, file: !728, line: 214, baseType: !701, size: 32, offset: 864)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !727, file: !728, line: 215, baseType: !765, size: 32, offset: 896)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !728, line: 31, baseType: !766)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !122, line: 110, baseType: !141)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !727, file: !728, line: 216, baseType: !179, size: 16, offset: 928)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !727, file: !728, line: 217, baseType: !179, size: 16, offset: 944)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !727, file: !728, line: 221, baseType: !770, size: 16, offset: 960)
!770 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !727, file: !728, line: 228, baseType: !123, size: 64, offset: 1024)
!772 = !DIDerivedType(tag: DW_TAG_member, scope: !727, file: !728, line: 245, baseType: !773, size: 320, offset: 1088)
!773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !727, file: !728, line: 245, size: 320, elements: !774)
!774 = !{!775, !807}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !773, file: !728, line: 246, baseType: !776, size: 320)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !728, line: 114, size: 320, elements: !777)
!777 = !{!778, !779, !792, !795, !804}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !776, file: !728, line: 116, baseType: !123, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, scope: !776, file: !728, line: 117, baseType: !780, size: 64, offset: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !776, file: !728, line: 117, size: 64, elements: !781)
!781 = !{!782, !791}
!782 = !DIDerivedType(tag: DW_TAG_member, scope: !780, file: !728, line: 118, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !780, file: !728, line: 118, size: 64, elements: !784)
!784 = !{!785, !786}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !783, file: !728, line: 120, baseType: !177, size: 16)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !783, file: !728, line: 121, baseType: !787, size: 48, offset: 16)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !788, size: 48, elements: !789)
!788 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!789 = !{!790}
!790 = !DISubrange(count: 6)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !780, file: !728, line: 127, baseType: !123, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !776, file: !728, line: 129, baseType: !793, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !728, line: 102, flags: DIFlagFwdDecl)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !776, file: !728, line: 130, baseType: !796, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !728, line: 108, size: 192, elements: !798)
!798 = !{!799, !800, !801}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !797, file: !728, line: 109, baseType: !533, size: 128, align: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !797, file: !728, line: 110, baseType: !149, size: 32, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !797, file: !728, line: 111, baseType: !802, size: 8, offset: 160)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !122, line: 35, baseType: !803)
!803 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !776, file: !728, line: 131, baseType: !805, size: 64, offset: 256)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !788)
!807 = !DIDerivedType(tag: DW_TAG_member, scope: !773, file: !728, line: 247, baseType: !808, size: 320)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !773, file: !728, line: 247, size: 320, elements: !809)
!809 = !{!810, !811, !812, !813, !814}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !808, file: !728, line: 248, baseType: !123, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !808, file: !728, line: 249, baseType: !123, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !808, file: !728, line: 250, baseType: !793, size: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !808, file: !728, line: 251, baseType: !796, size: 64, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !808, file: !728, line: 252, baseType: !815, size: 64, offset: 256)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, scope: !727, file: !728, line: 260, baseType: !817, size: 256, offset: 1408)
!817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !727, file: !728, line: 260, size: 256, elements: !818)
!818 = !{!819, !825}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !817, file: !728, line: 261, baseType: !820, size: 256)
!820 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !728, line: 134, size: 256, elements: !821)
!821 = !{!822, !823}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !820, file: !728, line: 135, baseType: !120, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !820, file: !728, line: 136, baseType: !824, size: 256)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 256, elements: !612)
!825 = !DIDerivedType(tag: DW_TAG_member, scope: !817, file: !728, line: 262, baseType: !826, size: 256)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !817, file: !728, line: 262, size: 256, elements: !827)
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !826, file: !728, line: 264, baseType: !213, size: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !826, file: !728, line: 265, baseType: !830, size: 128, offset: 128)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !831, line: 22, size: 128, elements: !832)
!831 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!832 = !{!833, !836}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !830, file: !831, line: 23, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !831, line: 23, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !830, file: !831, line: 24, baseType: !123, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !727, file: !728, line: 280, baseType: !838, size: 64, offset: 1664)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !728, line: 176, size: 192, elements: !840)
!840 = !{!841, !850, !851}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !839, file: !728, line: 177, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !728, line: 171, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!127, !726, !846, !848, !726}
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !794)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !820)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !839, file: !728, line: 178, baseType: !726, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !839, file: !728, line: 179, baseType: !793, size: 64, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !695, file: !696, line: 130, baseType: !726, size: 64, offset: 832)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !695, file: !696, line: 131, baseType: !726, size: 64, offset: 896)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !695, file: !696, line: 132, baseType: !726, size: 64, offset: 960)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !695, file: !696, line: 135, baseType: !120, size: 64, offset: 1024)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !695, file: !696, line: 137, baseType: !857, size: 64, offset: 1088)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !859, line: 14, size: 1088, elements: !860)
!859 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!860 = !{!861, !862, !871, !872, !873, !874, !875, !876}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !858, file: !859, line: 15, baseType: !149, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !858, file: !859, line: 17, baseType: !863, size: 320, offset: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !864, line: 22, size: 320, elements: !865)
!864 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!865 = !{!866, !867, !868, !869}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !863, file: !864, line: 23, baseType: !306, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !863, file: !864, line: 24, baseType: !224, size: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !863, file: !864, line: 26, baseType: !213, size: 128, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !863, file: !864, line: 28, baseType: !870, size: 64, offset: 256)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !858, file: !859, line: 19, baseType: !123, size: 64, offset: 384)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !858, file: !859, line: 20, baseType: !546, size: 64, offset: 448)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !858, file: !859, line: 23, baseType: !607, size: 128, offset: 512)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !858, file: !859, line: 24, baseType: !684, size: 32, offset: 640)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !858, file: !859, line: 29, baseType: !546, size: 64, offset: 704)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !858, file: !859, line: 36, baseType: !877, size: 320, offset: 768)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !878, line: 15, size: 320, elements: !879)
!878 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!879 = !{!880, !881, !882, !883, !884, !885, !886}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !877, file: !878, line: 16, baseType: !306, size: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !877, file: !878, line: 18, baseType: !127, size: 32, offset: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !877, file: !878, line: 19, baseType: !127, size: 32, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !877, file: !878, line: 20, baseType: !127, size: 32, offset: 96)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !877, file: !878, line: 21, baseType: !127, size: 32, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !877, file: !878, line: 22, baseType: !123, size: 64, offset: 192)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !877, file: !878, line: 23, baseType: !123, size: 64, offset: 256)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !695, file: !696, line: 138, baseType: !660, size: 64, offset: 1152)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !695, file: !696, line: 139, baseType: !664, size: 64, offset: 1216)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !695, file: !696, line: 140, baseType: !890, size: 64, offset: 1280)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !696, line: 25, size: 64, elements: !892)
!892 = !{!893, !894, !895}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !891, file: !696, line: 26, baseType: !154, size: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !891, file: !696, line: 27, baseType: !127, size: 32, offset: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !891, file: !696, line: 28, baseType: !896, offset: 64)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !701, elements: !680)
!897 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !696, line: 142, baseType: !898, size: 128, offset: 1344)
!898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !695, file: !696, line: 142, size: 128, elements: !899)
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !898, file: !696, line: 143, baseType: !127, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !898, file: !696, line: 144, baseType: !533, size: 128, align: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !526, file: !47, line: 1013, baseType: !903, size: 256, offset: 960)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !47, line: 970, size: 256, elements: !904)
!904 = !{!905, !906, !907, !908, !909, !910}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !903, file: !47, line: 971, baseType: !123, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !903, file: !47, line: 972, baseType: !7, size: 32, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !903, file: !47, line: 973, baseType: !7, size: 32, offset: 96)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !903, file: !47, line: 974, baseType: !7, size: 32, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !903, file: !47, line: 975, baseType: !7, size: 32, offset: 160)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !903, file: !47, line: 976, baseType: !565, size: 64, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !526, file: !47, line: 1014, baseType: !912, size: 128, offset: 1216)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !913, line: 8, size: 128, elements: !914)
!913 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!914 = !{!915, !3075}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !912, file: !913, line: 9, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !918, line: 70, size: 256, elements: !919)
!918 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!919 = !{!920, !3072, !3073, !3074}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !917, file: !918, line: 71, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !923, line: 82, size: 1536, elements: !924)
!923 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!924 = !{!925, !926, !931, !939, !940, !955, !3039, !3041, !3054, !3055, !3056, !3057, !3058, !3064, !3065, !3066}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !922, file: !923, line: 84, baseType: !7, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !922, file: !923, line: 85, baseType: !927, size: 32, offset: 32)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !359, line: 275, baseType: !928)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !359, line: 275, size: 32, elements: !929)
!929 = !{!930}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !928, file: !359, line: 275, baseType: !363, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !922, file: !923, line: 86, baseType: !932, size: 128, offset: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !933, line: 38, size: 128, elements: !934)
!933 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!934 = !{!935, !937}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !932, file: !933, line: 39, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !932, file: !933, line: 39, baseType: !938, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !922, file: !923, line: 87, baseType: !921, size: 64, offset: 192)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !922, file: !923, line: 88, baseType: !941, size: 128, offset: 256)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !923, line: 49, size: 128, elements: !942)
!942 = !{!943, !952}
!943 = !DIDerivedType(tag: DW_TAG_member, scope: !941, file: !923, line: 50, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !941, file: !923, line: 50, size: 64, elements: !945)
!945 = !{!946, !951}
!946 = !DIDerivedType(tag: DW_TAG_member, scope: !944, file: !923, line: 51, baseType: !947, size: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !944, file: !923, line: 51, size: 64, elements: !948)
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !947, file: !923, line: 52, baseType: !141, size: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !947, file: !923, line: 52, baseType: !141, size: 32, offset: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !944, file: !923, line: 54, baseType: !208, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !941, file: !923, line: 56, baseType: !953, size: 64, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !922, file: !923, line: 89, baseType: !956, size: 64, offset: 384)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !47, line: 641, size: 4800, elements: !958)
!958 = !{!959, !961, !962, !963, !964, !965, !966, !969, !970, !1160, !2853, !2854, !2855, !2856, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !3021, !3024, !3025, !3026, !3035, !3036, !3037, !3038}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !957, file: !47, line: 642, baseType: !960, size: 16)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !122, line: 24, baseType: !179)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !957, file: !47, line: 643, baseType: !179, size: 16, offset: 16)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !957, file: !47, line: 644, baseType: !684, size: 32, offset: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !957, file: !47, line: 645, baseType: !213, size: 128, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !957, file: !47, line: 646, baseType: !701, size: 32, offset: 192)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !957, file: !47, line: 647, baseType: !7, size: 32, offset: 224)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !957, file: !47, line: 650, baseType: !967, size: 64, offset: 256)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !47, line: 607, flags: DIFlagFwdDecl)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !957, file: !47, line: 651, baseType: !967, size: 64, offset: 320)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !957, file: !47, line: 654, baseType: !971, size: 64, offset: 384)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !973)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !47, line: 1966, size: 2048, align: 512, elements: !974)
!974 = !{!975, !979, !992, !998, !1002, !1006, !1010, !1014, !1018, !1022, !1026, !1027, !1033, !1037, !1074, !1105, !1115, !1121, !1125, !1129, !1133, !1137, !1141, !1147, !1151}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !973, file: !47, line: 1967, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!921, !956, !921, !7}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !973, file: !47, line: 1968, baseType: !980, size: 64, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{!805, !921, !956, !983}
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !985, line: 10, size: 128, elements: !986)
!985 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!986 = !{!987, !991}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !984, file: !985, line: 11, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{null, !120}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !984, file: !985, line: 12, baseType: !120, size: 64, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !973, file: !47, line: 1969, baseType: !993, size: 64, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!127, !996, !956, !127}
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !716, line: 42, flags: DIFlagFwdDecl)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !973, file: !47, line: 1970, baseType: !999, size: 64, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!967, !956, !127, !802}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !973, file: !47, line: 1972, baseType: !1003, size: 64, offset: 256)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!127, !921, !815, !127}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !973, file: !47, line: 1974, baseType: !1007, size: 64, offset: 320)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!127, !996, !956, !921, !960, !802}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !973, file: !47, line: 1976, baseType: !1011, size: 64, offset: 384)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!127, !921, !956, !921}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !973, file: !47, line: 1977, baseType: !1015, size: 64, offset: 448)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!127, !956, !921}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !973, file: !47, line: 1978, baseType: !1019, size: 64, offset: 512)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!127, !996, !956, !921, !805}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !973, file: !47, line: 1980, baseType: !1023, size: 64, offset: 576)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!127, !996, !956, !921, !960}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !973, file: !47, line: 1982, baseType: !1015, size: 64, offset: 640)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !973, file: !47, line: 1983, baseType: !1028, size: 64, offset: 704)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!127, !996, !956, !921, !960, !1031}
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !122, line: 21, baseType: !1032)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !122, line: 18, baseType: !141)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !973, file: !47, line: 1985, baseType: !1034, size: 64, offset: 768)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!127, !996, !956, !921, !956, !921, !7}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !973, file: !47, line: 1987, baseType: !1038, size: 64, offset: 832)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!127, !996, !921, !1041}
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !47, line: 226, size: 640, elements: !1043)
!1043 = !{!1044, !1045, !1046, !1056, !1065, !1066, !1071, !1072, !1073}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1042, file: !47, line: 227, baseType: !7, size: 32)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1042, file: !47, line: 228, baseType: !960, size: 16, offset: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !47, line: 241, baseType: !1047, size: 32, offset: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1042, file: !47, line: 241, size: 32, elements: !1048)
!1048 = !{!1049, !1050}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1047, file: !47, line: 242, baseType: !684, size: 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1047, file: !47, line: 243, baseType: !1051, size: 32)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1052, line: 16, baseType: !1053)
!1052 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1052, line: 14, size: 32, elements: !1054)
!1054 = !{!1055}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1053, file: !1052, line: 15, baseType: !688, size: 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !47, line: 245, baseType: !1057, size: 32, offset: 96)
!1057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1042, file: !47, line: 245, size: 32, elements: !1058)
!1058 = !{!1059, !1060}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1057, file: !47, line: 246, baseType: !701, size: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1057, file: !47, line: 247, baseType: !1061, size: 32)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1052, line: 20, baseType: !1062)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1052, line: 18, size: 32, elements: !1063)
!1063 = !{!1064}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1062, file: !1052, line: 19, baseType: !705, size: 32)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1042, file: !47, line: 249, baseType: !565, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1042, file: !47, line: 250, baseType: !1067, size: 128, offset: 192)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !759, line: 13, size: 128, elements: !1068)
!1068 = !{!1069, !1070}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1067, file: !759, line: 14, baseType: !758, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1067, file: !759, line: 15, baseType: !128, size: 64, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1042, file: !47, line: 251, baseType: !1067, size: 128, offset: 320)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1042, file: !47, line: 252, baseType: !1067, size: 128, offset: 448)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1042, file: !47, line: 259, baseType: !525, size: 64, offset: 576)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !973, file: !47, line: 1988, baseType: !1075, size: 64, offset: 896)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!127, !996, !1078, !1080, !141, !7}
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !912)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1082, line: 22, size: 1280, elements: !1083)
!1082 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1083 = !{!1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1081, file: !1082, line: 23, baseType: !141, size: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1081, file: !1082, line: 24, baseType: !960, size: 16, offset: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1081, file: !1082, line: 25, baseType: !7, size: 32, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1081, file: !1082, line: 26, baseType: !766, size: 32, offset: 96)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1081, file: !1082, line: 27, baseType: !208, size: 64, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1081, file: !1082, line: 28, baseType: !208, size: 64, offset: 192)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1081, file: !1082, line: 41, baseType: !208, size: 64, offset: 256)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1081, file: !1082, line: 42, baseType: !1031, size: 32, offset: 320)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1081, file: !1082, line: 43, baseType: !1031, size: 32, offset: 352)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1081, file: !1082, line: 44, baseType: !684, size: 32, offset: 384)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1081, file: !1082, line: 45, baseType: !701, size: 32, offset: 416)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1081, file: !1082, line: 46, baseType: !565, size: 64, offset: 448)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1081, file: !1082, line: 47, baseType: !1067, size: 128, offset: 512)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1081, file: !1082, line: 48, baseType: !1067, size: 128, offset: 640)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1081, file: !1082, line: 49, baseType: !1067, size: 128, offset: 768)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1081, file: !1082, line: 50, baseType: !1067, size: 128, offset: 896)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1081, file: !1082, line: 51, baseType: !208, size: 64, offset: 1024)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1081, file: !1082, line: 52, baseType: !208, size: 64, offset: 1088)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1081, file: !1082, line: 53, baseType: !141, size: 32, offset: 1152)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1081, file: !1082, line: 54, baseType: !141, size: 32, offset: 1184)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1081, file: !1082, line: 55, baseType: !208, size: 64, offset: 1216)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !973, file: !47, line: 1990, baseType: !1106, size: 64, offset: 960)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!1109, !921, !815, !1112}
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !122, line: 66, baseType: !1110)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !356, line: 73, baseType: !1111)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !356, line: 15, baseType: !128)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !122, line: 61, baseType: !1113)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !356, line: 72, baseType: !1114)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !356, line: 16, baseType: !123)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !973, file: !47, line: 1991, baseType: !1116, size: 64, offset: 1024)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!127, !956, !1119, !208, !208}
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !47, line: 55, flags: DIFlagFwdDecl)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !973, file: !47, line: 1993, baseType: !1122, size: 64, offset: 1088)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!127, !956, !127}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !973, file: !47, line: 1994, baseType: !1126, size: 64, offset: 1152)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!127, !956, !921, !525, !7, !960}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !973, file: !47, line: 1997, baseType: !1130, size: 64, offset: 1216)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!127, !996, !956, !525, !960}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !973, file: !47, line: 1999, baseType: !1134, size: 64, offset: 1280)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!967, !996, !921, !127}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !973, file: !47, line: 2001, baseType: !1138, size: 64, offset: 1344)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!127, !996, !921, !967, !127}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !973, file: !47, line: 2003, baseType: !1142, size: 64, offset: 1408)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!127, !996, !921, !1145}
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !47, line: 76, flags: DIFlagFwdDecl)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !973, file: !47, line: 2005, baseType: !1148, size: 64, offset: 1472)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!127, !921, !1145}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !973, file: !47, line: 2006, baseType: !1152, size: 64, offset: 1536)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!1155, !956}
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !47, line: 3192, size: 192, elements: !1157)
!1157 = !{!1158, !1159}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1156, file: !47, line: 3193, baseType: !638, size: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1156, file: !47, line: 3194, baseType: !141, size: 32, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !957, file: !47, line: 655, baseType: !1161, size: 64, offset: 448)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !47, line: 1190, size: 10752, elements: !1163)
!1163 = !{!1164, !1165, !1166, !1167, !1168, !1169, !2366, !2498, !2538, !2621, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2638, !2642, !2643, !2646, !2649, !2652, !2655, !2656, !2657, !2698, !2724, !2725, !2726, !2727, !2728, !2729, !2732, !2736, !2745, !2746, !2747, !2748, !2807, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1162, file: !47, line: 1191, baseType: !213, size: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1162, file: !47, line: 1192, baseType: !1031, size: 32, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1162, file: !47, line: 1193, baseType: !325, size: 8, offset: 160)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1162, file: !47, line: 1194, baseType: !123, size: 64, offset: 192)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1162, file: !47, line: 1195, baseType: !565, size: 64, offset: 256)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1162, file: !47, line: 1196, baseType: !1170, size: 64, offset: 320)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !47, line: 2366, size: 576, elements: !1172)
!1172 = !{!1173, !1174, !1175, !1181, !1185, !1189, !1193, !2354, !2355, !2356, !2358, !2359, !2360, !2362, !2363, !2364, !2365}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1171, file: !47, line: 2367, baseType: !805, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1171, file: !47, line: 2368, baseType: !127, size: 32, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1171, file: !47, line: 2376, baseType: !1176, size: 64, offset: 128)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!127, !1179}
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !918, line: 21, flags: DIFlagFwdDecl)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1171, file: !47, line: 2377, baseType: !1182, size: 64, offset: 192)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1184)
!1184 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !47, line: 75, flags: DIFlagFwdDecl)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1171, file: !47, line: 2378, baseType: !1186, size: 64, offset: 256)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!921, !1170, !127, !805, !120}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1171, file: !47, line: 2380, baseType: !1190, size: 64, offset: 320)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{null, !1161}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1171, file: !47, line: 2381, baseType: !1194, size: 64, offset: 384)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !18, line: 402, size: 9216, align: 512, elements: !1196)
!1196 = !{!1197, !1198, !1199, !1203, !1993, !2019, !2020, !2021, !2022, !2026, !2029, !2030, !2031, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2099, !2103, !2123, !2143, !2144, !2145, !2146, !2155, !2178, !2179, !2182, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2196, !2197, !2308, !2316, !2317, !2318, !2320, !2324, !2325, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2347, !2348, !2349, !2353}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1195, file: !18, line: 403, baseType: !17, size: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1195, file: !18, line: 406, baseType: !213, size: 128, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1195, file: !18, line: 409, baseType: !1200, size: 448, offset: 192)
!1200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !788, size: 448, elements: !1201)
!1201 = !{!1202}
!1202 = !DISubrange(count: 56)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1195, file: !18, line: 417, baseType: !1204, size: 768, offset: 640)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !18, line: 45, size: 768, elements: !1205)
!1205 = !{!1206, !1986, !1987, !1988, !1991}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1204, file: !18, line: 46, baseType: !1207, size: 512)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1208, line: 64, size: 512, elements: !1209)
!1208 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1209 = !{!1210, !1211, !1212, !1214, !1258, !1865, !1976, !1981, !1982, !1983, !1984, !1985}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1207, file: !1208, line: 65, baseType: !805, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1207, file: !1208, line: 66, baseType: !213, size: 128, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1207, file: !1208, line: 67, baseType: !1213, size: 64, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1207, file: !1208, line: 68, baseType: !1215, size: 64, offset: 256)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1208, line: 168, size: 768, elements: !1217)
!1217 = !{!1218, !1219, !1220, !1221}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1216, file: !1208, line: 169, baseType: !213, size: 128)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1216, file: !1208, line: 170, baseType: !507, size: 32, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1216, file: !1208, line: 171, baseType: !1207, size: 512, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1216, file: !1208, line: 172, baseType: !1222, size: 64, offset: 704)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1224)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1208, line: 133, size: 192, elements: !1225)
!1225 = !{!1226, !1233, !1238}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1224, file: !1208, line: 134, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1228)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!127, !1231}
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1207)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1224, file: !1208, line: 135, baseType: !1234, size: 64, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1235)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!805, !1231}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1224, file: !1208, line: 136, baseType: !1239, size: 64, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1240)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!127, !1231, !1243}
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1208, line: 125, size: 20736, elements: !1245)
!1245 = !{!1246, !1248, !1252, !1253, !1257}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1244, file: !1208, line: 126, baseType: !1247, size: 192)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, size: 192, elements: !591)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1244, file: !1208, line: 127, baseType: !1249, size: 4096, offset: 192)
!1249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, size: 4096, elements: !1250)
!1250 = !{!1251}
!1251 = !DISubrange(count: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1244, file: !1208, line: 128, baseType: !127, size: 32, offset: 4288)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1244, file: !1208, line: 129, baseType: !1254, size: 16384, offset: 4320)
!1254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !788, size: 16384, elements: !1255)
!1255 = !{!1256}
!1256 = !DISubrange(count: 2048)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1244, file: !1208, line: 130, baseType: !127, size: 32, offset: 20704)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1207, file: !1208, line: 69, baseType: !1259, size: 64, offset: 320)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1261)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1208, line: 116, size: 384, elements: !1262)
!1262 = !{!1263, !1267, !1286, !1825, !1855, !1859}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1261, file: !1208, line: 117, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{null, !1213}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1261, file: !1208, line: 118, baseType: !1268, size: 64, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1270)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1271, line: 254, size: 128, elements: !1272)
!1271 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1272 = !{!1273, !1282}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1270, file: !1271, line: 255, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!1109, !1213, !1277, !815}
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1271, line: 30, size: 128, elements: !1279)
!1279 = !{!1280, !1281}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1278, file: !1271, line: 31, baseType: !805, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1278, file: !1271, line: 32, baseType: !960, size: 16, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1270, file: !1271, line: 256, baseType: !1283, size: 64, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!1109, !1213, !1277, !805, !1112}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1261, file: !1208, line: 119, baseType: !1287, size: 64, offset: 128)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1290)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1271, line: 84, size: 320, elements: !1291)
!1291 = !{!1292, !1293, !1297, !1821, !1823}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1290, file: !1271, line: 85, baseType: !805, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1290, file: !1271, line: 86, baseType: !1294, size: 64, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!960, !1213, !1277, !127}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1290, file: !1271, line: 88, baseType: !1298, size: 64, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!960, !1213, !1301, !127}
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1271, line: 175, size: 512, elements: !1303)
!1303 = !{!1304, !1305, !1306, !1307, !1812, !1816, !1817}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1302, file: !1271, line: 176, baseType: !1278, size: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1302, file: !1271, line: 177, baseType: !1112, size: 64, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1302, file: !1271, line: 178, baseType: !120, size: 64, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1302, file: !1271, line: 179, baseType: !1308, size: 64, offset: 256)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!1311}
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !47, line: 472, size: 1536, align: 64, elements: !1313)
!1313 = !{!1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1804, !1805, !1806, !1809, !1810, !1811}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1312, file: !47, line: 473, baseType: !956, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1312, file: !47, line: 474, baseType: !638, size: 128, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1312, file: !47, line: 475, baseType: !742, size: 320, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1312, file: !47, line: 476, baseType: !643, size: 32, offset: 512)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1312, file: !47, line: 477, baseType: !154, size: 32, offset: 544)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1312, file: !47, line: 482, baseType: !372, size: 128, offset: 576)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1312, file: !47, line: 483, baseType: !123, size: 64, offset: 704)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1312, file: !47, line: 484, baseType: !123, size: 64, offset: 768)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1312, file: !47, line: 485, baseType: !1323, size: 64, offset: 832)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1325)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !47, line: 404, size: 1280, elements: !1326)
!1326 = !{!1327, !1629, !1699, !1703, !1707, !1713, !1719, !1723, !1728, !1732, !1736, !1740, !1768, !1772, !1776, !1780, !1785, !1789, !1796, !1800}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1325, file: !47, line: 405, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!127, !1331, !1627}
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !25, line: 74, size: 512, align: 128, elements: !1333)
!1333 = !{!1334, !1335, !1621, !1626}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1332, file: !25, line: 75, baseType: !123, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, scope: !1332, file: !25, line: 83, baseType: !1336, size: 320, offset: 64)
!1336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1332, file: !25, line: 83, size: 320, elements: !1337)
!1337 = !{!1338, !1359, !1373, !1377, !1620}
!1338 = !DIDerivedType(tag: DW_TAG_member, scope: !1336, file: !25, line: 84, baseType: !1339, size: 320)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1336, file: !25, line: 84, size: 320, elements: !1340)
!1340 = !{!1341, !1352, !1353, !1358}
!1341 = !DIDerivedType(tag: DW_TAG_member, scope: !1339, file: !25, line: 90, baseType: !1342, size: 128)
!1342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1339, file: !25, line: 90, size: 128, elements: !1343)
!1343 = !{!1344, !1345, !1350, !1351}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1342, file: !25, line: 91, baseType: !213, size: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, scope: !1342, file: !25, line: 94, baseType: !1346, size: 128)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1342, file: !25, line: 94, size: 128, elements: !1347)
!1347 = !{!1348, !1349}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1346, file: !25, line: 96, baseType: !120, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1346, file: !25, line: 98, baseType: !7, size: 32, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1342, file: !25, line: 102, baseType: !213, size: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1342, file: !25, line: 103, baseType: !213, size: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1339, file: !25, line: 106, baseType: !1311, size: 64, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, scope: !1339, file: !25, line: 107, baseType: !1354, size: 64, offset: 192)
!1354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1339, file: !25, line: 107, size: 64, elements: !1355)
!1355 = !{!1356, !1357}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1354, file: !25, line: 108, baseType: !123, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1354, file: !25, line: 109, baseType: !123, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1339, file: !25, line: 117, baseType: !123, size: 64, offset: 256)
!1359 = !DIDerivedType(tag: DW_TAG_member, scope: !1336, file: !25, line: 119, baseType: !1360, size: 320)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1336, file: !25, line: 119, size: 320, elements: !1361)
!1361 = !{!1362, !1363, !1366, !1367, !1368}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1360, file: !25, line: 124, baseType: !123, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1360, file: !25, line: 125, baseType: !1364, size: 64, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !25, line: 125, flags: DIFlagFwdDecl)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1360, file: !25, line: 126, baseType: !123, size: 64, offset: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1360, file: !25, line: 127, baseType: !123, size: 64, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_member, scope: !1360, file: !25, line: 128, baseType: !1369, size: 64, offset: 256)
!1369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1360, file: !25, line: 128, size: 64, elements: !1370)
!1370 = !{!1371, !1372}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1369, file: !25, line: 133, baseType: !123, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1369, file: !25, line: 138, baseType: !546, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, scope: !1336, file: !25, line: 141, baseType: !1374, size: 64)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1336, file: !25, line: 141, size: 64, elements: !1375)
!1375 = !{!1376}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1374, file: !25, line: 142, baseType: !123, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, scope: !1336, file: !25, line: 144, baseType: !1378, size: 128)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1336, file: !25, line: 144, size: 128, elements: !1379)
!1379 = !{!1380, !1619}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1378, file: !25, line: 146, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !65, line: 126, size: 1216, elements: !1383)
!1383 = !{!1384, !1393, !1414, !1425, !1426, !1427, !1428, !1601, !1602, !1603}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1382, file: !65, line: 127, baseType: !1385, size: 384)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !65, line: 21, size: 384, elements: !1386)
!1386 = !{!1387, !1388, !1389, !1390, !1391, !1392}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1385, file: !65, line: 22, baseType: !123, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1385, file: !65, line: 23, baseType: !126, size: 64, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1385, file: !65, line: 24, baseType: !126, size: 64, offset: 128)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1385, file: !65, line: 25, baseType: !123, size: 64, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1385, file: !65, line: 26, baseType: !123, size: 64, offset: 256)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1385, file: !65, line: 27, baseType: !123, size: 64, offset: 320)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1382, file: !65, line: 128, baseType: !1394, size: 128, offset: 384)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1395, line: 105, size: 128, elements: !1396)
!1395 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1396 = !{!1397, !1398}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1394, file: !1395, line: 110, baseType: !123, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1394, file: !1395, line: 118, baseType: !1399, size: 64, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1395, line: 95, size: 448, elements: !1401)
!1401 = !{!1402, !1403, !1409, !1410, !1411, !1412, !1413}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1400, file: !1395, line: 96, baseType: !546, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1400, file: !1395, line: 97, baseType: !1404, size: 64, offset: 64)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1395, line: 60, baseType: !1406)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{null, !1408}
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1400, file: !1395, line: 98, baseType: !1404, size: 64, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1400, file: !1395, line: 99, baseType: !802, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1400, file: !1395, line: 100, baseType: !802, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1400, file: !1395, line: 101, baseType: !533, size: 128, align: 64, offset: 256)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1400, file: !1395, line: 102, baseType: !1408, size: 64, offset: 384)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1382, file: !65, line: 129, baseType: !1415, size: 256, offset: 512)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1416, line: 26, size: 256, elements: !1417)
!1416 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1417 = !{!1418, !1419}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1415, file: !1416, line: 27, baseType: !7, size: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1415, file: !1416, line: 28, baseType: !1420, size: 192, offset: 64)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1421, line: 43, size: 192, elements: !1422)
!1421 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1422 = !{!1423, !1424}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1420, file: !1421, line: 44, baseType: !306, size: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1420, file: !1421, line: 45, baseType: !213, size: 128, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1382, file: !65, line: 130, baseType: !64, size: 32, offset: 768)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1382, file: !65, line: 131, baseType: !7, size: 32, offset: 800)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1382, file: !65, line: 132, baseType: !123, size: 64, offset: 832)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1382, file: !65, line: 133, baseType: !1429, size: 64, offset: 896)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1431)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !65, line: 77, size: 192, elements: !1432)
!1432 = !{!1433, !1437, !1597}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1431, file: !65, line: 83, baseType: !1434, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{null, !1331}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1431, file: !65, line: 89, baseType: !1438, size: 64, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!1441, !1442}
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !25, line: 1184, baseType: !7)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1444, line: 512, size: 896, elements: !1445)
!1444 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1445 = !{!1446, !1564, !1565, !1572, !1579, !1589, !1590, !1591, !1593, !1595}
!1446 = !DIDerivedType(tag: DW_TAG_member, scope: !1443, file: !1444, line: 513, baseType: !1447, size: 320)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1443, file: !1444, line: 513, size: 320, elements: !1448)
!1448 = !{!1449, !1560, !1561, !1562, !1563}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1447, file: !1444, line: 514, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !25, line: 625, size: 1344, elements: !1452)
!1452 = !{!1453, !1462, !1463, !1471, !1478, !1479, !1484, !1485, !1490, !1491, !1494, !1553, !1554, !1555, !1556, !1557, !1558}
!1453 = !DIDerivedType(tag: DW_TAG_member, scope: !1451, file: !25, line: 628, baseType: !1454, size: 128)
!1454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1451, file: !25, line: 628, size: 128, elements: !1455)
!1455 = !{!1456, !1461}
!1456 = !DIDerivedType(tag: DW_TAG_member, scope: !1454, file: !25, line: 629, baseType: !1457, size: 128)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1454, file: !25, line: 629, size: 128, elements: !1458)
!1458 = !{!1459, !1460}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1457, file: !25, line: 631, baseType: !123, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1457, file: !25, line: 632, baseType: !123, size: 64, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1454, file: !25, line: 635, baseType: !533, size: 128, align: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1451, file: !25, line: 639, baseType: !489, size: 64, offset: 128)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1451, file: !25, line: 640, baseType: !1464, size: 64, offset: 192)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1465, line: 297, baseType: !1466)
!1465 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1465, line: 297, size: 64, elements: !1467)
!1467 = !{!1468}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1466, file: !1465, line: 297, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1470, line: 19, baseType: !123)
!1470 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1471 = !DIDerivedType(tag: DW_TAG_member, scope: !1451, file: !25, line: 646, baseType: !1472, size: 64, offset: 256)
!1472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1451, file: !25, line: 646, size: 64, elements: !1473)
!1473 = !{!1474, !1477}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1472, file: !25, line: 647, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1476)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !25, line: 542, baseType: !123)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1472, file: !25, line: 648, baseType: !1476, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1451, file: !25, line: 666, baseType: !127, size: 32, offset: 320)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1451, file: !25, line: 667, baseType: !1480, size: 64, offset: 384)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !25, line: 579, size: 320, elements: !1482)
!1482 = !{!1483}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1481, file: !25, line: 580, baseType: !742, size: 320)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1451, file: !25, line: 670, baseType: !802, size: 8, offset: 448)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1451, file: !25, line: 681, baseType: !1486, size: 256, offset: 512)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1451, file: !25, line: 678, size: 256, elements: !1487)
!1487 = !{!1488, !1489}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1486, file: !25, line: 679, baseType: !200, size: 192, align: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1486, file: !25, line: 680, baseType: !123, size: 64, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1451, file: !25, line: 689, baseType: !213, size: 128, offset: 768)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1451, file: !25, line: 691, baseType: !1492, size: 64, offset: 896)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !25, line: 691, flags: DIFlagFwdDecl)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1451, file: !25, line: 694, baseType: !1495, size: 64, offset: 960)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1497)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1444, line: 563, size: 1024, elements: !1498)
!1498 = !{!1499, !1503, !1504, !1508, !1512, !1516, !1517, !1521, !1525, !1529, !1530, !1531, !1535, !1539, !1545, !1549}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1497, file: !1444, line: 564, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{null, !1450}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1497, file: !1444, line: 569, baseType: !1500, size: 64, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1497, file: !1444, line: 571, baseType: !1505, size: 64, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!127, !1450, !123}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1497, file: !1444, line: 572, baseType: !1509, size: 64, offset: 192)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!127, !1450}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1497, file: !1444, line: 578, baseType: !1513, size: 64, offset: 256)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!127, !1450, !123, !123, !123}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1497, file: !1444, line: 580, baseType: !1438, size: 64, offset: 320)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1497, file: !1444, line: 581, baseType: !1518, size: 64, offset: 384)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!1441, !1442, !7}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1497, file: !1444, line: 582, baseType: !1522, size: 64, offset: 448)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!1441, !1442, !123, !123}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1497, file: !1444, line: 584, baseType: !1526, size: 64, offset: 512)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!123, !1450}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1497, file: !1444, line: 588, baseType: !1438, size: 64, offset: 576)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1497, file: !1444, line: 591, baseType: !1438, size: 64, offset: 640)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1497, file: !1444, line: 597, baseType: !1532, size: 64, offset: 704)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!127, !1450, !123, !120, !127, !127}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1497, file: !1444, line: 603, baseType: !1536, size: 64, offset: 768)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!805, !1450}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1497, file: !1444, line: 613, baseType: !1540, size: 64, offset: 832)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!127, !1450, !1543}
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !132, line: 54, flags: DIFlagFwdDecl)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1497, file: !1444, line: 625, baseType: !1546, size: 64, offset: 896)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!1543, !1450, !123}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1497, file: !1444, line: 633, baseType: !1550, size: 64, offset: 960)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!1331, !1450, !123}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1451, file: !25, line: 697, baseType: !123, size: 64, offset: 1024)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1451, file: !25, line: 699, baseType: !525, size: 64, offset: 1088)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1451, file: !25, line: 700, baseType: !120, size: 64, offset: 1152)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1451, file: !25, line: 711, baseType: !546, size: 64, offset: 1216)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1451, file: !25, line: 717, baseType: !1543, size: 64, offset: 1280)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1451, file: !25, line: 722, baseType: !1559, offset: 1344)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !25, line: 570, elements: !518)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1447, file: !1444, line: 515, baseType: !643, size: 32, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1447, file: !1444, line: 516, baseType: !123, size: 64, offset: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1447, file: !1444, line: 517, baseType: !123, size: 64, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1447, file: !1444, line: 518, baseType: !123, size: 64, offset: 256)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1443, file: !1444, line: 520, baseType: !24, size: 32, offset: 320)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1443, file: !1444, line: 522, baseType: !1566, size: 64, offset: 384)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1470, line: 22, baseType: !1568)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1470, line: 22, size: 64, elements: !1569)
!1569 = !{!1570}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1568, file: !1470, line: 22, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1470, line: 15, baseType: !123)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1443, file: !1444, line: 524, baseType: !1573, size: 64, offset: 448)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1465, line: 372, baseType: !1575)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1465, line: 372, size: 64, elements: !1576)
!1576 = !{!1577}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1575, file: !1465, line: 372, baseType: !1578, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1470, line: 16, baseType: !123)
!1579 = !DIDerivedType(tag: DW_TAG_member, scope: !1443, file: !1444, line: 527, baseType: !1580, size: 64, offset: 512)
!1580 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1443, file: !1444, line: 527, size: 64, elements: !1581)
!1581 = !{!1582, !1588}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1580, file: !1444, line: 528, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1470, line: 21, baseType: !1584)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1470, line: 21, size: 64, elements: !1585)
!1585 = !{!1586}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1584, file: !1470, line: 21, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1470, line: 14, baseType: !123)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1580, file: !1444, line: 529, baseType: !1567, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1443, file: !1444, line: 534, baseType: !1331, size: 64, offset: 576)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1443, file: !1444, line: 535, baseType: !1331, size: 64, offset: 640)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1443, file: !1444, line: 541, baseType: !1592, size: 64, offset: 704)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1443, file: !1444, line: 545, baseType: !1594, size: 64, offset: 768)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1443, file: !1444, line: 549, baseType: !1596, size: 64, offset: 832)
!1596 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1465, line: 520, baseType: !1331)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1431, file: !65, line: 100, baseType: !1598, size: 64, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!127, !1381, !123, !123, !127}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1382, file: !65, line: 134, baseType: !120, size: 64, offset: 960)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1382, file: !65, line: 135, baseType: !127, size: 32, offset: 1024)
!1603 = !DIDerivedType(tag: DW_TAG_member, scope: !1382, file: !65, line: 136, baseType: !1604, size: 128, offset: 1088)
!1604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1382, file: !65, line: 136, size: 128, elements: !1605)
!1605 = !{!1606, !1612}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1604, file: !65, line: 137, baseType: !1607, size: 128)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1608, line: 6, size: 128, elements: !1609)
!1608 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1609 = !{!1610, !1611}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1607, file: !1608, line: 7, baseType: !208, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1607, file: !1608, line: 8, baseType: !208, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, scope: !1604, file: !65, line: 138, baseType: !1613)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1604, file: !65, line: 138, elements: !1614)
!1614 = !{!1615, !1617}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1613, file: !65, line: 138, baseType: !1616)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1613, file: !65, line: 138, elements: !518)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1613, file: !65, line: 138, baseType: !1618)
!1618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1607, elements: !680)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1378, file: !25, line: 147, baseType: !120, size: 64, offset: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1336, file: !25, line: 161, baseType: !533, size: 128, align: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, scope: !1332, file: !25, line: 164, baseType: !1622, size: 32, offset: 384)
!1622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1332, file: !25, line: 164, size: 32, elements: !1623)
!1623 = !{!1624, !1625}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1622, file: !25, line: 169, baseType: !154, size: 32)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1622, file: !25, line: 177, baseType: !7, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1332, file: !25, line: 181, baseType: !154, size: 32, offset: 416)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !47, line: 309, flags: DIFlagFwdDecl)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1325, file: !47, line: 406, baseType: !1630, size: 64, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!127, !525, !1633}
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !25, line: 293, size: 1536, elements: !1635)
!1635 = !{!1636, !1666, !1680}
!1636 = !DIDerivedType(tag: DW_TAG_member, scope: !1634, file: !25, line: 295, baseType: !1637, size: 512)
!1637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1634, file: !25, line: 295, size: 512, elements: !1638)
!1638 = !{!1639, !1665}
!1639 = !DIDerivedType(tag: DW_TAG_member, scope: !1637, file: !25, line: 296, baseType: !1640, size: 448)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1637, file: !25, line: 296, size: 448, elements: !1641)
!1641 = !{!1642, !1643, !1652, !1653, !1654, !1663, !1664}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1640, file: !25, line: 298, baseType: !123, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, scope: !1640, file: !25, line: 299, baseType: !1644, size: 128, offset: 64)
!1644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1640, file: !25, line: 299, size: 128, elements: !1645)
!1645 = !{!1646, !1647}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1644, file: !25, line: 300, baseType: !213, size: 128)
!1647 = !DIDerivedType(tag: DW_TAG_member, scope: !1644, file: !25, line: 302, baseType: !1648, size: 128)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1644, file: !25, line: 302, size: 128, elements: !1649)
!1649 = !{!1650, !1651}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1648, file: !25, line: 303, baseType: !120, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1648, file: !25, line: 305, baseType: !7, size: 32, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1640, file: !25, line: 310, baseType: !1311, size: 64, offset: 192)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1640, file: !25, line: 311, baseType: !123, size: 64, offset: 256)
!1654 = !DIDerivedType(tag: DW_TAG_member, scope: !1640, file: !25, line: 312, baseType: !1655, size: 64, offset: 320)
!1655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1640, file: !25, line: 312, size: 64, elements: !1656)
!1656 = !{!1657, !1658}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1655, file: !25, line: 313, baseType: !120, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1655, file: !25, line: 314, baseType: !1659, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !25, line: 257, baseType: !1660)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 255, size: 64, elements: !1661)
!1661 = !{!1662}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1660, file: !25, line: 256, baseType: !123, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1640, file: !25, line: 316, baseType: !154, size: 32, offset: 384)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1640, file: !25, line: 317, baseType: !154, size: 32, offset: 416)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1637, file: !25, line: 323, baseType: !1332, size: 512, align: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, scope: !1634, file: !25, line: 325, baseType: !1667, size: 512, offset: 512)
!1667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1634, file: !25, line: 325, size: 512, elements: !1668)
!1668 = !{!1669, !1679}
!1669 = !DIDerivedType(tag: DW_TAG_member, scope: !1667, file: !25, line: 326, baseType: !1670, size: 320)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1667, file: !25, line: 326, size: 320, elements: !1671)
!1671 = !{!1672, !1673, !1674, !1675, !1676, !1677, !1678}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1670, file: !25, line: 327, baseType: !123, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1670, file: !25, line: 328, baseType: !123, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1670, file: !25, line: 329, baseType: !123, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1670, file: !25, line: 331, baseType: !154, size: 32, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1670, file: !25, line: 332, baseType: !154, size: 32, offset: 224)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1670, file: !25, line: 333, baseType: !154, size: 32, offset: 256)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1670, file: !25, line: 335, baseType: !7, size: 32, offset: 288)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1667, file: !25, line: 339, baseType: !1332, size: 512, align: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, scope: !1634, file: !25, line: 341, baseType: !1681, size: 512, offset: 1024)
!1681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1634, file: !25, line: 341, size: 512, elements: !1682)
!1682 = !{!1683, !1692, !1698}
!1683 = !DIDerivedType(tag: DW_TAG_member, scope: !1681, file: !25, line: 342, baseType: !1684, size: 384)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1681, file: !25, line: 342, size: 384, elements: !1685)
!1685 = !{!1686, !1687, !1688, !1689, !1690, !1691}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1684, file: !25, line: 343, baseType: !123, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1684, file: !25, line: 344, baseType: !123, size: 64, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1684, file: !25, line: 346, baseType: !120, size: 64, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1684, file: !25, line: 347, baseType: !120, size: 64, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1684, file: !25, line: 348, baseType: !120, size: 64, offset: 256)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1684, file: !25, line: 349, baseType: !120, size: 64, offset: 320)
!1692 = !DIDerivedType(tag: DW_TAG_member, scope: !1681, file: !25, line: 352, baseType: !1693, size: 256)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1681, file: !25, line: 352, size: 256, elements: !1694)
!1694 = !{!1695, !1696, !1697}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1693, file: !25, line: 353, baseType: !123, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1693, file: !25, line: 354, baseType: !123, size: 64, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1693, file: !25, line: 356, baseType: !213, size: 128, offset: 128)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1681, file: !25, line: 359, baseType: !1332, size: 512, align: 128)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1325, file: !47, line: 409, baseType: !1700, size: 64, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!127, !1311, !1627}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1325, file: !47, line: 412, baseType: !1704, size: 64, offset: 192)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!802, !1311, !1633}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1325, file: !47, line: 414, baseType: !1708, size: 64, offset: 256)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{null, !1711}
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !47, line: 310, flags: DIFlagFwdDecl)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1325, file: !47, line: 416, baseType: !1714, size: 64, offset: 320)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!127, !525, !1311, !565, !7, !1717, !1718}
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1325, file: !47, line: 419, baseType: !1720, size: 64, offset: 384)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!127, !525, !1311, !565, !7, !7, !1331, !120}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1325, file: !47, line: 424, baseType: !1724, size: 64, offset: 448)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!1727, !1311, !1727}
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !122, line: 131, baseType: !208)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1325, file: !47, line: 425, baseType: !1729, size: 64, offset: 512)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{null, !1633, !1112, !1112}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1325, file: !47, line: 426, baseType: !1733, size: 64, offset: 576)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!802, !1633, !643}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1325, file: !47, line: 427, baseType: !1737, size: 64, offset: 640)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{null, !1633}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1325, file: !47, line: 428, baseType: !1741, size: 64, offset: 704)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!1109, !1744, !1766}
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !47, line: 373, size: 384, elements: !1746)
!1746 = !{!1747, !1748, !1749, !1753, !1754, !1755, !1756}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1745, file: !47, line: 374, baseType: !525, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1745, file: !47, line: 375, baseType: !565, size: 64, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1745, file: !47, line: 376, baseType: !1750, size: 64, offset: 128)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{null, !1744, !128}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1745, file: !47, line: 377, baseType: !120, size: 64, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1745, file: !47, line: 378, baseType: !127, size: 32, offset: 256)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1745, file: !47, line: 379, baseType: !177, size: 16, offset: 288)
!1756 = !DIDerivedType(tag: DW_TAG_member, scope: !1745, file: !47, line: 380, baseType: !1757, size: 64, offset: 320)
!1757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1745, file: !47, line: 380, size: 64, elements: !1758)
!1758 = !{!1759, !1762}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1757, file: !47, line: 386, baseType: !1760, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !47, line: 386, flags: DIFlagFwdDecl)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1757, file: !47, line: 395, baseType: !1763, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!1109, !120}
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !47, line: 69, flags: DIFlagFwdDecl)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1325, file: !47, line: 433, baseType: !1769, size: 64, offset: 768)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!127, !1311, !1633, !1633, !57}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1325, file: !47, line: 435, baseType: !1773, size: 64, offset: 832)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!127, !1633}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1325, file: !47, line: 436, baseType: !1777, size: 64, offset: 896)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!802, !1633, !1112, !1112}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1325, file: !47, line: 438, baseType: !1781, size: 64, offset: 960)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{null, !1633, !1784, !1784}
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1325, file: !47, line: 439, baseType: !1786, size: 64, offset: 1024)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!127, !1311, !1331}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1325, file: !47, line: 442, baseType: !1790, size: 64, offset: 1088)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!127, !1793, !525, !1795}
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !47, line: 66, flags: DIFlagFwdDecl)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1325, file: !47, line: 444, baseType: !1797, size: 64, offset: 1152)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{null, !525}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1325, file: !47, line: 445, baseType: !1801, size: 64, offset: 1216)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!127, !1744, !1766}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1312, file: !47, line: 486, baseType: !123, size: 64, offset: 896)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1312, file: !47, line: 487, baseType: !742, size: 320, offset: 960)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1312, file: !47, line: 488, baseType: !1807, size: 32, offset: 1280)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1808, line: 8, baseType: !141)
!1808 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1312, file: !47, line: 489, baseType: !507, size: 32, offset: 1312)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1312, file: !47, line: 490, baseType: !213, size: 128, offset: 1344)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1312, file: !47, line: 491, baseType: !120, size: 64, offset: 1472)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1302, file: !1271, line: 180, baseType: !1813, size: 64, offset: 320)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!1109, !525, !1213, !1301, !815, !565, !1112}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1302, file: !1271, line: 182, baseType: !1813, size: 64, offset: 384)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1302, file: !1271, line: 184, baseType: !1818, size: 64, offset: 448)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!127, !525, !1213, !1301, !1450}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1290, file: !1271, line: 90, baseType: !1822, size: 64, offset: 192)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1290, file: !1271, line: 91, baseType: !1824, size: 64, offset: 256)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1261, file: !1208, line: 120, baseType: !1826, size: 64, offset: 192)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!1829, !1231}
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1831)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !41, line: 39, size: 384, elements: !1832)
!1832 = !{!1833, !1834, !1838, !1842, !1850, !1854}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1831, file: !41, line: 40, baseType: !40, size: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1831, file: !41, line: 41, baseType: !1835, size: 64, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!802}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1831, file: !41, line: 42, baseType: !1839, size: 64, offset: 128)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!120}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1831, file: !41, line: 43, baseType: !1843, size: 64, offset: 192)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!1846, !1848}
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !41, line: 19, flags: DIFlagFwdDecl)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1831, file: !41, line: 44, baseType: !1851, size: 64, offset: 256)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!1846}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1831, file: !41, line: 45, baseType: !988, size: 64, offset: 320)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1261, file: !1208, line: 121, baseType: !1856, size: 64, offset: 256)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!1846, !1231}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1261, file: !1208, line: 122, baseType: !1860, size: 64, offset: 320)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{null, !1231, !1863, !1864}
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1207, file: !1208, line: 70, baseType: !1866, size: 64, offset: 384)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1868, line: 190, size: 1152, elements: !1869)
!1868 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1869 = !{!1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1968, !1969, !1970, !1971, !1972, !1975}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1867, file: !1868, line: 191, baseType: !154, size: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1867, file: !1868, line: 192, baseType: !154, size: 32, offset: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1867, file: !1868, line: 202, baseType: !1866, size: 64, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1867, file: !1868, line: 203, baseType: !805, size: 64, offset: 128)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1867, file: !1868, line: 205, baseType: !200, size: 192, align: 64, offset: 192)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1867, file: !1868, line: 207, baseType: !1846, size: 64, offset: 384)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1867, file: !1868, line: 208, baseType: !7, size: 32, offset: 448)
!1877 = !DIDerivedType(tag: DW_TAG_member, scope: !1867, file: !1868, line: 209, baseType: !1878, size: 256, offset: 512)
!1878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1867, file: !1868, line: 209, size: 256, elements: !1879)
!1879 = !{!1880, !1889, !1893}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1878, file: !1868, line: 210, baseType: !1881, size: 256)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1868, line: 153, size: 256, elements: !1882)
!1882 = !{!1883, !1884, !1885, !1888}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1881, file: !1868, line: 154, baseType: !123, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1881, file: !1868, line: 156, baseType: !375, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1881, file: !1868, line: 162, baseType: !1886, size: 64, offset: 128)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1868, line: 162, flags: DIFlagFwdDecl)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1881, file: !1868, line: 167, baseType: !123, size: 64, offset: 192)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1878, file: !1868, line: 211, baseType: !1890, size: 64)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1868, line: 170, size: 64, elements: !1891)
!1891 = !{!1892}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1890, file: !1868, line: 171, baseType: !1866, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1878, file: !1868, line: 212, baseType: !1894, size: 256)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1868, line: 174, size: 256, elements: !1895)
!1895 = !{!1896, !1963, !1966, !1967}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1894, file: !1868, line: 175, baseType: !1897, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1899)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1868, line: 271, size: 768, elements: !1900)
!1900 = !{!1901, !1923, !1927, !1931, !1936, !1940, !1944, !1948, !1949, !1950, !1951, !1959}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1899, file: !1868, line: 276, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{!127, !1905}
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1868, line: 251, size: 1216, elements: !1907)
!1907 = !{!1908, !1909, !1910, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1906, file: !1868, line: 253, baseType: !1866, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1906, file: !1868, line: 254, baseType: !525, size: 64, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1906, file: !1868, line: 255, baseType: !1911, size: 64, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !132, line: 66, flags: DIFlagFwdDecl)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1906, file: !1868, line: 256, baseType: !120, size: 64, offset: 192)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1906, file: !1868, line: 259, baseType: !553, size: 256, offset: 256)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1906, file: !1868, line: 260, baseType: !553, size: 256, offset: 512)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1906, file: !1868, line: 261, baseType: !127, size: 32, offset: 768)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1906, file: !1868, line: 262, baseType: !213, size: 128, offset: 832)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1906, file: !1868, line: 263, baseType: !815, size: 64, offset: 960)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1906, file: !1868, line: 265, baseType: !1112, size: 64, offset: 1024)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1906, file: !1868, line: 266, baseType: !802, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1906, file: !1868, line: 267, baseType: !802, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1906, file: !1868, line: 268, baseType: !1495, size: 64, offset: 1152)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1899, file: !1868, line: 277, baseType: !1924, size: 64, offset: 64)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{null, !1905}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1899, file: !1868, line: 290, baseType: !1928, size: 64, offset: 128)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!127, !1911, !120}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1899, file: !1868, line: 292, baseType: !1932, size: 64, offset: 192)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!120, !1911, !1935}
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1899, file: !1868, line: 293, baseType: !1937, size: 64, offset: 256)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!120, !1911, !120, !1935}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1899, file: !1868, line: 294, baseType: !1941, size: 64, offset: 320)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{null, !1911, !120}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1899, file: !1868, line: 296, baseType: !1945, size: 64, offset: 384)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!1109, !1905, !815, !1112, !565}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1899, file: !1868, line: 306, baseType: !1112, size: 64, offset: 448)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1899, file: !1868, line: 313, baseType: !802, size: 8, offset: 512)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1899, file: !1868, line: 314, baseType: !1945, size: 64, offset: 576)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1899, file: !1868, line: 317, baseType: !1952, size: 64, offset: 640)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!1955, !1905, !1957}
!1955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1956, line: 59, baseType: !7)
!1956 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !47, line: 61, flags: DIFlagFwdDecl)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1899, file: !1868, line: 320, baseType: !1960, size: 64, offset: 704)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!127, !1905, !1450}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1894, file: !1868, line: 176, baseType: !1964, size: 64, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1868, line: 35, flags: DIFlagFwdDecl)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1894, file: !1868, line: 177, baseType: !565, size: 64, offset: 128)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1894, file: !1868, line: 178, baseType: !1866, size: 64, offset: 192)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1867, file: !1868, line: 215, baseType: !120, size: 64, offset: 768)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1867, file: !1868, line: 221, baseType: !208, size: 64, offset: 832)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1867, file: !1868, line: 223, baseType: !179, size: 16, offset: 896)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1867, file: !1868, line: 224, baseType: !960, size: 16, offset: 912)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1867, file: !1868, line: 225, baseType: !1973, size: 64, offset: 960)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1868, line: 36, flags: DIFlagFwdDecl)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1867, file: !1868, line: 227, baseType: !533, size: 128, align: 64, offset: 1024)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1207, file: !1208, line: 71, baseType: !1977, size: 32, offset: 448)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1978, line: 19, size: 32, elements: !1979)
!1978 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1979 = !{!1980}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1977, file: !1978, line: 20, baseType: !149, size: 32)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1207, file: !1208, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1207, file: !1208, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1207, file: !1208, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1207, file: !1208, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1207, file: !1208, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1204, file: !18, line: 47, baseType: !1194, size: 64, offset: 512)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1204, file: !18, line: 48, baseType: !1213, size: 64, offset: 576)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1204, file: !18, line: 49, baseType: !1989, size: 64, offset: 640)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !18, line: 49, flags: DIFlagFwdDecl)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1204, file: !18, line: 50, baseType: !1992, size: 64, offset: 704)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1195, file: !18, line: 418, baseType: !1994, size: 64, offset: 1408)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !18, line: 53, size: 448, elements: !1996)
!1996 = !{!1997, !1998, !2003, !2007, !2011, !2015}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1995, file: !18, line: 54, baseType: !1278, size: 128)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1995, file: !18, line: 55, baseType: !1999, size: 64, offset: 128)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!1109, !1994, !2002, !815}
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1995, file: !18, line: 57, baseType: !2004, size: 64, offset: 192)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!1109, !1994, !2002, !805, !1112}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1995, file: !18, line: 59, baseType: !2008, size: 64, offset: 256)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{null, !1194, !805}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1995, file: !18, line: 60, baseType: !2012, size: 64, offset: 320)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!127, !1194}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1995, file: !18, line: 61, baseType: !2016, size: 64, offset: 384)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{null, !1194}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1195, file: !18, line: 419, baseType: !805, size: 64, offset: 1472)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1195, file: !18, line: 420, baseType: !805, size: 64, offset: 1536)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1195, file: !18, line: 421, baseType: !1213, size: 64, offset: 1600)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1195, file: !18, line: 424, baseType: !2023, size: 64, offset: 1664)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2025)
!2025 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !18, line: 424, flags: DIFlagFwdDecl)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1195, file: !18, line: 425, baseType: !2027, size: 64, offset: 1728)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !734)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1195, file: !18, line: 426, baseType: !7, size: 32, offset: 1792)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1195, file: !18, line: 435, baseType: !553, size: 256, offset: 1856)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1195, file: !18, line: 437, baseType: !2032, size: 64, offset: 2112)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2034, line: 69, size: 320, elements: !2035)
!2034 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2035 = !{!2036, !2037, !2038, !2055, !2057, !2061, !2062}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2033, file: !2034, line: 70, baseType: !805, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2033, file: !2034, line: 71, baseType: !1194, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2033, file: !2034, line: 72, baseType: !2039, size: 64, offset: 128)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2041)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2034, line: 47, size: 256, elements: !2042)
!2042 = !{!2043, !2044, !2050, !2054}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2041, file: !2034, line: 49, baseType: !7, size: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2041, file: !2034, line: 51, baseType: !2045, size: 64, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!127, !805, !2048}
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2033)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2041, file: !2034, line: 53, baseType: !2051, size: 64, offset: 128)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!127, !815, !2048}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2041, file: !2034, line: 55, baseType: !988, size: 64, offset: 192)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2033, file: !2034, line: 73, baseType: !2056, size: 16, offset: 192)
!2056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2033, file: !2034, line: 74, baseType: !2058, size: 8, offset: 208)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !142, line: 16, baseType: !2059)
!2059 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !144, line: 20, baseType: !2060)
!2060 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2033, file: !2034, line: 75, baseType: !323, size: 8, offset: 216)
!2062 = !DIDerivedType(tag: DW_TAG_member, scope: !2033, file: !2034, line: 76, baseType: !2063, size: 64, offset: 256)
!2063 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2033, file: !2034, line: 76, size: 64, elements: !2064)
!2064 = !{!2065, !2066, !2073}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2063, file: !2034, line: 77, baseType: !120, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2063, file: !2034, line: 78, baseType: !2067, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2069)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2034, line: 86, size: 128, elements: !2070)
!2070 = !{!2071, !2072}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2069, file: !2034, line: 87, baseType: !7, size: 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2069, file: !2034, line: 88, baseType: !815, size: 64, offset: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2063, file: !2034, line: 79, baseType: !2074, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2076)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2034, line: 92, size: 256, elements: !2077)
!2077 = !{!2078, !2079, !2080, !2082, !2083}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2076, file: !2034, line: 94, baseType: !7, size: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2076, file: !2034, line: 95, baseType: !7, size: 32, offset: 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2076, file: !2034, line: 96, baseType: !2081, size: 64, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2076, file: !2034, line: 97, baseType: !2039, size: 64, offset: 128)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2076, file: !2034, line: 98, baseType: !120, size: 64, offset: 192)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1195, file: !18, line: 438, baseType: !7, size: 32, offset: 2176)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1195, file: !18, line: 441, baseType: !7, size: 32, offset: 2208)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1195, file: !18, line: 442, baseType: !2023, size: 64, offset: 2240)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1195, file: !18, line: 443, baseType: !2027, size: 64, offset: 2304)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1195, file: !18, line: 444, baseType: !802, size: 8, offset: 2368)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1195, file: !18, line: 451, baseType: !802, size: 8, offset: 2376)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1195, file: !18, line: 454, baseType: !7, size: 32, offset: 2400)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1195, file: !18, line: 455, baseType: !2092, size: 64, offset: 2432)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2094, line: 23, size: 96, elements: !2095)
!2094 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2095 = !{!2096, !2097, !2098}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2093, file: !2094, line: 24, baseType: !127, size: 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2093, file: !2094, line: 24, baseType: !127, size: 32, offset: 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2093, file: !2094, line: 24, baseType: !127, size: 32, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1195, file: !18, line: 458, baseType: !2100, size: 64, offset: 2496)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!127}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1195, file: !18, line: 460, baseType: !2104, size: 4032, align: 512, offset: 2560)
!2104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2105, size: 4032, elements: !2121)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !18, line: 362, size: 576, elements: !2106)
!2106 = !{!2107, !2108, !2109}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2105, file: !18, line: 363, baseType: !120, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2105, file: !18, line: 364, baseType: !7, size: 32, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2105, file: !18, line: 367, baseType: !2110, size: 448, offset: 128)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !18, line: 319, size: 448, elements: !2111)
!2111 = !{!2112, !2113}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2110, file: !18, line: 320, baseType: !1194, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2110, file: !18, line: 321, baseType: !2114, size: 384, offset: 64)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2115, line: 40, size: 384, elements: !2116)
!2115 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2116 = !{!2117}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2114, file: !2115, line: 41, baseType: !2118, size: 384, align: 64)
!2118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 384, align: 64, elements: !2119)
!2119 = !{!2120}
!2120 = !DISubrange(count: 2)
!2121 = !{!2122}
!2122 = !DISubrange(count: 7)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1195, file: !18, line: 463, baseType: !2124, size: 192, offset: 6592)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2125, line: 8, size: 192, elements: !2126)
!2125 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2126 = !{!2127, !2128, !2130}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2124, file: !2125, line: 10, baseType: !7, size: 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2124, file: !2125, line: 11, baseType: !2129, size: 64, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2124, file: !2125, line: 12, baseType: !2131, size: 64, offset: 128)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2133, line: 59, size: 48, elements: !2134)
!2133 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2134 = !{!2135, !2138, !2139, !2140, !2141, !2142}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2132, file: !2133, line: 60, baseType: !2136, size: 16)
!2136 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !142, line: 18, baseType: !2137)
!2137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !144, line: 23, baseType: !770)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2132, file: !2133, line: 61, baseType: !2136, size: 16, offset: 16)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2132, file: !2133, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2132, file: !2133, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2132, file: !2133, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2132, file: !2133, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1195, file: !18, line: 465, baseType: !123, size: 64, offset: 6784)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1195, file: !18, line: 469, baseType: !7, size: 32, offset: 6848)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1195, file: !18, line: 470, baseType: !213, size: 128, offset: 6912)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1195, file: !18, line: 471, baseType: !2147, size: 64, offset: 7040)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2149, line: 33, size: 96, elements: !2150)
!2149 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2150 = !{!2151, !2152, !2153, !2154}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2148, file: !2149, line: 37, baseType: !127, size: 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2148, file: !2149, line: 43, baseType: !127, size: 32, offset: 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2148, file: !2149, line: 45, baseType: !179, size: 16, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2148, file: !2149, line: 47, baseType: !179, size: 16, offset: 80)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1195, file: !18, line: 476, baseType: !2156, size: 64, offset: 7104)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !18, line: 378, size: 256, elements: !2158)
!2158 = !{!2159, !2175, !2176, !2177}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2157, file: !18, line: 379, baseType: !2160, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2162, line: 204, baseType: !2163)
!2162 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2162, line: 197, size: 192, elements: !2164)
!2164 = !{!2165, !2167, !2168, !2169, !2171, !2173}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2163, file: !2162, line: 198, baseType: !2166, size: 32)
!2166 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2162, line: 21, baseType: !143)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2163, file: !2162, line: 199, baseType: !325, size: 8, offset: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2163, file: !2162, line: 200, baseType: !325, size: 8, offset: 40)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2163, file: !2162, line: 201, baseType: !2170, size: 16, offset: 48)
!2170 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2162, line: 17, baseType: !178)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2163, file: !2162, line: 202, baseType: !2172, size: 64, offset: 64)
!2172 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2162, line: 16, baseType: !209)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2163, file: !2162, line: 203, baseType: !2174, size: 64, offset: 128)
!2174 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2162, line: 22, baseType: !209)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2157, file: !18, line: 380, baseType: !7, size: 32, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2157, file: !18, line: 381, baseType: !815, size: 64, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2157, file: !18, line: 382, baseType: !815, size: 64, offset: 192)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1195, file: !18, line: 477, baseType: !2157, size: 256, offset: 7168)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1195, file: !18, line: 480, baseType: !2180, size: 64, offset: 7424)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !18, line: 480, flags: DIFlagFwdDecl)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1195, file: !18, line: 483, baseType: !2183, size: 64, offset: 7488)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !18, line: 483, flags: DIFlagFwdDecl)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1195, file: !18, line: 488, baseType: !815, size: 64, offset: 7552)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1195, file: !18, line: 492, baseType: !120, size: 64, offset: 7616)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1195, file: !18, line: 493, baseType: !7, size: 32, offset: 7680)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1195, file: !18, line: 495, baseType: !120, size: 64, offset: 7744)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1195, file: !18, line: 496, baseType: !7, size: 32, offset: 7808)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1195, file: !18, line: 499, baseType: !7, size: 32, offset: 7840)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1195, file: !18, line: 500, baseType: !2192, size: 64, offset: 7872)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2194, line: 45, baseType: !2195)
!2194 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1195, file: !18, line: 503, baseType: !7, size: 32, offset: 7936)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1195, file: !18, line: 504, baseType: !2198, size: 64, offset: 8000)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2201, line: 96, size: 192, elements: !2202)
!2201 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2202 = !{!2203, !2204, !2269, !2272}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2200, file: !2201, line: 97, baseType: !7, size: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2200, file: !2201, line: 98, baseType: !2205, size: 64, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2201, line: 24, size: 3072, elements: !2207)
!2207 = !{!2208, !2210, !2211, !2212, !2213, !2227, !2228, !2229, !2230, !2242, !2254, !2255, !2266, !2267, !2268}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2206, file: !2201, line: 26, baseType: !2209, size: 128)
!2209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 128, elements: !2119)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2206, file: !2201, line: 27, baseType: !2209, size: 128, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2206, file: !2201, line: 28, baseType: !127, size: 32, offset: 256)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2206, file: !2201, line: 31, baseType: !507, size: 32, align: 512, offset: 512)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2206, file: !2201, line: 32, baseType: !2214, size: 960, offset: 576)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2215, line: 206, size: 960, elements: !2216)
!2215 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2216 = !{!2217, !2218, !2221, !2223, !2224, !2226}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2214, file: !2215, line: 207, baseType: !536, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2214, file: !2215, line: 208, baseType: !2219, size: 256, offset: 64)
!2219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2220, size: 256, elements: !612)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2214, file: !2215, line: 209, baseType: !2222, size: 256, offset: 320)
!2222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 256, elements: !612)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2214, file: !2215, line: 213, baseType: !128, size: 64, offset: 576)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2214, file: !2215, line: 215, baseType: !2225, size: 256, offset: 640)
!2225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 256, elements: !612)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2214, file: !2215, line: 216, baseType: !323, size: 8, offset: 896)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2206, file: !2201, line: 33, baseType: !123, size: 64, offset: 1536)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2206, file: !2201, line: 34, baseType: !123, size: 64, offset: 1600)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2206, file: !2201, line: 35, baseType: !802, size: 8, offset: 1664)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2206, file: !2201, line: 36, baseType: !2231, size: 320, offset: 1728)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2232, line: 11, size: 320, elements: !2233)
!2232 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2233 = !{!2234, !2235, !2236, !2241}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2231, file: !2232, line: 16, baseType: !607, size: 128)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2231, file: !2232, line: 17, baseType: !123, size: 64, offset: 128)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2231, file: !2232, line: 18, baseType: !2237, size: 64, offset: 192)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{null, !2240}
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2231, file: !2232, line: 19, baseType: !141, size: 32, offset: 256)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2206, file: !2201, line: 37, baseType: !2243, size: 256, offset: 2048)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2244, line: 98, size: 256, elements: !2245)
!2244 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2245 = !{!2246, !2247, !2248}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2243, file: !2244, line: 99, baseType: !546, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2243, file: !2244, line: 100, baseType: !213, size: 128, offset: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2243, file: !2244, line: 101, baseType: !2249, size: 64, offset: 192)
!2249 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2244, line: 21, baseType: !2250)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{null, !2253}
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2206, file: !2201, line: 38, baseType: !533, size: 128, align: 64, offset: 2304)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2206, file: !2201, line: 39, baseType: !2256, size: 64, offset: 2432)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2201, line: 49, size: 768, elements: !2258)
!2258 = !{!2259, !2260, !2261, !2262, !2263, !2264, !2265}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2257, file: !2201, line: 50, baseType: !507, size: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2257, file: !2201, line: 51, baseType: !2222, size: 256, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2257, file: !2201, line: 53, baseType: !2222, size: 256, offset: 320)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2257, file: !2201, line: 54, baseType: !123, size: 64, offset: 576)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2257, file: !2201, line: 55, baseType: !2256, size: 64, offset: 640)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2257, file: !2201, line: 56, baseType: !127, size: 32, offset: 704)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2257, file: !2201, line: 57, baseType: !127, size: 32, offset: 736)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2206, file: !2201, line: 40, baseType: !123, size: 64, offset: 2496)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2206, file: !2201, line: 42, baseType: !127, size: 32, offset: 2560)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2206, file: !2201, line: 43, baseType: !2199, size: 64, offset: 2624)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2200, file: !2201, line: 99, baseType: !2270, offset: 128)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2271, line: 211, elements: !518)
!2271 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2200, file: !2201, line: 100, baseType: !2273, size: 64, offset: 128)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2201, line: 63, size: 3008, elements: !2275)
!2275 = !{!2276, !2277, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2307}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2274, file: !2201, line: 64, baseType: !2256, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2274, file: !2201, line: 65, baseType: !2278, size: 192, offset: 64)
!2278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2256, size: 192, elements: !591)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2274, file: !2201, line: 67, baseType: !127, size: 32, offset: 256)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2274, file: !2201, line: 68, baseType: !553, size: 256, offset: 320)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2274, file: !2201, line: 69, baseType: !507, size: 32, offset: 576)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2274, file: !2201, line: 70, baseType: !553, size: 256, offset: 640)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2274, file: !2201, line: 71, baseType: !123, size: 64, offset: 896)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2274, file: !2201, line: 72, baseType: !123, size: 64, offset: 960)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2274, file: !2201, line: 73, baseType: !123, size: 64, offset: 1024)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2274, file: !2201, line: 74, baseType: !123, size: 64, offset: 1088)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2274, file: !2201, line: 75, baseType: !123, size: 64, offset: 1152)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2274, file: !2201, line: 76, baseType: !123, size: 64, offset: 1216)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2274, file: !2201, line: 77, baseType: !123, size: 64, offset: 1280)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2274, file: !2201, line: 78, baseType: !123, size: 64, offset: 1344)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2274, file: !2201, line: 79, baseType: !802, size: 8, offset: 1408)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2274, file: !2201, line: 80, baseType: !123, size: 64, offset: 1472)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2274, file: !2201, line: 81, baseType: !553, size: 256, offset: 1536)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2274, file: !2201, line: 82, baseType: !1415, size: 256, offset: 1792)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2274, file: !2201, line: 84, baseType: !154, size: 32, offset: 2048)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2274, file: !2201, line: 87, baseType: !123, size: 64, offset: 2112)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2274, file: !2201, line: 88, baseType: !123, size: 64, offset: 2176)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2274, file: !2201, line: 89, baseType: !2299, size: 704, offset: 2240)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2244, line: 111, size: 704, elements: !2300)
!2300 = !{!2301, !2302, !2303, !2306}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2299, file: !2244, line: 112, baseType: !2243, size: 256)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2299, file: !2244, line: 113, baseType: !2231, size: 320, offset: 256)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2299, file: !2244, line: 116, baseType: !2304, size: 64, offset: 576)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2244, line: 18, flags: DIFlagFwdDecl)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2299, file: !2244, line: 117, baseType: !127, size: 32, offset: 640)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2274, file: !2201, line: 90, baseType: !2199, size: 64, offset: 2944)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1195, file: !18, line: 515, baseType: !2309, size: 64, offset: 8064)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2311, line: 117, size: 128, elements: !2312)
!2311 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2312 = !{!2313, !2314, !2315}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2310, file: !2311, line: 118, baseType: !734, size: 32)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2310, file: !2311, line: 119, baseType: !734, size: 32, offset: 32)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2310, file: !2311, line: 120, baseType: !128, size: 64, offset: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1195, file: !18, line: 516, baseType: !7, size: 32, offset: 8128)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1195, file: !18, line: 519, baseType: !7, size: 32, offset: 8160)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1195, file: !18, line: 520, baseType: !2319, size: 64, offset: 8192)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1195, file: !18, line: 523, baseType: !2321, size: 64, offset: 8256)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !18, line: 523, flags: DIFlagFwdDecl)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1195, file: !18, line: 524, baseType: !7, size: 32, offset: 8320)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1195, file: !18, line: 525, baseType: !2326, size: 64, offset: 8384)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !2329, line: 28, size: 192, elements: !2330)
!2329 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!2330 = !{!2331, !2332, !2333}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2328, file: !2329, line: 29, baseType: !805, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !2328, file: !2329, line: 30, baseType: !805, size: 64, offset: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !2328, file: !2329, line: 31, baseType: !123, size: 64, offset: 128)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1195, file: !18, line: 526, baseType: !7, size: 32, offset: 8448)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1195, file: !18, line: 533, baseType: !120, size: 64, offset: 8512)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1195, file: !18, line: 534, baseType: !7, size: 32, offset: 8576)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1195, file: !18, line: 535, baseType: !124, size: 64, offset: 8640)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1195, file: !18, line: 536, baseType: !7, size: 32, offset: 8704)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1195, file: !18, line: 539, baseType: !127, size: 32, offset: 8736)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1195, file: !18, line: 540, baseType: !2341, size: 64, offset: 8768)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2343, line: 32, size: 64, elements: !2344)
!2343 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2344 = !{!2345, !2346}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2342, file: !2343, line: 33, baseType: !734, size: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2342, file: !2343, line: 34, baseType: !734, size: 32, offset: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1195, file: !18, line: 563, baseType: !213, size: 128, offset: 8832)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1195, file: !18, line: 565, baseType: !213, size: 128, offset: 8960)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1195, file: !18, line: 568, baseType: !2350, size: 64, offset: 9088)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{null}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1195, file: !18, line: 570, baseType: !154, size: 32, offset: 9152)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1171, file: !47, line: 2382, baseType: !1170, size: 64, offset: 448)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1171, file: !47, line: 2383, baseType: !603, size: 64, offset: 512)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1171, file: !47, line: 2385, baseType: !2357, offset: 576)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2271, line: 206, elements: !518)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1171, file: !47, line: 2386, baseType: !2357, offset: 576)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1171, file: !47, line: 2387, baseType: !2357, offset: 576)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1171, file: !47, line: 2388, baseType: !2361, offset: 576)
!2361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2357, elements: !591)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1171, file: !47, line: 2390, baseType: !2357, offset: 576)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1171, file: !47, line: 2391, baseType: !2357, offset: 576)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1171, file: !47, line: 2392, baseType: !2357, offset: 576)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1171, file: !47, line: 2393, baseType: !2357, offset: 576)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1162, file: !47, line: 1197, baseType: !2367, size: 64, offset: 384)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2369)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !47, line: 2057, size: 1664, elements: !2370)
!2370 = !{!2371, !2375, !2379, !2380, !2384, !2388, !2392, !2393, !2394, !2398, !2402, !2406, !2407, !2408, !2414, !2418, !2419, !2423, !2424, !2425, !2426, !2430, !2434, !2481, !2496, !2497}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2369, file: !47, line: 2058, baseType: !2372, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!956, !1161}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2369, file: !47, line: 2059, baseType: !2376, size: 64, offset: 64)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{null, !956}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2369, file: !47, line: 2060, baseType: !2376, size: 64, offset: 128)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2369, file: !47, line: 2062, baseType: !2381, size: 64, offset: 192)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{null, !956, !127}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2369, file: !47, line: 2063, baseType: !2385, size: 64, offset: 256)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!127, !956, !1627}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2369, file: !47, line: 2064, baseType: !2389, size: 64, offset: 320)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!127, !956}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2369, file: !47, line: 2065, baseType: !2376, size: 64, offset: 384)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2369, file: !47, line: 2066, baseType: !1190, size: 64, offset: 448)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2369, file: !47, line: 2067, baseType: !2395, size: 64, offset: 512)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!127, !1161, !127}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2369, file: !47, line: 2068, baseType: !2399, size: 64, offset: 576)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!127, !1161, !46}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2369, file: !47, line: 2069, baseType: !2403, size: 64, offset: 640)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!127, !1161}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2369, file: !47, line: 2070, baseType: !2399, size: 64, offset: 704)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2369, file: !47, line: 2071, baseType: !2403, size: 64, offset: 768)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2369, file: !47, line: 2072, baseType: !2409, size: 64, offset: 832)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!127, !921, !2412}
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !47, line: 62, flags: DIFlagFwdDecl)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2369, file: !47, line: 2073, baseType: !2415, size: 64, offset: 896)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!127, !1161, !2129, !815}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2369, file: !47, line: 2074, baseType: !1190, size: 64, offset: 960)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2369, file: !47, line: 2076, baseType: !2420, size: 64, offset: 1024)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!127, !1911, !921}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2369, file: !47, line: 2077, baseType: !2420, size: 64, offset: 1088)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2369, file: !47, line: 2078, baseType: !2420, size: 64, offset: 1152)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2369, file: !47, line: 2079, baseType: !2420, size: 64, offset: 1216)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2369, file: !47, line: 2081, baseType: !2427, size: 64, offset: 1280)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!1109, !1161, !127, !815, !1112, !565}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2369, file: !47, line: 2082, baseType: !2431, size: 64, offset: 1344)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!1109, !1161, !127, !805, !1112, !565}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2369, file: !47, line: 2083, baseType: !2435, size: 64, offset: 1408)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!2438, !956}
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !52, line: 296, size: 1664, elements: !2441)
!2441 = !{!2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2466, !2467, !2468}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2440, file: !52, line: 297, baseType: !607, size: 128)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2440, file: !52, line: 298, baseType: !213, size: 128, offset: 128)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2440, file: !52, line: 299, baseType: !213, size: 128, offset: 256)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2440, file: !52, line: 300, baseType: !213, size: 128, offset: 384)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2440, file: !52, line: 301, baseType: !553, size: 256, offset: 512)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2440, file: !52, line: 302, baseType: !507, size: 32, offset: 768)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2440, file: !52, line: 303, baseType: !154, size: 32, offset: 800)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2440, file: !52, line: 304, baseType: !1161, size: 64, offset: 832)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2440, file: !52, line: 305, baseType: !2451, size: 64, offset: 896)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !52, line: 68, size: 64, elements: !2452)
!2452 = !{!2453, !2465}
!2453 = !DIDerivedType(tag: DW_TAG_member, scope: !2451, file: !52, line: 69, baseType: !2454, size: 32)
!2454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2451, file: !52, line: 69, size: 32, elements: !2455)
!2455 = !{!2456, !2457, !2458}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2454, file: !52, line: 70, baseType: !684, size: 32)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2454, file: !52, line: 71, baseType: !701, size: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2454, file: !52, line: 72, baseType: !2459, size: 32)
!2459 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2460, line: 24, baseType: !2461)
!2460 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2460, line: 22, size: 32, elements: !2462)
!2462 = !{!2463}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2461, file: !2460, line: 23, baseType: !2464, size: 32)
!2464 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2460, line: 20, baseType: !689)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2451, file: !52, line: 74, baseType: !51, size: 32, offset: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2440, file: !52, line: 306, baseType: !565, size: 64, offset: 960)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2440, file: !52, line: 307, baseType: !123, size: 64, offset: 1024)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2440, file: !52, line: 308, baseType: !2469, size: 576, offset: 1088)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !52, line: 205, size: 576, elements: !2470)
!2470 = !{!2471, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2469, file: !52, line: 206, baseType: !2472, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !52, line: 66, baseType: !226)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2469, file: !52, line: 207, baseType: !2472, size: 64, offset: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2469, file: !52, line: 208, baseType: !2472, size: 64, offset: 128)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2469, file: !52, line: 209, baseType: !2472, size: 64, offset: 192)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2469, file: !52, line: 210, baseType: !2472, size: 64, offset: 256)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2469, file: !52, line: 211, baseType: !2472, size: 64, offset: 320)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2469, file: !52, line: 212, baseType: !2472, size: 64, offset: 384)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2469, file: !52, line: 213, baseType: !758, size: 64, offset: 448)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2469, file: !52, line: 214, baseType: !758, size: 64, offset: 512)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2369, file: !47, line: 2085, baseType: !2482, size: 64, offset: 1472)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!128, !1161, !2485}
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2487, line: 15, size: 256, elements: !2488)
!2487 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2488 = !{!2489, !2490, !2491, !2492, !2493}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2486, file: !2487, line: 16, baseType: !643, size: 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2486, file: !2487, line: 19, baseType: !127, size: 32, offset: 32)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2486, file: !2487, line: 26, baseType: !123, size: 64, offset: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2486, file: !2487, line: 33, baseType: !123, size: 64, offset: 128)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2486, file: !2487, line: 36, baseType: !2494, size: 64, offset: 192)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !25, line: 33, flags: DIFlagFwdDecl)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2369, file: !47, line: 2087, baseType: !2482, size: 64, offset: 1536)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2369, file: !47, line: 2089, baseType: !1190, size: 64, offset: 1600)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1162, file: !47, line: 1198, baseType: !2499, size: 64, offset: 448)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2501)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !52, line: 324, size: 704, elements: !2502)
!2502 = !{!2503, !2507, !2511, !2515, !2516, !2517, !2518, !2519, !2524, !2529, !2533}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2501, file: !52, line: 325, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!127, !2439}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2501, file: !52, line: 326, baseType: !2508, size: 64, offset: 64)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!2439, !1161, !127}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2501, file: !52, line: 327, baseType: !2512, size: 64, offset: 128)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{null, !2439}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2501, file: !52, line: 328, baseType: !2504, size: 64, offset: 192)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2501, file: !52, line: 329, baseType: !2504, size: 64, offset: 256)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2501, file: !52, line: 330, baseType: !2504, size: 64, offset: 320)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2501, file: !52, line: 331, baseType: !2395, size: 64, offset: 384)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2501, file: !52, line: 334, baseType: !2520, size: 64, offset: 448)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!2523, !956}
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2501, file: !52, line: 335, baseType: !2525, size: 64, offset: 512)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!127, !956, !2528}
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2501, file: !52, line: 337, baseType: !2530, size: 64, offset: 576)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!127, !956, !2523}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2501, file: !52, line: 339, baseType: !2534, size: 64, offset: 640)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!127, !1161, !2537}
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1162, file: !47, line: 1199, baseType: !2539, size: 64, offset: 512)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2541)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !52, line: 430, size: 704, elements: !2542)
!2542 = !{!2543, !2547, !2548, !2552, !2553, !2554, !2569, !2592, !2596, !2597, !2620}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2541, file: !52, line: 431, baseType: !2544, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!127, !1161, !127, !127, !1078}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2541, file: !52, line: 432, baseType: !2395, size: 64, offset: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2541, file: !52, line: 433, baseType: !2549, size: 64, offset: 128)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!127, !1161, !7}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2541, file: !52, line: 434, baseType: !2549, size: 64, offset: 192)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2541, file: !52, line: 435, baseType: !2395, size: 64, offset: 256)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2541, file: !52, line: 436, baseType: !2555, size: 64, offset: 320)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!127, !1161, !127, !2558}
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !52, line: 417, size: 256, elements: !2560)
!2560 = !{!2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2559, file: !52, line: 418, baseType: !127, size: 32)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2559, file: !52, line: 419, baseType: !7, size: 32, offset: 32)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2559, file: !52, line: 420, baseType: !7, size: 32, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2559, file: !52, line: 422, baseType: !7, size: 32, offset: 96)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2559, file: !52, line: 423, baseType: !7, size: 32, offset: 128)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2559, file: !52, line: 424, baseType: !7, size: 32, offset: 160)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2559, file: !52, line: 425, baseType: !7, size: 32, offset: 192)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2559, file: !52, line: 426, baseType: !7, size: 32, offset: 224)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2541, file: !52, line: 437, baseType: !2570, size: 64, offset: 384)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!127, !1161, !2451, !2573}
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !52, line: 345, size: 960, elements: !2575)
!2575 = !{!2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2574, file: !52, line: 346, baseType: !127, size: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2574, file: !52, line: 347, baseType: !208, size: 64, offset: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2574, file: !52, line: 348, baseType: !208, size: 64, offset: 128)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2574, file: !52, line: 349, baseType: !208, size: 64, offset: 192)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2574, file: !52, line: 350, baseType: !208, size: 64, offset: 256)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2574, file: !52, line: 351, baseType: !208, size: 64, offset: 320)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2574, file: !52, line: 352, baseType: !208, size: 64, offset: 384)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2574, file: !52, line: 353, baseType: !224, size: 64, offset: 448)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2574, file: !52, line: 355, baseType: !224, size: 64, offset: 512)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2574, file: !52, line: 356, baseType: !127, size: 32, offset: 576)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2574, file: !52, line: 357, baseType: !127, size: 32, offset: 608)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2574, file: !52, line: 358, baseType: !208, size: 64, offset: 640)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2574, file: !52, line: 359, baseType: !208, size: 64, offset: 704)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2574, file: !52, line: 360, baseType: !208, size: 64, offset: 768)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2574, file: !52, line: 361, baseType: !224, size: 64, offset: 832)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2574, file: !52, line: 362, baseType: !127, size: 32, offset: 896)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2541, file: !52, line: 438, baseType: !2593, size: 64, offset: 448)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!127, !1161, !2537, !2573}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2541, file: !52, line: 440, baseType: !2570, size: 64, offset: 512)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2541, file: !52, line: 441, baseType: !2598, size: 64, offset: 576)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!127, !1161, !2601}
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !52, line: 411, size: 1408, elements: !2603)
!2603 = !{!2604, !2605}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2602, file: !52, line: 412, baseType: !7, size: 32)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2602, file: !52, line: 413, baseType: !2606, size: 1344, offset: 64)
!2606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2607, size: 1344, elements: !591)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !52, line: 397, size: 448, elements: !2608)
!2608 = !{!2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2619}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2607, file: !52, line: 398, baseType: !7, size: 32)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2607, file: !52, line: 399, baseType: !7, size: 32, offset: 32)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2607, file: !52, line: 401, baseType: !7, size: 32, offset: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2607, file: !52, line: 402, baseType: !7, size: 32, offset: 96)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2607, file: !52, line: 403, baseType: !7, size: 32, offset: 128)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2607, file: !52, line: 404, baseType: !7, size: 32, offset: 160)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2607, file: !52, line: 405, baseType: !7, size: 32, offset: 192)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2607, file: !52, line: 406, baseType: !210, size: 64, offset: 256)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2607, file: !52, line: 407, baseType: !2618, size: 64, offset: 320)
!2618 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !122, line: 132, baseType: !208)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2607, file: !52, line: 408, baseType: !2618, size: 64, offset: 384)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2541, file: !52, line: 442, baseType: !2549, size: 64, offset: 640)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1162, file: !47, line: 1200, baseType: !2622, size: 64, offset: 576)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2624)
!2624 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !47, line: 54, flags: DIFlagFwdDecl)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1162, file: !47, line: 1201, baseType: !123, size: 64, offset: 640)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1162, file: !47, line: 1202, baseType: !123, size: 64, offset: 704)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1162, file: !47, line: 1203, baseType: !123, size: 64, offset: 768)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1162, file: !47, line: 1204, baseType: !921, size: 64, offset: 832)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1162, file: !47, line: 1205, baseType: !742, size: 320, offset: 896)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1162, file: !47, line: 1206, baseType: !127, size: 32, offset: 1216)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1162, file: !47, line: 1207, baseType: !154, size: 32, offset: 1248)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1162, file: !47, line: 1209, baseType: !120, size: 64, offset: 1280)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1162, file: !47, line: 1211, baseType: !2634, size: 64, offset: 1344)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2637)
!2637 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !47, line: 1211, flags: DIFlagFwdDecl)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1162, file: !47, line: 1223, baseType: !2639, size: 64, offset: 1408)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !933, line: 34, size: 64, elements: !2640)
!2640 = !{!2641}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2639, file: !933, line: 35, baseType: !936, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1162, file: !47, line: 1224, baseType: !213, size: 128, offset: 1472)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1162, file: !47, line: 1225, baseType: !2644, size: 64, offset: 1600)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !47, line: 1225, flags: DIFlagFwdDecl)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1162, file: !47, line: 1226, baseType: !2647, size: 64, offset: 1664)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !47, line: 1226, flags: DIFlagFwdDecl)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1162, file: !47, line: 1227, baseType: !2650, size: 64, offset: 1728)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !47, line: 50, flags: DIFlagFwdDecl)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1162, file: !47, line: 1228, baseType: !2653, size: 64, offset: 1792)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !47, line: 1228, flags: DIFlagFwdDecl)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1162, file: !47, line: 1229, baseType: !607, size: 128, offset: 1856)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1162, file: !47, line: 1230, baseType: !7, size: 32, offset: 1984)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1162, file: !47, line: 1231, baseType: !2658, size: 2496, offset: 2048)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !52, line: 521, size: 2496, elements: !2659)
!2659 = !{!2660, !2661, !2662, !2664, !2696}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2658, file: !52, line: 522, baseType: !7, size: 32)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2658, file: !52, line: 523, baseType: !742, size: 320, offset: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2658, file: !52, line: 524, baseType: !2663, size: 192, offset: 384)
!2663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !956, size: 192, elements: !591)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2658, file: !52, line: 525, baseType: !2665, size: 1728, offset: 576)
!2665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2666, size: 1728, elements: !591)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !52, line: 222, size: 576, elements: !2667)
!2667 = !{!2668, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2666, file: !52, line: 223, baseType: !2669, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !52, line: 445, size: 256, elements: !2671)
!2671 = !{!2672, !2673, !2686, !2687}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2670, file: !52, line: 446, baseType: !127, size: 32)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2670, file: !52, line: 447, baseType: !2674, size: 64, offset: 64)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2676)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !52, line: 312, size: 512, elements: !2677)
!2677 = !{!2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2676, file: !52, line: 313, baseType: !2395, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2676, file: !52, line: 314, baseType: !2395, size: 64, offset: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2676, file: !52, line: 315, baseType: !2395, size: 64, offset: 128)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2676, file: !52, line: 316, baseType: !2395, size: 64, offset: 192)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2676, file: !52, line: 317, baseType: !2504, size: 64, offset: 256)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2676, file: !52, line: 318, baseType: !2504, size: 64, offset: 320)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2676, file: !52, line: 319, baseType: !2504, size: 64, offset: 384)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2676, file: !52, line: 320, baseType: !2534, size: 64, offset: 448)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2670, file: !52, line: 448, baseType: !1194, size: 64, offset: 128)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2670, file: !52, line: 449, baseType: !2669, size: 64, offset: 192)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2666, file: !52, line: 224, baseType: !127, size: 32, offset: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2666, file: !52, line: 226, baseType: !213, size: 128, offset: 128)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2666, file: !52, line: 227, baseType: !123, size: 64, offset: 256)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2666, file: !52, line: 228, baseType: !7, size: 32, offset: 320)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2666, file: !52, line: 229, baseType: !7, size: 32, offset: 352)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2666, file: !52, line: 230, baseType: !2472, size: 64, offset: 384)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2666, file: !52, line: 231, baseType: !2472, size: 64, offset: 448)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2666, file: !52, line: 232, baseType: !120, size: 64, offset: 512)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2658, file: !52, line: 526, baseType: !2697, size: 192, offset: 2304)
!2697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2674, size: 192, elements: !591)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1162, file: !47, line: 1233, baseType: !2699, size: 2368, offset: 4544)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !47, line: 1184, size: 2368, elements: !2700)
!2700 = !{!2701, !2702, !2703}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2699, file: !47, line: 1185, baseType: !179, size: 16)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2699, file: !47, line: 1186, baseType: !179, size: 16, offset: 16)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2699, file: !47, line: 1187, baseType: !2704, size: 2304, offset: 64)
!2704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2705, size: 2304, elements: !591)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2706, line: 12, size: 768, elements: !2707)
!2706 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2707 = !{!2708, !2716, !2717, !2722, !2723}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2705, file: !2706, line: 13, baseType: !2709, size: 384)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2710, line: 17, size: 384, elements: !2711)
!2710 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2711 = !{!2712, !2713, !2714, !2715}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2709, file: !2710, line: 18, baseType: !127, size: 32)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2709, file: !2710, line: 19, baseType: !127, size: 32, offset: 32)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2709, file: !2710, line: 20, baseType: !616, size: 192, offset: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2709, file: !2710, line: 22, baseType: !533, size: 128, align: 64, offset: 256)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2705, file: !2706, line: 14, baseType: !2081, size: 64, offset: 384)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2705, file: !2706, line: 15, baseType: !2718, size: 64, offset: 448)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2719, line: 16, size: 64, elements: !2720)
!2719 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2720 = !{!2721}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2718, file: !2719, line: 17, baseType: !130, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2705, file: !2706, line: 16, baseType: !616, size: 192, offset: 512)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2705, file: !2706, line: 17, baseType: !154, size: 32, offset: 704)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1162, file: !47, line: 1240, baseType: !120, size: 64, offset: 6912)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1162, file: !47, line: 1243, baseType: !141, size: 32, offset: 6976)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1162, file: !47, line: 1245, baseType: !758, size: 64, offset: 7040)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1162, file: !47, line: 1246, baseType: !758, size: 64, offset: 7104)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1162, file: !47, line: 1248, baseType: !143, size: 32, offset: 7168)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1162, file: !47, line: 1249, baseType: !2730, size: 64, offset: 7232)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !47, line: 634, flags: DIFlagFwdDecl)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1162, file: !47, line: 1252, baseType: !2733, size: 256, offset: 7296)
!2733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !788, size: 256, elements: !2734)
!2734 = !{!2735}
!2735 = !DISubrange(count: 32)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1162, file: !47, line: 1253, baseType: !2737, size: 128, offset: 7552)
!2737 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2738, line: 21, baseType: !2739)
!2738 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2738, line: 19, size: 128, elements: !2740)
!2740 = !{!2741}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2739, file: !2738, line: 20, baseType: !2742, size: 128)
!2742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 128, elements: !2743)
!2743 = !{!2744}
!2744 = !DISubrange(count: 16)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1162, file: !47, line: 1255, baseType: !7, size: 32, offset: 7680)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1162, file: !47, line: 1261, baseType: !553, size: 256, offset: 7744)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1162, file: !47, line: 1267, baseType: !805, size: 64, offset: 8000)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1162, file: !47, line: 1269, baseType: !2749, size: 64, offset: 8064)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2751)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !923, line: 128, size: 1024, align: 512, elements: !2752)
!2752 = !{!2753, !2757, !2758, !2765, !2771, !2775, !2779, !2783, !2784, !2788, !2792, !2797, !2801}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2751, file: !923, line: 129, baseType: !2754, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!127, !921, !7}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2751, file: !923, line: 130, baseType: !2754, size: 64, offset: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2751, file: !923, line: 131, baseType: !2759, size: 64, offset: 128)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!127, !2762, !2764}
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !922)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2751, file: !923, line: 132, baseType: !2766, size: 64, offset: 192)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!127, !2762, !7, !805, !2769}
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !941)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2751, file: !923, line: 134, baseType: !2772, size: 64, offset: 256)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!127, !2762}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2751, file: !923, line: 135, baseType: !2776, size: 64, offset: 320)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!127, !921}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2751, file: !923, line: 136, baseType: !2780, size: 64, offset: 384)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{null, !921}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2751, file: !923, line: 137, baseType: !2780, size: 64, offset: 448)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2751, file: !923, line: 138, baseType: !2785, size: 64, offset: 512)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{null, !921, !956}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2751, file: !923, line: 139, baseType: !2789, size: 64, offset: 576)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!815, !921, !815, !127}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2751, file: !923, line: 140, baseType: !2793, size: 64, offset: 640)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!916, !2796}
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2751, file: !923, line: 141, baseType: !2798, size: 64, offset: 704)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!127, !1078, !802}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2751, file: !923, line: 142, baseType: !2802, size: 64, offset: 768)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!921, !921, !2805}
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !957)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1162, file: !47, line: 1271, baseType: !2808, size: 448, offset: 8128)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2487, line: 63, size: 448, elements: !2809)
!2809 = !{!2810, !2815, !2816, !2817, !2818, !2819, !2820}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2808, file: !2487, line: 64, baseType: !2811, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!123, !2814, !2485}
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2808, file: !2487, line: 66, baseType: !2811, size: 64, offset: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2808, file: !2487, line: 69, baseType: !128, size: 64, offset: 128)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2808, file: !2487, line: 70, baseType: !127, size: 32, offset: 192)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2808, file: !2487, line: 71, baseType: !7, size: 32, offset: 224)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2808, file: !2487, line: 74, baseType: !213, size: 128, offset: 256)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2808, file: !2487, line: 85, baseType: !2821, size: 64, offset: 384)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1162, file: !47, line: 1274, baseType: !546, size: 64, offset: 8576)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1162, file: !47, line: 1280, baseType: !546, size: 64, offset: 8640)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1162, file: !47, line: 1283, baseType: !127, size: 32, offset: 8704)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1162, file: !47, line: 1286, baseType: !1807, size: 32, offset: 8736)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1162, file: !47, line: 1289, baseType: !2304, size: 64, offset: 8768)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1162, file: !47, line: 1290, baseType: !603, size: 64, offset: 8832)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1162, file: !47, line: 1297, baseType: !660, size: 64, offset: 8896)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1162, file: !47, line: 1304, baseType: !2830, size: 64, offset: 8960)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2831, line: 49, size: 64, elements: !2832)
!2831 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2832 = !{!2833}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2830, file: !2831, line: 50, baseType: !2834, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2831, line: 41, size: 512, align: 512, elements: !2836)
!2836 = !{!2837, !2838, !2843}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2835, file: !2831, line: 43, baseType: !507, size: 32)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2835, file: !2831, line: 45, baseType: !2839, size: 192, offset: 64)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2831, line: 29, size: 192, elements: !2840)
!2840 = !{!2841, !2842}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2839, file: !2831, line: 30, baseType: !213, size: 128)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2839, file: !2831, line: 32, baseType: !128, size: 64, offset: 128)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2835, file: !2831, line: 46, baseType: !128, size: 64, offset: 256)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1162, file: !47, line: 1305, baseType: !2830, size: 64, offset: 9024)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1162, file: !47, line: 1306, baseType: !533, size: 128, align: 64, offset: 9088)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1162, file: !47, line: 1307, baseType: !2243, size: 256, offset: 9216)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1162, file: !47, line: 1309, baseType: !553, size: 256, offset: 9472)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1162, file: !47, line: 1314, baseType: !127, size: 32, offset: 9728)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1162, file: !47, line: 1317, baseType: !507, size: 32, align: 512, offset: 10240)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1162, file: !47, line: 1318, baseType: !213, size: 128, offset: 10304)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1162, file: !47, line: 1320, baseType: !507, size: 32, offset: 10432)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1162, file: !47, line: 1321, baseType: !213, size: 128, offset: 10496)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !957, file: !47, line: 656, baseType: !1311, size: 64, offset: 512)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !957, file: !47, line: 659, baseType: !120, size: 64, offset: 576)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !957, file: !47, line: 663, baseType: !123, size: 64, offset: 640)
!2856 = !DIDerivedType(tag: DW_TAG_member, scope: !957, file: !47, line: 671, baseType: !2857, size: 32, offset: 704)
!2857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !957, file: !47, line: 671, size: 32, elements: !2858)
!2858 = !{!2859, !2861}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2857, file: !47, line: 672, baseType: !2860, size: 32)
!2860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2857, file: !47, line: 673, baseType: !7, size: 32)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !957, file: !47, line: 675, baseType: !1031, size: 32, offset: 736)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !957, file: !47, line: 676, baseType: !565, size: 64, offset: 768)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !957, file: !47, line: 677, baseType: !1067, size: 128, offset: 832)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !957, file: !47, line: 678, baseType: !1067, size: 128, offset: 960)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !957, file: !47, line: 679, baseType: !1067, size: 128, offset: 1088)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !957, file: !47, line: 680, baseType: !507, size: 32, offset: 1216)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !957, file: !47, line: 681, baseType: !179, size: 16, offset: 1248)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !957, file: !47, line: 682, baseType: !323, size: 8, offset: 1264)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !957, file: !47, line: 683, baseType: !323, size: 8, offset: 1272)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !957, file: !47, line: 684, baseType: !2618, size: 64, offset: 1280)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !957, file: !47, line: 691, baseType: !123, size: 64, offset: 1344)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !957, file: !47, line: 692, baseType: !742, size: 320, offset: 1408)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !957, file: !47, line: 694, baseType: !123, size: 64, offset: 1728)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !957, file: !47, line: 695, baseType: !123, size: 64, offset: 1792)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !957, file: !47, line: 697, baseType: !607, size: 128, offset: 1856)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !957, file: !47, line: 698, baseType: !213, size: 128, offset: 1984)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !957, file: !47, line: 707, baseType: !213, size: 128, offset: 2112)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !957, file: !47, line: 708, baseType: !213, size: 128, offset: 2240)
!2880 = !DIDerivedType(tag: DW_TAG_member, scope: !957, file: !47, line: 709, baseType: !2881, size: 128, offset: 2368)
!2881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !957, file: !47, line: 709, size: 128, elements: !2882)
!2882 = !{!2883, !2884}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2881, file: !47, line: 710, baseType: !603, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2881, file: !47, line: 711, baseType: !533, size: 128, align: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !957, file: !47, line: 713, baseType: !548, size: 64, offset: 2496)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !957, file: !47, line: 714, baseType: !548, size: 64, offset: 2560)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !957, file: !47, line: 715, baseType: !154, size: 32, offset: 2624)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !957, file: !47, line: 716, baseType: !154, size: 32, offset: 2656)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !957, file: !47, line: 717, baseType: !154, size: 32, offset: 2688)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !957, file: !47, line: 719, baseType: !154, size: 32, offset: 2720)
!2891 = !DIDerivedType(tag: DW_TAG_member, scope: !957, file: !47, line: 721, baseType: !2892, size: 64, offset: 2752)
!2892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !957, file: !47, line: 721, size: 64, elements: !2893)
!2893 = !{!2894, !3020}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2892, file: !47, line: 722, baseType: !2895, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2897)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !47, line: 1914, size: 2112, elements: !2898)
!2898 = !{!2899, !2900, !2904, !2908, !2912, !2913, !2914, !2920, !2933, !2937, !2941, !2942, !2946, !2947, !2951, !2956, !2957, !2961, !2965, !2971, !2972, !2976, !2977, !2983, !2987, !2988, !2993, !2997, !3001, !3005, !3009, !3010, !3016}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2897, file: !47, line: 1915, baseType: !1194, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2897, file: !47, line: 1916, baseType: !2901, size: 64, offset: 64)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!565, !525, !565, !127}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2897, file: !47, line: 1917, baseType: !2905, size: 64, offset: 128)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!1109, !525, !815, !1112, !1935}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2897, file: !47, line: 1918, baseType: !2909, size: 64, offset: 192)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!1109, !525, !805, !1112, !1935}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2897, file: !47, line: 1919, baseType: !1741, size: 64, offset: 256)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2897, file: !47, line: 1920, baseType: !1741, size: 64, offset: 320)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2897, file: !47, line: 1921, baseType: !2915, size: 64, offset: 384)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!127, !1744, !2918, !7}
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !47, line: 53, flags: DIFlagFwdDecl)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2897, file: !47, line: 1923, baseType: !2921, size: 64, offset: 448)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!127, !525, !2924}
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !47, line: 1858, size: 128, elements: !2926)
!2926 = !{!2927, !2932}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2925, file: !47, line: 1859, baseType: !2928, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !47, line: 1855, baseType: !2929)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!802, !2924, !805, !127, !565, !208, !7}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2925, file: !47, line: 1860, baseType: !565, size: 64, offset: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2897, file: !47, line: 1924, baseType: !2934, size: 64, offset: 512)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!1955, !525, !1957}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2897, file: !47, line: 1925, baseType: !2938, size: 64, offset: 576)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!128, !525, !7, !123}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2897, file: !47, line: 1926, baseType: !2938, size: 64, offset: 640)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2897, file: !47, line: 1927, baseType: !2943, size: 64, offset: 704)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!127, !525, !1450}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2897, file: !47, line: 1928, baseType: !123, size: 64, offset: 768)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2897, file: !47, line: 1929, baseType: !2948, size: 64, offset: 832)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!127, !956, !525}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2897, file: !47, line: 1930, baseType: !2952, size: 64, offset: 896)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!127, !525, !2955}
!2955 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !47, line: 1061, baseType: !120)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2897, file: !47, line: 1931, baseType: !2948, size: 64, offset: 960)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2897, file: !47, line: 1932, baseType: !2958, size: 64, offset: 1024)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!127, !525, !565, !565, !127}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2897, file: !47, line: 1933, baseType: !2962, size: 64, offset: 1088)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!127, !127, !525, !127}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2897, file: !47, line: 1934, baseType: !2966, size: 64, offset: 1152)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!127, !525, !127, !2969}
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !47, line: 1063, flags: DIFlagFwdDecl)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2897, file: !47, line: 1935, baseType: !522, size: 64, offset: 1216)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2897, file: !47, line: 1936, baseType: !2973, size: 64, offset: 1280)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!127, !127}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2897, file: !47, line: 1937, baseType: !2966, size: 64, offset: 1344)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2897, file: !47, line: 1938, baseType: !2978, size: 64, offset: 1408)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!1109, !2981, !525, !1935, !1112, !7}
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !132, line: 59, flags: DIFlagFwdDecl)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2897, file: !47, line: 1939, baseType: !2984, size: 64, offset: 1472)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!1109, !525, !1935, !2981, !1112, !7}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2897, file: !47, line: 1940, baseType: !1797, size: 64, offset: 1536)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2897, file: !47, line: 1941, baseType: !2989, size: 64, offset: 1600)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!127, !525, !127, !2992, !1718}
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2897, file: !47, line: 1942, baseType: !2994, size: 64, offset: 1664)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!128, !525, !127, !565, !565}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2897, file: !47, line: 1944, baseType: !2998, size: 64, offset: 1728)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{null, !1911, !525}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2897, file: !47, line: 1948, baseType: !3002, size: 64, offset: 1792)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!1109, !525, !565, !525, !565, !1112, !7}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2897, file: !47, line: 1950, baseType: !3006, size: 64, offset: 1856)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!565, !525, !565, !525, !565, !565, !7}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2897, file: !47, line: 1953, baseType: !2958, size: 64, offset: 1920)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2897, file: !47, line: 1954, baseType: !3011, size: 64, offset: 1984)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!127, !3014, !7}
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !47, line: 1911, flags: DIFlagFwdDecl)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2897, file: !47, line: 1955, baseType: !3017, size: 64, offset: 2048)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!127, !3014, !2918, !7}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2892, file: !47, line: 723, baseType: !2376, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !957, file: !47, line: 725, baseType: !3022, size: 64, offset: 2816)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !47, line: 725, flags: DIFlagFwdDecl)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !957, file: !47, line: 726, baseType: !1312, size: 1536, align: 64, offset: 2880)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !957, file: !47, line: 727, baseType: !213, size: 128, offset: 4416)
!3026 = !DIDerivedType(tag: DW_TAG_member, scope: !957, file: !47, line: 728, baseType: !3027, size: 64, offset: 4544)
!3027 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !957, file: !47, line: 728, size: 64, elements: !3028)
!3028 = !{!3029, !3030, !3033, !3034}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3027, file: !47, line: 729, baseType: !2981, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3027, file: !47, line: 730, baseType: !3031, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !47, line: 730, flags: DIFlagFwdDecl)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3027, file: !47, line: 731, baseType: !815, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3027, file: !47, line: 732, baseType: !7, size: 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !957, file: !47, line: 735, baseType: !143, size: 32, offset: 4608)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !957, file: !47, line: 738, baseType: !143, size: 32, offset: 4640)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !957, file: !47, line: 739, baseType: !2730, size: 64, offset: 4672)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !957, file: !47, line: 750, baseType: !120, size: 64, offset: 4736)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !922, file: !923, line: 91, baseType: !3040, size: 256, offset: 448)
!3040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 256, elements: !2734)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !922, file: !923, line: 94, baseType: !3042, size: 64, offset: 704)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3043, line: 25, size: 64, elements: !3044)
!3043 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3044 = !{!3045}
!3045 = !DIDerivedType(tag: DW_TAG_member, scope: !3042, file: !3043, line: 26, baseType: !3046, size: 64)
!3046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3042, file: !3043, line: 26, size: 64, elements: !3047)
!3047 = !{!3048, !3049}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3046, file: !3043, line: 28, baseType: !209, size: 64, align: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, scope: !3046, file: !3043, line: 30, baseType: !3050, size: 64)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3046, file: !3043, line: 30, size: 64, elements: !3051)
!3051 = !{!3052, !3053}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3050, file: !3043, line: 31, baseType: !507, size: 32)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3050, file: !3043, line: 32, baseType: !127, size: 32, offset: 32)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !922, file: !923, line: 95, baseType: !2749, size: 64, offset: 768)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !922, file: !923, line: 96, baseType: !1161, size: 64, offset: 832)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !922, file: !923, line: 97, baseType: !123, size: 64, offset: 896)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !922, file: !923, line: 98, baseType: !120, size: 64, offset: 960)
!3058 = !DIDerivedType(tag: DW_TAG_member, scope: !922, file: !923, line: 100, baseType: !3059, size: 128, offset: 1024)
!3059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !922, file: !923, line: 100, size: 128, elements: !3060)
!3060 = !{!3061, !3062}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3059, file: !923, line: 101, baseType: !213, size: 128)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3059, file: !923, line: 102, baseType: !3063, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !922, file: !923, line: 104, baseType: !213, size: 128, offset: 1152)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !922, file: !923, line: 105, baseType: !213, size: 128, offset: 1280)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !922, file: !923, line: 113, baseType: !3067, size: 128, offset: 1408)
!3067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !922, file: !923, line: 109, size: 128, elements: !3068)
!3068 = !{!3069, !3070, !3071}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3067, file: !923, line: 110, baseType: !607, size: 128)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3067, file: !923, line: 111, baseType: !932, size: 128)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3067, file: !923, line: 112, baseType: !533, size: 128, align: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !917, file: !918, line: 72, baseType: !1161, size: 64, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !917, file: !918, line: 73, baseType: !127, size: 32, offset: 128)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !917, file: !918, line: 74, baseType: !996, size: 64, offset: 192)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !912, file: !913, line: 10, baseType: !921, size: 64, offset: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !526, file: !47, line: 1015, baseType: !956, size: 64, offset: 1344)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !526, file: !47, line: 1016, baseType: !2895, size: 64, offset: 1408)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !526, file: !47, line: 1018, baseType: !208, size: 64, offset: 1472)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !526, file: !47, line: 1020, baseType: !120, size: 64, offset: 1536)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !526, file: !47, line: 1023, baseType: !120, size: 64, offset: 1600)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !526, file: !47, line: 1027, baseType: !3082, size: 64, offset: 1664)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !526, file: !47, line: 1029, baseType: !1311, size: 64, offset: 1728)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !526, file: !47, line: 1030, baseType: !1807, size: 32, offset: 1792)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !526, file: !47, line: 1031, baseType: !1807, size: 32, offset: 1824)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !493, file: !25, line: 756, baseType: !123, size: 64, offset: 704)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !493, file: !25, line: 757, baseType: !123, size: 64, offset: 768)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !493, file: !25, line: 760, baseType: !123, size: 64, offset: 832)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !493, file: !25, line: 761, baseType: !123, size: 64, offset: 896)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !493, file: !25, line: 763, baseType: !123, size: 64, offset: 960)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !493, file: !25, line: 764, baseType: !3092, size: 64, offset: 1024)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1465, line: 299, baseType: !3094)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1465, line: 299, size: 64, elements: !3095)
!3095 = !{!3096}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3094, file: !1465, line: 299, baseType: !3097, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1470, line: 18, baseType: !123)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !493, file: !25, line: 773, baseType: !154, size: 32, offset: 1088)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !493, file: !25, line: 785, baseType: !154, size: 32, offset: 1120)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !493, file: !25, line: 795, baseType: !3101, size: 64, offset: 1152)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !25, line: 726, size: 128, elements: !3103)
!3103 = !{!3104, !3105}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3102, file: !25, line: 727, baseType: !208, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3102, file: !25, line: 728, baseType: !127, size: 32, offset: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !493, file: !25, line: 801, baseType: !123, size: 64, offset: 1216)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !493, file: !25, line: 804, baseType: !546, size: 64, offset: 1280)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !493, file: !25, line: 806, baseType: !127, size: 32, offset: 1344)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !493, file: !25, line: 808, baseType: !507, size: 32, offset: 1376)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !493, file: !25, line: 823, baseType: !742, size: 320, offset: 1408)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !493, file: !25, line: 825, baseType: !213, size: 128, offset: 1728)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !493, file: !25, line: 845, baseType: !127, size: 32, offset: 1856)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !493, file: !25, line: 849, baseType: !123, size: 64, offset: 1920)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !493, file: !25, line: 850, baseType: !123, size: 64, offset: 1984)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !493, file: !25, line: 852, baseType: !123, size: 64, offset: 2048)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !493, file: !25, line: 853, baseType: !123, size: 64, offset: 2112)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !493, file: !25, line: 854, baseType: !548, size: 64, offset: 2176)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !493, file: !25, line: 855, baseType: !123, size: 64, offset: 2240)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !493, file: !25, line: 856, baseType: !123, size: 64, offset: 2304)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !493, file: !25, line: 857, baseType: !123, size: 64, offset: 2368)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !493, file: !25, line: 858, baseType: !123, size: 64, offset: 2432)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !493, file: !25, line: 865, baseType: !363, size: 32, offset: 2496)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !493, file: !25, line: 867, baseType: !507, size: 32, offset: 2528)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !493, file: !25, line: 869, baseType: !123, size: 64, offset: 2560)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !493, file: !25, line: 869, baseType: !123, size: 64, offset: 2624)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !493, file: !25, line: 869, baseType: !123, size: 64, offset: 2688)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !493, file: !25, line: 869, baseType: !123, size: 64, offset: 2752)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !493, file: !25, line: 870, baseType: !123, size: 64, offset: 2816)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !493, file: !25, line: 870, baseType: !123, size: 64, offset: 2880)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !493, file: !25, line: 870, baseType: !123, size: 64, offset: 2944)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !493, file: !25, line: 871, baseType: !123, size: 64, offset: 3008)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !493, file: !25, line: 871, baseType: !123, size: 64, offset: 3072)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !493, file: !25, line: 871, baseType: !123, size: 64, offset: 3136)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !493, file: !25, line: 871, baseType: !123, size: 64, offset: 3200)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !493, file: !25, line: 873, baseType: !3136, size: 3328, offset: 3264)
!3136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 3328, elements: !3137)
!3137 = !{!3138}
!3138 = !DISubrange(count: 52)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !493, file: !25, line: 875, baseType: !3140, size: 1280, offset: 6592)
!3140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !863, size: 1280, elements: !612)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !493, file: !25, line: 877, baseType: !3142, size: 64, offset: 7872)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !25, line: 877, flags: DIFlagFwdDecl)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !493, file: !25, line: 880, baseType: !3145, size: 1088, offset: 7936)
!3145 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3146, line: 72, baseType: !3147)
!3146 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3146, line: 23, size: 1088, elements: !3148)
!3148 = !{!3149, !3150, !3151, !3152, !3153, !3178, !3179, !3180, !3181, !3206, !3207, !3208}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3147, file: !3146, line: 28, baseType: !208, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3147, file: !3146, line: 38, baseType: !548, size: 64, offset: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3147, file: !3146, line: 40, baseType: !123, size: 64, offset: 128)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3147, file: !3146, line: 43, baseType: !742, size: 320, offset: 192)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3147, file: !3146, line: 44, baseType: !3154, size: 64, offset: 512)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3156, line: 30, size: 128, elements: !3157)
!3156 = !DIFile(filename: "./arch/x86/include/asm/mmu_context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e7349a2ab0563256af671ddc4b36d96")
!3157 = !{!3158, !3176, !3177}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3155, file: !3156, line: 37, baseType: !3159, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3161, line: 16, size: 64, elements: !3162)
!3161 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3162 = !{!3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3160, file: !3161, line: 17, baseType: !177, size: 16)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3160, file: !3161, line: 18, baseType: !177, size: 16, offset: 16)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3160, file: !3161, line: 19, baseType: !177, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3160, file: !3161, line: 19, baseType: !177, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3160, file: !3161, line: 19, baseType: !177, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3160, file: !3161, line: 19, baseType: !177, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3160, file: !3161, line: 19, baseType: !177, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3160, file: !3161, line: 20, baseType: !177, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3160, file: !3161, line: 20, baseType: !177, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3160, file: !3161, line: 20, baseType: !177, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3160, file: !3161, line: 20, baseType: !177, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3160, file: !3161, line: 20, baseType: !177, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3160, file: !3161, line: 20, baseType: !177, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "nr_entries", scope: !3155, file: !3156, line: 38, baseType: !7, size: 32, offset: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !3155, file: !3156, line: 49, baseType: !127, size: 32, offset: 96)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3147, file: !3146, line: 48, baseType: !123, size: 64, offset: 576)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3147, file: !3146, line: 59, baseType: !553, size: 256, offset: 640)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3147, file: !3146, line: 60, baseType: !120, size: 64, offset: 896)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3147, file: !3146, line: 61, baseType: !3182, size: 64, offset: 960)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3184)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3185, line: 13, size: 1216, elements: !3186)
!3185 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3186 = !{!3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3184, file: !3185, line: 14, baseType: !120, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3184, file: !3185, line: 15, baseType: !123, size: 64, offset: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3184, file: !3185, line: 17, baseType: !123, size: 64, offset: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3184, file: !3185, line: 17, baseType: !123, size: 64, offset: 192)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3184, file: !3185, line: 18, baseType: !123, size: 64, offset: 256)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3184, file: !3185, line: 18, baseType: !123, size: 64, offset: 320)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3184, file: !3185, line: 19, baseType: !1846, size: 64, offset: 384)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3184, file: !3185, line: 21, baseType: !128, size: 64, offset: 448)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3184, file: !3185, line: 23, baseType: !128, size: 64, offset: 512)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3184, file: !3185, line: 24, baseType: !128, size: 64, offset: 576)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3184, file: !3185, line: 25, baseType: !128, size: 64, offset: 640)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3184, file: !3185, line: 26, baseType: !128, size: 64, offset: 704)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3184, file: !3185, line: 27, baseType: !128, size: 64, offset: 768)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3184, file: !3185, line: 28, baseType: !128, size: 64, offset: 832)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3184, file: !3185, line: 29, baseType: !128, size: 64, offset: 896)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3184, file: !3185, line: 30, baseType: !128, size: 64, offset: 960)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3184, file: !3185, line: 31, baseType: !128, size: 64, offset: 1024)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3184, file: !3185, line: 32, baseType: !128, size: 64, offset: 1088)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3184, file: !3185, line: 33, baseType: !128, size: 64, offset: 1152)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3147, file: !3146, line: 63, baseType: !154, size: 32, offset: 1024)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3147, file: !3146, line: 69, baseType: !177, size: 16, offset: 1056)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3147, file: !3146, line: 70, baseType: !2136, size: 16, offset: 1072)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !493, file: !25, line: 882, baseType: !123, size: 64, offset: 9024)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !493, file: !25, line: 885, baseType: !507, size: 32, offset: 9088)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !493, file: !25, line: 886, baseType: !3212, size: 64, offset: 9152)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !25, line: 732, flags: DIFlagFwdDecl)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !493, file: !25, line: 901, baseType: !660, size: 64, offset: 9216)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !493, file: !25, line: 904, baseType: !525, size: 64, offset: 9280)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !493, file: !25, line: 906, baseType: !3217, size: 64, offset: 9344)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !25, line: 906, flags: DIFlagFwdDecl)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !493, file: !25, line: 930, baseType: !154, size: 32, offset: 9408)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !493, file: !25, line: 933, baseType: !154, size: 32, offset: 9440)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !493, file: !25, line: 935, baseType: !3222, size: 64, offset: 9472)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !73, line: 103, size: 64, elements: !3223)
!3223 = !{!3224}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3222, file: !73, line: 104, baseType: !3225, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !73, line: 101, flags: DIFlagFwdDecl)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !493, file: !25, line: 940, baseType: !546, size: 64, offset: 9536)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !493, file: !25, line: 942, baseType: !2243, size: 256, offset: 9600)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !490, file: !25, line: 986, baseType: !3230, offset: 10240)
!3230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, elements: !680)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !131, file: !132, line: 882, baseType: !489, size: 64, offset: 9792)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !131, file: !132, line: 884, baseType: !127, size: 32, offset: 9856)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !131, file: !132, line: 885, baseType: !127, size: 32, offset: 9888)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !131, file: !132, line: 886, baseType: !127, size: 32, offset: 9920)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !131, file: !132, line: 888, baseType: !127, size: 32, offset: 9952)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !131, file: !132, line: 890, baseType: !123, size: 64, offset: 9984)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !131, file: !132, line: 893, baseType: !7, size: 32, offset: 10048)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !131, file: !132, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !131, file: !132, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !131, file: !132, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !131, file: !132, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !131, file: !132, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !131, file: !132, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !131, file: !132, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !131, file: !132, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !131, file: !132, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !131, file: !132, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !131, file: !132, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !131, file: !132, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !131, file: !132, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !131, file: !132, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !131, file: !132, line: 969, baseType: !123, size: 64, offset: 10176)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !131, file: !132, line: 971, baseType: !3254, size: 448, offset: 10240)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 448, elements: !3255)
!3255 = !{!3256, !3257, !3262}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3254, file: !12, line: 26, baseType: !123, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3254, file: !12, line: 27, baseType: !3258, size: 64, offset: 64)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!128, !3261}
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, scope: !3254, file: !12, line: 28, baseType: !3263, size: 320, offset: 128)
!3263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3254, file: !12, line: 28, size: 320, elements: !3264)
!3264 = !{!3265, !3275, !3300}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3263, file: !12, line: 37, baseType: !3266, size: 320)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3263, file: !12, line: 30, size: 320, elements: !3267)
!3267 = !{!3268, !3270, !3271, !3272, !3273, !3274}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3266, file: !12, line: 31, baseType: !3269, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3266, file: !12, line: 32, baseType: !141, size: 32, offset: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3266, file: !12, line: 33, baseType: !141, size: 32, offset: 96)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3266, file: !12, line: 34, baseType: !141, size: 32, offset: 128)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3266, file: !12, line: 35, baseType: !208, size: 64, offset: 192)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3266, file: !12, line: 36, baseType: !3269, size: 64, offset: 256)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3263, file: !12, line: 47, baseType: !3276, size: 192)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3263, file: !12, line: 39, size: 192, elements: !3277)
!3277 = !{!3278, !3279, !3280, !3299}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3276, file: !12, line: 40, baseType: !354, size: 32)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3276, file: !12, line: 41, baseType: !11, size: 32, offset: 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, scope: !3276, file: !12, line: 42, baseType: !3281, size: 64, offset: 64)
!3281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3276, file: !12, line: 42, size: 64, elements: !3282)
!3282 = !{!3283, !3291}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3281, file: !12, line: 43, baseType: !3284, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3286, line: 7, size: 128, elements: !3287)
!3286 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3287 = !{!3288, !3290}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3285, file: !3286, line: 8, baseType: !3289, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !356, line: 93, baseType: !226)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3285, file: !3286, line: 9, baseType: !226, size: 64, offset: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3281, file: !12, line: 44, baseType: !3292, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3294, line: 7, size: 64, elements: !3295)
!3294 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3295 = !{!3296, !3298}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3293, file: !3294, line: 8, baseType: !3297, size: 32)
!3297 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3294, line: 5, baseType: !734)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3293, file: !3294, line: 9, baseType: !734, size: 32, offset: 32)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3276, file: !12, line: 46, baseType: !208, size: 64, offset: 128)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3263, file: !12, line: 55, baseType: !3301, size: 256)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3263, file: !12, line: 49, size: 256, elements: !3302)
!3302 = !{!3303, !3306, !3307, !3308, !3309}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3301, file: !12, line: 50, baseType: !3304, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3301, file: !12, line: 51, baseType: !127, size: 32, offset: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3301, file: !12, line: 52, baseType: !127, size: 32, offset: 96)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3301, file: !12, line: 53, baseType: !123, size: 64, offset: 128)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3301, file: !12, line: 54, baseType: !123, size: 64, offset: 192)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !131, file: !132, line: 973, baseType: !3311, size: 32, offset: 10688)
!3311 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !122, line: 27, baseType: !3312)
!3312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !356, line: 28, baseType: !127)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !131, file: !132, line: 974, baseType: !3311, size: 32, offset: 10720)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !131, file: !132, line: 978, baseType: !123, size: 64, offset: 10752)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !131, file: !132, line: 987, baseType: !130, size: 64, offset: 10816)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !131, file: !132, line: 990, baseType: !130, size: 64, offset: 10880)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !131, file: !132, line: 995, baseType: !213, size: 128, offset: 10944)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !131, file: !132, line: 996, baseType: !213, size: 128, offset: 11072)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !131, file: !132, line: 997, baseType: !130, size: 64, offset: 11200)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !131, file: !132, line: 1005, baseType: !213, size: 128, offset: 11264)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !131, file: !132, line: 1006, baseType: !213, size: 128, offset: 11392)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !131, file: !132, line: 1009, baseType: !595, size: 64, offset: 11520)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !131, file: !132, line: 1010, baseType: !3324, size: 512, offset: 11584)
!3324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 512, elements: !612)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !131, file: !132, line: 1011, baseType: !213, size: 128, offset: 12096)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !131, file: !132, line: 1012, baseType: !213, size: 128, offset: 12224)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !131, file: !132, line: 1014, baseType: !1992, size: 64, offset: 12352)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !131, file: !132, line: 1017, baseType: !2129, size: 64, offset: 12416)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !131, file: !132, line: 1020, baseType: !2129, size: 64, offset: 12480)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !131, file: !132, line: 1023, baseType: !120, size: 64, offset: 12544)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !131, file: !132, line: 1025, baseType: !208, size: 64, offset: 12608)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !131, file: !132, line: 1026, baseType: !208, size: 64, offset: 12672)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !131, file: !132, line: 1031, baseType: !208, size: 64, offset: 12736)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !131, file: !132, line: 1032, baseType: !3335, size: 192, offset: 12800)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !132, line: 324, size: 192, elements: !3336)
!3336 = !{!3337, !3338, !3339}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3335, file: !132, line: 326, baseType: !208, size: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3335, file: !132, line: 327, baseType: !208, size: 64, offset: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3335, file: !132, line: 328, baseType: !306, size: 32, offset: 128)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !131, file: !132, line: 1041, baseType: !123, size: 64, offset: 12992)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !131, file: !132, line: 1042, baseType: !123, size: 64, offset: 13056)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !131, file: !132, line: 1045, baseType: !208, size: 64, offset: 13120)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !131, file: !132, line: 1048, baseType: !208, size: 64, offset: 13184)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !131, file: !132, line: 1051, baseType: !123, size: 64, offset: 13248)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !131, file: !132, line: 1052, baseType: !123, size: 64, offset: 13312)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !131, file: !132, line: 1055, baseType: !3347, size: 640, offset: 13376)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3348, line: 132, size: 640, elements: !3349)
!3348 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3349 = !{!3350, !3356, !3357}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3347, file: !3348, line: 133, baseType: !3351, size: 576)
!3351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3352, size: 576, elements: !591)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3348, line: 117, size: 192, elements: !3353)
!3353 = !{!3354, !3355}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3352, file: !3348, line: 118, baseType: !208, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3352, file: !3348, line: 119, baseType: !369, size: 128, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3347, file: !3348, line: 134, baseType: !7, size: 32, offset: 576)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3347, file: !3348, line: 135, baseType: !7, size: 32, offset: 608)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !131, file: !132, line: 1058, baseType: !3359, size: 448, offset: 14016)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3348, line: 144, size: 448, elements: !3360)
!3360 = !{!3361, !3362, !3363}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3359, file: !3348, line: 145, baseType: !533, size: 128, align: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3359, file: !3348, line: 146, baseType: !553, size: 256, offset: 128)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3359, file: !3348, line: 147, baseType: !7, size: 32, offset: 384)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !131, file: !132, line: 1064, baseType: !693, size: 64, offset: 14464)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !131, file: !132, line: 1067, baseType: !693, size: 64, offset: 14528)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !131, file: !132, line: 1070, baseType: !693, size: 64, offset: 14592)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !131, file: !132, line: 1074, baseType: !726, size: 64, offset: 14656)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !131, file: !132, line: 1084, baseType: !3369, size: 128, offset: 14720)
!3369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !788, size: 128, elements: !2743)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !131, file: !132, line: 1086, baseType: !3371, size: 64, offset: 14848)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !132, line: 55, flags: DIFlagFwdDecl)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !131, file: !132, line: 1089, baseType: !3374, size: 64, offset: 14912)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3375, line: 12, size: 64, elements: !3376)
!3375 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3376 = !{!3377}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3374, file: !3375, line: 13, baseType: !3378, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3375, line: 8, flags: DIFlagFwdDecl)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !131, file: !132, line: 1090, baseType: !3381, size: 128, offset: 14976)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3382, line: 13, size: 128, elements: !3383)
!3382 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3383 = !{!3384}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3381, file: !3382, line: 14, baseType: !213, size: 128)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !131, file: !132, line: 1097, baseType: !3386, size: 64, offset: 15104)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !132, line: 50, flags: DIFlagFwdDecl)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !131, file: !132, line: 1100, baseType: !3389, size: 64, offset: 15168)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !132, line: 1100, flags: DIFlagFwdDecl)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !131, file: !132, line: 1103, baseType: !3392, size: 64, offset: 15232)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !132, line: 53, flags: DIFlagFwdDecl)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !131, file: !132, line: 1107, baseType: !3395, size: 64, offset: 15296)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3397, line: 31, size: 576, elements: !3398)
!3397 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3398 = !{!3399, !3400, !3403, !3406, !3409, !3410, !3413, !3416, !3417}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3396, file: !3397, line: 32, baseType: !149, size: 32)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3396, file: !3397, line: 33, baseType: !3401, size: 64, offset: 64)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3397, line: 9, flags: DIFlagFwdDecl)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3396, file: !3397, line: 34, baseType: !3404, size: 64, offset: 128)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3397, line: 10, flags: DIFlagFwdDecl)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3396, file: !3397, line: 35, baseType: !3407, size: 64, offset: 192)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3397, line: 8, flags: DIFlagFwdDecl)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3396, file: !3397, line: 36, baseType: !629, size: 64, offset: 256)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3396, file: !3397, line: 37, baseType: !3411, size: 64, offset: 320)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !728, line: 34, flags: DIFlagFwdDecl)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3396, file: !3397, line: 38, baseType: !3414, size: 64, offset: 384)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3397, line: 38, flags: DIFlagFwdDecl)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3396, file: !3397, line: 39, baseType: !3414, size: 64, offset: 448)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3396, file: !3397, line: 40, baseType: !3418, size: 64, offset: 512)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3397, line: 12, flags: DIFlagFwdDecl)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !131, file: !132, line: 1110, baseType: !3421, size: 64, offset: 15360)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3423, line: 93, size: 8768, elements: !3424)
!3423 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3424 = !{!3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3472, !3481, !3482, !3484, !3485, !3486, !3489, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3527, !3528, !3535, !3545, !3548, !3549, !3552, !3553, !3554, !3555, !3556, !3557}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3422, file: !3423, line: 94, baseType: !149, size: 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3422, file: !3423, line: 95, baseType: !154, size: 32, offset: 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3422, file: !3423, line: 96, baseType: !127, size: 32, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3422, file: !3423, line: 97, baseType: !127, size: 32, offset: 96)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3422, file: !3423, line: 98, baseType: !213, size: 128, offset: 128)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3422, file: !3423, line: 100, baseType: !616, size: 192, offset: 256)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3422, file: !3423, line: 103, baseType: !130, size: 64, offset: 448)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3422, file: !3423, line: 106, baseType: !3433, size: 192, offset: 512)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !666, line: 32, size: 192, elements: !3434)
!3434 = !{!3435, !3436}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3433, file: !666, line: 33, baseType: !213, size: 128)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3433, file: !666, line: 34, baseType: !3437, size: 64, offset: 128)
!3437 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3438, line: 25, baseType: !3439)
!3438 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3438, line: 23, size: 64, elements: !3440)
!3440 = !{!3441}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3439, file: !3438, line: 24, baseType: !440, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3422, file: !3423, line: 109, baseType: !603, size: 64, offset: 704)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3422, file: !3423, line: 112, baseType: !127, size: 32, offset: 768)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3422, file: !3423, line: 114, baseType: !127, size: 32, offset: 800)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3422, file: !3423, line: 115, baseType: !130, size: 64, offset: 832)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3422, file: !3423, line: 118, baseType: !127, size: 32, offset: 896)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3422, file: !3423, line: 119, baseType: !7, size: 32, offset: 928)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3422, file: !3423, line: 121, baseType: !3449, size: 64, offset: 960)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3423, line: 80, size: 448, elements: !3451)
!3451 = !{!3452, !3453, !3459}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3450, file: !3423, line: 81, baseType: !154, size: 32)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3450, file: !3423, line: 82, baseType: !3454, size: 128, offset: 64)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3423, line: 75, size: 128, elements: !3455)
!3455 = !{!3456, !3457}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3454, file: !3423, line: 76, baseType: !130, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3454, file: !3423, line: 77, baseType: !3458, size: 64, offset: 64)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3450, file: !3423, line: 83, baseType: !1415, size: 256, offset: 192)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3422, file: !3423, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3422, file: !3423, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3422, file: !3423, line: 138, baseType: !7, size: 32, offset: 1056)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3422, file: !3423, line: 139, baseType: !213, size: 128, offset: 1088)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3422, file: !3423, line: 142, baseType: !281, size: 512, offset: 1216)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3422, file: !3423, line: 143, baseType: !289, size: 64, offset: 1728)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3422, file: !3423, line: 150, baseType: !3467, size: 256, offset: 1792)
!3467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3468, size: 256, elements: !2119)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3423, line: 38, size: 128, elements: !3469)
!3469 = !{!3470, !3471}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3468, file: !3423, line: 39, baseType: !208, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3468, file: !3423, line: 40, baseType: !208, size: 64, offset: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3422, file: !3423, line: 156, baseType: !3473, size: 192, offset: 2048)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3423, line: 66, size: 192, elements: !3474)
!3474 = !{!3475}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3473, file: !3423, line: 67, baseType: !3476, size: 192)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3423, line: 47, size: 192, elements: !3477)
!3477 = !{!3478, !3479, !3480}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3476, file: !3423, line: 48, baseType: !548, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3476, file: !3423, line: 49, baseType: !548, size: 64, offset: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3476, file: !3423, line: 50, baseType: !548, size: 64, offset: 128)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3422, file: !3423, line: 160, baseType: !3347, size: 640, offset: 2240)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3422, file: !3423, line: 163, baseType: !3483, size: 256, offset: 2880)
!3483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, size: 256, elements: !612)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3422, file: !3423, line: 169, baseType: !595, size: 64, offset: 3136)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3422, file: !3423, line: 172, baseType: !127, size: 32, offset: 3200)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3422, file: !3423, line: 174, baseType: !3487, size: 64, offset: 3264)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3423, line: 174, flags: DIFlagFwdDecl)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3422, file: !3423, line: 185, baseType: !3490, size: 64, offset: 3328)
!3490 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !359, line: 860, baseType: !3491)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !359, line: 853, size: 64, elements: !3492)
!3492 = !{!3493, !3494}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3491, file: !359, line: 858, baseType: !927, size: 32)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3491, file: !359, line: 859, baseType: !507, size: 32, offset: 32)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3422, file: !3423, line: 186, baseType: !208, size: 64, offset: 3392)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3422, file: !3423, line: 186, baseType: !208, size: 64, offset: 3456)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3422, file: !3423, line: 186, baseType: !208, size: 64, offset: 3520)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3422, file: !3423, line: 186, baseType: !208, size: 64, offset: 3584)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3422, file: !3423, line: 187, baseType: !208, size: 64, offset: 3648)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3422, file: !3423, line: 188, baseType: !208, size: 64, offset: 3712)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3422, file: !3423, line: 189, baseType: !3335, size: 192, offset: 3776)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3422, file: !3423, line: 190, baseType: !123, size: 64, offset: 3968)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3422, file: !3423, line: 190, baseType: !123, size: 64, offset: 4032)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3422, file: !3423, line: 190, baseType: !123, size: 64, offset: 4096)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3422, file: !3423, line: 190, baseType: !123, size: 64, offset: 4160)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3422, file: !3423, line: 191, baseType: !123, size: 64, offset: 4224)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3422, file: !3423, line: 191, baseType: !123, size: 64, offset: 4288)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3422, file: !3423, line: 191, baseType: !123, size: 64, offset: 4352)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3422, file: !3423, line: 191, baseType: !123, size: 64, offset: 4416)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3422, file: !3423, line: 192, baseType: !123, size: 64, offset: 4480)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3422, file: !3423, line: 192, baseType: !123, size: 64, offset: 4544)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3422, file: !3423, line: 192, baseType: !123, size: 64, offset: 4608)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3422, file: !3423, line: 192, baseType: !123, size: 64, offset: 4672)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3422, file: !3423, line: 193, baseType: !123, size: 64, offset: 4736)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3422, file: !3423, line: 193, baseType: !123, size: 64, offset: 4800)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3422, file: !3423, line: 194, baseType: !3517, size: 448, offset: 4864)
!3517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3518, line: 12, size: 448, elements: !3519)
!3518 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3519 = !{!3520, !3521, !3522, !3523, !3524, !3525, !3526}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3517, file: !3518, line: 15, baseType: !208, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3517, file: !3518, line: 17, baseType: !208, size: 64, offset: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3517, file: !3518, line: 19, baseType: !208, size: 64, offset: 128)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3517, file: !3518, line: 21, baseType: !208, size: 64, offset: 192)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3517, file: !3518, line: 29, baseType: !208, size: 64, offset: 256)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3517, file: !3518, line: 35, baseType: !208, size: 64, offset: 320)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3517, file: !3518, line: 44, baseType: !208, size: 64, offset: 384)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3422, file: !3423, line: 202, baseType: !210, size: 64, offset: 5312)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3422, file: !3423, line: 213, baseType: !3529, size: 2048, offset: 5376)
!3529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3530, size: 2048, elements: !2743)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3531, line: 43, size: 128, elements: !3532)
!3531 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3532 = !{!3533, !3534}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3530, file: !3531, line: 44, baseType: !1114, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3530, file: !3531, line: 45, baseType: !1114, size: 64, offset: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3422, file: !3423, line: 216, baseType: !3536, size: 448, offset: 7424)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3423, line: 30, size: 448, elements: !3537)
!3537 = !{!3538, !3539, !3540, !3541, !3542, !3543, !3544}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3536, file: !3423, line: 31, baseType: !127, size: 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3536, file: !3423, line: 32, baseType: !128, size: 64, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3536, file: !3423, line: 33, baseType: !123, size: 64, offset: 128)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3536, file: !3423, line: 34, baseType: !208, size: 64, offset: 192)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3536, file: !3423, line: 34, baseType: !208, size: 64, offset: 256)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3536, file: !3423, line: 35, baseType: !123, size: 64, offset: 320)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3536, file: !3423, line: 35, baseType: !123, size: 64, offset: 384)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3422, file: !3423, line: 219, baseType: !3546, size: 64, offset: 7872)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3423, line: 219, flags: DIFlagFwdDecl)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3422, file: !3423, line: 222, baseType: !7, size: 32, offset: 7936)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3422, file: !3423, line: 223, baseType: !3550, size: 64, offset: 8000)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3423, line: 223, flags: DIFlagFwdDecl)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3422, file: !3423, line: 230, baseType: !802, size: 8, offset: 8064)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3422, file: !3423, line: 231, baseType: !770, size: 16, offset: 8080)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3422, file: !3423, line: 232, baseType: !770, size: 16, offset: 8096)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3422, file: !3423, line: 234, baseType: !489, size: 64, offset: 8128)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3422, file: !3423, line: 237, baseType: !553, size: 256, offset: 8192)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3422, file: !3423, line: 243, baseType: !742, size: 320, offset: 8448)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !131, file: !132, line: 1111, baseType: !3559, size: 64, offset: 15424)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3423, line: 20, size: 16640, elements: !3561)
!3561 = !{!3562, !3563, !3564, !3565}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3560, file: !3423, line: 21, baseType: !507, size: 32)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3560, file: !3423, line: 22, baseType: !149, size: 32, offset: 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3560, file: !3423, line: 23, baseType: !616, size: 192, offset: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3560, file: !3423, line: 24, baseType: !3566, size: 16384, offset: 256)
!3566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3567, size: 16384, elements: !1250)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !666, line: 51, size: 256, elements: !3568)
!3568 = !{!3569}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3567, file: !666, line: 52, baseType: !3570, size: 256)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !666, line: 37, size: 256, elements: !3571)
!3571 = !{!3572, !3579, !3580, !3584}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3570, file: !666, line: 39, baseType: !3573, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3574, line: 83, baseType: !3575)
!3574 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3574, line: 82, baseType: !3577)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{null, !127}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3570, file: !666, line: 40, baseType: !123, size: 64, offset: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3570, file: !666, line: 46, baseType: !3581, size: 64, offset: 128)
!3581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3574, line: 86, baseType: !3582)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3574, line: 85, baseType: !2351)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3570, file: !666, line: 48, baseType: !3437, size: 64, offset: 192)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !131, file: !132, line: 1112, baseType: !3437, size: 64, offset: 15488)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !131, file: !132, line: 1113, baseType: !3437, size: 64, offset: 15552)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !131, file: !132, line: 1115, baseType: !3437, size: 64, offset: 15616)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !131, file: !132, line: 1116, baseType: !3433, size: 192, offset: 15680)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !131, file: !132, line: 1117, baseType: !123, size: 64, offset: 15872)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !131, file: !132, line: 1118, baseType: !1112, size: 64, offset: 15936)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !131, file: !132, line: 1119, baseType: !7, size: 32, offset: 16000)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !131, file: !132, line: 1121, baseType: !536, size: 64, offset: 16064)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !131, file: !132, line: 1125, baseType: !3594, size: 64, offset: 16128)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !132, line: 43, flags: DIFlagFwdDecl)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !131, file: !132, line: 1127, baseType: !684, size: 32, offset: 16192)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !131, file: !132, line: 1128, baseType: !7, size: 32, offset: 16224)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !131, file: !132, line: 1130, baseType: !3599, size: 128, offset: 16256)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3600, line: 37, size: 128, elements: !3601)
!3600 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3601 = !{!3602, !3603, !3604}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3599, file: !3600, line: 38, baseType: !127, size: 32)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3599, file: !3600, line: 39, baseType: !154, size: 32, offset: 32)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3599, file: !3600, line: 40, baseType: !3605, size: 64, offset: 64)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3600, line: 24, flags: DIFlagFwdDecl)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !131, file: !132, line: 1131, baseType: !3608, size: 256, offset: 16384)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3609, line: 12, size: 256, elements: !3610)
!3609 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3610 = !{!3611, !3612, !3613, !3614}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3608, file: !3609, line: 13, baseType: !815, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3608, file: !3609, line: 14, baseType: !123, size: 64, offset: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3608, file: !3609, line: 15, baseType: !123, size: 64, offset: 128)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3608, file: !3609, line: 16, baseType: !802, size: 8, offset: 192)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !131, file: !132, line: 1134, baseType: !208, size: 64, offset: 16640)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !131, file: !132, line: 1135, baseType: !208, size: 64, offset: 16704)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !131, file: !132, line: 1138, baseType: !507, size: 32, offset: 16768)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !131, file: !132, line: 1141, baseType: !306, size: 32, offset: 16800)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !131, file: !132, line: 1143, baseType: !3620, size: 64, offset: 16832)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !132, line: 735, size: 64, elements: !3621)
!3621 = !{!3622}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3620, file: !132, line: 736, baseType: !3623, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !131, file: !132, line: 1147, baseType: !372, size: 128, offset: 16896)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !131, file: !132, line: 1149, baseType: !130, size: 64, offset: 17024)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !131, file: !132, line: 1151, baseType: !3627, size: 64, offset: 17088)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !132, line: 1151, flags: DIFlagFwdDecl)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !131, file: !132, line: 1188, baseType: !120, size: 64, offset: 17152)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !131, file: !132, line: 1191, baseType: !3631, size: 64, offset: 17216)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !132, line: 44, flags: DIFlagFwdDecl)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !131, file: !132, line: 1194, baseType: !3634, size: 64, offset: 17280)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !132, line: 45, flags: DIFlagFwdDecl)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !131, file: !132, line: 1197, baseType: !3637, size: 64, offset: 17344)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !132, line: 61, flags: DIFlagFwdDecl)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !131, file: !132, line: 1199, baseType: !3640, size: 64, offset: 17408)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3642, line: 99, size: 128, elements: !3643)
!3642 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3643 = !{!3644, !3645, !3646}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3641, file: !3642, line: 100, baseType: !546, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3641, file: !3642, line: 101, baseType: !154, size: 32, offset: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3641, file: !3642, line: 103, baseType: !179, size: 16, offset: 96)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !131, file: !132, line: 1202, baseType: !3648, size: 64, offset: 17472)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !132, line: 48, flags: DIFlagFwdDecl)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !131, file: !132, line: 1205, baseType: !123, size: 64, offset: 17536)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !131, file: !132, line: 1206, baseType: !3652, size: 64, offset: 17600)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !666, line: 14, baseType: !3654)
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !666, line: 12, size: 384, elements: !3655)
!3655 = !{!3656}
!3656 = !DIDerivedType(tag: DW_TAG_member, scope: !3654, file: !666, line: 13, baseType: !3657, size: 384)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3654, file: !666, line: 13, size: 384, elements: !3658)
!3658 = !{!3659, !3660, !3661, !3662}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3657, file: !666, line: 13, baseType: !127, size: 32)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3657, file: !666, line: 13, baseType: !127, size: 32, offset: 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3657, file: !666, line: 13, baseType: !127, size: 32, offset: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3657, file: !666, line: 13, baseType: !3663, size: 256, offset: 128)
!3663 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3664, line: 37, size: 256, elements: !3665)
!3664 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3665 = !{!3666, !3671, !3684, !3690, !3699, !3726, !3731}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3663, file: !3664, line: 42, baseType: !3667, size: 64)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3663, file: !3664, line: 39, size: 64, elements: !3668)
!3668 = !{!3669, !3670}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3667, file: !3664, line: 40, baseType: !3312, size: 32)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3667, file: !3664, line: 41, baseType: !689, size: 32, offset: 32)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3663, file: !3664, line: 50, baseType: !3672, size: 192)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3663, file: !3664, line: 45, size: 192, elements: !3673)
!3673 = !{!3674, !3676, !3677, !3683}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3672, file: !3664, line: 46, baseType: !3675, size: 32)
!3675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !356, line: 95, baseType: !127)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3672, file: !3664, line: 47, baseType: !127, size: 32, offset: 32)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3672, file: !3664, line: 48, baseType: !3678, size: 64, offset: 64)
!3678 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3664, line: 11, baseType: !3679)
!3679 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3664, line: 8, size: 64, elements: !3680)
!3680 = !{!3681, !3682}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3679, file: !3664, line: 9, baseType: !127, size: 32)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3679, file: !3664, line: 10, baseType: !120, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3672, file: !3664, line: 49, baseType: !127, size: 32, offset: 128)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3663, file: !3664, line: 57, baseType: !3685, size: 128)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3663, file: !3664, line: 53, size: 128, elements: !3686)
!3686 = !{!3687, !3688, !3689}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3685, file: !3664, line: 54, baseType: !3312, size: 32)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3685, file: !3664, line: 55, baseType: !689, size: 32, offset: 32)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3685, file: !3664, line: 56, baseType: !3678, size: 64, offset: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3663, file: !3664, line: 66, baseType: !3691, size: 256)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3663, file: !3664, line: 60, size: 256, elements: !3692)
!3692 = !{!3693, !3694, !3695, !3696, !3698}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3691, file: !3664, line: 61, baseType: !3312, size: 32)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3691, file: !3664, line: 62, baseType: !689, size: 32, offset: 32)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3691, file: !3664, line: 63, baseType: !127, size: 32, offset: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3691, file: !3664, line: 64, baseType: !3697, size: 64, offset: 128)
!3697 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !356, line: 94, baseType: !1111)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3691, file: !3664, line: 65, baseType: !3697, size: 64, offset: 192)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3663, file: !3664, line: 105, baseType: !3700, size: 256)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3663, file: !3664, line: 69, size: 256, elements: !3701)
!3701 = !{!3702, !3703}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3700, file: !3664, line: 70, baseType: !120, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, scope: !3700, file: !3664, line: 79, baseType: !3704, size: 192, offset: 64)
!3704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3700, file: !3664, line: 79, size: 192, elements: !3705)
!3705 = !{!3706, !3707, !3708, !3715, !3720}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3704, file: !3664, line: 81, baseType: !127, size: 32)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3704, file: !3664, line: 86, baseType: !770, size: 16)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3704, file: !3664, line: 92, baseType: !3709, size: 192)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3704, file: !3664, line: 88, size: 192, elements: !3710)
!3710 = !{!3711, !3713, !3714}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3709, file: !3664, line: 89, baseType: !3712, size: 64)
!3712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !788, size: 64, elements: !350)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3709, file: !3664, line: 90, baseType: !120, size: 64, offset: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3709, file: !3664, line: 91, baseType: !120, size: 64, offset: 128)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3704, file: !3664, line: 97, baseType: !3716, size: 96)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3704, file: !3664, line: 94, size: 96, elements: !3717)
!3717 = !{!3718, !3719}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3716, file: !3664, line: 95, baseType: !3712, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3716, file: !3664, line: 96, baseType: !143, size: 32, offset: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3704, file: !3664, line: 103, baseType: !3721, size: 128)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3704, file: !3664, line: 99, size: 128, elements: !3722)
!3722 = !{!3723, !3724, !3725}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3721, file: !3664, line: 100, baseType: !123, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3721, file: !3664, line: 101, baseType: !143, size: 32, offset: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3721, file: !3664, line: 102, baseType: !143, size: 32, offset: 96)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3663, file: !3664, line: 111, baseType: !3727, size: 128)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3663, file: !3664, line: 108, size: 128, elements: !3728)
!3728 = !{!3729, !3730}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3727, file: !3664, line: 109, baseType: !128, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3727, file: !3664, line: 110, baseType: !127, size: 32, offset: 64)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3663, file: !3664, line: 118, baseType: !3732, size: 128)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3663, file: !3664, line: 114, size: 128, elements: !3733)
!3733 = !{!3734, !3735, !3736}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3732, file: !3664, line: 115, baseType: !120, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3732, file: !3664, line: 116, baseType: !127, size: 32, offset: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3732, file: !3664, line: 117, baseType: !7, size: 32, offset: 96)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !131, file: !132, line: 1208, baseType: !3517, size: 448, offset: 17664)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !131, file: !132, line: 1215, baseType: !208, size: 64, offset: 18112)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !131, file: !132, line: 1217, baseType: !208, size: 64, offset: 18176)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !131, file: !132, line: 1219, baseType: !208, size: 64, offset: 18240)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !131, file: !132, line: 1223, baseType: !3742, size: 64, offset: 18304)
!3742 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3743, line: 99, baseType: !3744)
!3743 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3743, line: 99, size: 64, elements: !3745)
!3745 = !{!3746}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3744, file: !3743, line: 99, baseType: !440, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !131, file: !132, line: 1225, baseType: !927, size: 32, offset: 18368)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !131, file: !132, line: 1226, baseType: !127, size: 32, offset: 18400)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !131, file: !132, line: 1227, baseType: !127, size: 32, offset: 18432)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !131, file: !132, line: 1231, baseType: !3751, size: 64, offset: 18496)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !132, line: 1231, flags: DIFlagFwdDecl)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !131, file: !132, line: 1233, baseType: !213, size: 128, offset: 18560)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !131, file: !132, line: 1240, baseType: !3755, size: 64, offset: 18688)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !132, line: 62, flags: DIFlagFwdDecl)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !131, file: !132, line: 1242, baseType: !3758, size: 64, offset: 18752)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !132, line: 1242, flags: DIFlagFwdDecl)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !131, file: !132, line: 1244, baseType: !213, size: 128, offset: 18816)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !131, file: !132, line: 1245, baseType: !3762, size: 64, offset: 18944)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !132, line: 51, flags: DIFlagFwdDecl)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !131, file: !132, line: 1246, baseType: !553, size: 256, offset: 19008)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !131, file: !132, line: 1247, baseType: !7, size: 32, offset: 19264)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !131, file: !132, line: 1250, baseType: !3767, size: 64, offset: 19328)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !132, line: 57, flags: DIFlagFwdDecl)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !131, file: !132, line: 1251, baseType: !553, size: 256, offset: 19392)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !131, file: !132, line: 1252, baseType: !213, size: 128, offset: 19648)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !131, file: !132, line: 1259, baseType: !1543, size: 64, offset: 19776)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !131, file: !132, line: 1260, baseType: !770, size: 16, offset: 19840)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !131, file: !132, line: 1261, baseType: !770, size: 16, offset: 19856)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !131, file: !132, line: 1314, baseType: !3775, size: 64, offset: 19904)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3777, line: 62, size: 256, align: 256, elements: !3778)
!3777 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3778 = !{!3779, !3780, !3781, !3782, !3783, !3784, !3785}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3776, file: !3777, line: 75, baseType: !143, size: 32)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3776, file: !3777, line: 90, baseType: !143, size: 32, offset: 32)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3776, file: !3777, line: 112, baseType: !209, size: 64, offset: 64)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3776, file: !3777, line: 132, baseType: !143, size: 32, offset: 128)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3776, file: !3777, line: 140, baseType: !143, size: 32, offset: 160)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3776, file: !3777, line: 149, baseType: !143, size: 32, offset: 192)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3776, file: !3777, line: 154, baseType: !3786, offset: 224)
!3786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !788, elements: !680)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !131, file: !132, line: 1315, baseType: !141, size: 32, offset: 19968)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !131, file: !132, line: 1316, baseType: !141, size: 32, offset: 20000)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !131, file: !132, line: 1321, baseType: !123, size: 64, offset: 20032)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !131, file: !132, line: 1325, baseType: !127, size: 32, offset: 20096)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !131, file: !132, line: 1326, baseType: !127, size: 32, offset: 20128)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !131, file: !132, line: 1327, baseType: !127, size: 32, offset: 20160)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !131, file: !132, line: 1328, baseType: !127, size: 32, offset: 20192)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !131, file: !132, line: 1329, baseType: !533, size: 128, align: 64, offset: 20224)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !131, file: !132, line: 1332, baseType: !3796, size: 128, offset: 20352)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3797, line: 51, size: 128, elements: !3798)
!3797 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3798 = !{!3799, !3804, !3805}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3796, file: !3797, line: 60, baseType: !3800, size: 64)
!3800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3801, line: 7, size: 64, elements: !3802)
!3801 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3802 = !{!3803}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3800, file: !3801, line: 12, baseType: !437, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3796, file: !3797, line: 63, baseType: !802, size: 8, offset: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3796, file: !3797, line: 70, baseType: !802, size: 8, offset: 72)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !131, file: !132, line: 1335, baseType: !2981, size: 64, offset: 20480)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !131, file: !132, line: 1337, baseType: !3808, size: 128, offset: 20544)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3797, line: 39, size: 128, elements: !3809)
!3809 = !{!3810, !3811, !3812}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3808, file: !3797, line: 40, baseType: !1331, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3808, file: !3797, line: 42, baseType: !143, size: 32, offset: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3808, file: !3797, line: 43, baseType: !143, size: 32, offset: 96)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !131, file: !132, line: 1340, baseType: !3814, size: 64, offset: 20672)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !132, line: 69, flags: DIFlagFwdDecl)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !131, file: !132, line: 1351, baseType: !127, size: 32, offset: 20736)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !131, file: !132, line: 1352, baseType: !127, size: 32, offset: 20768)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !131, file: !132, line: 1354, baseType: !123, size: 64, offset: 20800)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !131, file: !132, line: 1364, baseType: !208, size: 64, offset: 20864)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !131, file: !132, line: 1365, baseType: !208, size: 64, offset: 20928)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !131, file: !132, line: 1412, baseType: !123, size: 64, offset: 20992)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !131, file: !132, line: 1453, baseType: !3823, size: 64, offset: 21056)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !132, line: 1453, flags: DIFlagFwdDecl)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !131, file: !132, line: 1457, baseType: !3826, size: 64, offset: 21120)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !73, line: 61, size: 576, elements: !3828)
!3828 = !{!3829, !3830, !3849, !3852, !3853, !3952, !3962}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3827, file: !73, line: 62, baseType: !72, size: 32)
!3830 = !DIDerivedType(tag: DW_TAG_member, scope: !3827, file: !73, line: 64, baseType: !3831, size: 192, offset: 64)
!3831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3827, file: !73, line: 64, size: 192, elements: !3832)
!3832 = !{!3833, !3844}
!3833 = !DIDerivedType(tag: DW_TAG_member, scope: !3831, file: !73, line: 65, baseType: !3834, size: 192)
!3834 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3831, file: !73, line: 65, size: 192, elements: !3835)
!3835 = !{!3836, !3843}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3834, file: !73, line: 66, baseType: !3837, size: 128)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3838, line: 50, size: 128, elements: !3839)
!3838 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3839 = !{!3840, !3841, !3842}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3837, file: !3838, line: 52, baseType: !123, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3837, file: !3838, line: 54, baseType: !7, size: 32, offset: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3837, file: !3838, line: 55, baseType: !7, size: 32, offset: 96)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3834, file: !73, line: 67, baseType: !123, size: 64, offset: 128)
!3844 = !DIDerivedType(tag: DW_TAG_member, scope: !3831, file: !73, line: 70, baseType: !3845, size: 192)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3831, file: !73, line: 70, size: 192, elements: !3846)
!3846 = !{!3847, !3848}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3845, file: !73, line: 71, baseType: !533, size: 128, align: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3845, file: !73, line: 72, baseType: !123, size: 64, offset: 128)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3827, file: !73, line: 76, baseType: !3850, size: 64, offset: 256)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !73, line: 76, flags: DIFlagFwdDecl)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3827, file: !73, line: 77, baseType: !123, size: 64, offset: 320)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3827, file: !73, line: 79, baseType: !3854, size: 64, offset: 384)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3838, line: 25, size: 256, elements: !3856)
!3856 = !{!3857, !3863, !3933}
!3857 = !DIDerivedType(tag: DW_TAG_member, scope: !3855, file: !3838, line: 26, baseType: !3858, size: 128)
!3858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3855, file: !3838, line: 26, size: 128, elements: !3859)
!3859 = !{!3860, !3862}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3858, file: !3838, line: 27, baseType: !3861, size: 128)
!3861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 128, elements: !2743)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3858, file: !3838, line: 28, baseType: !3861, size: 128)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3855, file: !3838, line: 31, baseType: !3864, size: 64, offset: 128)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3866)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3, line: 505, size: 256, elements: !3867)
!3867 = !{!3868, !3924, !3928, !3929}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "emulate", scope: !3866, file: !3, line: 506, baseType: !3869, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!802, !3854, !3872}
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3874, line: 103, size: 1344, elements: !3875)
!3874 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3875 = !{!3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3904, !3905, !3906}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3873, file: !3874, line: 109, baseType: !123, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3873, file: !3874, line: 110, baseType: !123, size: 64, offset: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3873, file: !3874, line: 111, baseType: !123, size: 64, offset: 128)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3873, file: !3874, line: 112, baseType: !123, size: 64, offset: 192)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3873, file: !3874, line: 113, baseType: !123, size: 64, offset: 256)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3873, file: !3874, line: 114, baseType: !123, size: 64, offset: 320)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3873, file: !3874, line: 117, baseType: !123, size: 64, offset: 384)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3873, file: !3874, line: 118, baseType: !123, size: 64, offset: 448)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3873, file: !3874, line: 119, baseType: !123, size: 64, offset: 512)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3873, file: !3874, line: 120, baseType: !123, size: 64, offset: 576)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3873, file: !3874, line: 121, baseType: !123, size: 64, offset: 640)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3873, file: !3874, line: 122, baseType: !123, size: 64, offset: 704)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3873, file: !3874, line: 123, baseType: !123, size: 64, offset: 768)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3873, file: !3874, line: 124, baseType: !123, size: 64, offset: 832)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3873, file: !3874, line: 125, baseType: !123, size: 64, offset: 896)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3873, file: !3874, line: 139, baseType: !123, size: 64, offset: 960)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3873, file: !3874, line: 142, baseType: !123, size: 64, offset: 1024)
!3893 = !DIDerivedType(tag: DW_TAG_member, scope: !3873, file: !3874, line: 144, baseType: !3894, size: 64, offset: 1088)
!3894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3873, file: !3874, line: 144, size: 64, elements: !3895)
!3895 = !{!3896, !3897, !3898}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3894, file: !3874, line: 146, baseType: !177, size: 16)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3894, file: !3874, line: 148, baseType: !208, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3894, file: !3874, line: 150, baseType: !3899, size: 64)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3874, line: 59, size: 64, elements: !3900)
!3900 = !{!3901, !3902, !3903}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3899, file: !3874, line: 61, baseType: !208, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3899, file: !3874, line: 63, baseType: !208, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3899, file: !3874, line: 65, baseType: !208, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3873, file: !3874, line: 153, baseType: !123, size: 64, offset: 1152)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3873, file: !3874, line: 154, baseType: !123, size: 64, offset: 1216)
!3906 = !DIDerivedType(tag: DW_TAG_member, scope: !3873, file: !3874, line: 156, baseType: !3907, size: 64, offset: 1280)
!3907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3873, file: !3874, line: 156, size: 64, elements: !3908)
!3908 = !{!3909, !3910, !3911}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3907, file: !3874, line: 158, baseType: !177, size: 16)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3907, file: !3874, line: 160, baseType: !208, size: 64)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3907, file: !3874, line: 162, baseType: !3912, size: 64)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3874, line: 69, size: 64, elements: !3913)
!3913 = !{!3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3912, file: !3874, line: 71, baseType: !208, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3912, file: !3874, line: 73, baseType: !208, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3912, file: !3874, line: 75, baseType: !208, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3912, file: !3874, line: 77, baseType: !208, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3912, file: !3874, line: 80, baseType: !208, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3912, file: !3874, line: 83, baseType: !208, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3912, file: !3874, line: 86, baseType: !208, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3912, file: !3874, line: 88, baseType: !208, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3912, file: !3874, line: 93, baseType: !208, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3912, file: !3874, line: 100, baseType: !208, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "pre_xol", scope: !3866, file: !3, line: 507, baseType: !3925, size: 64, offset: 64)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!127, !3854, !3872}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "post_xol", scope: !3866, file: !3, line: 508, baseType: !3925, size: 64, offset: 128)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3866, file: !3, line: 509, baseType: !3930, size: 64, offset: 192)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{null, !3854, !3872}
!3933 = !DIDerivedType(tag: DW_TAG_member, scope: !3855, file: !3838, line: 33, baseType: !3934, size: 64, offset: 192)
!3934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3855, file: !3838, line: 33, size: 64, elements: !3935)
!3935 = !{!3936, !3942, !3947}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3934, file: !3838, line: 38, baseType: !3937, size: 64)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3934, file: !3838, line: 34, size: 64, elements: !3938)
!3938 = !{!3939, !3940, !3941}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3937, file: !3838, line: 35, baseType: !734, size: 32)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3937, file: !3838, line: 36, baseType: !323, size: 8, offset: 32)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3937, file: !3838, line: 37, baseType: !323, size: 8, offset: 40)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3934, file: !3838, line: 42, baseType: !3943, size: 16)
!3943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3934, file: !3838, line: 39, size: 16, elements: !3944)
!3944 = !{!3945, !3946}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3943, file: !3838, line: 40, baseType: !323, size: 8)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3943, file: !3838, line: 41, baseType: !323, size: 8, offset: 8)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3934, file: !3838, line: 46, baseType: !3948, size: 16)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3934, file: !3838, line: 43, size: 16, elements: !3949)
!3949 = !{!3950, !3951}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3948, file: !3838, line: 44, baseType: !323, size: 8)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3948, file: !3838, line: 45, baseType: !323, size: 8, offset: 8)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3827, file: !73, line: 81, baseType: !3953, size: 64, offset: 448)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !73, line: 85, size: 384, elements: !3955)
!3955 = !{!3956, !3957, !3958, !3959, !3960, !3961}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3954, file: !73, line: 86, baseType: !3850, size: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3954, file: !73, line: 87, baseType: !123, size: 64, offset: 64)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3954, file: !73, line: 88, baseType: !123, size: 64, offset: 128)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3954, file: !73, line: 89, baseType: !123, size: 64, offset: 192)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3954, file: !73, line: 90, baseType: !802, size: 8, offset: 256)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3954, file: !73, line: 92, baseType: !3953, size: 64, offset: 320)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3827, file: !73, line: 82, baseType: !7, size: 32, offset: 512)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !131, file: !132, line: 1463, baseType: !3964, offset: 21184)
!3964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !132, line: 739, elements: !518)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !131, file: !132, line: 1470, baseType: !533, size: 128, align: 64, offset: 21184)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !131, file: !132, line: 1471, baseType: !149, size: 32, offset: 21312)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !131, file: !132, line: 1472, baseType: !127, size: 32, offset: 21344)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !131, file: !132, line: 1474, baseType: !130, size: 64, offset: 21376)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !131, file: !132, line: 1475, baseType: !2231, size: 320, offset: 21440)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !131, file: !132, line: 1478, baseType: !3971, size: 64, offset: 21760)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !132, line: 1478, flags: DIFlagFwdDecl)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !131, file: !132, line: 1482, baseType: !149, size: 32, offset: 21824)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !131, file: !132, line: 1489, baseType: !120, size: 64, offset: 21888)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !131, file: !132, line: 1504, baseType: !120, size: 64, offset: 21952)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !131, file: !132, line: 1505, baseType: !209, size: 64, offset: 22016)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !131, file: !132, line: 1506, baseType: !208, size: 64, offset: 22080)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !131, file: !132, line: 1507, baseType: !209, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !131, file: !132, line: 1508, baseType: !209, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !131, file: !132, line: 1509, baseType: !209, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !131, file: !132, line: 1510, baseType: !533, size: 128, align: 64, offset: 22208)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !131, file: !132, line: 1511, baseType: !127, size: 32, offset: 22336)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !131, file: !132, line: 1515, baseType: !3984, size: 64, offset: 22400)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !167, line: 56, size: 64, elements: !3985)
!3985 = !{!3986}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3984, file: !167, line: 57, baseType: !170, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !131, file: !132, line: 1518, baseType: !3984, size: 64, offset: 22464)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !131, file: !132, line: 1528, baseType: !533, size: 128, align: 64, offset: 22528)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !131, file: !132, line: 1552, baseType: !3990, size: 35328, offset: 23040)
!3990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3991, line: 430, size: 35328, elements: !3992)
!3991 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3992 = !{!3993, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4006, !4007, !4008, !4009, !4010, !4011, !4014, !4015, !4016, !4017}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3990, file: !3991, line: 432, baseType: !3994, size: 192)
!3994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3160, size: 192, elements: !591)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3990, file: !3991, line: 436, baseType: !123, size: 64, offset: 192)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3990, file: !3991, line: 440, baseType: !179, size: 16, offset: 256)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3990, file: !3991, line: 441, baseType: !179, size: 16, offset: 272)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3990, file: !3991, line: 442, baseType: !179, size: 16, offset: 288)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3990, file: !3991, line: 443, baseType: !179, size: 16, offset: 304)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3990, file: !3991, line: 447, baseType: !123, size: 64, offset: 320)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3990, file: !3991, line: 448, baseType: !123, size: 64, offset: 384)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3990, file: !3991, line: 459, baseType: !4003, size: 256, offset: 448)
!4003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4004, size: 256, elements: !612)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3991, line: 428, flags: DIFlagFwdDecl)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3990, file: !3991, line: 461, baseType: !123, size: 64, offset: 704)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3990, file: !3991, line: 463, baseType: !123, size: 64, offset: 768)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3990, file: !3991, line: 465, baseType: !123, size: 64, offset: 832)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3990, file: !3991, line: 466, baseType: !123, size: 64, offset: 896)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3990, file: !3991, line: 467, baseType: !123, size: 64, offset: 960)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3990, file: !3991, line: 473, baseType: !4012, size: 64, offset: 1024)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3991, line: 10, flags: DIFlagFwdDecl)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3990, file: !3991, line: 480, baseType: !123, size: 64, offset: 1088)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3990, file: !3991, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3990, file: !3991, line: 491, baseType: !141, size: 32, offset: 1184)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3990, file: !3991, line: 501, baseType: !4018, size: 33792, offset: 1536)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4019, line: 448, size: 33792, elements: !4020)
!4019 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4020 = !{!4021, !4022, !4023, !4133, !4134, !4140, !4141}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4018, file: !4019, line: 461, baseType: !7, size: 32)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4018, file: !4019, line: 468, baseType: !123, size: 64, offset: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4018, file: !4019, line: 476, baseType: !4024, size: 64, offset: 128)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4019, line: 356, size: 33280, align: 512, elements: !4026)
!4026 = !{!4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4025, file: !4019, line: 358, baseType: !7, size: 32)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4025, file: !4019, line: 361, baseType: !7, size: 32, offset: 32)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4025, file: !4019, line: 364, baseType: !208, size: 64, offset: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4025, file: !4019, line: 367, baseType: !208, size: 64, offset: 128)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4025, file: !4019, line: 370, baseType: !208, size: 64, offset: 192)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4025, file: !4019, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4025, file: !4019, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4025, file: !4019, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4025, file: !4019, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4025, file: !4019, line: 397, baseType: !4037, size: 32768, offset: 512)
!4037 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4019, line: 348, size: 32768, elements: !4038)
!4038 = !{!4039, !4054, !4091, !4116, !4129}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4037, file: !4019, line: 349, baseType: !4040, size: 896)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4019, line: 12, size: 896, elements: !4041)
!4041 = !{!4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4053}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4040, file: !4019, line: 13, baseType: !141, size: 32)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4040, file: !4019, line: 14, baseType: !141, size: 32, offset: 32)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4040, file: !4019, line: 15, baseType: !141, size: 32, offset: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4040, file: !4019, line: 16, baseType: !141, size: 32, offset: 96)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4040, file: !4019, line: 17, baseType: !141, size: 32, offset: 128)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4040, file: !4019, line: 18, baseType: !141, size: 32, offset: 160)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4040, file: !4019, line: 19, baseType: !141, size: 32, offset: 192)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4040, file: !4019, line: 22, baseType: !4050, size: 640, offset: 224)
!4050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 640, elements: !4051)
!4051 = !{!4052}
!4052 = !DISubrange(count: 20)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4040, file: !4019, line: 25, baseType: !141, size: 32, offset: 864)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4037, file: !4019, line: 350, baseType: !4055, size: 4096, align: 128)
!4055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4019, line: 34, size: 4096, align: 128, elements: !4056)
!4056 = !{!4057, !4058, !4059, !4060, !4061, !4076, !4077, !4078, !4080, !4082, !4086}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4055, file: !4019, line: 35, baseType: !177, size: 16)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4055, file: !4019, line: 36, baseType: !177, size: 16, offset: 16)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4055, file: !4019, line: 37, baseType: !177, size: 16, offset: 32)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4055, file: !4019, line: 38, baseType: !177, size: 16, offset: 48)
!4061 = !DIDerivedType(tag: DW_TAG_member, scope: !4055, file: !4019, line: 39, baseType: !4062, size: 128, offset: 64)
!4062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4055, file: !4019, line: 39, size: 128, elements: !4063)
!4063 = !{!4064, !4069}
!4064 = !DIDerivedType(tag: DW_TAG_member, scope: !4062, file: !4019, line: 40, baseType: !4065, size: 128)
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4062, file: !4019, line: 40, size: 128, elements: !4066)
!4066 = !{!4067, !4068}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4065, file: !4019, line: 41, baseType: !208, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4065, file: !4019, line: 42, baseType: !208, size: 64, offset: 64)
!4069 = !DIDerivedType(tag: DW_TAG_member, scope: !4062, file: !4019, line: 44, baseType: !4070, size: 128)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4062, file: !4019, line: 44, size: 128, elements: !4071)
!4071 = !{!4072, !4073, !4074, !4075}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4070, file: !4019, line: 45, baseType: !141, size: 32)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4070, file: !4019, line: 46, baseType: !141, size: 32, offset: 32)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4070, file: !4019, line: 47, baseType: !141, size: 32, offset: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4070, file: !4019, line: 48, baseType: !141, size: 32, offset: 96)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4055, file: !4019, line: 51, baseType: !141, size: 32, offset: 192)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4055, file: !4019, line: 52, baseType: !141, size: 32, offset: 224)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4055, file: !4019, line: 55, baseType: !4079, size: 1024, offset: 256)
!4079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 1024, elements: !2734)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4055, file: !4019, line: 58, baseType: !4081, size: 2048, offset: 1280)
!4081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 2048, elements: !1250)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4055, file: !4019, line: 60, baseType: !4083, size: 384, offset: 3328)
!4083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 384, elements: !4084)
!4084 = !{!4085}
!4085 = !DISubrange(count: 12)
!4086 = !DIDerivedType(tag: DW_TAG_member, scope: !4055, file: !4019, line: 62, baseType: !4087, size: 384, offset: 3712)
!4087 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4055, file: !4019, line: 62, size: 384, elements: !4088)
!4088 = !{!4089, !4090}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4087, file: !4019, line: 63, baseType: !4083, size: 384)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4087, file: !4019, line: 64, baseType: !4083, size: 384)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4037, file: !4019, line: 351, baseType: !4092, size: 1088)
!4092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4019, line: 79, size: 1088, elements: !4093)
!4093 = !{!4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4115}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4092, file: !4019, line: 80, baseType: !141, size: 32)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4092, file: !4019, line: 81, baseType: !141, size: 32, offset: 32)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4092, file: !4019, line: 82, baseType: !141, size: 32, offset: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4092, file: !4019, line: 83, baseType: !141, size: 32, offset: 96)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4092, file: !4019, line: 84, baseType: !141, size: 32, offset: 128)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4092, file: !4019, line: 85, baseType: !141, size: 32, offset: 160)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4092, file: !4019, line: 86, baseType: !141, size: 32, offset: 192)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4092, file: !4019, line: 88, baseType: !4050, size: 640, offset: 224)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4092, file: !4019, line: 89, baseType: !323, size: 8, offset: 864)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4092, file: !4019, line: 90, baseType: !323, size: 8, offset: 872)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4092, file: !4019, line: 91, baseType: !323, size: 8, offset: 880)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4092, file: !4019, line: 92, baseType: !323, size: 8, offset: 888)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4092, file: !4019, line: 93, baseType: !323, size: 8, offset: 896)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4092, file: !4019, line: 94, baseType: !323, size: 8, offset: 904)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4092, file: !4019, line: 95, baseType: !4109, size: 64, offset: 960)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4111, line: 11, size: 128, elements: !4112)
!4111 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4112 = !{!4113, !4114}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4110, file: !4111, line: 12, baseType: !128, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4110, file: !4111, line: 13, baseType: !3872, size: 64, offset: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4092, file: !4019, line: 96, baseType: !141, size: 32, offset: 1024)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4037, file: !4019, line: 352, baseType: !4117, size: 4608, align: 512)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4019, line: 333, size: 4608, align: 512, elements: !4118)
!4118 = !{!4119, !4120, !4127}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4117, file: !4019, line: 334, baseType: !4055, size: 4096, align: 128)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4117, file: !4019, line: 335, baseType: !4121, size: 512, offset: 4096)
!4121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4019, line: 312, size: 512, elements: !4122)
!4122 = !{!4123, !4124, !4125}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4121, file: !4019, line: 313, baseType: !208, size: 64)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4121, file: !4019, line: 314, baseType: !208, size: 64, offset: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4121, file: !4019, line: 315, baseType: !4126, size: 384, offset: 128)
!4126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 384, elements: !789)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4117, file: !4019, line: 336, baseType: !4128, offset: 4608)
!4128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, elements: !680)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4037, file: !4019, line: 353, baseType: !4130, size: 32768)
!4130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 32768, elements: !4131)
!4131 = !{!4132}
!4132 = !DISubrange(count: 4096)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4018, file: !4019, line: 484, baseType: !4024, size: 64, offset: 192)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4018, file: !4019, line: 491, baseType: !4135, size: 128, offset: 256)
!4135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4019, line: 404, size: 128, elements: !4136)
!4136 = !{!4137, !4138, !4139}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4135, file: !4019, line: 424, baseType: !208, size: 64)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4135, file: !4019, line: 432, baseType: !7, size: 32, offset: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4135, file: !4019, line: 440, baseType: !7, size: 32, offset: 96)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4018, file: !4019, line: 498, baseType: !4135, size: 128, offset: 384)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4018, file: !4019, line: 508, baseType: !4025, size: 33280, align: 512, offset: 512)
!4142 = !{!4143, !4148, !4153, !4157, !4159, !4161, !4163, !0, !4165}
!4143 = !DIGlobalVariableExpression(var: !4144, expr: !DIExpression())
!4144 = distinct !DIGlobalVariable(scope: null, file: !3, line: 969, type: !4145, isLocal: true, isDefinition: true)
!4145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !788, size: 208, elements: !4146)
!4146 = !{!4147}
!4147 = !DISubrange(count: 26)
!4148 = !DIGlobalVariableExpression(var: !4149, expr: !DIExpression())
!4149 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1088, type: !4150, isLocal: true, isDefinition: true)
!4150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !788, size: 464, elements: !4151)
!4151 = !{!4152}
!4152 = !DISubrange(count: 58)
!4153 = !DIGlobalVariableExpression(var: !4154, expr: !DIExpression())
!4154 = distinct !DIGlobalVariable(name: "good_insns_64", scope: !2, file: !3, line: 148, type: !4155, isLocal: true, isDefinition: true)
!4155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4156, size: 256, elements: !350)
!4156 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !141)
!4157 = !DIGlobalVariableExpression(var: !4158, expr: !DIExpression())
!4158 = distinct !DIGlobalVariable(name: "good_insns_32", scope: !2, file: !3, line: 86, type: !4155, isLocal: true, isDefinition: true)
!4159 = !DIGlobalVariableExpression(var: !4160, expr: !DIExpression())
!4160 = distinct !DIGlobalVariable(name: "good_2byte_insns", scope: !2, file: !3, line: 198, type: !4155, isLocal: true, isDefinition: true)
!4161 = !DIGlobalVariableExpression(var: !4162, expr: !DIExpression())
!4162 = distinct !DIGlobalVariable(name: "branch_xol_ops", scope: !2, file: !3, line: 706, type: !3865, isLocal: true, isDefinition: true)
!4163 = !DIGlobalVariableExpression(var: !4164, expr: !DIExpression())
!4164 = distinct !DIGlobalVariable(name: "push_xol_ops", scope: !2, file: !3, line: 711, type: !3865, isLocal: true, isDefinition: true)
!4165 = !DIGlobalVariableExpression(var: !4166, expr: !DIExpression())
!4166 = distinct !DIGlobalVariable(scope: null, file: !4167, line: 249, type: !4168, isLocal: true, isDefinition: true)
!4167 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!4168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !788, size: 224, elements: !4169)
!4169 = !{!4170}
!4170 = !DISubrange(count: 28)
!4171 = !{i32 7, !"Dwarf Version", i32 5}
!4172 = !{i32 2, !"Debug Info Version", i32 3}
!4173 = !{i32 1, !"wchar_size", i32 2}
!4174 = !{i32 8, !"cf-protection-branch", i32 1}
!4175 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4176 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4177 = !{i32 1, !"Code Model", i32 2}
!4178 = !{i32 1, !"override-stack-alignment", i32 8}
!4179 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4180 = distinct !DISubprogram(name: "arch_uprobe_analyze_insn", scope: !3, file: !3, line: 854, type: !4181, scopeLine: 855, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4183)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!127, !3854, !489, !123}
!4183 = !{!4184, !4185, !4186, !4187, !4233, !4234}
!4184 = !DILocalVariable(name: "auprobe", arg: 1, scope: !4180, file: !3, line: 854, type: !3854)
!4185 = !DILocalVariable(name: "mm", arg: 2, scope: !4180, file: !3, line: 854, type: !489)
!4186 = !DILocalVariable(name: "addr", arg: 3, scope: !4180, file: !3, line: 854, type: !123)
!4187 = !DILocalVariable(name: "insn", scope: !4180, file: !3, line: 856, type: !4188)
!4188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "insn", file: !113, line: 68, size: 896, elements: !4189)
!4189 = !{!4190, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4216, !4221, !4222, !4224, !4225, !4226, !4227, !4228, !4231, !4232}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !4188, file: !113, line: 69, baseType: !4191, size: 64)
!4191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "insn_field", file: !113, line: 16, size: 64, elements: !4192)
!4192 = !{!4193, !4202, !4203}
!4193 = !DIDerivedType(tag: DW_TAG_member, scope: !4191, file: !113, line: 17, baseType: !4194, size: 32)
!4194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4191, file: !113, line: 17, size: 32, elements: !4195)
!4195 = !{!4196, !4199}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4194, file: !113, line: 18, baseType: !4197, size: 32)
!4197 = !DIDerivedType(tag: DW_TAG_typedef, name: "insn_value_t", file: !4198, line: 13, baseType: !127)
!4198 = !DIFile(filename: "./arch/x86/include/asm/inat_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cebd64027eadc0d452590e3ac4fca7d6")
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !4194, file: !113, line: 19, baseType: !4200, size: 32)
!4200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4201, size: 32, elements: !612)
!4201 = !DIDerivedType(tag: DW_TAG_typedef, name: "insn_byte_t", file: !4198, line: 12, baseType: !325)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "got", scope: !4191, file: !113, line: 22, baseType: !325, size: 8, offset: 32)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !4191, file: !113, line: 23, baseType: !325, size: 8, offset: 40)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "rex_prefix", scope: !4188, file: !113, line: 73, baseType: !4191, size: 64, offset: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "vex_prefix", scope: !4188, file: !113, line: 74, baseType: !4191, size: 64, offset: 128)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !4188, file: !113, line: 75, baseType: !4191, size: 64, offset: 192)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "modrm", scope: !4188, file: !113, line: 80, baseType: !4191, size: 64, offset: 256)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "sib", scope: !4188, file: !113, line: 81, baseType: !4191, size: 64, offset: 320)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "displacement", scope: !4188, file: !113, line: 82, baseType: !4191, size: 64, offset: 384)
!4210 = !DIDerivedType(tag: DW_TAG_member, scope: !4188, file: !113, line: 83, baseType: !4211, size: 64, offset: 448)
!4211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4188, file: !113, line: 83, size: 64, elements: !4212)
!4212 = !{!4213, !4214, !4215}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "immediate", scope: !4211, file: !113, line: 84, baseType: !4191, size: 64)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "moffset1", scope: !4211, file: !113, line: 85, baseType: !4191, size: 64)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "immediate1", scope: !4211, file: !113, line: 86, baseType: !4191, size: 64)
!4216 = !DIDerivedType(tag: DW_TAG_member, scope: !4188, file: !113, line: 88, baseType: !4217, size: 64, offset: 512)
!4217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4188, file: !113, line: 88, size: 64, elements: !4218)
!4218 = !{!4219, !4220}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "moffset2", scope: !4217, file: !113, line: 89, baseType: !4191, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "immediate2", scope: !4217, file: !113, line: 90, baseType: !4191, size: 64)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "emulate_prefix_size", scope: !4188, file: !113, line: 93, baseType: !127, size: 32, offset: 576)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4188, file: !113, line: 94, baseType: !4223, size: 32, offset: 608)
!4223 = !DIDerivedType(tag: DW_TAG_typedef, name: "insn_attr_t", file: !4198, line: 11, baseType: !7)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "opnd_bytes", scope: !4188, file: !113, line: 95, baseType: !325, size: 8, offset: 640)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "addr_bytes", scope: !4188, file: !113, line: 96, baseType: !325, size: 8, offset: 648)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4188, file: !113, line: 97, baseType: !325, size: 8, offset: 656)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "x86_64", scope: !4188, file: !113, line: 98, baseType: !325, size: 8, offset: 664)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "kaddr", scope: !4188, file: !113, line: 100, baseType: !4229, size: 64, offset: 704)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4201)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "end_kaddr", scope: !4188, file: !113, line: 101, baseType: !4229, size: 64, offset: 768)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "next_byte", scope: !4188, file: !113, line: 102, baseType: !4229, size: 64, offset: 832)
!4233 = !DILocalVariable(name: "fix_ip_or_call", scope: !4180, file: !3, line: 857, type: !323)
!4234 = !DILocalVariable(name: "ret", scope: !4180, file: !3, line: 858, type: !127)
!4235 = !DILocation(line: 854, column: 50, scope: !4180)
!4236 = !DILocation(line: 854, column: 77, scope: !4180)
!4237 = !DILocation(line: 854, column: 95, scope: !4180)
!4238 = !DILocation(line: 856, column: 2, scope: !4180)
!4239 = !DILocation(line: 856, column: 14, scope: !4180)
!4240 = !DILocation(line: 857, column: 2, scope: !4180)
!4241 = !DILocation(line: 857, column: 5, scope: !4180)
!4242 = !DILocation(line: 858, column: 2, scope: !4180)
!4243 = !DILocation(line: 858, column: 6, scope: !4180)
!4244 = !DILocation(line: 860, column: 25, scope: !4180)
!4245 = !DILocation(line: 860, column: 53, scope: !4180)
!4246 = !DILocation(line: 860, column: 41, scope: !4180)
!4247 = !DILocation(line: 860, column: 8, scope: !4180)
!4248 = !DILocation(line: 860, column: 6, scope: !4180)
!4249 = !DILocation(line: 861, column: 6, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4180, file: !3, line: 861, column: 6)
!4251 = !DILocation(line: 861, column: 6, scope: !4180)
!4252 = !DILocation(line: 862, column: 10, scope: !4250)
!4253 = !DILocation(line: 862, column: 3, scope: !4250)
!4254 = !DILocation(line: 864, column: 29, scope: !4180)
!4255 = !DILocation(line: 864, column: 8, scope: !4180)
!4256 = !DILocation(line: 864, column: 6, scope: !4180)
!4257 = !DILocation(line: 865, column: 6, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4180, file: !3, line: 865, column: 6)
!4259 = !DILocation(line: 865, column: 10, scope: !4258)
!4260 = !DILocation(line: 865, column: 6, scope: !4180)
!4261 = !DILocation(line: 866, column: 10, scope: !4258)
!4262 = !DILocation(line: 866, column: 3, scope: !4258)
!4263 = !DILocation(line: 868, column: 27, scope: !4180)
!4264 = !DILocation(line: 868, column: 8, scope: !4180)
!4265 = !DILocation(line: 868, column: 6, scope: !4180)
!4266 = !DILocation(line: 869, column: 6, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4180, file: !3, line: 869, column: 6)
!4268 = !DILocation(line: 869, column: 10, scope: !4267)
!4269 = !DILocation(line: 869, column: 6, scope: !4180)
!4270 = !DILocation(line: 870, column: 10, scope: !4267)
!4271 = !DILocation(line: 870, column: 3, scope: !4267)
!4272 = !DILocation(line: 876, column: 10, scope: !4180)
!4273 = !DILocation(line: 876, column: 2, scope: !4180)
!4274 = !DILocation(line: 878, column: 3, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4180, file: !3, line: 876, column: 26)
!4276 = !DILocation(line: 878, column: 12, scope: !4275)
!4277 = !DILocation(line: 878, column: 21, scope: !4275)
!4278 = !DILocation(line: 878, column: 28, scope: !4275)
!4279 = !DILocation(line: 879, column: 3, scope: !4275)
!4280 = !DILocation(line: 885, column: 18, scope: !4275)
!4281 = !DILocation(line: 886, column: 3, scope: !4275)
!4282 = !DILocation(line: 888, column: 18, scope: !4275)
!4283 = !DILocation(line: 889, column: 3, scope: !4275)
!4284 = !DILocation(line: 891, column: 11, scope: !4275)
!4285 = !DILocation(line: 891, column: 3, scope: !4275)
!4286 = !DILocation(line: 893, column: 19, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4275, file: !3, line: 891, column: 29)
!4288 = !DILocation(line: 894, column: 4, scope: !4287)
!4289 = !DILocation(line: 896, column: 19, scope: !4287)
!4290 = !DILocation(line: 897, column: 4, scope: !4287)
!4291 = !DILocation(line: 898, column: 3, scope: !4287)
!4292 = !DILocation(line: 901, column: 18, scope: !4275)
!4293 = !DILocation(line: 901, column: 3, scope: !4275)
!4294 = !DILocation(line: 902, column: 2, scope: !4275)
!4295 = !DILocation(line: 904, column: 32, scope: !4180)
!4296 = !DILocation(line: 904, column: 2, scope: !4180)
!4297 = !DILocation(line: 904, column: 11, scope: !4180)
!4298 = !DILocation(line: 904, column: 20, scope: !4180)
!4299 = !DILocation(line: 904, column: 25, scope: !4180)
!4300 = !DILocation(line: 905, column: 30, scope: !4180)
!4301 = !DILocation(line: 905, column: 2, scope: !4180)
!4302 = !DILocation(line: 905, column: 11, scope: !4180)
!4303 = !DILocation(line: 905, column: 20, scope: !4180)
!4304 = !DILocation(line: 905, column: 27, scope: !4180)
!4305 = !DILocation(line: 907, column: 2, scope: !4180)
!4306 = !DILocation(line: 907, column: 11, scope: !4180)
!4307 = !DILocation(line: 907, column: 15, scope: !4180)
!4308 = !DILocation(line: 908, column: 2, scope: !4180)
!4309 = !DILocation(line: 909, column: 1, scope: !4180)
!4310 = distinct !DISubprogram(name: "uprobe_init_insn", scope: !3, file: !3, line: 277, type: !4311, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4314)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!127, !3854, !4313, !802}
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4314 = !{!4315, !4316, !4317, !4318, !4319, !4321}
!4315 = !DILocalVariable(name: "auprobe", arg: 1, scope: !4310, file: !3, line: 277, type: !3854)
!4316 = !DILocalVariable(name: "insn", arg: 2, scope: !4310, file: !3, line: 277, type: !4313)
!4317 = !DILocalVariable(name: "x86_64", arg: 3, scope: !4310, file: !3, line: 277, type: !802)
!4318 = !DILocalVariable(name: "m", scope: !4310, file: !3, line: 279, type: !112)
!4319 = !DILocalVariable(name: "good_insns", scope: !4310, file: !3, line: 280, type: !4320)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4321 = !DILocalVariable(name: "ret", scope: !4310, file: !3, line: 281, type: !127)
!4322 = !DILocation(line: 277, column: 49, scope: !4310)
!4323 = !DILocation(line: 277, column: 71, scope: !4310)
!4324 = !DILocation(line: 277, column: 82, scope: !4310)
!4325 = !DILocation(line: 279, column: 2, scope: !4310)
!4326 = !DILocation(line: 279, column: 17, scope: !4310)
!4327 = !DILocation(line: 279, column: 21, scope: !4310)
!4328 = !{i8 0, i8 2}
!4329 = !DILocation(line: 280, column: 2, scope: !4310)
!4330 = !DILocation(line: 280, column: 16, scope: !4310)
!4331 = !DILocation(line: 281, column: 2, scope: !4310)
!4332 = !DILocation(line: 281, column: 6, scope: !4310)
!4333 = !DILocation(line: 283, column: 20, scope: !4310)
!4334 = !DILocation(line: 283, column: 26, scope: !4310)
!4335 = !DILocation(line: 283, column: 35, scope: !4310)
!4336 = !DILocation(line: 283, column: 64, scope: !4310)
!4337 = !DILocation(line: 283, column: 8, scope: !4310)
!4338 = !DILocation(line: 283, column: 6, scope: !4310)
!4339 = !DILocation(line: 284, column: 6, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 284, column: 6)
!4341 = !DILocation(line: 284, column: 10, scope: !4340)
!4342 = !DILocation(line: 284, column: 6, scope: !4310)
!4343 = !DILocation(line: 285, column: 3, scope: !4340)
!4344 = !DILocation(line: 287, column: 20, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 287, column: 6)
!4346 = !DILocation(line: 287, column: 6, scope: !4345)
!4347 = !DILocation(line: 287, column: 6, scope: !4310)
!4348 = !DILocation(line: 288, column: 3, scope: !4345)
!4349 = !DILocation(line: 291, column: 29, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 291, column: 6)
!4351 = !DILocation(line: 291, column: 6, scope: !4350)
!4352 = !DILocation(line: 291, column: 6, scope: !4310)
!4353 = !DILocation(line: 292, column: 3, scope: !4350)
!4354 = !DILocation(line: 294, column: 6, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 294, column: 6)
!4356 = !DILocation(line: 294, column: 6, scope: !4310)
!4357 = !DILocation(line: 295, column: 14, scope: !4355)
!4358 = !DILocation(line: 295, column: 3, scope: !4355)
!4359 = !DILocation(line: 297, column: 14, scope: !4355)
!4360 = !DILocation(line: 299, column: 6, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 299, column: 6)
!4362 = !DILocation(line: 299, column: 6, scope: !4310)
!4363 = !DILocation(line: 300, column: 3, scope: !4361)
!4364 = !DILocation(line: 302, column: 6, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 302, column: 6)
!4366 = !DILocation(line: 302, column: 12, scope: !4365)
!4367 = !DILocation(line: 302, column: 19, scope: !4365)
!4368 = !DILocation(line: 302, column: 26, scope: !4365)
!4369 = !DILocation(line: 302, column: 6, scope: !4310)
!4370 = !DILocation(line: 303, column: 7, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4372, file: !3, line: 303, column: 7)
!4372 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 302, column: 32)
!4373 = !DILocation(line: 303, column: 7, scope: !4372)
!4374 = !DILocation(line: 304, column: 4, scope: !4371)
!4375 = !DILocation(line: 305, column: 2, scope: !4372)
!4376 = !DILocation(line: 307, column: 2, scope: !4310)
!4377 = !DILocation(line: 308, column: 1, scope: !4310)
!4378 = distinct !DISubprogram(name: "is_64bit_mm", scope: !3156, file: !3156, line: 224, type: !4379, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4381)
!4379 = !DISubroutineType(types: !4380)
!4380 = !{!802, !489}
!4381 = !{!4382}
!4382 = !DILocalVariable(name: "mm", arg: 1, scope: !4378, file: !3156, line: 224, type: !489)
!4383 = !DILocation(line: 224, column: 50, scope: !4378)
!4384 = !DILocation(line: 227, column: 4, scope: !4378)
!4385 = !DILocation(line: 227, column: 3, scope: !4378)
!4386 = !DILocation(line: 226, column: 2, scope: !4378)
!4387 = distinct !DISubprogram(name: "branch_setup_xol_ops", scope: !3, file: !3, line: 716, type: !4388, scopeLine: 717, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4390)
!4388 = !DISubroutineType(types: !4389)
!4389 = !{!127, !3854, !4313}
!4390 = !{!4391, !4392, !4393, !4394, !4395, !4396}
!4391 = !DILocalVariable(name: "auprobe", arg: 1, scope: !4387, file: !3, line: 716, type: !3854)
!4392 = !DILocalVariable(name: "insn", arg: 2, scope: !4387, file: !3, line: 716, type: !4313)
!4393 = !DILocalVariable(name: "opc1", scope: !4387, file: !3, line: 718, type: !323)
!4394 = !DILocalVariable(name: "p", scope: !4387, file: !3, line: 719, type: !4201)
!4395 = !DILocalVariable(name: "i", scope: !4387, file: !3, line: 720, type: !127)
!4396 = !DILabel(scope: !4387, name: "setup", file: !3, line: 757)
!4397 = !DILocation(line: 716, column: 53, scope: !4387)
!4398 = !DILocation(line: 716, column: 75, scope: !4387)
!4399 = !DILocation(line: 718, column: 2, scope: !4387)
!4400 = !DILocation(line: 718, column: 5, scope: !4387)
!4401 = !DILocation(line: 718, column: 12, scope: !4387)
!4402 = !DILocation(line: 719, column: 2, scope: !4387)
!4403 = !DILocation(line: 719, column: 14, scope: !4387)
!4404 = !DILocation(line: 720, column: 2, scope: !4387)
!4405 = !DILocation(line: 720, column: 6, scope: !4387)
!4406 = !DILocation(line: 722, column: 10, scope: !4387)
!4407 = !DILocation(line: 722, column: 2, scope: !4387)
!4408 = !DILocation(line: 725, column: 3, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4387, file: !3, line: 722, column: 16)
!4410 = !DILocation(line: 727, column: 3, scope: !4409)
!4411 = !DILocation(line: 730, column: 23, scope: !4409)
!4412 = !DILocation(line: 730, column: 32, scope: !4409)
!4413 = !DILocation(line: 730, column: 3, scope: !4409)
!4414 = !DILocation(line: 731, column: 3, scope: !4409)
!4415 = !DILocation(line: 734, column: 7, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4409, file: !3, line: 734, column: 7)
!4417 = !DILocation(line: 734, column: 13, scope: !4416)
!4418 = !DILocation(line: 734, column: 20, scope: !4416)
!4419 = !DILocation(line: 734, column: 27, scope: !4416)
!4420 = !DILocation(line: 734, column: 7, scope: !4409)
!4421 = !DILocation(line: 735, column: 4, scope: !4416)
!4422 = !DILocation(line: 740, column: 10, scope: !4409)
!4423 = !DILocation(line: 740, column: 24, scope: !4409)
!4424 = !DILocation(line: 740, column: 8, scope: !4409)
!4425 = !DILocation(line: 740, column: 3, scope: !4409)
!4426 = !DILocation(line: 743, column: 27, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4409, file: !3, line: 743, column: 7)
!4428 = !DILocation(line: 743, column: 8, scope: !4427)
!4429 = !DILocation(line: 743, column: 7, scope: !4409)
!4430 = !DILocation(line: 744, column: 4, scope: !4427)
!4431 = !DILocation(line: 745, column: 2, scope: !4409)
!4432 = !DILocation(line: 752, column: 2, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4387, file: !3, line: 752, column: 2)
!4434 = !DILocation(line: 752, column: 2, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4433, file: !3, line: 752, column: 2)
!4436 = !DILocation(line: 0, scope: !4435)
!4437 = !DILocation(line: 753, column: 7, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4439, file: !3, line: 753, column: 7)
!4439 = distinct !DILexicalBlock(scope: !4435, file: !3, line: 752, column: 35)
!4440 = !DILocation(line: 753, column: 9, scope: !4438)
!4441 = !DILocation(line: 753, column: 7, scope: !4439)
!4442 = !DILocation(line: 754, column: 4, scope: !4438)
!4443 = !DILocation(line: 755, column: 2, scope: !4439)
!4444 = distinct !{!4444, !4432, !4445, !4446, !4447}
!4445 = !DILocation(line: 755, column: 2, scope: !4433)
!4446 = !{!"llvm.loop.mustprogress"}
!4447 = !{!"llvm.loop.unroll.disable"}
!4448 = !DILocation(line: 757, column: 1, scope: !4387)
!4449 = !DILocation(line: 758, column: 25, scope: !4387)
!4450 = !DILocation(line: 758, column: 2, scope: !4387)
!4451 = !DILocation(line: 758, column: 11, scope: !4387)
!4452 = !DILocation(line: 758, column: 18, scope: !4387)
!4453 = !DILocation(line: 758, column: 23, scope: !4387)
!4454 = !DILocation(line: 759, column: 25, scope: !4387)
!4455 = !DILocation(line: 759, column: 31, scope: !4387)
!4456 = !DILocation(line: 759, column: 2, scope: !4387)
!4457 = !DILocation(line: 759, column: 11, scope: !4387)
!4458 = !DILocation(line: 759, column: 18, scope: !4387)
!4459 = !DILocation(line: 759, column: 23, scope: !4387)
!4460 = !DILocation(line: 760, column: 25, scope: !4387)
!4461 = !DILocation(line: 760, column: 31, scope: !4387)
!4462 = !DILocation(line: 760, column: 41, scope: !4387)
!4463 = !DILocation(line: 760, column: 2, scope: !4387)
!4464 = !DILocation(line: 760, column: 11, scope: !4387)
!4465 = !DILocation(line: 760, column: 18, scope: !4387)
!4466 = !DILocation(line: 760, column: 23, scope: !4387)
!4467 = !DILocation(line: 762, column: 2, scope: !4387)
!4468 = !DILocation(line: 762, column: 11, scope: !4387)
!4469 = !DILocation(line: 762, column: 15, scope: !4387)
!4470 = !DILocation(line: 763, column: 2, scope: !4387)
!4471 = !DILocation(line: 764, column: 1, scope: !4387)
!4472 = distinct !DISubprogram(name: "push_setup_xol_ops", scope: !3, file: !3, line: 767, type: !4388, scopeLine: 768, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4473)
!4473 = !{!4474, !4475, !4476, !4477}
!4474 = !DILocalVariable(name: "auprobe", arg: 1, scope: !4472, file: !3, line: 767, type: !3854)
!4475 = !DILocalVariable(name: "insn", arg: 2, scope: !4472, file: !3, line: 767, type: !4313)
!4476 = !DILocalVariable(name: "opc1", scope: !4472, file: !3, line: 769, type: !323)
!4477 = !DILocalVariable(name: "reg_offset", scope: !4472, file: !3, line: 769, type: !323)
!4478 = !DILocation(line: 767, column: 51, scope: !4472)
!4479 = !DILocation(line: 767, column: 73, scope: !4472)
!4480 = !DILocation(line: 769, column: 2, scope: !4472)
!4481 = !DILocation(line: 769, column: 5, scope: !4472)
!4482 = !DILocation(line: 769, column: 12, scope: !4472)
!4483 = !DILocation(line: 769, column: 27, scope: !4472)
!4484 = !DILocation(line: 771, column: 6, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 771, column: 6)
!4486 = !DILocation(line: 771, column: 11, scope: !4485)
!4487 = !DILocation(line: 771, column: 18, scope: !4485)
!4488 = !DILocation(line: 771, column: 21, scope: !4485)
!4489 = !DILocation(line: 771, column: 26, scope: !4485)
!4490 = !DILocation(line: 771, column: 6, scope: !4472)
!4491 = !DILocation(line: 772, column: 3, scope: !4485)
!4492 = !DILocation(line: 774, column: 6, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 774, column: 6)
!4494 = !DILocation(line: 774, column: 12, scope: !4493)
!4495 = !DILocation(line: 774, column: 19, scope: !4493)
!4496 = !DILocation(line: 774, column: 6, scope: !4472)
!4497 = !DILocation(line: 775, column: 3, scope: !4493)
!4498 = !DILocation(line: 776, column: 6, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 776, column: 6)
!4500 = !DILocation(line: 776, column: 12, scope: !4499)
!4501 = !DILocation(line: 776, column: 19, scope: !4499)
!4502 = !DILocation(line: 776, column: 6, scope: !4472)
!4503 = !DILocation(line: 779, column: 7, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4505, file: !3, line: 779, column: 7)
!4505 = distinct !DILexicalBlock(scope: !4499, file: !3, line: 776, column: 25)
!4506 = !DILocation(line: 779, column: 13, scope: !4504)
!4507 = !DILocation(line: 779, column: 24, scope: !4504)
!4508 = !DILocation(line: 779, column: 31, scope: !4504)
!4509 = !DILocation(line: 779, column: 36, scope: !4504)
!4510 = !DILocation(line: 780, column: 7, scope: !4504)
!4511 = !DILocation(line: 780, column: 13, scope: !4504)
!4512 = !DILocation(line: 780, column: 24, scope: !4504)
!4513 = !DILocation(line: 780, column: 33, scope: !4504)
!4514 = !DILocation(line: 779, column: 7, scope: !4505)
!4515 = !DILocation(line: 781, column: 4, scope: !4504)
!4516 = !DILocation(line: 783, column: 11, scope: !4505)
!4517 = !DILocation(line: 783, column: 3, scope: !4505)
!4518 = !DILocation(line: 785, column: 15, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4505, file: !3, line: 783, column: 17)
!4520 = !DILocation(line: 786, column: 4, scope: !4519)
!4521 = !DILocation(line: 788, column: 15, scope: !4519)
!4522 = !DILocation(line: 789, column: 4, scope: !4519)
!4523 = !DILocation(line: 791, column: 15, scope: !4519)
!4524 = !DILocation(line: 792, column: 4, scope: !4519)
!4525 = !DILocation(line: 794, column: 15, scope: !4519)
!4526 = !DILocation(line: 795, column: 4, scope: !4519)
!4527 = !DILocation(line: 797, column: 15, scope: !4519)
!4528 = !DILocation(line: 798, column: 4, scope: !4519)
!4529 = !DILocation(line: 800, column: 15, scope: !4519)
!4530 = !DILocation(line: 801, column: 4, scope: !4519)
!4531 = !DILocation(line: 803, column: 15, scope: !4519)
!4532 = !DILocation(line: 804, column: 4, scope: !4519)
!4533 = !DILocation(line: 806, column: 15, scope: !4519)
!4534 = !DILocation(line: 807, column: 4, scope: !4519)
!4535 = !DILocation(line: 812, column: 2, scope: !4505)
!4536 = !DILocation(line: 813, column: 11, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4499, file: !3, line: 812, column: 9)
!4538 = !DILocation(line: 813, column: 3, scope: !4537)
!4539 = !DILocation(line: 815, column: 15, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4537, file: !3, line: 813, column: 17)
!4541 = !DILocation(line: 816, column: 4, scope: !4540)
!4542 = !DILocation(line: 818, column: 15, scope: !4540)
!4543 = !DILocation(line: 819, column: 4, scope: !4540)
!4544 = !DILocation(line: 821, column: 15, scope: !4540)
!4545 = !DILocation(line: 822, column: 4, scope: !4540)
!4546 = !DILocation(line: 824, column: 15, scope: !4540)
!4547 = !DILocation(line: 825, column: 4, scope: !4540)
!4548 = !DILocation(line: 827, column: 15, scope: !4540)
!4549 = !DILocation(line: 828, column: 4, scope: !4540)
!4550 = !DILocation(line: 830, column: 15, scope: !4540)
!4551 = !DILocation(line: 831, column: 4, scope: !4540)
!4552 = !DILocation(line: 833, column: 15, scope: !4540)
!4553 = !DILocation(line: 834, column: 4, scope: !4540)
!4554 = !DILocation(line: 836, column: 15, scope: !4540)
!4555 = !DILocation(line: 837, column: 4, scope: !4540)
!4556 = !DILocation(line: 841, column: 29, scope: !4472)
!4557 = !DILocation(line: 841, column: 2, scope: !4472)
!4558 = !DILocation(line: 841, column: 11, scope: !4472)
!4559 = !DILocation(line: 841, column: 16, scope: !4472)
!4560 = !DILocation(line: 841, column: 27, scope: !4472)
!4561 = !DILocation(line: 842, column: 23, scope: !4472)
!4562 = !DILocation(line: 842, column: 29, scope: !4472)
!4563 = !DILocation(line: 842, column: 2, scope: !4472)
!4564 = !DILocation(line: 842, column: 11, scope: !4472)
!4565 = !DILocation(line: 842, column: 16, scope: !4472)
!4566 = !DILocation(line: 842, column: 21, scope: !4472)
!4567 = !DILocation(line: 843, column: 2, scope: !4472)
!4568 = !DILocation(line: 843, column: 11, scope: !4472)
!4569 = !DILocation(line: 843, column: 15, scope: !4472)
!4570 = !DILocation(line: 844, column: 2, scope: !4472)
!4571 = !DILocation(line: 845, column: 1, scope: !4472)
!4572 = distinct !DISubprogram(name: "riprel_analyze", scope: !3, file: !3, line: 335, type: !4573, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4575)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{null, !3854, !4313}
!4575 = !{!4576, !4577, !4578, !4580, !4581}
!4576 = !DILocalVariable(name: "auprobe", arg: 1, scope: !4572, file: !3, line: 335, type: !3854)
!4577 = !DILocalVariable(name: "insn", arg: 2, scope: !4572, file: !3, line: 335, type: !4313)
!4578 = !DILocalVariable(name: "cursor", scope: !4572, file: !3, line: 337, type: !4579)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!4580 = !DILocalVariable(name: "reg", scope: !4572, file: !3, line: 338, type: !323)
!4581 = !DILocalVariable(name: "reg2", scope: !4572, file: !3, line: 339, type: !323)
!4582 = !DILocation(line: 335, column: 48, scope: !4572)
!4583 = !DILocation(line: 335, column: 70, scope: !4572)
!4584 = !DILocation(line: 337, column: 2, scope: !4572)
!4585 = !DILocation(line: 337, column: 6, scope: !4572)
!4586 = !DILocation(line: 338, column: 2, scope: !4572)
!4587 = !DILocation(line: 338, column: 5, scope: !4572)
!4588 = !DILocation(line: 339, column: 2, scope: !4572)
!4589 = !DILocation(line: 339, column: 5, scope: !4572)
!4590 = !DILocation(line: 341, column: 25, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 341, column: 6)
!4592 = !DILocation(line: 341, column: 7, scope: !4591)
!4593 = !DILocation(line: 341, column: 6, scope: !4572)
!4594 = !DILocation(line: 342, column: 3, scope: !4591)
!4595 = !DILocation(line: 349, column: 6, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 349, column: 6)
!4597 = !DILocation(line: 349, column: 12, scope: !4596)
!4598 = !DILocation(line: 349, column: 23, scope: !4596)
!4599 = !DILocation(line: 349, column: 6, scope: !4572)
!4600 = !DILocation(line: 350, column: 12, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4596, file: !3, line: 349, column: 31)
!4602 = !DILocation(line: 350, column: 21, scope: !4601)
!4603 = !DILocation(line: 350, column: 51, scope: !4601)
!4604 = !DILocation(line: 350, column: 28, scope: !4601)
!4605 = !DILocation(line: 350, column: 26, scope: !4601)
!4606 = !DILocation(line: 350, column: 10, scope: !4601)
!4607 = !DILocation(line: 352, column: 4, scope: !4601)
!4608 = !DILocation(line: 352, column: 11, scope: !4601)
!4609 = !DILocation(line: 353, column: 2, scope: !4601)
!4610 = !DILocation(line: 358, column: 6, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 358, column: 6)
!4612 = !DILocation(line: 358, column: 12, scope: !4611)
!4613 = !DILocation(line: 358, column: 23, scope: !4611)
!4614 = !DILocation(line: 358, column: 30, scope: !4611)
!4615 = !DILocation(line: 358, column: 6, scope: !4572)
!4616 = !DILocation(line: 369, column: 12, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4611, file: !3, line: 358, column: 36)
!4618 = !DILocation(line: 369, column: 21, scope: !4617)
!4619 = !DILocation(line: 369, column: 51, scope: !4617)
!4620 = !DILocation(line: 369, column: 28, scope: !4617)
!4621 = !DILocation(line: 369, column: 26, scope: !4617)
!4622 = !DILocation(line: 369, column: 57, scope: !4617)
!4623 = !DILocation(line: 369, column: 10, scope: !4617)
!4624 = !DILocation(line: 370, column: 4, scope: !4617)
!4625 = !DILocation(line: 370, column: 11, scope: !4617)
!4626 = !DILocation(line: 371, column: 2, scope: !4617)
!4627 = !DILocation(line: 413, column: 8, scope: !4572)
!4628 = !DILocation(line: 413, column: 6, scope: !4572)
!4629 = !DILocation(line: 414, column: 7, scope: !4572)
!4630 = !DILocation(line: 415, column: 6, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 415, column: 6)
!4632 = !DILocation(line: 415, column: 12, scope: !4631)
!4633 = !DILocation(line: 415, column: 23, scope: !4631)
!4634 = !DILocation(line: 415, column: 6, scope: !4572)
!4635 = !DILocation(line: 416, column: 10, scope: !4631)
!4636 = !DILocation(line: 416, column: 16, scope: !4631)
!4637 = !DILocation(line: 416, column: 27, scope: !4631)
!4638 = !DILocation(line: 416, column: 8, scope: !4631)
!4639 = !DILocation(line: 416, column: 3, scope: !4631)
!4640 = !DILocation(line: 424, column: 11, scope: !4572)
!4641 = !DILocation(line: 424, column: 16, scope: !4572)
!4642 = !DILocation(line: 424, column: 22, scope: !4572)
!4643 = !DILocation(line: 424, column: 29, scope: !4572)
!4644 = !DILocation(line: 424, column: 9, scope: !4572)
!4645 = !DILocation(line: 424, column: 7, scope: !4572)
!4646 = !DILocation(line: 431, column: 6, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 431, column: 6)
!4648 = !DILocation(line: 431, column: 10, scope: !4647)
!4649 = !DILocation(line: 431, column: 15, scope: !4647)
!4650 = !DILocation(line: 431, column: 18, scope: !4647)
!4651 = !DILocation(line: 431, column: 23, scope: !4647)
!4652 = !DILocation(line: 431, column: 6, scope: !4572)
!4653 = !DILocation(line: 432, column: 8, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4647, file: !3, line: 431, column: 29)
!4655 = !DILocation(line: 433, column: 3, scope: !4654)
!4656 = !DILocation(line: 433, column: 12, scope: !4654)
!4657 = !DILocation(line: 433, column: 21, scope: !4654)
!4658 = !DILocation(line: 433, column: 28, scope: !4654)
!4659 = !DILocation(line: 434, column: 2, scope: !4654)
!4660 = !DILocation(line: 434, column: 13, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4647, file: !3, line: 434, column: 13)
!4662 = !DILocation(line: 434, column: 17, scope: !4661)
!4663 = !DILocation(line: 434, column: 22, scope: !4661)
!4664 = !DILocation(line: 434, column: 25, scope: !4661)
!4665 = !DILocation(line: 434, column: 30, scope: !4661)
!4666 = !DILocation(line: 434, column: 13, scope: !4647)
!4667 = !DILocation(line: 435, column: 8, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 434, column: 36)
!4669 = !DILocation(line: 436, column: 3, scope: !4668)
!4670 = !DILocation(line: 436, column: 12, scope: !4668)
!4671 = !DILocation(line: 436, column: 21, scope: !4668)
!4672 = !DILocation(line: 436, column: 28, scope: !4668)
!4673 = !DILocation(line: 438, column: 2, scope: !4668)
!4674 = !DILocation(line: 439, column: 8, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 438, column: 9)
!4676 = !DILocation(line: 440, column: 3, scope: !4675)
!4677 = !DILocation(line: 440, column: 12, scope: !4675)
!4678 = !DILocation(line: 440, column: 21, scope: !4675)
!4679 = !DILocation(line: 440, column: 28, scope: !4675)
!4680 = !DILocation(line: 447, column: 11, scope: !4572)
!4681 = !DILocation(line: 447, column: 20, scope: !4572)
!4682 = !DILocation(line: 447, column: 45, scope: !4572)
!4683 = !DILocation(line: 447, column: 27, scope: !4572)
!4684 = !DILocation(line: 447, column: 25, scope: !4572)
!4685 = !DILocation(line: 447, column: 9, scope: !4572)
!4686 = !DILocation(line: 453, column: 20, scope: !4572)
!4687 = !DILocation(line: 453, column: 24, scope: !4572)
!4688 = !DILocation(line: 453, column: 17, scope: !4572)
!4689 = !DILocation(line: 453, column: 32, scope: !4572)
!4690 = !DILocation(line: 453, column: 30, scope: !4572)
!4691 = !DILocation(line: 453, column: 12, scope: !4572)
!4692 = !DILocation(line: 453, column: 3, scope: !4572)
!4693 = !DILocation(line: 453, column: 10, scope: !4572)
!4694 = !DILocation(line: 454, column: 1, scope: !4572)
!4695 = distinct !DISubprogram(name: "arch_uprobe_pre_xol", scope: !3, file: !3, line: 916, type: !3926, scopeLine: 917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4696)
!4696 = !{!4697, !4698, !4699, !4700}
!4697 = !DILocalVariable(name: "auprobe", arg: 1, scope: !4695, file: !3, line: 916, type: !3854)
!4698 = !DILocalVariable(name: "regs", arg: 2, scope: !4695, file: !3, line: 916, type: !3872)
!4699 = !DILocalVariable(name: "utask", scope: !4695, file: !3, line: 918, type: !3826)
!4700 = !DILocalVariable(name: "err", scope: !4701, file: !3, line: 921, type: !127)
!4701 = distinct !DILexicalBlock(scope: !4702, file: !3, line: 920, column: 29)
!4702 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 920, column: 6)
!4703 = !DILocation(line: 916, column: 45, scope: !4695)
!4704 = !DILocation(line: 916, column: 70, scope: !4695)
!4705 = !DILocation(line: 918, column: 2, scope: !4695)
!4706 = !DILocation(line: 918, column: 22, scope: !4695)
!4707 = !DILocation(line: 918, column: 30, scope: !4695)
!4708 = !DILocation(line: 918, column: 39, scope: !4695)
!4709 = !DILocation(line: 920, column: 6, scope: !4702)
!4710 = !DILocation(line: 920, column: 15, scope: !4702)
!4711 = !DILocation(line: 920, column: 20, scope: !4702)
!4712 = !DILocation(line: 920, column: 6, scope: !4695)
!4713 = !DILocation(line: 921, column: 3, scope: !4701)
!4714 = !DILocation(line: 921, column: 7, scope: !4701)
!4715 = !DILocation(line: 921, column: 13, scope: !4701)
!4716 = !DILocation(line: 921, column: 22, scope: !4701)
!4717 = !DILocation(line: 921, column: 27, scope: !4701)
!4718 = !DILocation(line: 921, column: 35, scope: !4701)
!4719 = !DILocation(line: 921, column: 44, scope: !4701)
!4720 = !DILocation(line: 922, column: 7, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4701, file: !3, line: 922, column: 7)
!4722 = !DILocation(line: 922, column: 7, scope: !4701)
!4723 = !DILocation(line: 923, column: 11, scope: !4721)
!4724 = !DILocation(line: 923, column: 4, scope: !4721)
!4725 = !DILocation(line: 924, column: 2, scope: !4702)
!4726 = !DILocation(line: 924, column: 2, scope: !4701)
!4727 = !DILocation(line: 926, column: 13, scope: !4695)
!4728 = !DILocation(line: 926, column: 20, scope: !4695)
!4729 = !DILocation(line: 926, column: 2, scope: !4695)
!4730 = !DILocation(line: 926, column: 8, scope: !4695)
!4731 = !DILocation(line: 926, column: 11, scope: !4695)
!4732 = !DILocation(line: 927, column: 32, scope: !4695)
!4733 = !DILocation(line: 927, column: 41, scope: !4695)
!4734 = !DILocation(line: 927, column: 48, scope: !4695)
!4735 = !DILocation(line: 927, column: 2, scope: !4695)
!4736 = !DILocation(line: 927, column: 9, scope: !4695)
!4737 = !DILocation(line: 927, column: 16, scope: !4695)
!4738 = !DILocation(line: 927, column: 30, scope: !4695)
!4739 = !DILocation(line: 928, column: 2, scope: !4695)
!4740 = !DILocation(line: 928, column: 11, scope: !4695)
!4741 = !DILocation(line: 928, column: 18, scope: !4695)
!4742 = !DILocation(line: 928, column: 26, scope: !4695)
!4743 = !DILocation(line: 930, column: 30, scope: !4695)
!4744 = !DILocation(line: 930, column: 36, scope: !4695)
!4745 = !DILocation(line: 930, column: 42, scope: !4695)
!4746 = !DILocation(line: 930, column: 28, scope: !4695)
!4747 = !DILocation(line: 930, column: 27, scope: !4695)
!4748 = !DILocation(line: 930, column: 2, scope: !4695)
!4749 = !DILocation(line: 930, column: 9, scope: !4695)
!4750 = !DILocation(line: 930, column: 16, scope: !4695)
!4751 = !DILocation(line: 930, column: 25, scope: !4695)
!4752 = !DILocation(line: 931, column: 2, scope: !4695)
!4753 = !DILocation(line: 931, column: 8, scope: !4695)
!4754 = !DILocation(line: 931, column: 14, scope: !4695)
!4755 = !DILocation(line: 932, column: 27, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 932, column: 6)
!4757 = !DILocation(line: 932, column: 6, scope: !4756)
!4758 = !DILocation(line: 932, column: 6, scope: !4695)
!4759 = !DILocation(line: 933, column: 22, scope: !4756)
!4760 = !DILocation(line: 933, column: 3, scope: !4756)
!4761 = !DILocation(line: 935, column: 2, scope: !4695)
!4762 = !DILocation(line: 936, column: 1, scope: !4695)
!4763 = distinct !DISubprogram(name: "get_current", scope: !4764, file: !4764, line: 39, type: !4765, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4767)
!4764 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!4765 = !DISubroutineType(types: !4766)
!4766 = !{!130}
!4767 = !{!4768, !4770, !4772}
!4768 = !DILocalVariable(name: "pscr_ret__", scope: !4769, file: !4764, line: 41, type: !130)
!4769 = distinct !DILexicalBlock(scope: !4763, file: !4764, line: 41, column: 9)
!4770 = !DILocalVariable(name: "__vpp_verify", scope: !4771, file: !4764, line: 41, type: !1846)
!4771 = distinct !DILexicalBlock(scope: !4769, file: !4764, line: 41, column: 9)
!4772 = !DILocalVariable(name: "pfo_val__", scope: !4773, file: !4764, line: 41, type: !208)
!4773 = distinct !DILexicalBlock(scope: !4769, file: !4764, line: 41, column: 9)
!4774 = !DILocation(line: 41, column: 9, scope: !4769)
!4775 = !DILocation(line: 41, column: 9, scope: !4771)
!4776 = !DILocation(line: 41, column: 9, scope: !4773)
!4777 = !{i64 2148223912}
!4778 = !DILocation(line: 41, column: 9, scope: !4763)
!4779 = !DILocation(line: 41, column: 2, scope: !4763)
!4780 = distinct !DISubprogram(name: "test_tsk_thread_flag", scope: !132, file: !132, line: 2066, type: !4781, scopeLine: 2067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4783)
!4781 = !DISubroutineType(types: !4782)
!4782 = !{!127, !130, !127}
!4783 = !{!4784, !4785}
!4784 = !DILocalVariable(name: "tsk", arg: 1, scope: !4780, file: !132, line: 2066, type: !130)
!4785 = !DILocalVariable(name: "flag", arg: 2, scope: !4780, file: !132, line: 2066, type: !127)
!4786 = !DILocation(line: 2066, column: 60, scope: !4780)
!4787 = !DILocation(line: 2066, column: 69, scope: !4780)
!4788 = !DILocation(line: 2068, column: 29, scope: !4780)
!4789 = !DILocation(line: 2068, column: 52, scope: !4780)
!4790 = !DILocation(line: 2068, column: 9, scope: !4780)
!4791 = !DILocation(line: 2068, column: 2, scope: !4780)
!4792 = !DISubprogram(name: "set_task_blockstep", scope: !3991, file: !3991, line: 601, type: !4793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4793 = !DISubroutineType(types: !4794)
!4794 = !{null, !130, !802}
!4795 = distinct !DISubprogram(name: "arch_uprobe_xol_was_trapped", scope: !3, file: !3, line: 948, type: !4796, scopeLine: 949, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4798)
!4796 = !DISubroutineType(types: !4797)
!4797 = !{!802, !130}
!4798 = !{!4799}
!4799 = !DILocalVariable(name: "t", arg: 1, scope: !4795, file: !3, line: 948, type: !130)
!4800 = !DILocation(line: 948, column: 54, scope: !4795)
!4801 = !DILocation(line: 950, column: 6, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4795, file: !3, line: 950, column: 6)
!4803 = !DILocation(line: 950, column: 9, scope: !4802)
!4804 = !DILocation(line: 950, column: 16, scope: !4802)
!4805 = !DILocation(line: 950, column: 24, scope: !4802)
!4806 = !DILocation(line: 950, column: 6, scope: !4795)
!4807 = !DILocation(line: 951, column: 3, scope: !4802)
!4808 = !DILocation(line: 953, column: 2, scope: !4795)
!4809 = !DILocation(line: 954, column: 1, scope: !4795)
!4810 = distinct !DISubprogram(name: "arch_uprobe_post_xol", scope: !3, file: !3, line: 963, type: !3926, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4811)
!4811 = !{!4812, !4813, !4814, !4815, !4816, !4817, !4819}
!4812 = !DILocalVariable(name: "auprobe", arg: 1, scope: !4810, file: !3, line: 963, type: !3854)
!4813 = !DILocalVariable(name: "regs", arg: 2, scope: !4810, file: !3, line: 963, type: !3872)
!4814 = !DILocalVariable(name: "utask", scope: !4810, file: !3, line: 965, type: !3826)
!4815 = !DILocalVariable(name: "send_sigtrap", scope: !4810, file: !3, line: 966, type: !802)
!4816 = !DILocalVariable(name: "err", scope: !4810, file: !3, line: 967, type: !127)
!4817 = !DILocalVariable(name: "__ret_warn_on", scope: !4818, file: !3, line: 969, type: !127)
!4818 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 969, column: 2)
!4819 = !DILocalVariable(name: "__flags", scope: !4820, file: !3, line: 969, type: !127)
!4820 = distinct !DILexicalBlock(scope: !4821, file: !3, line: 969, column: 2)
!4821 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 969, column: 2)
!4822 = !DILocation(line: 963, column: 46, scope: !4810)
!4823 = !DILocation(line: 963, column: 71, scope: !4810)
!4824 = !DILocation(line: 965, column: 2, scope: !4810)
!4825 = !DILocation(line: 965, column: 22, scope: !4810)
!4826 = !DILocation(line: 965, column: 30, scope: !4810)
!4827 = !DILocation(line: 965, column: 39, scope: !4810)
!4828 = !DILocation(line: 966, column: 2, scope: !4810)
!4829 = !DILocation(line: 966, column: 7, scope: !4810)
!4830 = !DILocation(line: 966, column: 22, scope: !4810)
!4831 = !DILocation(line: 966, column: 29, scope: !4810)
!4832 = !DILocation(line: 966, column: 36, scope: !4810)
!4833 = !DILocation(line: 967, column: 2, scope: !4810)
!4834 = !DILocation(line: 967, column: 6, scope: !4810)
!4835 = !DILocation(line: 969, column: 2, scope: !4818)
!4836 = !DILocation(line: 969, column: 2, scope: !4821)
!4837 = !DILocation(line: 969, column: 2, scope: !4820)
!4838 = !DILocation(line: 969, column: 2, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4820, file: !3, line: 969, column: 2)
!4840 = !DILocation(line: 969, column: 2, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4820, file: !3, line: 969, column: 2)
!4842 = !{i64 2154969532, i64 2154969561, i64 2154969607, i64 2154969665, i64 2154969719, i64 2154969773, i64 2154969828, i64 2154969859, i64 2154970167, i64 2154970173, i64 2154970220, i64 2154970243, i64 2154970269}
!4843 = !DILocation(line: 969, column: 2, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4820, file: !3, line: 969, column: 2)
!4845 = !DILocation(line: 969, column: 2, scope: !4810)
!4846 = !DILocation(line: 970, column: 28, scope: !4810)
!4847 = !DILocation(line: 970, column: 35, scope: !4810)
!4848 = !DILocation(line: 970, column: 42, scope: !4810)
!4849 = !DILocation(line: 970, column: 2, scope: !4810)
!4850 = !DILocation(line: 970, column: 11, scope: !4810)
!4851 = !DILocation(line: 970, column: 18, scope: !4810)
!4852 = !DILocation(line: 970, column: 26, scope: !4810)
!4853 = !DILocation(line: 972, column: 6, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 972, column: 6)
!4855 = !DILocation(line: 972, column: 15, scope: !4854)
!4856 = !DILocation(line: 972, column: 20, scope: !4854)
!4857 = !DILocation(line: 972, column: 6, scope: !4810)
!4858 = !DILocation(line: 973, column: 9, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4854, file: !3, line: 972, column: 30)
!4860 = !DILocation(line: 973, column: 18, scope: !4859)
!4861 = !DILocation(line: 973, column: 23, scope: !4859)
!4862 = !DILocation(line: 973, column: 32, scope: !4859)
!4863 = !DILocation(line: 973, column: 41, scope: !4859)
!4864 = !DILocation(line: 973, column: 7, scope: !4859)
!4865 = !DILocation(line: 974, column: 7, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4859, file: !3, line: 974, column: 7)
!4867 = !DILocation(line: 974, column: 7, scope: !4859)
!4868 = !DILocation(line: 980, column: 15, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !4866, file: !3, line: 974, column: 12)
!4870 = !DILocation(line: 980, column: 22, scope: !4869)
!4871 = !DILocation(line: 980, column: 4, scope: !4869)
!4872 = !DILocation(line: 980, column: 10, scope: !4869)
!4873 = !DILocation(line: 980, column: 13, scope: !4869)
!4874 = !DILocation(line: 981, column: 8, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4869, file: !3, line: 981, column: 8)
!4876 = !DILocation(line: 981, column: 12, scope: !4875)
!4877 = !DILocation(line: 981, column: 8, scope: !4869)
!4878 = !DILocation(line: 982, column: 9, scope: !4875)
!4879 = !DILocation(line: 982, column: 5, scope: !4875)
!4880 = !DILocation(line: 983, column: 17, scope: !4869)
!4881 = !DILocation(line: 984, column: 3, scope: !4869)
!4882 = !DILocation(line: 985, column: 2, scope: !4859)
!4883 = !DILocation(line: 991, column: 6, scope: !4884)
!4884 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 991, column: 6)
!4885 = !DILocation(line: 991, column: 6, scope: !4810)
!4886 = !DILocation(line: 992, column: 21, scope: !4884)
!4887 = !DILocation(line: 992, column: 3, scope: !4884)
!4888 = !DILocation(line: 994, column: 7, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 994, column: 6)
!4890 = !DILocation(line: 994, column: 14, scope: !4889)
!4891 = !DILocation(line: 994, column: 21, scope: !4889)
!4892 = !DILocation(line: 994, column: 6, scope: !4810)
!4893 = !DILocation(line: 995, column: 3, scope: !4889)
!4894 = !DILocation(line: 995, column: 9, scope: !4889)
!4895 = !DILocation(line: 995, column: 15, scope: !4889)
!4896 = !DILocation(line: 997, column: 9, scope: !4810)
!4897 = !DILocation(line: 998, column: 1, scope: !4810)
!4898 = !DILocation(line: 997, column: 2, scope: !4810)
!4899 = !DISubprogram(name: "send_sig", scope: !3423, file: !3423, line: 348, type: !4900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4900 = !DISubroutineType(types: !4901)
!4901 = !{!127, !127, !130, !127}
!4902 = distinct !DISubprogram(name: "arch_uprobe_exception_notify", scope: !3, file: !3, line: 1001, type: !4903, scopeLine: 1002, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4914)
!4903 = !DISubroutineType(types: !4904)
!4904 = !{!127, !4905, !123, !120}
!4905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4906, size: 64)
!4906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !4907, line: 54, size: 192, elements: !4908)
!4907 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!4908 = !{!4909, !4912, !4913}
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !4906, file: !4907, line: 55, baseType: !4910, size: 64)
!4910 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !4907, line: 51, baseType: !4911)
!4911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4903, size: 64)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4906, file: !4907, line: 56, baseType: !4905, size: 64, offset: 64)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4906, file: !4907, line: 57, baseType: !127, size: 32, offset: 128)
!4914 = !{!4915, !4916, !4917, !4918, !4928, !4929}
!4915 = !DILocalVariable(name: "self", arg: 1, scope: !4902, file: !3, line: 1001, type: !4905)
!4916 = !DILocalVariable(name: "val", arg: 2, scope: !4902, file: !3, line: 1001, type: !123)
!4917 = !DILocalVariable(name: "data", arg: 3, scope: !4902, file: !3, line: 1001, type: !120)
!4918 = !DILocalVariable(name: "args", scope: !4902, file: !3, line: 1003, type: !4919)
!4919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4920, size: 64)
!4920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "die_args", file: !4921, line: 9, size: 256, elements: !4922)
!4921 = !DIFile(filename: "./include/linux/kdebug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "540f38f52f30c3c7c1cb3ec423fc360f")
!4922 = !{!4923, !4924, !4925, !4926, !4927}
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4920, file: !4921, line: 10, baseType: !3872, size: 64)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4920, file: !4921, line: 11, baseType: !805, size: 64, offset: 64)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !4920, file: !4921, line: 12, baseType: !128, size: 64, offset: 128)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "trapnr", scope: !4920, file: !4921, line: 13, baseType: !127, size: 32, offset: 192)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "signr", scope: !4920, file: !4921, line: 14, baseType: !127, size: 32, offset: 224)
!4928 = !DILocalVariable(name: "regs", scope: !4902, file: !3, line: 1004, type: !3872)
!4929 = !DILocalVariable(name: "ret", scope: !4902, file: !3, line: 1005, type: !127)
!4930 = !DILocation(line: 1001, column: 57, scope: !4902)
!4931 = !DILocation(line: 1001, column: 77, scope: !4902)
!4932 = !DILocation(line: 1001, column: 88, scope: !4902)
!4933 = !DILocation(line: 1003, column: 2, scope: !4902)
!4934 = !DILocation(line: 1003, column: 19, scope: !4902)
!4935 = !DILocation(line: 1003, column: 26, scope: !4902)
!4936 = !DILocation(line: 1004, column: 2, scope: !4902)
!4937 = !DILocation(line: 1004, column: 18, scope: !4902)
!4938 = !DILocation(line: 1004, column: 25, scope: !4902)
!4939 = !DILocation(line: 1004, column: 31, scope: !4902)
!4940 = !DILocation(line: 1005, column: 2, scope: !4902)
!4941 = !DILocation(line: 1005, column: 6, scope: !4902)
!4942 = !DILocation(line: 1008, column: 6, scope: !4943)
!4943 = distinct !DILexicalBlock(scope: !4902, file: !3, line: 1008, column: 6)
!4944 = !DILocation(line: 1008, column: 11, scope: !4943)
!4945 = !DILocation(line: 1008, column: 25, scope: !4943)
!4946 = !DILocation(line: 1008, column: 15, scope: !4943)
!4947 = !DILocation(line: 1008, column: 6, scope: !4902)
!4948 = !DILocation(line: 1009, column: 3, scope: !4943)
!4949 = !DILocation(line: 1011, column: 10, scope: !4902)
!4950 = !DILocation(line: 1011, column: 2, scope: !4902)
!4951 = !DILocation(line: 1013, column: 33, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4953, file: !3, line: 1013, column: 7)
!4953 = distinct !DILexicalBlock(scope: !4902, file: !3, line: 1011, column: 15)
!4954 = !DILocation(line: 1013, column: 7, scope: !4952)
!4955 = !DILocation(line: 1013, column: 7, scope: !4953)
!4956 = !DILocation(line: 1014, column: 8, scope: !4952)
!4957 = !DILocation(line: 1014, column: 4, scope: !4952)
!4958 = !DILocation(line: 1016, column: 3, scope: !4953)
!4959 = !DILocation(line: 1019, column: 34, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4953, file: !3, line: 1019, column: 7)
!4961 = !DILocation(line: 1019, column: 7, scope: !4960)
!4962 = !DILocation(line: 1019, column: 7, scope: !4953)
!4963 = !DILocation(line: 1020, column: 8, scope: !4960)
!4964 = !DILocation(line: 1020, column: 4, scope: !4960)
!4965 = !DILocation(line: 1022, column: 3, scope: !4953)
!4966 = !DILocation(line: 1025, column: 3, scope: !4953)
!4967 = !DILocation(line: 1028, column: 9, scope: !4902)
!4968 = !DILocation(line: 1028, column: 2, scope: !4902)
!4969 = !DILocation(line: 1029, column: 1, scope: !4902)
!4970 = distinct !DISubprogram(name: "user_mode", scope: !3874, file: !3874, line: 209, type: !4971, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4973)
!4971 = !DISubroutineType(types: !4972)
!4972 = !{!127, !3872}
!4973 = !{!4974}
!4974 = !DILocalVariable(name: "regs", arg: 1, scope: !4970, file: !3874, line: 209, type: !3872)
!4975 = !DILocation(line: 209, column: 54, scope: !4970)
!4976 = !DILocation(line: 214, column: 12, scope: !4970)
!4977 = !DILocation(line: 214, column: 18, scope: !4970)
!4978 = !DILocation(line: 214, column: 21, scope: !4970)
!4979 = !DILocation(line: 214, column: 10, scope: !4970)
!4980 = !DILocation(line: 214, column: 9, scope: !4970)
!4981 = !DILocation(line: 214, column: 2, scope: !4970)
!4982 = !DISubprogram(name: "uprobe_pre_sstep_notifier", scope: !73, file: !73, line: 127, type: !4971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4983 = !DISubprogram(name: "uprobe_post_sstep_notifier", scope: !73, file: !73, line: 126, type: !4971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4984 = distinct !DISubprogram(name: "arch_uprobe_abort_xol", scope: !3, file: !3, line: 1036, type: !3931, scopeLine: 1037, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4985)
!4985 = !{!4986, !4987, !4988}
!4986 = !DILocalVariable(name: "auprobe", arg: 1, scope: !4984, file: !3, line: 1036, type: !3854)
!4987 = !DILocalVariable(name: "regs", arg: 2, scope: !4984, file: !3, line: 1036, type: !3872)
!4988 = !DILocalVariable(name: "utask", scope: !4984, file: !3, line: 1038, type: !3826)
!4989 = !DILocation(line: 1036, column: 48, scope: !4984)
!4990 = !DILocation(line: 1036, column: 73, scope: !4984)
!4991 = !DILocation(line: 1038, column: 2, scope: !4984)
!4992 = !DILocation(line: 1038, column: 22, scope: !4984)
!4993 = !DILocation(line: 1038, column: 30, scope: !4984)
!4994 = !DILocation(line: 1038, column: 39, scope: !4984)
!4995 = !DILocation(line: 1040, column: 6, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4984, file: !3, line: 1040, column: 6)
!4997 = !DILocation(line: 1040, column: 15, scope: !4996)
!4998 = !DILocation(line: 1040, column: 20, scope: !4996)
!4999 = !DILocation(line: 1040, column: 6, scope: !4984)
!5000 = !DILocation(line: 1041, column: 3, scope: !4996)
!5001 = !DILocation(line: 1041, column: 12, scope: !4996)
!5002 = !DILocation(line: 1041, column: 17, scope: !4996)
!5003 = !DILocation(line: 1041, column: 23, scope: !4996)
!5004 = !DILocation(line: 1041, column: 32, scope: !4996)
!5005 = !DILocation(line: 1043, column: 28, scope: !4984)
!5006 = !DILocation(line: 1043, column: 35, scope: !4984)
!5007 = !DILocation(line: 1043, column: 42, scope: !4984)
!5008 = !DILocation(line: 1043, column: 2, scope: !4984)
!5009 = !DILocation(line: 1043, column: 11, scope: !4984)
!5010 = !DILocation(line: 1043, column: 18, scope: !4984)
!5011 = !DILocation(line: 1043, column: 26, scope: !4984)
!5012 = !DILocation(line: 1044, column: 13, scope: !4984)
!5013 = !DILocation(line: 1044, column: 20, scope: !4984)
!5014 = !DILocation(line: 1044, column: 2, scope: !4984)
!5015 = !DILocation(line: 1044, column: 8, scope: !4984)
!5016 = !DILocation(line: 1044, column: 11, scope: !4984)
!5017 = !DILocation(line: 1046, column: 7, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !4984, file: !3, line: 1046, column: 6)
!5019 = !DILocation(line: 1046, column: 14, scope: !5018)
!5020 = !DILocation(line: 1046, column: 21, scope: !5018)
!5021 = !DILocation(line: 1046, column: 6, scope: !4984)
!5022 = !DILocation(line: 1047, column: 3, scope: !5018)
!5023 = !DILocation(line: 1047, column: 9, scope: !5018)
!5024 = !DILocation(line: 1047, column: 15, scope: !5018)
!5025 = !DILocation(line: 1048, column: 1, scope: !4984)
!5026 = distinct !DISubprogram(name: "arch_uprobe_skip_sstep", scope: !3, file: !3, line: 1057, type: !3870, scopeLine: 1058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5027)
!5027 = !{!5028, !5029, !5030}
!5028 = !DILocalVariable(name: "auprobe", arg: 1, scope: !5026, file: !3, line: 1057, type: !3854)
!5029 = !DILocalVariable(name: "regs", arg: 2, scope: !5026, file: !3, line: 1057, type: !3872)
!5030 = !DILocalVariable(name: "ret", scope: !5026, file: !3, line: 1059, type: !802)
!5031 = !DILocation(line: 1057, column: 49, scope: !5026)
!5032 = !DILocation(line: 1057, column: 74, scope: !5026)
!5033 = !DILocation(line: 1059, column: 2, scope: !5026)
!5034 = !DILocation(line: 1059, column: 7, scope: !5026)
!5035 = !DILocation(line: 1059, column: 26, scope: !5026)
!5036 = !DILocation(line: 1059, column: 35, scope: !5026)
!5037 = !DILocation(line: 1059, column: 13, scope: !5026)
!5038 = !DILocation(line: 1060, column: 6, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 1060, column: 6)
!5040 = !DILocation(line: 1060, column: 10, scope: !5039)
!5041 = !DILocation(line: 1060, column: 14, scope: !5039)
!5042 = !DILocation(line: 1060, column: 20, scope: !5039)
!5043 = !DILocation(line: 1060, column: 26, scope: !5039)
!5044 = !DILocation(line: 1060, column: 6, scope: !5026)
!5045 = !DILocation(line: 1061, column: 21, scope: !5039)
!5046 = !DILocation(line: 1061, column: 3, scope: !5039)
!5047 = !DILocation(line: 1062, column: 9, scope: !5026)
!5048 = !DILocation(line: 1063, column: 1, scope: !5026)
!5049 = !DILocation(line: 1062, column: 2, scope: !5026)
!5050 = distinct !DISubprogram(name: "__skip_sstep", scope: !3, file: !3, line: 1050, type: !3870, scopeLine: 1051, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5051)
!5051 = !{!5052, !5053}
!5052 = !DILocalVariable(name: "auprobe", arg: 1, scope: !5050, file: !3, line: 1050, type: !3854)
!5053 = !DILocalVariable(name: "regs", arg: 2, scope: !5050, file: !3, line: 1050, type: !3872)
!5054 = !DILocation(line: 1050, column: 46, scope: !5050)
!5055 = !DILocation(line: 1050, column: 71, scope: !5050)
!5056 = !DILocation(line: 1052, column: 6, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !5050, file: !3, line: 1052, column: 6)
!5058 = !DILocation(line: 1052, column: 15, scope: !5057)
!5059 = !DILocation(line: 1052, column: 20, scope: !5057)
!5060 = !DILocation(line: 1052, column: 6, scope: !5050)
!5061 = !DILocation(line: 1053, column: 10, scope: !5057)
!5062 = !DILocation(line: 1053, column: 19, scope: !5057)
!5063 = !DILocation(line: 1053, column: 24, scope: !5057)
!5064 = !DILocation(line: 1053, column: 32, scope: !5057)
!5065 = !DILocation(line: 1053, column: 41, scope: !5057)
!5066 = !DILocation(line: 1053, column: 3, scope: !5057)
!5067 = !DILocation(line: 1054, column: 2, scope: !5050)
!5068 = !DILocation(line: 1055, column: 1, scope: !5050)
!5069 = distinct !DISubprogram(name: "arch_uretprobe_hijack_return_addr", scope: !3, file: !3, line: 1066, type: !5070, scopeLine: 1067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5072)
!5070 = !DISubroutineType(types: !5071)
!5071 = !{!123, !123, !3872}
!5072 = !{!5073, !5074, !5075, !5076, !5077}
!5073 = !DILocalVariable(name: "trampoline_vaddr", arg: 1, scope: !5069, file: !3, line: 1066, type: !123)
!5074 = !DILocalVariable(name: "regs", arg: 2, scope: !5069, file: !3, line: 1066, type: !3872)
!5075 = !DILocalVariable(name: "rasize", scope: !5069, file: !3, line: 1068, type: !127)
!5076 = !DILocalVariable(name: "nleft", scope: !5069, file: !3, line: 1068, type: !127)
!5077 = !DILocalVariable(name: "orig_ret_vaddr", scope: !5069, file: !3, line: 1069, type: !123)
!5078 = !DILocation(line: 1066, column: 49, scope: !5069)
!5079 = !DILocation(line: 1066, column: 83, scope: !5069)
!5080 = !DILocation(line: 1068, column: 2, scope: !5069)
!5081 = !DILocation(line: 1068, column: 6, scope: !5069)
!5082 = !DILocation(line: 1068, column: 27, scope: !5069)
!5083 = !DILocation(line: 1068, column: 15, scope: !5069)
!5084 = !DILocation(line: 1068, column: 34, scope: !5069)
!5085 = !DILocation(line: 1069, column: 2, scope: !5069)
!5086 = !DILocation(line: 1069, column: 16, scope: !5069)
!5087 = !DILocation(line: 1071, column: 53, scope: !5088)
!5088 = distinct !DILexicalBlock(scope: !5069, file: !3, line: 1071, column: 6)
!5089 = !DILocation(line: 1071, column: 59, scope: !5088)
!5090 = !DILocation(line: 1071, column: 38, scope: !5088)
!5091 = !DILocation(line: 1071, column: 63, scope: !5088)
!5092 = !DILocation(line: 1071, column: 6, scope: !5088)
!5093 = !DILocation(line: 1071, column: 6, scope: !5069)
!5094 = !DILocation(line: 1072, column: 3, scope: !5088)
!5095 = !DILocation(line: 1075, column: 6, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5069, file: !3, line: 1075, column: 6)
!5097 = !DILocation(line: 1075, column: 24, scope: !5096)
!5098 = !DILocation(line: 1075, column: 21, scope: !5096)
!5099 = !DILocation(line: 1075, column: 6, scope: !5069)
!5100 = !DILocation(line: 1076, column: 10, scope: !5096)
!5101 = !DILocation(line: 1076, column: 3, scope: !5096)
!5102 = !DILocation(line: 1078, column: 38, scope: !5069)
!5103 = !DILocation(line: 1078, column: 44, scope: !5069)
!5104 = !DILocation(line: 1078, column: 23, scope: !5069)
!5105 = !DILocation(line: 1078, column: 67, scope: !5069)
!5106 = !DILocation(line: 1078, column: 10, scope: !5069)
!5107 = !DILocation(line: 1078, column: 8, scope: !5069)
!5108 = !DILocation(line: 1079, column: 6, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5069, file: !3, line: 1079, column: 6)
!5110 = !DILocation(line: 1079, column: 6, scope: !5069)
!5111 = !DILocation(line: 1080, column: 31, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5113, file: !3, line: 1080, column: 7)
!5113 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 1079, column: 22)
!5114 = !DILocation(line: 1080, column: 7, scope: !5112)
!5115 = !DILocation(line: 1080, column: 7, scope: !5113)
!5116 = !DILocation(line: 1081, column: 4, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 1080, column: 50)
!5118 = !DILocation(line: 1082, column: 4, scope: !5117)
!5119 = !DILocation(line: 1084, column: 10, scope: !5113)
!5120 = !DILocation(line: 1084, column: 3, scope: !5113)
!5121 = !DILocation(line: 1087, column: 6, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5069, file: !3, line: 1087, column: 6)
!5123 = !DILocation(line: 1087, column: 15, scope: !5122)
!5124 = !DILocation(line: 1087, column: 12, scope: !5122)
!5125 = !DILocation(line: 1087, column: 6, scope: !5069)
!5126 = !DILocation(line: 1088, column: 3, scope: !5127)
!5127 = distinct !DILexicalBlock(scope: !5128, file: !3, line: 1088, column: 3)
!5128 = distinct !DILexicalBlock(scope: !5122, file: !3, line: 1087, column: 23)
!5129 = !DILocation(line: 1088, column: 3, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5127, file: !3, line: 1088, column: 3)
!5131 = !DILocation(line: 1091, column: 3, scope: !5128)
!5132 = !DILocation(line: 1092, column: 2, scope: !5128)
!5133 = !DILocation(line: 1094, column: 2, scope: !5069)
!5134 = !DILocation(line: 1095, column: 1, scope: !5069)
!5135 = distinct !DISubprogram(name: "sizeof_long", scope: !3, file: !3, line: 512, type: !4971, scopeLine: 513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5136)
!5136 = !{!5137}
!5137 = !DILocalVariable(name: "regs", arg: 1, scope: !5135, file: !3, line: 512, type: !3872)
!5138 = !DILocation(line: 512, column: 47, scope: !5135)
!5139 = !DILocation(line: 517, column: 25, scope: !5135)
!5140 = !DILocation(line: 517, column: 9, scope: !5135)
!5141 = !DILocation(line: 517, column: 2, scope: !5135)
!5142 = distinct !DISubprogram(name: "copy_from_user", scope: !5143, file: !5143, line: 180, type: !5144, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5146)
!5143 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!5144 = !DISubroutineType(types: !5145)
!5145 = !{!123, !120, !1846, !123}
!5146 = !{!5147, !5148, !5149}
!5147 = !DILocalVariable(name: "to", arg: 1, scope: !5142, file: !5143, line: 180, type: !120)
!5148 = !DILocalVariable(name: "from", arg: 2, scope: !5142, file: !5143, line: 180, type: !1846)
!5149 = !DILocalVariable(name: "n", arg: 3, scope: !5142, file: !5143, line: 180, type: !123)
!5150 = !DILocation(line: 180, column: 22, scope: !5142)
!5151 = !DILocation(line: 180, column: 45, scope: !5142)
!5152 = !DILocation(line: 180, column: 65, scope: !5142)
!5153 = !DILocation(line: 182, column: 22, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5142, file: !5143, line: 182, column: 6)
!5155 = !DILocation(line: 182, column: 26, scope: !5154)
!5156 = !DILocation(line: 182, column: 6, scope: !5154)
!5157 = !DILocation(line: 182, column: 6, scope: !5142)
!5158 = !DILocation(line: 183, column: 23, scope: !5154)
!5159 = !DILocation(line: 183, column: 27, scope: !5154)
!5160 = !DILocation(line: 183, column: 33, scope: !5154)
!5161 = !DILocation(line: 183, column: 7, scope: !5154)
!5162 = !DILocation(line: 183, column: 5, scope: !5154)
!5163 = !DILocation(line: 183, column: 3, scope: !5154)
!5164 = !DILocation(line: 184, column: 9, scope: !5142)
!5165 = !DILocation(line: 184, column: 2, scope: !5142)
!5166 = distinct !DISubprogram(name: "copy_to_user", scope: !5143, file: !5143, line: 188, type: !5144, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5167)
!5167 = !{!5168, !5169, !5170}
!5168 = !DILocalVariable(name: "to", arg: 1, scope: !5166, file: !5143, line: 188, type: !120)
!5169 = !DILocalVariable(name: "from", arg: 2, scope: !5166, file: !5143, line: 188, type: !1846)
!5170 = !DILocalVariable(name: "n", arg: 3, scope: !5166, file: !5143, line: 188, type: !123)
!5171 = !DILocation(line: 188, column: 27, scope: !5166)
!5172 = !DILocation(line: 188, column: 43, scope: !5166)
!5173 = !DILocation(line: 188, column: 63, scope: !5166)
!5174 = !DILocation(line: 190, column: 22, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5166, file: !5143, line: 190, column: 6)
!5176 = !DILocation(line: 190, column: 28, scope: !5175)
!5177 = !DILocation(line: 190, column: 6, scope: !5175)
!5178 = !DILocation(line: 190, column: 6, scope: !5166)
!5179 = !DILocation(line: 191, column: 21, scope: !5175)
!5180 = !DILocation(line: 191, column: 25, scope: !5175)
!5181 = !DILocation(line: 191, column: 31, scope: !5175)
!5182 = !DILocation(line: 191, column: 7, scope: !5175)
!5183 = !DILocation(line: 191, column: 5, scope: !5175)
!5184 = !DILocation(line: 191, column: 3, scope: !5175)
!5185 = !DILocation(line: 192, column: 9, scope: !5166)
!5186 = !DILocation(line: 192, column: 2, scope: !5166)
!5187 = distinct !DISubprogram(name: "shstk_update_last_frame", scope: !5188, file: !5188, line: 35, type: !5189, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5191)
!5188 = !DIFile(filename: "./arch/x86/include/asm/shstk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2df96aea4faccd2912c4c1361f912faa")
!5189 = !DISubroutineType(types: !5190)
!5190 = !{!127, !123}
!5191 = !{!5192}
!5192 = !DILocalVariable(name: "val", arg: 1, scope: !5187, file: !5188, line: 35, type: !123)
!5193 = !DILocation(line: 35, column: 57, scope: !5187)
!5194 = !DILocation(line: 35, column: 64, scope: !5187)
!5195 = !DISubprogram(name: "force_sig", scope: !3423, file: !3423, line: 345, type: !3577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5196 = !DISubprogram(name: "_printk", scope: !5197, file: !5197, line: 153, type: !5198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5197 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5198 = !DISubroutineType(types: !5199)
!5199 = !{!127, !805, null}
!5200 = distinct !DISubprogram(name: "arch_uretprobe_is_alive", scope: !3, file: !3, line: 1097, type: !5201, scopeLine: 1099, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5203)
!5201 = !DISubroutineType(types: !5202)
!5202 = !{!802, !3953, !107, !3872}
!5203 = !{!5204, !5205, !5206}
!5204 = !DILocalVariable(name: "ret", arg: 1, scope: !5200, file: !3, line: 1097, type: !3953)
!5205 = !DILocalVariable(name: "ctx", arg: 2, scope: !5200, file: !3, line: 1097, type: !107)
!5206 = !DILocalVariable(name: "regs", arg: 3, scope: !5200, file: !3, line: 1098, type: !3872)
!5207 = !DILocation(line: 1097, column: 54, scope: !5200)
!5208 = !DILocation(line: 1097, column: 73, scope: !5200)
!5209 = !DILocation(line: 1098, column: 21, scope: !5200)
!5210 = !DILocation(line: 1100, column: 6, scope: !5211)
!5211 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 1100, column: 6)
!5212 = !DILocation(line: 1100, column: 10, scope: !5211)
!5213 = !DILocation(line: 1100, column: 6, scope: !5200)
!5214 = !DILocation(line: 1101, column: 10, scope: !5211)
!5215 = !DILocation(line: 1101, column: 16, scope: !5211)
!5216 = !DILocation(line: 1101, column: 21, scope: !5211)
!5217 = !DILocation(line: 1101, column: 26, scope: !5211)
!5218 = !DILocation(line: 1101, column: 19, scope: !5211)
!5219 = !DILocation(line: 1101, column: 3, scope: !5211)
!5220 = !DILocation(line: 1103, column: 10, scope: !5211)
!5221 = !DILocation(line: 1103, column: 16, scope: !5211)
!5222 = !DILocation(line: 1103, column: 22, scope: !5211)
!5223 = !DILocation(line: 1103, column: 27, scope: !5211)
!5224 = !DILocation(line: 1103, column: 19, scope: !5211)
!5225 = !DILocation(line: 1103, column: 3, scope: !5211)
!5226 = !DILocation(line: 1104, column: 1, scope: !5200)
!5227 = !DISubprogram(name: "insn_decode", scope: !113, file: !113, line: 151, type: !5228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5228 = !DISubroutineType(types: !5229)
!5229 = !{!127, !4313, !1846, !127, !112}
!5230 = distinct !DISubprogram(name: "is_prefix_bad", scope: !3, file: !3, line: 256, type: !5231, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5233)
!5231 = !DISubroutineType(types: !5232)
!5232 = !{!802, !4313}
!5233 = !{!5234, !5235, !5236, !5237}
!5234 = !DILocalVariable(name: "insn", arg: 1, scope: !5230, file: !3, line: 256, type: !4313)
!5235 = !DILocalVariable(name: "p", scope: !5230, file: !3, line: 258, type: !4201)
!5236 = !DILocalVariable(name: "i", scope: !5230, file: !3, line: 259, type: !127)
!5237 = !DILocalVariable(name: "attr", scope: !5238, file: !3, line: 262, type: !4223)
!5238 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 261, column: 35)
!5239 = distinct !DILexicalBlock(scope: !5240, file: !3, line: 261, column: 2)
!5240 = distinct !DILexicalBlock(scope: !5230, file: !3, line: 261, column: 2)
!5241 = !DILocation(line: 256, column: 40, scope: !5230)
!5242 = !DILocation(line: 258, column: 2, scope: !5230)
!5243 = !DILocation(line: 258, column: 14, scope: !5230)
!5244 = !DILocation(line: 259, column: 2, scope: !5230)
!5245 = !DILocation(line: 259, column: 6, scope: !5230)
!5246 = !DILocation(line: 261, column: 2, scope: !5240)
!5247 = !DILocation(line: 261, column: 2, scope: !5239)
!5248 = !DILocation(line: 0, scope: !5239)
!5249 = !DILocation(line: 262, column: 3, scope: !5238)
!5250 = !DILocation(line: 262, column: 15, scope: !5238)
!5251 = !DILocation(line: 264, column: 36, scope: !5238)
!5252 = !DILocation(line: 264, column: 10, scope: !5238)
!5253 = !DILocation(line: 264, column: 8, scope: !5238)
!5254 = !DILocation(line: 265, column: 11, scope: !5238)
!5255 = !DILocation(line: 265, column: 3, scope: !5238)
!5256 = !DILocation(line: 271, column: 4, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5238, file: !3, line: 265, column: 17)
!5258 = !DILocation(line: 273, column: 2, scope: !5239)
!5259 = !DILocation(line: 273, column: 2, scope: !5238)
!5260 = distinct !{!5260, !5246, !5261, !4446, !4447}
!5261 = !DILocation(line: 273, column: 2, scope: !5240)
!5262 = !DILocation(line: 274, column: 2, scope: !5230)
!5263 = !DILocation(line: 275, column: 1, scope: !5230)
!5264 = distinct !DISubprogram(name: "insn_masking_exception", scope: !113, file: !113, line: 269, type: !5265, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5267)
!5265 = !DISubroutineType(types: !5266)
!5266 = !{!127, !4313}
!5267 = !{!5268}
!5268 = !DILocalVariable(name: "insn", arg: 1, scope: !5264, file: !113, line: 269, type: !4313)
!5269 = !DILocation(line: 269, column: 55, scope: !5264)
!5270 = !DILocation(line: 271, column: 9, scope: !5264)
!5271 = !DILocation(line: 271, column: 15, scope: !5264)
!5272 = !DILocation(line: 271, column: 22, scope: !5264)
!5273 = !DILocation(line: 271, column: 31, scope: !5264)
!5274 = !DILocation(line: 271, column: 48, scope: !5264)
!5275 = !DILocation(line: 272, column: 4, scope: !5264)
!5276 = !DILocation(line: 272, column: 10, scope: !5264)
!5277 = !DILocation(line: 272, column: 17, scope: !5264)
!5278 = !DILocation(line: 272, column: 26, scope: !5264)
!5279 = !DILocation(line: 272, column: 45, scope: !5264)
!5280 = !DILocation(line: 273, column: 4, scope: !5264)
!5281 = !DILocation(line: 273, column: 40, scope: !5264)
!5282 = !DILocation(line: 0, scope: !5264)
!5283 = !DILocation(line: 271, column: 2, scope: !5264)
!5284 = distinct !DISubprogram(name: "const_test_bit", scope: !5285, file: !5285, line: 166, type: !5286, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5291)
!5285 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!5286 = !DISubroutineType(types: !5287)
!5287 = !{!802, !123, !5288}
!5288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5289, size: 64)
!5289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5290)
!5290 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !123)
!5291 = !{!5292, !5293, !5294, !5295, !5296}
!5292 = !DILocalVariable(name: "nr", arg: 1, scope: !5284, file: !5285, line: 166, type: !123)
!5293 = !DILocalVariable(name: "addr", arg: 2, scope: !5284, file: !5285, line: 166, type: !5288)
!5294 = !DILocalVariable(name: "p", scope: !5284, file: !5285, line: 168, type: !125)
!5295 = !DILocalVariable(name: "mask", scope: !5284, file: !5285, line: 169, type: !123)
!5296 = !DILocalVariable(name: "val", scope: !5284, file: !5285, line: 170, type: !123)
!5297 = !DILocation(line: 166, column: 30, scope: !5284)
!5298 = !DILocation(line: 166, column: 64, scope: !5284)
!5299 = !DILocation(line: 168, column: 2, scope: !5284)
!5300 = !DILocation(line: 168, column: 23, scope: !5284)
!5301 = !DILocation(line: 168, column: 50, scope: !5284)
!5302 = !DILocation(line: 168, column: 57, scope: !5284)
!5303 = !DILocation(line: 168, column: 55, scope: !5284)
!5304 = !DILocation(line: 169, column: 2, scope: !5284)
!5305 = !DILocation(line: 169, column: 16, scope: !5284)
!5306 = !DILocation(line: 169, column: 23, scope: !5284)
!5307 = !DILocation(line: 170, column: 2, scope: !5284)
!5308 = !DILocation(line: 170, column: 16, scope: !5284)
!5309 = !DILocation(line: 170, column: 23, scope: !5284)
!5310 = !DILocation(line: 170, column: 22, scope: !5284)
!5311 = !DILocation(line: 172, column: 12, scope: !5284)
!5312 = !DILocation(line: 172, column: 18, scope: !5284)
!5313 = !DILocation(line: 172, column: 16, scope: !5284)
!5314 = !DILocation(line: 172, column: 10, scope: !5284)
!5315 = !DILocation(line: 172, column: 9, scope: !5284)
!5316 = !DILocation(line: 173, column: 1, scope: !5284)
!5317 = !DILocation(line: 172, column: 2, scope: !5284)
!5318 = distinct !DISubprogram(name: "_test_bit", scope: !5319, file: !5319, line: 139, type: !5286, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5320)
!5319 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5320 = !{!5321, !5322}
!5321 = !DILocalVariable(name: "nr", arg: 1, scope: !5318, file: !5319, line: 139, type: !123)
!5322 = !DILocalVariable(name: "addr", arg: 2, scope: !5318, file: !5319, line: 139, type: !5288)
!5323 = !DILocation(line: 139, column: 25, scope: !5318)
!5324 = !DILocation(line: 139, column: 59, scope: !5318)
!5325 = !DILocation(line: 141, column: 25, scope: !5318)
!5326 = !DILocation(line: 141, column: 32, scope: !5318)
!5327 = !DILocation(line: 141, column: 30, scope: !5318)
!5328 = !DILocation(line: 141, column: 2, scope: !5318)
!5329 = !DILocation(line: 142, column: 23, scope: !5318)
!5330 = !DILocation(line: 142, column: 27, scope: !5318)
!5331 = !DILocation(line: 142, column: 9, scope: !5318)
!5332 = !DILocation(line: 142, column: 2, scope: !5318)
!5333 = !DISubprogram(name: "inat_get_opcode_attribute", scope: !5334, file: !5334, line: 97, type: !5335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5334 = !DIFile(filename: "./arch/x86/include/asm/inat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6bb7b4e1f3c9759f1cc04be8dd9de68a")
!5335 = !DISubroutineType(types: !5336)
!5336 = !{!4223, !4201}
!5337 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5338, file: !5338, line: 66, type: !5339, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5344)
!5338 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5339 = !DISubroutineType(types: !5340)
!5340 = !{null, !5341, !1112}
!5341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5342, size: 64)
!5342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5343)
!5343 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5344 = !{!5345, !5346}
!5345 = !DILocalVariable(name: "v", arg: 1, scope: !5337, file: !5338, line: 66, type: !5341)
!5346 = !DILocalVariable(name: "size", arg: 2, scope: !5337, file: !5338, line: 66, type: !1112)
!5347 = !DILocation(line: 66, column: 73, scope: !5337)
!5348 = !DILocation(line: 66, column: 83, scope: !5337)
!5349 = !DILocation(line: 68, column: 19, scope: !5337)
!5350 = !DILocation(line: 68, column: 22, scope: !5337)
!5351 = !DILocation(line: 68, column: 2, scope: !5337)
!5352 = !DILocation(line: 69, column: 2, scope: !5337)
!5353 = !DILocation(line: 70, column: 1, scope: !5337)
!5354 = distinct !DISubprogram(name: "arch_test_bit", scope: !5355, file: !5355, line: 237, type: !5286, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5356)
!5355 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5356 = !{!5357, !5358}
!5357 = !DILocalVariable(name: "nr", arg: 1, scope: !5354, file: !5355, line: 237, type: !123)
!5358 = !DILocalVariable(name: "addr", arg: 2, scope: !5354, file: !5355, line: 237, type: !5288)
!5359 = !DILocation(line: 237, column: 29, scope: !5354)
!5360 = !DILocation(line: 237, column: 63, scope: !5354)
!5361 = !DILocation(line: 239, column: 30, scope: !5354)
!5362 = !DILocation(line: 239, column: 9, scope: !5354)
!5363 = !DILocation(line: 239, column: 54, scope: !5354)
!5364 = !DILocation(line: 239, column: 58, scope: !5354)
!5365 = !DILocation(line: 239, column: 36, scope: !5354)
!5366 = !DILocation(line: 240, column: 26, scope: !5354)
!5367 = !DILocation(line: 240, column: 30, scope: !5354)
!5368 = !DILocation(line: 240, column: 8, scope: !5354)
!5369 = !DILocation(line: 239, column: 2, scope: !5354)
!5370 = distinct !DISubprogram(name: "kasan_check_read", scope: !5371, file: !5371, line: 40, type: !5372, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5374)
!5371 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5372 = !DISubroutineType(types: !5373)
!5373 = !{!802, !5341, !7}
!5374 = !{!5375, !5376}
!5375 = !DILocalVariable(name: "p", arg: 1, scope: !5370, file: !5371, line: 40, type: !5341)
!5376 = !DILocalVariable(name: "size", arg: 2, scope: !5370, file: !5371, line: 40, type: !7)
!5377 = !DILocation(line: 40, column: 58, scope: !5370)
!5378 = !DILocation(line: 40, column: 74, scope: !5370)
!5379 = !DILocation(line: 42, column: 2, scope: !5370)
!5380 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5381, file: !5381, line: 229, type: !5382, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5384)
!5381 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5382 = !DISubroutineType(types: !5383)
!5383 = !{null, !5341, !1112, !127}
!5384 = !{!5385, !5386, !5387}
!5385 = !DILocalVariable(name: "ptr", arg: 1, scope: !5380, file: !5381, line: 229, type: !5341)
!5386 = !DILocalVariable(name: "size", arg: 2, scope: !5380, file: !5381, line: 229, type: !1112)
!5387 = !DILocalVariable(name: "type", arg: 3, scope: !5380, file: !5381, line: 230, type: !127)
!5388 = !DILocation(line: 229, column: 60, scope: !5380)
!5389 = !DILocation(line: 229, column: 72, scope: !5380)
!5390 = !DILocation(line: 230, column: 15, scope: !5380)
!5391 = !DILocation(line: 230, column: 23, scope: !5380)
!5392 = distinct !DISubprogram(name: "constant_test_bit", scope: !5355, file: !5355, line: 204, type: !5393, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5395)
!5393 = !DISubroutineType(types: !5394)
!5394 = !{!802, !128, !5288}
!5395 = !{!5396, !5397}
!5396 = !DILocalVariable(name: "nr", arg: 1, scope: !5392, file: !5355, line: 204, type: !128)
!5397 = !DILocalVariable(name: "addr", arg: 2, scope: !5392, file: !5355, line: 204, type: !5288)
!5398 = !DILocation(line: 204, column: 52, scope: !5392)
!5399 = !DILocation(line: 204, column: 86, scope: !5392)
!5400 = !DILocation(line: 206, column: 19, scope: !5392)
!5401 = !DILocation(line: 206, column: 22, scope: !5392)
!5402 = !DILocation(line: 206, column: 15, scope: !5392)
!5403 = !DILocation(line: 207, column: 4, scope: !5392)
!5404 = !DILocation(line: 207, column: 9, scope: !5392)
!5405 = !DILocation(line: 207, column: 12, scope: !5392)
!5406 = !DILocation(line: 206, column: 44, scope: !5392)
!5407 = !DILocation(line: 207, column: 37, scope: !5392)
!5408 = !DILocation(line: 206, column: 2, scope: !5392)
!5409 = distinct !DISubprogram(name: "variable_test_bit", scope: !5355, file: !5355, line: 224, type: !5393, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5410)
!5410 = !{!5411, !5412, !5413}
!5411 = !DILocalVariable(name: "nr", arg: 1, scope: !5409, file: !5355, line: 224, type: !128)
!5412 = !DILocalVariable(name: "addr", arg: 2, scope: !5409, file: !5355, line: 224, type: !5288)
!5413 = !DILocalVariable(name: "oldbit", scope: !5409, file: !5355, line: 226, type: !802)
!5414 = !DILocation(line: 224, column: 52, scope: !5409)
!5415 = !DILocation(line: 224, column: 86, scope: !5409)
!5416 = !DILocation(line: 226, column: 2, scope: !5409)
!5417 = !DILocation(line: 226, column: 7, scope: !5409)
!5418 = !DILocation(line: 231, column: 33, scope: !5409)
!5419 = !DILocation(line: 231, column: 46, scope: !5409)
!5420 = !DILocation(line: 228, column: 2, scope: !5409)
!5421 = !{i64 2147832677, i64 2147832751}
!5422 = !DILocation(line: 233, column: 9, scope: !5409)
!5423 = !DILocation(line: 234, column: 1, scope: !5409)
!5424 = !DILocation(line: 233, column: 2, scope: !5409)
!5425 = distinct !DISubprogram(name: "branch_clear_offset", scope: !3, file: !3, line: 686, type: !4573, scopeLine: 687, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5426)
!5426 = !{!5427, !5428}
!5427 = !DILocalVariable(name: "auprobe", arg: 1, scope: !5425, file: !3, line: 686, type: !3854)
!5428 = !DILocalVariable(name: "insn", arg: 2, scope: !5425, file: !3, line: 686, type: !4313)
!5429 = !DILocation(line: 686, column: 53, scope: !5425)
!5430 = !DILocation(line: 686, column: 75, scope: !5425)
!5431 = !DILocation(line: 702, column: 9, scope: !5425)
!5432 = !DILocation(line: 702, column: 18, scope: !5425)
!5433 = !DILocation(line: 702, column: 47, scope: !5425)
!5434 = !DILocation(line: 702, column: 25, scope: !5425)
!5435 = !DILocation(line: 702, column: 23, scope: !5425)
!5436 = !DILocation(line: 703, column: 6, scope: !5425)
!5437 = !DILocation(line: 703, column: 12, scope: !5425)
!5438 = !DILocation(line: 703, column: 22, scope: !5425)
!5439 = !DILocation(line: 702, column: 2, scope: !5425)
!5440 = !DILocation(line: 704, column: 1, scope: !5425)
!5441 = distinct !DISubprogram(name: "is_cond_jmp_opcode", scope: !3, file: !3, line: 606, type: !5442, scopeLine: 607, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5444)
!5442 = !DISubroutineType(types: !5443)
!5443 = !{!802, !323}
!5444 = !{!5445}
!5445 = !DILocalVariable(name: "opcode", arg: 1, scope: !5441, file: !3, line: 606, type: !323)
!5446 = !DILocation(line: 606, column: 35, scope: !5441)
!5447 = !DILocation(line: 608, column: 10, scope: !5441)
!5448 = !DILocation(line: 608, column: 2, scope: !5441)
!5449 = !DILocation(line: 611, column: 2, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5441, file: !3, line: 608, column: 18)
!5451 = !DILocation(line: 615, column: 3, scope: !5450)
!5452 = !DILocation(line: 617, column: 1, scope: !5441)
!5453 = distinct !DISubprogram(name: "insn_offset_immediate", scope: !113, file: !113, line: 238, type: !5265, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5454)
!5454 = !{!5455}
!5455 = !DILocalVariable(name: "insn", arg: 1, scope: !5453, file: !113, line: 238, type: !4313)
!5456 = !DILocation(line: 238, column: 54, scope: !5453)
!5457 = !DILocation(line: 240, column: 34, scope: !5453)
!5458 = !DILocation(line: 240, column: 9, scope: !5453)
!5459 = !DILocation(line: 240, column: 42, scope: !5453)
!5460 = !DILocation(line: 240, column: 48, scope: !5453)
!5461 = !DILocation(line: 240, column: 61, scope: !5453)
!5462 = !DILocation(line: 240, column: 40, scope: !5453)
!5463 = !DILocation(line: 240, column: 2, scope: !5453)
!5464 = distinct !DISubprogram(name: "insn_offset_displacement", scope: !113, file: !113, line: 234, type: !5265, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5465)
!5465 = !{!5466}
!5466 = !DILocalVariable(name: "insn", arg: 1, scope: !5464, file: !113, line: 234, type: !4313)
!5467 = !DILocation(line: 234, column: 57, scope: !5464)
!5468 = !DILocation(line: 236, column: 25, scope: !5464)
!5469 = !DILocation(line: 236, column: 9, scope: !5464)
!5470 = !DILocation(line: 236, column: 33, scope: !5464)
!5471 = !DILocation(line: 236, column: 39, scope: !5464)
!5472 = !DILocation(line: 236, column: 43, scope: !5464)
!5473 = !DILocation(line: 236, column: 31, scope: !5464)
!5474 = !DILocation(line: 236, column: 2, scope: !5464)
!5475 = distinct !DISubprogram(name: "insn_offset_sib", scope: !113, file: !113, line: 230, type: !5265, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5476)
!5476 = !{!5477}
!5477 = !DILocalVariable(name: "insn", arg: 1, scope: !5475, file: !113, line: 230, type: !4313)
!5478 = !DILocation(line: 230, column: 48, scope: !5475)
!5479 = !DILocation(line: 232, column: 27, scope: !5475)
!5480 = !DILocation(line: 232, column: 9, scope: !5475)
!5481 = !DILocation(line: 232, column: 35, scope: !5475)
!5482 = !DILocation(line: 232, column: 41, scope: !5475)
!5483 = !DILocation(line: 232, column: 47, scope: !5475)
!5484 = !DILocation(line: 232, column: 33, scope: !5475)
!5485 = !DILocation(line: 232, column: 2, scope: !5475)
!5486 = distinct !DISubprogram(name: "insn_offset_modrm", scope: !113, file: !113, line: 226, type: !5265, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5487)
!5487 = !{!5488}
!5488 = !DILocalVariable(name: "insn", arg: 1, scope: !5486, file: !113, line: 226, type: !4313)
!5489 = !DILocation(line: 226, column: 50, scope: !5486)
!5490 = !DILocation(line: 228, column: 28, scope: !5486)
!5491 = !DILocation(line: 228, column: 9, scope: !5486)
!5492 = !DILocation(line: 228, column: 36, scope: !5486)
!5493 = !DILocation(line: 228, column: 42, scope: !5486)
!5494 = !DILocation(line: 228, column: 49, scope: !5486)
!5495 = !DILocation(line: 228, column: 34, scope: !5486)
!5496 = !DILocation(line: 228, column: 2, scope: !5486)
!5497 = distinct !DISubprogram(name: "insn_offset_opcode", scope: !113, file: !113, line: 222, type: !5265, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5498)
!5498 = !{!5499}
!5499 = !DILocalVariable(name: "insn", arg: 1, scope: !5497, file: !113, line: 222, type: !4313)
!5500 = !DILocation(line: 222, column: 51, scope: !5497)
!5501 = !DILocation(line: 224, column: 32, scope: !5497)
!5502 = !DILocation(line: 224, column: 9, scope: !5497)
!5503 = !DILocation(line: 224, column: 40, scope: !5497)
!5504 = !DILocation(line: 224, column: 46, scope: !5497)
!5505 = !DILocation(line: 224, column: 57, scope: !5497)
!5506 = !DILocation(line: 224, column: 38, scope: !5497)
!5507 = !DILocation(line: 224, column: 2, scope: !5497)
!5508 = distinct !DISubprogram(name: "insn_offset_vex_prefix", scope: !113, file: !113, line: 218, type: !5265, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5509)
!5509 = !{!5510}
!5510 = !DILocalVariable(name: "insn", arg: 1, scope: !5508, file: !113, line: 218, type: !4313)
!5511 = !DILocation(line: 218, column: 55, scope: !5508)
!5512 = !DILocation(line: 220, column: 32, scope: !5508)
!5513 = !DILocation(line: 220, column: 9, scope: !5508)
!5514 = !DILocation(line: 220, column: 40, scope: !5508)
!5515 = !DILocation(line: 220, column: 46, scope: !5508)
!5516 = !DILocation(line: 220, column: 57, scope: !5508)
!5517 = !DILocation(line: 220, column: 38, scope: !5508)
!5518 = !DILocation(line: 220, column: 2, scope: !5508)
!5519 = distinct !DISubprogram(name: "insn_offset_rex_prefix", scope: !113, file: !113, line: 214, type: !5265, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5520)
!5520 = !{!5521}
!5521 = !DILocalVariable(name: "insn", arg: 1, scope: !5519, file: !113, line: 214, type: !4313)
!5522 = !DILocation(line: 214, column: 55, scope: !5519)
!5523 = !DILocation(line: 216, column: 9, scope: !5519)
!5524 = !DILocation(line: 216, column: 15, scope: !5519)
!5525 = !DILocation(line: 216, column: 24, scope: !5519)
!5526 = !DILocation(line: 216, column: 2, scope: !5519)
!5527 = distinct !DISubprogram(name: "branch_emulate_op", scope: !3, file: !3, line: 638, type: !3870, scopeLine: 639, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5528)
!5528 = !{!5529, !5530, !5531, !5532}
!5529 = !DILocalVariable(name: "auprobe", arg: 1, scope: !5527, file: !3, line: 638, type: !3854)
!5530 = !DILocalVariable(name: "regs", arg: 2, scope: !5527, file: !3, line: 638, type: !3872)
!5531 = !DILocalVariable(name: "new_ip", scope: !5527, file: !3, line: 640, type: !123)
!5532 = !DILocalVariable(name: "offs", scope: !5527, file: !3, line: 641, type: !123)
!5533 = !DILocation(line: 638, column: 51, scope: !5527)
!5534 = !DILocation(line: 638, column: 76, scope: !5527)
!5535 = !DILocation(line: 640, column: 2, scope: !5527)
!5536 = !DILocation(line: 640, column: 16, scope: !5527)
!5537 = !DILocation(line: 640, column: 37, scope: !5527)
!5538 = !DILocation(line: 640, column: 46, scope: !5527)
!5539 = !DILocation(line: 640, column: 53, scope: !5527)
!5540 = !DILocation(line: 640, column: 25, scope: !5527)
!5541 = !DILocation(line: 640, column: 31, scope: !5527)
!5542 = !DILocation(line: 640, column: 34, scope: !5527)
!5543 = !DILocation(line: 641, column: 2, scope: !5527)
!5544 = !DILocation(line: 641, column: 16, scope: !5527)
!5545 = !DILocation(line: 641, column: 29, scope: !5527)
!5546 = !DILocation(line: 641, column: 38, scope: !5527)
!5547 = !DILocation(line: 641, column: 45, scope: !5527)
!5548 = !DILocation(line: 641, column: 23, scope: !5527)
!5549 = !DILocation(line: 643, column: 21, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 643, column: 6)
!5551 = !DILocation(line: 643, column: 6, scope: !5550)
!5552 = !DILocation(line: 643, column: 6, scope: !5527)
!5553 = !DILocation(line: 653, column: 26, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 653, column: 7)
!5555 = distinct !DILexicalBlock(scope: !5550, file: !3, line: 643, column: 31)
!5556 = !DILocation(line: 653, column: 32, scope: !5554)
!5557 = !DILocation(line: 653, column: 7, scope: !5554)
!5558 = !DILocation(line: 653, column: 7, scope: !5555)
!5559 = !DILocation(line: 654, column: 4, scope: !5554)
!5560 = !DILocation(line: 655, column: 2, scope: !5555)
!5561 = !DILocation(line: 655, column: 29, scope: !5562)
!5562 = distinct !DILexicalBlock(scope: !5550, file: !3, line: 655, column: 13)
!5563 = !DILocation(line: 655, column: 38, scope: !5562)
!5564 = !DILocation(line: 655, column: 14, scope: !5562)
!5565 = !DILocation(line: 655, column: 13, scope: !5550)
!5566 = !DILocation(line: 656, column: 8, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5562, file: !3, line: 655, column: 45)
!5568 = !DILocation(line: 657, column: 2, scope: !5567)
!5569 = !DILocation(line: 659, column: 13, scope: !5527)
!5570 = !DILocation(line: 659, column: 22, scope: !5527)
!5571 = !DILocation(line: 659, column: 20, scope: !5527)
!5572 = !DILocation(line: 659, column: 2, scope: !5527)
!5573 = !DILocation(line: 659, column: 8, scope: !5527)
!5574 = !DILocation(line: 659, column: 11, scope: !5527)
!5575 = !DILocation(line: 660, column: 2, scope: !5527)
!5576 = !DILocation(line: 661, column: 1, scope: !5527)
!5577 = distinct !DISubprogram(name: "branch_post_xol_op", scope: !3, file: !3, line: 673, type: !3926, scopeLine: 674, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5578)
!5578 = !{!5579, !5580}
!5579 = !DILocalVariable(name: "auprobe", arg: 1, scope: !5577, file: !3, line: 673, type: !3854)
!5580 = !DILocalVariable(name: "regs", arg: 2, scope: !5577, file: !3, line: 673, type: !3872)
!5581 = !DILocation(line: 673, column: 51, scope: !5577)
!5582 = !DILocation(line: 673, column: 76, scope: !5577)
!5583 = !DILocation(line: 675, column: 2, scope: !5577)
!5584 = !DILocation(line: 675, column: 2, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5586, file: !3, line: 675, column: 2)
!5586 = distinct !DILexicalBlock(scope: !5577, file: !3, line: 675, column: 2)
!5587 = !DILocation(line: 675, column: 2, scope: !5586)
!5588 = !DILocation(line: 675, column: 2, scope: !5589)
!5589 = distinct !DILexicalBlock(scope: !5585, file: !3, line: 675, column: 2)
!5590 = !DILocation(line: 675, column: 2, scope: !5591)
!5591 = distinct !DILexicalBlock(scope: !5589, file: !3, line: 675, column: 2)
!5592 = !DILocation(line: 675, column: 2, scope: !5593)
!5593 = distinct !DILexicalBlock(scope: !5589, file: !3, line: 675, column: 2)
!5594 = !{i64 2154966178, i64 2154966207, i64 2154966253, i64 2154966311, i64 2154966365, i64 2154966419, i64 2154966474, i64 2154966505}
!5595 = !DILocation(line: 682, column: 26, scope: !5577)
!5596 = !DILocation(line: 682, column: 14, scope: !5577)
!5597 = !DILocation(line: 682, column: 2, scope: !5577)
!5598 = !DILocation(line: 682, column: 8, scope: !5577)
!5599 = !DILocation(line: 682, column: 11, scope: !5577)
!5600 = !DILocation(line: 683, column: 2, scope: !5577)
!5601 = distinct !DISubprogram(name: "branch_is_call", scope: !3, file: !3, line: 585, type: !5602, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5604)
!5602 = !DISubroutineType(types: !5603)
!5603 = !{!802, !3854}
!5604 = !{!5605}
!5605 = !DILocalVariable(name: "auprobe", arg: 1, scope: !5601, file: !3, line: 585, type: !3854)
!5606 = !DILocation(line: 585, column: 48, scope: !5601)
!5607 = !DILocation(line: 587, column: 9, scope: !5601)
!5608 = !DILocation(line: 587, column: 18, scope: !5601)
!5609 = !DILocation(line: 587, column: 25, scope: !5601)
!5610 = !DILocation(line: 587, column: 30, scope: !5601)
!5611 = !DILocation(line: 587, column: 2, scope: !5601)
!5612 = distinct !DISubprogram(name: "emulate_push_stack", scope: !3, file: !3, line: 526, type: !5613, scopeLine: 527, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5615)
!5613 = !DISubroutineType(types: !5614)
!5614 = !{!127, !3872, !123}
!5615 = !{!5616, !5617, !5618}
!5616 = !DILocalVariable(name: "regs", arg: 1, scope: !5612, file: !3, line: 526, type: !3872)
!5617 = !DILocalVariable(name: "val", arg: 2, scope: !5612, file: !3, line: 526, type: !123)
!5618 = !DILocalVariable(name: "new_sp", scope: !5612, file: !3, line: 528, type: !123)
!5619 = !DILocation(line: 526, column: 47, scope: !5612)
!5620 = !DILocation(line: 526, column: 67, scope: !5612)
!5621 = !DILocation(line: 528, column: 2, scope: !5612)
!5622 = !DILocation(line: 528, column: 16, scope: !5612)
!5623 = !DILocation(line: 528, column: 25, scope: !5612)
!5624 = !DILocation(line: 528, column: 31, scope: !5612)
!5625 = !DILocation(line: 528, column: 48, scope: !5612)
!5626 = !DILocation(line: 528, column: 36, scope: !5612)
!5627 = !DILocation(line: 528, column: 34, scope: !5612)
!5628 = !DILocation(line: 530, column: 34, scope: !5629)
!5629 = distinct !DILexicalBlock(scope: !5612, file: !3, line: 530, column: 6)
!5630 = !DILocation(line: 530, column: 19, scope: !5629)
!5631 = !DILocation(line: 530, column: 60, scope: !5629)
!5632 = !DILocation(line: 530, column: 48, scope: !5629)
!5633 = !DILocation(line: 530, column: 6, scope: !5629)
!5634 = !DILocation(line: 530, column: 6, scope: !5612)
!5635 = !DILocation(line: 531, column: 3, scope: !5629)
!5636 = !DILocation(line: 533, column: 13, scope: !5612)
!5637 = !DILocation(line: 533, column: 2, scope: !5612)
!5638 = !DILocation(line: 533, column: 8, scope: !5612)
!5639 = !DILocation(line: 533, column: 11, scope: !5612)
!5640 = !DILocation(line: 534, column: 2, scope: !5612)
!5641 = !DILocation(line: 535, column: 1, scope: !5612)
!5642 = distinct !DISubprogram(name: "check_jmp_cond", scope: !3, file: !3, line: 619, type: !3870, scopeLine: 620, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5643)
!5643 = !{!5644, !5645, !5646}
!5644 = !DILocalVariable(name: "auprobe", arg: 1, scope: !5642, file: !3, line: 619, type: !3854)
!5645 = !DILocalVariable(name: "regs", arg: 2, scope: !5642, file: !3, line: 619, type: !3872)
!5646 = !DILocalVariable(name: "flags", scope: !5642, file: !3, line: 621, type: !123)
!5647 = !DILocation(line: 619, column: 48, scope: !5642)
!5648 = !DILocation(line: 619, column: 73, scope: !5642)
!5649 = !DILocation(line: 621, column: 2, scope: !5642)
!5650 = !DILocation(line: 621, column: 16, scope: !5642)
!5651 = !DILocation(line: 621, column: 24, scope: !5642)
!5652 = !DILocation(line: 621, column: 30, scope: !5642)
!5653 = !DILocation(line: 623, column: 10, scope: !5642)
!5654 = !DILocation(line: 623, column: 19, scope: !5642)
!5655 = !DILocation(line: 623, column: 26, scope: !5642)
!5656 = !DILocation(line: 623, column: 2, scope: !5642)
!5657 = !DILocation(line: 626, column: 2, scope: !5658)
!5658 = distinct !DILexicalBlock(scope: !5642, file: !3, line: 623, column: 32)
!5659 = !DILocation(line: 630, column: 3, scope: !5658)
!5660 = !DILocation(line: 632, column: 1, scope: !5642)
!5661 = distinct !DISubprogram(name: "push_emulate_op", scope: !3, file: !3, line: 663, type: !3870, scopeLine: 664, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5662)
!5662 = !{!5663, !5664, !5665}
!5663 = !DILocalVariable(name: "auprobe", arg: 1, scope: !5661, file: !3, line: 663, type: !3854)
!5664 = !DILocalVariable(name: "regs", arg: 2, scope: !5661, file: !3, line: 663, type: !3872)
!5665 = !DILocalVariable(name: "src_ptr", scope: !5661, file: !3, line: 665, type: !124)
!5666 = !DILocation(line: 663, column: 49, scope: !5661)
!5667 = !DILocation(line: 663, column: 74, scope: !5661)
!5668 = !DILocation(line: 665, column: 2, scope: !5661)
!5669 = !DILocation(line: 665, column: 17, scope: !5661)
!5670 = !DILocation(line: 665, column: 35, scope: !5661)
!5671 = !DILocation(line: 665, column: 42, scope: !5661)
!5672 = !DILocation(line: 665, column: 51, scope: !5661)
!5673 = !DILocation(line: 665, column: 56, scope: !5661)
!5674 = !DILocation(line: 665, column: 40, scope: !5661)
!5675 = !DILocation(line: 667, column: 25, scope: !5676)
!5676 = distinct !DILexicalBlock(scope: !5661, file: !3, line: 667, column: 6)
!5677 = !DILocation(line: 667, column: 32, scope: !5676)
!5678 = !DILocation(line: 667, column: 31, scope: !5676)
!5679 = !DILocation(line: 667, column: 6, scope: !5676)
!5680 = !DILocation(line: 667, column: 6, scope: !5661)
!5681 = !DILocation(line: 668, column: 3, scope: !5676)
!5682 = !DILocation(line: 669, column: 14, scope: !5661)
!5683 = !DILocation(line: 669, column: 23, scope: !5661)
!5684 = !DILocation(line: 669, column: 28, scope: !5661)
!5685 = !DILocation(line: 669, column: 2, scope: !5661)
!5686 = !DILocation(line: 669, column: 8, scope: !5661)
!5687 = !DILocation(line: 669, column: 11, scope: !5661)
!5688 = !DILocation(line: 670, column: 2, scope: !5661)
!5689 = !DILocation(line: 671, column: 1, scope: !5661)
!5690 = !DISubprogram(name: "insn_rip_relative", scope: !113, file: !113, line: 162, type: !5265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5691 = distinct !DISubprogram(name: "default_pre_xol_op", scope: !3, file: !3, line: 520, type: !3926, scopeLine: 521, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5692)
!5692 = !{!5693, !5694}
!5693 = !DILocalVariable(name: "auprobe", arg: 1, scope: !5691, file: !3, line: 520, type: !3854)
!5694 = !DILocalVariable(name: "regs", arg: 2, scope: !5691, file: !3, line: 520, type: !3872)
!5695 = !DILocation(line: 520, column: 51, scope: !5691)
!5696 = !DILocation(line: 520, column: 76, scope: !5691)
!5697 = !DILocation(line: 522, column: 17, scope: !5691)
!5698 = !DILocation(line: 522, column: 26, scope: !5691)
!5699 = !DILocation(line: 522, column: 2, scope: !5691)
!5700 = !DILocation(line: 523, column: 2, scope: !5691)
!5701 = distinct !DISubprogram(name: "default_post_xol_op", scope: !3, file: !3, line: 554, type: !3926, scopeLine: 555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5702)
!5702 = !{!5703, !5704, !5705, !5706}
!5703 = !DILocalVariable(name: "auprobe", arg: 1, scope: !5701, file: !3, line: 554, type: !3854)
!5704 = !DILocalVariable(name: "regs", arg: 2, scope: !5701, file: !3, line: 554, type: !3872)
!5705 = !DILocalVariable(name: "utask", scope: !5701, file: !3, line: 556, type: !3826)
!5706 = !DILocalVariable(name: "correction", scope: !5707, file: !3, line: 560, type: !128)
!5707 = distinct !DILexicalBlock(scope: !5708, file: !3, line: 559, column: 48)
!5708 = distinct !DILexicalBlock(scope: !5701, file: !3, line: 559, column: 6)
!5709 = !DILocation(line: 554, column: 52, scope: !5701)
!5710 = !DILocation(line: 554, column: 77, scope: !5701)
!5711 = !DILocation(line: 556, column: 2, scope: !5701)
!5712 = !DILocation(line: 556, column: 22, scope: !5701)
!5713 = !DILocation(line: 556, column: 30, scope: !5701)
!5714 = !DILocation(line: 556, column: 39, scope: !5701)
!5715 = !DILocation(line: 558, column: 18, scope: !5701)
!5716 = !DILocation(line: 558, column: 27, scope: !5701)
!5717 = !DILocation(line: 558, column: 2, scope: !5701)
!5718 = !DILocation(line: 559, column: 6, scope: !5708)
!5719 = !DILocation(line: 559, column: 15, scope: !5708)
!5720 = !DILocation(line: 559, column: 24, scope: !5708)
!5721 = !DILocation(line: 559, column: 31, scope: !5708)
!5722 = !DILocation(line: 559, column: 6, scope: !5701)
!5723 = !DILocation(line: 560, column: 3, scope: !5707)
!5724 = !DILocation(line: 560, column: 8, scope: !5707)
!5725 = !DILocation(line: 560, column: 21, scope: !5707)
!5726 = !DILocation(line: 560, column: 28, scope: !5707)
!5727 = !DILocation(line: 560, column: 36, scope: !5707)
!5728 = !DILocation(line: 560, column: 43, scope: !5707)
!5729 = !DILocation(line: 560, column: 34, scope: !5707)
!5730 = !DILocation(line: 561, column: 15, scope: !5707)
!5731 = !DILocation(line: 561, column: 3, scope: !5707)
!5732 = !DILocation(line: 561, column: 9, scope: !5707)
!5733 = !DILocation(line: 561, column: 12, scope: !5707)
!5734 = !DILocation(line: 562, column: 2, scope: !5708)
!5735 = !DILocation(line: 562, column: 2, scope: !5707)
!5736 = !DILocation(line: 562, column: 13, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5708, file: !3, line: 562, column: 13)
!5738 = !DILocation(line: 562, column: 22, scope: !5737)
!5739 = !DILocation(line: 562, column: 31, scope: !5737)
!5740 = !DILocation(line: 562, column: 38, scope: !5737)
!5741 = !DILocation(line: 562, column: 13, scope: !5708)
!5742 = !DILocation(line: 563, column: 27, scope: !5743)
!5743 = distinct !DILexicalBlock(scope: !5737, file: !3, line: 562, column: 57)
!5744 = !DILocation(line: 563, column: 15, scope: !5743)
!5745 = !DILocation(line: 563, column: 3, scope: !5743)
!5746 = !DILocation(line: 563, column: 9, scope: !5743)
!5747 = !DILocation(line: 563, column: 12, scope: !5743)
!5748 = !DILocation(line: 564, column: 26, scope: !5749)
!5749 = distinct !DILexicalBlock(scope: !5743, file: !3, line: 564, column: 7)
!5750 = !DILocation(line: 564, column: 32, scope: !5749)
!5751 = !DILocation(line: 564, column: 39, scope: !5749)
!5752 = !DILocation(line: 564, column: 47, scope: !5749)
!5753 = !DILocation(line: 564, column: 56, scope: !5749)
!5754 = !DILocation(line: 564, column: 65, scope: !5749)
!5755 = !DILocation(line: 564, column: 45, scope: !5749)
!5756 = !DILocation(line: 564, column: 7, scope: !5749)
!5757 = !DILocation(line: 564, column: 7, scope: !5743)
!5758 = !DILocation(line: 565, column: 4, scope: !5749)
!5759 = !DILocation(line: 566, column: 2, scope: !5743)
!5760 = !DILocation(line: 568, column: 6, scope: !5761)
!5761 = distinct !DILexicalBlock(scope: !5701, file: !3, line: 568, column: 6)
!5762 = !DILocation(line: 568, column: 15, scope: !5761)
!5763 = !DILocation(line: 568, column: 24, scope: !5761)
!5764 = !DILocation(line: 568, column: 31, scope: !5761)
!5765 = !DILocation(line: 568, column: 6, scope: !5701)
!5766 = !DILocation(line: 569, column: 3, scope: !5761)
!5767 = !DILocation(line: 569, column: 10, scope: !5761)
!5768 = !DILocation(line: 569, column: 17, scope: !5761)
!5769 = !DILocation(line: 569, column: 26, scope: !5761)
!5770 = !DILocation(line: 571, column: 2, scope: !5701)
!5771 = !DILocation(line: 572, column: 1, scope: !5701)
!5772 = distinct !DISubprogram(name: "default_abort_op", scope: !3, file: !3, line: 574, type: !3931, scopeLine: 575, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5773)
!5773 = !{!5774, !5775}
!5774 = !DILocalVariable(name: "auprobe", arg: 1, scope: !5772, file: !3, line: 574, type: !3854)
!5775 = !DILocalVariable(name: "regs", arg: 2, scope: !5772, file: !3, line: 574, type: !3872)
!5776 = !DILocation(line: 574, column: 50, scope: !5772)
!5777 = !DILocation(line: 574, column: 75, scope: !5772)
!5778 = !DILocation(line: 576, column: 18, scope: !5772)
!5779 = !DILocation(line: 576, column: 27, scope: !5772)
!5780 = !DILocation(line: 576, column: 2, scope: !5772)
!5781 = !DILocation(line: 577, column: 1, scope: !5772)
!5782 = distinct !DISubprogram(name: "riprel_pre_xol", scope: !3, file: !3, line: 470, type: !3931, scopeLine: 471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5783)
!5783 = !{!5784, !5785, !5786, !5789}
!5784 = !DILocalVariable(name: "auprobe", arg: 1, scope: !5782, file: !3, line: 470, type: !3854)
!5785 = !DILocalVariable(name: "regs", arg: 2, scope: !5782, file: !3, line: 470, type: !3872)
!5786 = !DILocalVariable(name: "utask", scope: !5787, file: !3, line: 473, type: !3826)
!5787 = distinct !DILexicalBlock(scope: !5788, file: !3, line: 472, column: 54)
!5788 = distinct !DILexicalBlock(scope: !5782, file: !3, line: 472, column: 6)
!5789 = !DILocalVariable(name: "sr", scope: !5787, file: !3, line: 474, type: !124)
!5790 = !DILocation(line: 470, column: 48, scope: !5782)
!5791 = !DILocation(line: 470, column: 73, scope: !5782)
!5792 = !DILocation(line: 472, column: 6, scope: !5788)
!5793 = !DILocation(line: 472, column: 15, scope: !5788)
!5794 = !DILocation(line: 472, column: 24, scope: !5788)
!5795 = !DILocation(line: 472, column: 31, scope: !5788)
!5796 = !DILocation(line: 472, column: 6, scope: !5782)
!5797 = !DILocation(line: 473, column: 3, scope: !5787)
!5798 = !DILocation(line: 473, column: 23, scope: !5787)
!5799 = !DILocation(line: 473, column: 31, scope: !5787)
!5800 = !DILocation(line: 473, column: 40, scope: !5787)
!5801 = !DILocation(line: 474, column: 3, scope: !5787)
!5802 = !DILocation(line: 474, column: 18, scope: !5787)
!5803 = !DILocation(line: 474, column: 35, scope: !5787)
!5804 = !DILocation(line: 474, column: 44, scope: !5787)
!5805 = !DILocation(line: 474, column: 23, scope: !5787)
!5806 = !DILocation(line: 476, column: 43, scope: !5787)
!5807 = !DILocation(line: 476, column: 42, scope: !5787)
!5808 = !DILocation(line: 476, column: 3, scope: !5787)
!5809 = !DILocation(line: 476, column: 10, scope: !5787)
!5810 = !DILocation(line: 476, column: 17, scope: !5787)
!5811 = !DILocation(line: 476, column: 40, scope: !5787)
!5812 = !DILocation(line: 477, column: 9, scope: !5787)
!5813 = !DILocation(line: 477, column: 16, scope: !5787)
!5814 = !DILocation(line: 477, column: 24, scope: !5787)
!5815 = !DILocation(line: 477, column: 33, scope: !5787)
!5816 = !DILocation(line: 477, column: 42, scope: !5787)
!5817 = !DILocation(line: 477, column: 22, scope: !5787)
!5818 = !DILocation(line: 477, column: 4, scope: !5787)
!5819 = !DILocation(line: 477, column: 7, scope: !5787)
!5820 = !DILocation(line: 478, column: 2, scope: !5788)
!5821 = !DILocation(line: 478, column: 2, scope: !5787)
!5822 = !DILocation(line: 479, column: 1, scope: !5782)
!5823 = distinct !DISubprogram(name: "scratch_reg", scope: !3, file: !3, line: 457, type: !5824, scopeLine: 458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5826)
!5824 = !DISubroutineType(types: !5825)
!5825 = !{!124, !3854, !3872}
!5826 = !{!5827, !5828}
!5827 = !DILocalVariable(name: "auprobe", arg: 1, scope: !5823, file: !3, line: 457, type: !3854)
!5828 = !DILocalVariable(name: "regs", arg: 2, scope: !5823, file: !3, line: 457, type: !3872)
!5829 = !DILocation(line: 457, column: 33, scope: !5823)
!5830 = !DILocation(line: 457, column: 58, scope: !5823)
!5831 = !DILocation(line: 459, column: 6, scope: !5832)
!5832 = distinct !DILexicalBlock(scope: !5823, file: !3, line: 459, column: 6)
!5833 = !DILocation(line: 459, column: 15, scope: !5832)
!5834 = !DILocation(line: 459, column: 24, scope: !5832)
!5835 = !DILocation(line: 459, column: 31, scope: !5832)
!5836 = !DILocation(line: 459, column: 6, scope: !5823)
!5837 = !DILocation(line: 460, column: 11, scope: !5832)
!5838 = !DILocation(line: 460, column: 17, scope: !5832)
!5839 = !DILocation(line: 460, column: 3, scope: !5832)
!5840 = !DILocation(line: 461, column: 6, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5823, file: !3, line: 461, column: 6)
!5842 = !DILocation(line: 461, column: 15, scope: !5841)
!5843 = !DILocation(line: 461, column: 24, scope: !5841)
!5844 = !DILocation(line: 461, column: 31, scope: !5841)
!5845 = !DILocation(line: 461, column: 6, scope: !5823)
!5846 = !DILocation(line: 462, column: 11, scope: !5841)
!5847 = !DILocation(line: 462, column: 17, scope: !5841)
!5848 = !DILocation(line: 462, column: 3, scope: !5841)
!5849 = !DILocation(line: 463, column: 10, scope: !5823)
!5850 = !DILocation(line: 463, column: 16, scope: !5823)
!5851 = !DILocation(line: 463, column: 2, scope: !5823)
!5852 = !DILocation(line: 464, column: 1, scope: !5823)
!5853 = distinct !DISubprogram(name: "riprel_post_xol", scope: !3, file: !3, line: 481, type: !3931, scopeLine: 482, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5854)
!5854 = !{!5855, !5856, !5857, !5860}
!5855 = !DILocalVariable(name: "auprobe", arg: 1, scope: !5853, file: !3, line: 481, type: !3854)
!5856 = !DILocalVariable(name: "regs", arg: 2, scope: !5853, file: !3, line: 481, type: !3872)
!5857 = !DILocalVariable(name: "utask", scope: !5858, file: !3, line: 484, type: !3826)
!5858 = distinct !DILexicalBlock(scope: !5859, file: !3, line: 483, column: 54)
!5859 = distinct !DILexicalBlock(scope: !5853, file: !3, line: 483, column: 6)
!5860 = !DILocalVariable(name: "sr", scope: !5858, file: !3, line: 485, type: !124)
!5861 = !DILocation(line: 481, column: 49, scope: !5853)
!5862 = !DILocation(line: 481, column: 74, scope: !5853)
!5863 = !DILocation(line: 483, column: 6, scope: !5859)
!5864 = !DILocation(line: 483, column: 15, scope: !5859)
!5865 = !DILocation(line: 483, column: 24, scope: !5859)
!5866 = !DILocation(line: 483, column: 31, scope: !5859)
!5867 = !DILocation(line: 483, column: 6, scope: !5853)
!5868 = !DILocation(line: 484, column: 3, scope: !5858)
!5869 = !DILocation(line: 484, column: 23, scope: !5858)
!5870 = !DILocation(line: 484, column: 31, scope: !5858)
!5871 = !DILocation(line: 484, column: 40, scope: !5858)
!5872 = !DILocation(line: 485, column: 3, scope: !5858)
!5873 = !DILocation(line: 485, column: 18, scope: !5858)
!5874 = !DILocation(line: 485, column: 35, scope: !5858)
!5875 = !DILocation(line: 485, column: 44, scope: !5858)
!5876 = !DILocation(line: 485, column: 23, scope: !5858)
!5877 = !DILocation(line: 487, column: 9, scope: !5858)
!5878 = !DILocation(line: 487, column: 16, scope: !5858)
!5879 = !DILocation(line: 487, column: 23, scope: !5858)
!5880 = !DILocation(line: 487, column: 4, scope: !5858)
!5881 = !DILocation(line: 487, column: 7, scope: !5858)
!5882 = !DILocation(line: 488, column: 2, scope: !5859)
!5883 = !DILocation(line: 488, column: 2, scope: !5858)
!5884 = !DILocation(line: 489, column: 1, scope: !5853)
!5885 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !4167, file: !4167, line: 116, type: !5886, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5889)
!5886 = !DISubroutineType(types: !5887)
!5887 = !{!127, !5888, !127}
!5888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!5889 = !{!5890, !5891}
!5890 = !DILocalVariable(name: "ti", arg: 1, scope: !5885, file: !4167, line: 116, type: !5888)
!5891 = !DILocalVariable(name: "flag", arg: 2, scope: !5885, file: !4167, line: 116, type: !127)
!5892 = !DILocation(line: 116, column: 59, scope: !5885)
!5893 = !DILocation(line: 116, column: 67, scope: !5885)
!5894 = !DILocation(line: 118, column: 9, scope: !5885)
!5895 = !DILocation(line: 118, column: 2, scope: !5885)
!5896 = distinct !DISubprogram(name: "user_64bit_mode", scope: !3874, file: !3874, line: 227, type: !5897, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5899)
!5897 = !DISubroutineType(types: !5898)
!5898 = !{!802, !3872}
!5899 = !{!5900}
!5900 = !DILocalVariable(name: "regs", arg: 1, scope: !5896, file: !3874, line: 227, type: !3872)
!5901 = !DILocation(line: 227, column: 52, scope: !5896)
!5902 = !DILocation(line: 235, column: 9, scope: !5896)
!5903 = !DILocation(line: 235, column: 15, scope: !5896)
!5904 = !DILocation(line: 235, column: 18, scope: !5896)
!5905 = !DILocation(line: 235, column: 2, scope: !5896)
!5906 = distinct !DISubprogram(name: "check_copy_size", scope: !4167, file: !4167, line: 237, type: !5907, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5909)
!5907 = !DISubroutineType(types: !5908)
!5908 = !{!802, !1846, !1112, !802}
!5909 = !{!5910, !5911, !5912, !5913, !5914, !5917}
!5910 = !DILocalVariable(name: "addr", arg: 1, scope: !5906, file: !4167, line: 237, type: !1846)
!5911 = !DILocalVariable(name: "bytes", arg: 2, scope: !5906, file: !4167, line: 237, type: !1112)
!5912 = !DILocalVariable(name: "is_source", arg: 3, scope: !5906, file: !4167, line: 237, type: !802)
!5913 = !DILocalVariable(name: "sz", scope: !5906, file: !4167, line: 239, type: !127)
!5914 = !DILocalVariable(name: "__ret_warn_on", scope: !5915, file: !4167, line: 249, type: !127)
!5915 = distinct !DILexicalBlock(scope: !5916, file: !4167, line: 249, column: 6)
!5916 = distinct !DILexicalBlock(scope: !5906, file: !4167, line: 249, column: 6)
!5917 = !DILocalVariable(name: "__flags", scope: !5918, file: !4167, line: 249, type: !127)
!5918 = distinct !DILexicalBlock(scope: !5919, file: !4167, line: 249, column: 6)
!5919 = distinct !DILexicalBlock(scope: !5915, file: !4167, line: 249, column: 6)
!5920 = !DILocation(line: 237, column: 29, scope: !5906)
!5921 = !DILocation(line: 237, column: 42, scope: !5906)
!5922 = !DILocation(line: 237, column: 54, scope: !5906)
!5923 = !DILocation(line: 239, column: 2, scope: !5906)
!5924 = !DILocation(line: 239, column: 6, scope: !5906)
!5925 = !DILocation(line: 239, column: 33, scope: !5906)
!5926 = !DILocation(line: 239, column: 11, scope: !5906)
!5927 = !DILocation(line: 240, column: 6, scope: !5928)
!5928 = distinct !DILexicalBlock(scope: !5906, file: !4167, line: 240, column: 6)
!5929 = !DILocation(line: 0, scope: !5928)
!5930 = !DILocation(line: 240, column: 6, scope: !5906)
!5931 = !DILocation(line: 241, column: 29, scope: !5932)
!5932 = distinct !DILexicalBlock(scope: !5933, file: !4167, line: 241, column: 7)
!5933 = distinct !DILexicalBlock(scope: !5928, file: !4167, line: 240, column: 39)
!5934 = !DILocation(line: 241, column: 8, scope: !5932)
!5935 = !DILocation(line: 241, column: 7, scope: !5933)
!5936 = !DILocation(line: 242, column: 18, scope: !5932)
!5937 = !DILocation(line: 242, column: 22, scope: !5932)
!5938 = !DILocation(line: 242, column: 4, scope: !5932)
!5939 = !DILocation(line: 243, column: 12, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5932, file: !4167, line: 243, column: 12)
!5941 = !DILocation(line: 243, column: 12, scope: !5932)
!5942 = !DILocation(line: 244, column: 4, scope: !5940)
!5943 = !{i32 1638323}
!5944 = !DILocation(line: 246, column: 4, scope: !5940)
!5945 = !{i32 1638352}
!5946 = !DILocation(line: 247, column: 3, scope: !5933)
!5947 = !DILocation(line: 249, column: 6, scope: !5915)
!5948 = !DILocation(line: 249, column: 6, scope: !5919)
!5949 = !DILocation(line: 249, column: 6, scope: !5918)
!5950 = !DILocation(line: 249, column: 6, scope: !5951)
!5951 = distinct !DILexicalBlock(scope: !5918, file: !4167, line: 249, column: 6)
!5952 = !DILocation(line: 249, column: 6, scope: !5953)
!5953 = distinct !DILexicalBlock(scope: !5918, file: !4167, line: 249, column: 6)
!5954 = !{i64 2149609246, i64 2149609275, i64 2149609321, i64 2149609379, i64 2149609433, i64 2149609487, i64 2149609542, i64 2149609573, i64 2149609881, i64 2149609887, i64 2149609934, i64 2149609957, i64 2149609983}
!5955 = !DILocation(line: 249, column: 6, scope: !5956)
!5956 = distinct !DILexicalBlock(scope: !5918, file: !4167, line: 249, column: 6)
!5957 = !DILocation(line: 249, column: 6, scope: !5916)
!5958 = !DILocation(line: 249, column: 6, scope: !5906)
!5959 = !DILocation(line: 250, column: 3, scope: !5916)
!5960 = !DILocation(line: 251, column: 20, scope: !5906)
!5961 = !DILocation(line: 251, column: 26, scope: !5906)
!5962 = !DILocation(line: 251, column: 33, scope: !5906)
!5963 = !DILocation(line: 251, column: 2, scope: !5906)
!5964 = !DILocation(line: 252, column: 2, scope: !5906)
!5965 = !DILocation(line: 253, column: 1, scope: !5906)
!5966 = !DISubprogram(name: "_copy_from_user", scope: !5143, file: !5143, line: 158, type: !5144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5967 = distinct !DISubprogram(name: "copy_overflow", scope: !4167, file: !4167, line: 230, type: !5968, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5970)
!5968 = !DISubroutineType(types: !5969)
!5969 = !{null, !127, !123}
!5970 = !{!5971, !5972}
!5971 = !DILocalVariable(name: "size", arg: 1, scope: !5967, file: !4167, line: 230, type: !127)
!5972 = !DILocalVariable(name: "count", arg: 2, scope: !5967, file: !4167, line: 230, type: !123)
!5973 = !DILocation(line: 230, column: 38, scope: !5967)
!5974 = !DILocation(line: 230, column: 58, scope: !5967)
!5975 = !DILocation(line: 233, column: 19, scope: !5976)
!5976 = distinct !DILexicalBlock(scope: !5967, file: !4167, line: 232, column: 6)
!5977 = !DILocation(line: 233, column: 25, scope: !5976)
!5978 = !DILocation(line: 233, column: 3, scope: !5976)
!5979 = !DILocation(line: 234, column: 1, scope: !5967)
!5980 = !DISubprogram(name: "__bad_copy_from", scope: !4167, file: !4167, line: 224, type: !2351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5981 = !DISubprogram(name: "__bad_copy_to", scope: !4167, file: !4167, line: 226, type: !2351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5982 = distinct !DISubprogram(name: "check_object_size", scope: !4167, file: !4167, line: 218, type: !5983, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5985)
!5983 = !DISubroutineType(types: !5984)
!5984 = !{null, !1846, !123, !802}
!5985 = !{!5986, !5987, !5988}
!5986 = !DILocalVariable(name: "ptr", arg: 1, scope: !5982, file: !4167, line: 218, type: !1846)
!5987 = !DILocalVariable(name: "n", arg: 2, scope: !5982, file: !4167, line: 218, type: !123)
!5988 = !DILocalVariable(name: "to_user", arg: 3, scope: !5982, file: !4167, line: 219, type: !802)
!5989 = !DILocation(line: 218, column: 50, scope: !5982)
!5990 = !DILocation(line: 218, column: 69, scope: !5982)
!5991 = !DILocation(line: 219, column: 15, scope: !5982)
!5992 = !DILocation(line: 220, column: 3, scope: !5982)
!5993 = !DISubprogram(name: "__copy_overflow", scope: !4167, file: !4167, line: 228, type: !5968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5994 = !DISubprogram(name: "_copy_to_user", scope: !5143, file: !5143, line: 176, type: !5144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
