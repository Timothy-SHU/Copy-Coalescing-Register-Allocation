; ModuleID = 'kernel/task_work.c'
source_filename = "kernel/task_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callback_head = type { ptr, ptr }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.pcpu_hot = type { %union.anon.13 }
%union.anon.13 = type { %struct.anon.14, [16 x i8] }
%struct.anon.14 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.15 }
%union.anon.15 = type { i64 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
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

@.str = private unnamed_addr constant [19 x i8] c"kernel/task_work.c\00", align 1, !dbg !0
@work_exited = internal global %struct.callback_head zeroinitializer, align 8, !dbg !7
@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@irq_work_NMI_resume = internal global %struct.irq_work { %struct.__call_single_node { %struct.llist_node zeroinitializer, %union.anon.2 { i32 8 }, i16 0, i16 0 }, ptr @task_work_set_notify_irq, %struct.rcuwait zeroinitializer }, section ".data..percpu", align 8, !dbg !5104
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched149 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8, !dbg !5106
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched149], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @task_work_add(ptr noundef %task, ptr noundef %work, i32 noundef %notify) #0 align 16 !dbg !5118 {
entry:
  %retval = alloca i32, align 4
  %task.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %notify.addr = alloca i32, align 4
  %head = alloca ptr, align 8
  %flags = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp38 = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %__ai_oldp = alloca ptr, align 8
  %tmp56 = alloca i64, align 8
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca ptr, align 8
  %__new = alloca ptr, align 8
  %__ptr = alloca ptr, align 8
  %tmp70 = alloca i64, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp89 = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp90 = alloca ptr, align 8
  %__ret_warn_on92 = alloca i32, align 4
  %__flags103 = alloca i32, align 4
  %tmp116 = alloca i64, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !5122, metadata !DIExpression()), !dbg !5155
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !5123, metadata !DIExpression()), !dbg !5156
  store i32 %notify, ptr %notify.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %notify.addr, metadata !5124, metadata !DIExpression()), !dbg !5157
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #8, !dbg !5158
  call void @llvm.dbg.declare(metadata ptr %head, metadata !5125, metadata !DIExpression()), !dbg !5159
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #8, !dbg !5160
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5126, metadata !DIExpression()), !dbg !5161
  %0 = load i32, ptr %notify.addr, align 4, !dbg !5162
  %and = and i32 %0, 65280, !dbg !5163
  store i32 %and, ptr %flags, align 4, !dbg !5161
  %1 = load i32, ptr %notify.addr, align 4, !dbg !5164
  %and1 = and i32 %1, -65281, !dbg !5164
  store i32 %and1, ptr %notify.addr, align 4, !dbg !5164
  %2 = load i32, ptr %notify.addr, align 4, !dbg !5165
  %cmp = icmp eq i32 %2, 4, !dbg !5166
  br i1 %cmp, label %if.then, label %if.else, !dbg !5167

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !5168
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5127, metadata !DIExpression()), !dbg !5168
  %3 = load ptr, ptr %task.addr, align 8, !dbg !5168
  %call = call ptr @get_current() #9, !dbg !5168
  %cmp2 = icmp ne ptr %3, %call, !dbg !5168
  %lnot = xor i1 %cmp2, true, !dbg !5168
  %lnot3 = xor i1 %lnot, true, !dbg !5168
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5168
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5168
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !5169
  %tobool = icmp ne i32 %4, 0, !dbg !5169
  %lnot4 = xor i1 %tobool, true, !dbg !5169
  %lnot6 = xor i1 %lnot4, true, !dbg !5169
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5169
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5169
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5169
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5169
  br i1 %tobool8, label %if.then9, label %if.end, !dbg !5168

if.then9:                                         ; preds = %if.then
  br label %do.body, !dbg !5169

do.body:                                          ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #8, !dbg !5170
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5132, metadata !DIExpression()), !dbg !5170
  store i32 2307, ptr %__flags, align 4, !dbg !5170
  br label %do.body10, !dbg !5170

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !5171

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !5171

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !5170

do.body11:                                        ; preds = %do.end
  %5 = load i32, ptr %__flags, align 4, !dbg !5173
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 62, i32 %5, i64 12) #8, !dbg !5173, !srcloc !5175
  br label %do.cond12, !dbg !5173

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5173

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !5170

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !5176

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5176

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #8, !dbg !5169
  br label %do.cond17, !dbg !5170

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !5170

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !5170

if.end:                                           ; preds = %do.end18, %if.then
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !5168
  %tobool19 = icmp ne i32 %6, 0, !dbg !5168
  %lnot20 = xor i1 %tobool19, true, !dbg !5168
  %lnot22 = xor i1 %lnot20, true, !dbg !5168
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5168
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !5168
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !5168
  store i64 %expval25, ptr %tmp, align 8, !dbg !5169
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !5178
  %7 = load i64, ptr %tmp, align 8, !dbg !5168
  %tobool26 = icmp ne i64 %7, 0, !dbg !5178
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !5179

if.then27:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5180
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5180

if.end28:                                         ; preds = %if.end
  br label %if.end34, !dbg !5181

if.else:                                          ; preds = %entry
  %8 = load i32, ptr %flags, align 4, !dbg !5182
  %and29 = and i32 %8, 256, !dbg !5185
  %tobool30 = icmp ne i32 %and29, 0, !dbg !5185
  br i1 %tobool30, label %if.then31, label %if.else32, !dbg !5186

if.then31:                                        ; preds = %if.else
  %9 = load ptr, ptr %work.addr, align 8, !dbg !5187
  call void @kasan_record_aux_stack_noalloc(ptr noundef %9) #9, !dbg !5188
  br label %if.end33, !dbg !5188

if.else32:                                        ; preds = %if.else
  %10 = load ptr, ptr %work.addr, align 8, !dbg !5189
  call void @kasan_record_aux_stack(ptr noundef %10) #9, !dbg !5190
  br label %if.end33

if.end33:                                         ; preds = %if.else32, %if.then31
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end28
  br label %do.body35, !dbg !5191

do.body35:                                        ; preds = %if.end34
  br label %do.cond36, !dbg !5193

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !5193

do.end37:                                         ; preds = %do.cond36
  %11 = load ptr, ptr %task.addr, align 8, !dbg !5191
  %task_works = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 113, !dbg !5191
  %12 = load volatile ptr, ptr %task_works, align 8, !dbg !5191
  store ptr %12, ptr %tmp38, align 8, !dbg !5193
  %13 = load ptr, ptr %tmp38, align 8, !dbg !5191
  store ptr %13, ptr %head, align 8, !dbg !5195
  br label %do.body39, !dbg !5196

do.body39:                                        ; preds = %if.end69, %do.end37
  %14 = load ptr, ptr %head, align 8, !dbg !5197
  %cmp40 = icmp eq ptr %14, @work_exited, !dbg !5197
  %lnot42 = xor i1 %cmp40, true, !dbg !5197
  %lnot44 = xor i1 %lnot42, true, !dbg !5197
  %lnot.ext45 = zext i1 %lnot44 to i32, !dbg !5197
  %conv46 = sext i32 %lnot.ext45 to i64, !dbg !5197
  %expval47 = call i64 @llvm.expect.i64(i64 %conv46, i64 0), !dbg !5197
  %tobool48 = icmp ne i64 %expval47, 0, !dbg !5197
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !5200

if.then49:                                        ; preds = %do.body39
  store i32 -3, ptr %retval, align 4, !dbg !5201
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5201

if.end50:                                         ; preds = %do.body39
  %15 = load ptr, ptr %head, align 8, !dbg !5202
  %16 = load ptr, ptr %work.addr, align 8, !dbg !5203
  %next = getelementptr inbounds %struct.callback_head, ptr %16, i32 0, i32 0, !dbg !5204
  store ptr %15, ptr %next, align 8, !dbg !5205
  br label %do.cond51, !dbg !5206

do.cond51:                                        ; preds = %if.end50
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #8, !dbg !5207
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !5135, metadata !DIExpression()), !dbg !5207
  %17 = load ptr, ptr %task.addr, align 8, !dbg !5207
  %task_works52 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 113, !dbg !5207
  store ptr %task_works52, ptr %__ai_ptr, align 8, !dbg !5207
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_oldp) #8, !dbg !5207
  call void @llvm.dbg.declare(metadata ptr %__ai_oldp, metadata !5137, metadata !DIExpression()), !dbg !5207
  store ptr %head, ptr %__ai_oldp, align 8, !dbg !5207
  br label %do.body53, !dbg !5207

do.body53:                                        ; preds = %do.cond51
  br label %do.cond54, !dbg !5208

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !5208

do.end55:                                         ; preds = %do.cond54
  %18 = load ptr, ptr %__ai_ptr, align 8, !dbg !5207
  call void @instrument_atomic_read_write(ptr noundef %18, i64 noundef 8) #9, !dbg !5207
  %19 = load ptr, ptr %__ai_oldp, align 8, !dbg !5207
  call void @instrument_read_write(ptr noundef %19, i64 noundef 8) #9, !dbg !5207
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #8, !dbg !5210
  call void @llvm.dbg.declare(metadata ptr %success, metadata !5138, metadata !DIExpression()), !dbg !5210
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #8, !dbg !5210
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !5140, metadata !DIExpression()), !dbg !5210
  %20 = load ptr, ptr %__ai_oldp, align 8, !dbg !5210
  store ptr %20, ptr %_old, align 8, !dbg !5210
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #8, !dbg !5210
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !5141, metadata !DIExpression()), !dbg !5210
  %21 = load ptr, ptr %_old, align 8, !dbg !5210
  %22 = load ptr, ptr %21, align 8, !dbg !5210
  store ptr %22, ptr %__old, align 8, !dbg !5210
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #8, !dbg !5210
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !5142, metadata !DIExpression()), !dbg !5210
  %23 = load ptr, ptr %work.addr, align 8, !dbg !5210
  store ptr %23, ptr %__new, align 8, !dbg !5210
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #8, !dbg !5210
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5143, metadata !DIExpression()), !dbg !5210
  %24 = load ptr, ptr %__ai_ptr, align 8, !dbg !5210
  store ptr %24, ptr %__ptr, align 8, !dbg !5210
  %25 = load ptr, ptr %__ptr, align 8, !dbg !5210
  %26 = load ptr, ptr %__old, align 8, !dbg !5210
  %27 = load ptr, ptr %__new, align 8, !dbg !5210
  %28 = call { i8, ptr } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %25, ptr %27, ptr elementtype(i64) %25, ptr %26) #8, !dbg !5210, !srcloc !5211
  %asmresult = extractvalue { i8, ptr } %28, 0, !dbg !5210
  %asmresult57 = extractvalue { i8, ptr } %28, 1, !dbg !5210
  %29 = icmp ult i8 %asmresult, 2, !dbg !5210
  call void @llvm.assume(i1 %29), !dbg !5210
  store i8 %asmresult, ptr %success, align 1, !dbg !5210
  store ptr %asmresult57, ptr %__old, align 8, !dbg !5210
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #8, !dbg !5210
  %30 = load i8, ptr %success, align 1, !dbg !5212, !range !5214, !noundef !641
  %tobool58 = trunc i8 %30 to i1, !dbg !5212
  %lnot59 = xor i1 %tobool58, true, !dbg !5212
  %lnot61 = xor i1 %lnot59, true, !dbg !5212
  %lnot63 = xor i1 %lnot61, true, !dbg !5212
  %lnot.ext64 = zext i1 %lnot63 to i32, !dbg !5212
  %conv65 = sext i32 %lnot.ext64 to i64, !dbg !5212
  %expval66 = call i64 @llvm.expect.i64(i64 %conv65, i64 0), !dbg !5212
  %tobool67 = icmp ne i64 %expval66, 0, !dbg !5212
  br i1 %tobool67, label %if.then68, label %if.end69, !dbg !5210

if.then68:                                        ; preds = %do.end55
  %31 = load ptr, ptr %__old, align 8, !dbg !5212
  %32 = load ptr, ptr %_old, align 8, !dbg !5212
  store ptr %31, ptr %32, align 8, !dbg !5212
  br label %if.end69, !dbg !5212

if.end69:                                         ; preds = %if.then68, %do.end55
  %33 = load i8, ptr %success, align 1, !dbg !5210, !range !5214, !noundef !641
  %tobool71 = trunc i8 %33 to i1, !dbg !5210
  %lnot72 = xor i1 %tobool71, true, !dbg !5210
  %lnot74 = xor i1 %lnot72, true, !dbg !5210
  %lnot.ext75 = zext i1 %lnot74 to i32, !dbg !5210
  %conv76 = sext i32 %lnot.ext75 to i64, !dbg !5210
  %expval77 = call i64 @llvm.expect.i64(i64 %conv76, i64 1), !dbg !5210
  store i64 %expval77, ptr %tmp70, align 8, !dbg !5212
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #8, !dbg !5207
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #8, !dbg !5207
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #8, !dbg !5207
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #8, !dbg !5207
  %34 = load i64, ptr %tmp70, align 8, !dbg !5210
  store i64 %34, ptr %tmp56, align 8, !dbg !5207
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_oldp) #8, !dbg !5215
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #8, !dbg !5215
  %35 = load i64, ptr %tmp56, align 8, !dbg !5207
  %tobool78 = icmp ne i64 %35, 0, !dbg !5216
  %lnot79 = xor i1 %tobool78, true, !dbg !5216
  br i1 %lnot79, label %do.body39, label %do.end81, !dbg !5206, !llvm.loop !5217

do.end81:                                         ; preds = %if.end69
  %36 = load i32, ptr %notify.addr, align 4, !dbg !5221
  switch i32 %36, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb
    i32 2, label %sw.bb82
    i32 3, label %sw.bb83
    i32 4, label %sw.bb85
  ], !dbg !5222

sw.bb:                                            ; preds = %do.end81
  %37 = load ptr, ptr %task.addr, align 8, !dbg !5223
  call void @set_notify_resume(ptr noundef %37) #9, !dbg !5224
  br label %sw.epilog, !dbg !5225

sw.bb82:                                          ; preds = %do.end81
  %38 = load ptr, ptr %task.addr, align 8, !dbg !5226
  call void @set_notify_signal(ptr noundef %38) #9, !dbg !5227
  br label %sw.epilog, !dbg !5228

sw.bb83:                                          ; preds = %do.end81
  %39 = load ptr, ptr %task.addr, align 8, !dbg !5229
  %call84 = call zeroext i1 @__set_notify_signal(ptr noundef %39) #9, !dbg !5230
  br label %sw.epilog, !dbg !5231

sw.bb85:                                          ; preds = %do.end81
  br label %do.body86, !dbg !5232

do.body86:                                        ; preds = %sw.bb85
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #8, !dbg !5233
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5144, metadata !DIExpression()), !dbg !5233
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5233
  %40 = load ptr, ptr %__vpp_verify, align 8, !dbg !5233
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #8, !dbg !5232
  br label %do.cond87, !dbg !5233

do.cond87:                                        ; preds = %do.body86
  br label %do.end88, !dbg !5233

do.end88:                                         ; preds = %do.cond87
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #8, !dbg !5234
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !5148, metadata !DIExpression()), !dbg !5234
  %41 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @irq_work_NMI_resume) #10, !dbg !5234, !srcloc !5235
  store i64 %41, ptr %tcp_ptr__, align 8, !dbg !5234
  %42 = load i64, ptr %tcp_ptr__, align 8, !dbg !5234
  %43 = inttoptr i64 %42 to ptr, !dbg !5234
  store ptr %43, ptr %tmp90, align 8, !dbg !5234
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #8, !dbg !5232
  %44 = load ptr, ptr %tmp90, align 8, !dbg !5234
  store ptr %44, ptr %tmp89, align 8, !dbg !5233
  %45 = load ptr, ptr %tmp89, align 8, !dbg !5232
  %call91 = call zeroext i1 @irq_work_queue(ptr noundef %45) #9, !dbg !5236
  br label %sw.epilog, !dbg !5237

sw.default:                                       ; preds = %do.end81
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on92) #8, !dbg !5238
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on92, metadata !5150, metadata !DIExpression()), !dbg !5238
  store i32 1, ptr %__ret_warn_on92, align 4, !dbg !5238
  %46 = load i32, ptr %__ret_warn_on92, align 4, !dbg !5239
  %tobool93 = icmp ne i32 %46, 0, !dbg !5239
  %lnot94 = xor i1 %tobool93, true, !dbg !5239
  %lnot96 = xor i1 %lnot94, true, !dbg !5239
  %lnot.ext97 = zext i1 %lnot96 to i32, !dbg !5239
  %conv98 = sext i32 %lnot.ext97 to i64, !dbg !5239
  %expval99 = call i64 @llvm.expect.i64(i64 %conv98, i64 0), !dbg !5239
  %tobool100 = icmp ne i64 %expval99, 0, !dbg !5239
  br i1 %tobool100, label %if.then101, label %if.end115, !dbg !5238

if.then101:                                       ; preds = %sw.default
  br label %do.body102, !dbg !5239

do.body102:                                       ; preds = %if.then101
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags103) #8, !dbg !5240
  call void @llvm.dbg.declare(metadata ptr %__flags103, metadata !5152, metadata !DIExpression()), !dbg !5240
  store i32 2307, ptr %__flags103, align 4, !dbg !5240
  br label %do.body104, !dbg !5240

do.body104:                                       ; preds = %do.body102
  br label %do.cond105, !dbg !5241

do.cond105:                                       ; preds = %do.body104
  br label %do.end106, !dbg !5241

do.end106:                                        ; preds = %do.cond105
  br label %do.body107, !dbg !5240

do.body107:                                       ; preds = %do.end106
  %47 = load i32, ptr %__flags103, align 4, !dbg !5243
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 105, i32 %47, i64 12) #8, !dbg !5243, !srcloc !5245
  br label %do.cond108, !dbg !5243

do.cond108:                                       ; preds = %do.body107
  br label %do.end109, !dbg !5243

do.end109:                                        ; preds = %do.cond108
  br label %do.body110, !dbg !5240

do.body110:                                       ; preds = %do.end109
  br label %do.cond111, !dbg !5246

do.cond111:                                       ; preds = %do.body110
  br label %do.end112, !dbg !5246

do.end112:                                        ; preds = %do.cond111
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags103) #8, !dbg !5239
  br label %do.cond113, !dbg !5240

do.cond113:                                       ; preds = %do.end112
  br label %do.end114, !dbg !5240

do.end114:                                        ; preds = %do.cond113
  br label %if.end115, !dbg !5240

if.end115:                                        ; preds = %do.end114, %sw.default
  %48 = load i32, ptr %__ret_warn_on92, align 4, !dbg !5238
  %tobool117 = icmp ne i32 %48, 0, !dbg !5238
  %lnot118 = xor i1 %tobool117, true, !dbg !5238
  %lnot120 = xor i1 %lnot118, true, !dbg !5238
  %lnot.ext121 = zext i1 %lnot120 to i32, !dbg !5238
  %conv122 = sext i32 %lnot.ext121 to i64, !dbg !5238
  %expval123 = call i64 @llvm.expect.i64(i64 %conv122, i64 0), !dbg !5238
  store i64 %expval123, ptr %tmp116, align 8, !dbg !5239
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on92) #8, !dbg !5248
  %49 = load i64, ptr %tmp116, align 8, !dbg !5238
  br label %sw.epilog, !dbg !5249

sw.epilog:                                        ; preds = %if.end115, %do.end88, %sw.bb83, %sw.bb82, %sw.bb, %do.end81
  store i32 0, ptr %retval, align 4, !dbg !5250
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5250

cleanup:                                          ; preds = %sw.epilog, %if.then49, %if.then27
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #8, !dbg !5251
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #8, !dbg !5251
  %50 = load i32, ptr %retval, align 4, !dbg !5251
  ret i32 %50, !dbg !5251
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #3 align 16 !dbg !5252 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #8, !dbg !5263
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5257, metadata !DIExpression()), !dbg !5263
  br label %do.body, !dbg !5263

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #8, !dbg !5264
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5259, metadata !DIExpression()), !dbg !5264
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5264
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5264
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #8, !dbg !5263
  br label %do.cond, !dbg !5264

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5264

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #8, !dbg !5265
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5261, metadata !DIExpression()), !dbg !5265
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #11, !dbg !5265, !srcloc !5266
  store i64 %1, ptr %pfo_val__, align 8, !dbg !5265
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !5265
  %3 = inttoptr i64 %2 to ptr, !dbg !5265
  store ptr %3, ptr %tmp, align 8, !dbg !5265
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #8, !dbg !5263
  %4 = load ptr, ptr %tmp, align 8, !dbg !5265
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !5263
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !5263
  store ptr %5, ptr %tmp1, align 8, !dbg !5263
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #8, !dbg !5267
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5263
  ret ptr %6, !dbg !5268
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kasan_record_aux_stack_noalloc(ptr noundef %ptr) #5 align 16 !dbg !5269 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5272, metadata !DIExpression()), !dbg !5273
  ret void, !dbg !5274
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kasan_record_aux_stack(ptr noundef %ptr) #5 align 16 !dbg !5275 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5277, metadata !DIExpression()), !dbg !5278
  ret void, !dbg !5279
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !5280 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5288, metadata !DIExpression()), !dbg !5290
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5289, metadata !DIExpression()), !dbg !5291
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5292
  %1 = load i64, ptr %size.addr, align 8, !dbg !5293
  %conv = trunc i64 %1 to i32, !dbg !5293
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #9, !dbg !5294
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5295
  %3 = load i64, ptr %size.addr, align 8, !dbg !5295
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #9, !dbg !5295
  ret void, !dbg !5296
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !5297 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5299, metadata !DIExpression()), !dbg !5301
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5300, metadata !DIExpression()), !dbg !5302
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5303
  %1 = load i64, ptr %size.addr, align 8, !dbg !5304
  %conv = trunc i64 %1 to i32, !dbg !5304
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #9, !dbg !5305
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5306
  %3 = load i64, ptr %size.addr, align 8, !dbg !5306
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 3) #9, !dbg !5306
  ret void, !dbg !5307
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_notify_resume(ptr noundef %task) #5 align 16 !dbg !5308 {
entry:
  %task.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !5311, metadata !DIExpression()), !dbg !5312
  %0 = load ptr, ptr %task.addr, align 8, !dbg !5313
  %call = call i32 @test_and_set_tsk_thread_flag(ptr noundef %0, i32 noundef 1) #9, !dbg !5315
  %tobool = icmp ne i32 %call, 0, !dbg !5315
  br i1 %tobool, label %if.end, label %if.then, !dbg !5316

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %task.addr, align 8, !dbg !5317
  call void @kick_process(ptr noundef %1) #9, !dbg !5318
  br label %if.end, !dbg !5318

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5319
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_notify_signal(ptr noundef %task) #5 align 16 !dbg !5320 {
entry:
  %task.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !5322, metadata !DIExpression()), !dbg !5323
  %0 = load ptr, ptr %task.addr, align 8, !dbg !5324
  %call = call zeroext i1 @__set_notify_signal(ptr noundef %0) #9, !dbg !5326
  br i1 %call, label %if.then, label %if.end, !dbg !5327

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %task.addr, align 8, !dbg !5328
  call void @kick_process(ptr noundef %1) #9, !dbg !5329
  br label %if.end, !dbg !5329

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5330
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__set_notify_signal(ptr noundef %task) #5 align 16 !dbg !5331 {
entry:
  %task.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !5335, metadata !DIExpression()), !dbg !5336
  %0 = load ptr, ptr %task.addr, align 8, !dbg !5337
  %call = call i32 @test_and_set_tsk_thread_flag(ptr noundef %0, i32 noundef 17) #9, !dbg !5338
  %tobool = icmp ne i32 %call, 0, !dbg !5338
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !5339

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %task.addr, align 8, !dbg !5340
  %call1 = call i32 @wake_up_state(ptr noundef %1, i32 noundef 1) #9, !dbg !5341
  %tobool2 = icmp ne i32 %call1, 0, !dbg !5342
  %lnot = xor i1 %tobool2, true, !dbg !5342
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !5343
  ret i1 %2, !dbg !5344
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5345 dso_local zeroext i1 @irq_work_queue(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @task_work_cancel_match(ptr noundef %task, ptr noundef %match, ptr noundef %data) #0 align 16 !dbg !5348 {
entry:
  %retval = alloca ptr, align 8
  %task.addr = alloca ptr, align 8
  %match.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %pprev = alloca ptr, align 8
  %work = alloca ptr, align 8
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp8 = alloca ptr, align 8
  %tmp15 = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %__ai_oldp = alloca ptr, align 8
  %tmp19 = alloca i64, align 8
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca ptr, align 8
  %__new = alloca ptr, align 8
  %__ptr = alloca ptr, align 8
  %tmp34 = alloca i64, align 8
  %__dummy47 = alloca i64, align 8
  %__dummy248 = alloca i64, align 8
  %tmp51 = alloca i32, align 4
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !5355, metadata !DIExpression()), !dbg !5381
  store ptr %match, ptr %match.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %match.addr, metadata !5356, metadata !DIExpression()), !dbg !5382
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5357, metadata !DIExpression()), !dbg !5383
  call void @llvm.lifetime.start.p0(i64 8, ptr %pprev) #8, !dbg !5384
  call void @llvm.dbg.declare(metadata ptr %pprev, metadata !5358, metadata !DIExpression()), !dbg !5385
  %0 = load ptr, ptr %task.addr, align 8, !dbg !5386
  %task_works = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 113, !dbg !5387
  store ptr %task_works, ptr %pprev, align 8, !dbg !5385
  call void @llvm.lifetime.start.p0(i64 8, ptr %work) #8, !dbg !5388
  call void @llvm.dbg.declare(metadata ptr %work, metadata !5359, metadata !DIExpression()), !dbg !5389
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #8, !dbg !5390
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5360, metadata !DIExpression()), !dbg !5391
  %1 = load ptr, ptr %task.addr, align 8, !dbg !5392
  %call = call zeroext i1 @task_work_pending(ptr noundef %1) #9, !dbg !5392
  %lnot = xor i1 %call, true, !dbg !5392
  %lnot1 = xor i1 %lnot, true, !dbg !5392
  %lnot2 = xor i1 %lnot1, true, !dbg !5392
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5392
  %conv = sext i32 %lnot.ext to i64, !dbg !5392
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5392
  %tobool = icmp ne i64 %expval, 0, !dbg !5392
  br i1 %tobool, label %if.then, label %if.end, !dbg !5394

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5395
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5395

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5396

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #8, !dbg !5397
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5361, metadata !DIExpression()), !dbg !5397
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #8, !dbg !5397
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5364, metadata !DIExpression()), !dbg !5397
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5397
  %conv3 = zext i1 %cmp to i32, !dbg !5397
  store i32 1, ptr %tmp, align 4, !dbg !5397
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #8, !dbg !5398
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #8, !dbg !5398
  %2 = load i32, ptr %tmp, align 4, !dbg !5397
  %3 = load ptr, ptr %task.addr, align 8, !dbg !5398
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 122, !dbg !5398
  %call4 = call i64 @_raw_spin_lock_irqsave(ptr noundef %pi_lock) #9, !dbg !5398
  store i64 %call4, ptr %flags, align 8, !dbg !5398
  br label %do.cond, !dbg !5398

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5398

do.end:                                           ; preds = %do.cond
  br label %do.body5, !dbg !5399

do.body5:                                         ; preds = %do.end
  br label %do.cond6, !dbg !5401

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5401

do.end7:                                          ; preds = %do.cond6
  %4 = load ptr, ptr %pprev, align 8, !dbg !5399
  %5 = load volatile ptr, ptr %4, align 8, !dbg !5399
  store ptr %5, ptr %tmp8, align 8, !dbg !5401
  %6 = load ptr, ptr %tmp8, align 8, !dbg !5399
  store ptr %6, ptr %work, align 8, !dbg !5403
  br label %while.cond, !dbg !5404

while.cond:                                       ; preds = %if.end45, %do.end7
  %7 = load ptr, ptr %work, align 8, !dbg !5405
  %tobool9 = icmp ne ptr %7, null, !dbg !5404
  br i1 %tobool9, label %while.body, label %while.end, !dbg !5404

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %match.addr, align 8, !dbg !5406
  %9 = load ptr, ptr %work, align 8, !dbg !5407
  %10 = load ptr, ptr %data.addr, align 8, !dbg !5408
  %call10 = call zeroext i1 %8(ptr noundef %9, ptr noundef %10) #9, !dbg !5406
  br i1 %call10, label %if.else, label %if.then11, !dbg !5409

if.then11:                                        ; preds = %while.body
  %11 = load ptr, ptr %work, align 8, !dbg !5410
  %next = getelementptr inbounds %struct.callback_head, ptr %11, i32 0, i32 0, !dbg !5412
  store ptr %next, ptr %pprev, align 8, !dbg !5413
  br label %do.body12, !dbg !5414

do.body12:                                        ; preds = %if.then11
  br label %do.cond13, !dbg !5416

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5416

do.end14:                                         ; preds = %do.cond13
  %12 = load ptr, ptr %pprev, align 8, !dbg !5414
  %13 = load volatile ptr, ptr %12, align 8, !dbg !5414
  store ptr %13, ptr %tmp15, align 8, !dbg !5416
  %14 = load ptr, ptr %tmp15, align 8, !dbg !5414
  store ptr %14, ptr %work, align 8, !dbg !5418
  br label %if.end45, !dbg !5419

if.else:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #8, !dbg !5420
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !5365, metadata !DIExpression()), !dbg !5420
  %15 = load ptr, ptr %pprev, align 8, !dbg !5420
  store ptr %15, ptr %__ai_ptr, align 8, !dbg !5420
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_oldp) #8, !dbg !5420
  call void @llvm.dbg.declare(metadata ptr %__ai_oldp, metadata !5370, metadata !DIExpression()), !dbg !5420
  store ptr %work, ptr %__ai_oldp, align 8, !dbg !5420
  br label %do.body16, !dbg !5420

do.body16:                                        ; preds = %if.else
  br label %do.cond17, !dbg !5421

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !5421

do.end18:                                         ; preds = %do.cond17
  %16 = load ptr, ptr %__ai_ptr, align 8, !dbg !5420
  call void @instrument_atomic_read_write(ptr noundef %16, i64 noundef 8) #9, !dbg !5420
  %17 = load ptr, ptr %__ai_oldp, align 8, !dbg !5420
  call void @instrument_read_write(ptr noundef %17, i64 noundef 8) #9, !dbg !5420
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #8, !dbg !5423
  call void @llvm.dbg.declare(metadata ptr %success, metadata !5371, metadata !DIExpression()), !dbg !5423
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #8, !dbg !5423
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !5373, metadata !DIExpression()), !dbg !5423
  %18 = load ptr, ptr %__ai_oldp, align 8, !dbg !5423
  store ptr %18, ptr %_old, align 8, !dbg !5423
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #8, !dbg !5423
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !5374, metadata !DIExpression()), !dbg !5423
  %19 = load ptr, ptr %_old, align 8, !dbg !5423
  %20 = load ptr, ptr %19, align 8, !dbg !5423
  store ptr %20, ptr %__old, align 8, !dbg !5423
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #8, !dbg !5423
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !5375, metadata !DIExpression()), !dbg !5423
  %21 = load ptr, ptr %work, align 8, !dbg !5423
  %next20 = getelementptr inbounds %struct.callback_head, ptr %21, i32 0, i32 0, !dbg !5423
  %22 = load ptr, ptr %next20, align 8, !dbg !5423
  store ptr %22, ptr %__new, align 8, !dbg !5423
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #8, !dbg !5423
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5376, metadata !DIExpression()), !dbg !5423
  %23 = load ptr, ptr %__ai_ptr, align 8, !dbg !5423
  store ptr %23, ptr %__ptr, align 8, !dbg !5423
  %24 = load ptr, ptr %__ptr, align 8, !dbg !5423
  %25 = load ptr, ptr %__old, align 8, !dbg !5423
  %26 = load ptr, ptr %__new, align 8, !dbg !5423
  %27 = call { i8, ptr } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %24, ptr %26, ptr elementtype(i64) %24, ptr %25) #8, !dbg !5423, !srcloc !5424
  %asmresult = extractvalue { i8, ptr } %27, 0, !dbg !5423
  %asmresult21 = extractvalue { i8, ptr } %27, 1, !dbg !5423
  %28 = icmp ult i8 %asmresult, 2, !dbg !5423
  call void @llvm.assume(i1 %28), !dbg !5423
  store i8 %asmresult, ptr %success, align 1, !dbg !5423
  store ptr %asmresult21, ptr %__old, align 8, !dbg !5423
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #8, !dbg !5423
  %29 = load i8, ptr %success, align 1, !dbg !5425, !range !5214, !noundef !641
  %tobool22 = trunc i8 %29 to i1, !dbg !5425
  %lnot23 = xor i1 %tobool22, true, !dbg !5425
  %lnot25 = xor i1 %lnot23, true, !dbg !5425
  %lnot27 = xor i1 %lnot25, true, !dbg !5425
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !5425
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !5425
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !5425
  %tobool31 = icmp ne i64 %expval30, 0, !dbg !5425
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !5423

if.then32:                                        ; preds = %do.end18
  %30 = load ptr, ptr %__old, align 8, !dbg !5425
  %31 = load ptr, ptr %_old, align 8, !dbg !5425
  store ptr %30, ptr %31, align 8, !dbg !5425
  br label %if.end33, !dbg !5425

if.end33:                                         ; preds = %if.then32, %do.end18
  %32 = load i8, ptr %success, align 1, !dbg !5423, !range !5214, !noundef !641
  %tobool35 = trunc i8 %32 to i1, !dbg !5423
  %lnot36 = xor i1 %tobool35, true, !dbg !5423
  %lnot38 = xor i1 %lnot36, true, !dbg !5423
  %lnot.ext39 = zext i1 %lnot38 to i32, !dbg !5423
  %conv40 = sext i32 %lnot.ext39 to i64, !dbg !5423
  %expval41 = call i64 @llvm.expect.i64(i64 %conv40, i64 1), !dbg !5423
  store i64 %expval41, ptr %tmp34, align 8, !dbg !5425
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #8, !dbg !5420
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #8, !dbg !5420
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #8, !dbg !5420
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #8, !dbg !5420
  %33 = load i64, ptr %tmp34, align 8, !dbg !5423
  store i64 %33, ptr %tmp19, align 8, !dbg !5420
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_oldp) #8, !dbg !5427
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #8, !dbg !5427
  %34 = load i64, ptr %tmp19, align 8, !dbg !5420
  %tobool42 = icmp ne i64 %34, 0, !dbg !5427
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !5428

if.then43:                                        ; preds = %if.end33
  br label %while.end, !dbg !5429

if.end44:                                         ; preds = %if.end33
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %do.end14
  br label %while.cond, !dbg !5404, !llvm.loop !5430

while.end:                                        ; preds = %if.then43, %while.cond
  br label %do.body46, !dbg !5432

do.body46:                                        ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy47) #8, !dbg !5433
  call void @llvm.dbg.declare(metadata ptr %__dummy47, metadata !5377, metadata !DIExpression()), !dbg !5433
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy248) #8, !dbg !5433
  call void @llvm.dbg.declare(metadata ptr %__dummy248, metadata !5380, metadata !DIExpression()), !dbg !5433
  %cmp49 = icmp eq ptr %__dummy47, %__dummy248, !dbg !5433
  %conv50 = zext i1 %cmp49 to i32, !dbg !5433
  store i32 1, ptr %tmp51, align 4, !dbg !5433
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy248) #8, !dbg !5434
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy47) #8, !dbg !5434
  %35 = load i32, ptr %tmp51, align 4, !dbg !5433
  %36 = load ptr, ptr %task.addr, align 8, !dbg !5434
  %pi_lock52 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 122, !dbg !5434
  %37 = load i64, ptr %flags, align 8, !dbg !5434
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pi_lock52, i64 noundef %37) #9, !dbg !5434
  br label %do.cond53, !dbg !5434

do.cond53:                                        ; preds = %do.body46
  br label %do.end54, !dbg !5434

do.end54:                                         ; preds = %do.cond53
  %38 = load ptr, ptr %work, align 8, !dbg !5435
  store ptr %38, ptr %retval, align 8, !dbg !5436
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5436

cleanup:                                          ; preds = %do.end54, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #8, !dbg !5437
  call void @llvm.lifetime.end.p0(i64 8, ptr %work) #8, !dbg !5437
  call void @llvm.lifetime.end.p0(i64 8, ptr %pprev) #8, !dbg !5437
  %39 = load ptr, ptr %retval, align 8, !dbg !5437
  ret ptr %39, !dbg !5437
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @task_work_pending(ptr noundef %task) #5 align 16 !dbg !5438 {
entry:
  %task.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !5440, metadata !DIExpression()), !dbg !5441
  br label %do.body, !dbg !5442

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5444

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %task.addr, align 8, !dbg !5442
  %task_works = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 113, !dbg !5442
  %1 = load volatile ptr, ptr %task_works, align 8, !dbg !5442
  store ptr %1, ptr %tmp, align 8, !dbg !5444
  %2 = load ptr, ptr %tmp, align 8, !dbg !5442
  %tobool = icmp ne ptr %2, null, !dbg !5446
  ret i1 %tobool, !dbg !5447
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5448 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #7 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5453 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #7 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @task_work_cancel_func(ptr noundef %task, ptr noundef %func) #0 align 16 !dbg !5456 {
entry:
  %task.addr = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !5461, metadata !DIExpression()), !dbg !5463
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !5462, metadata !DIExpression()), !dbg !5464
  %0 = load ptr, ptr %task.addr, align 8, !dbg !5465
  %1 = load ptr, ptr %func.addr, align 8, !dbg !5466
  %call = call ptr @task_work_cancel_match(ptr noundef %0, ptr noundef @task_work_func_match, ptr noundef %1) #9, !dbg !5467
  ret ptr %call, !dbg !5468
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @task_work_func_match(ptr noundef %cb, ptr noundef %data) #0 align 16 !dbg !5469 {
entry:
  %cb.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %cb, ptr %cb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cb.addr, metadata !5471, metadata !DIExpression()), !dbg !5473
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5472, metadata !DIExpression()), !dbg !5474
  %0 = load ptr, ptr %cb.addr, align 8, !dbg !5475
  %func = getelementptr inbounds %struct.callback_head, ptr %0, i32 0, i32 1, !dbg !5476
  %1 = load ptr, ptr %func, align 8, !dbg !5476
  %2 = load ptr, ptr %data.addr, align 8, !dbg !5477
  %cmp = icmp eq ptr %1, %2, !dbg !5478
  ret i1 %cmp, !dbg !5479
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @task_work_cancel(ptr noundef %task, ptr noundef %cb) #0 align 16 !dbg !5480 {
entry:
  %task.addr = alloca ptr, align 8
  %cb.addr = alloca ptr, align 8
  %ret = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !5484, metadata !DIExpression()), !dbg !5487
  store ptr %cb, ptr %cb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cb.addr, metadata !5485, metadata !DIExpression()), !dbg !5488
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8, !dbg !5489
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5486, metadata !DIExpression()), !dbg !5490
  %0 = load ptr, ptr %task.addr, align 8, !dbg !5491
  %1 = load ptr, ptr %cb.addr, align 8, !dbg !5492
  %call = call ptr @task_work_cancel_match(ptr noundef %0, ptr noundef @task_work_match, ptr noundef %1) #9, !dbg !5493
  store ptr %call, ptr %ret, align 8, !dbg !5494
  %2 = load ptr, ptr %ret, align 8, !dbg !5495
  %3 = load ptr, ptr %cb.addr, align 8, !dbg !5496
  %cmp = icmp eq ptr %2, %3, !dbg !5497
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8, !dbg !5498
  ret i1 %cmp, !dbg !5499
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @task_work_match(ptr noundef %cb, ptr noundef %data) #0 align 16 !dbg !5500 {
entry:
  %cb.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %cb, ptr %cb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cb.addr, metadata !5502, metadata !DIExpression()), !dbg !5504
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5503, metadata !DIExpression()), !dbg !5505
  %0 = load ptr, ptr %cb.addr, align 8, !dbg !5506
  %1 = load ptr, ptr %data.addr, align 8, !dbg !5507
  %cmp = icmp eq ptr %0, %1, !dbg !5508
  ret i1 %cmp, !dbg !5509
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @task_work_run() #0 align 16 !dbg !5510 {
entry:
  %task = alloca ptr, align 8
  %work = alloca ptr, align 8
  %head = alloca ptr, align 8
  %next = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %__ai_oldp = alloca ptr, align 8
  %tmp10 = alloca i64, align 8
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca ptr, align 8
  %__new = alloca ptr, align 8
  %__ptr = alloca ptr, align 8
  %tmp18 = alloca i64, align 8
  %tmp36 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #8, !dbg !5528
  call void @llvm.dbg.declare(metadata ptr %task, metadata !5512, metadata !DIExpression()), !dbg !5529
  %call = call ptr @get_current() #9, !dbg !5530
  store ptr %call, ptr %task, align 8, !dbg !5529
  call void @llvm.lifetime.start.p0(i64 8, ptr %work) #8, !dbg !5531
  call void @llvm.dbg.declare(metadata ptr %work, metadata !5513, metadata !DIExpression()), !dbg !5532
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #8, !dbg !5531
  call void @llvm.dbg.declare(metadata ptr %head, metadata !5514, metadata !DIExpression()), !dbg !5533
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #8, !dbg !5531
  call void @llvm.dbg.declare(metadata ptr %next, metadata !5515, metadata !DIExpression()), !dbg !5534
  br label %for.cond, !dbg !5535

for.cond:                                         ; preds = %do.end40, %entry
  br label %do.body, !dbg !5536

do.body:                                          ; preds = %for.cond
  br label %do.cond, !dbg !5538

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5538

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %task, align 8, !dbg !5536
  %task_works = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 113, !dbg !5536
  %1 = load volatile ptr, ptr %task_works, align 8, !dbg !5536
  store ptr %1, ptr %tmp, align 8, !dbg !5538
  %2 = load ptr, ptr %tmp, align 8, !dbg !5536
  store ptr %2, ptr %work, align 8, !dbg !5540
  br label %do.body1, !dbg !5541

do.body1:                                         ; preds = %if.end17, %do.end
  store ptr null, ptr %head, align 8, !dbg !5542
  %3 = load ptr, ptr %work, align 8, !dbg !5544
  %tobool = icmp ne ptr %3, null, !dbg !5544
  br i1 %tobool, label %if.end4, label %if.then, !dbg !5546

if.then:                                          ; preds = %do.body1
  %4 = load ptr, ptr %task, align 8, !dbg !5547
  %flags = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 4, !dbg !5550
  %5 = load i32, ptr %flags, align 4, !dbg !5550
  %and = and i32 %5, 4, !dbg !5551
  %tobool2 = icmp ne i32 %and, 0, !dbg !5551
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !5552

if.then3:                                         ; preds = %if.then
  store ptr @work_exited, ptr %head, align 8, !dbg !5553
  br label %if.end, !dbg !5554

if.else:                                          ; preds = %if.then
  br label %do.end29, !dbg !5555

if.end:                                           ; preds = %if.then3
  br label %if.end4, !dbg !5556

if.end4:                                          ; preds = %if.end, %do.body1
  br label %do.cond5, !dbg !5557

do.cond5:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #8, !dbg !5558
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !5516, metadata !DIExpression()), !dbg !5558
  %6 = load ptr, ptr %task, align 8, !dbg !5558
  %task_works6 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 113, !dbg !5558
  store ptr %task_works6, ptr %__ai_ptr, align 8, !dbg !5558
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_oldp) #8, !dbg !5558
  call void @llvm.dbg.declare(metadata ptr %__ai_oldp, metadata !5521, metadata !DIExpression()), !dbg !5558
  store ptr %work, ptr %__ai_oldp, align 8, !dbg !5558
  br label %do.body7, !dbg !5558

do.body7:                                         ; preds = %do.cond5
  br label %do.cond8, !dbg !5559

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !5559

do.end9:                                          ; preds = %do.cond8
  %7 = load ptr, ptr %__ai_ptr, align 8, !dbg !5558
  call void @instrument_atomic_read_write(ptr noundef %7, i64 noundef 8) #9, !dbg !5558
  %8 = load ptr, ptr %__ai_oldp, align 8, !dbg !5558
  call void @instrument_read_write(ptr noundef %8, i64 noundef 8) #9, !dbg !5558
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #8, !dbg !5561
  call void @llvm.dbg.declare(metadata ptr %success, metadata !5522, metadata !DIExpression()), !dbg !5561
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #8, !dbg !5561
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !5524, metadata !DIExpression()), !dbg !5561
  %9 = load ptr, ptr %__ai_oldp, align 8, !dbg !5561
  store ptr %9, ptr %_old, align 8, !dbg !5561
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #8, !dbg !5561
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !5525, metadata !DIExpression()), !dbg !5561
  %10 = load ptr, ptr %_old, align 8, !dbg !5561
  %11 = load ptr, ptr %10, align 8, !dbg !5561
  store ptr %11, ptr %__old, align 8, !dbg !5561
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #8, !dbg !5561
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !5526, metadata !DIExpression()), !dbg !5561
  %12 = load ptr, ptr %head, align 8, !dbg !5561
  store ptr %12, ptr %__new, align 8, !dbg !5561
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #8, !dbg !5561
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5527, metadata !DIExpression()), !dbg !5561
  %13 = load ptr, ptr %__ai_ptr, align 8, !dbg !5561
  store ptr %13, ptr %__ptr, align 8, !dbg !5561
  %14 = load ptr, ptr %__ptr, align 8, !dbg !5561
  %15 = load ptr, ptr %__old, align 8, !dbg !5561
  %16 = load ptr, ptr %__new, align 8, !dbg !5561
  %17 = call { i8, ptr } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %14, ptr %16, ptr elementtype(i64) %14, ptr %15) #8, !dbg !5561, !srcloc !5562
  %asmresult = extractvalue { i8, ptr } %17, 0, !dbg !5561
  %asmresult11 = extractvalue { i8, ptr } %17, 1, !dbg !5561
  %18 = icmp ult i8 %asmresult, 2, !dbg !5561
  call void @llvm.assume(i1 %18), !dbg !5561
  store i8 %asmresult, ptr %success, align 1, !dbg !5561
  store ptr %asmresult11, ptr %__old, align 8, !dbg !5561
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #8, !dbg !5561
  %19 = load i8, ptr %success, align 1, !dbg !5563, !range !5214, !noundef !641
  %tobool12 = trunc i8 %19 to i1, !dbg !5563
  %lnot = xor i1 %tobool12, true, !dbg !5563
  %lnot13 = xor i1 %lnot, true, !dbg !5563
  %lnot14 = xor i1 %lnot13, true, !dbg !5563
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !5563
  %conv = sext i32 %lnot.ext to i64, !dbg !5563
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5563
  %tobool15 = icmp ne i64 %expval, 0, !dbg !5563
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5561

if.then16:                                        ; preds = %do.end9
  %20 = load ptr, ptr %__old, align 8, !dbg !5563
  %21 = load ptr, ptr %_old, align 8, !dbg !5563
  store ptr %20, ptr %21, align 8, !dbg !5563
  br label %if.end17, !dbg !5563

if.end17:                                         ; preds = %if.then16, %do.end9
  %22 = load i8, ptr %success, align 1, !dbg !5561, !range !5214, !noundef !641
  %tobool19 = trunc i8 %22 to i1, !dbg !5561
  %lnot20 = xor i1 %tobool19, true, !dbg !5561
  %lnot22 = xor i1 %lnot20, true, !dbg !5561
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5561
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !5561
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 1), !dbg !5561
  store i64 %expval25, ptr %tmp18, align 8, !dbg !5563
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #8, !dbg !5558
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #8, !dbg !5558
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #8, !dbg !5558
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #8, !dbg !5558
  %23 = load i64, ptr %tmp18, align 8, !dbg !5561
  store i64 %23, ptr %tmp10, align 8, !dbg !5558
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_oldp) #8, !dbg !5565
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #8, !dbg !5565
  %24 = load i64, ptr %tmp10, align 8, !dbg !5558
  %tobool26 = icmp ne i64 %24, 0, !dbg !5566
  %lnot27 = xor i1 %tobool26, true, !dbg !5566
  br i1 %lnot27, label %do.body1, label %do.end29, !dbg !5557, !llvm.loop !5567

do.end29:                                         ; preds = %if.end17, %if.else
  %25 = load ptr, ptr %work, align 8, !dbg !5569
  %tobool30 = icmp ne ptr %25, null, !dbg !5569
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !5571

if.then31:                                        ; preds = %do.end29
  br label %for.end, !dbg !5572

if.end32:                                         ; preds = %do.end29
  %26 = load ptr, ptr %task, align 8, !dbg !5573
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 122, !dbg !5573
  call void @_raw_spin_lock_irq(ptr noundef %pi_lock) #9, !dbg !5573
  %27 = load ptr, ptr %task, align 8, !dbg !5574
  %pi_lock33 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 122, !dbg !5574
  call void @_raw_spin_unlock_irq(ptr noundef %pi_lock33) #9, !dbg !5574
  br label %do.body34, !dbg !5575

do.body34:                                        ; preds = %do.cond38, %if.end32
  %28 = load ptr, ptr %work, align 8, !dbg !5576
  %next35 = getelementptr inbounds %struct.callback_head, ptr %28, i32 0, i32 0, !dbg !5578
  %29 = load ptr, ptr %next35, align 8, !dbg !5578
  store ptr %29, ptr %next, align 8, !dbg !5579
  %30 = load ptr, ptr %work, align 8, !dbg !5580
  %func = getelementptr inbounds %struct.callback_head, ptr %30, i32 0, i32 1, !dbg !5581
  %31 = load ptr, ptr %func, align 8, !dbg !5581
  %32 = load ptr, ptr %work, align 8, !dbg !5582
  call void %31(ptr noundef %32) #9, !dbg !5580
  %33 = load ptr, ptr %next, align 8, !dbg !5583
  store ptr %33, ptr %work, align 8, !dbg !5584
  call void @__might_resched(ptr noundef @.str, i32 noundef 241, i32 noundef 0) #9, !dbg !5585
  %call37 = call i32 @_cond_resched() #9, !dbg !5585
  store i32 %call37, ptr %tmp36, align 4, !dbg !5585
  %34 = load i32, ptr %tmp36, align 4, !dbg !5585
  br label %do.cond38, !dbg !5587

do.cond38:                                        ; preds = %do.body34
  %35 = load ptr, ptr %work, align 8, !dbg !5588
  %tobool39 = icmp ne ptr %35, null, !dbg !5587
  br i1 %tobool39, label %do.body34, label %do.end40, !dbg !5587, !llvm.loop !5589

do.end40:                                         ; preds = %do.cond38
  br label %for.cond, !dbg !5591, !llvm.loop !5592

for.end:                                          ; preds = %if.then31
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #8, !dbg !5595
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #8, !dbg !5595
  call void @llvm.lifetime.end.p0(i64 8, ptr %work) #8, !dbg !5595
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #8, !dbg !5595
  ret void, !dbg !5595
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5596 dso_local void @_raw_spin_lock_irq(ptr noundef) #7 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5599 dso_local void @_raw_spin_unlock_irq(ptr noundef) #7 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__might_resched(ptr noundef %file, i32 noundef %line, i32 noundef %offsets) #5 align 16 !dbg !5600 {
entry:
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %offsets.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5605, metadata !DIExpression()), !dbg !5608
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !5606, metadata !DIExpression()), !dbg !5609
  store i32 %offsets, ptr %offsets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offsets.addr, metadata !5607, metadata !DIExpression()), !dbg !5610
  ret void, !dbg !5611
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_cond_resched() #3 align 16 !dbg !5108 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__cond_resched, ptr %tmp, align 8, !dbg !5612
  %0 = load ptr, ptr %tmp, align 8, !dbg !5612
  %call = call i32 %0() #9, !dbg !5614
  ret i32 %call, !dbg !5615
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !5616 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5621, metadata !DIExpression()), !dbg !5623
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5622, metadata !DIExpression()), !dbg !5624
  ret i1 true, !dbg !5625
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !5626 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5631, metadata !DIExpression()), !dbg !5634
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5632, metadata !DIExpression()), !dbg !5635
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5633, metadata !DIExpression()), !dbg !5636
  ret void, !dbg !5637
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_and_set_tsk_thread_flag(ptr noundef %tsk, i32 noundef %flag) #5 align 16 !dbg !5638 {
entry:
  %tsk.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !5642, metadata !DIExpression()), !dbg !5644
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !5643, metadata !DIExpression()), !dbg !5645
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !5646
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 0, !dbg !5646
  %1 = load i32, ptr %flag.addr, align 4, !dbg !5647
  %call = call i32 @test_and_set_ti_thread_flag(ptr noundef %thread_info, i32 noundef %1) #9, !dbg !5648
  ret i32 %call, !dbg !5649
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5650 dso_local void @kick_process(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_and_set_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #5 align 16 !dbg !5651 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !5657, metadata !DIExpression()), !dbg !5659
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !5658, metadata !DIExpression()), !dbg !5660
  %0 = load i32, ptr %flag.addr, align 4, !dbg !5661
  %conv = sext i32 %0 to i64, !dbg !5661
  %1 = load ptr, ptr %ti.addr, align 8, !dbg !5662
  %flags = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 0, !dbg !5663
  %call = call zeroext i1 @test_and_set_bit(i64 noundef %conv, ptr noundef %flags) #9, !dbg !5664
  %conv1 = zext i1 %call to i32, !dbg !5664
  ret i32 %conv1, !dbg !5665
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5666 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5673, metadata !DIExpression()), !dbg !5675
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5674, metadata !DIExpression()), !dbg !5676
  br label %do.body, !dbg !5677

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5678

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5680
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5681
  %div = sdiv i64 %1, 64, !dbg !5681
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5682
  call void @instrument_atomic_read_write(ptr noundef %add.ptr, i64 noundef 8) #9, !dbg !5683
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5684
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5685
  %call = call zeroext i1 @arch_test_and_set_bit(i64 noundef %2, ptr noundef %3) #9, !dbg !5686
  ret i1 %call, !dbg !5687
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5688 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5691, metadata !DIExpression()), !dbg !5695
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5692, metadata !DIExpression()), !dbg !5696
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #8, !dbg !5697
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5693, metadata !DIExpression()), !dbg !5697
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5697
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5697
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1, ptr elementtype(i64) %0) #8, !dbg !5697, !srcloc !5698
  %3 = icmp ult i8 %2, 2, !dbg !5697
  call void @llvm.assume(i1 %3), !dbg !5697
  store i8 %2, ptr %c, align 1, !dbg !5697
  %4 = load i8, ptr %c, align 1, !dbg !5697, !range !5214, !noundef !641
  %tobool = trunc i8 %4 to i1, !dbg !5697
  %frombool = zext i1 %tobool to i8, !dbg !5697
  store i8 %frombool, ptr %tmp, align 1, !dbg !5697
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #8, !dbg !5699
  %5 = load i8, ptr %tmp, align 1, !dbg !5697, !range !5214, !noundef !641
  %tobool1 = trunc i8 %5 to i1, !dbg !5697
  ret i1 %tobool1, !dbg !5700
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5701 dso_local i32 @wake_up_state(ptr noundef, i32 noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @task_work_set_notify_irq(ptr noundef %entry1) #0 align 16 !dbg !5704 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5706, metadata !DIExpression()), !dbg !5707
  %call = call ptr @get_current() #9, !dbg !5708
  %call2 = call i32 @test_and_set_tsk_thread_flag(ptr noundef %call, i32 noundef 1) #9, !dbg !5709
  ret void, !dbg !5710
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() #7

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { nounwind memory(read) }
attributes #11 = { nounwind memory(none) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116}
!llvm.ident = !{!5117}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "kernel/task_work.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "466b1a63ca66457b3827498f83af20c6")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 19)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "work_exited", scope: !9, file: !2, line: 7, type: !278, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.task_work.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/task_work\22 -D KBUILD_BASENAME=\22task_work\22 -D KBUILD_MODNAME=\22task_work\22 -D __KBUILD_MODNAME=kmod_task_work -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/task_work.ll kernel/task_work.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !273, globals: !5103, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !17, !25, !120, !127, !135, !151, !156, !163, !169, !174, !180, !186, !193, !201, !208, !217, !222, !227, !233, !245, !251, !258, !268}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !12, line: 65, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!16 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !18, line: 9, baseType: !13, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!19 = !{!20, !21, !22, !23, !24}
!20 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!21 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!22 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!23 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!24 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !27, file: !26, line: 147, baseType: !13, size: 32, elements: !117)
!26 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !26, line: 135, size: 512, elements: !28)
!28 = !{!29, !32, !34, !36, !40, !41, !57, !115, !116}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !27, file: !26, line: 136, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !27, file: !26, line: 137, baseType: !33, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !27, file: !26, line: 138, baseType: !35, size: 32, offset: 128)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !27, file: !26, line: 139, baseType: !37, size: 16, offset: 160)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !38, line: 24, baseType: !39)
!38 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!39 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !27, file: !26, line: 150, baseType: !25, size: 32, offset: 192)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !27, file: !26, line: 151, baseType: !42, size: 64, offset: 256)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !26, line: 64, baseType: !44)
!44 = !DISubroutineType(types: !45)
!45 = !{!35, !46, !35, !33, !47, !53}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !38, line: 61, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !50, line: 72, baseType: !51)
!50 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !50, line: 16, baseType: !52)
!52 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !38, line: 52, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !50, line: 88, baseType: !56)
!56 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !27, file: !26, line: 152, baseType: !58, size: 64, offset: 320)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !26, line: 117, size: 256, elements: !60)
!60 = !{!61, !66}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !59, file: !26, line: 118, baseType: !62, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !38, line: 174, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 172, size: 32, elements: !64)
!64 = !{!65}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !63, file: !38, line: 173, baseType: !35, size: 32)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !59, file: !26, line: 119, baseType: !67, size: 192, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !68, line: 41, baseType: !69)
!68 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !68, line: 37, size: 192, elements: !70)
!70 = !{!71, !109}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !69, file: !68, line: 38, baseType: !72, size: 32)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !73, line: 29, baseType: !74)
!73 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !73, line: 17, size: 32, elements: !75)
!75 = !{!76}
!76 = !DIDerivedType(tag: DW_TAG_member, scope: !74, file: !73, line: 18, baseType: !77, size: 32)
!77 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !74, file: !73, line: 18, size: 32, elements: !78)
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !77, file: !73, line: 19, baseType: !80, size: 32)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !81, line: 14, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !80, file: !81, line: 15, baseType: !84, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !85, line: 44, baseType: !86)
!85 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !85, line: 14, size: 32, elements: !87)
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_member, scope: !86, file: !85, line: 15, baseType: !89, size: 32)
!89 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !86, file: !85, line: 15, size: 32, elements: !90)
!90 = !{!91, !92, !102}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !89, file: !85, line: 16, baseType: !62, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, scope: !89, file: !85, line: 24, baseType: !93, size: 16)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !89, file: !85, line: 24, size: 16, elements: !94)
!94 = !{!95, !101}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !93, file: !85, line: 25, baseType: !96, size: 8)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !97, line: 17, baseType: !98)
!97 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !99, line: 21, baseType: !100)
!99 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!100 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !93, file: !85, line: 26, baseType: !96, size: 8, offset: 8)
!102 = !DIDerivedType(tag: DW_TAG_member, scope: !89, file: !85, line: 28, baseType: !103, size: 32)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !89, file: !85, line: 28, size: 32, elements: !104)
!104 = !{!105, !108}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !103, file: !85, line: 29, baseType: !106, size: 16)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !97, line: 19, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !99, line: 24, baseType: !39)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !103, file: !85, line: 30, baseType: !106, size: 16, offset: 16)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !69, file: !68, line: 39, baseType: !110, size: 128, offset: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !38, line: 190, size: 128, elements: !111)
!111 = !{!112, !114}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !110, file: !38, line: 191, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !110, file: !38, line: 191, baseType: !113, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !27, file: !26, line: 153, baseType: !33, size: 64, offset: 384)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !27, file: !26, line: 154, baseType: !33, size: 64, offset: 448)
!117 = !{!118, !119}
!118 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!119 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !121, line: 312, baseType: !13, size: 32, elements: !122)
!121 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!122 = !{!123, !124, !125, !126}
!123 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!124 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!125 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!126 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !128, line: 68, baseType: !13, size: 32, elements: !129)
!128 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!129 = !{!130, !131, !132, !133, !134}
!130 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!131 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!132 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!133 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!134 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !136, line: 1325, baseType: !13, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150}
!138 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!139 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!140 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!141 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!142 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!143 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!144 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!145 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!146 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!147 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!148 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!149 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!150 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !152, line: 32, baseType: !13, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!153 = !{!154, !155}
!154 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!155 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !157, line: 15, baseType: !13, size: 32, elements: !158)
!157 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!158 = !{!159, !160, !161, !162}
!159 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!160 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!161 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!162 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !164, line: 26, baseType: !13, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!165 = !{!166, !167, !168}
!166 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!167 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!168 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !170, line: 2052, baseType: !13, size: 32, elements: !171)
!170 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!171 = !{!172, !173}
!172 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!173 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !175, line: 54, baseType: !13, size: 32, elements: !176)
!175 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!176 = !{!177, !178, !179}
!177 = !DIEnumerator(name: "USRQUOTA", value: 0)
!178 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!179 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !181, line: 45, baseType: !13, size: 32, elements: !182)
!181 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!182 = !{!183, !184, !185}
!183 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!184 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!185 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !187, line: 487, baseType: !13, size: 32, elements: !188)
!187 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!188 = !{!189, !190, !191, !192}
!189 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!190 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!191 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!192 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !194, line: 620, baseType: !13, size: 32, elements: !195)
!194 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!195 = !{!196, !197, !198, !199, !200}
!196 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!197 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!198 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!199 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!200 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !194, line: 597, baseType: !35, size: 32, elements: !202)
!202 = !{!203, !204, !205, !206, !207}
!203 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!204 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!205 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!206 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!207 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!208 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !187, line: 547, baseType: !13, size: 32, elements: !209)
!209 = !{!210, !211, !212, !213, !214, !215, !216}
!210 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!211 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!212 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!213 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!214 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!215 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!216 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !187, line: 564, baseType: !13, size: 32, elements: !218)
!218 = !{!219, !220, !221}
!219 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!220 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!221 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !187, line: 577, baseType: !13, size: 32, elements: !223)
!223 = !{!224, !225, !226}
!224 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!225 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!226 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!227 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !187, line: 503, baseType: !13, size: 32, elements: !228)
!228 = !{!229, !230, !231, !232}
!229 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!230 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!231 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!232 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !234, line: 44, baseType: !13, size: 32, elements: !235)
!234 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243, !244}
!236 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!237 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!238 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!239 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!240 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!241 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!242 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!243 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!244 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!245 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !246, line: 16, baseType: !13, size: 32, elements: !247)
!246 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!247 = !{!248, !249, !250}
!248 = !DIEnumerator(name: "TT_NONE", value: 0)
!249 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!250 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!251 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !252, line: 51, baseType: !13, size: 32, elements: !253)
!252 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!253 = !{!254, !255, !256, !257}
!254 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!255 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!256 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!257 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!258 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "task_work_notify_mode", file: !259, line: 16, baseType: !13, size: 32, elements: !260)
!259 = !DIFile(filename: "./include/linux/task_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ebc04ad3d34f218a70d101adf88369f")
!260 = !{!261, !262, !263, !264, !265, !266, !267}
!261 = !DIEnumerator(name: "TWA_NONE", value: 0)
!262 = !DIEnumerator(name: "TWA_RESUME", value: 1)
!263 = !DIEnumerator(name: "TWA_SIGNAL", value: 2)
!264 = !DIEnumerator(name: "TWA_SIGNAL_NO_IPI", value: 3)
!265 = !DIEnumerator(name: "TWA_NMI_CURRENT", value: 4)
!266 = !DIEnumerator(name: "TWA_FLAGS", value: 65280)
!267 = !DIEnumerator(name: "TWAF_NO_ALLOC", value: 256)
!268 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !269, line: 10, baseType: !13, size: 32, elements: !270)
!269 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!270 = !{!271, !272}
!271 = !DIEnumerator(name: "false", value: 0)
!272 = !DIEnumerator(name: "true", value: 1)
!273 = !{!274, !285, !286, !291, !33, !5102, !321, !52, !2558}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !38, line: 232, size: 128, align: 64, elements: !279)
!279 = !{!280, !281}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !278, file: !38, line: 233, baseType: !277, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !278, file: !38, line: 234, baseType: !282, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !277}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !97, line: 23, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !99, line: 31, baseType: !290)
!290 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !293, line: 17, size: 256, elements: !294)
!293 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!294 = !{!295, !312, !316}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !292, file: !293, line: 18, baseType: !296, size: 128)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !297, line: 58, size: 128, elements: !298)
!297 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!298 = !{!299, !305, !310, !311}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !296, file: !297, line: 59, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !301, line: 60, size: 64, elements: !302)
!301 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !300, file: !301, line: 61, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, scope: !296, file: !297, line: 60, baseType: !306, size: 32, offset: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !296, file: !297, line: 60, size: 32, elements: !307)
!307 = !{!308, !309}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !306, file: !297, line: 61, baseType: !13, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !306, file: !297, line: 62, baseType: !62, size: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !296, file: !297, line: 65, baseType: !106, size: 16, offset: 96)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !296, file: !297, line: 65, baseType: !106, size: 16, offset: 112)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !292, file: !293, line: 19, baseType: !313, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !291}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !292, file: !293, line: 20, baseType: !317, size: 64, offset: 192)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !318, line: 16, size: 64, elements: !319)
!318 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!319 = !{!320}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !317, file: !318, line: 17, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !323, line: 746, size: 58368, elements: !324)
!323 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!324 = !{!325, !335, !336, !337, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !410, !421, !522, !526, !529, !560, !561, !562, !563, !574, !576, !577, !578, !579, !580, !581, !592, !593, !596, !597, !598, !599, !600, !601, !602, !603, !610, !611, !618, !619, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3949, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3997, !4003, !4004, !4005, !4006, !4007, !4009, !4012, !4019, !4024, !4027, !4030, !4033, !4325, !4523, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4561, !4562, !4563, !4572, !4580, !4581, !4582, !4583, !4584, !4589, !4590, !4591, !4594, !4595, !4598, !4601, !4604, !4611, !4614, !4615, !4701, !4702, !4703, !4704, !4705, !4711, !4712, !4713, !4714, !4715, !4716, !4719, !4722, !4723, !4726, !4727, !4728, !4731, !4732, !4733, !4734, !4735, !4736, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4768, !4769, !4775, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4857, !4859, !4860, !4861, !4862, !4863, !4864, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4881, !4882, !4883}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !322, file: !323, line: 752, baseType: !326, size: 192)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !327, line: 56, size: 192, elements: !328)
!327 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!328 = !{!329, !330, !331, !334}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !326, file: !327, line: 57, baseType: !52, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !326, file: !327, line: 58, baseType: !52, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !326, file: !327, line: 59, baseType: !332, size: 32, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !97, line: 21, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !99, line: 27, baseType: !13)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !326, file: !327, line: 61, baseType: !332, size: 32, offset: 160)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !322, file: !323, line: 754, baseType: !13, size: 32, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !322, file: !323, line: 767, baseType: !33, size: 64, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !322, file: !323, line: 768, baseType: !338, size: 32, offset: 320)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !339, line: 113, baseType: !340)
!339 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !339, line: 111, size: 32, elements: !341)
!341 = !{!342}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !340, file: !339, line: 112, baseType: !62, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !322, file: !323, line: 770, baseType: !13, size: 32, offset: 352)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !322, file: !323, line: 771, baseType: !13, size: 32, offset: 384)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !322, file: !323, line: 774, baseType: !35, size: 32, offset: 416)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !322, file: !323, line: 775, baseType: !296, size: 128, offset: 448)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !322, file: !323, line: 776, baseType: !13, size: 32, offset: 576)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !322, file: !323, line: 777, baseType: !52, size: 64, offset: 640)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !322, file: !323, line: 778, baseType: !321, size: 64, offset: 704)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !322, file: !323, line: 787, baseType: !35, size: 32, offset: 768)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !322, file: !323, line: 788, baseType: !35, size: 32, offset: 800)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !322, file: !323, line: 790, baseType: !35, size: 32, offset: 832)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !322, file: !323, line: 792, baseType: !35, size: 32, offset: 864)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !322, file: !323, line: 793, baseType: !35, size: 32, offset: 896)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !322, file: !323, line: 794, baseType: !35, size: 32, offset: 928)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !322, file: !323, line: 795, baseType: !13, size: 32, offset: 960)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !322, file: !323, line: 797, baseType: !358, size: 2048, offset: 1024)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !323, line: 551, size: 2048, elements: !359)
!359 = !{!360, !365, !373, !374, !375, !376, !377, !378, !379, !380, !381, !384, !385, !386, !387, !389, !392, !393, !394}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !358, file: !323, line: 553, baseType: !361, size: 128)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !323, line: 411, size: 128, elements: !362)
!362 = !{!363, !364}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !361, file: !323, line: 412, baseType: !52, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !361, file: !323, line: 413, baseType: !332, size: 32, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !358, file: !323, line: 554, baseType: !366, size: 192, align: 64, offset: 128)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !367, line: 5, size: 192, align: 64, elements: !368)
!367 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!368 = !{!369, !370, !372}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !366, file: !367, line: 6, baseType: !52, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !366, file: !367, line: 7, baseType: !371, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !366, file: !367, line: 8, baseType: !371, size: 64, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !358, file: !323, line: 555, baseType: !288, size: 64, offset: 320)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !358, file: !323, line: 556, baseType: !288, size: 64, offset: 384)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !358, file: !323, line: 558, baseType: !110, size: 128, offset: 448)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !358, file: !323, line: 559, baseType: !13, size: 32, offset: 576)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !358, file: !323, line: 561, baseType: !288, size: 64, offset: 640)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !358, file: !323, line: 562, baseType: !288, size: 64, offset: 704)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !358, file: !323, line: 563, baseType: !288, size: 64, offset: 768)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !358, file: !323, line: 564, baseType: !288, size: 64, offset: 832)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !358, file: !323, line: 565, baseType: !382, size: 64, offset: 896)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !97, line: 22, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !99, line: 30, baseType: !56)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !358, file: !323, line: 566, baseType: !288, size: 64, offset: 960)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !358, file: !323, line: 568, baseType: !288, size: 64, offset: 1024)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !358, file: !323, line: 571, baseType: !35, size: 32, offset: 1088)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !358, file: !323, line: 572, baseType: !388, size: 64, offset: 1152)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !358, file: !323, line: 574, baseType: !390, size: 64, offset: 1216)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !323, line: 49, flags: DIFlagFwdDecl)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !358, file: !323, line: 576, baseType: !390, size: 64, offset: 1280)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !358, file: !323, line: 578, baseType: !52, size: 64, offset: 1344)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !358, file: !323, line: 588, baseType: !395, size: 512, align: 512, offset: 1536)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !323, line: 497, size: 512, align: 512, elements: !396)
!396 = !{!397, !398, !399, !400, !401, !402, !403, !404, !405}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !395, file: !323, line: 498, baseType: !288, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !395, file: !323, line: 499, baseType: !288, size: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !395, file: !323, line: 500, baseType: !288, size: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !395, file: !323, line: 501, baseType: !332, size: 32, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !395, file: !323, line: 502, baseType: !332, size: 32, offset: 224)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !395, file: !323, line: 503, baseType: !52, size: 64, offset: 256)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !395, file: !323, line: 504, baseType: !52, size: 64, offset: 320)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !395, file: !323, line: 505, baseType: !52, size: 64, offset: 384)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !395, file: !323, line: 506, baseType: !406, size: 64, align: 64, offset: 448)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !323, line: 445, size: 64, align: 64, elements: !407)
!407 = !{!408, !409}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !406, file: !323, line: 446, baseType: !13, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !406, file: !323, line: 447, baseType: !13, size: 32, offset: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !322, file: !323, line: 798, baseType: !411, size: 384, offset: 3072)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !323, line: 592, size: 384, elements: !412)
!412 = !{!413, !414, !415, !416, !417, !418, !419}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !411, file: !323, line: 593, baseType: !110, size: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !411, file: !323, line: 594, baseType: !52, size: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !411, file: !323, line: 595, baseType: !52, size: 64, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !411, file: !323, line: 596, baseType: !13, size: 32, offset: 256)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !411, file: !323, line: 597, baseType: !39, size: 16, offset: 288)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !411, file: !323, line: 598, baseType: !39, size: 16, offset: 304)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !411, file: !323, line: 600, baseType: !420, size: 64, offset: 320)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !322, file: !323, line: 799, baseType: !422, size: 1792, offset: 3456)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !323, line: 610, size: 1792, elements: !423)
!423 = !{!424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !519, !520}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !422, file: !323, line: 611, baseType: !366, size: 192, align: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !422, file: !323, line: 618, baseType: !288, size: 64, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !422, file: !323, line: 619, baseType: !288, size: 64, offset: 256)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !422, file: !323, line: 620, baseType: !288, size: 64, offset: 320)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !422, file: !323, line: 621, baseType: !288, size: 64, offset: 384)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !422, file: !323, line: 622, baseType: !288, size: 64, offset: 448)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !422, file: !323, line: 629, baseType: !382, size: 64, offset: 512)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !422, file: !323, line: 630, baseType: !288, size: 64, offset: 576)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !422, file: !323, line: 631, baseType: !13, size: 32, offset: 640)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !422, file: !323, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !422, file: !323, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !422, file: !323, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !422, file: !323, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !422, file: !323, line: 662, baseType: !438, size: 512, offset: 704)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !12, line: 118, size: 512, elements: !439)
!439 = !{!440, !448, !449, !454, !515, !516, !517, !518}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !438, file: !12, line: 119, baseType: !441, size: 256)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !442, line: 9, size: 256, elements: !443)
!442 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!443 = !{!444, !445}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !441, file: !442, line: 10, baseType: !366, size: 192, align: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !441, file: !442, line: 11, baseType: !446, size: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !447, line: 29, baseType: !382)
!447 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !438, file: !12, line: 120, baseType: !446, size: 64, offset: 256)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !438, file: !12, line: 121, baseType: !450, size: 64, offset: 320)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!11, !453}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !438, file: !12, line: 122, baseType: !455, size: 64, offset: 384)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !12, line: 159, size: 512, align: 512, elements: !457)
!457 = !{!458, !484, !485, !488, !498, !499, !510, !514}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !456, file: !12, line: 160, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !12, line: 215, size: 4608, align: 512, elements: !461)
!461 = !{!462, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !460, file: !12, line: 216, baseType: !463, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !81, line: 23, baseType: !80)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !460, file: !12, line: 217, baseType: !13, size: 32, offset: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !460, file: !12, line: 218, baseType: !13, size: 32, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !460, file: !12, line: 219, baseType: !13, size: 32, offset: 96)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !460, file: !12, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !460, file: !12, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !460, file: !12, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !460, file: !12, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !460, file: !12, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !460, file: !12, line: 226, baseType: !13, size: 32, offset: 160)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !460, file: !12, line: 227, baseType: !39, size: 16, offset: 192)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !460, file: !12, line: 228, baseType: !39, size: 16, offset: 208)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !460, file: !12, line: 229, baseType: !13, size: 32, offset: 224)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !460, file: !12, line: 235, baseType: !446, size: 64, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !460, file: !12, line: 236, baseType: !453, size: 64, offset: 320)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !460, file: !12, line: 237, baseType: !446, size: 64, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !460, file: !12, line: 238, baseType: !453, size: 64, offset: 448)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !460, file: !12, line: 239, baseType: !481, size: 4096, align: 512, offset: 512)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 4096, align: 512, elements: !482)
!482 = !{!483}
!483 = !DISubrange(count: 8)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !456, file: !12, line: 161, baseType: !13, size: 32, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !456, file: !12, line: 162, baseType: !486, size: 32, offset: 96)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !38, line: 32, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !50, line: 96, baseType: !35)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !456, file: !12, line: 163, baseType: !489, size: 32, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !490, line: 274, baseType: !491)
!490 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !490, line: 274, size: 32, elements: !492)
!492 = !{!493}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !491, file: !490, line: 274, baseType: !494, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !490, line: 69, baseType: !495)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !490, line: 64, size: 32, elements: !496)
!496 = !{!497}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !495, file: !490, line: 65, baseType: !13, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !456, file: !12, line: 164, baseType: !453, size: 64, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !456, file: !12, line: 165, baseType: !500, size: 128, offset: 256)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !442, line: 14, size: 128, elements: !501)
!501 = !{!502}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !500, file: !442, line: 15, baseType: !503, size: 128)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !367, line: 26, size: 128, elements: !504)
!504 = !{!505, !509}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !503, file: !367, line: 27, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !367, line: 12, size: 64, elements: !507)
!507 = !{!508}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !506, file: !367, line: 13, baseType: !371, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !503, file: !367, line: 28, baseType: !371, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !456, file: !12, line: 166, baseType: !511, size: 64, offset: 384)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!446}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !456, file: !12, line: 167, baseType: !446, size: 64, offset: 448)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !438, file: !12, line: 123, baseType: !96, size: 8, offset: 448)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !438, file: !12, line: 124, baseType: !96, size: 8, offset: 456)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !438, file: !12, line: 125, baseType: !96, size: 8, offset: 464)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !438, file: !12, line: 126, baseType: !96, size: 8, offset: 472)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !422, file: !323, line: 671, baseType: !438, size: 512, offset: 1216)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !422, file: !323, line: 679, baseType: !521, size: 64, offset: 1728)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !322, file: !323, line: 800, baseType: !523, size: 64, offset: 5248)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !525)
!525 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !323, line: 800, flags: DIFlagFwdDecl)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !322, file: !323, line: 809, baseType: !527, size: 64, offset: 5312)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !323, line: 70, flags: DIFlagFwdDecl)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !322, file: !323, line: 825, baseType: !530, size: 2048, align: 512, offset: 5632)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !323, line: 509, size: 2048, align: 512, elements: !531)
!531 = !{!532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !530, file: !323, line: 511, baseType: !288, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !530, file: !323, line: 512, baseType: !288, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !530, file: !323, line: 513, baseType: !288, size: 64, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !530, file: !323, line: 514, baseType: !288, size: 64, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !530, file: !323, line: 515, baseType: !288, size: 64, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !530, file: !323, line: 516, baseType: !288, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !530, file: !323, line: 518, baseType: !288, size: 64, offset: 384)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !530, file: !323, line: 519, baseType: !288, size: 64, offset: 448)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !530, file: !323, line: 520, baseType: !382, size: 64, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !530, file: !323, line: 522, baseType: !288, size: 64, offset: 576)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !530, file: !323, line: 523, baseType: !288, size: 64, offset: 640)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !530, file: !323, line: 524, baseType: !382, size: 64, offset: 704)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !530, file: !323, line: 526, baseType: !382, size: 64, offset: 768)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !530, file: !323, line: 527, baseType: !288, size: 64, offset: 832)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !530, file: !323, line: 529, baseType: !288, size: 64, offset: 896)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !530, file: !323, line: 530, baseType: !288, size: 64, offset: 960)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !530, file: !323, line: 531, baseType: !288, size: 64, offset: 1024)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !530, file: !323, line: 532, baseType: !288, size: 64, offset: 1088)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !530, file: !323, line: 533, baseType: !288, size: 64, offset: 1152)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !530, file: !323, line: 535, baseType: !288, size: 64, offset: 1216)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !530, file: !323, line: 536, baseType: !288, size: 64, offset: 1280)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !530, file: !323, line: 537, baseType: !288, size: 64, offset: 1344)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !530, file: !323, line: 538, baseType: !288, size: 64, offset: 1408)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !530, file: !323, line: 539, baseType: !288, size: 64, offset: 1472)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !530, file: !323, line: 540, baseType: !288, size: 64, offset: 1536)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !530, file: !323, line: 541, baseType: !288, size: 64, offset: 1600)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !530, file: !323, line: 542, baseType: !288, size: 64, offset: 1664)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !530, file: !323, line: 543, baseType: !288, size: 64, offset: 1728)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !322, file: !323, line: 833, baseType: !13, size: 32, offset: 7680)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !322, file: !323, line: 836, baseType: !13, size: 32, offset: 7712)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !322, file: !323, line: 837, baseType: !35, size: 32, offset: 7744)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !322, file: !323, line: 838, baseType: !564, size: 64, offset: 7808)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !567, line: 19, baseType: !568)
!567 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !567, line: 19, size: 64, elements: !569)
!569 = !{!570}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !568, file: !567, line: 19, baseType: !571, size: 64)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 64, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 1)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !322, file: !323, line: 839, baseType: !575, size: 64, offset: 7872)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !322, file: !323, line: 840, baseType: !566, size: 64, offset: 7936)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !322, file: !323, line: 841, baseType: !33, size: 64, offset: 8000)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !322, file: !323, line: 843, baseType: !39, size: 16, offset: 8064)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !322, file: !323, line: 845, baseType: !39, size: 16, offset: 8080)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !322, file: !323, line: 848, baseType: !35, size: 32, offset: 8096)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !322, file: !323, line: 849, baseType: !582, size: 32, offset: 8128)
!582 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !323, line: 718, size: 32, elements: !583)
!583 = !{!584, !591}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !582, file: !323, line: 724, baseType: !585, size: 32)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !582, file: !323, line: 719, size: 32, elements: !586)
!586 = !{!587, !588, !589, !590}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !585, file: !323, line: 720, baseType: !96, size: 8)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !585, file: !323, line: 721, baseType: !96, size: 8, offset: 8)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !585, file: !323, line: 722, baseType: !96, size: 8, offset: 16)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !585, file: !323, line: 723, baseType: !96, size: 8, offset: 24)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !582, file: !323, line: 725, baseType: !332, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !322, file: !323, line: 850, baseType: !110, size: 128, offset: 8192)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !322, file: !323, line: 851, baseType: !594, size: 64, offset: 8320)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !323, line: 60, flags: DIFlagFwdDecl)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !322, file: !323, line: 855, baseType: !52, size: 64, offset: 8384)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !322, file: !323, line: 856, baseType: !96, size: 8, offset: 8448)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !322, file: !323, line: 857, baseType: !96, size: 8, offset: 8456)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !322, file: !323, line: 858, baseType: !35, size: 32, offset: 8480)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !322, file: !323, line: 859, baseType: !110, size: 128, offset: 8512)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !322, file: !323, line: 860, baseType: !35, size: 32, offset: 8640)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !322, file: !323, line: 861, baseType: !110, size: 128, offset: 8704)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !322, file: !323, line: 873, baseType: !604, size: 256, offset: 8832)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !323, line: 376, size: 256, elements: !605)
!605 = !{!606, !607, !608, !609}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !604, file: !323, line: 381, baseType: !52, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !604, file: !323, line: 384, baseType: !290, size: 64, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !604, file: !323, line: 389, baseType: !290, size: 64, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !604, file: !323, line: 392, baseType: !290, size: 64, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !322, file: !323, line: 875, baseType: !110, size: 128, offset: 9088)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !322, file: !323, line: 877, baseType: !612, size: 320, offset: 9216)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !613, line: 86, size: 320, elements: !614)
!613 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!614 = !{!615, !616, !617}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !612, file: !613, line: 87, baseType: !35, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !612, file: !613, line: 88, baseType: !110, size: 128, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !612, file: !613, line: 89, baseType: !110, size: 128, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !322, file: !323, line: 878, baseType: !366, size: 192, align: 64, offset: 9536)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !322, file: !323, line: 881, baseType: !620, size: 64, offset: 9728)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !136, line: 733, size: 10240, elements: !622)
!622 = !{!623, !3868}
!623 = !DIDerivedType(tag: DW_TAG_member, scope: !621, file: !136, line: 734, baseType: !624, size: 10240)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !621, file: !136, line: 734, size: 10240, elements: !625)
!625 = !{!626, !630, !644, !3748, !3749, !3750, !3751, !3752, !3753, !3760, !3761, !3762, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3801, !3802, !3805, !3848, !3849, !3850, !3853, !3854, !3855, !3858, !3859, !3860, !3866, !3867}
!626 = !DIDerivedType(tag: DW_TAG_member, scope: !624, file: !136, line: 739, baseType: !627, size: 512, align: 512)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !624, file: !136, line: 739, size: 512, align: 512, elements: !628)
!628 = !{!629}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !627, file: !136, line: 747, baseType: !62, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !624, file: !136, line: 750, baseType: !631, size: 128, offset: 512)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !632, line: 218, size: 128, elements: !633)
!632 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!633 = !{!634, !642, !643}
!634 = !DIDerivedType(tag: DW_TAG_member, scope: !631, file: !632, line: 219, baseType: !635, size: 32)
!635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !631, file: !632, line: 219, size: 32, elements: !636)
!636 = !{!637, !638}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !635, file: !632, line: 220, baseType: !72, size: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !635, file: !632, line: 221, baseType: !639)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !632, line: 197, baseType: !640)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !632, line: 197, elements: !641)
!641 = !{}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !631, file: !632, line: 223, baseType: !13, size: 32, offset: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !631, file: !632, line: 224, baseType: !33, size: 64, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !624, file: !136, line: 752, baseType: !645, size: 64, offset: 640)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!52, !648, !52, !52, !52, !52}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !170, line: 994, size: 1856, align: 64, elements: !650)
!650 = !{!651, !657, !658, !660, !667, !679, !680, !681, !751, !1108, !1117, !3738, !3739, !3740, !3741, !3742, !3743, !3745, !3746, !3747}
!651 = !DIDerivedType(tag: DW_TAG_member, scope: !649, file: !170, line: 995, baseType: !652, size: 128)
!652 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !649, file: !170, line: 995, size: 128, elements: !653)
!653 = !{!654, !655, !656}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !652, file: !170, line: 996, baseType: !300, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !652, file: !170, line: 997, baseType: !278, size: 128, align: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !652, file: !170, line: 998, baseType: !13, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !649, file: !170, line: 1005, baseType: !72, size: 32, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !649, file: !170, line: 1006, baseType: !659, size: 32, offset: 160)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !38, line: 156, baseType: !13)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !649, file: !170, line: 1007, baseType: !661, size: 64, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !662, line: 13, baseType: !663)
!662 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !38, line: 181, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 179, size: 64, elements: !665)
!665 = !{!666}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !664, file: !38, line: 180, baseType: !382, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !649, file: !170, line: 1008, baseType: !668, size: 256, offset: 256)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !669, line: 66, size: 256, elements: !670)
!669 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!670 = !{!671, !672, !673, !678}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !668, file: !669, line: 67, baseType: !661, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !668, file: !669, line: 68, baseType: !463, size: 32, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !668, file: !669, line: 70, baseType: !674, size: 32, offset: 96)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !675, line: 15, size: 32, elements: !676)
!675 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!676 = !{!677}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !674, file: !675, line: 20, baseType: !62, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !668, file: !669, line: 72, baseType: !110, size: 128, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !649, file: !170, line: 1009, baseType: !54, size: 64, offset: 512)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !649, file: !170, line: 1010, baseType: !13, size: 32, offset: 576)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !649, file: !170, line: 1011, baseType: !682, size: 256, offset: 640)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !170, line: 948, size: 256, elements: !683)
!683 = !{!684, !707, !740, !741, !749, !750}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !682, file: !170, line: 949, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !686, line: 34, baseType: !687)
!686 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !686, line: 25, size: 64, elements: !688)
!688 = !{!689}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !687, file: !686, line: 26, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !691, line: 27, baseType: !692)
!691 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !691, line: 13, size: 64, elements: !693)
!693 = !{!694, !706}
!694 = !DIDerivedType(tag: DW_TAG_member, scope: !692, file: !691, line: 14, baseType: !695, size: 32)
!695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !692, file: !691, line: 14, size: 32, elements: !696)
!696 = !{!697, !698}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !695, file: !691, line: 15, baseType: !62, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !691, line: 16, baseType: !699, size: 32)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !691, line: 16, size: 32, elements: !700)
!700 = !{!701, !702}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !699, file: !691, line: 18, baseType: !96, size: 8)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !699, file: !691, line: 19, baseType: !703, size: 24, offset: 8)
!703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 24, elements: !704)
!704 = !{!705}
!705 = !DISubrange(count: 3)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !692, file: !691, line: 26, baseType: !84, size: 32, offset: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !682, file: !170, line: 950, baseType: !708, size: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !18, line: 59, size: 768, elements: !710)
!710 = !{!711, !712, !713, !714, !727, !728, !729, !730}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !709, file: !18, line: 61, baseType: !338, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !709, file: !18, line: 62, baseType: !13, size: 32, offset: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !709, file: !18, line: 63, baseType: !72, size: 32, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !709, file: !18, line: 65, baseType: !715, size: 256, offset: 128)
!715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !716, size: 256, elements: !725)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !38, line: 194, size: 64, elements: !717)
!717 = !{!718}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !716, file: !38, line: 195, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !38, line: 198, size: 128, elements: !721)
!721 = !{!722, !723}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !720, file: !38, line: 199, baseType: !719, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !720, file: !38, line: 199, baseType: !724, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!725 = !{!726}
!726 = !DISubrange(count: 4)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !709, file: !18, line: 66, baseType: !716, size: 64, offset: 384)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !709, file: !18, line: 68, baseType: !67, size: 192, offset: 448)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !709, file: !18, line: 69, baseType: !278, size: 128, align: 64, offset: 640)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !709, file: !18, line: 70, baseType: !731, offset: 768)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !732, elements: !738)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !18, line: 54, size: 128, elements: !733)
!733 = !{!734, !735}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !732, file: !18, line: 55, baseType: !35, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !732, file: !18, line: 56, baseType: !736, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !18, line: 56, flags: DIFlagFwdDecl)
!738 = !{!739}
!739 = !DISubrange(count: -1)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !682, file: !170, line: 951, baseType: !17, size: 32, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !682, file: !170, line: 952, baseType: !742, size: 32, offset: 160)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !743, line: 23, baseType: !744)
!743 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !743, line: 21, size: 32, elements: !745)
!745 = !{!746}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !744, file: !743, line: 22, baseType: !747, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !38, line: 37, baseType: !748)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !50, line: 49, baseType: !13)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !682, file: !170, line: 952, baseType: !742, size: 32, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !682, file: !170, line: 953, baseType: !35, size: 32, offset: 224)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !649, file: !170, line: 1012, baseType: !752, size: 64, offset: 896)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !754)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !755, line: 110, size: 1472, elements: !756)
!755 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!756 = !{!757, !758, !759, !766, !767, !768, !769, !770, !771, !772, !773, !779, !780, !781, !782, !783, !784, !908, !909, !910, !911, !912, !943, !1094, !1095, !1103}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !754, file: !755, line: 111, baseType: !661, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !754, file: !755, line: 112, baseType: !742, size: 32, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !754, file: !755, line: 113, baseType: !760, size: 32, offset: 96)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !743, line: 28, baseType: !761)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !743, line: 26, size: 32, elements: !762)
!762 = !{!763}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !761, file: !743, line: 27, baseType: !764, size: 32)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !38, line: 38, baseType: !765)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !50, line: 50, baseType: !13)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !754, file: !755, line: 114, baseType: !742, size: 32, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !754, file: !755, line: 115, baseType: !760, size: 32, offset: 160)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !754, file: !755, line: 116, baseType: !742, size: 32, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !754, file: !755, line: 117, baseType: !760, size: 32, offset: 224)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !754, file: !755, line: 118, baseType: !742, size: 32, offset: 256)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !754, file: !755, line: 119, baseType: !760, size: 32, offset: 288)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !754, file: !755, line: 120, baseType: !13, size: 32, offset: 320)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !754, file: !755, line: 121, baseType: !774, size: 64, offset: 384)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !775, line: 24, baseType: !776)
!775 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !775, line: 24, size: 64, elements: !777)
!777 = !{!778}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !776, file: !775, line: 24, baseType: !288, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !754, file: !755, line: 122, baseType: !774, size: 64, offset: 448)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !754, file: !755, line: 123, baseType: !774, size: 64, offset: 512)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !754, file: !755, line: 124, baseType: !774, size: 64, offset: 576)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !754, file: !755, line: 125, baseType: !774, size: 64, offset: 640)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !754, file: !755, line: 127, baseType: !100, size: 8, offset: 704)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !754, file: !755, line: 129, baseType: !785, size: 64, offset: 768)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !787, line: 195, size: 1728, elements: !788)
!787 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!788 = !{!789, !790, !795, !800, !809, !812, !813, !820, !821, !822, !823, !826, !827, !828, !830, !831, !872, !893}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !786, file: !787, line: 196, baseType: !338, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !786, file: !787, line: 197, baseType: !791, size: 32, offset: 32)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !787, line: 28, baseType: !792)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !38, line: 104, baseType: !793)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !97, line: 20, baseType: !794)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !99, line: 26, baseType: !35)
!795 = !DIDerivedType(tag: DW_TAG_member, scope: !786, file: !787, line: 198, baseType: !796, size: 192, offset: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !786, file: !787, line: 198, size: 192, elements: !797)
!797 = !{!798, !799}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !796, file: !787, line: 199, baseType: !110, size: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !796, file: !787, line: 200, baseType: !366, size: 192, align: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !786, file: !787, line: 205, baseType: !801, size: 320, offset: 256)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !802, line: 48, size: 320, elements: !803)
!802 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!803 = !{!804, !805, !806, !807, !808}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !801, file: !802, line: 49, baseType: !661, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !801, file: !802, line: 55, baseType: !661, size: 64, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !801, file: !802, line: 57, baseType: !674, size: 32, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !801, file: !802, line: 59, baseType: !463, size: 32, offset: 160)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !801, file: !802, line: 60, baseType: !110, size: 128, offset: 192)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !786, file: !787, line: 206, baseType: !810, size: 64, offset: 576)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !787, line: 206, flags: DIFlagFwdDecl)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !786, file: !787, line: 207, baseType: !33, size: 64, offset: 640)
!813 = !DIDerivedType(tag: DW_TAG_member, scope: !786, file: !787, line: 208, baseType: !814, size: 64, offset: 704)
!814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !786, file: !787, line: 208, size: 64, elements: !815)
!815 = !{!816, !819}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !814, file: !787, line: 209, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !818, line: 8, baseType: !383)
!818 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!819 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !814, file: !787, line: 210, baseType: !817, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !786, file: !787, line: 212, baseType: !817, size: 64, offset: 768)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !786, file: !787, line: 213, baseType: !742, size: 32, offset: 832)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !786, file: !787, line: 214, baseType: !760, size: 32, offset: 864)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !786, file: !787, line: 215, baseType: !824, size: 32, offset: 896)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !787, line: 31, baseType: !825)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !38, line: 110, baseType: !332)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !786, file: !787, line: 216, baseType: !39, size: 16, offset: 928)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !786, file: !787, line: 217, baseType: !39, size: 16, offset: 944)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !786, file: !787, line: 221, baseType: !829, size: 16, offset: 960)
!829 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !786, file: !787, line: 228, baseType: !52, size: 64, offset: 1024)
!831 = !DIDerivedType(tag: DW_TAG_member, scope: !786, file: !787, line: 245, baseType: !832, size: 320, offset: 1088)
!832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !786, file: !787, line: 245, size: 320, elements: !833)
!833 = !{!834, !863}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !832, file: !787, line: 246, baseType: !835, size: 320)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !787, line: 114, size: 320, elements: !836)
!836 = !{!837, !838, !850, !853, !862}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !835, file: !787, line: 116, baseType: !52, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, scope: !835, file: !787, line: 117, baseType: !839, size: 64, offset: 64)
!839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !835, file: !787, line: 117, size: 64, elements: !840)
!840 = !{!841, !849}
!841 = !DIDerivedType(tag: DW_TAG_member, scope: !839, file: !787, line: 118, baseType: !842, size: 64)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !839, file: !787, line: 118, size: 64, elements: !843)
!843 = !{!844, !845}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !842, file: !787, line: 120, baseType: !106, size: 16)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !842, file: !787, line: 121, baseType: !846, size: 48, offset: 16)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !847)
!847 = !{!848}
!848 = !DISubrange(count: 6)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !839, file: !787, line: 127, baseType: !52, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !835, file: !787, line: 129, baseType: !851, size: 64, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !787, line: 102, flags: DIFlagFwdDecl)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !835, file: !787, line: 130, baseType: !854, size: 64, offset: 192)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !787, line: 108, size: 192, elements: !856)
!856 = !{!857, !858, !859}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !855, file: !787, line: 109, baseType: !278, size: 128, align: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !855, file: !787, line: 110, baseType: !338, size: 32, offset: 128)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !855, file: !787, line: 111, baseType: !860, size: 8, offset: 160)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !38, line: 35, baseType: !861)
!861 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !835, file: !787, line: 131, baseType: !30, size: 64, offset: 256)
!863 = !DIDerivedType(tag: DW_TAG_member, scope: !832, file: !787, line: 247, baseType: !864, size: 320)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !832, file: !787, line: 247, size: 320, elements: !865)
!865 = !{!866, !867, !868, !869, !870}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !864, file: !787, line: 248, baseType: !52, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !864, file: !787, line: 249, baseType: !52, size: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !864, file: !787, line: 250, baseType: !851, size: 64, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !864, file: !787, line: 251, baseType: !854, size: 64, offset: 192)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !864, file: !787, line: 252, baseType: !871, size: 64, offset: 256)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, scope: !786, file: !787, line: 260, baseType: !873, size: 256, offset: 1408)
!873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !786, file: !787, line: 260, size: 256, elements: !874)
!874 = !{!875, !881}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !873, file: !787, line: 261, baseType: !876, size: 256)
!876 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !787, line: 134, size: 256, elements: !877)
!877 = !{!878, !879}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !876, file: !787, line: 135, baseType: !33, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !876, file: !787, line: 136, baseType: !880, size: 256)
!880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 256, elements: !725)
!881 = !DIDerivedType(tag: DW_TAG_member, scope: !873, file: !787, line: 262, baseType: !882, size: 256)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !873, file: !787, line: 262, size: 256, elements: !883)
!883 = !{!884, !885}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !882, file: !787, line: 264, baseType: !110, size: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !882, file: !787, line: 265, baseType: !886, size: 128, offset: 128)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !887, line: 22, size: 128, elements: !888)
!887 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!888 = !{!889, !892}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !886, file: !887, line: 23, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !887, line: 23, flags: DIFlagFwdDecl)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !886, file: !887, line: 24, baseType: !52, size: 64, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !786, file: !787, line: 280, baseType: !894, size: 64, offset: 1664)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !787, line: 176, size: 192, elements: !896)
!896 = !{!897, !906, !907}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !895, file: !787, line: 177, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !787, line: 171, baseType: !899)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!35, !785, !902, !904, !785}
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !852)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !876)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !895, file: !787, line: 178, baseType: !785, size: 64, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !895, file: !787, line: 179, baseType: !851, size: 64, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !754, file: !755, line: 130, baseType: !785, size: 64, offset: 832)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !754, file: !755, line: 131, baseType: !785, size: 64, offset: 896)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !754, file: !755, line: 132, baseType: !785, size: 64, offset: 960)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !754, file: !755, line: 135, baseType: !33, size: 64, offset: 1024)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !754, file: !755, line: 137, baseType: !913, size: 64, offset: 1088)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !915, line: 14, size: 1088, elements: !916)
!915 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!916 = !{!917, !918, !927, !928, !929, !930, !931, !932}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !914, file: !915, line: 15, baseType: !338, size: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !914, file: !915, line: 17, baseType: !919, size: 320, offset: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !920, line: 22, size: 320, elements: !921)
!920 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!921 = !{!922, !923, !924, !925}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !919, file: !920, line: 23, baseType: !463, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !919, file: !920, line: 24, baseType: !382, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !919, file: !920, line: 26, baseType: !110, size: 128, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !919, file: !920, line: 28, baseType: !926, size: 64, offset: 256)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !914, file: !915, line: 19, baseType: !52, size: 64, offset: 384)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !914, file: !915, line: 20, baseType: !661, size: 64, offset: 448)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !914, file: !915, line: 23, baseType: !720, size: 128, offset: 512)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !914, file: !915, line: 24, baseType: !742, size: 32, offset: 640)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !914, file: !915, line: 29, baseType: !661, size: 64, offset: 704)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !914, file: !915, line: 36, baseType: !933, size: 320, offset: 768)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !934, line: 15, size: 320, elements: !935)
!934 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!935 = !{!936, !937, !938, !939, !940, !941, !942}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !933, file: !934, line: 16, baseType: !463, size: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !933, file: !934, line: 18, baseType: !35, size: 32, offset: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !933, file: !934, line: 19, baseType: !35, size: 32, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !933, file: !934, line: 20, baseType: !35, size: 32, offset: 96)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !933, file: !934, line: 21, baseType: !35, size: 32, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !933, file: !934, line: 22, baseType: !52, size: 64, offset: 192)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !933, file: !934, line: 23, baseType: !52, size: 64, offset: 256)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !754, file: !755, line: 138, baseType: !944, size: 64, offset: 1152)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !946, line: 68, size: 4800, elements: !947)
!946 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!947 = !{!948, !970, !971, !972, !973, !974, !975, !976, !987, !988, !989, !990, !991, !992, !1004, !1074, !1075, !1089, !1092}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !945, file: !946, line: 69, baseType: !949, size: 576)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !946, line: 23, size: 576, elements: !950)
!950 = !{!951, !952}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !949, file: !946, line: 24, baseType: !332, size: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, scope: !949, file: !946, line: 25, baseType: !953, size: 512, offset: 64)
!953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !949, file: !946, line: 25, size: 512, elements: !954)
!954 = !{!955, !964}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !953, file: !946, line: 26, baseType: !956, size: 480)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !957, size: 480, elements: !962)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !946, line: 17, size: 96, elements: !958)
!958 = !{!959, !960, !961}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !957, file: !946, line: 18, baseType: !332, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !957, file: !946, line: 19, baseType: !332, size: 32, offset: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !957, file: !946, line: 20, baseType: !332, size: 32, offset: 64)
!962 = !{!963}
!963 = !DISubrange(count: 5)
!964 = !DIDerivedType(tag: DW_TAG_member, scope: !953, file: !946, line: 27, baseType: !965, size: 128)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !953, file: !946, line: 27, size: 128, elements: !966)
!966 = !{!967, !969}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !965, file: !946, line: 28, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !965, file: !946, line: 29, baseType: !968, size: 64, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !945, file: !946, line: 70, baseType: !949, size: 576, offset: 576)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !945, file: !946, line: 71, baseType: !949, size: 576, offset: 1152)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !945, file: !946, line: 72, baseType: !944, size: 64, offset: 1728)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !945, file: !946, line: 73, baseType: !35, size: 32, offset: 1792)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !945, file: !946, line: 74, baseType: !742, size: 32, offset: 1824)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !945, file: !946, line: 75, baseType: !760, size: 32, offset: 1856)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !945, file: !946, line: 76, baseType: !977, size: 192, offset: 1920)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !978, line: 9, size: 192, elements: !979)
!978 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!979 = !{!980, !981, !985, !986}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !977, file: !978, line: 10, baseType: !661, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !977, file: !978, line: 11, baseType: !982, size: 64, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !984)
!984 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !978, line: 7, flags: DIFlagFwdDecl)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !977, file: !978, line: 12, baseType: !13, size: 32, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !977, file: !978, line: 13, baseType: !338, size: 32, offset: 160)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !945, file: !946, line: 77, baseType: !52, size: 64, offset: 2112)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !945, file: !946, line: 80, baseType: !860, size: 8, offset: 2176)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !945, file: !946, line: 88, baseType: !110, size: 128, offset: 2240)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !945, file: !946, line: 89, baseType: !785, size: 64, offset: 2368)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !945, file: !946, line: 90, baseType: !801, size: 320, offset: 2432)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !945, file: !946, line: 97, baseType: !993, size: 256, offset: 2752)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !994, line: 98, size: 256, elements: !995)
!994 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!995 = !{!996, !997, !998}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !993, file: !994, line: 99, baseType: !661, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !993, file: !994, line: 100, baseType: !110, size: 128, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !993, file: !994, line: 101, baseType: !999, size: 64, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !994, line: 21, baseType: !1000)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{null, !1003}
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !945, file: !946, line: 99, baseType: !1005, size: 768, offset: 3008)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !26, line: 199, size: 768, elements: !1006)
!1006 = !{!1007, !1012}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1005, file: !26, line: 200, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!35, !1011}
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1005, file: !26, line: 201, baseType: !1013, size: 704, offset: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !26, line: 193, size: 704, elements: !1014)
!1014 = !{!1015, !1073}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1013, file: !26, line: 195, baseType: !1016, size: 640)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !26, line: 173, size: 640, elements: !1017)
!1017 = !{!1018, !1030, !1042, !1043, !1063, !1064, !1066, !1072}
!1018 = !DIDerivedType(tag: DW_TAG_member, scope: !1016, file: !26, line: 174, baseType: !1019, size: 192)
!1019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1016, file: !26, line: 174, size: 192, elements: !1020)
!1020 = !{!1021, !1029}
!1021 = !DIDerivedType(tag: DW_TAG_member, scope: !1019, file: !26, line: 175, baseType: !1022, size: 192)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1019, file: !26, line: 175, size: 192, elements: !1023)
!1023 = !{!1024, !1025, !1026, !1027, !1028}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1022, file: !26, line: 176, baseType: !46, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1022, file: !26, line: 177, baseType: !35, size: 32, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1022, file: !26, line: 178, baseType: !35, size: 32, offset: 96)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1022, file: !26, line: 179, baseType: !35, size: 32, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1022, file: !26, line: 180, baseType: !35, size: 32, offset: 160)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1019, file: !26, line: 182, baseType: !278, size: 128, align: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1016, file: !26, line: 184, baseType: !1031, size: 64, offset: 192)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1033, line: 26, size: 256, elements: !1034)
!1033 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1034 = !{!1035, !1036}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1032, file: !1033, line: 27, baseType: !13, size: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1032, file: !1033, line: 28, baseType: !1037, size: 192, offset: 64)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1038, line: 43, size: 192, elements: !1039)
!1038 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1039 = !{!1040, !1041}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1037, file: !1038, line: 44, baseType: !463, size: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1037, file: !1038, line: 45, baseType: !110, size: 128, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1016, file: !26, line: 185, baseType: !46, size: 64, offset: 256)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1016, file: !26, line: 186, baseType: !1044, size: 64, offset: 320)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !26, line: 204, size: 960, elements: !1046)
!1046 = !{!1047, !1048, !1052, !1059}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1045, file: !26, line: 205, baseType: !1005, size: 768)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1045, file: !26, line: 206, baseType: !1049, size: 64, offset: 768)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!1011, !1044}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1045, file: !26, line: 207, baseType: !1053, size: 64, offset: 832)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{null, !1056, !1057, !1058}
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1045, file: !26, line: 209, baseType: !1060, size: 64, offset: 896)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!35, !1056, !46}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1016, file: !26, line: 187, baseType: !1011, size: 64, offset: 384)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1016, file: !26, line: 188, baseType: !1065, size: 64, offset: 448)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1016, file: !26, line: 189, baseType: !1067, size: 64, offset: 512)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !26, line: 157, size: 256, elements: !1069)
!1069 = !{!1070, !1071}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1068, file: !26, line: 158, baseType: !366, size: 192, align: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1068, file: !26, line: 159, baseType: !1056, size: 64, offset: 192)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1016, file: !26, line: 190, baseType: !716, size: 64, offset: 576)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1013, file: !26, line: 196, baseType: !506, size: 64, offset: 640)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !945, file: !946, line: 100, baseType: !1056, size: 64, offset: 3776)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !945, file: !946, line: 102, baseType: !1076, size: 64, offset: 3840)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !946, line: 107, size: 1152, elements: !1078)
!1078 = !{!1079, !1080, !1081, !1082, !1083, !1087}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1077, file: !946, line: 108, baseType: !720, size: 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1077, file: !946, line: 109, baseType: !944, size: 64, offset: 128)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1077, file: !946, line: 110, baseType: !742, size: 32, offset: 192)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1077, file: !946, line: 111, baseType: !62, size: 32, offset: 224)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1077, file: !946, line: 112, baseType: !1084, size: 640, offset: 256)
!1084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !661, size: 640, elements: !1085)
!1085 = !{!1086}
!1086 = !DISubrange(count: 10)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1077, file: !946, line: 113, baseType: !1088, size: 256, offset: 896)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !661, size: 256, elements: !725)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !945, file: !946, line: 103, baseType: !1090, size: 640, offset: 3904)
!1090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1091, size: 640, elements: !1085)
!1091 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !945, file: !946, line: 104, baseType: !1093, size: 256, offset: 4544)
!1093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1091, size: 256, elements: !725)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !754, file: !755, line: 139, baseType: !1076, size: 64, offset: 1216)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !754, file: !755, line: 140, baseType: !1096, size: 64, offset: 1280)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !755, line: 25, size: 64, elements: !1098)
!1098 = !{!1099, !1100, !1101}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1097, file: !755, line: 26, baseType: !62, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1097, file: !755, line: 27, baseType: !35, size: 32, offset: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1097, file: !755, line: 28, baseType: !1102, offset: 64)
!1102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !760, elements: !738)
!1103 = !DIDerivedType(tag: DW_TAG_member, scope: !754, file: !755, line: 142, baseType: !1104, size: 128, offset: 1344)
!1104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !754, file: !755, line: 142, size: 128, elements: !1105)
!1105 = !{!1106, !1107}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1104, file: !755, line: 143, baseType: !35, size: 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1104, file: !755, line: 144, baseType: !278, size: 128, align: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !649, file: !170, line: 1013, baseType: !1109, size: 256, offset: 960)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !170, line: 970, size: 256, elements: !1110)
!1110 = !{!1111, !1112, !1113, !1114, !1115, !1116}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1109, file: !170, line: 971, baseType: !52, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1109, file: !170, line: 972, baseType: !13, size: 32, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1109, file: !170, line: 973, baseType: !13, size: 32, offset: 96)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1109, file: !170, line: 974, baseType: !13, size: 32, offset: 128)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1109, file: !170, line: 975, baseType: !13, size: 32, offset: 160)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1109, file: !170, line: 976, baseType: !54, size: 64, offset: 192)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !649, file: !170, line: 1014, baseType: !1118, size: 128, offset: 1216)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1119, line: 8, size: 128, elements: !1120)
!1119 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1120 = !{!1121, !3737}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1118, file: !1119, line: 9, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1124, line: 70, size: 256, elements: !1125)
!1124 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1125 = !{!1126, !3734, !3735, !3736}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1123, file: !1124, line: 71, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1129, line: 82, size: 1536, elements: !1130)
!1129 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1130 = !{!1131, !1132, !1137, !1145, !1146, !1161, !3701, !3703, !3716, !3717, !3718, !3719, !3720, !3726, !3727, !3728}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1128, file: !1129, line: 84, baseType: !13, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1128, file: !1129, line: 85, baseType: !1133, size: 32, offset: 32)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !490, line: 275, baseType: !1134)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !490, line: 275, size: 32, elements: !1135)
!1135 = !{!1136}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1134, file: !490, line: 275, baseType: !494, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1128, file: !1129, line: 86, baseType: !1138, size: 128, offset: 64)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1139, line: 38, size: 128, elements: !1140)
!1139 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1140 = !{!1141, !1143}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1138, file: !1139, line: 39, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1138, file: !1139, line: 39, baseType: !1144, size: 64, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1128, file: !1129, line: 87, baseType: !1127, size: 64, offset: 192)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1128, file: !1129, line: 88, baseType: !1147, size: 128, offset: 256)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1129, line: 49, size: 128, elements: !1148)
!1148 = !{!1149, !1158}
!1149 = !DIDerivedType(tag: DW_TAG_member, scope: !1147, file: !1129, line: 50, baseType: !1150, size: 64)
!1150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1147, file: !1129, line: 50, size: 64, elements: !1151)
!1151 = !{!1152, !1157}
!1152 = !DIDerivedType(tag: DW_TAG_member, scope: !1150, file: !1129, line: 51, baseType: !1153, size: 64)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1150, file: !1129, line: 51, size: 64, elements: !1154)
!1154 = !{!1155, !1156}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1153, file: !1129, line: 52, baseType: !332, size: 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1153, file: !1129, line: 52, baseType: !332, size: 32, offset: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1150, file: !1129, line: 54, baseType: !288, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1147, file: !1129, line: 56, baseType: !1159, size: 64, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1128, file: !1129, line: 89, baseType: !1162, size: 64, offset: 384)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !170, line: 641, size: 4800, elements: !1164)
!1164 = !{!1165, !1166, !1167, !1168, !1169, !1170, !1171, !1174, !1175, !1369, !3515, !3516, !3517, !3518, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3683, !3686, !3687, !3688, !3697, !3698, !3699, !3700}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1163, file: !170, line: 642, baseType: !37, size: 16)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1163, file: !170, line: 643, baseType: !39, size: 16, offset: 16)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1163, file: !170, line: 644, baseType: !742, size: 32, offset: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1163, file: !170, line: 645, baseType: !110, size: 128, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1163, file: !170, line: 646, baseType: !760, size: 32, offset: 192)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1163, file: !170, line: 647, baseType: !13, size: 32, offset: 224)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1163, file: !170, line: 650, baseType: !1172, size: 64, offset: 256)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !170, line: 607, flags: DIFlagFwdDecl)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1163, file: !170, line: 651, baseType: !1172, size: 64, offset: 320)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1163, file: !170, line: 654, baseType: !1176, size: 64, offset: 384)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1178)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !170, line: 1966, size: 2048, align: 512, elements: !1179)
!1179 = !{!1180, !1184, !1197, !1203, !1207, !1211, !1215, !1219, !1223, !1227, !1231, !1232, !1238, !1242, !1279, !1310, !1317, !1323, !1327, !1331, !1335, !1339, !1343, !1349, !1353}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1178, file: !170, line: 1967, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!1127, !1162, !1127, !13}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1178, file: !170, line: 1968, baseType: !1185, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!30, !1127, !1162, !1188}
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1190, line: 10, size: 128, elements: !1191)
!1190 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1191 = !{!1192, !1196}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1189, file: !1190, line: 11, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{null, !33}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1189, file: !1190, line: 12, baseType: !33, size: 64, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1178, file: !170, line: 1969, baseType: !1198, size: 64, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!35, !1201, !1162, !35}
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !775, line: 42, flags: DIFlagFwdDecl)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1178, file: !170, line: 1970, baseType: !1204, size: 64, offset: 192)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!1172, !1162, !35, !860}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1178, file: !170, line: 1972, baseType: !1208, size: 64, offset: 256)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!35, !1127, !871, !35}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1178, file: !170, line: 1974, baseType: !1212, size: 64, offset: 320)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!35, !1201, !1162, !1127, !37, !860}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1178, file: !170, line: 1976, baseType: !1216, size: 64, offset: 384)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!35, !1127, !1162, !1127}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1178, file: !170, line: 1977, baseType: !1220, size: 64, offset: 448)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!35, !1162, !1127}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1178, file: !170, line: 1978, baseType: !1224, size: 64, offset: 512)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!35, !1201, !1162, !1127, !30}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1178, file: !170, line: 1980, baseType: !1228, size: 64, offset: 576)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!35, !1201, !1162, !1127, !37}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1178, file: !170, line: 1982, baseType: !1220, size: 64, offset: 640)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1178, file: !170, line: 1983, baseType: !1233, size: 64, offset: 704)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!35, !1201, !1162, !1127, !37, !1236}
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !38, line: 21, baseType: !1237)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !38, line: 18, baseType: !332)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1178, file: !170, line: 1985, baseType: !1239, size: 64, offset: 768)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!35, !1201, !1162, !1127, !1162, !1127, !13}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1178, file: !170, line: 1987, baseType: !1243, size: 64, offset: 832)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!35, !1201, !1127, !1246}
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !170, line: 226, size: 640, elements: !1248)
!1248 = !{!1249, !1250, !1251, !1261, !1270, !1271, !1276, !1277, !1278}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1247, file: !170, line: 227, baseType: !13, size: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1247, file: !170, line: 228, baseType: !37, size: 16, offset: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, scope: !1247, file: !170, line: 241, baseType: !1252, size: 32, offset: 64)
!1252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1247, file: !170, line: 241, size: 32, elements: !1253)
!1253 = !{!1254, !1255}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1252, file: !170, line: 242, baseType: !742, size: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1252, file: !170, line: 243, baseType: !1256, size: 32)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1257, line: 16, baseType: !1258)
!1257 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1257, line: 14, size: 32, elements: !1259)
!1259 = !{!1260}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1258, file: !1257, line: 15, baseType: !747, size: 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, scope: !1247, file: !170, line: 245, baseType: !1262, size: 32, offset: 96)
!1262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1247, file: !170, line: 245, size: 32, elements: !1263)
!1263 = !{!1264, !1265}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1262, file: !170, line: 246, baseType: !760, size: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1262, file: !170, line: 247, baseType: !1266, size: 32)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1257, line: 20, baseType: !1267)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1257, line: 18, size: 32, elements: !1268)
!1268 = !{!1269}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1267, file: !1257, line: 19, baseType: !764, size: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1247, file: !170, line: 249, baseType: !54, size: 64, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1247, file: !170, line: 250, baseType: !1272, size: 128, offset: 192)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !818, line: 13, size: 128, elements: !1273)
!1273 = !{!1274, !1275}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1272, file: !818, line: 14, baseType: !817, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1272, file: !818, line: 15, baseType: !1091, size: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1247, file: !170, line: 251, baseType: !1272, size: 128, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1247, file: !170, line: 252, baseType: !1272, size: 128, offset: 448)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1247, file: !170, line: 259, baseType: !648, size: 64, offset: 576)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1178, file: !170, line: 1988, baseType: !1280, size: 64, offset: 896)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!35, !1201, !1283, !1285, !332, !13}
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1118)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1287, line: 22, size: 1280, elements: !1288)
!1287 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1288 = !{!1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1286, file: !1287, line: 23, baseType: !332, size: 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1286, file: !1287, line: 24, baseType: !37, size: 16, offset: 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1286, file: !1287, line: 25, baseType: !13, size: 32, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1286, file: !1287, line: 26, baseType: !825, size: 32, offset: 96)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1286, file: !1287, line: 27, baseType: !288, size: 64, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1286, file: !1287, line: 28, baseType: !288, size: 64, offset: 192)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1286, file: !1287, line: 41, baseType: !288, size: 64, offset: 256)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1286, file: !1287, line: 42, baseType: !1236, size: 32, offset: 320)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1286, file: !1287, line: 43, baseType: !1236, size: 32, offset: 352)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1286, file: !1287, line: 44, baseType: !742, size: 32, offset: 384)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1286, file: !1287, line: 45, baseType: !760, size: 32, offset: 416)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1286, file: !1287, line: 46, baseType: !54, size: 64, offset: 448)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1286, file: !1287, line: 47, baseType: !1272, size: 128, offset: 512)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1286, file: !1287, line: 48, baseType: !1272, size: 128, offset: 640)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1286, file: !1287, line: 49, baseType: !1272, size: 128, offset: 768)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1286, file: !1287, line: 50, baseType: !1272, size: 128, offset: 896)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1286, file: !1287, line: 51, baseType: !288, size: 64, offset: 1024)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1286, file: !1287, line: 52, baseType: !288, size: 64, offset: 1088)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1286, file: !1287, line: 53, baseType: !332, size: 32, offset: 1152)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1286, file: !1287, line: 54, baseType: !332, size: 32, offset: 1184)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1286, file: !1287, line: 55, baseType: !288, size: 64, offset: 1216)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1178, file: !170, line: 1990, baseType: !1311, size: 64, offset: 960)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!1314, !1127, !871, !48}
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !38, line: 66, baseType: !1315)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !50, line: 73, baseType: !1316)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !50, line: 15, baseType: !1091)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1178, file: !170, line: 1991, baseType: !1318, size: 64, offset: 1024)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!35, !1162, !1321, !288, !288}
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !170, line: 55, flags: DIFlagFwdDecl)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1178, file: !170, line: 1993, baseType: !1324, size: 64, offset: 1088)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!35, !1162, !35}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1178, file: !170, line: 1994, baseType: !1328, size: 64, offset: 1152)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!35, !1162, !1127, !648, !13, !37}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1178, file: !170, line: 1997, baseType: !1332, size: 64, offset: 1216)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!35, !1201, !1162, !648, !37}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1178, file: !170, line: 1999, baseType: !1336, size: 64, offset: 1280)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!1172, !1201, !1127, !35}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1178, file: !170, line: 2001, baseType: !1340, size: 64, offset: 1344)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!35, !1201, !1127, !1172, !35}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1178, file: !170, line: 2003, baseType: !1344, size: 64, offset: 1408)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!35, !1201, !1127, !1347}
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !170, line: 76, flags: DIFlagFwdDecl)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1178, file: !170, line: 2005, baseType: !1350, size: 64, offset: 1472)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!35, !1127, !1347}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1178, file: !170, line: 2006, baseType: !1354, size: 64, offset: 1536)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!1357, !1162}
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !170, line: 3192, size: 192, elements: !1359)
!1359 = !{!1360, !1368}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1358, file: !170, line: 3193, baseType: !1361, size: 128)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1362, line: 296, size: 128, elements: !1363)
!1362 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1363 = !{!1364, !1365, !1367}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1361, file: !1362, line: 297, baseType: !72, size: 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1361, file: !1362, line: 299, baseType: !1366, size: 32, offset: 32)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !38, line: 154, baseType: !13)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1361, file: !1362, line: 300, baseType: !33, size: 64, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1358, file: !170, line: 3194, baseType: !332, size: 32, offset: 128)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1163, file: !170, line: 655, baseType: !1370, size: 64, offset: 448)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !170, line: 1190, size: 10752, elements: !1372)
!1372 = !{!1373, !1374, !1375, !1376, !1377, !1378, !2587, !2719, !2759, !2842, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2859, !2863, !2864, !3256, !3259, !3318, !3321, !3322, !3323, !3364, !3386, !3387, !3388, !3389, !3390, !3391, !3394, !3398, !3407, !3408, !3409, !3410, !3469, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1371, file: !170, line: 1191, baseType: !110, size: 128)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1371, file: !170, line: 1192, baseType: !1236, size: 32, offset: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1371, file: !170, line: 1193, baseType: !100, size: 8, offset: 160)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1371, file: !170, line: 1194, baseType: !52, size: 64, offset: 192)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1371, file: !170, line: 1195, baseType: !54, size: 64, offset: 256)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1371, file: !170, line: 1196, baseType: !1379, size: 64, offset: 320)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !170, line: 2366, size: 576, elements: !1381)
!1381 = !{!1382, !1383, !1384, !1390, !1394, !1398, !1402, !2575, !2576, !2577, !2579, !2580, !2581, !2583, !2584, !2585, !2586}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1380, file: !170, line: 2367, baseType: !30, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1380, file: !170, line: 2368, baseType: !35, size: 32, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1380, file: !170, line: 2376, baseType: !1385, size: 64, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!35, !1388}
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1124, line: 21, flags: DIFlagFwdDecl)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1380, file: !170, line: 2377, baseType: !1391, size: 64, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1393)
!1393 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !170, line: 75, flags: DIFlagFwdDecl)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1380, file: !170, line: 2378, baseType: !1395, size: 64, offset: 256)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!1127, !1379, !35, !30, !33}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1380, file: !170, line: 2380, baseType: !1399, size: 64, offset: 320)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{null, !1370}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1380, file: !170, line: 2381, baseType: !1403, size: 64, offset: 384)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !121, line: 402, size: 9216, align: 512, elements: !1405)
!1405 = !{!1406, !1407, !1408, !1412, !2231, !2257, !2258, !2259, !2260, !2264, !2267, !2268, !2269, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2337, !2341, !2361, !2381, !2382, !2383, !2384, !2393, !2416, !2417, !2420, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2434, !2435, !2533, !2541, !2542, !2543, !2545, !2549, !2550, !2554, !2555, !2556, !2557, !2559, !2560, !2561, !2568, !2569, !2570, !2574}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1404, file: !121, line: 403, baseType: !120, size: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1404, file: !121, line: 406, baseType: !110, size: 128, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1404, file: !121, line: 409, baseType: !1409, size: 448, offset: 192)
!1409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1410)
!1410 = !{!1411}
!1411 = !DISubrange(count: 56)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1404, file: !121, line: 417, baseType: !1413, size: 768, offset: 640)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !121, line: 45, size: 768, elements: !1414)
!1414 = !{!1415, !2225, !2226, !2227, !2230}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1413, file: !121, line: 46, baseType: !1416, size: 512)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1417, line: 64, size: 512, elements: !1418)
!1417 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1418 = !{!1419, !1420, !1421, !1423, !1467, !2081, !2215, !2220, !2221, !2222, !2223, !2224}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1416, file: !1417, line: 65, baseType: !30, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1416, file: !1417, line: 66, baseType: !110, size: 128, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1416, file: !1417, line: 67, baseType: !1422, size: 64, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1416, file: !1417, line: 68, baseType: !1424, size: 64, offset: 256)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1417, line: 168, size: 768, elements: !1426)
!1426 = !{!1427, !1428, !1429, !1430}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1425, file: !1417, line: 169, baseType: !110, size: 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1425, file: !1417, line: 170, baseType: !72, size: 32, offset: 128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1425, file: !1417, line: 171, baseType: !1416, size: 512, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1425, file: !1417, line: 172, baseType: !1431, size: 64, offset: 704)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1433)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1417, line: 133, size: 192, elements: !1434)
!1434 = !{!1435, !1442, !1447}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1433, file: !1417, line: 134, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1437)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!35, !1440}
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1416)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1433, file: !1417, line: 135, baseType: !1443, size: 64, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1444)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!30, !1440}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1433, file: !1417, line: 136, baseType: !1448, size: 64, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1449)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!35, !1440, !1452}
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1417, line: 125, size: 20736, elements: !1454)
!1454 = !{!1455, !1457, !1461, !1462, !1466}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1453, file: !1417, line: 126, baseType: !1456, size: 192)
!1456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !871, size: 192, elements: !704)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1453, file: !1417, line: 127, baseType: !1458, size: 4096, offset: 192)
!1458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !871, size: 4096, elements: !1459)
!1459 = !{!1460}
!1460 = !DISubrange(count: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1453, file: !1417, line: 128, baseType: !35, size: 32, offset: 4288)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1453, file: !1417, line: 129, baseType: !1463, size: 16384, offset: 4320)
!1463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1464)
!1464 = !{!1465}
!1465 = !DISubrange(count: 2048)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1453, file: !1417, line: 130, baseType: !35, size: 32, offset: 20704)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1416, file: !1417, line: 69, baseType: !1468, size: 64, offset: 320)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1470)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1417, line: 116, size: 384, elements: !1471)
!1471 = !{!1472, !1476, !1495, !2043, !2073, !2077}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1470, file: !1417, line: 117, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{null, !1422}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1470, file: !1417, line: 118, baseType: !1477, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1479)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1480, line: 254, size: 128, elements: !1481)
!1480 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1481 = !{!1482, !1491}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1479, file: !1480, line: 255, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!1314, !1422, !1486, !871}
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1480, line: 30, size: 128, elements: !1488)
!1488 = !{!1489, !1490}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1487, file: !1480, line: 31, baseType: !30, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1487, file: !1480, line: 32, baseType: !37, size: 16, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1479, file: !1480, line: 256, baseType: !1492, size: 64, offset: 64)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!1314, !1422, !1486, !30, !48}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1470, file: !1417, line: 119, baseType: !1496, size: 64, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1499)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1480, line: 84, size: 320, elements: !1500)
!1500 = !{!1501, !1502, !1506, !2039, !2041}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1499, file: !1480, line: 85, baseType: !30, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1499, file: !1480, line: 86, baseType: !1503, size: 64, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!37, !1422, !1486, !35}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1499, file: !1480, line: 88, baseType: !1507, size: 64, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!37, !1422, !1510, !35}
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1480, line: 175, size: 512, elements: !1512)
!1512 = !{!1513, !1514, !1515, !1516, !2030, !2034, !2035}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1511, file: !1480, line: 176, baseType: !1487, size: 128)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1511, file: !1480, line: 177, baseType: !48, size: 64, offset: 128)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1511, file: !1480, line: 178, baseType: !33, size: 64, offset: 192)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1511, file: !1480, line: 179, baseType: !1517, size: 64, offset: 256)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!1520}
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !170, line: 472, size: 1536, align: 64, elements: !1522)
!1522 = !{!1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !2022, !2023, !2024, !2027, !2028, !2029}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1521, file: !170, line: 473, baseType: !1162, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1521, file: !170, line: 474, baseType: !1361, size: 128, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1521, file: !170, line: 475, baseType: !801, size: 320, offset: 192)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1521, file: !170, line: 476, baseType: !1366, size: 32, offset: 512)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1521, file: !170, line: 477, baseType: !62, size: 32, offset: 544)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1521, file: !170, line: 482, baseType: !503, size: 128, offset: 576)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1521, file: !170, line: 483, baseType: !52, size: 64, offset: 704)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1521, file: !170, line: 484, baseType: !52, size: 64, offset: 768)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1521, file: !170, line: 485, baseType: !1532, size: 64, offset: 832)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1534)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !170, line: 404, size: 1280, elements: !1535)
!1535 = !{!1536, !1847, !1917, !1921, !1925, !1931, !1937, !1941, !1946, !1950, !1954, !1958, !1986, !1990, !1994, !1998, !2003, !2007, !2014, !2018}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1534, file: !170, line: 405, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!35, !1540, !1827}
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !136, line: 74, size: 512, align: 128, elements: !1542)
!1542 = !{!1543, !1544, !1821, !1826}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1541, file: !136, line: 75, baseType: !52, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, scope: !1541, file: !136, line: 83, baseType: !1545, size: 320, offset: 64)
!1545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1541, file: !136, line: 83, size: 320, elements: !1546)
!1546 = !{!1547, !1568, !1582, !1586, !1820}
!1547 = !DIDerivedType(tag: DW_TAG_member, scope: !1545, file: !136, line: 84, baseType: !1548, size: 320)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1545, file: !136, line: 84, size: 320, elements: !1549)
!1549 = !{!1550, !1561, !1562, !1567}
!1550 = !DIDerivedType(tag: DW_TAG_member, scope: !1548, file: !136, line: 90, baseType: !1551, size: 128)
!1551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1548, file: !136, line: 90, size: 128, elements: !1552)
!1552 = !{!1553, !1554, !1559, !1560}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1551, file: !136, line: 91, baseType: !110, size: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, scope: !1551, file: !136, line: 94, baseType: !1555, size: 128)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1551, file: !136, line: 94, size: 128, elements: !1556)
!1556 = !{!1557, !1558}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1555, file: !136, line: 96, baseType: !33, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1555, file: !136, line: 98, baseType: !13, size: 32, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1551, file: !136, line: 102, baseType: !110, size: 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1551, file: !136, line: 103, baseType: !110, size: 128)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1548, file: !136, line: 106, baseType: !1520, size: 64, offset: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, scope: !1548, file: !136, line: 107, baseType: !1563, size: 64, offset: 192)
!1563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1548, file: !136, line: 107, size: 64, elements: !1564)
!1564 = !{!1565, !1566}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1563, file: !136, line: 108, baseType: !52, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1563, file: !136, line: 109, baseType: !52, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1548, file: !136, line: 117, baseType: !52, size: 64, offset: 256)
!1568 = !DIDerivedType(tag: DW_TAG_member, scope: !1545, file: !136, line: 119, baseType: !1569, size: 320)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1545, file: !136, line: 119, size: 320, elements: !1570)
!1570 = !{!1571, !1572, !1575, !1576, !1577}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1569, file: !136, line: 124, baseType: !52, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1569, file: !136, line: 125, baseType: !1573, size: 64, offset: 64)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !136, line: 125, flags: DIFlagFwdDecl)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1569, file: !136, line: 126, baseType: !52, size: 64, offset: 128)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1569, file: !136, line: 127, baseType: !52, size: 64, offset: 192)
!1577 = !DIDerivedType(tag: DW_TAG_member, scope: !1569, file: !136, line: 128, baseType: !1578, size: 64, offset: 256)
!1578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1569, file: !136, line: 128, size: 64, elements: !1579)
!1579 = !{!1580, !1581}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1578, file: !136, line: 133, baseType: !52, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1578, file: !136, line: 138, baseType: !661, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, scope: !1545, file: !136, line: 141, baseType: !1583, size: 64)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1545, file: !136, line: 141, size: 64, elements: !1584)
!1584 = !{!1585}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1583, file: !136, line: 142, baseType: !52, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, scope: !1545, file: !136, line: 144, baseType: !1587, size: 128)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1545, file: !136, line: 144, size: 128, elements: !1588)
!1588 = !{!1589, !1819}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1587, file: !136, line: 146, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !128, line: 126, size: 1216, elements: !1592)
!1592 = !{!1593, !1603, !1624, !1625, !1626, !1627, !1628, !1801, !1802, !1803}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1591, file: !128, line: 127, baseType: !1594, size: 384)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !128, line: 21, size: 384, elements: !1595)
!1595 = !{!1596, !1597, !1599, !1600, !1601, !1602}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1594, file: !128, line: 22, baseType: !52, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1594, file: !128, line: 23, baseType: !1598, size: 64, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1594, file: !128, line: 24, baseType: !1598, size: 64, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1594, file: !128, line: 25, baseType: !52, size: 64, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1594, file: !128, line: 26, baseType: !52, size: 64, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1594, file: !128, line: 27, baseType: !52, size: 64, offset: 320)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1591, file: !128, line: 128, baseType: !1604, size: 128, offset: 384)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1605, line: 105, size: 128, elements: !1606)
!1605 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1606 = !{!1607, !1608}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1604, file: !1605, line: 110, baseType: !52, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1604, file: !1605, line: 118, baseType: !1609, size: 64, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1605, line: 95, size: 448, elements: !1611)
!1611 = !{!1612, !1613, !1619, !1620, !1621, !1622, !1623}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1610, file: !1605, line: 96, baseType: !661, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1610, file: !1605, line: 97, baseType: !1614, size: 64, offset: 64)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1605, line: 60, baseType: !1616)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{null, !1618}
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1610, file: !1605, line: 98, baseType: !1614, size: 64, offset: 128)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1610, file: !1605, line: 99, baseType: !860, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1610, file: !1605, line: 100, baseType: !860, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1610, file: !1605, line: 101, baseType: !278, size: 128, align: 64, offset: 256)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1610, file: !1605, line: 102, baseType: !1618, size: 64, offset: 384)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1591, file: !128, line: 129, baseType: !1032, size: 256, offset: 512)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1591, file: !128, line: 130, baseType: !127, size: 32, offset: 768)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1591, file: !128, line: 131, baseType: !13, size: 32, offset: 800)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1591, file: !128, line: 132, baseType: !52, size: 64, offset: 832)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1591, file: !128, line: 133, baseType: !1629, size: 64, offset: 896)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1631)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !128, line: 77, size: 192, elements: !1632)
!1632 = !{!1633, !1637, !1797}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1631, file: !128, line: 83, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{null, !1540}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1631, file: !128, line: 89, baseType: !1638, size: 64, offset: 64)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!1641, !1642}
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !136, line: 1184, baseType: !13)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1644, line: 512, size: 896, elements: !1645)
!1644 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1645 = !{!1646, !1764, !1765, !1772, !1779, !1789, !1790, !1791, !1793, !1795}
!1646 = !DIDerivedType(tag: DW_TAG_member, scope: !1643, file: !1644, line: 513, baseType: !1647, size: 320)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1643, file: !1644, line: 513, size: 320, elements: !1648)
!1648 = !{!1649, !1760, !1761, !1762, !1763}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1647, file: !1644, line: 514, baseType: !1650, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !136, line: 625, size: 1344, elements: !1652)
!1652 = !{!1653, !1662, !1663, !1671, !1678, !1679, !1684, !1685, !1690, !1691, !1694, !1753, !1754, !1755, !1756, !1757, !1758}
!1653 = !DIDerivedType(tag: DW_TAG_member, scope: !1651, file: !136, line: 628, baseType: !1654, size: 128)
!1654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1651, file: !136, line: 628, size: 128, elements: !1655)
!1655 = !{!1656, !1661}
!1656 = !DIDerivedType(tag: DW_TAG_member, scope: !1654, file: !136, line: 629, baseType: !1657, size: 128)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1654, file: !136, line: 629, size: 128, elements: !1658)
!1658 = !{!1659, !1660}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1657, file: !136, line: 631, baseType: !52, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1657, file: !136, line: 632, baseType: !52, size: 64, offset: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1654, file: !136, line: 635, baseType: !278, size: 128, align: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1651, file: !136, line: 639, baseType: !620, size: 64, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1651, file: !136, line: 640, baseType: !1664, size: 64, offset: 192)
!1664 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1665, line: 297, baseType: !1666)
!1665 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1665, line: 297, size: 64, elements: !1667)
!1667 = !{!1668}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1666, file: !1665, line: 297, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1670, line: 19, baseType: !52)
!1670 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1671 = !DIDerivedType(tag: DW_TAG_member, scope: !1651, file: !136, line: 646, baseType: !1672, size: 64, offset: 256)
!1672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1651, file: !136, line: 646, size: 64, elements: !1673)
!1673 = !{!1674, !1677}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1672, file: !136, line: 647, baseType: !1675, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1676)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !136, line: 542, baseType: !52)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1672, file: !136, line: 648, baseType: !1676, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1651, file: !136, line: 666, baseType: !35, size: 32, offset: 320)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1651, file: !136, line: 667, baseType: !1680, size: 64, offset: 384)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !136, line: 579, size: 320, elements: !1682)
!1682 = !{!1683}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1681, file: !136, line: 580, baseType: !801, size: 320)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1651, file: !136, line: 670, baseType: !860, size: 8, offset: 448)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1651, file: !136, line: 681, baseType: !1686, size: 256, offset: 512)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1651, file: !136, line: 678, size: 256, elements: !1687)
!1687 = !{!1688, !1689}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1686, file: !136, line: 679, baseType: !366, size: 192, align: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1686, file: !136, line: 680, baseType: !52, size: 64, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1651, file: !136, line: 689, baseType: !110, size: 128, offset: 768)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1651, file: !136, line: 691, baseType: !1692, size: 64, offset: 896)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !136, line: 691, flags: DIFlagFwdDecl)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1651, file: !136, line: 694, baseType: !1695, size: 64, offset: 960)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1697)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1644, line: 563, size: 1024, elements: !1698)
!1698 = !{!1699, !1703, !1704, !1708, !1712, !1716, !1717, !1721, !1725, !1729, !1730, !1731, !1735, !1739, !1745, !1749}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1697, file: !1644, line: 564, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{null, !1650}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1697, file: !1644, line: 569, baseType: !1700, size: 64, offset: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1697, file: !1644, line: 571, baseType: !1705, size: 64, offset: 128)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!35, !1650, !52}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1697, file: !1644, line: 572, baseType: !1709, size: 64, offset: 192)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!35, !1650}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1697, file: !1644, line: 578, baseType: !1713, size: 64, offset: 256)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!35, !1650, !52, !52, !52}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1697, file: !1644, line: 580, baseType: !1638, size: 64, offset: 320)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1697, file: !1644, line: 581, baseType: !1718, size: 64, offset: 384)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!1641, !1642, !13}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1697, file: !1644, line: 582, baseType: !1722, size: 64, offset: 448)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!1641, !1642, !52, !52}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1697, file: !1644, line: 584, baseType: !1726, size: 64, offset: 512)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!52, !1650}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1697, file: !1644, line: 588, baseType: !1638, size: 64, offset: 576)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1697, file: !1644, line: 591, baseType: !1638, size: 64, offset: 640)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1697, file: !1644, line: 597, baseType: !1732, size: 64, offset: 704)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!35, !1650, !52, !33, !35, !35}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1697, file: !1644, line: 603, baseType: !1736, size: 64, offset: 768)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!30, !1650}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1697, file: !1644, line: 613, baseType: !1740, size: 64, offset: 832)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!35, !1650, !1743}
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !323, line: 54, flags: DIFlagFwdDecl)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1697, file: !1644, line: 625, baseType: !1746, size: 64, offset: 896)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!1743, !1650, !52}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1697, file: !1644, line: 633, baseType: !1750, size: 64, offset: 960)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!1540, !1650, !52}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1651, file: !136, line: 697, baseType: !52, size: 64, offset: 1024)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1651, file: !136, line: 699, baseType: !648, size: 64, offset: 1088)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1651, file: !136, line: 700, baseType: !33, size: 64, offset: 1152)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1651, file: !136, line: 711, baseType: !661, size: 64, offset: 1216)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1651, file: !136, line: 717, baseType: !1743, size: 64, offset: 1280)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1651, file: !136, line: 722, baseType: !1759, offset: 1344)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !136, line: 570, elements: !641)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1647, file: !1644, line: 515, baseType: !1366, size: 32, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1647, file: !1644, line: 516, baseType: !52, size: 64, offset: 128)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1647, file: !1644, line: 517, baseType: !52, size: 64, offset: 192)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1647, file: !1644, line: 518, baseType: !52, size: 64, offset: 256)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1643, file: !1644, line: 520, baseType: !135, size: 32, offset: 320)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1643, file: !1644, line: 522, baseType: !1766, size: 64, offset: 384)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1670, line: 22, baseType: !1768)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1670, line: 22, size: 64, elements: !1769)
!1769 = !{!1770}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1768, file: !1670, line: 22, baseType: !1771, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1670, line: 15, baseType: !52)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1643, file: !1644, line: 524, baseType: !1773, size: 64, offset: 448)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1665, line: 372, baseType: !1775)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1665, line: 372, size: 64, elements: !1776)
!1776 = !{!1777}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1775, file: !1665, line: 372, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1670, line: 16, baseType: !52)
!1779 = !DIDerivedType(tag: DW_TAG_member, scope: !1643, file: !1644, line: 527, baseType: !1780, size: 64, offset: 512)
!1780 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1643, file: !1644, line: 527, size: 64, elements: !1781)
!1781 = !{!1782, !1788}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1780, file: !1644, line: 528, baseType: !1783, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1670, line: 21, baseType: !1784)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1670, line: 21, size: 64, elements: !1785)
!1785 = !{!1786}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1784, file: !1670, line: 21, baseType: !1787, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1670, line: 14, baseType: !52)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1780, file: !1644, line: 529, baseType: !1767, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1643, file: !1644, line: 534, baseType: !1540, size: 64, offset: 576)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1643, file: !1644, line: 535, baseType: !1540, size: 64, offset: 640)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1643, file: !1644, line: 541, baseType: !1792, size: 64, offset: 704)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1643, file: !1644, line: 545, baseType: !1794, size: 64, offset: 768)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1643, file: !1644, line: 549, baseType: !1796, size: 64, offset: 832)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1665, line: 520, baseType: !1540)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1631, file: !128, line: 100, baseType: !1798, size: 64, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!35, !1590, !52, !52, !35}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1591, file: !128, line: 134, baseType: !33, size: 64, offset: 960)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1591, file: !128, line: 135, baseType: !35, size: 32, offset: 1024)
!1803 = !DIDerivedType(tag: DW_TAG_member, scope: !1591, file: !128, line: 136, baseType: !1804, size: 128, offset: 1088)
!1804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1591, file: !128, line: 136, size: 128, elements: !1805)
!1805 = !{!1806, !1812}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1804, file: !128, line: 137, baseType: !1807, size: 128)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1808, line: 6, size: 128, elements: !1809)
!1808 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1809 = !{!1810, !1811}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1807, file: !1808, line: 7, baseType: !288, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1807, file: !1808, line: 8, baseType: !288, size: 64, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, scope: !1804, file: !128, line: 138, baseType: !1813)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1804, file: !128, line: 138, elements: !1814)
!1814 = !{!1815, !1817}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1813, file: !128, line: 138, baseType: !1816)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1813, file: !128, line: 138, elements: !641)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1813, file: !128, line: 138, baseType: !1818)
!1818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1807, elements: !738)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1587, file: !136, line: 147, baseType: !33, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1545, file: !136, line: 161, baseType: !278, size: 128, align: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, scope: !1541, file: !136, line: 164, baseType: !1822, size: 32, offset: 384)
!1822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1541, file: !136, line: 164, size: 32, elements: !1823)
!1823 = !{!1824, !1825}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1822, file: !136, line: 169, baseType: !62, size: 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1822, file: !136, line: 177, baseType: !13, size: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1541, file: !136, line: 181, baseType: !62, size: 32, offset: 416)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !152, line: 42, size: 384, elements: !1829)
!1829 = !{!1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !1828, file: !152, line: 43, baseType: !1091, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !1828, file: !152, line: 45, baseType: !1091, size: 64, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !1828, file: !152, line: 52, baseType: !54, size: 64, offset: 128)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !1828, file: !152, line: 53, baseType: !54, size: 64, offset: 192)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !1828, file: !152, line: 55, baseType: !151, size: 32, offset: 256)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !1828, file: !152, line: 57, baseType: !13, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !1828, file: !152, line: 58, baseType: !13, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !1828, file: !152, line: 59, baseType: !13, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !1828, file: !152, line: 60, baseType: !13, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !1828, file: !152, line: 61, baseType: !13, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !1828, file: !152, line: 62, baseType: !13, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !1828, file: !152, line: 63, baseType: !13, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !1828, file: !152, line: 71, baseType: !13, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !1828, file: !152, line: 78, baseType: !1844, size: 64, offset: 320)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !152, line: 78, flags: DIFlagFwdDecl)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1534, file: !170, line: 406, baseType: !1848, size: 64, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!35, !648, !1851}
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !136, line: 293, size: 1536, elements: !1853)
!1853 = !{!1854, !1884, !1898}
!1854 = !DIDerivedType(tag: DW_TAG_member, scope: !1852, file: !136, line: 295, baseType: !1855, size: 512)
!1855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1852, file: !136, line: 295, size: 512, elements: !1856)
!1856 = !{!1857, !1883}
!1857 = !DIDerivedType(tag: DW_TAG_member, scope: !1855, file: !136, line: 296, baseType: !1858, size: 448)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1855, file: !136, line: 296, size: 448, elements: !1859)
!1859 = !{!1860, !1861, !1870, !1871, !1872, !1881, !1882}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1858, file: !136, line: 298, baseType: !52, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, scope: !1858, file: !136, line: 299, baseType: !1862, size: 128, offset: 64)
!1862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1858, file: !136, line: 299, size: 128, elements: !1863)
!1863 = !{!1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1862, file: !136, line: 300, baseType: !110, size: 128)
!1865 = !DIDerivedType(tag: DW_TAG_member, scope: !1862, file: !136, line: 302, baseType: !1866, size: 128)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1862, file: !136, line: 302, size: 128, elements: !1867)
!1867 = !{!1868, !1869}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1866, file: !136, line: 303, baseType: !33, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1866, file: !136, line: 305, baseType: !13, size: 32, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1858, file: !136, line: 310, baseType: !1520, size: 64, offset: 192)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1858, file: !136, line: 311, baseType: !52, size: 64, offset: 256)
!1872 = !DIDerivedType(tag: DW_TAG_member, scope: !1858, file: !136, line: 312, baseType: !1873, size: 64, offset: 320)
!1873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1858, file: !136, line: 312, size: 64, elements: !1874)
!1874 = !{!1875, !1876}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1873, file: !136, line: 313, baseType: !33, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1873, file: !136, line: 314, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !136, line: 257, baseType: !1878)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !136, line: 255, size: 64, elements: !1879)
!1879 = !{!1880}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1878, file: !136, line: 256, baseType: !52, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1858, file: !136, line: 316, baseType: !62, size: 32, offset: 384)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1858, file: !136, line: 317, baseType: !62, size: 32, offset: 416)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1855, file: !136, line: 323, baseType: !1541, size: 512, align: 128)
!1884 = !DIDerivedType(tag: DW_TAG_member, scope: !1852, file: !136, line: 325, baseType: !1885, size: 512, offset: 512)
!1885 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1852, file: !136, line: 325, size: 512, elements: !1886)
!1886 = !{!1887, !1897}
!1887 = !DIDerivedType(tag: DW_TAG_member, scope: !1885, file: !136, line: 326, baseType: !1888, size: 320)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1885, file: !136, line: 326, size: 320, elements: !1889)
!1889 = !{!1890, !1891, !1892, !1893, !1894, !1895, !1896}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1888, file: !136, line: 327, baseType: !52, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1888, file: !136, line: 328, baseType: !52, size: 64, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1888, file: !136, line: 329, baseType: !52, size: 64, offset: 128)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1888, file: !136, line: 331, baseType: !62, size: 32, offset: 192)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1888, file: !136, line: 332, baseType: !62, size: 32, offset: 224)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1888, file: !136, line: 333, baseType: !62, size: 32, offset: 256)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1888, file: !136, line: 335, baseType: !13, size: 32, offset: 288)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1885, file: !136, line: 339, baseType: !1541, size: 512, align: 128)
!1898 = !DIDerivedType(tag: DW_TAG_member, scope: !1852, file: !136, line: 341, baseType: !1899, size: 512, offset: 1024)
!1899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1852, file: !136, line: 341, size: 512, elements: !1900)
!1900 = !{!1901, !1910, !1916}
!1901 = !DIDerivedType(tag: DW_TAG_member, scope: !1899, file: !136, line: 342, baseType: !1902, size: 384)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1899, file: !136, line: 342, size: 384, elements: !1903)
!1903 = !{!1904, !1905, !1906, !1907, !1908, !1909}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1902, file: !136, line: 343, baseType: !52, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1902, file: !136, line: 344, baseType: !52, size: 64, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1902, file: !136, line: 346, baseType: !33, size: 64, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1902, file: !136, line: 347, baseType: !33, size: 64, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1902, file: !136, line: 348, baseType: !33, size: 64, offset: 256)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1902, file: !136, line: 349, baseType: !33, size: 64, offset: 320)
!1910 = !DIDerivedType(tag: DW_TAG_member, scope: !1899, file: !136, line: 352, baseType: !1911, size: 256)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1899, file: !136, line: 352, size: 256, elements: !1912)
!1912 = !{!1913, !1914, !1915}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1911, file: !136, line: 353, baseType: !52, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1911, file: !136, line: 354, baseType: !52, size: 64, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1911, file: !136, line: 356, baseType: !110, size: 128, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1899, file: !136, line: 359, baseType: !1541, size: 512, align: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1534, file: !170, line: 409, baseType: !1918, size: 64, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!35, !1520, !1827}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1534, file: !170, line: 412, baseType: !1922, size: 64, offset: 192)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!860, !1520, !1851}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1534, file: !170, line: 414, baseType: !1926, size: 64, offset: 256)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{null, !1929}
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !170, line: 310, flags: DIFlagFwdDecl)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1534, file: !170, line: 416, baseType: !1932, size: 64, offset: 320)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!35, !648, !1520, !54, !13, !1935, !1936}
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1534, file: !170, line: 419, baseType: !1938, size: 64, offset: 384)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!35, !648, !1520, !54, !13, !13, !1540, !33}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1534, file: !170, line: 424, baseType: !1942, size: 64, offset: 448)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!1945, !1520, !1945}
!1945 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !38, line: 131, baseType: !288)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1534, file: !170, line: 425, baseType: !1947, size: 64, offset: 512)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{null, !1851, !48, !48}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1534, file: !170, line: 426, baseType: !1951, size: 64, offset: 576)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!860, !1851, !1366}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1534, file: !170, line: 427, baseType: !1955, size: 64, offset: 640)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{null, !1851}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1534, file: !170, line: 428, baseType: !1959, size: 64, offset: 704)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!1314, !1962, !1984}
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !170, line: 373, size: 384, elements: !1964)
!1964 = !{!1965, !1966, !1967, !1971, !1972, !1973, !1974}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1963, file: !170, line: 374, baseType: !648, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1963, file: !170, line: 375, baseType: !54, size: 64, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1963, file: !170, line: 376, baseType: !1968, size: 64, offset: 128)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{null, !1962, !1091}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1963, file: !170, line: 377, baseType: !33, size: 64, offset: 192)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1963, file: !170, line: 378, baseType: !35, size: 32, offset: 256)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1963, file: !170, line: 379, baseType: !106, size: 16, offset: 288)
!1974 = !DIDerivedType(tag: DW_TAG_member, scope: !1963, file: !170, line: 380, baseType: !1975, size: 64, offset: 320)
!1975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1963, file: !170, line: 380, size: 64, elements: !1976)
!1976 = !{!1977, !1980}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1975, file: !170, line: 386, baseType: !1978, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !170, line: 386, flags: DIFlagFwdDecl)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1975, file: !170, line: 395, baseType: !1981, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!1314, !33}
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !170, line: 69, flags: DIFlagFwdDecl)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1534, file: !170, line: 433, baseType: !1987, size: 64, offset: 768)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!35, !1520, !1851, !1851, !156}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1534, file: !170, line: 435, baseType: !1991, size: 64, offset: 832)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!35, !1851}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1534, file: !170, line: 436, baseType: !1995, size: 64, offset: 896)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!860, !1851, !48, !48}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1534, file: !170, line: 438, baseType: !1999, size: 64, offset: 960)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{null, !1851, !2002, !2002}
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1534, file: !170, line: 439, baseType: !2004, size: 64, offset: 1024)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!35, !1520, !1540}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1534, file: !170, line: 442, baseType: !2008, size: 64, offset: 1088)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!35, !2011, !648, !2013}
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !170, line: 66, flags: DIFlagFwdDecl)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1534, file: !170, line: 444, baseType: !2015, size: 64, offset: 1152)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{null, !648}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1534, file: !170, line: 445, baseType: !2019, size: 64, offset: 1216)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!35, !1962, !1984}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1521, file: !170, line: 486, baseType: !52, size: 64, offset: 896)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1521, file: !170, line: 487, baseType: !801, size: 320, offset: 960)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1521, file: !170, line: 488, baseType: !2025, size: 32, offset: 1280)
!2025 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2026, line: 8, baseType: !332)
!2026 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1521, file: !170, line: 489, baseType: !72, size: 32, offset: 1312)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1521, file: !170, line: 490, baseType: !110, size: 128, offset: 1344)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1521, file: !170, line: 491, baseType: !33, size: 64, offset: 1472)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1511, file: !1480, line: 180, baseType: !2031, size: 64, offset: 320)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!1314, !648, !1422, !1510, !871, !54, !48}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1511, file: !1480, line: 182, baseType: !2031, size: 64, offset: 384)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1511, file: !1480, line: 184, baseType: !2036, size: 64, offset: 448)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!35, !648, !1422, !1510, !1650}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1499, file: !1480, line: 90, baseType: !2040, size: 64, offset: 192)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1499, file: !1480, line: 91, baseType: !2042, size: 64, offset: 256)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1470, file: !1417, line: 120, baseType: !2044, size: 64, offset: 192)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!2047, !1440}
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2049)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !164, line: 39, size: 384, elements: !2050)
!2050 = !{!2051, !2052, !2056, !2060, !2068, !2072}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2049, file: !164, line: 40, baseType: !163, size: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2049, file: !164, line: 41, baseType: !2053, size: 64, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!860}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2049, file: !164, line: 42, baseType: !2057, size: 64, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!33}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2049, file: !164, line: 43, baseType: !2061, size: 64, offset: 192)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!2064, !2066}
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !164, line: 19, flags: DIFlagFwdDecl)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2049, file: !164, line: 44, baseType: !2069, size: 64, offset: 256)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!2064}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2049, file: !164, line: 45, baseType: !1193, size: 64, offset: 320)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1470, file: !1417, line: 121, baseType: !2074, size: 64, offset: 256)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!2064, !1440}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1470, file: !1417, line: 122, baseType: !2078, size: 64, offset: 320)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{null, !1440, !1057, !1058}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1416, file: !1417, line: 70, baseType: !2082, size: 64, offset: 384)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2084, line: 190, size: 1152, elements: !2085)
!2084 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2085 = !{!2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2207, !2208, !2209, !2210, !2211, !2214}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2083, file: !2084, line: 191, baseType: !62, size: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2083, file: !2084, line: 192, baseType: !62, size: 32, offset: 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2083, file: !2084, line: 202, baseType: !2082, size: 64, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2083, file: !2084, line: 203, baseType: !30, size: 64, offset: 128)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2083, file: !2084, line: 205, baseType: !366, size: 192, align: 64, offset: 192)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2083, file: !2084, line: 207, baseType: !2064, size: 64, offset: 384)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2083, file: !2084, line: 208, baseType: !13, size: 32, offset: 448)
!2093 = !DIDerivedType(tag: DW_TAG_member, scope: !2083, file: !2084, line: 209, baseType: !2094, size: 256, offset: 512)
!2094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2083, file: !2084, line: 209, size: 256, elements: !2095)
!2095 = !{!2096, !2105, !2109}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2094, file: !2084, line: 210, baseType: !2097, size: 256)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2084, line: 153, size: 256, elements: !2098)
!2098 = !{!2099, !2100, !2101, !2104}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2097, file: !2084, line: 154, baseType: !52, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2097, file: !2084, line: 156, baseType: !506, size: 64, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2097, file: !2084, line: 162, baseType: !2102, size: 64, offset: 128)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2084, line: 162, flags: DIFlagFwdDecl)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2097, file: !2084, line: 167, baseType: !52, size: 64, offset: 192)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2094, file: !2084, line: 211, baseType: !2106, size: 64)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2084, line: 170, size: 64, elements: !2107)
!2107 = !{!2108}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2106, file: !2084, line: 171, baseType: !2082, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2094, file: !2084, line: 212, baseType: !2110, size: 256)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2084, line: 174, size: 256, elements: !2111)
!2111 = !{!2112, !2202, !2205, !2206}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2110, file: !2084, line: 175, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2115)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2084, line: 271, size: 768, elements: !2116)
!2116 = !{!2117, !2175, !2179, !2180, !2181, !2182, !2183, !2187, !2188, !2189, !2190, !2198}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2115, file: !2084, line: 276, baseType: !2118, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!35, !2121}
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2084, line: 251, size: 1216, elements: !2123)
!2123 = !{!2124, !2125, !2126, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2122, file: !2084, line: 253, baseType: !2082, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2122, file: !2084, line: 254, baseType: !648, size: 64, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2122, file: !2084, line: 255, baseType: !2127, size: 64, offset: 128)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2129, line: 17, size: 960, elements: !2130)
!2129 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2130 = !{!2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2160, !2161, !2164}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2128, file: !2129, line: 18, baseType: !871, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2128, file: !2129, line: 19, baseType: !48, size: 64, offset: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2128, file: !2129, line: 20, baseType: !48, size: 64, offset: 128)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2128, file: !2129, line: 21, baseType: !48, size: 64, offset: 192)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2128, file: !2129, line: 22, baseType: !48, size: 64, offset: 256)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2128, file: !2129, line: 23, baseType: !54, size: 64, offset: 320)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2128, file: !2129, line: 24, baseType: !54, size: 64, offset: 384)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2128, file: !2129, line: 25, baseType: !668, size: 256, offset: 448)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2128, file: !2129, line: 26, baseType: !2140, size: 64, offset: 704)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2142)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2129, line: 32, size: 256, elements: !2143)
!2143 = !{!2144, !2148, !2152, !2156}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2142, file: !2129, line: 33, baseType: !2145, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!33, !2127, !53}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2142, file: !2129, line: 34, baseType: !2149, size: 64, offset: 64)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{null, !2127, !33}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2142, file: !2129, line: 35, baseType: !2153, size: 64, offset: 128)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!33, !2127, !33, !53}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2142, file: !2129, line: 36, baseType: !2157, size: 64, offset: 192)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!35, !2127, !33}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2128, file: !2129, line: 27, baseType: !35, size: 32, offset: 768)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2128, file: !2129, line: 28, baseType: !2162, size: 64, offset: 832)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !649)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2128, file: !2129, line: 29, baseType: !33, size: 64, offset: 896)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2122, file: !2084, line: 256, baseType: !33, size: 64, offset: 192)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2122, file: !2084, line: 259, baseType: !668, size: 256, offset: 256)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2122, file: !2084, line: 260, baseType: !668, size: 256, offset: 512)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2122, file: !2084, line: 261, baseType: !35, size: 32, offset: 768)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2122, file: !2084, line: 262, baseType: !110, size: 128, offset: 832)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2122, file: !2084, line: 263, baseType: !871, size: 64, offset: 960)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2122, file: !2084, line: 265, baseType: !48, size: 64, offset: 1024)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2122, file: !2084, line: 266, baseType: !860, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2122, file: !2084, line: 267, baseType: !860, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2122, file: !2084, line: 268, baseType: !1695, size: 64, offset: 1152)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2115, file: !2084, line: 277, baseType: !2176, size: 64, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{null, !2121}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2115, file: !2084, line: 290, baseType: !2157, size: 64, offset: 128)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2115, file: !2084, line: 292, baseType: !2145, size: 64, offset: 192)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2115, file: !2084, line: 293, baseType: !2153, size: 64, offset: 256)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2115, file: !2084, line: 294, baseType: !2149, size: 64, offset: 320)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2115, file: !2084, line: 296, baseType: !2184, size: 64, offset: 384)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!1314, !2121, !871, !48, !54}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2115, file: !2084, line: 306, baseType: !48, size: 64, offset: 448)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2115, file: !2084, line: 313, baseType: !860, size: 8, offset: 512)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2115, file: !2084, line: 314, baseType: !2184, size: 64, offset: 576)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2115, file: !2084, line: 317, baseType: !2191, size: 64, offset: 640)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!2194, !2121, !2196}
!2194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2195, line: 59, baseType: !13)
!2195 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !170, line: 61, flags: DIFlagFwdDecl)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2115, file: !2084, line: 320, baseType: !2199, size: 64, offset: 704)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!35, !2121, !1650}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2110, file: !2084, line: 176, baseType: !2203, size: 64, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2084, line: 35, flags: DIFlagFwdDecl)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2110, file: !2084, line: 177, baseType: !54, size: 64, offset: 128)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2110, file: !2084, line: 178, baseType: !2082, size: 64, offset: 192)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2083, file: !2084, line: 215, baseType: !33, size: 64, offset: 768)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2083, file: !2084, line: 221, baseType: !288, size: 64, offset: 832)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2083, file: !2084, line: 223, baseType: !39, size: 16, offset: 896)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2083, file: !2084, line: 224, baseType: !37, size: 16, offset: 912)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2083, file: !2084, line: 225, baseType: !2212, size: 64, offset: 960)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2084, line: 36, flags: DIFlagFwdDecl)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2083, file: !2084, line: 227, baseType: !278, size: 128, align: 64, offset: 1024)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1416, file: !1417, line: 71, baseType: !2216, size: 32, offset: 448)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2217, line: 19, size: 32, elements: !2218)
!2217 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2218 = !{!2219}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2216, file: !2217, line: 20, baseType: !338, size: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1416, file: !1417, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1416, file: !1417, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1416, file: !1417, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1416, file: !1417, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1416, file: !1417, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1413, file: !121, line: 47, baseType: !1403, size: 64, offset: 512)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1413, file: !121, line: 48, baseType: !1422, size: 64, offset: 576)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1413, file: !121, line: 49, baseType: !2228, size: 64, offset: 640)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !121, line: 49, flags: DIFlagFwdDecl)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1413, file: !121, line: 50, baseType: !1031, size: 64, offset: 704)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1404, file: !121, line: 418, baseType: !2232, size: 64, offset: 1408)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !121, line: 53, size: 448, elements: !2234)
!2234 = !{!2235, !2236, !2241, !2245, !2249, !2253}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2233, file: !121, line: 54, baseType: !1487, size: 128)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2233, file: !121, line: 55, baseType: !2237, size: 64, offset: 128)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!1314, !2232, !2240, !871}
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2233, file: !121, line: 57, baseType: !2242, size: 64, offset: 192)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!1314, !2232, !2240, !30, !48}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2233, file: !121, line: 59, baseType: !2246, size: 64, offset: 256)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{null, !1403, !30}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2233, file: !121, line: 60, baseType: !2250, size: 64, offset: 320)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!35, !1403}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2233, file: !121, line: 61, baseType: !2254, size: 64, offset: 384)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{null, !1403}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1404, file: !121, line: 419, baseType: !30, size: 64, offset: 1472)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1404, file: !121, line: 420, baseType: !30, size: 64, offset: 1536)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1404, file: !121, line: 421, baseType: !1422, size: 64, offset: 1600)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1404, file: !121, line: 424, baseType: !2261, size: 64, offset: 1664)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2263)
!2263 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !121, line: 424, flags: DIFlagFwdDecl)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1404, file: !121, line: 425, baseType: !2265, size: 64, offset: 1728)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !793)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1404, file: !121, line: 426, baseType: !13, size: 32, offset: 1792)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1404, file: !121, line: 435, baseType: !668, size: 256, offset: 1856)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1404, file: !121, line: 437, baseType: !2270, size: 64, offset: 2112)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2272, line: 69, size: 320, elements: !2273)
!2272 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2273 = !{!2274, !2275, !2276, !2293, !2295, !2299, !2300}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2271, file: !2272, line: 70, baseType: !30, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2271, file: !2272, line: 71, baseType: !1403, size: 64, offset: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2271, file: !2272, line: 72, baseType: !2277, size: 64, offset: 128)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2279)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2272, line: 47, size: 256, elements: !2280)
!2280 = !{!2281, !2282, !2288, !2292}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2279, file: !2272, line: 49, baseType: !13, size: 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2279, file: !2272, line: 51, baseType: !2283, size: 64, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!35, !30, !2286}
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2271)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2279, file: !2272, line: 53, baseType: !2289, size: 64, offset: 128)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!35, !871, !2286}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2279, file: !2272, line: 55, baseType: !1193, size: 64, offset: 192)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2271, file: !2272, line: 73, baseType: !2294, size: 16, offset: 192)
!2294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2271, file: !2272, line: 74, baseType: !2296, size: 8, offset: 208)
!2296 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !97, line: 16, baseType: !2297)
!2297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !99, line: 20, baseType: !2298)
!2298 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2271, file: !2272, line: 75, baseType: !96, size: 8, offset: 216)
!2300 = !DIDerivedType(tag: DW_TAG_member, scope: !2271, file: !2272, line: 76, baseType: !2301, size: 64, offset: 256)
!2301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2271, file: !2272, line: 76, size: 64, elements: !2302)
!2302 = !{!2303, !2304, !2311}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2301, file: !2272, line: 77, baseType: !33, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2301, file: !2272, line: 78, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2307)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2272, line: 86, size: 128, elements: !2308)
!2308 = !{!2309, !2310}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2307, file: !2272, line: 87, baseType: !13, size: 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2307, file: !2272, line: 88, baseType: !871, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2301, file: !2272, line: 79, baseType: !2312, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2314)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2272, line: 92, size: 256, elements: !2315)
!2315 = !{!2316, !2317, !2318, !2320, !2321}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2314, file: !2272, line: 94, baseType: !13, size: 32)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2314, file: !2272, line: 95, baseType: !13, size: 32, offset: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2314, file: !2272, line: 96, baseType: !2319, size: 64, offset: 64)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2314, file: !2272, line: 97, baseType: !2277, size: 64, offset: 128)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2314, file: !2272, line: 98, baseType: !33, size: 64, offset: 192)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1404, file: !121, line: 438, baseType: !13, size: 32, offset: 2176)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1404, file: !121, line: 441, baseType: !13, size: 32, offset: 2208)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1404, file: !121, line: 442, baseType: !2261, size: 64, offset: 2240)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1404, file: !121, line: 443, baseType: !2265, size: 64, offset: 2304)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1404, file: !121, line: 444, baseType: !860, size: 8, offset: 2368)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1404, file: !121, line: 451, baseType: !860, size: 8, offset: 2376)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1404, file: !121, line: 454, baseType: !13, size: 32, offset: 2400)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1404, file: !121, line: 455, baseType: !2330, size: 64, offset: 2432)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2332, line: 23, size: 96, elements: !2333)
!2332 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2333 = !{!2334, !2335, !2336}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2331, file: !2332, line: 24, baseType: !35, size: 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2331, file: !2332, line: 24, baseType: !35, size: 32, offset: 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2331, file: !2332, line: 24, baseType: !35, size: 32, offset: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1404, file: !121, line: 458, baseType: !2338, size: 64, offset: 2496)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!35}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1404, file: !121, line: 460, baseType: !2342, size: 4032, align: 512, offset: 2560)
!2342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2343, size: 4032, elements: !2359)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !121, line: 362, size: 576, elements: !2344)
!2344 = !{!2345, !2346, !2347}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2343, file: !121, line: 363, baseType: !33, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2343, file: !121, line: 364, baseType: !13, size: 32, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2343, file: !121, line: 367, baseType: !2348, size: 448, offset: 128)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !121, line: 319, size: 448, elements: !2349)
!2349 = !{!2350, !2351}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2348, file: !121, line: 320, baseType: !1403, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2348, file: !121, line: 321, baseType: !2352, size: 384, offset: 64)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2353, line: 40, size: 384, elements: !2354)
!2353 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2354 = !{!2355}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2352, file: !2353, line: 41, baseType: !2356, size: 384, align: 64)
!2356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 384, align: 64, elements: !2357)
!2357 = !{!2358}
!2358 = !DISubrange(count: 2)
!2359 = !{!2360}
!2360 = !DISubrange(count: 7)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1404, file: !121, line: 463, baseType: !2362, size: 192, offset: 6592)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2363, line: 8, size: 192, elements: !2364)
!2363 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2364 = !{!2365, !2366, !2368}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2362, file: !2363, line: 10, baseType: !13, size: 32)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2362, file: !2363, line: 11, baseType: !2367, size: 64, offset: 64)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2362, file: !2363, line: 12, baseType: !2369, size: 64, offset: 128)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2371, line: 59, size: 48, elements: !2372)
!2371 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2372 = !{!2373, !2376, !2377, !2378, !2379, !2380}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2370, file: !2371, line: 60, baseType: !2374, size: 16)
!2374 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !97, line: 18, baseType: !2375)
!2375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !99, line: 23, baseType: !829)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2370, file: !2371, line: 61, baseType: !2374, size: 16, offset: 16)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2370, file: !2371, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2370, file: !2371, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2370, file: !2371, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2370, file: !2371, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1404, file: !121, line: 465, baseType: !52, size: 64, offset: 6784)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1404, file: !121, line: 469, baseType: !13, size: 32, offset: 6848)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1404, file: !121, line: 470, baseType: !110, size: 128, offset: 6912)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1404, file: !121, line: 471, baseType: !2385, size: 64, offset: 7040)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2387, line: 33, size: 96, elements: !2388)
!2387 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2388 = !{!2389, !2390, !2391, !2392}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2386, file: !2387, line: 37, baseType: !35, size: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2386, file: !2387, line: 43, baseType: !35, size: 32, offset: 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2386, file: !2387, line: 45, baseType: !39, size: 16, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2386, file: !2387, line: 47, baseType: !39, size: 16, offset: 80)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1404, file: !121, line: 476, baseType: !2394, size: 64, offset: 7104)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !121, line: 378, size: 256, elements: !2396)
!2396 = !{!2397, !2413, !2414, !2415}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2395, file: !121, line: 379, baseType: !2398, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2400, line: 204, baseType: !2401)
!2400 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2400, line: 197, size: 192, elements: !2402)
!2402 = !{!2403, !2405, !2406, !2407, !2409, !2411}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2401, file: !2400, line: 198, baseType: !2404, size: 32)
!2404 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2400, line: 21, baseType: !333)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2401, file: !2400, line: 199, baseType: !100, size: 8, offset: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2401, file: !2400, line: 200, baseType: !100, size: 8, offset: 40)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2401, file: !2400, line: 201, baseType: !2408, size: 16, offset: 48)
!2408 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2400, line: 17, baseType: !107)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2401, file: !2400, line: 202, baseType: !2410, size: 64, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2400, line: 16, baseType: !289)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2401, file: !2400, line: 203, baseType: !2412, size: 64, offset: 128)
!2412 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2400, line: 22, baseType: !289)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2395, file: !121, line: 380, baseType: !13, size: 32, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2395, file: !121, line: 381, baseType: !871, size: 64, offset: 128)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2395, file: !121, line: 382, baseType: !871, size: 64, offset: 192)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1404, file: !121, line: 477, baseType: !2395, size: 256, offset: 7168)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1404, file: !121, line: 480, baseType: !2418, size: 64, offset: 7424)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !121, line: 480, flags: DIFlagFwdDecl)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1404, file: !121, line: 483, baseType: !2421, size: 64, offset: 7488)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !121, line: 483, flags: DIFlagFwdDecl)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1404, file: !121, line: 488, baseType: !871, size: 64, offset: 7552)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1404, file: !121, line: 492, baseType: !33, size: 64, offset: 7616)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1404, file: !121, line: 493, baseType: !13, size: 32, offset: 7680)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1404, file: !121, line: 495, baseType: !33, size: 64, offset: 7744)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1404, file: !121, line: 496, baseType: !13, size: 32, offset: 7808)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1404, file: !121, line: 499, baseType: !13, size: 32, offset: 7840)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1404, file: !121, line: 500, baseType: !2430, size: 64, offset: 7872)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2432, line: 45, baseType: !2433)
!2432 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1404, file: !121, line: 503, baseType: !13, size: 32, offset: 7936)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1404, file: !121, line: 504, baseType: !2436, size: 64, offset: 8000)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2439, line: 96, size: 192, elements: !2440)
!2439 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2440 = !{!2441, !2442, !2494, !2497}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2438, file: !2439, line: 97, baseType: !13, size: 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2438, file: !2439, line: 98, baseType: !2443, size: 64, offset: 64)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2439, line: 24, size: 3072, elements: !2445)
!2445 = !{!2446, !2448, !2449, !2450, !2451, !2463, !2464, !2465, !2466, !2478, !2479, !2480, !2491, !2492, !2493}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2444, file: !2439, line: 26, baseType: !2447, size: 128)
!2447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !661, size: 128, elements: !2357)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2444, file: !2439, line: 27, baseType: !2447, size: 128, offset: 128)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2444, file: !2439, line: 28, baseType: !35, size: 32, offset: 256)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2444, file: !2439, line: 31, baseType: !72, size: 32, align: 512, offset: 512)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2444, file: !2439, line: 32, baseType: !2452, size: 960, offset: 576)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2453, line: 206, size: 960, elements: !2454)
!2453 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2454 = !{!2455, !2456, !2458, !2460, !2461, !2462}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2452, file: !2453, line: 207, baseType: !277, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2452, file: !2453, line: 208, baseType: !2457, size: 256, offset: 64)
!2457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 256, elements: !725)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2452, file: !2453, line: 209, baseType: !2459, size: 256, offset: 320)
!2459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 256, elements: !725)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2452, file: !2453, line: 213, baseType: !1091, size: 64, offset: 576)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2452, file: !2453, line: 215, baseType: !1093, size: 256, offset: 640)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2452, file: !2453, line: 216, baseType: !96, size: 8, offset: 896)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2444, file: !2439, line: 33, baseType: !52, size: 64, offset: 1536)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2444, file: !2439, line: 34, baseType: !52, size: 64, offset: 1600)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2444, file: !2439, line: 35, baseType: !860, size: 8, offset: 1664)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2444, file: !2439, line: 36, baseType: !2467, size: 320, offset: 1728)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2468, line: 11, size: 320, elements: !2469)
!2468 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2469 = !{!2470, !2471, !2472, !2477}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2467, file: !2468, line: 16, baseType: !720, size: 128)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2467, file: !2468, line: 17, baseType: !52, size: 64, offset: 128)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2467, file: !2468, line: 18, baseType: !2473, size: 64, offset: 192)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{null, !2476}
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2467, file: !2468, line: 19, baseType: !332, size: 32, offset: 256)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2444, file: !2439, line: 37, baseType: !993, size: 256, offset: 2048)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2444, file: !2439, line: 38, baseType: !278, size: 128, align: 64, offset: 2304)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2444, file: !2439, line: 39, baseType: !2481, size: 64, offset: 2432)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2439, line: 49, size: 768, elements: !2483)
!2483 = !{!2484, !2485, !2486, !2487, !2488, !2489, !2490}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2482, file: !2439, line: 50, baseType: !72, size: 32)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2482, file: !2439, line: 51, baseType: !2459, size: 256, offset: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2482, file: !2439, line: 53, baseType: !2459, size: 256, offset: 320)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2482, file: !2439, line: 54, baseType: !52, size: 64, offset: 576)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2482, file: !2439, line: 55, baseType: !2481, size: 64, offset: 640)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2482, file: !2439, line: 56, baseType: !35, size: 32, offset: 704)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2482, file: !2439, line: 57, baseType: !35, size: 32, offset: 736)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2444, file: !2439, line: 40, baseType: !52, size: 64, offset: 2496)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2444, file: !2439, line: 42, baseType: !35, size: 32, offset: 2560)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2444, file: !2439, line: 43, baseType: !2437, size: 64, offset: 2624)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2438, file: !2439, line: 99, baseType: !2495, offset: 128)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2496, line: 211, elements: !641)
!2496 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2438, file: !2439, line: 100, baseType: !2498, size: 64, offset: 128)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2439, line: 63, size: 3008, elements: !2500)
!2500 = !{!2501, !2502, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2532}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2499, file: !2439, line: 64, baseType: !2481, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2499, file: !2439, line: 65, baseType: !2503, size: 192, offset: 64)
!2503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2481, size: 192, elements: !704)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2499, file: !2439, line: 67, baseType: !35, size: 32, offset: 256)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2499, file: !2439, line: 68, baseType: !668, size: 256, offset: 320)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2499, file: !2439, line: 69, baseType: !72, size: 32, offset: 576)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2499, file: !2439, line: 70, baseType: !668, size: 256, offset: 640)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2499, file: !2439, line: 71, baseType: !52, size: 64, offset: 896)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2499, file: !2439, line: 72, baseType: !52, size: 64, offset: 960)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2499, file: !2439, line: 73, baseType: !52, size: 64, offset: 1024)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2499, file: !2439, line: 74, baseType: !52, size: 64, offset: 1088)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2499, file: !2439, line: 75, baseType: !52, size: 64, offset: 1152)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2499, file: !2439, line: 76, baseType: !52, size: 64, offset: 1216)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2499, file: !2439, line: 77, baseType: !52, size: 64, offset: 1280)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2499, file: !2439, line: 78, baseType: !52, size: 64, offset: 1344)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2499, file: !2439, line: 79, baseType: !860, size: 8, offset: 1408)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2499, file: !2439, line: 80, baseType: !52, size: 64, offset: 1472)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2499, file: !2439, line: 81, baseType: !668, size: 256, offset: 1536)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2499, file: !2439, line: 82, baseType: !1032, size: 256, offset: 1792)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2499, file: !2439, line: 84, baseType: !62, size: 32, offset: 2048)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2499, file: !2439, line: 87, baseType: !52, size: 64, offset: 2112)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2499, file: !2439, line: 88, baseType: !52, size: 64, offset: 2176)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2499, file: !2439, line: 89, baseType: !2524, size: 704, offset: 2240)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !994, line: 111, size: 704, elements: !2525)
!2525 = !{!2526, !2527, !2528, !2531}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2524, file: !994, line: 112, baseType: !993, size: 256)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2524, file: !994, line: 113, baseType: !2467, size: 320, offset: 256)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2524, file: !994, line: 116, baseType: !2529, size: 64, offset: 576)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !994, line: 18, flags: DIFlagFwdDecl)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2524, file: !994, line: 117, baseType: !35, size: 32, offset: 640)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2499, file: !2439, line: 90, baseType: !2437, size: 64, offset: 2944)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1404, file: !121, line: 515, baseType: !2534, size: 64, offset: 8064)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2536, line: 117, size: 128, elements: !2537)
!2536 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2537 = !{!2538, !2539, !2540}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2535, file: !2536, line: 118, baseType: !793, size: 32)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2535, file: !2536, line: 119, baseType: !793, size: 32, offset: 32)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2535, file: !2536, line: 120, baseType: !1091, size: 64, offset: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1404, file: !121, line: 516, baseType: !13, size: 32, offset: 8128)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1404, file: !121, line: 519, baseType: !13, size: 32, offset: 8160)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1404, file: !121, line: 520, baseType: !2544, size: 64, offset: 8192)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1404, file: !121, line: 523, baseType: !2546, size: 64, offset: 8256)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !121, line: 523, flags: DIFlagFwdDecl)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1404, file: !121, line: 524, baseType: !13, size: 32, offset: 8320)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1404, file: !121, line: 525, baseType: !2551, size: 64, offset: 8384)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !121, line: 525, flags: DIFlagFwdDecl)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1404, file: !121, line: 526, baseType: !13, size: 32, offset: 8448)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1404, file: !121, line: 533, baseType: !33, size: 64, offset: 8512)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1404, file: !121, line: 534, baseType: !13, size: 32, offset: 8576)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1404, file: !121, line: 535, baseType: !2558, size: 64, offset: 8640)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1404, file: !121, line: 536, baseType: !13, size: 32, offset: 8704)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1404, file: !121, line: 539, baseType: !35, size: 32, offset: 8736)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1404, file: !121, line: 540, baseType: !2562, size: 64, offset: 8768)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2564, line: 32, size: 64, elements: !2565)
!2564 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2565 = !{!2566, !2567}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2563, file: !2564, line: 33, baseType: !793, size: 32)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2563, file: !2564, line: 34, baseType: !793, size: 32, offset: 32)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1404, file: !121, line: 563, baseType: !110, size: 128, offset: 8832)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1404, file: !121, line: 565, baseType: !110, size: 128, offset: 8960)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1404, file: !121, line: 568, baseType: !2571, size: 64, offset: 9088)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{null}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1404, file: !121, line: 570, baseType: !62, size: 32, offset: 9152)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1380, file: !170, line: 2382, baseType: !1379, size: 64, offset: 448)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1380, file: !170, line: 2383, baseType: !716, size: 64, offset: 512)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1380, file: !170, line: 2385, baseType: !2578, offset: 576)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2496, line: 206, elements: !641)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1380, file: !170, line: 2386, baseType: !2578, offset: 576)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1380, file: !170, line: 2387, baseType: !2578, offset: 576)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1380, file: !170, line: 2388, baseType: !2582, offset: 576)
!2582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2578, elements: !704)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1380, file: !170, line: 2390, baseType: !2578, offset: 576)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1380, file: !170, line: 2391, baseType: !2578, offset: 576)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1380, file: !170, line: 2392, baseType: !2578, offset: 576)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1380, file: !170, line: 2393, baseType: !2578, offset: 576)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1371, file: !170, line: 1197, baseType: !2588, size: 64, offset: 384)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2590)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !170, line: 2057, size: 1664, elements: !2591)
!2591 = !{!2592, !2596, !2600, !2601, !2605, !2609, !2613, !2614, !2615, !2619, !2623, !2627, !2628, !2629, !2635, !2639, !2640, !2644, !2645, !2646, !2647, !2651, !2655, !2702, !2717, !2718}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2590, file: !170, line: 2058, baseType: !2593, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!1162, !1370}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2590, file: !170, line: 2059, baseType: !2597, size: 64, offset: 64)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{null, !1162}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2590, file: !170, line: 2060, baseType: !2597, size: 64, offset: 128)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2590, file: !170, line: 2062, baseType: !2602, size: 64, offset: 192)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{null, !1162, !35}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2590, file: !170, line: 2063, baseType: !2606, size: 64, offset: 256)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!35, !1162, !1827}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2590, file: !170, line: 2064, baseType: !2610, size: 64, offset: 320)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!35, !1162}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2590, file: !170, line: 2065, baseType: !2597, size: 64, offset: 384)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2590, file: !170, line: 2066, baseType: !1399, size: 64, offset: 448)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2590, file: !170, line: 2067, baseType: !2616, size: 64, offset: 512)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!35, !1370, !35}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2590, file: !170, line: 2068, baseType: !2620, size: 64, offset: 576)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!35, !1370, !169}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2590, file: !170, line: 2069, baseType: !2624, size: 64, offset: 640)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!35, !1370}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2590, file: !170, line: 2070, baseType: !2620, size: 64, offset: 704)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2590, file: !170, line: 2071, baseType: !2624, size: 64, offset: 768)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2590, file: !170, line: 2072, baseType: !2630, size: 64, offset: 832)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!35, !1127, !2633}
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !170, line: 62, flags: DIFlagFwdDecl)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2590, file: !170, line: 2073, baseType: !2636, size: 64, offset: 896)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!35, !1370, !2367, !871}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2590, file: !170, line: 2074, baseType: !1399, size: 64, offset: 960)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2590, file: !170, line: 2076, baseType: !2641, size: 64, offset: 1024)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!35, !2127, !1127}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2590, file: !170, line: 2077, baseType: !2641, size: 64, offset: 1088)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2590, file: !170, line: 2078, baseType: !2641, size: 64, offset: 1152)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2590, file: !170, line: 2079, baseType: !2641, size: 64, offset: 1216)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2590, file: !170, line: 2081, baseType: !2648, size: 64, offset: 1280)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!1314, !1370, !35, !871, !48, !54}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2590, file: !170, line: 2082, baseType: !2652, size: 64, offset: 1344)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!1314, !1370, !35, !30, !48, !54}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2590, file: !170, line: 2083, baseType: !2656, size: 64, offset: 1408)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!2659, !1162}
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !175, line: 296, size: 1664, elements: !2662)
!2662 = !{!2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2687, !2688, !2689}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2661, file: !175, line: 297, baseType: !720, size: 128)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2661, file: !175, line: 298, baseType: !110, size: 128, offset: 128)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2661, file: !175, line: 299, baseType: !110, size: 128, offset: 256)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2661, file: !175, line: 300, baseType: !110, size: 128, offset: 384)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2661, file: !175, line: 301, baseType: !668, size: 256, offset: 512)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2661, file: !175, line: 302, baseType: !72, size: 32, offset: 768)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2661, file: !175, line: 303, baseType: !62, size: 32, offset: 800)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2661, file: !175, line: 304, baseType: !1370, size: 64, offset: 832)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2661, file: !175, line: 305, baseType: !2672, size: 64, offset: 896)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !175, line: 68, size: 64, elements: !2673)
!2673 = !{!2674, !2686}
!2674 = !DIDerivedType(tag: DW_TAG_member, scope: !2672, file: !175, line: 69, baseType: !2675, size: 32)
!2675 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2672, file: !175, line: 69, size: 32, elements: !2676)
!2676 = !{!2677, !2678, !2679}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2675, file: !175, line: 70, baseType: !742, size: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2675, file: !175, line: 71, baseType: !760, size: 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2675, file: !175, line: 72, baseType: !2680, size: 32)
!2680 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2681, line: 24, baseType: !2682)
!2681 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2681, line: 22, size: 32, elements: !2683)
!2683 = !{!2684}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2682, file: !2681, line: 23, baseType: !2685, size: 32)
!2685 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2681, line: 20, baseType: !748)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2672, file: !175, line: 74, baseType: !174, size: 32, offset: 32)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2661, file: !175, line: 306, baseType: !54, size: 64, offset: 960)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2661, file: !175, line: 307, baseType: !52, size: 64, offset: 1024)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2661, file: !175, line: 308, baseType: !2690, size: 576, offset: 1088)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !175, line: 205, size: 576, elements: !2691)
!2691 = !{!2692, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2690, file: !175, line: 206, baseType: !2693, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !175, line: 66, baseType: !56)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2690, file: !175, line: 207, baseType: !2693, size: 64, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2690, file: !175, line: 208, baseType: !2693, size: 64, offset: 128)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2690, file: !175, line: 209, baseType: !2693, size: 64, offset: 192)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2690, file: !175, line: 210, baseType: !2693, size: 64, offset: 256)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2690, file: !175, line: 211, baseType: !2693, size: 64, offset: 320)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2690, file: !175, line: 212, baseType: !2693, size: 64, offset: 384)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2690, file: !175, line: 213, baseType: !817, size: 64, offset: 448)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2690, file: !175, line: 214, baseType: !817, size: 64, offset: 512)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2590, file: !170, line: 2085, baseType: !2703, size: 64, offset: 1472)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!1091, !1370, !2706}
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2708, line: 15, size: 256, elements: !2709)
!2708 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2709 = !{!2710, !2711, !2712, !2713, !2714}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2707, file: !2708, line: 16, baseType: !1366, size: 32)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2707, file: !2708, line: 19, baseType: !35, size: 32, offset: 32)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2707, file: !2708, line: 26, baseType: !52, size: 64, offset: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2707, file: !2708, line: 33, baseType: !52, size: 64, offset: 128)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2707, file: !2708, line: 36, baseType: !2715, size: 64, offset: 192)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !136, line: 33, flags: DIFlagFwdDecl)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2590, file: !170, line: 2087, baseType: !2703, size: 64, offset: 1536)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2590, file: !170, line: 2089, baseType: !1399, size: 64, offset: 1600)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1371, file: !170, line: 1198, baseType: !2720, size: 64, offset: 448)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2722)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !175, line: 324, size: 704, elements: !2723)
!2723 = !{!2724, !2728, !2732, !2736, !2737, !2738, !2739, !2740, !2745, !2750, !2754}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2722, file: !175, line: 325, baseType: !2725, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!35, !2660}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2722, file: !175, line: 326, baseType: !2729, size: 64, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!2660, !1370, !35}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2722, file: !175, line: 327, baseType: !2733, size: 64, offset: 128)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{null, !2660}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2722, file: !175, line: 328, baseType: !2725, size: 64, offset: 192)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2722, file: !175, line: 329, baseType: !2725, size: 64, offset: 256)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2722, file: !175, line: 330, baseType: !2725, size: 64, offset: 320)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2722, file: !175, line: 331, baseType: !2616, size: 64, offset: 384)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2722, file: !175, line: 334, baseType: !2741, size: 64, offset: 448)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!2744, !1162}
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2722, file: !175, line: 335, baseType: !2746, size: 64, offset: 512)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!35, !1162, !2749}
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2722, file: !175, line: 337, baseType: !2751, size: 64, offset: 576)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!35, !1162, !2744}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2722, file: !175, line: 339, baseType: !2755, size: 64, offset: 640)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!35, !1370, !2758}
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1371, file: !170, line: 1199, baseType: !2760, size: 64, offset: 512)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2762)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !175, line: 430, size: 704, elements: !2763)
!2763 = !{!2764, !2768, !2769, !2773, !2774, !2775, !2790, !2813, !2817, !2818, !2841}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2762, file: !175, line: 431, baseType: !2765, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!35, !1370, !35, !35, !1283}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2762, file: !175, line: 432, baseType: !2616, size: 64, offset: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2762, file: !175, line: 433, baseType: !2770, size: 64, offset: 128)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!35, !1370, !13}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2762, file: !175, line: 434, baseType: !2770, size: 64, offset: 192)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2762, file: !175, line: 435, baseType: !2616, size: 64, offset: 256)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2762, file: !175, line: 436, baseType: !2776, size: 64, offset: 320)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!35, !1370, !35, !2779}
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !175, line: 417, size: 256, elements: !2781)
!2781 = !{!2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2780, file: !175, line: 418, baseType: !35, size: 32)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2780, file: !175, line: 419, baseType: !13, size: 32, offset: 32)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2780, file: !175, line: 420, baseType: !13, size: 32, offset: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2780, file: !175, line: 422, baseType: !13, size: 32, offset: 96)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2780, file: !175, line: 423, baseType: !13, size: 32, offset: 128)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2780, file: !175, line: 424, baseType: !13, size: 32, offset: 160)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2780, file: !175, line: 425, baseType: !13, size: 32, offset: 192)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2780, file: !175, line: 426, baseType: !13, size: 32, offset: 224)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2762, file: !175, line: 437, baseType: !2791, size: 64, offset: 384)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!35, !1370, !2672, !2794}
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !175, line: 345, size: 960, elements: !2796)
!2796 = !{!2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2795, file: !175, line: 346, baseType: !35, size: 32)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2795, file: !175, line: 347, baseType: !288, size: 64, offset: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2795, file: !175, line: 348, baseType: !288, size: 64, offset: 128)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2795, file: !175, line: 349, baseType: !288, size: 64, offset: 192)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2795, file: !175, line: 350, baseType: !288, size: 64, offset: 256)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2795, file: !175, line: 351, baseType: !288, size: 64, offset: 320)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2795, file: !175, line: 352, baseType: !288, size: 64, offset: 384)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2795, file: !175, line: 353, baseType: !382, size: 64, offset: 448)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2795, file: !175, line: 355, baseType: !382, size: 64, offset: 512)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2795, file: !175, line: 356, baseType: !35, size: 32, offset: 576)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2795, file: !175, line: 357, baseType: !35, size: 32, offset: 608)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2795, file: !175, line: 358, baseType: !288, size: 64, offset: 640)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2795, file: !175, line: 359, baseType: !288, size: 64, offset: 704)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2795, file: !175, line: 360, baseType: !288, size: 64, offset: 768)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2795, file: !175, line: 361, baseType: !382, size: 64, offset: 832)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2795, file: !175, line: 362, baseType: !35, size: 32, offset: 896)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2762, file: !175, line: 438, baseType: !2814, size: 64, offset: 448)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!35, !1370, !2758, !2794}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2762, file: !175, line: 440, baseType: !2791, size: 64, offset: 512)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2762, file: !175, line: 441, baseType: !2819, size: 64, offset: 576)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!35, !1370, !2822}
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !175, line: 411, size: 1408, elements: !2824)
!2824 = !{!2825, !2826}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2823, file: !175, line: 412, baseType: !13, size: 32)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2823, file: !175, line: 413, baseType: !2827, size: 1344, offset: 64)
!2827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2828, size: 1344, elements: !704)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !175, line: 397, size: 448, elements: !2829)
!2829 = !{!2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2840}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2828, file: !175, line: 398, baseType: !13, size: 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2828, file: !175, line: 399, baseType: !13, size: 32, offset: 32)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2828, file: !175, line: 401, baseType: !13, size: 32, offset: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2828, file: !175, line: 402, baseType: !13, size: 32, offset: 96)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2828, file: !175, line: 403, baseType: !13, size: 32, offset: 128)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2828, file: !175, line: 404, baseType: !13, size: 32, offset: 160)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2828, file: !175, line: 405, baseType: !13, size: 32, offset: 192)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2828, file: !175, line: 406, baseType: !290, size: 64, offset: 256)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2828, file: !175, line: 407, baseType: !2839, size: 64, offset: 320)
!2839 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !38, line: 132, baseType: !288)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2828, file: !175, line: 408, baseType: !2839, size: 64, offset: 384)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2762, file: !175, line: 442, baseType: !2770, size: 64, offset: 640)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1371, file: !170, line: 1200, baseType: !2843, size: 64, offset: 576)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2845)
!2845 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !170, line: 54, flags: DIFlagFwdDecl)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1371, file: !170, line: 1201, baseType: !52, size: 64, offset: 640)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1371, file: !170, line: 1202, baseType: !52, size: 64, offset: 704)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1371, file: !170, line: 1203, baseType: !52, size: 64, offset: 768)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1371, file: !170, line: 1204, baseType: !1127, size: 64, offset: 832)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1371, file: !170, line: 1205, baseType: !801, size: 320, offset: 896)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1371, file: !170, line: 1206, baseType: !35, size: 32, offset: 1216)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1371, file: !170, line: 1207, baseType: !62, size: 32, offset: 1248)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1371, file: !170, line: 1209, baseType: !33, size: 64, offset: 1280)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1371, file: !170, line: 1211, baseType: !2855, size: 64, offset: 1344)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2858)
!2858 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !170, line: 1211, flags: DIFlagFwdDecl)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1371, file: !170, line: 1223, baseType: !2860, size: 64, offset: 1408)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1139, line: 34, size: 64, elements: !2861)
!2861 = !{!2862}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2860, file: !1139, line: 35, baseType: !1142, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1371, file: !170, line: 1224, baseType: !110, size: 128, offset: 1472)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1371, file: !170, line: 1225, baseType: !2865, size: 64, offset: 1600)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2867, line: 40, size: 7424, elements: !2868)
!2867 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2868 = !{!2869, !2870, !2871, !2874, !2878, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2905, !2906}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2866, file: !2867, line: 41, baseType: !1945, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2866, file: !2867, line: 42, baseType: !1945, size: 64, offset: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2866, file: !2867, line: 43, baseType: !2872, size: 64, offset: 128)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !323, line: 1453, flags: DIFlagFwdDecl)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2866, file: !2867, line: 44, baseType: !2875, size: 64, offset: 192)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2877, line: 74, flags: DIFlagFwdDecl)
!2877 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2866, file: !2867, line: 45, baseType: !2879, size: 64, offset: 256)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2867, line: 45, flags: DIFlagFwdDecl)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2866, file: !2867, line: 46, baseType: !52, size: 64, offset: 320)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2866, file: !2867, line: 47, baseType: !860, size: 8, offset: 384)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2866, file: !2867, line: 48, baseType: !96, size: 8, offset: 392)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2866, file: !2867, line: 49, baseType: !860, size: 8, offset: 400)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2866, file: !2867, line: 50, baseType: !860, size: 8, offset: 408)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2866, file: !2867, line: 51, baseType: !1236, size: 32, offset: 416)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2866, file: !2867, line: 52, baseType: !62, size: 32, offset: 448)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2866, file: !2867, line: 53, baseType: !72, size: 32, offset: 480)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2866, file: !2867, line: 54, baseType: !1162, size: 64, offset: 512)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2866, file: !2867, line: 55, baseType: !33, size: 64, offset: 576)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2866, file: !2867, line: 56, baseType: !33, size: 64, offset: 640)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2866, file: !2867, line: 57, baseType: !2893, size: 64, offset: 704)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2895)
!2895 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2867, line: 57, flags: DIFlagFwdDecl)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2866, file: !2867, line: 58, baseType: !668, size: 256, offset: 768)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2866, file: !2867, line: 60, baseType: !35, size: 32, offset: 1024)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2866, file: !2867, line: 61, baseType: !35, size: 32, offset: 1056)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2866, file: !2867, line: 62, baseType: !1422, size: 64, offset: 1088)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2866, file: !2867, line: 65, baseType: !668, size: 256, offset: 1152)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2866, file: !2867, line: 66, baseType: !1370, size: 64, offset: 1408)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2866, file: !2867, line: 68, baseType: !2903, size: 64, offset: 1472)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2867, line: 68, flags: DIFlagFwdDecl)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2866, file: !2867, line: 72, baseType: !860, size: 8, offset: 1536)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2866, file: !2867, line: 77, baseType: !2907, size: 5824, offset: 1600)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !187, line: 705, size: 5824, elements: !2908)
!2908 = !{!2909, !2910, !2912, !2915, !2916, !2969, !3039, !3040, !3041, !3042, !3043, !3050, !3142, !3155, !3165, !3169, !3171, !3172, !3173, !3177, !3184, !3185, !3188, !3191, !3195, !3198, !3199, !3200, !3201, !3202, !3203, !3233, !3234, !3235, !3238, !3241, !3250, !3251, !3252, !3253, !3254, !3255}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2907, file: !187, line: 706, baseType: !1416, size: 512)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2907, file: !187, line: 707, baseType: !2911, size: 64, offset: 512)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2907, file: !187, line: 709, baseType: !2913, size: 64, offset: 576)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !187, line: 37, flags: DIFlagFwdDecl)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2907, file: !187, line: 711, baseType: !30, size: 64, offset: 640)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2907, file: !187, line: 712, baseType: !2917, size: 64, offset: 704)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2919)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !187, line: 89, size: 384, elements: !2920)
!2920 = !{!2921, !2922, !2923, !2929, !2934, !2938}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2919, file: !187, line: 90, baseType: !30, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2919, file: !187, line: 91, baseType: !1496, size: 64, offset: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2919, file: !187, line: 92, baseType: !2924, size: 64, offset: 128)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!35, !2927, !1452}
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2907)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2919, file: !187, line: 93, baseType: !2930, size: 64, offset: 192)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!871, !2927, !2933, !1057, !1058}
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2919, file: !187, line: 95, baseType: !2935, size: 64, offset: 256)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{null, !2911}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2919, file: !187, line: 97, baseType: !2939, size: 64, offset: 320)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2941)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !194, line: 286, size: 1472, elements: !2942)
!2942 = !{!2943, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2941, file: !194, line: 287, baseType: !2944, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!35, !2911}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2941, file: !194, line: 288, baseType: !2935, size: 64, offset: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2941, file: !194, line: 289, baseType: !2944, size: 64, offset: 128)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2941, file: !194, line: 290, baseType: !2944, size: 64, offset: 192)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2941, file: !194, line: 291, baseType: !2944, size: 64, offset: 256)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2941, file: !194, line: 292, baseType: !2944, size: 64, offset: 320)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2941, file: !194, line: 293, baseType: !2944, size: 64, offset: 384)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2941, file: !194, line: 294, baseType: !2944, size: 64, offset: 448)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2941, file: !194, line: 295, baseType: !2944, size: 64, offset: 512)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2941, file: !194, line: 296, baseType: !2944, size: 64, offset: 576)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2941, file: !194, line: 297, baseType: !2944, size: 64, offset: 640)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2941, file: !194, line: 298, baseType: !2944, size: 64, offset: 704)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2941, file: !194, line: 299, baseType: !2944, size: 64, offset: 768)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2941, file: !194, line: 300, baseType: !2944, size: 64, offset: 832)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2941, file: !194, line: 301, baseType: !2944, size: 64, offset: 896)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2941, file: !194, line: 302, baseType: !2944, size: 64, offset: 960)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2941, file: !194, line: 303, baseType: !2944, size: 64, offset: 1024)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2941, file: !194, line: 304, baseType: !2944, size: 64, offset: 1088)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2941, file: !194, line: 305, baseType: !2944, size: 64, offset: 1152)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2941, file: !194, line: 306, baseType: !2944, size: 64, offset: 1216)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2941, file: !194, line: 307, baseType: !2944, size: 64, offset: 1280)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2941, file: !194, line: 308, baseType: !2944, size: 64, offset: 1344)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2941, file: !194, line: 309, baseType: !2944, size: 64, offset: 1408)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2907, file: !187, line: 714, baseType: !2970, size: 64, offset: 768)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2972)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2973, line: 80, size: 1344, elements: !2974)
!2973 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2974 = !{!2975, !2976, !2977, !2978, !2979, !2980, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3038}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2972, file: !2973, line: 81, baseType: !30, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2972, file: !2973, line: 82, baseType: !30, size: 64, offset: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2972, file: !2973, line: 83, baseType: !1496, size: 64, offset: 128)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2972, file: !2973, line: 84, baseType: !1496, size: 64, offset: 192)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2972, file: !2973, line: 85, baseType: !1496, size: 64, offset: 256)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2972, file: !2973, line: 87, baseType: !2981, size: 64, offset: 320)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!35, !2911, !2984}
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !181, line: 96, size: 1152, elements: !2986)
!2986 = !{!2987, !2988, !2989, !2990, !2991, !2992, !2993, !2997, !3001, !3002, !3003, !3004, !3005, !3013, !3014, !3015, !3016, !3017, !3018}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2985, file: !181, line: 97, baseType: !30, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2985, file: !181, line: 98, baseType: !2970, size: 64, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2985, file: !181, line: 100, baseType: !1403, size: 64, offset: 128)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2985, file: !181, line: 101, baseType: !30, size: 64, offset: 192)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2985, file: !181, line: 103, baseType: !860, size: 8, offset: 256)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2985, file: !181, line: 104, baseType: !180, size: 32, offset: 288)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2985, file: !181, line: 106, baseType: !2994, size: 64, offset: 320)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2996)
!2996 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !181, line: 106, flags: DIFlagFwdDecl)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2985, file: !181, line: 107, baseType: !2998, size: 64, offset: 384)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3000)
!3000 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !181, line: 107, flags: DIFlagFwdDecl)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2985, file: !181, line: 109, baseType: !2944, size: 64, offset: 448)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2985, file: !181, line: 110, baseType: !2935, size: 64, offset: 512)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2985, file: !181, line: 111, baseType: !2944, size: 64, offset: 576)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2985, file: !181, line: 112, baseType: !2935, size: 64, offset: 640)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2985, file: !181, line: 113, baseType: !3006, size: 64, offset: 704)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!35, !2911, !3009}
!3009 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !194, line: 60, baseType: !3010)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !194, line: 58, size: 32, elements: !3011)
!3011 = !{!3012}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3010, file: !194, line: 59, baseType: !35, size: 32)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2985, file: !181, line: 114, baseType: !2944, size: 64, offset: 768)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2985, file: !181, line: 115, baseType: !1496, size: 64, offset: 832)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2985, file: !181, line: 116, baseType: !1496, size: 64, offset: 896)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2985, file: !181, line: 118, baseType: !2939, size: 64, offset: 960)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2985, file: !181, line: 119, baseType: !2935, size: 64, offset: 1024)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2985, file: !181, line: 121, baseType: !3019, size: 64, offset: 1088)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !181, line: 121, flags: DIFlagFwdDecl)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2972, file: !2973, line: 88, baseType: !2924, size: 64, offset: 384)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2972, file: !2973, line: 89, baseType: !2944, size: 64, offset: 448)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2972, file: !2973, line: 90, baseType: !2935, size: 64, offset: 512)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2972, file: !2973, line: 91, baseType: !2935, size: 64, offset: 576)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2972, file: !2973, line: 92, baseType: !2935, size: 64, offset: 640)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2972, file: !2973, line: 94, baseType: !2944, size: 64, offset: 704)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2972, file: !2973, line: 95, baseType: !2944, size: 64, offset: 768)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2972, file: !2973, line: 97, baseType: !3006, size: 64, offset: 832)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2972, file: !2973, line: 98, baseType: !2944, size: 64, offset: 896)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2972, file: !2973, line: 100, baseType: !2944, size: 64, offset: 960)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2972, file: !2973, line: 102, baseType: !2944, size: 64, offset: 1024)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2972, file: !2973, line: 103, baseType: !2935, size: 64, offset: 1088)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2972, file: !2973, line: 105, baseType: !2939, size: 64, offset: 1152)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2972, file: !2973, line: 107, baseType: !3035, size: 64, offset: 1216)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3037)
!3037 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2973, line: 107, flags: DIFlagFwdDecl)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2972, file: !2973, line: 109, baseType: !860, size: 8, offset: 1280)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2907, file: !187, line: 715, baseType: !2984, size: 64, offset: 832)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2907, file: !187, line: 717, baseType: !33, size: 64, offset: 896)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2907, file: !187, line: 719, baseType: !33, size: 64, offset: 960)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2907, file: !187, line: 721, baseType: !668, size: 256, offset: 1024)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2907, file: !187, line: 725, baseType: !3044, size: 448, offset: 1280)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !187, line: 517, size: 448, elements: !3045)
!3045 = !{!3046, !3047, !3048, !3049}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3044, file: !187, line: 518, baseType: !110, size: 128)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3044, file: !187, line: 519, baseType: !110, size: 128, offset: 128)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3044, file: !187, line: 520, baseType: !110, size: 128, offset: 256)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3044, file: !187, line: 521, baseType: !186, size: 32, offset: 384)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2907, file: !187, line: 726, baseType: !3051, size: 2496, offset: 1728)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !194, line: 663, size: 2496, elements: !3052)
!3052 = !{!3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3135, !3139}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3051, file: !194, line: 664, baseType: !3009, size: 32)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3051, file: !194, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3051, file: !194, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3051, file: !194, line: 667, baseType: !860, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3051, file: !194, line: 668, baseType: !860, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3051, file: !194, line: 669, baseType: !860, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3051, file: !194, line: 670, baseType: !860, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3051, file: !194, line: 671, baseType: !860, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3051, file: !194, line: 672, baseType: !860, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3051, file: !194, line: 673, baseType: !860, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3051, file: !194, line: 674, baseType: !860, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3051, file: !194, line: 675, baseType: !332, size: 32, offset: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3051, file: !194, line: 676, baseType: !72, size: 32, offset: 96)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3051, file: !194, line: 678, baseType: !110, size: 128, offset: 128)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3051, file: !194, line: 679, baseType: !1032, size: 256, offset: 256)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3051, file: !194, line: 680, baseType: !3069, size: 64, offset: 512)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3071, line: 43, size: 1536, elements: !3072)
!3071 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3072 = !{!3073, !3074, !3075, !3076, !3077, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3070, file: !3071, line: 44, baseType: !30, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3070, file: !3071, line: 45, baseType: !35, size: 32, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3070, file: !3071, line: 46, baseType: !110, size: 128, offset: 128)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3070, file: !3071, line: 47, baseType: !72, size: 32, offset: 256)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3070, file: !3071, line: 48, baseType: !3078, size: 64, offset: 320)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !194, line: 629, flags: DIFlagFwdDecl)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3070, file: !3071, line: 49, baseType: !2467, size: 320, offset: 384)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3070, file: !3071, line: 50, baseType: !52, size: 64, offset: 704)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3070, file: !3071, line: 51, baseType: !446, size: 64, offset: 768)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3070, file: !3071, line: 52, baseType: !446, size: 64, offset: 832)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3070, file: !3071, line: 53, baseType: !446, size: 64, offset: 896)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3070, file: !3071, line: 54, baseType: !446, size: 64, offset: 960)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3070, file: !3071, line: 55, baseType: !446, size: 64, offset: 1024)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3070, file: !3071, line: 56, baseType: !52, size: 64, offset: 1088)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3070, file: !3071, line: 57, baseType: !52, size: 64, offset: 1152)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3070, file: !3071, line: 58, baseType: !52, size: 64, offset: 1216)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3070, file: !3071, line: 59, baseType: !52, size: 64, offset: 1280)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3070, file: !3071, line: 60, baseType: !52, size: 64, offset: 1344)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3070, file: !3071, line: 61, baseType: !2911, size: 64, offset: 1408)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3070, file: !3071, line: 62, baseType: !860, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3070, file: !3071, line: 63, baseType: !860, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3051, file: !194, line: 681, baseType: !860, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3051, file: !194, line: 682, baseType: !860, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3051, file: !194, line: 683, baseType: !860, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3051, file: !194, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3051, file: !194, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3051, file: !194, line: 690, baseType: !438, size: 512, offset: 640)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3051, file: !194, line: 691, baseType: !288, size: 64, offset: 1152)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3051, file: !194, line: 692, baseType: !993, size: 256, offset: 1216)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3051, file: !194, line: 693, baseType: !67, size: 192, offset: 1472)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3051, file: !194, line: 694, baseType: !3078, size: 64, offset: 1664)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3051, file: !194, line: 695, baseType: !62, size: 32, offset: 1728)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3051, file: !194, line: 696, baseType: !62, size: 32, offset: 1760)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3051, file: !194, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3051, file: !194, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3051, file: !194, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3051, file: !194, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3051, file: !194, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3051, file: !194, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3051, file: !194, line: 703, baseType: !860, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3051, file: !194, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3051, file: !194, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3051, file: !194, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3051, file: !194, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3051, file: !194, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3051, file: !194, line: 709, baseType: !13, size: 32, offset: 1824)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3051, file: !194, line: 710, baseType: !193, size: 32, offset: 1856)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3051, file: !194, line: 711, baseType: !201, size: 32, offset: 1888)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3051, file: !194, line: 712, baseType: !201, size: 32, offset: 1920)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3051, file: !194, line: 713, baseType: !35, size: 32, offset: 1952)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3051, file: !194, line: 714, baseType: !35, size: 32, offset: 1984)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3051, file: !194, line: 715, baseType: !288, size: 64, offset: 2048)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3051, file: !194, line: 716, baseType: !288, size: 64, offset: 2112)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3051, file: !194, line: 717, baseType: !288, size: 64, offset: 2176)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3051, file: !194, line: 718, baseType: !288, size: 64, offset: 2240)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3051, file: !194, line: 720, baseType: !3130, size: 64, offset: 2304)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !194, line: 632, size: 64, elements: !3132)
!3132 = !{!3133, !3134}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3131, file: !194, line: 633, baseType: !72, size: 32)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3131, file: !194, line: 634, baseType: !13, size: 32, offset: 32)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3051, file: !194, line: 721, baseType: !3136, size: 64, offset: 2368)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{null, !2911, !793}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3051, file: !194, line: 722, baseType: !3140, size: 64, offset: 2432)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !194, line: 722, flags: DIFlagFwdDecl)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2907, file: !187, line: 727, baseType: !3143, size: 64, offset: 4224)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !194, line: 742, size: 1792, elements: !3145)
!3145 = !{!3146, !3147, !3148, !3152, !3153, !3154}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3144, file: !194, line: 743, baseType: !2941, size: 1472)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3144, file: !194, line: 744, baseType: !2944, size: 64, offset: 1472)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3144, file: !194, line: 745, baseType: !3149, size: 64, offset: 1536)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{null, !2911, !860}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3144, file: !194, line: 746, baseType: !2944, size: 64, offset: 1600)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3144, file: !194, line: 747, baseType: !2935, size: 64, offset: 1664)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3144, file: !194, line: 748, baseType: !2935, size: 64, offset: 1728)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2907, file: !187, line: 736, baseType: !3156, size: 128, offset: 4288)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !187, line: 529, size: 128, elements: !3157)
!3157 = !{!3158, !3162}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3156, file: !187, line: 531, baseType: !3159, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3161, line: 13, flags: DIFlagFwdDecl)
!3161 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3156, file: !187, line: 532, baseType: !3163, size: 64, offset: 64)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !187, line: 49, flags: DIFlagFwdDecl)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2907, file: !187, line: 738, baseType: !3166, size: 64, offset: 4416)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3168)
!3168 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !187, line: 738, flags: DIFlagFwdDecl)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2907, file: !187, line: 740, baseType: !3170, size: 64, offset: 4480)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2907, file: !187, line: 741, baseType: !288, size: 64, offset: 4544)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2907, file: !187, line: 746, baseType: !288, size: 64, offset: 4608)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2907, file: !187, line: 747, baseType: !3174, size: 64, offset: 4672)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3176)
!3176 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !187, line: 747, flags: DIFlagFwdDecl)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2907, file: !187, line: 749, baseType: !3178, size: 64, offset: 4736)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !187, line: 428, size: 128, elements: !3180)
!3180 = !{!3181, !3182, !3183}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3179, file: !187, line: 433, baseType: !13, size: 32)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3179, file: !187, line: 434, baseType: !13, size: 32, offset: 32)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3179, file: !187, line: 435, baseType: !52, size: 64, offset: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2907, file: !187, line: 751, baseType: !110, size: 128, offset: 4800)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2907, file: !187, line: 762, baseType: !3186, size: 64, offset: 4928)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !187, line: 762, flags: DIFlagFwdDecl)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2907, file: !187, line: 770, baseType: !3189, offset: 4992)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3190, line: 5, elements: !641)
!3190 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2907, file: !187, line: 772, baseType: !3192, size: 64, offset: 4992)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3194, line: 18, flags: DIFlagFwdDecl)
!3194 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2907, file: !187, line: 773, baseType: !3196, size: 64, offset: 5056)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2973, line: 22, flags: DIFlagFwdDecl)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2907, file: !187, line: 776, baseType: !35, size: 32, offset: 5120)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2907, file: !187, line: 778, baseType: !1236, size: 32, offset: 5152)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2907, file: !187, line: 779, baseType: !332, size: 32, offset: 5184)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2907, file: !187, line: 781, baseType: !72, size: 32, offset: 5216)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2907, file: !187, line: 782, baseType: !110, size: 128, offset: 5248)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2907, file: !187, line: 784, baseType: !3204, size: 64, offset: 5376)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3206)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3207, line: 52, size: 768, elements: !3208)
!3207 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3208 = !{!3209, !3210, !3211, !3212, !3213, !3217, !3221, !3222, !3223, !3224, !3228, !3232}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3206, file: !3207, line: 53, baseType: !30, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3206, file: !3207, line: 55, baseType: !1496, size: 64, offset: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3206, file: !3207, line: 56, baseType: !1496, size: 64, offset: 128)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3206, file: !3207, line: 58, baseType: !2924, size: 64, offset: 192)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3206, file: !3207, line: 59, baseType: !3214, size: 64, offset: 256)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!871, !2927, !2933}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3206, file: !3207, line: 61, baseType: !3218, size: 64, offset: 320)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{null, !3204}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3206, file: !3207, line: 62, baseType: !2935, size: 64, offset: 384)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3206, file: !3207, line: 64, baseType: !2944, size: 64, offset: 448)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3206, file: !3207, line: 66, baseType: !2047, size: 64, offset: 512)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3206, file: !3207, line: 67, baseType: !3225, size: 64, offset: 576)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!2064, !2927}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3206, file: !3207, line: 69, baseType: !3229, size: 64, offset: 640)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{null, !2927, !1057, !1058}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3206, file: !3207, line: 71, baseType: !2939, size: 64, offset: 704)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2907, file: !187, line: 785, baseType: !1496, size: 64, offset: 5440)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2907, file: !187, line: 787, baseType: !2935, size: 64, offset: 5504)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2907, file: !187, line: 788, baseType: !3236, size: 64, offset: 5568)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !187, line: 46, flags: DIFlagFwdDecl)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2907, file: !187, line: 789, baseType: !3239, size: 64, offset: 5632)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !187, line: 48, flags: DIFlagFwdDecl)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2907, file: !187, line: 791, baseType: !3242, size: 64, offset: 5696)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !187, line: 597, size: 128, elements: !3244)
!3244 = !{!3245, !3246, !3247, !3248, !3249}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3243, file: !187, line: 598, baseType: !208, size: 32)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3243, file: !187, line: 599, baseType: !217, size: 32, offset: 32)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3243, file: !187, line: 600, baseType: !222, size: 32, offset: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3243, file: !187, line: 601, baseType: !860, size: 8, offset: 96)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3243, file: !187, line: 602, baseType: !860, size: 8, offset: 104)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2907, file: !187, line: 793, baseType: !227, size: 32, offset: 5760)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2907, file: !187, line: 795, baseType: !860, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2907, file: !187, line: 796, baseType: !860, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2907, file: !187, line: 797, baseType: !860, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2907, file: !187, line: 798, baseType: !860, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2907, file: !187, line: 799, baseType: !860, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1371, file: !170, line: 1226, baseType: !3257, size: 64, offset: 1664)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !170, line: 1226, flags: DIFlagFwdDecl)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1371, file: !170, line: 1227, baseType: !3260, size: 64, offset: 1728)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !234, line: 163, size: 6848, elements: !3262)
!3262 = !{!3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3310, !3311, !3312, !3313, !3315, !3316, !3317}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3261, file: !234, line: 164, baseType: !288, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3261, file: !234, line: 165, baseType: !366, size: 192, align: 64, offset: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3261, file: !234, line: 166, baseType: !110, size: 128, offset: 256)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3261, file: !234, line: 167, baseType: !52, size: 64, offset: 384)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3261, file: !234, line: 168, baseType: !52, size: 64, offset: 448)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3261, file: !234, line: 170, baseType: !2216, size: 32, offset: 512)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3261, file: !234, line: 171, baseType: !13, size: 32, offset: 544)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3261, file: !234, line: 172, baseType: !13, size: 32, offset: 576)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3261, file: !234, line: 173, baseType: !13, size: 32, offset: 608)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3261, file: !234, line: 173, baseType: !13, size: 32, offset: 640)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3261, file: !234, line: 179, baseType: !661, size: 64, offset: 704)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3261, file: !234, line: 184, baseType: !52, size: 64, offset: 768)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3261, file: !234, line: 186, baseType: !3276, size: 4672, offset: 832)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !234, line: 105, size: 4672, elements: !3277)
!3277 = !{!3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3303, !3304, !3305, !3306, !3307, !3308, !3309}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3276, file: !234, line: 106, baseType: !3260, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3276, file: !234, line: 108, baseType: !52, size: 64, offset: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3276, file: !234, line: 109, baseType: !52, size: 64, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3276, file: !234, line: 111, baseType: !110, size: 128, offset: 192)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3276, file: !234, line: 112, baseType: !110, size: 128, offset: 320)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3276, file: !234, line: 113, baseType: !110, size: 128, offset: 448)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3276, file: !234, line: 114, baseType: !110, size: 128, offset: 576)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3276, file: !234, line: 115, baseType: !72, size: 32, offset: 704)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3276, file: !234, line: 117, baseType: !62, size: 32, offset: 736)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3276, file: !234, line: 118, baseType: !3288, size: 1280, offset: 768)
!3288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !919, size: 1280, elements: !725)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3276, file: !234, line: 120, baseType: !52, size: 64, offset: 2048)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3276, file: !234, line: 121, baseType: !52, size: 64, offset: 2112)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3276, file: !234, line: 122, baseType: !52, size: 64, offset: 2176)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3276, file: !234, line: 123, baseType: !52, size: 64, offset: 2240)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3276, file: !234, line: 124, baseType: !52, size: 64, offset: 2304)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3276, file: !234, line: 132, baseType: !52, size: 64, offset: 2368)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3276, file: !234, line: 133, baseType: !52, size: 64, offset: 2432)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3276, file: !234, line: 135, baseType: !3297, size: 384, offset: 2496)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3298, line: 76, size: 384, elements: !3299)
!3298 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3299 = !{!3300, !3301, !3302}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3297, file: !3298, line: 78, baseType: !919, size: 320)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3297, file: !3298, line: 80, baseType: !13, size: 32, offset: 320)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3297, file: !3298, line: 81, baseType: !463, size: 32, offset: 352)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3276, file: !234, line: 136, baseType: !35, size: 32, offset: 2880)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3276, file: !234, line: 137, baseType: !233, size: 32, offset: 2912)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3276, file: !234, line: 139, baseType: !72, size: 32, offset: 2944)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3276, file: !234, line: 140, baseType: !110, size: 128, offset: 3008)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3276, file: !234, line: 141, baseType: !2524, size: 704, offset: 3136)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3276, file: !234, line: 142, baseType: !2524, size: 704, offset: 3840)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3276, file: !234, line: 144, baseType: !110, size: 128, offset: 4544)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3261, file: !234, line: 187, baseType: !110, size: 128, offset: 5504)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3261, file: !234, line: 193, baseType: !67, size: 192, offset: 5632)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3261, file: !234, line: 195, baseType: !2911, size: 64, offset: 5824)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3261, file: !234, line: 196, baseType: !3314, size: 512, offset: 5888)
!3314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !1459)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3261, file: !234, line: 197, baseType: !2911, size: 64, offset: 6400)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3261, file: !234, line: 199, baseType: !2467, size: 320, offset: 6464)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3261, file: !234, line: 202, baseType: !1127, size: 64, offset: 6784)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1371, file: !170, line: 1228, baseType: !3319, size: 64, offset: 1792)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !170, line: 1228, flags: DIFlagFwdDecl)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1371, file: !170, line: 1229, baseType: !720, size: 128, offset: 1856)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1371, file: !170, line: 1230, baseType: !13, size: 32, offset: 1984)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1371, file: !170, line: 1231, baseType: !3324, size: 2496, offset: 2048)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !175, line: 521, size: 2496, elements: !3325)
!3325 = !{!3326, !3327, !3328, !3330, !3362}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3324, file: !175, line: 522, baseType: !13, size: 32)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3324, file: !175, line: 523, baseType: !801, size: 320, offset: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3324, file: !175, line: 524, baseType: !3329, size: 192, offset: 384)
!3329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1162, size: 192, elements: !704)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3324, file: !175, line: 525, baseType: !3331, size: 1728, offset: 576)
!3331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3332, size: 1728, elements: !704)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !175, line: 222, size: 576, elements: !3333)
!3333 = !{!3334, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3332, file: !175, line: 223, baseType: !3335, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !175, line: 445, size: 256, elements: !3337)
!3337 = !{!3338, !3339, !3352, !3353}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3336, file: !175, line: 446, baseType: !35, size: 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3336, file: !175, line: 447, baseType: !3340, size: 64, offset: 64)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3342)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !175, line: 312, size: 512, elements: !3343)
!3343 = !{!3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3342, file: !175, line: 313, baseType: !2616, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3342, file: !175, line: 314, baseType: !2616, size: 64, offset: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3342, file: !175, line: 315, baseType: !2616, size: 64, offset: 128)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3342, file: !175, line: 316, baseType: !2616, size: 64, offset: 192)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3342, file: !175, line: 317, baseType: !2725, size: 64, offset: 256)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3342, file: !175, line: 318, baseType: !2725, size: 64, offset: 320)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3342, file: !175, line: 319, baseType: !2725, size: 64, offset: 384)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3342, file: !175, line: 320, baseType: !2755, size: 64, offset: 448)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3336, file: !175, line: 448, baseType: !1403, size: 64, offset: 128)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3336, file: !175, line: 449, baseType: !3335, size: 64, offset: 192)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3332, file: !175, line: 224, baseType: !35, size: 32, offset: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3332, file: !175, line: 226, baseType: !110, size: 128, offset: 128)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3332, file: !175, line: 227, baseType: !52, size: 64, offset: 256)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3332, file: !175, line: 228, baseType: !13, size: 32, offset: 320)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3332, file: !175, line: 229, baseType: !13, size: 32, offset: 352)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3332, file: !175, line: 230, baseType: !2693, size: 64, offset: 384)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3332, file: !175, line: 231, baseType: !2693, size: 64, offset: 448)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3332, file: !175, line: 232, baseType: !33, size: 64, offset: 512)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3324, file: !175, line: 526, baseType: !3363, size: 192, offset: 2304)
!3363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3340, size: 192, elements: !704)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1371, file: !170, line: 1233, baseType: !3365, size: 2368, offset: 4544)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !170, line: 1184, size: 2368, elements: !3366)
!3366 = !{!3367, !3368, !3369}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3365, file: !170, line: 1185, baseType: !39, size: 16)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3365, file: !170, line: 1186, baseType: !39, size: 16, offset: 16)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3365, file: !170, line: 1187, baseType: !3370, size: 2304, offset: 64)
!3370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3371, size: 2304, elements: !704)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3372, line: 12, size: 768, elements: !3373)
!3372 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3373 = !{!3374, !3382, !3383, !3384, !3385}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3371, file: !3372, line: 13, baseType: !3375, size: 384)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3376, line: 17, size: 384, elements: !3377)
!3376 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3377 = !{!3378, !3379, !3380, !3381}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3375, file: !3376, line: 18, baseType: !35, size: 32)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3375, file: !3376, line: 19, baseType: !35, size: 32, offset: 32)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3375, file: !3376, line: 20, baseType: !67, size: 192, offset: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3375, file: !3376, line: 22, baseType: !278, size: 128, align: 64, offset: 256)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3371, file: !3372, line: 14, baseType: !2319, size: 64, offset: 384)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3371, file: !3372, line: 15, baseType: !317, size: 64, offset: 448)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3371, file: !3372, line: 16, baseType: !67, size: 192, offset: 512)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3371, file: !3372, line: 17, baseType: !62, size: 32, offset: 704)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1371, file: !170, line: 1240, baseType: !33, size: 64, offset: 6912)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1371, file: !170, line: 1243, baseType: !332, size: 32, offset: 6976)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1371, file: !170, line: 1245, baseType: !817, size: 64, offset: 7040)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1371, file: !170, line: 1246, baseType: !817, size: 64, offset: 7104)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1371, file: !170, line: 1248, baseType: !333, size: 32, offset: 7168)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1371, file: !170, line: 1249, baseType: !3392, size: 64, offset: 7232)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !170, line: 634, flags: DIFlagFwdDecl)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1371, file: !170, line: 1252, baseType: !3395, size: 256, offset: 7296)
!3395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !3396)
!3396 = !{!3397}
!3397 = !DISubrange(count: 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1371, file: !170, line: 1253, baseType: !3399, size: 128, offset: 7552)
!3399 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3400, line: 21, baseType: !3401)
!3400 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3400, line: 19, size: 128, elements: !3402)
!3402 = !{!3403}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3401, file: !3400, line: 20, baseType: !3404, size: 128)
!3404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 128, elements: !3405)
!3405 = !{!3406}
!3406 = !DISubrange(count: 16)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1371, file: !170, line: 1255, baseType: !13, size: 32, offset: 7680)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1371, file: !170, line: 1261, baseType: !668, size: 256, offset: 7744)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1371, file: !170, line: 1267, baseType: !30, size: 64, offset: 8000)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1371, file: !170, line: 1269, baseType: !3411, size: 64, offset: 8064)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3413)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1129, line: 128, size: 1024, align: 512, elements: !3414)
!3414 = !{!3415, !3419, !3420, !3427, !3433, !3437, !3441, !3445, !3446, !3450, !3454, !3459, !3463}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3413, file: !1129, line: 129, baseType: !3416, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!35, !1127, !13}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3413, file: !1129, line: 130, baseType: !3416, size: 64, offset: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3413, file: !1129, line: 131, baseType: !3421, size: 64, offset: 128)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!35, !3424, !3426}
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1128)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3413, file: !1129, line: 132, baseType: !3428, size: 64, offset: 192)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!35, !3424, !13, !30, !3431}
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1147)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3413, file: !1129, line: 134, baseType: !3434, size: 64, offset: 256)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!35, !3424}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3413, file: !1129, line: 135, baseType: !3438, size: 64, offset: 320)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!35, !1127}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3413, file: !1129, line: 136, baseType: !3442, size: 64, offset: 384)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{null, !1127}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3413, file: !1129, line: 137, baseType: !3442, size: 64, offset: 448)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3413, file: !1129, line: 138, baseType: !3447, size: 64, offset: 512)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{null, !1127, !1162}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3413, file: !1129, line: 139, baseType: !3451, size: 64, offset: 576)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!871, !1127, !871, !35}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3413, file: !1129, line: 140, baseType: !3455, size: 64, offset: 640)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!1122, !3458}
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3413, file: !1129, line: 141, baseType: !3460, size: 64, offset: 704)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!35, !1283, !860}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3413, file: !1129, line: 142, baseType: !3464, size: 64, offset: 768)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!1127, !1127, !3467}
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1163)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1371, file: !170, line: 1271, baseType: !3470, size: 448, offset: 8128)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2708, line: 63, size: 448, elements: !3471)
!3471 = !{!3472, !3477, !3478, !3479, !3480, !3481, !3482}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3470, file: !2708, line: 64, baseType: !3473, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!52, !3476, !2706}
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3470, file: !2708, line: 66, baseType: !3473, size: 64, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3470, file: !2708, line: 69, baseType: !1091, size: 64, offset: 128)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3470, file: !2708, line: 70, baseType: !35, size: 32, offset: 192)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3470, file: !2708, line: 71, baseType: !13, size: 32, offset: 224)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3470, file: !2708, line: 74, baseType: !110, size: 128, offset: 256)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3470, file: !2708, line: 85, baseType: !3483, size: 64, offset: 384)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1371, file: !170, line: 1274, baseType: !661, size: 64, offset: 8576)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1371, file: !170, line: 1280, baseType: !661, size: 64, offset: 8640)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1371, file: !170, line: 1283, baseType: !35, size: 32, offset: 8704)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1371, file: !170, line: 1286, baseType: !2025, size: 32, offset: 8736)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1371, file: !170, line: 1289, baseType: !2529, size: 64, offset: 8768)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1371, file: !170, line: 1290, baseType: !716, size: 64, offset: 8832)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1371, file: !170, line: 1297, baseType: !944, size: 64, offset: 8896)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1371, file: !170, line: 1304, baseType: !3492, size: 64, offset: 8960)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3493, line: 49, size: 64, elements: !3494)
!3493 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3494 = !{!3495}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3492, file: !3493, line: 50, baseType: !3496, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3493, line: 41, size: 512, align: 512, elements: !3498)
!3498 = !{!3499, !3500, !3505}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3497, file: !3493, line: 43, baseType: !72, size: 32)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3497, file: !3493, line: 45, baseType: !3501, size: 192, offset: 64)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3493, line: 29, size: 192, elements: !3502)
!3502 = !{!3503, !3504}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3501, file: !3493, line: 30, baseType: !110, size: 128)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3501, file: !3493, line: 32, baseType: !1091, size: 64, offset: 128)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3497, file: !3493, line: 46, baseType: !1091, size: 64, offset: 256)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1371, file: !170, line: 1305, baseType: !3492, size: 64, offset: 9024)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1371, file: !170, line: 1306, baseType: !278, size: 128, align: 64, offset: 9088)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1371, file: !170, line: 1307, baseType: !993, size: 256, offset: 9216)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1371, file: !170, line: 1309, baseType: !668, size: 256, offset: 9472)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1371, file: !170, line: 1314, baseType: !35, size: 32, offset: 9728)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1371, file: !170, line: 1317, baseType: !72, size: 32, align: 512, offset: 10240)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1371, file: !170, line: 1318, baseType: !110, size: 128, offset: 10304)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1371, file: !170, line: 1320, baseType: !72, size: 32, offset: 10432)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1371, file: !170, line: 1321, baseType: !110, size: 128, offset: 10496)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1163, file: !170, line: 656, baseType: !1520, size: 64, offset: 512)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1163, file: !170, line: 659, baseType: !33, size: 64, offset: 576)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1163, file: !170, line: 663, baseType: !52, size: 64, offset: 640)
!3518 = !DIDerivedType(tag: DW_TAG_member, scope: !1163, file: !170, line: 671, baseType: !3519, size: 32, offset: 704)
!3519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1163, file: !170, line: 671, size: 32, elements: !3520)
!3520 = !{!3521, !3523}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3519, file: !170, line: 672, baseType: !3522, size: 32)
!3522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3519, file: !170, line: 673, baseType: !13, size: 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1163, file: !170, line: 675, baseType: !1236, size: 32, offset: 736)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1163, file: !170, line: 676, baseType: !54, size: 64, offset: 768)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1163, file: !170, line: 677, baseType: !1272, size: 128, offset: 832)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1163, file: !170, line: 678, baseType: !1272, size: 128, offset: 960)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1163, file: !170, line: 679, baseType: !1272, size: 128, offset: 1088)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1163, file: !170, line: 680, baseType: !72, size: 32, offset: 1216)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1163, file: !170, line: 681, baseType: !39, size: 16, offset: 1248)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1163, file: !170, line: 682, baseType: !96, size: 8, offset: 1264)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1163, file: !170, line: 683, baseType: !96, size: 8, offset: 1272)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1163, file: !170, line: 684, baseType: !2839, size: 64, offset: 1280)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1163, file: !170, line: 691, baseType: !52, size: 64, offset: 1344)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1163, file: !170, line: 692, baseType: !801, size: 320, offset: 1408)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1163, file: !170, line: 694, baseType: !52, size: 64, offset: 1728)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1163, file: !170, line: 695, baseType: !52, size: 64, offset: 1792)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1163, file: !170, line: 697, baseType: !720, size: 128, offset: 1856)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1163, file: !170, line: 698, baseType: !110, size: 128, offset: 1984)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1163, file: !170, line: 707, baseType: !110, size: 128, offset: 2112)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1163, file: !170, line: 708, baseType: !110, size: 128, offset: 2240)
!3542 = !DIDerivedType(tag: DW_TAG_member, scope: !1163, file: !170, line: 709, baseType: !3543, size: 128, offset: 2368)
!3543 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1163, file: !170, line: 709, size: 128, elements: !3544)
!3544 = !{!3545, !3546}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3543, file: !170, line: 710, baseType: !716, size: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3543, file: !170, line: 711, baseType: !278, size: 128, align: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1163, file: !170, line: 713, baseType: !663, size: 64, offset: 2496)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1163, file: !170, line: 714, baseType: !663, size: 64, offset: 2560)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1163, file: !170, line: 715, baseType: !62, size: 32, offset: 2624)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1163, file: !170, line: 716, baseType: !62, size: 32, offset: 2656)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1163, file: !170, line: 717, baseType: !62, size: 32, offset: 2688)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1163, file: !170, line: 719, baseType: !62, size: 32, offset: 2720)
!3553 = !DIDerivedType(tag: DW_TAG_member, scope: !1163, file: !170, line: 721, baseType: !3554, size: 64, offset: 2752)
!3554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1163, file: !170, line: 721, size: 64, elements: !3555)
!3555 = !{!3556, !3682}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3554, file: !170, line: 722, baseType: !3557, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3559)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !170, line: 1914, size: 2112, elements: !3560)
!3560 = !{!3561, !3562, !3566, !3570, !3574, !3575, !3576, !3582, !3595, !3599, !3603, !3604, !3608, !3609, !3613, !3618, !3619, !3623, !3627, !3633, !3634, !3638, !3639, !3645, !3649, !3650, !3655, !3659, !3663, !3667, !3671, !3672, !3678}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3559, file: !170, line: 1915, baseType: !1403, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3559, file: !170, line: 1916, baseType: !3563, size: 64, offset: 64)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!54, !648, !54, !35}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3559, file: !170, line: 1917, baseType: !3567, size: 64, offset: 128)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!1314, !648, !871, !48, !53}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3559, file: !170, line: 1918, baseType: !3571, size: 64, offset: 192)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!1314, !648, !30, !48, !53}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3559, file: !170, line: 1919, baseType: !1959, size: 64, offset: 256)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3559, file: !170, line: 1920, baseType: !1959, size: 64, offset: 320)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3559, file: !170, line: 1921, baseType: !3577, size: 64, offset: 384)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!35, !1962, !3580, !13}
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !170, line: 53, flags: DIFlagFwdDecl)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3559, file: !170, line: 1923, baseType: !3583, size: 64, offset: 448)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!35, !648, !3586}
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !170, line: 1858, size: 128, elements: !3588)
!3588 = !{!3589, !3594}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3587, file: !170, line: 1859, baseType: !3590, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !170, line: 1855, baseType: !3591)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!860, !3586, !30, !35, !54, !288, !13}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3587, file: !170, line: 1860, baseType: !54, size: 64, offset: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3559, file: !170, line: 1924, baseType: !3596, size: 64, offset: 512)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!2194, !648, !2196}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3559, file: !170, line: 1925, baseType: !3600, size: 64, offset: 576)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!1091, !648, !13, !52}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3559, file: !170, line: 1926, baseType: !3600, size: 64, offset: 640)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3559, file: !170, line: 1927, baseType: !3605, size: 64, offset: 704)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!35, !648, !1650}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3559, file: !170, line: 1928, baseType: !52, size: 64, offset: 768)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3559, file: !170, line: 1929, baseType: !3610, size: 64, offset: 832)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{!35, !1162, !648}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3559, file: !170, line: 1930, baseType: !3614, size: 64, offset: 896)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!35, !648, !3617}
!3617 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !170, line: 1061, baseType: !33)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3559, file: !170, line: 1931, baseType: !3610, size: 64, offset: 960)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3559, file: !170, line: 1932, baseType: !3620, size: 64, offset: 1024)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!35, !648, !54, !54, !35}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3559, file: !170, line: 1933, baseType: !3624, size: 64, offset: 1088)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!35, !35, !648, !35}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3559, file: !170, line: 1934, baseType: !3628, size: 64, offset: 1152)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{!35, !648, !35, !3631}
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !170, line: 1063, flags: DIFlagFwdDecl)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3559, file: !170, line: 1935, baseType: !645, size: 64, offset: 1216)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3559, file: !170, line: 1936, baseType: !3635, size: 64, offset: 1280)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!35, !35}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3559, file: !170, line: 1937, baseType: !3628, size: 64, offset: 1344)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3559, file: !170, line: 1938, baseType: !3640, size: 64, offset: 1408)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{!1314, !3643, !648, !53, !48, !13}
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !323, line: 59, flags: DIFlagFwdDecl)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3559, file: !170, line: 1939, baseType: !3646, size: 64, offset: 1472)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!1314, !648, !53, !3643, !48, !13}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3559, file: !170, line: 1940, baseType: !2015, size: 64, offset: 1536)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3559, file: !170, line: 1941, baseType: !3651, size: 64, offset: 1600)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!35, !648, !35, !3654, !1936}
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3559, file: !170, line: 1942, baseType: !3656, size: 64, offset: 1664)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!1091, !648, !35, !54, !54}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3559, file: !170, line: 1944, baseType: !3660, size: 64, offset: 1728)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{null, !2127, !648}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3559, file: !170, line: 1948, baseType: !3664, size: 64, offset: 1792)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!1314, !648, !54, !648, !54, !48, !13}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3559, file: !170, line: 1950, baseType: !3668, size: 64, offset: 1856)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!54, !648, !54, !648, !54, !54, !13}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3559, file: !170, line: 1953, baseType: !3620, size: 64, offset: 1920)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3559, file: !170, line: 1954, baseType: !3673, size: 64, offset: 1984)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!35, !3676, !13}
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !170, line: 1911, flags: DIFlagFwdDecl)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3559, file: !170, line: 1955, baseType: !3679, size: 64, offset: 2048)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!35, !3676, !3580, !13}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3554, file: !170, line: 723, baseType: !2597, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1163, file: !170, line: 725, baseType: !3684, size: 64, offset: 2816)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !170, line: 725, flags: DIFlagFwdDecl)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1163, file: !170, line: 726, baseType: !1521, size: 1536, align: 64, offset: 2880)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1163, file: !170, line: 727, baseType: !110, size: 128, offset: 4416)
!3688 = !DIDerivedType(tag: DW_TAG_member, scope: !1163, file: !170, line: 728, baseType: !3689, size: 64, offset: 4544)
!3689 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1163, file: !170, line: 728, size: 64, elements: !3690)
!3690 = !{!3691, !3692, !3695, !3696}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3689, file: !170, line: 729, baseType: !3643, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3689, file: !170, line: 730, baseType: !3693, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !170, line: 730, flags: DIFlagFwdDecl)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3689, file: !170, line: 731, baseType: !871, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3689, file: !170, line: 732, baseType: !13, size: 32)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1163, file: !170, line: 735, baseType: !333, size: 32, offset: 4608)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1163, file: !170, line: 738, baseType: !333, size: 32, offset: 4640)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1163, file: !170, line: 739, baseType: !3392, size: 64, offset: 4672)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1163, file: !170, line: 750, baseType: !33, size: 64, offset: 4736)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1128, file: !1129, line: 91, baseType: !3702, size: 256, offset: 448)
!3702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 256, elements: !3396)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1128, file: !1129, line: 94, baseType: !3704, size: 64, offset: 704)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3705, line: 25, size: 64, elements: !3706)
!3705 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3706 = !{!3707}
!3707 = !DIDerivedType(tag: DW_TAG_member, scope: !3704, file: !3705, line: 26, baseType: !3708, size: 64)
!3708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3704, file: !3705, line: 26, size: 64, elements: !3709)
!3709 = !{!3710, !3711}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3708, file: !3705, line: 28, baseType: !289, size: 64, align: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, scope: !3708, file: !3705, line: 30, baseType: !3712, size: 64)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3708, file: !3705, line: 30, size: 64, elements: !3713)
!3713 = !{!3714, !3715}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3712, file: !3705, line: 31, baseType: !72, size: 32)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3712, file: !3705, line: 32, baseType: !35, size: 32, offset: 32)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1128, file: !1129, line: 95, baseType: !3411, size: 64, offset: 768)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1128, file: !1129, line: 96, baseType: !1370, size: 64, offset: 832)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1128, file: !1129, line: 97, baseType: !52, size: 64, offset: 896)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1128, file: !1129, line: 98, baseType: !33, size: 64, offset: 960)
!3720 = !DIDerivedType(tag: DW_TAG_member, scope: !1128, file: !1129, line: 100, baseType: !3721, size: 128, offset: 1024)
!3721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1128, file: !1129, line: 100, size: 128, elements: !3722)
!3722 = !{!3723, !3724}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3721, file: !1129, line: 101, baseType: !110, size: 128)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3721, file: !1129, line: 102, baseType: !3725, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1128, file: !1129, line: 104, baseType: !110, size: 128, offset: 1152)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1128, file: !1129, line: 105, baseType: !110, size: 128, offset: 1280)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1128, file: !1129, line: 113, baseType: !3729, size: 128, offset: 1408)
!3729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1128, file: !1129, line: 109, size: 128, elements: !3730)
!3730 = !{!3731, !3732, !3733}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3729, file: !1129, line: 110, baseType: !720, size: 128)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3729, file: !1129, line: 111, baseType: !1138, size: 128)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3729, file: !1129, line: 112, baseType: !278, size: 128, align: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1123, file: !1124, line: 72, baseType: !1370, size: 64, offset: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1123, file: !1124, line: 73, baseType: !35, size: 32, offset: 128)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1123, file: !1124, line: 74, baseType: !1201, size: 64, offset: 192)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1118, file: !1119, line: 10, baseType: !1127, size: 64, offset: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !649, file: !170, line: 1015, baseType: !1162, size: 64, offset: 1344)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !649, file: !170, line: 1016, baseType: !3557, size: 64, offset: 1408)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !649, file: !170, line: 1018, baseType: !288, size: 64, offset: 1472)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !649, file: !170, line: 1020, baseType: !33, size: 64, offset: 1536)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !649, file: !170, line: 1023, baseType: !33, size: 64, offset: 1600)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !649, file: !170, line: 1027, baseType: !3744, size: 64, offset: 1664)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !649, file: !170, line: 1029, baseType: !1520, size: 64, offset: 1728)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !649, file: !170, line: 1030, baseType: !2025, size: 32, offset: 1792)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !649, file: !170, line: 1031, baseType: !2025, size: 32, offset: 1824)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !624, file: !136, line: 756, baseType: !52, size: 64, offset: 704)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !624, file: !136, line: 757, baseType: !52, size: 64, offset: 768)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !624, file: !136, line: 760, baseType: !52, size: 64, offset: 832)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !624, file: !136, line: 761, baseType: !52, size: 64, offset: 896)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !624, file: !136, line: 763, baseType: !52, size: 64, offset: 960)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !624, file: !136, line: 764, baseType: !3754, size: 64, offset: 1024)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1665, line: 299, baseType: !3756)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1665, line: 299, size: 64, elements: !3757)
!3757 = !{!3758}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3756, file: !1665, line: 299, baseType: !3759, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1670, line: 18, baseType: !52)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !624, file: !136, line: 773, baseType: !62, size: 32, offset: 1088)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !624, file: !136, line: 785, baseType: !62, size: 32, offset: 1120)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !624, file: !136, line: 795, baseType: !3763, size: 64, offset: 1152)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !136, line: 726, size: 128, elements: !3765)
!3765 = !{!3766, !3767}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3764, file: !136, line: 727, baseType: !288, size: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3764, file: !136, line: 728, baseType: !35, size: 32, offset: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !624, file: !136, line: 801, baseType: !52, size: 64, offset: 1216)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !624, file: !136, line: 804, baseType: !661, size: 64, offset: 1280)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !624, file: !136, line: 806, baseType: !35, size: 32, offset: 1344)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !624, file: !136, line: 808, baseType: !72, size: 32, offset: 1376)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !624, file: !136, line: 823, baseType: !801, size: 320, offset: 1408)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !624, file: !136, line: 825, baseType: !110, size: 128, offset: 1728)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !624, file: !136, line: 845, baseType: !35, size: 32, offset: 1856)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !624, file: !136, line: 849, baseType: !52, size: 64, offset: 1920)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !624, file: !136, line: 850, baseType: !52, size: 64, offset: 1984)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !624, file: !136, line: 852, baseType: !52, size: 64, offset: 2048)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !624, file: !136, line: 853, baseType: !52, size: 64, offset: 2112)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !624, file: !136, line: 854, baseType: !663, size: 64, offset: 2176)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !624, file: !136, line: 855, baseType: !52, size: 64, offset: 2240)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !624, file: !136, line: 856, baseType: !52, size: 64, offset: 2304)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !624, file: !136, line: 857, baseType: !52, size: 64, offset: 2368)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !624, file: !136, line: 858, baseType: !52, size: 64, offset: 2432)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !624, file: !136, line: 865, baseType: !494, size: 32, offset: 2496)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !624, file: !136, line: 867, baseType: !72, size: 32, offset: 2528)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !624, file: !136, line: 869, baseType: !52, size: 64, offset: 2560)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !624, file: !136, line: 869, baseType: !52, size: 64, offset: 2624)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !624, file: !136, line: 869, baseType: !52, size: 64, offset: 2688)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !624, file: !136, line: 869, baseType: !52, size: 64, offset: 2752)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !624, file: !136, line: 870, baseType: !52, size: 64, offset: 2816)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !624, file: !136, line: 870, baseType: !52, size: 64, offset: 2880)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !624, file: !136, line: 870, baseType: !52, size: 64, offset: 2944)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !624, file: !136, line: 871, baseType: !52, size: 64, offset: 3008)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !624, file: !136, line: 871, baseType: !52, size: 64, offset: 3072)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !624, file: !136, line: 871, baseType: !52, size: 64, offset: 3136)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !624, file: !136, line: 871, baseType: !52, size: 64, offset: 3200)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !624, file: !136, line: 873, baseType: !3798, size: 3328, offset: 3264)
!3798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 3328, elements: !3799)
!3799 = !{!3800}
!3800 = !DISubrange(count: 52)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !624, file: !136, line: 875, baseType: !3288, size: 1280, offset: 6592)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !624, file: !136, line: 877, baseType: !3803, size: 64, offset: 7872)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !136, line: 877, flags: DIFlagFwdDecl)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !624, file: !136, line: 880, baseType: !3806, size: 1088, offset: 7936)
!3806 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3807, line: 72, baseType: !3808)
!3807 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3807, line: 23, size: 1088, elements: !3809)
!3809 = !{!3810, !3811, !3812, !3813, !3814, !3817, !3818, !3819, !3820, !3845, !3846, !3847}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3808, file: !3807, line: 28, baseType: !288, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3808, file: !3807, line: 38, baseType: !663, size: 64, offset: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3808, file: !3807, line: 40, baseType: !52, size: 64, offset: 128)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3808, file: !3807, line: 43, baseType: !801, size: 320, offset: 192)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3808, file: !3807, line: 44, baseType: !3815, size: 64, offset: 512)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3807, line: 44, flags: DIFlagFwdDecl)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3808, file: !3807, line: 48, baseType: !52, size: 64, offset: 576)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3808, file: !3807, line: 59, baseType: !668, size: 256, offset: 640)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3808, file: !3807, line: 60, baseType: !33, size: 64, offset: 896)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3808, file: !3807, line: 61, baseType: !3821, size: 64, offset: 960)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3823)
!3823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3824, line: 13, size: 1216, elements: !3825)
!3824 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3825 = !{!3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3823, file: !3824, line: 14, baseType: !33, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3823, file: !3824, line: 15, baseType: !52, size: 64, offset: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3823, file: !3824, line: 17, baseType: !52, size: 64, offset: 128)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3823, file: !3824, line: 17, baseType: !52, size: 64, offset: 192)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3823, file: !3824, line: 18, baseType: !52, size: 64, offset: 256)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3823, file: !3824, line: 18, baseType: !52, size: 64, offset: 320)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3823, file: !3824, line: 19, baseType: !2064, size: 64, offset: 384)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3823, file: !3824, line: 21, baseType: !1091, size: 64, offset: 448)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3823, file: !3824, line: 23, baseType: !1091, size: 64, offset: 512)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3823, file: !3824, line: 24, baseType: !1091, size: 64, offset: 576)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3823, file: !3824, line: 25, baseType: !1091, size: 64, offset: 640)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3823, file: !3824, line: 26, baseType: !1091, size: 64, offset: 704)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3823, file: !3824, line: 27, baseType: !1091, size: 64, offset: 768)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3823, file: !3824, line: 28, baseType: !1091, size: 64, offset: 832)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3823, file: !3824, line: 29, baseType: !1091, size: 64, offset: 896)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3823, file: !3824, line: 30, baseType: !1091, size: 64, offset: 960)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3823, file: !3824, line: 31, baseType: !1091, size: 64, offset: 1024)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3823, file: !3824, line: 32, baseType: !1091, size: 64, offset: 1088)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3823, file: !3824, line: 33, baseType: !1091, size: 64, offset: 1152)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3808, file: !3807, line: 63, baseType: !62, size: 32, offset: 1024)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3808, file: !3807, line: 69, baseType: !106, size: 16, offset: 1056)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3808, file: !3807, line: 70, baseType: !2374, size: 16, offset: 1072)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !624, file: !136, line: 882, baseType: !52, size: 64, offset: 9024)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !624, file: !136, line: 885, baseType: !72, size: 32, offset: 9088)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !624, file: !136, line: 886, baseType: !3851, size: 64, offset: 9152)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !136, line: 732, flags: DIFlagFwdDecl)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !624, file: !136, line: 901, baseType: !944, size: 64, offset: 9216)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !624, file: !136, line: 904, baseType: !648, size: 64, offset: 9280)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !624, file: !136, line: 906, baseType: !3856, size: 64, offset: 9344)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !136, line: 906, flags: DIFlagFwdDecl)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !624, file: !136, line: 930, baseType: !62, size: 32, offset: 9408)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !624, file: !136, line: 933, baseType: !62, size: 32, offset: 9440)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !624, file: !136, line: 935, baseType: !3861, size: 64, offset: 9472)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !252, line: 103, size: 64, elements: !3862)
!3862 = !{!3863}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3861, file: !252, line: 104, baseType: !3864, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !252, line: 101, flags: DIFlagFwdDecl)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !624, file: !136, line: 940, baseType: !661, size: 64, offset: 9536)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !624, file: !136, line: 942, baseType: !993, size: 256, offset: 9600)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !621, file: !136, line: 986, baseType: !3869, offset: 10240)
!3869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, elements: !738)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !322, file: !323, line: 882, baseType: !620, size: 64, offset: 9792)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !322, file: !323, line: 884, baseType: !35, size: 32, offset: 9856)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !322, file: !323, line: 885, baseType: !35, size: 32, offset: 9888)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !322, file: !323, line: 886, baseType: !35, size: 32, offset: 9920)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !322, file: !323, line: 888, baseType: !35, size: 32, offset: 9952)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !322, file: !323, line: 890, baseType: !52, size: 64, offset: 9984)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !322, file: !323, line: 893, baseType: !13, size: 32, offset: 10048)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !322, file: !323, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !322, file: !323, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !322, file: !323, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !322, file: !323, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !322, file: !323, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !322, file: !323, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !322, file: !323, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !322, file: !323, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !322, file: !323, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !322, file: !323, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !322, file: !323, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !322, file: !323, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !322, file: !323, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !322, file: !323, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !322, file: !323, line: 969, baseType: !52, size: 64, offset: 10176)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !322, file: !323, line: 971, baseType: !3893, size: 448, offset: 10240)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !246, line: 25, size: 448, elements: !3894)
!3894 = !{!3895, !3896, !3901}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3893, file: !246, line: 26, baseType: !52, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3893, file: !246, line: 27, baseType: !3897, size: 64, offset: 64)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!1091, !3900}
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, scope: !3893, file: !246, line: 28, baseType: !3902, size: 320, offset: 128)
!3902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3893, file: !246, line: 28, size: 320, elements: !3903)
!3903 = !{!3904, !3914, !3939}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3902, file: !246, line: 37, baseType: !3905, size: 320)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3902, file: !246, line: 30, size: 320, elements: !3906)
!3906 = !{!3907, !3909, !3910, !3911, !3912, !3913}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3905, file: !246, line: 31, baseType: !3908, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3905, file: !246, line: 32, baseType: !332, size: 32, offset: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3905, file: !246, line: 33, baseType: !332, size: 32, offset: 96)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3905, file: !246, line: 34, baseType: !332, size: 32, offset: 128)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3905, file: !246, line: 35, baseType: !288, size: 64, offset: 192)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3905, file: !246, line: 36, baseType: !3908, size: 64, offset: 256)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3902, file: !246, line: 47, baseType: !3915, size: 192)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3902, file: !246, line: 39, size: 192, elements: !3916)
!3916 = !{!3917, !3918, !3919, !3938}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3915, file: !246, line: 40, baseType: !486, size: 32)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3915, file: !246, line: 41, baseType: !245, size: 32, offset: 32)
!3919 = !DIDerivedType(tag: DW_TAG_member, scope: !3915, file: !246, line: 42, baseType: !3920, size: 64, offset: 64)
!3920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3915, file: !246, line: 42, size: 64, elements: !3921)
!3921 = !{!3922, !3930}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3920, file: !246, line: 43, baseType: !3923, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3925, line: 7, size: 128, elements: !3926)
!3925 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3926 = !{!3927, !3929}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3924, file: !3925, line: 8, baseType: !3928, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !50, line: 93, baseType: !56)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3924, file: !3925, line: 9, baseType: !56, size: 64, offset: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3920, file: !246, line: 44, baseType: !3931, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3933, line: 7, size: 64, elements: !3934)
!3933 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3934 = !{!3935, !3937}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3932, file: !3933, line: 8, baseType: !3936, size: 32)
!3936 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3933, line: 5, baseType: !793)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3932, file: !3933, line: 9, baseType: !793, size: 32, offset: 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3915, file: !246, line: 46, baseType: !288, size: 64, offset: 128)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3902, file: !246, line: 55, baseType: !3940, size: 256)
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3902, file: !246, line: 49, size: 256, elements: !3941)
!3941 = !{!3942, !3945, !3946, !3947, !3948}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3940, file: !246, line: 50, baseType: !3943, size: 64)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !246, line: 14, flags: DIFlagFwdDecl)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3940, file: !246, line: 51, baseType: !35, size: 32, offset: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3940, file: !246, line: 52, baseType: !35, size: 32, offset: 96)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3940, file: !246, line: 53, baseType: !52, size: 64, offset: 128)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3940, file: !246, line: 54, baseType: !52, size: 64, offset: 192)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !322, file: !323, line: 973, baseType: !3950, size: 32, offset: 10688)
!3950 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !38, line: 27, baseType: !3951)
!3951 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !50, line: 28, baseType: !35)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !322, file: !323, line: 974, baseType: !3950, size: 32, offset: 10720)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !322, file: !323, line: 978, baseType: !52, size: 64, offset: 10752)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !322, file: !323, line: 987, baseType: !321, size: 64, offset: 10816)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !322, file: !323, line: 990, baseType: !321, size: 64, offset: 10880)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !322, file: !323, line: 995, baseType: !110, size: 128, offset: 10944)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !322, file: !323, line: 996, baseType: !110, size: 128, offset: 11072)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !322, file: !323, line: 997, baseType: !321, size: 64, offset: 11200)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !322, file: !323, line: 1005, baseType: !110, size: 128, offset: 11264)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !322, file: !323, line: 1006, baseType: !110, size: 128, offset: 11392)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !322, file: !323, line: 1009, baseType: !708, size: 64, offset: 11520)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !322, file: !323, line: 1010, baseType: !3963, size: 512, offset: 11584)
!3963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, size: 512, elements: !725)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !322, file: !323, line: 1011, baseType: !110, size: 128, offset: 12096)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !322, file: !323, line: 1012, baseType: !110, size: 128, offset: 12224)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !322, file: !323, line: 1014, baseType: !1031, size: 64, offset: 12352)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !322, file: !323, line: 1017, baseType: !2367, size: 64, offset: 12416)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !322, file: !323, line: 1020, baseType: !2367, size: 64, offset: 12480)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !322, file: !323, line: 1023, baseType: !33, size: 64, offset: 12544)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !322, file: !323, line: 1025, baseType: !288, size: 64, offset: 12608)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !322, file: !323, line: 1026, baseType: !288, size: 64, offset: 12672)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !322, file: !323, line: 1031, baseType: !288, size: 64, offset: 12736)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !322, file: !323, line: 1032, baseType: !3974, size: 192, offset: 12800)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !323, line: 324, size: 192, elements: !3975)
!3975 = !{!3976, !3977, !3978}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3974, file: !323, line: 326, baseType: !288, size: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3974, file: !323, line: 327, baseType: !288, size: 64, offset: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3974, file: !323, line: 328, baseType: !463, size: 32, offset: 128)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !322, file: !323, line: 1041, baseType: !52, size: 64, offset: 12992)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !322, file: !323, line: 1042, baseType: !52, size: 64, offset: 13056)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !322, file: !323, line: 1045, baseType: !288, size: 64, offset: 13120)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !322, file: !323, line: 1048, baseType: !288, size: 64, offset: 13184)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !322, file: !323, line: 1051, baseType: !52, size: 64, offset: 13248)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !322, file: !323, line: 1052, baseType: !52, size: 64, offset: 13312)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !322, file: !323, line: 1055, baseType: !3986, size: 640, offset: 13376)
!3986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3987, line: 132, size: 640, elements: !3988)
!3987 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3988 = !{!3989, !3995, !3996}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3986, file: !3987, line: 133, baseType: !3990, size: 576)
!3990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3991, size: 576, elements: !704)
!3991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3987, line: 117, size: 192, elements: !3992)
!3992 = !{!3993, !3994}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3991, file: !3987, line: 118, baseType: !288, size: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3991, file: !3987, line: 119, baseType: !500, size: 128, offset: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3986, file: !3987, line: 134, baseType: !13, size: 32, offset: 576)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3986, file: !3987, line: 135, baseType: !13, size: 32, offset: 608)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !322, file: !323, line: 1058, baseType: !3998, size: 448, offset: 14016)
!3998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3987, line: 144, size: 448, elements: !3999)
!3999 = !{!4000, !4001, !4002}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3998, file: !3987, line: 145, baseType: !278, size: 128, align: 64)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3998, file: !3987, line: 146, baseType: !668, size: 256, offset: 128)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3998, file: !3987, line: 147, baseType: !13, size: 32, offset: 384)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !322, file: !323, line: 1064, baseType: !752, size: 64, offset: 14464)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !322, file: !323, line: 1067, baseType: !752, size: 64, offset: 14528)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !322, file: !323, line: 1070, baseType: !752, size: 64, offset: 14592)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !322, file: !323, line: 1074, baseType: !785, size: 64, offset: 14656)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !322, file: !323, line: 1084, baseType: !4008, size: 128, offset: 14720)
!4008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !3405)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !322, file: !323, line: 1086, baseType: !4010, size: 64, offset: 14848)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !323, line: 55, flags: DIFlagFwdDecl)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !322, file: !323, line: 1089, baseType: !4013, size: 64, offset: 14912)
!4013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !4014, line: 12, size: 64, elements: !4015)
!4014 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!4015 = !{!4016}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !4013, file: !4014, line: 13, baseType: !4017, size: 64)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !4014, line: 8, flags: DIFlagFwdDecl)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !322, file: !323, line: 1090, baseType: !4020, size: 128, offset: 14976)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !4021, line: 13, size: 128, elements: !4022)
!4021 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!4022 = !{!4023}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !4020, file: !4021, line: 14, baseType: !110, size: 128)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !322, file: !323, line: 1097, baseType: !4025, size: 64, offset: 15104)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !323, line: 50, flags: DIFlagFwdDecl)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !322, file: !323, line: 1100, baseType: !4028, size: 64, offset: 15168)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !323, line: 1100, flags: DIFlagFwdDecl)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !322, file: !323, line: 1103, baseType: !4031, size: 64, offset: 15232)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !323, line: 53, flags: DIFlagFwdDecl)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !322, file: !323, line: 1107, baseType: !4034, size: 64, offset: 15296)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !4036, line: 31, size: 576, elements: !4037)
!4036 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!4037 = !{!4038, !4039, !4042, !4045, !4048, !4049, !4052, !4055, !4056}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4035, file: !4036, line: 32, baseType: !338, size: 32)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !4035, file: !4036, line: 33, baseType: !4040, size: 64, offset: 64)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !4036, line: 9, flags: DIFlagFwdDecl)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !4035, file: !4036, line: 34, baseType: !4043, size: 64, offset: 128)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !4036, line: 10, flags: DIFlagFwdDecl)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !4035, file: !4036, line: 35, baseType: !4046, size: 64, offset: 192)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !4036, line: 8, flags: DIFlagFwdDecl)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !4035, file: !4036, line: 36, baseType: !736, size: 64, offset: 256)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !4035, file: !4036, line: 37, baseType: !4050, size: 64, offset: 320)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !787, line: 34, flags: DIFlagFwdDecl)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !4035, file: !4036, line: 38, baseType: !4053, size: 64, offset: 384)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !4036, line: 38, flags: DIFlagFwdDecl)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !4035, file: !4036, line: 39, baseType: !4053, size: 64, offset: 448)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !4035, file: !4036, line: 40, baseType: !4057, size: 64, offset: 512)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !4059, line: 771, size: 384, elements: !4060)
!4059 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!4060 = !{!4061, !4062, !4063, !4064}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4058, file: !4059, line: 772, baseType: !977, size: 192)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !4058, file: !4059, line: 773, baseType: !944, size: 64, offset: 192)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !4058, file: !4059, line: 774, baseType: !1076, size: 64, offset: 256)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !4058, file: !4059, line: 775, baseType: !4065, size: 64, offset: 320)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !4067, line: 209, size: 4736, elements: !4068)
!4067 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!4068 = !{!4069, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4066, file: !4067, line: 215, baseType: !4070, size: 896)
!4070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4071, size: 896, elements: !4128)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !4067, line: 152, size: 1600, elements: !4073)
!4073 = !{!4074, !4179, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4303}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4072, file: !4067, line: 154, baseType: !4075, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !4067, line: 389, size: 7872, elements: !4077)
!4077 = !{!4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4097, !4098, !4102, !4103, !4104, !4105, !4106, !4107, !4125, !4126, !4130, !4131, !4132, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4166, !4169, !4170, !4177}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4076, file: !4067, line: 391, baseType: !4072, size: 1600)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4076, file: !4067, line: 393, baseType: !52, size: 64, offset: 1600)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4076, file: !4067, line: 401, baseType: !35, size: 32, offset: 1664)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !4076, file: !4067, line: 404, baseType: !35, size: 32, offset: 1696)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !4076, file: !4067, line: 417, baseType: !35, size: 32, offset: 1728)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !4076, file: !4067, line: 418, baseType: !35, size: 32, offset: 1760)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !4076, file: !4067, line: 419, baseType: !35, size: 32, offset: 1792)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !4076, file: !4067, line: 432, baseType: !35, size: 32, offset: 1824)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !4076, file: !4067, line: 433, baseType: !35, size: 32, offset: 1856)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !4076, file: !4067, line: 434, baseType: !35, size: 32, offset: 1888)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !4076, file: !4067, line: 436, baseType: !35, size: 32, offset: 1920)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !4076, file: !4067, line: 439, baseType: !13, size: 32, offset: 1952)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4076, file: !4067, line: 441, baseType: !2082, size: 64, offset: 1984)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !4076, file: !4067, line: 442, baseType: !4092, size: 448, offset: 2048)
!4092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !4067, line: 138, size: 448, elements: !4093)
!4093 = !{!4094, !4095, !4096}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4092, file: !4067, line: 140, baseType: !2082, size: 64)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !4092, file: !4067, line: 141, baseType: !52, size: 64, offset: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !4092, file: !4067, line: 142, baseType: !2467, size: 320, offset: 128)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !4076, file: !4067, line: 443, baseType: !4092, size: 448, offset: 2496)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !4076, file: !4067, line: 446, baseType: !4099, offset: 2944)
!4099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4092, elements: !4100)
!4100 = !{!4101}
!4101 = !DISubrange(count: 0)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !4076, file: !4067, line: 455, baseType: !106, size: 16, offset: 2944)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !4076, file: !4067, line: 456, baseType: !106, size: 16, offset: 2960)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !4076, file: !4067, line: 457, baseType: !106, size: 16, offset: 2976)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !4076, file: !4067, line: 458, baseType: !106, size: 16, offset: 2992)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4076, file: !4067, line: 461, baseType: !4070, size: 896, offset: 3008)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4076, file: !4067, line: 463, baseType: !4108, size: 64, offset: 3904)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !4067, line: 537, size: 41664, elements: !4110)
!4110 = !{!4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4124}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !4109, file: !4067, line: 538, baseType: !2102, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !4109, file: !4067, line: 541, baseType: !13, size: 32, offset: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !4109, file: !4067, line: 544, baseType: !35, size: 32, offset: 96)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !4109, file: !4067, line: 547, baseType: !110, size: 128, offset: 128)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4109, file: !4067, line: 548, baseType: !278, size: 128, align: 64, offset: 256)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !4109, file: !4067, line: 555, baseType: !4076, size: 7872, offset: 384)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !4109, file: !4067, line: 558, baseType: !4075, size: 64, offset: 8256)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !4109, file: !4067, line: 561, baseType: !62, size: 32, offset: 8320)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4109, file: !4067, line: 564, baseType: !13, size: 32, offset: 8352)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !4109, file: !4067, line: 567, baseType: !4121, size: 32768, offset: 8384)
!4121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !4122)
!4122 = !{!4123}
!4123 = !DISubrange(count: 4096)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4109, file: !4067, line: 570, baseType: !3314, size: 512, offset: 41152)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !4076, file: !4067, line: 469, baseType: !110, size: 128, offset: 3968)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !4076, file: !4067, line: 478, baseType: !4127, size: 1792, offset: 4096)
!4127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 1792, elements: !4128)
!4128 = !{!4129}
!4129 = !DISubrange(count: 14)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !4076, file: !4067, line: 487, baseType: !4075, size: 64, offset: 5888)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !4076, file: !4067, line: 488, baseType: !4075, size: 64, offset: 5952)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !4076, file: !4067, line: 491, baseType: !4133, size: 64, offset: 6016)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !4067, line: 327, size: 896, elements: !4135)
!4135 = !{!4136, !4139, !4149, !4150, !4151, !4152, !4153}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !4134, file: !4067, line: 332, baseType: !4137)
!4137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4138, line: 64, elements: !641)
!4138 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4134, file: !4067, line: 333, baseType: !4140, size: 192)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !4067, line: 299, size: 192, elements: !4141)
!4141 = !{!4142}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !4140, file: !4067, line: 300, baseType: !4143, size: 192)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !4144, line: 17, size: 192, elements: !4145)
!4144 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!4145 = !{!4146, !4147, !4148}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4143, file: !4144, line: 18, baseType: !288, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4143, file: !4144, line: 19, baseType: !288, size: 64, offset: 64)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4143, file: !4144, line: 20, baseType: !290, size: 64, offset: 128)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4134, file: !4067, line: 339, baseType: !4140, size: 192, offset: 192)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !4134, file: !4067, line: 347, baseType: !4140, size: 192, offset: 384)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !4134, file: !4067, line: 353, baseType: !4140, size: 192, offset: 576)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !4134, file: !4067, line: 366, baseType: !4075, size: 64, offset: 768)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !4134, file: !4067, line: 367, baseType: !4075, size: 64, offset: 832)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !4076, file: !4067, line: 492, baseType: !110, size: 128, offset: 6080)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4076, file: !4067, line: 495, baseType: !4140, size: 192, offset: 6208)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4076, file: !4067, line: 496, baseType: !4140, size: 192, offset: 6400)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4076, file: !4067, line: 497, baseType: !3974, size: 192, offset: 6592)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !4076, file: !4067, line: 503, baseType: !110, size: 128, offset: 6784)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !4076, file: !4067, line: 504, baseType: !668, size: 256, offset: 6912)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !4076, file: !4067, line: 507, baseType: !67, size: 192, offset: 7168)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !4076, file: !4067, line: 510, baseType: !993, size: 256, offset: 7360)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !4076, file: !4067, line: 513, baseType: !4163, size: 64, offset: 7616)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !4165, line: 214, elements: !641)
!4165 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !4076, file: !4067, line: 516, baseType: !4167, offset: 7680)
!4167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !4168, line: 76, elements: !641)
!4168 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !4076, file: !4067, line: 519, baseType: !62, size: 32, offset: 7680)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !4076, file: !4067, line: 522, baseType: !4171, size: 128, offset: 7712)
!4171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !4067, line: 370, size: 128, elements: !4172)
!4172 = !{!4173, !4174, !4175, !4176}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4171, file: !4067, line: 372, baseType: !860, size: 8)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !4171, file: !4067, line: 375, baseType: !35, size: 32, offset: 32)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !4171, file: !4067, line: 380, baseType: !35, size: 32, offset: 64)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !4171, file: !4067, line: 386, baseType: !35, size: 32, offset: 96)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !4076, file: !4067, line: 529, baseType: !4178, offset: 7872)
!4178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4075, elements: !738)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4072, file: !4067, line: 157, baseType: !4180, size: 64, offset: 64)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !4067, line: 669, size: 1984, elements: !4182)
!4182 = !{!4183, !4187, !4191, !4195, !4196, !4197, !4198, !4202, !4206, !4207, !4213, !4217, !4218, !4219, !4223, !4227, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4248, !4249, !4286, !4287}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !4181, file: !4067, line: 670, baseType: !4184, size: 64)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{!4071, !4071}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !4181, file: !4067, line: 671, baseType: !4188, size: 64, offset: 64)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!35, !4071}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !4181, file: !4067, line: 672, baseType: !4192, size: 64, offset: 128)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{null, !4071}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !4181, file: !4067, line: 673, baseType: !4192, size: 64, offset: 192)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !4181, file: !4067, line: 674, baseType: !4192, size: 64, offset: 256)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !4181, file: !4067, line: 675, baseType: !4192, size: 64, offset: 320)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !4181, file: !4067, line: 676, baseType: !4199, size: 64, offset: 384)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{null, !4071, !35}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !4181, file: !4067, line: 677, baseType: !4203, size: 64, offset: 448)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!35, !2127, !4071}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !4181, file: !4067, line: 679, baseType: !4203, size: 64, offset: 512)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !4181, file: !4067, line: 682, baseType: !4208, size: 64, offset: 576)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!35, !4211}
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !4067, line: 30, flags: DIFlagFwdDecl)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !4181, file: !4067, line: 683, baseType: !4214, size: 64, offset: 640)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{null, !4211}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4181, file: !4067, line: 684, baseType: !4214, size: 64, offset: 704)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !4181, file: !4067, line: 685, baseType: !2571, size: 64, offset: 768)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !4181, file: !4067, line: 686, baseType: !4220, size: 64, offset: 832)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!35, !321, !4065}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !4181, file: !4067, line: 688, baseType: !4224, size: 64, offset: 896)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{null, !321, !4065}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !4181, file: !4067, line: 689, baseType: !4228, size: 64, offset: 960)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{null, !321}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4181, file: !4067, line: 690, baseType: !4228, size: 64, offset: 1024)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4181, file: !4067, line: 691, baseType: !4228, size: 64, offset: 1088)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4181, file: !4067, line: 692, baseType: !4192, size: 64, offset: 1152)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4181, file: !4067, line: 694, baseType: !860, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !4181, file: !4067, line: 707, baseType: !860, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4181, file: !4067, line: 719, baseType: !860, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4181, file: !4067, line: 722, baseType: !35, size: 32, offset: 1248)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4181, file: !4067, line: 723, baseType: !30, size: 64, offset: 1280)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !4181, file: !4067, line: 726, baseType: !30, size: 64, offset: 1344)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4181, file: !4067, line: 729, baseType: !4108, size: 64, offset: 1408)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !4181, file: !4067, line: 732, baseType: !4242, size: 192, offset: 1472)
!4242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4243, line: 19, size: 192, elements: !4244)
!4243 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!4244 = !{!4245, !4246, !4247}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4242, file: !4243, line: 20, baseType: !1361, size: 128)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4242, file: !4243, line: 21, baseType: !13, size: 32, offset: 128)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4242, file: !4243, line: 22, baseType: !13, size: 32, offset: 160)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !4181, file: !4067, line: 738, baseType: !110, size: 128, offset: 1664)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !4181, file: !4067, line: 744, baseType: !4250, size: 64, offset: 1792)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !4067, line: 580, size: 1728, elements: !4252)
!4252 = !{!4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4262, !4263, !4264, !4268, !4272, !4273, !4274, !4275, !4276, !4280, !4284, !4285}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4251, file: !4067, line: 586, baseType: !3314, size: 512)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4251, file: !4067, line: 587, baseType: !52, size: 64, offset: 512)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4251, file: !4067, line: 593, baseType: !48, size: 64, offset: 576)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4251, file: !4067, line: 596, baseType: !13, size: 32, offset: 640)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4251, file: !4067, line: 604, baseType: !13, size: 32, offset: 672)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4251, file: !4067, line: 610, baseType: !4180, size: 64, offset: 704)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4251, file: !4067, line: 611, baseType: !110, size: 128, offset: 768)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4251, file: !4067, line: 612, baseType: !4261, size: 64, offset: 896)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4251, file: !4067, line: 614, baseType: !2118, size: 64, offset: 960)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4251, file: !4067, line: 615, baseType: !2176, size: 64, offset: 1024)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4251, file: !4067, line: 621, baseType: !4265, size: 64, offset: 1088)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!288, !4071, !4250}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4251, file: !4067, line: 625, baseType: !4269, size: 64, offset: 1152)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!382, !4071, !4250}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4251, file: !4067, line: 628, baseType: !2157, size: 64, offset: 1216)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4251, file: !4067, line: 631, baseType: !2145, size: 64, offset: 1280)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4251, file: !4067, line: 632, baseType: !2153, size: 64, offset: 1344)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4251, file: !4067, line: 633, baseType: !2149, size: 64, offset: 1408)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4251, file: !4067, line: 640, baseType: !4277, size: 64, offset: 1472)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!35, !4071, !4250, !288}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4251, file: !4067, line: 645, baseType: !4281, size: 64, offset: 1536)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{!35, !4071, !4250, !382}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4251, file: !4067, line: 654, baseType: !2184, size: 64, offset: 1600)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4251, file: !4067, line: 657, baseType: !2191, size: 64, offset: 1664)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !4181, file: !4067, line: 745, baseType: !4250, size: 64, offset: 1856)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !4181, file: !4067, line: 754, baseType: !13, size: 32, offset: 1920)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4072, file: !4067, line: 160, baseType: !1604, size: 128, offset: 128)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4072, file: !4067, line: 163, baseType: !110, size: 128, offset: 256)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4072, file: !4067, line: 164, baseType: !110, size: 128, offset: 384)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !4072, file: !4067, line: 167, baseType: !110, size: 128, offset: 512)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4072, file: !4067, line: 173, baseType: !35, size: 32, offset: 640)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4072, file: !4067, line: 175, baseType: !13, size: 32, offset: 672)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !4072, file: !4067, line: 183, baseType: !288, size: 64, offset: 704)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !4072, file: !4067, line: 189, baseType: !62, size: 32, offset: 768)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !4072, file: !4067, line: 192, baseType: !993, size: 256, offset: 832)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !4072, file: !4067, line: 193, baseType: !4298, size: 448, offset: 1088)
!4298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !994, line: 120, size: 448, elements: !4299)
!4299 = !{!4300, !4301, !4302}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4298, file: !994, line: 121, baseType: !993, size: 256)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4298, file: !994, line: 122, baseType: !278, size: 128, align: 64, offset: 256)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4298, file: !994, line: 125, baseType: !2529, size: 64, offset: 384)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4072, file: !4067, line: 199, baseType: !4071, size: 64, offset: 1536)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4066, file: !4067, line: 218, baseType: !338, size: 32, offset: 896)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !4066, file: !4067, line: 226, baseType: !4065, size: 64, offset: 960)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !4066, file: !4067, line: 229, baseType: !4075, size: 64, offset: 1024)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !4066, file: !4067, line: 232, baseType: !35, size: 32, offset: 1088)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !4066, file: !4067, line: 241, baseType: !110, size: 128, offset: 1152)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !4066, file: !4067, line: 242, baseType: !110, size: 128, offset: 1280)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !4066, file: !4067, line: 243, baseType: !110, size: 128, offset: 1408)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !4066, file: !4067, line: 246, baseType: !110, size: 128, offset: 1536)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !4066, file: !4067, line: 255, baseType: !4127, size: 1792, offset: 1664)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !4066, file: !4067, line: 258, baseType: !110, size: 128, offset: 3456)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !4066, file: !4067, line: 259, baseType: !110, size: 128, offset: 3584)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !4066, file: !4067, line: 265, baseType: !720, size: 128, offset: 3712)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !4066, file: !4067, line: 271, baseType: !110, size: 128, offset: 3840)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !4066, file: !4067, line: 277, baseType: !110, size: 128, offset: 3968)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !4066, file: !4067, line: 278, baseType: !110, size: 128, offset: 4096)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !4066, file: !4067, line: 279, baseType: !110, size: 128, offset: 4224)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !4066, file: !4067, line: 288, baseType: !4075, size: 64, offset: 4352)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !4066, file: !4067, line: 289, baseType: !4075, size: 64, offset: 4416)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !4066, file: !4067, line: 290, baseType: !4065, size: 64, offset: 4480)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4066, file: !4067, line: 293, baseType: !860, size: 8, offset: 4544)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4066, file: !4067, line: 296, baseType: !278, size: 128, align: 64, offset: 4608)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !322, file: !323, line: 1110, baseType: !4326, size: 64, offset: 15360)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4328, line: 93, size: 8768, elements: !4329)
!4328 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!4329 = !{!4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4378, !4387, !4388, !4390, !4391, !4392, !4395, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4433, !4434, !4441, !4451, !4513, !4514, !4517, !4518, !4519, !4520, !4521, !4522}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4327, file: !4328, line: 94, baseType: !338, size: 32)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4327, file: !4328, line: 95, baseType: !62, size: 32, offset: 32)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4327, file: !4328, line: 96, baseType: !35, size: 32, offset: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !4327, file: !4328, line: 97, baseType: !35, size: 32, offset: 96)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4327, file: !4328, line: 98, baseType: !110, size: 128, offset: 128)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4327, file: !4328, line: 100, baseType: !67, size: 192, offset: 256)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4327, file: !4328, line: 103, baseType: !321, size: 64, offset: 448)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4327, file: !4328, line: 106, baseType: !4338, size: 192, offset: 512)
!4338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !4339, line: 32, size: 192, elements: !4340)
!4339 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!4340 = !{!4341, !4342}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4338, file: !4339, line: 33, baseType: !110, size: 128)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4338, file: !4339, line: 34, baseType: !4343, size: 64, offset: 128)
!4343 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !4344, line: 25, baseType: !4345)
!4344 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!4345 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4344, line: 23, size: 64, elements: !4346)
!4346 = !{!4347}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4345, file: !4344, line: 24, baseType: !571, size: 64)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4327, file: !4328, line: 109, baseType: !716, size: 64, offset: 704)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4327, file: !4328, line: 112, baseType: !35, size: 32, offset: 768)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4327, file: !4328, line: 114, baseType: !35, size: 32, offset: 800)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !4327, file: !4328, line: 115, baseType: !321, size: 64, offset: 832)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4327, file: !4328, line: 118, baseType: !35, size: 32, offset: 896)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4327, file: !4328, line: 119, baseType: !13, size: 32, offset: 928)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !4327, file: !4328, line: 121, baseType: !4355, size: 64, offset: 960)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !4328, line: 80, size: 448, elements: !4357)
!4357 = !{!4358, !4359, !4365}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4356, file: !4328, line: 81, baseType: !62, size: 32)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4356, file: !4328, line: 82, baseType: !4360, size: 128, offset: 64)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !4328, line: 75, size: 128, elements: !4361)
!4361 = !{!4362, !4363}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4360, file: !4328, line: 76, baseType: !321, size: 64)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4360, file: !4328, line: 77, baseType: !4364, size: 64, offset: 64)
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4356, file: !4328, line: 83, baseType: !1032, size: 256, offset: 192)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4327, file: !4328, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4327, file: !4328, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !4327, file: !4328, line: 138, baseType: !13, size: 32, offset: 1056)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4327, file: !4328, line: 139, baseType: !110, size: 128, offset: 1088)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4327, file: !4328, line: 142, baseType: !438, size: 512, offset: 1216)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4327, file: !4328, line: 143, baseType: !446, size: 64, offset: 1728)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4327, file: !4328, line: 150, baseType: !4373, size: 256, offset: 1792)
!4373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4374, size: 256, elements: !2357)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4328, line: 38, size: 128, elements: !4375)
!4375 = !{!4376, !4377}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4374, file: !4328, line: 39, baseType: !288, size: 64)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4374, file: !4328, line: 40, baseType: !288, size: 64, offset: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4327, file: !4328, line: 156, baseType: !4379, size: 192, offset: 2048)
!4379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4328, line: 66, size: 192, elements: !4380)
!4380 = !{!4381}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4379, file: !4328, line: 67, baseType: !4382, size: 192)
!4382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4328, line: 47, size: 192, elements: !4383)
!4383 = !{!4384, !4385, !4386}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4382, file: !4328, line: 48, baseType: !663, size: 64)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4382, file: !4328, line: 49, baseType: !663, size: 64, offset: 64)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4382, file: !4328, line: 50, baseType: !663, size: 64, offset: 128)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4327, file: !4328, line: 160, baseType: !3986, size: 640, offset: 2240)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4327, file: !4328, line: 163, baseType: !4389, size: 256, offset: 2880)
!4389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !708, size: 256, elements: !725)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4327, file: !4328, line: 169, baseType: !708, size: 64, offset: 3136)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4327, file: !4328, line: 172, baseType: !35, size: 32, offset: 3200)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4327, file: !4328, line: 174, baseType: !4393, size: 64, offset: 3264)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4328, line: 174, flags: DIFlagFwdDecl)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4327, file: !4328, line: 185, baseType: !4396, size: 64, offset: 3328)
!4396 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !490, line: 860, baseType: !4397)
!4397 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !490, line: 853, size: 64, elements: !4398)
!4398 = !{!4399, !4400}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4397, file: !490, line: 858, baseType: !1133, size: 32)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4397, file: !490, line: 859, baseType: !72, size: 32, offset: 32)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4327, file: !4328, line: 186, baseType: !288, size: 64, offset: 3392)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4327, file: !4328, line: 186, baseType: !288, size: 64, offset: 3456)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4327, file: !4328, line: 186, baseType: !288, size: 64, offset: 3520)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4327, file: !4328, line: 186, baseType: !288, size: 64, offset: 3584)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4327, file: !4328, line: 187, baseType: !288, size: 64, offset: 3648)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4327, file: !4328, line: 188, baseType: !288, size: 64, offset: 3712)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4327, file: !4328, line: 189, baseType: !3974, size: 192, offset: 3776)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4327, file: !4328, line: 190, baseType: !52, size: 64, offset: 3968)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4327, file: !4328, line: 190, baseType: !52, size: 64, offset: 4032)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4327, file: !4328, line: 190, baseType: !52, size: 64, offset: 4096)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4327, file: !4328, line: 190, baseType: !52, size: 64, offset: 4160)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4327, file: !4328, line: 191, baseType: !52, size: 64, offset: 4224)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4327, file: !4328, line: 191, baseType: !52, size: 64, offset: 4288)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4327, file: !4328, line: 191, baseType: !52, size: 64, offset: 4352)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4327, file: !4328, line: 191, baseType: !52, size: 64, offset: 4416)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4327, file: !4328, line: 192, baseType: !52, size: 64, offset: 4480)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4327, file: !4328, line: 192, baseType: !52, size: 64, offset: 4544)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4327, file: !4328, line: 192, baseType: !52, size: 64, offset: 4608)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4327, file: !4328, line: 192, baseType: !52, size: 64, offset: 4672)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4327, file: !4328, line: 193, baseType: !52, size: 64, offset: 4736)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4327, file: !4328, line: 193, baseType: !52, size: 64, offset: 4800)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4327, file: !4328, line: 194, baseType: !4423, size: 448, offset: 4864)
!4423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4424, line: 12, size: 448, elements: !4425)
!4424 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4425 = !{!4426, !4427, !4428, !4429, !4430, !4431, !4432}
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4423, file: !4424, line: 15, baseType: !288, size: 64)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4423, file: !4424, line: 17, baseType: !288, size: 64, offset: 64)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4423, file: !4424, line: 19, baseType: !288, size: 64, offset: 128)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4423, file: !4424, line: 21, baseType: !288, size: 64, offset: 192)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4423, file: !4424, line: 29, baseType: !288, size: 64, offset: 256)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4423, file: !4424, line: 35, baseType: !288, size: 64, offset: 320)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4423, file: !4424, line: 44, baseType: !288, size: 64, offset: 384)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4327, file: !4328, line: 202, baseType: !290, size: 64, offset: 5312)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4327, file: !4328, line: 213, baseType: !4435, size: 2048, offset: 5376)
!4435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4436, size: 2048, elements: !3405)
!4436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4437, line: 43, size: 128, elements: !4438)
!4437 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4438 = !{!4439, !4440}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4436, file: !4437, line: 44, baseType: !51, size: 64)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4436, file: !4437, line: 45, baseType: !51, size: 64, offset: 64)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !4327, file: !4328, line: 216, baseType: !4442, size: 448, offset: 7424)
!4442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !4328, line: 30, size: 448, elements: !4443)
!4443 = !{!4444, !4445, !4446, !4447, !4448, !4449, !4450}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4442, file: !4328, line: 31, baseType: !35, size: 32)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4442, file: !4328, line: 32, baseType: !1091, size: 64, offset: 64)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4442, file: !4328, line: 33, baseType: !52, size: 64, offset: 128)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4442, file: !4328, line: 34, baseType: !288, size: 64, offset: 192)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4442, file: !4328, line: 34, baseType: !288, size: 64, offset: 256)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4442, file: !4328, line: 35, baseType: !52, size: 64, offset: 320)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4442, file: !4328, line: 35, baseType: !52, size: 64, offset: 384)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4327, file: !4328, line: 219, baseType: !4452, size: 64, offset: 7872)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !4454, line: 41, size: 3456, elements: !4455)
!4454 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!4455 = !{!4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4453, file: !4454, line: 47, baseType: !107, size: 16)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4453, file: !4454, line: 48, baseType: !333, size: 32, offset: 32)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4453, file: !4454, line: 54, baseType: !98, size: 8, offset: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !4453, file: !4454, line: 55, baseType: !98, size: 8, offset: 72)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !4453, file: !4454, line: 73, baseType: !289, size: 64, align: 64, offset: 128)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !4453, file: !4454, line: 74, baseType: !289, size: 64, offset: 192)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !4453, file: !4454, line: 81, baseType: !289, size: 64, offset: 256)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !4453, file: !4454, line: 82, baseType: !289, size: 64, offset: 320)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !4453, file: !4454, line: 85, baseType: !289, size: 64, offset: 384)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !4453, file: !4454, line: 86, baseType: !289, size: 64, offset: 448)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !4453, file: !4454, line: 94, baseType: !289, size: 64, offset: 512)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !4453, file: !4454, line: 102, baseType: !289, size: 64, offset: 576)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !4453, file: !4454, line: 107, baseType: !3395, size: 256, offset: 640)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !4453, file: !4454, line: 108, baseType: !98, size: 8, align: 64, offset: 896)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !4453, file: !4454, line: 110, baseType: !4471, size: 24, offset: 904)
!4471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 24, elements: !704)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !4453, file: !4454, line: 111, baseType: !333, size: 32, align: 64, offset: 960)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !4453, file: !4454, line: 113, baseType: !333, size: 32, offset: 992)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !4453, file: !4454, line: 114, baseType: !333, size: 32, offset: 1024)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !4453, file: !4454, line: 115, baseType: !333, size: 32, offset: 1056)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !4453, file: !4454, line: 117, baseType: !333, size: 32, offset: 1088)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !4453, file: !4454, line: 118, baseType: !289, size: 64, align: 64, offset: 1152)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4453, file: !4454, line: 120, baseType: !289, size: 64, offset: 1216)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4453, file: !4454, line: 121, baseType: !289, size: 64, offset: 1280)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4453, file: !4454, line: 122, baseType: !289, size: 64, offset: 1344)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4453, file: !4454, line: 123, baseType: !289, size: 64, offset: 1408)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !4453, file: !4454, line: 133, baseType: !289, size: 64, offset: 1472)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !4453, file: !4454, line: 137, baseType: !289, size: 64, offset: 1536)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !4453, file: !4454, line: 142, baseType: !289, size: 64, offset: 1600)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !4453, file: !4454, line: 143, baseType: !289, size: 64, offset: 1664)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !4453, file: !4454, line: 146, baseType: !289, size: 64, offset: 1728)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !4453, file: !4454, line: 147, baseType: !289, size: 64, offset: 1792)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !4453, file: !4454, line: 148, baseType: !289, size: 64, offset: 1856)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !4453, file: !4454, line: 149, baseType: !289, size: 64, offset: 1920)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4453, file: !4454, line: 154, baseType: !289, size: 64, offset: 1984)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4453, file: !4454, line: 155, baseType: !289, size: 64, offset: 2048)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4453, file: !4454, line: 156, baseType: !289, size: 64, offset: 2112)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4453, file: !4454, line: 158, baseType: !289, size: 64, offset: 2176)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4453, file: !4454, line: 159, baseType: !289, size: 64, offset: 2240)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !4453, file: !4454, line: 162, baseType: !289, size: 64, offset: 2304)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !4453, file: !4454, line: 163, baseType: !289, size: 64, offset: 2368)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !4453, file: !4454, line: 164, baseType: !289, size: 64, offset: 2432)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !4453, file: !4454, line: 167, baseType: !289, size: 64, offset: 2496)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !4453, file: !4454, line: 168, baseType: !289, size: 64, offset: 2560)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !4453, file: !4454, line: 171, baseType: !289, size: 64, offset: 2624)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !4453, file: !4454, line: 172, baseType: !289, size: 64, offset: 2688)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !4453, file: !4454, line: 175, baseType: !289, size: 64, offset: 2752)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !4453, file: !4454, line: 178, baseType: !289, size: 64, offset: 2816)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !4453, file: !4454, line: 179, baseType: !289, size: 64, offset: 2880)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !4453, file: !4454, line: 182, baseType: !333, size: 32, offset: 2944)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !4453, file: !4454, line: 186, baseType: !289, size: 64, align: 64, offset: 3008)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !4453, file: !4454, line: 194, baseType: !289, size: 64, offset: 3072)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !4453, file: !4454, line: 195, baseType: !289, size: 64, offset: 3136)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !4453, file: !4454, line: 199, baseType: !289, size: 64, offset: 3200)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !4453, file: !4454, line: 200, baseType: !289, size: 64, offset: 3264)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4453, file: !4454, line: 203, baseType: !289, size: 64, offset: 3328)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !4453, file: !4454, line: 204, baseType: !289, size: 64, offset: 3392)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !4327, file: !4328, line: 222, baseType: !13, size: 32, offset: 7936)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !4327, file: !4328, line: 223, baseType: !4515, size: 64, offset: 8000)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !4328, line: 223, flags: DIFlagFwdDecl)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4327, file: !4328, line: 230, baseType: !860, size: 8, offset: 8064)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4327, file: !4328, line: 231, baseType: !829, size: 16, offset: 8080)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4327, file: !4328, line: 232, baseType: !829, size: 16, offset: 8096)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4327, file: !4328, line: 234, baseType: !620, size: 64, offset: 8128)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4327, file: !4328, line: 237, baseType: !668, size: 256, offset: 8192)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !4327, file: !4328, line: 243, baseType: !801, size: 320, offset: 8448)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !322, file: !323, line: 1111, baseType: !4524, size: 64, offset: 15424)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4328, line: 20, size: 16640, elements: !4526)
!4526 = !{!4527, !4528, !4529, !4530}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4525, file: !4328, line: 21, baseType: !72, size: 32)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4525, file: !4328, line: 22, baseType: !338, size: 32, offset: 32)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4525, file: !4328, line: 23, baseType: !67, size: 192, offset: 64)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4525, file: !4328, line: 24, baseType: !4531, size: 16384, offset: 256)
!4531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4532, size: 16384, elements: !1459)
!4532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !4339, line: 51, size: 256, elements: !4533)
!4533 = !{!4534}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4532, file: !4339, line: 52, baseType: !4535, size: 256)
!4535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !4339, line: 37, size: 256, elements: !4536)
!4536 = !{!4537, !4544, !4545, !4549}
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4535, file: !4339, line: 39, baseType: !4538, size: 64)
!4538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4539, line: 83, baseType: !4540)
!4539 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4539, line: 82, baseType: !4542)
!4542 = !DISubroutineType(types: !4543)
!4543 = !{null, !35}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4535, file: !4339, line: 40, baseType: !52, size: 64, offset: 64)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4535, file: !4339, line: 46, baseType: !4546, size: 64, offset: 128)
!4546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4539, line: 86, baseType: !4547)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4539, line: 85, baseType: !2572)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4535, file: !4339, line: 48, baseType: !4343, size: 64, offset: 192)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !322, file: !323, line: 1112, baseType: !4343, size: 64, offset: 15488)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !322, file: !323, line: 1113, baseType: !4343, size: 64, offset: 15552)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !322, file: !323, line: 1115, baseType: !4343, size: 64, offset: 15616)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !322, file: !323, line: 1116, baseType: !4338, size: 192, offset: 15680)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !322, file: !323, line: 1117, baseType: !52, size: 64, offset: 15872)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !322, file: !323, line: 1118, baseType: !48, size: 64, offset: 15936)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !322, file: !323, line: 1119, baseType: !13, size: 32, offset: 16000)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !322, file: !323, line: 1121, baseType: !277, size: 64, offset: 16064)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !322, file: !323, line: 1125, baseType: !4559, size: 64, offset: 16128)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !323, line: 43, flags: DIFlagFwdDecl)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !322, file: !323, line: 1127, baseType: !742, size: 32, offset: 16192)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !322, file: !323, line: 1128, baseType: !13, size: 32, offset: 16224)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !322, file: !323, line: 1130, baseType: !4564, size: 128, offset: 16256)
!4564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4565, line: 37, size: 128, elements: !4566)
!4565 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4566 = !{!4567, !4568, !4569}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4564, file: !4565, line: 38, baseType: !35, size: 32)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4564, file: !4565, line: 39, baseType: !62, size: 32, offset: 32)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4564, file: !4565, line: 40, baseType: !4570, size: 64, offset: 64)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4565, line: 24, flags: DIFlagFwdDecl)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !322, file: !323, line: 1131, baseType: !4573, size: 256, offset: 16384)
!4573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4574, line: 12, size: 256, elements: !4575)
!4574 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4575 = !{!4576, !4577, !4578, !4579}
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4573, file: !4574, line: 13, baseType: !871, size: 64)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4573, file: !4574, line: 14, baseType: !52, size: 64, offset: 64)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4573, file: !4574, line: 15, baseType: !52, size: 64, offset: 128)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4573, file: !4574, line: 16, baseType: !860, size: 8, offset: 192)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !322, file: !323, line: 1134, baseType: !288, size: 64, offset: 16640)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !322, file: !323, line: 1135, baseType: !288, size: 64, offset: 16704)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !322, file: !323, line: 1138, baseType: !72, size: 32, offset: 16768)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !322, file: !323, line: 1141, baseType: !463, size: 32, offset: 16800)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !322, file: !323, line: 1143, baseType: !4585, size: 64, offset: 16832)
!4585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !323, line: 735, size: 64, elements: !4586)
!4586 = !{!4587}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4585, file: !323, line: 736, baseType: !4588, size: 64)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !322, file: !323, line: 1147, baseType: !503, size: 128, offset: 16896)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !322, file: !323, line: 1149, baseType: !321, size: 64, offset: 17024)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !322, file: !323, line: 1151, baseType: !4592, size: 64, offset: 17088)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !323, line: 1151, flags: DIFlagFwdDecl)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !322, file: !323, line: 1188, baseType: !33, size: 64, offset: 17152)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !322, file: !323, line: 1191, baseType: !4596, size: 64, offset: 17216)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !323, line: 44, flags: DIFlagFwdDecl)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !322, file: !323, line: 1194, baseType: !4599, size: 64, offset: 17280)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !323, line: 45, flags: DIFlagFwdDecl)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !322, file: !323, line: 1197, baseType: !4602, size: 64, offset: 17344)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !323, line: 61, flags: DIFlagFwdDecl)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !322, file: !323, line: 1199, baseType: !4605, size: 64, offset: 17408)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2877, line: 99, size: 128, elements: !4607)
!4607 = !{!4608, !4609, !4610}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4606, file: !2877, line: 100, baseType: !661, size: 64)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4606, file: !2877, line: 101, baseType: !62, size: 32, offset: 64)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4606, file: !2877, line: 103, baseType: !39, size: 16, offset: 96)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !322, file: !323, line: 1202, baseType: !4612, size: 64, offset: 17472)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !323, line: 48, flags: DIFlagFwdDecl)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !322, file: !323, line: 1205, baseType: !52, size: 64, offset: 17536)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !322, file: !323, line: 1206, baseType: !4616, size: 64, offset: 17600)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !4339, line: 14, baseType: !4618)
!4618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !4339, line: 12, size: 384, elements: !4619)
!4619 = !{!4620}
!4620 = !DIDerivedType(tag: DW_TAG_member, scope: !4618, file: !4339, line: 13, baseType: !4621, size: 384)
!4621 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4618, file: !4339, line: 13, size: 384, elements: !4622)
!4622 = !{!4623, !4624, !4625, !4626}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4621, file: !4339, line: 13, baseType: !35, size: 32)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4621, file: !4339, line: 13, baseType: !35, size: 32, offset: 32)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4621, file: !4339, line: 13, baseType: !35, size: 32, offset: 64)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4621, file: !4339, line: 13, baseType: !4627, size: 256, offset: 128)
!4627 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4628, line: 37, size: 256, elements: !4629)
!4628 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4629 = !{!4630, !4635, !4648, !4654, !4663, !4690, !4695}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4627, file: !4628, line: 42, baseType: !4631, size: 64)
!4631 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4627, file: !4628, line: 39, size: 64, elements: !4632)
!4632 = !{!4633, !4634}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4631, file: !4628, line: 40, baseType: !3951, size: 32)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4631, file: !4628, line: 41, baseType: !748, size: 32, offset: 32)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4627, file: !4628, line: 50, baseType: !4636, size: 192)
!4636 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4627, file: !4628, line: 45, size: 192, elements: !4637)
!4637 = !{!4638, !4640, !4641, !4647}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4636, file: !4628, line: 46, baseType: !4639, size: 32)
!4639 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !50, line: 95, baseType: !35)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4636, file: !4628, line: 47, baseType: !35, size: 32, offset: 32)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4636, file: !4628, line: 48, baseType: !4642, size: 64, offset: 64)
!4642 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4628, line: 11, baseType: !4643)
!4643 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4628, line: 8, size: 64, elements: !4644)
!4644 = !{!4645, !4646}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4643, file: !4628, line: 9, baseType: !35, size: 32)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4643, file: !4628, line: 10, baseType: !33, size: 64)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4636, file: !4628, line: 49, baseType: !35, size: 32, offset: 128)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4627, file: !4628, line: 57, baseType: !4649, size: 128)
!4649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4627, file: !4628, line: 53, size: 128, elements: !4650)
!4650 = !{!4651, !4652, !4653}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4649, file: !4628, line: 54, baseType: !3951, size: 32)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4649, file: !4628, line: 55, baseType: !748, size: 32, offset: 32)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4649, file: !4628, line: 56, baseType: !4642, size: 64, offset: 64)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4627, file: !4628, line: 66, baseType: !4655, size: 256)
!4655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4627, file: !4628, line: 60, size: 256, elements: !4656)
!4656 = !{!4657, !4658, !4659, !4660, !4662}
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4655, file: !4628, line: 61, baseType: !3951, size: 32)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4655, file: !4628, line: 62, baseType: !748, size: 32, offset: 32)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4655, file: !4628, line: 63, baseType: !35, size: 32, offset: 64)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4655, file: !4628, line: 64, baseType: !4661, size: 64, offset: 128)
!4661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !50, line: 94, baseType: !1316)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4655, file: !4628, line: 65, baseType: !4661, size: 64, offset: 192)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4627, file: !4628, line: 105, baseType: !4664, size: 256)
!4664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4627, file: !4628, line: 69, size: 256, elements: !4665)
!4665 = !{!4666, !4667}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4664, file: !4628, line: 70, baseType: !33, size: 64)
!4667 = !DIDerivedType(tag: DW_TAG_member, scope: !4664, file: !4628, line: 79, baseType: !4668, size: 192, offset: 64)
!4668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4664, file: !4628, line: 79, size: 192, elements: !4669)
!4669 = !{!4670, !4671, !4672, !4679, !4684}
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4668, file: !4628, line: 81, baseType: !35, size: 32)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4668, file: !4628, line: 86, baseType: !829, size: 16)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4668, file: !4628, line: 92, baseType: !4673, size: 192)
!4673 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4668, file: !4628, line: 88, size: 192, elements: !4674)
!4674 = !{!4675, !4677, !4678}
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4673, file: !4628, line: 89, baseType: !4676, size: 64)
!4676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !482)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4673, file: !4628, line: 90, baseType: !33, size: 64, offset: 64)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4673, file: !4628, line: 91, baseType: !33, size: 64, offset: 128)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4668, file: !4628, line: 97, baseType: !4680, size: 96)
!4680 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4668, file: !4628, line: 94, size: 96, elements: !4681)
!4681 = !{!4682, !4683}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4680, file: !4628, line: 95, baseType: !4676, size: 64)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4680, file: !4628, line: 96, baseType: !333, size: 32, offset: 64)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4668, file: !4628, line: 103, baseType: !4685, size: 128)
!4685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4668, file: !4628, line: 99, size: 128, elements: !4686)
!4686 = !{!4687, !4688, !4689}
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4685, file: !4628, line: 100, baseType: !52, size: 64)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4685, file: !4628, line: 101, baseType: !333, size: 32, offset: 64)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4685, file: !4628, line: 102, baseType: !333, size: 32, offset: 96)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4627, file: !4628, line: 111, baseType: !4691, size: 128)
!4691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4627, file: !4628, line: 108, size: 128, elements: !4692)
!4692 = !{!4693, !4694}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4691, file: !4628, line: 109, baseType: !1091, size: 64)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4691, file: !4628, line: 110, baseType: !35, size: 32, offset: 64)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4627, file: !4628, line: 118, baseType: !4696, size: 128)
!4696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4627, file: !4628, line: 114, size: 128, elements: !4697)
!4697 = !{!4698, !4699, !4700}
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4696, file: !4628, line: 115, baseType: !33, size: 64)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4696, file: !4628, line: 116, baseType: !35, size: 32, offset: 64)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4696, file: !4628, line: 117, baseType: !13, size: 32, offset: 96)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !322, file: !323, line: 1208, baseType: !4423, size: 448, offset: 17664)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !322, file: !323, line: 1215, baseType: !288, size: 64, offset: 18112)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !322, file: !323, line: 1217, baseType: !288, size: 64, offset: 18176)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !322, file: !323, line: 1219, baseType: !288, size: 64, offset: 18240)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !322, file: !323, line: 1223, baseType: !4706, size: 64, offset: 18304)
!4706 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4707, line: 99, baseType: !4708)
!4707 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4708 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4707, line: 99, size: 64, elements: !4709)
!4709 = !{!4710}
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4708, file: !4707, line: 99, baseType: !571, size: 64)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !322, file: !323, line: 1225, baseType: !1133, size: 32, offset: 18368)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !322, file: !323, line: 1226, baseType: !35, size: 32, offset: 18400)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !322, file: !323, line: 1227, baseType: !35, size: 32, offset: 18432)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !322, file: !323, line: 1231, baseType: !4065, size: 64, offset: 18496)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !322, file: !323, line: 1233, baseType: !110, size: 128, offset: 18560)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !322, file: !323, line: 1240, baseType: !4717, size: 64, offset: 18688)
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4718 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !323, line: 62, flags: DIFlagFwdDecl)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !322, file: !323, line: 1242, baseType: !4720, size: 64, offset: 18752)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !323, line: 1242, flags: DIFlagFwdDecl)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !322, file: !323, line: 1244, baseType: !110, size: 128, offset: 18816)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !322, file: !323, line: 1245, baseType: !4724, size: 64, offset: 18944)
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4725 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !323, line: 51, flags: DIFlagFwdDecl)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !322, file: !323, line: 1246, baseType: !668, size: 256, offset: 19008)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !322, file: !323, line: 1247, baseType: !13, size: 32, offset: 19264)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !322, file: !323, line: 1250, baseType: !4729, size: 64, offset: 19328)
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !323, line: 57, flags: DIFlagFwdDecl)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !322, file: !323, line: 1251, baseType: !668, size: 256, offset: 19392)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !322, file: !323, line: 1252, baseType: !110, size: 128, offset: 19648)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !322, file: !323, line: 1259, baseType: !1743, size: 64, offset: 19776)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !322, file: !323, line: 1260, baseType: !829, size: 16, offset: 19840)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !322, file: !323, line: 1261, baseType: !829, size: 16, offset: 19856)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !322, file: !323, line: 1314, baseType: !4737, size: 64, offset: 19904)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4739, line: 62, size: 256, align: 256, elements: !4740)
!4739 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4740 = !{!4741, !4742, !4743, !4744, !4745, !4746, !4747}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4738, file: !4739, line: 75, baseType: !333, size: 32)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4738, file: !4739, line: 90, baseType: !333, size: 32, offset: 32)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4738, file: !4739, line: 112, baseType: !289, size: 64, offset: 64)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4738, file: !4739, line: 132, baseType: !333, size: 32, offset: 128)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4738, file: !4739, line: 140, baseType: !333, size: 32, offset: 160)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4738, file: !4739, line: 149, baseType: !333, size: 32, offset: 192)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4738, file: !4739, line: 154, baseType: !4748, offset: 224)
!4748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !738)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !322, file: !323, line: 1315, baseType: !332, size: 32, offset: 19968)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !322, file: !323, line: 1316, baseType: !332, size: 32, offset: 20000)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !322, file: !323, line: 1321, baseType: !52, size: 64, offset: 20032)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !322, file: !323, line: 1325, baseType: !35, size: 32, offset: 20096)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !322, file: !323, line: 1326, baseType: !35, size: 32, offset: 20128)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !322, file: !323, line: 1327, baseType: !35, size: 32, offset: 20160)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !322, file: !323, line: 1328, baseType: !35, size: 32, offset: 20192)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !322, file: !323, line: 1329, baseType: !278, size: 128, align: 64, offset: 20224)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !322, file: !323, line: 1332, baseType: !4758, size: 128, offset: 20352)
!4758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4759, line: 51, size: 128, elements: !4760)
!4759 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4760 = !{!4761, !4766, !4767}
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4758, file: !4759, line: 60, baseType: !4762, size: 64)
!4762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4763, line: 7, size: 64, elements: !4764)
!4763 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4764 = !{!4765}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4762, file: !4763, line: 12, baseType: !568, size: 64)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4758, file: !4759, line: 63, baseType: !860, size: 8, offset: 64)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4758, file: !4759, line: 70, baseType: !860, size: 8, offset: 72)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !322, file: !323, line: 1335, baseType: !3643, size: 64, offset: 20480)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !322, file: !323, line: 1337, baseType: !4770, size: 128, offset: 20544)
!4770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4759, line: 39, size: 128, elements: !4771)
!4771 = !{!4772, !4773, !4774}
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4770, file: !4759, line: 40, baseType: !1540, size: 64)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4770, file: !4759, line: 42, baseType: !333, size: 32, offset: 64)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4770, file: !4759, line: 43, baseType: !333, size: 32, offset: 96)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !322, file: !323, line: 1340, baseType: !4776, size: 64, offset: 20672)
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4777 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !323, line: 69, flags: DIFlagFwdDecl)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !322, file: !323, line: 1351, baseType: !35, size: 32, offset: 20736)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !322, file: !323, line: 1352, baseType: !35, size: 32, offset: 20768)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !322, file: !323, line: 1354, baseType: !52, size: 64, offset: 20800)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !322, file: !323, line: 1364, baseType: !288, size: 64, offset: 20864)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !322, file: !323, line: 1365, baseType: !288, size: 64, offset: 20928)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !322, file: !323, line: 1412, baseType: !52, size: 64, offset: 20992)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !322, file: !323, line: 1453, baseType: !2872, size: 64, offset: 21056)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !322, file: !323, line: 1457, baseType: !4786, size: 64, offset: 21120)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !252, line: 61, size: 576, elements: !4788)
!4788 = !{!4789, !4790, !4809, !4812, !4813, !4846, !4856}
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4787, file: !252, line: 62, baseType: !251, size: 32)
!4790 = !DIDerivedType(tag: DW_TAG_member, scope: !4787, file: !252, line: 64, baseType: !4791, size: 192, offset: 64)
!4791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4787, file: !252, line: 64, size: 192, elements: !4792)
!4792 = !{!4793, !4804}
!4793 = !DIDerivedType(tag: DW_TAG_member, scope: !4791, file: !252, line: 65, baseType: !4794, size: 192)
!4794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4791, file: !252, line: 65, size: 192, elements: !4795)
!4795 = !{!4796, !4803}
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4794, file: !252, line: 66, baseType: !4797, size: 128)
!4797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4798, line: 50, size: 128, elements: !4799)
!4798 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4799 = !{!4800, !4801, !4802}
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4797, file: !4798, line: 52, baseType: !52, size: 64)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4797, file: !4798, line: 54, baseType: !13, size: 32, offset: 64)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4797, file: !4798, line: 55, baseType: !13, size: 32, offset: 96)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4794, file: !252, line: 67, baseType: !52, size: 64, offset: 128)
!4804 = !DIDerivedType(tag: DW_TAG_member, scope: !4791, file: !252, line: 70, baseType: !4805, size: 192)
!4805 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4791, file: !252, line: 70, size: 192, elements: !4806)
!4806 = !{!4807, !4808}
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4805, file: !252, line: 71, baseType: !278, size: 128, align: 64)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4805, file: !252, line: 72, baseType: !52, size: 64, offset: 128)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4787, file: !252, line: 76, baseType: !4810, size: 64, offset: 256)
!4810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4811, size: 64)
!4811 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !252, line: 76, flags: DIFlagFwdDecl)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4787, file: !252, line: 77, baseType: !52, size: 64, offset: 320)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4787, file: !252, line: 79, baseType: !4814, size: 64, offset: 384)
!4814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4815, size: 64)
!4815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4798, line: 25, size: 256, elements: !4816)
!4816 = !{!4817, !4823, !4827}
!4817 = !DIDerivedType(tag: DW_TAG_member, scope: !4815, file: !4798, line: 26, baseType: !4818, size: 128)
!4818 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4815, file: !4798, line: 26, size: 128, elements: !4819)
!4819 = !{!4820, !4822}
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4818, file: !4798, line: 27, baseType: !4821, size: 128)
!4821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 128, elements: !3405)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4818, file: !4798, line: 28, baseType: !4821, size: 128)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4815, file: !4798, line: 31, baseType: !4824, size: 64, offset: 128)
!4824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4825, size: 64)
!4825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4826)
!4826 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4798, line: 23, flags: DIFlagFwdDecl)
!4827 = !DIDerivedType(tag: DW_TAG_member, scope: !4815, file: !4798, line: 33, baseType: !4828, size: 64, offset: 192)
!4828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4815, file: !4798, line: 33, size: 64, elements: !4829)
!4829 = !{!4830, !4836, !4841}
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4828, file: !4798, line: 38, baseType: !4831, size: 64)
!4831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4828, file: !4798, line: 34, size: 64, elements: !4832)
!4832 = !{!4833, !4834, !4835}
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4831, file: !4798, line: 35, baseType: !793, size: 32)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4831, file: !4798, line: 36, baseType: !96, size: 8, offset: 32)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4831, file: !4798, line: 37, baseType: !96, size: 8, offset: 40)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4828, file: !4798, line: 42, baseType: !4837, size: 16)
!4837 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4828, file: !4798, line: 39, size: 16, elements: !4838)
!4838 = !{!4839, !4840}
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4837, file: !4798, line: 40, baseType: !96, size: 8)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4837, file: !4798, line: 41, baseType: !96, size: 8, offset: 8)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4828, file: !4798, line: 46, baseType: !4842, size: 16)
!4842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4828, file: !4798, line: 43, size: 16, elements: !4843)
!4843 = !{!4844, !4845}
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4842, file: !4798, line: 44, baseType: !96, size: 8)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4842, file: !4798, line: 45, baseType: !96, size: 8, offset: 8)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4787, file: !252, line: 81, baseType: !4847, size: 64, offset: 448)
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4848, size: 64)
!4848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !252, line: 85, size: 384, elements: !4849)
!4849 = !{!4850, !4851, !4852, !4853, !4854, !4855}
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4848, file: !252, line: 86, baseType: !4810, size: 64)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4848, file: !252, line: 87, baseType: !52, size: 64, offset: 64)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4848, file: !252, line: 88, baseType: !52, size: 64, offset: 128)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4848, file: !252, line: 89, baseType: !52, size: 64, offset: 192)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4848, file: !252, line: 90, baseType: !860, size: 8, offset: 256)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4848, file: !252, line: 92, baseType: !4847, size: 64, offset: 320)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4787, file: !252, line: 82, baseType: !13, size: 32, offset: 512)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !322, file: !323, line: 1463, baseType: !4858, offset: 21184)
!4858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !323, line: 739, elements: !641)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !322, file: !323, line: 1470, baseType: !278, size: 128, align: 64, offset: 21184)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !322, file: !323, line: 1471, baseType: !338, size: 32, offset: 21312)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !322, file: !323, line: 1472, baseType: !35, size: 32, offset: 21344)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !322, file: !323, line: 1474, baseType: !321, size: 64, offset: 21376)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !322, file: !323, line: 1475, baseType: !2467, size: 320, offset: 21440)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !322, file: !323, line: 1478, baseType: !4865, size: 64, offset: 21760)
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4866 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !323, line: 1478, flags: DIFlagFwdDecl)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !322, file: !323, line: 1482, baseType: !338, size: 32, offset: 21824)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !322, file: !323, line: 1489, baseType: !33, size: 64, offset: 21888)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !322, file: !323, line: 1504, baseType: !33, size: 64, offset: 21952)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !322, file: !323, line: 1505, baseType: !289, size: 64, offset: 22016)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !322, file: !323, line: 1506, baseType: !288, size: 64, offset: 22080)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !322, file: !323, line: 1507, baseType: !289, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !322, file: !323, line: 1508, baseType: !289, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !322, file: !323, line: 1509, baseType: !289, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !322, file: !323, line: 1510, baseType: !278, size: 128, align: 64, offset: 22208)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !322, file: !323, line: 1511, baseType: !35, size: 32, offset: 22336)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !322, file: !323, line: 1515, baseType: !4878, size: 64, offset: 22400)
!4878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !301, line: 56, size: 64, elements: !4879)
!4879 = !{!4880}
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4878, file: !301, line: 57, baseType: !304, size: 64)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !322, file: !323, line: 1518, baseType: !4878, size: 64, offset: 22464)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !322, file: !323, line: 1528, baseType: !278, size: 128, align: 64, offset: 22528)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !322, file: !323, line: 1552, baseType: !4884, size: 35328, offset: 23040)
!4884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4885, line: 430, size: 35328, elements: !4886)
!4885 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4886 = !{!4887, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4916, !4917, !4918, !4919, !4920, !4921, !4924, !4925, !4926, !4927}
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4884, file: !4885, line: 432, baseType: !4888, size: 192)
!4888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4889, size: 192, elements: !704)
!4889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4890, line: 16, size: 64, elements: !4891)
!4890 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4891 = !{!4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904}
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4889, file: !4890, line: 17, baseType: !106, size: 16)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4889, file: !4890, line: 18, baseType: !106, size: 16, offset: 16)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4889, file: !4890, line: 19, baseType: !106, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4889, file: !4890, line: 19, baseType: !106, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4889, file: !4890, line: 19, baseType: !106, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4889, file: !4890, line: 19, baseType: !106, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4889, file: !4890, line: 19, baseType: !106, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4889, file: !4890, line: 20, baseType: !106, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4889, file: !4890, line: 20, baseType: !106, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4889, file: !4890, line: 20, baseType: !106, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4889, file: !4890, line: 20, baseType: !106, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4889, file: !4890, line: 20, baseType: !106, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4889, file: !4890, line: 20, baseType: !106, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4884, file: !4885, line: 436, baseType: !52, size: 64, offset: 192)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4884, file: !4885, line: 440, baseType: !39, size: 16, offset: 256)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4884, file: !4885, line: 441, baseType: !39, size: 16, offset: 272)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4884, file: !4885, line: 442, baseType: !39, size: 16, offset: 288)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4884, file: !4885, line: 443, baseType: !39, size: 16, offset: 304)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4884, file: !4885, line: 447, baseType: !52, size: 64, offset: 320)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4884, file: !4885, line: 448, baseType: !52, size: 64, offset: 384)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4884, file: !4885, line: 459, baseType: !4913, size: 256, offset: 448)
!4913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4914, size: 256, elements: !725)
!4914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4915, size: 64)
!4915 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4885, line: 428, flags: DIFlagFwdDecl)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4884, file: !4885, line: 461, baseType: !52, size: 64, offset: 704)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4884, file: !4885, line: 463, baseType: !52, size: 64, offset: 768)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4884, file: !4885, line: 465, baseType: !52, size: 64, offset: 832)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4884, file: !4885, line: 466, baseType: !52, size: 64, offset: 896)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4884, file: !4885, line: 467, baseType: !52, size: 64, offset: 960)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4884, file: !4885, line: 473, baseType: !4922, size: 64, offset: 1024)
!4922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4923, size: 64)
!4923 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4885, line: 10, flags: DIFlagFwdDecl)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4884, file: !4885, line: 480, baseType: !52, size: 64, offset: 1088)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4884, file: !4885, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4884, file: !4885, line: 491, baseType: !332, size: 32, offset: 1184)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4884, file: !4885, line: 501, baseType: !4928, size: 33792, offset: 1536)
!4928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4929, line: 448, size: 33792, elements: !4930)
!4929 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4930 = !{!4931, !4932, !4933, !5093, !5094, !5100, !5101}
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4928, file: !4929, line: 461, baseType: !13, size: 32)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4928, file: !4929, line: 468, baseType: !52, size: 64, offset: 64)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4928, file: !4929, line: 476, baseType: !4934, size: 64, offset: 128)
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4929, line: 356, size: 33280, align: 512, elements: !4936)
!4936 = !{!4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4935, file: !4929, line: 358, baseType: !13, size: 32)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4935, file: !4929, line: 361, baseType: !13, size: 32, offset: 32)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4935, file: !4929, line: 364, baseType: !288, size: 64, offset: 64)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4935, file: !4929, line: 367, baseType: !288, size: 64, offset: 128)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4935, file: !4929, line: 370, baseType: !288, size: 64, offset: 192)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4935, file: !4929, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4935, file: !4929, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4935, file: !4929, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4935, file: !4929, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4935, file: !4929, line: 397, baseType: !4947, size: 32768, offset: 512)
!4947 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4929, line: 348, size: 32768, elements: !4948)
!4948 = !{!4949, !4964, !5001, !5078, !5091}
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4947, file: !4929, line: 349, baseType: !4950, size: 896)
!4950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4929, line: 12, size: 896, elements: !4951)
!4951 = !{!4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4963}
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4950, file: !4929, line: 13, baseType: !332, size: 32)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4950, file: !4929, line: 14, baseType: !332, size: 32, offset: 32)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4950, file: !4929, line: 15, baseType: !332, size: 32, offset: 64)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4950, file: !4929, line: 16, baseType: !332, size: 32, offset: 96)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4950, file: !4929, line: 17, baseType: !332, size: 32, offset: 128)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4950, file: !4929, line: 18, baseType: !332, size: 32, offset: 160)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4950, file: !4929, line: 19, baseType: !332, size: 32, offset: 192)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4950, file: !4929, line: 22, baseType: !4960, size: 640, offset: 224)
!4960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 640, elements: !4961)
!4961 = !{!4962}
!4962 = !DISubrange(count: 20)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4950, file: !4929, line: 25, baseType: !332, size: 32, offset: 864)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4947, file: !4929, line: 350, baseType: !4965, size: 4096, align: 128)
!4965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4929, line: 34, size: 4096, align: 128, elements: !4966)
!4966 = !{!4967, !4968, !4969, !4970, !4971, !4986, !4987, !4988, !4990, !4992, !4996}
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4965, file: !4929, line: 35, baseType: !106, size: 16)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4965, file: !4929, line: 36, baseType: !106, size: 16, offset: 16)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4965, file: !4929, line: 37, baseType: !106, size: 16, offset: 32)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4965, file: !4929, line: 38, baseType: !106, size: 16, offset: 48)
!4971 = !DIDerivedType(tag: DW_TAG_member, scope: !4965, file: !4929, line: 39, baseType: !4972, size: 128, offset: 64)
!4972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4965, file: !4929, line: 39, size: 128, elements: !4973)
!4973 = !{!4974, !4979}
!4974 = !DIDerivedType(tag: DW_TAG_member, scope: !4972, file: !4929, line: 40, baseType: !4975, size: 128)
!4975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4972, file: !4929, line: 40, size: 128, elements: !4976)
!4976 = !{!4977, !4978}
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4975, file: !4929, line: 41, baseType: !288, size: 64)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4975, file: !4929, line: 42, baseType: !288, size: 64, offset: 64)
!4979 = !DIDerivedType(tag: DW_TAG_member, scope: !4972, file: !4929, line: 44, baseType: !4980, size: 128)
!4980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4972, file: !4929, line: 44, size: 128, elements: !4981)
!4981 = !{!4982, !4983, !4984, !4985}
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4980, file: !4929, line: 45, baseType: !332, size: 32)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4980, file: !4929, line: 46, baseType: !332, size: 32, offset: 32)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4980, file: !4929, line: 47, baseType: !332, size: 32, offset: 64)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4980, file: !4929, line: 48, baseType: !332, size: 32, offset: 96)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4965, file: !4929, line: 51, baseType: !332, size: 32, offset: 192)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4965, file: !4929, line: 52, baseType: !332, size: 32, offset: 224)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4965, file: !4929, line: 55, baseType: !4989, size: 1024, offset: 256)
!4989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 1024, elements: !3396)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4965, file: !4929, line: 58, baseType: !4991, size: 2048, offset: 1280)
!4991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 2048, elements: !1459)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4965, file: !4929, line: 60, baseType: !4993, size: 384, offset: 3328)
!4993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 384, elements: !4994)
!4994 = !{!4995}
!4995 = !DISubrange(count: 12)
!4996 = !DIDerivedType(tag: DW_TAG_member, scope: !4965, file: !4929, line: 62, baseType: !4997, size: 384, offset: 3712)
!4997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4965, file: !4929, line: 62, size: 384, elements: !4998)
!4998 = !{!4999, !5000}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4997, file: !4929, line: 63, baseType: !4993, size: 384)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4997, file: !4929, line: 64, baseType: !4993, size: 384)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4947, file: !4929, line: 351, baseType: !5002, size: 1088)
!5002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4929, line: 79, size: 1088, elements: !5003)
!5003 = !{!5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5077}
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5002, file: !4929, line: 80, baseType: !332, size: 32)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5002, file: !4929, line: 81, baseType: !332, size: 32, offset: 32)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5002, file: !4929, line: 82, baseType: !332, size: 32, offset: 64)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5002, file: !4929, line: 83, baseType: !332, size: 32, offset: 96)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5002, file: !4929, line: 84, baseType: !332, size: 32, offset: 128)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5002, file: !4929, line: 85, baseType: !332, size: 32, offset: 160)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5002, file: !4929, line: 86, baseType: !332, size: 32, offset: 192)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5002, file: !4929, line: 88, baseType: !4960, size: 640, offset: 224)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5002, file: !4929, line: 89, baseType: !96, size: 8, offset: 864)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5002, file: !4929, line: 90, baseType: !96, size: 8, offset: 872)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5002, file: !4929, line: 91, baseType: !96, size: 8, offset: 880)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5002, file: !4929, line: 92, baseType: !96, size: 8, offset: 888)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5002, file: !4929, line: 93, baseType: !96, size: 8, offset: 896)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5002, file: !4929, line: 94, baseType: !96, size: 8, offset: 904)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5002, file: !4929, line: 95, baseType: !5019, size: 64, offset: 960)
!5019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5020, size: 64)
!5020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5021, line: 11, size: 128, elements: !5022)
!5021 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5022 = !{!5023, !5024}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5020, file: !5021, line: 12, baseType: !1091, size: 64)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5020, file: !5021, line: 13, baseType: !5025, size: 64, offset: 64)
!5025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5026, size: 64)
!5026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !5027, line: 103, size: 1344, elements: !5028)
!5027 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!5028 = !{!5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5057, !5058, !5059}
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !5026, file: !5027, line: 109, baseType: !52, size: 64)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !5026, file: !5027, line: 110, baseType: !52, size: 64, offset: 64)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !5026, file: !5027, line: 111, baseType: !52, size: 64, offset: 128)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !5026, file: !5027, line: 112, baseType: !52, size: 64, offset: 192)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !5026, file: !5027, line: 113, baseType: !52, size: 64, offset: 256)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !5026, file: !5027, line: 114, baseType: !52, size: 64, offset: 320)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !5026, file: !5027, line: 117, baseType: !52, size: 64, offset: 384)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !5026, file: !5027, line: 118, baseType: !52, size: 64, offset: 448)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !5026, file: !5027, line: 119, baseType: !52, size: 64, offset: 512)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !5026, file: !5027, line: 120, baseType: !52, size: 64, offset: 576)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !5026, file: !5027, line: 121, baseType: !52, size: 64, offset: 640)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !5026, file: !5027, line: 122, baseType: !52, size: 64, offset: 704)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !5026, file: !5027, line: 123, baseType: !52, size: 64, offset: 768)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !5026, file: !5027, line: 124, baseType: !52, size: 64, offset: 832)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !5026, file: !5027, line: 125, baseType: !52, size: 64, offset: 896)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !5026, file: !5027, line: 139, baseType: !52, size: 64, offset: 960)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5026, file: !5027, line: 142, baseType: !52, size: 64, offset: 1024)
!5046 = !DIDerivedType(tag: DW_TAG_member, scope: !5026, file: !5027, line: 144, baseType: !5047, size: 64, offset: 1088)
!5047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5026, file: !5027, line: 144, size: 64, elements: !5048)
!5048 = !{!5049, !5050, !5051}
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5047, file: !5027, line: 146, baseType: !106, size: 16)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !5047, file: !5027, line: 148, baseType: !288, size: 64)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !5047, file: !5027, line: 150, baseType: !5052, size: 64)
!5052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !5027, line: 59, size: 64, elements: !5053)
!5053 = !{!5054, !5055, !5056}
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5052, file: !5027, line: 61, baseType: !288, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !5052, file: !5027, line: 63, baseType: !288, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !5052, file: !5027, line: 65, baseType: !288, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5026, file: !5027, line: 153, baseType: !52, size: 64, offset: 1152)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5026, file: !5027, line: 154, baseType: !52, size: 64, offset: 1216)
!5059 = !DIDerivedType(tag: DW_TAG_member, scope: !5026, file: !5027, line: 156, baseType: !5060, size: 64, offset: 1280)
!5060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5026, file: !5027, line: 156, size: 64, elements: !5061)
!5061 = !{!5062, !5063, !5064}
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5060, file: !5027, line: 158, baseType: !106, size: 16)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !5060, file: !5027, line: 160, baseType: !288, size: 64)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !5060, file: !5027, line: 162, baseType: !5065, size: 64)
!5065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !5027, line: 69, size: 64, elements: !5066)
!5066 = !{!5067, !5068, !5069, !5070, !5071, !5072, !5073, !5074, !5075, !5076}
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5065, file: !5027, line: 71, baseType: !288, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !5065, file: !5027, line: 73, baseType: !288, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !5065, file: !5027, line: 75, baseType: !288, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !5065, file: !5027, line: 77, baseType: !288, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !5065, file: !5027, line: 80, baseType: !288, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5065, file: !5027, line: 83, baseType: !288, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !5065, file: !5027, line: 86, baseType: !288, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !5065, file: !5027, line: 88, baseType: !288, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !5065, file: !5027, line: 93, baseType: !288, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !5065, file: !5027, line: 100, baseType: !288, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5002, file: !4929, line: 96, baseType: !332, size: 32, offset: 1024)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4947, file: !4929, line: 352, baseType: !5079, size: 4608, align: 512)
!5079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4929, line: 333, size: 4608, align: 512, elements: !5080)
!5080 = !{!5081, !5082, !5089}
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5079, file: !4929, line: 334, baseType: !4965, size: 4096, align: 128)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5079, file: !4929, line: 335, baseType: !5083, size: 512, offset: 4096)
!5083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4929, line: 312, size: 512, elements: !5084)
!5084 = !{!5085, !5086, !5087}
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5083, file: !4929, line: 313, baseType: !288, size: 64)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5083, file: !4929, line: 314, baseType: !288, size: 64, offset: 64)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5083, file: !4929, line: 315, baseType: !5088, size: 384, offset: 128)
!5088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 384, elements: !847)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5079, file: !4929, line: 336, baseType: !5090, offset: 4608)
!5090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, elements: !738)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4947, file: !4929, line: 353, baseType: !5092, size: 32768)
!5092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 32768, elements: !4122)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4928, file: !4929, line: 484, baseType: !4934, size: 64, offset: 192)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4928, file: !4929, line: 491, baseType: !5095, size: 128, offset: 256)
!5095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4929, line: 404, size: 128, elements: !5096)
!5096 = !{!5097, !5098, !5099}
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5095, file: !4929, line: 424, baseType: !288, size: 64)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5095, file: !4929, line: 432, baseType: !13, size: 32, offset: 64)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5095, file: !4929, line: 440, baseType: !13, size: 32, offset: 96)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4928, file: !4929, line: 498, baseType: !5095, size: 128, offset: 384)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4928, file: !4929, line: 508, baseType: !4935, size: 33280, align: 512, offset: 512)
!5102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!5103 = !{!0, !7, !5104, !5106}
!5104 = !DIGlobalVariableExpression(var: !5105, expr: !DIExpression())
!5105 = distinct !DIGlobalVariable(name: "irq_work_NMI_resume", scope: !9, file: !2, line: 14, type: !292, isLocal: true, isDefinition: true)
!5106 = !DIGlobalVariableExpression(var: !5107, expr: !DIExpression())
!5107 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__cond_resched149", scope: !5108, file: !323, line: 2104, type: !33, isLocal: true, isDefinition: true)
!5108 = distinct !DISubprogram(name: "_cond_resched", scope: !323, file: !323, line: 2102, type: !2339, scopeLine: 2103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!5109 = !{i32 7, !"Dwarf Version", i32 5}
!5110 = !{i32 2, !"Debug Info Version", i32 3}
!5111 = !{i32 1, !"wchar_size", i32 2}
!5112 = !{i32 8, !"cf-protection-branch", i32 1}
!5113 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5114 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5115 = !{i32 1, !"Code Model", i32 2}
!5116 = !{i32 1, !"override-stack-alignment", i32 8}
!5117 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5118 = distinct !DISubprogram(name: "task_work_add", scope: !2, file: !2, line: 54, type: !5119, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5121)
!5119 = !DISubroutineType(types: !5120)
!5120 = !{!35, !321, !277, !258}
!5121 = !{!5122, !5123, !5124, !5125, !5126, !5127, !5132, !5135, !5137, !5138, !5140, !5141, !5142, !5143, !5144, !5148, !5150, !5152}
!5122 = !DILocalVariable(name: "task", arg: 1, scope: !5118, file: !2, line: 54, type: !321)
!5123 = !DILocalVariable(name: "work", arg: 2, scope: !5118, file: !2, line: 54, type: !277)
!5124 = !DILocalVariable(name: "notify", arg: 3, scope: !5118, file: !2, line: 55, type: !258)
!5125 = !DILocalVariable(name: "head", scope: !5118, file: !2, line: 57, type: !277)
!5126 = !DILocalVariable(name: "flags", scope: !5118, file: !2, line: 58, type: !35)
!5127 = !DILocalVariable(name: "__ret_warn_on", scope: !5128, file: !2, line: 62, type: !35)
!5128 = distinct !DILexicalBlock(scope: !5129, file: !2, line: 62, column: 7)
!5129 = distinct !DILexicalBlock(scope: !5130, file: !2, line: 62, column: 7)
!5130 = distinct !DILexicalBlock(scope: !5131, file: !2, line: 61, column: 33)
!5131 = distinct !DILexicalBlock(scope: !5118, file: !2, line: 61, column: 6)
!5132 = !DILocalVariable(name: "__flags", scope: !5133, file: !2, line: 62, type: !35)
!5133 = distinct !DILexicalBlock(scope: !5134, file: !2, line: 62, column: 7)
!5134 = distinct !DILexicalBlock(scope: !5128, file: !2, line: 62, column: 7)
!5135 = !DILocalVariable(name: "__ai_ptr", scope: !5136, file: !2, line: 85, type: !285)
!5136 = distinct !DILexicalBlock(scope: !5118, file: !2, line: 85, column: 12)
!5137 = !DILocalVariable(name: "__ai_oldp", scope: !5136, file: !2, line: 85, type: !285)
!5138 = !DILocalVariable(name: "success", scope: !5139, file: !2, line: 85, type: !860)
!5139 = distinct !DILexicalBlock(scope: !5136, file: !2, line: 85, column: 12)
!5140 = !DILocalVariable(name: "_old", scope: !5139, file: !2, line: 85, type: !285)
!5141 = !DILocalVariable(name: "__old", scope: !5139, file: !2, line: 85, type: !277)
!5142 = !DILocalVariable(name: "__new", scope: !5139, file: !2, line: 85, type: !277)
!5143 = !DILocalVariable(name: "__ptr", scope: !5139, file: !2, line: 85, type: !286)
!5144 = !DILocalVariable(name: "__vpp_verify", scope: !5145, file: !2, line: 101, type: !2064)
!5145 = distinct !DILexicalBlock(scope: !5146, file: !2, line: 101, column: 18)
!5146 = distinct !DILexicalBlock(scope: !5147, file: !2, line: 101, column: 18)
!5147 = distinct !DILexicalBlock(scope: !5118, file: !2, line: 87, column: 18)
!5148 = !DILocalVariable(name: "tcp_ptr__", scope: !5149, file: !2, line: 101, type: !52)
!5149 = distinct !DILexicalBlock(scope: !5146, file: !2, line: 101, column: 18)
!5150 = !DILocalVariable(name: "__ret_warn_on", scope: !5151, file: !2, line: 105, type: !35)
!5151 = distinct !DILexicalBlock(scope: !5147, file: !2, line: 105, column: 3)
!5152 = !DILocalVariable(name: "__flags", scope: !5153, file: !2, line: 105, type: !35)
!5153 = distinct !DILexicalBlock(scope: !5154, file: !2, line: 105, column: 3)
!5154 = distinct !DILexicalBlock(scope: !5151, file: !2, line: 105, column: 3)
!5155 = !DILocation(line: 54, column: 39, scope: !5118)
!5156 = !DILocation(line: 54, column: 67, scope: !5118)
!5157 = !DILocation(line: 55, column: 32, scope: !5118)
!5158 = !DILocation(line: 57, column: 2, scope: !5118)
!5159 = !DILocation(line: 57, column: 24, scope: !5118)
!5160 = !DILocation(line: 58, column: 2, scope: !5118)
!5161 = !DILocation(line: 58, column: 6, scope: !5118)
!5162 = !DILocation(line: 58, column: 14, scope: !5118)
!5163 = !DILocation(line: 58, column: 21, scope: !5118)
!5164 = !DILocation(line: 60, column: 9, scope: !5118)
!5165 = !DILocation(line: 61, column: 6, scope: !5131)
!5166 = !DILocation(line: 61, column: 13, scope: !5131)
!5167 = !DILocation(line: 61, column: 6, scope: !5118)
!5168 = !DILocation(line: 62, column: 7, scope: !5128)
!5169 = !DILocation(line: 62, column: 7, scope: !5134)
!5170 = !DILocation(line: 62, column: 7, scope: !5133)
!5171 = !DILocation(line: 62, column: 7, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5133, file: !2, line: 62, column: 7)
!5173 = !DILocation(line: 62, column: 7, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5133, file: !2, line: 62, column: 7)
!5175 = !{i64 2154978111, i64 2154978140, i64 2154978186, i64 2154978244, i64 2154978298, i64 2154978352, i64 2154978407, i64 2154978438, i64 2154978746, i64 2154978752, i64 2154978799, i64 2154978822, i64 2154978848}
!5176 = !DILocation(line: 62, column: 7, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5133, file: !2, line: 62, column: 7)
!5178 = !DILocation(line: 62, column: 7, scope: !5129)
!5179 = !DILocation(line: 62, column: 7, scope: !5130)
!5180 = !DILocation(line: 63, column: 4, scope: !5129)
!5181 = !DILocation(line: 66, column: 2, scope: !5130)
!5182 = !DILocation(line: 74, column: 7, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5184, file: !2, line: 74, column: 7)
!5184 = distinct !DILexicalBlock(scope: !5131, file: !2, line: 66, column: 9)
!5185 = !DILocation(line: 74, column: 13, scope: !5183)
!5186 = !DILocation(line: 74, column: 7, scope: !5184)
!5187 = !DILocation(line: 75, column: 35, scope: !5183)
!5188 = !DILocation(line: 75, column: 4, scope: !5183)
!5189 = !DILocation(line: 77, column: 27, scope: !5183)
!5190 = !DILocation(line: 77, column: 4, scope: !5183)
!5191 = !DILocation(line: 80, column: 9, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5118, file: !2, line: 80, column: 9)
!5193 = !DILocation(line: 80, column: 9, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5192, file: !2, line: 80, column: 9)
!5195 = !DILocation(line: 80, column: 7, scope: !5118)
!5196 = !DILocation(line: 81, column: 2, scope: !5118)
!5197 = !DILocation(line: 82, column: 7, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5199, file: !2, line: 82, column: 7)
!5199 = distinct !DILexicalBlock(scope: !5118, file: !2, line: 81, column: 5)
!5200 = !DILocation(line: 82, column: 7, scope: !5199)
!5201 = !DILocation(line: 83, column: 4, scope: !5198)
!5202 = !DILocation(line: 84, column: 16, scope: !5199)
!5203 = !DILocation(line: 84, column: 3, scope: !5199)
!5204 = !DILocation(line: 84, column: 9, scope: !5199)
!5205 = !DILocation(line: 84, column: 14, scope: !5199)
!5206 = !DILocation(line: 85, column: 2, scope: !5199)
!5207 = !DILocation(line: 85, column: 12, scope: !5136)
!5208 = !DILocation(line: 85, column: 12, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !5136, file: !2, line: 85, column: 12)
!5210 = !DILocation(line: 85, column: 12, scope: !5139)
!5211 = !{i64 2154985692, i64 2154985731, i64 2154985752, i64 2154985789, i64 2154985812, i64 2154985821, i64 2154986022}
!5212 = !DILocation(line: 85, column: 12, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5139, file: !2, line: 85, column: 12)
!5214 = !{i8 0, i8 2}
!5215 = !DILocation(line: 85, column: 12, scope: !5118)
!5216 = !DILocation(line: 85, column: 11, scope: !5118)
!5217 = distinct !{!5217, !5196, !5218, !5219, !5220}
!5218 = !DILocation(line: 85, column: 55, scope: !5118)
!5219 = !{!"llvm.loop.mustprogress"}
!5220 = !{!"llvm.loop.unroll.disable"}
!5221 = !DILocation(line: 87, column: 10, scope: !5118)
!5222 = !DILocation(line: 87, column: 2, scope: !5118)
!5223 = !DILocation(line: 91, column: 21, scope: !5147)
!5224 = !DILocation(line: 91, column: 3, scope: !5147)
!5225 = !DILocation(line: 92, column: 3, scope: !5147)
!5226 = !DILocation(line: 94, column: 21, scope: !5147)
!5227 = !DILocation(line: 94, column: 3, scope: !5147)
!5228 = !DILocation(line: 95, column: 3, scope: !5147)
!5229 = !DILocation(line: 97, column: 23, scope: !5147)
!5230 = !DILocation(line: 97, column: 3, scope: !5147)
!5231 = !DILocation(line: 98, column: 3, scope: !5147)
!5232 = !DILocation(line: 101, column: 18, scope: !5146)
!5233 = !DILocation(line: 101, column: 18, scope: !5145)
!5234 = !DILocation(line: 101, column: 18, scope: !5149)
!5235 = !{i64 2154986535}
!5236 = !DILocation(line: 101, column: 3, scope: !5147)
!5237 = !DILocation(line: 102, column: 3, scope: !5147)
!5238 = !DILocation(line: 105, column: 3, scope: !5151)
!5239 = !DILocation(line: 105, column: 3, scope: !5154)
!5240 = !DILocation(line: 105, column: 3, scope: !5153)
!5241 = !DILocation(line: 105, column: 3, scope: !5242)
!5242 = distinct !DILexicalBlock(scope: !5153, file: !2, line: 105, column: 3)
!5243 = !DILocation(line: 105, column: 3, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5153, file: !2, line: 105, column: 3)
!5245 = !{i64 2154987362, i64 2154987391, i64 2154987437, i64 2154987495, i64 2154987549, i64 2154987603, i64 2154987658, i64 2154987689, i64 2154987997, i64 2154988003, i64 2154988050, i64 2154988073, i64 2154988099}
!5246 = !DILocation(line: 105, column: 3, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5153, file: !2, line: 105, column: 3)
!5248 = !DILocation(line: 105, column: 3, scope: !5147)
!5249 = !DILocation(line: 106, column: 3, scope: !5147)
!5250 = !DILocation(line: 109, column: 2, scope: !5118)
!5251 = !DILocation(line: 110, column: 1, scope: !5118)
!5252 = distinct !DISubprogram(name: "get_current", scope: !5253, file: !5253, line: 39, type: !5254, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5256)
!5253 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!5254 = !DISubroutineType(types: !5255)
!5255 = !{!321}
!5256 = !{!5257, !5259, !5261}
!5257 = !DILocalVariable(name: "pscr_ret__", scope: !5258, file: !5253, line: 41, type: !321)
!5258 = distinct !DILexicalBlock(scope: !5252, file: !5253, line: 41, column: 9)
!5259 = !DILocalVariable(name: "__vpp_verify", scope: !5260, file: !5253, line: 41, type: !2064)
!5260 = distinct !DILexicalBlock(scope: !5258, file: !5253, line: 41, column: 9)
!5261 = !DILocalVariable(name: "pfo_val__", scope: !5262, file: !5253, line: 41, type: !288)
!5262 = distinct !DILexicalBlock(scope: !5258, file: !5253, line: 41, column: 9)
!5263 = !DILocation(line: 41, column: 9, scope: !5258)
!5264 = !DILocation(line: 41, column: 9, scope: !5260)
!5265 = !DILocation(line: 41, column: 9, scope: !5262)
!5266 = !{i64 2148832673}
!5267 = !DILocation(line: 41, column: 9, scope: !5252)
!5268 = !DILocation(line: 41, column: 2, scope: !5252)
!5269 = distinct !DISubprogram(name: "kasan_record_aux_stack_noalloc", scope: !5270, file: !5270, line: 330, type: !1194, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5271)
!5270 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!5271 = !{!5272}
!5272 = !DILocalVariable(name: "ptr", arg: 1, scope: !5269, file: !5270, line: 330, type: !33)
!5273 = !DILocation(line: 330, column: 57, scope: !5269)
!5274 = !DILocation(line: 330, column: 63, scope: !5269)
!5275 = distinct !DISubprogram(name: "kasan_record_aux_stack", scope: !5270, file: !5270, line: 329, type: !1194, scopeLine: 329, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5276)
!5276 = !{!5277}
!5277 = !DILocalVariable(name: "ptr", arg: 1, scope: !5275, file: !5270, line: 329, type: !33)
!5278 = !DILocation(line: 329, column: 49, scope: !5275)
!5279 = !DILocation(line: 329, column: 55, scope: !5275)
!5280 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5281, file: !5281, line: 94, type: !5282, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5287)
!5281 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5282 = !DISubroutineType(types: !5283)
!5283 = !{null, !5284, !48}
!5284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5285, size: 64)
!5285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5286)
!5286 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5287 = !{!5288, !5289}
!5288 = !DILocalVariable(name: "v", arg: 1, scope: !5280, file: !5281, line: 94, type: !5284)
!5289 = !DILocalVariable(name: "size", arg: 2, scope: !5280, file: !5281, line: 94, type: !48)
!5290 = !DILocation(line: 94, column: 79, scope: !5280)
!5291 = !DILocation(line: 94, column: 89, scope: !5280)
!5292 = !DILocation(line: 96, column: 20, scope: !5280)
!5293 = !DILocation(line: 96, column: 23, scope: !5280)
!5294 = !DILocation(line: 96, column: 2, scope: !5280)
!5295 = !DILocation(line: 97, column: 2, scope: !5280)
!5296 = !DILocation(line: 98, column: 1, scope: !5280)
!5297 = distinct !DISubprogram(name: "instrument_read_write", scope: !5281, file: !5281, line: 52, type: !5282, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5298)
!5298 = !{!5299, !5300}
!5299 = !DILocalVariable(name: "v", arg: 1, scope: !5297, file: !5281, line: 52, type: !5284)
!5300 = !DILocalVariable(name: "size", arg: 2, scope: !5297, file: !5281, line: 52, type: !48)
!5301 = !DILocation(line: 52, column: 72, scope: !5297)
!5302 = !DILocation(line: 52, column: 82, scope: !5297)
!5303 = !DILocation(line: 54, column: 20, scope: !5297)
!5304 = !DILocation(line: 54, column: 23, scope: !5297)
!5305 = !DILocation(line: 54, column: 2, scope: !5297)
!5306 = !DILocation(line: 55, column: 2, scope: !5297)
!5307 = !DILocation(line: 56, column: 1, scope: !5297)
!5308 = distinct !DISubprogram(name: "set_notify_resume", scope: !5309, file: !5309, line: 20, type: !4229, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5310)
!5309 = !DIFile(filename: "./include/linux/resume_user_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca76f74156d9b94e95b91e5e04126813")
!5310 = !{!5311}
!5311 = !DILocalVariable(name: "task", arg: 1, scope: !5308, file: !5309, line: 20, type: !321)
!5312 = !DILocation(line: 20, column: 58, scope: !5308)
!5313 = !DILocation(line: 22, column: 36, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5308, file: !5309, line: 22, column: 6)
!5315 = !DILocation(line: 22, column: 7, scope: !5314)
!5316 = !DILocation(line: 22, column: 6, scope: !5308)
!5317 = !DILocation(line: 23, column: 16, scope: !5314)
!5318 = !DILocation(line: 23, column: 3, scope: !5314)
!5319 = !DILocation(line: 24, column: 1, scope: !5308)
!5320 = distinct !DISubprogram(name: "set_notify_signal", scope: !4328, file: !4328, line: 375, type: !4229, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5321)
!5321 = !{!5322}
!5322 = !DILocalVariable(name: "task", arg: 1, scope: !5320, file: !4328, line: 375, type: !321)
!5323 = !DILocation(line: 375, column: 58, scope: !5320)
!5324 = !DILocation(line: 377, column: 26, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5320, file: !4328, line: 377, column: 6)
!5326 = !DILocation(line: 377, column: 6, scope: !5325)
!5327 = !DILocation(line: 377, column: 6, scope: !5320)
!5328 = !DILocation(line: 378, column: 16, scope: !5325)
!5329 = !DILocation(line: 378, column: 3, scope: !5325)
!5330 = !DILocation(line: 379, column: 1, scope: !5320)
!5331 = distinct !DISubprogram(name: "__set_notify_signal", scope: !4328, file: !4328, line: 365, type: !5332, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5334)
!5332 = !DISubroutineType(types: !5333)
!5333 = !{!860, !321}
!5334 = !{!5335}
!5335 = !DILocalVariable(name: "task", arg: 1, scope: !5331, file: !4328, line: 365, type: !321)
!5336 = !DILocation(line: 365, column: 60, scope: !5331)
!5337 = !DILocation(line: 367, column: 39, scope: !5331)
!5338 = !DILocation(line: 367, column: 10, scope: !5331)
!5339 = !DILocation(line: 367, column: 64, scope: !5331)
!5340 = !DILocation(line: 368, column: 24, scope: !5331)
!5341 = !DILocation(line: 368, column: 10, scope: !5331)
!5342 = !DILocation(line: 368, column: 9, scope: !5331)
!5343 = !DILocation(line: 0, scope: !5331)
!5344 = !DILocation(line: 367, column: 2, scope: !5331)
!5345 = !DISubprogram(name: "irq_work_queue", scope: !293, file: !293, line: 57, type: !5346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5346 = !DISubroutineType(types: !5347)
!5347 = !{!860, !291}
!5348 = distinct !DISubprogram(name: "task_work_cancel_match", scope: !2, file: !2, line: 122, type: !5349, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5354)
!5349 = !DISubroutineType(types: !5350)
!5350 = !{!277, !321, !5351, !33}
!5351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5352, size: 64)
!5352 = !DISubroutineType(types: !5353)
!5353 = !{!860, !277, !33}
!5354 = !{!5355, !5356, !5357, !5358, !5359, !5360, !5361, !5364, !5365, !5370, !5371, !5373, !5374, !5375, !5376, !5377, !5380}
!5355 = !DILocalVariable(name: "task", arg: 1, scope: !5348, file: !2, line: 122, type: !321)
!5356 = !DILocalVariable(name: "match", arg: 2, scope: !5348, file: !2, line: 123, type: !5351)
!5357 = !DILocalVariable(name: "data", arg: 3, scope: !5348, file: !2, line: 124, type: !33)
!5358 = !DILocalVariable(name: "pprev", scope: !5348, file: !2, line: 126, type: !285)
!5359 = !DILocalVariable(name: "work", scope: !5348, file: !2, line: 127, type: !277)
!5360 = !DILocalVariable(name: "flags", scope: !5348, file: !2, line: 128, type: !52)
!5361 = !DILocalVariable(name: "__dummy", scope: !5362, file: !2, line: 138, type: !52)
!5362 = distinct !DILexicalBlock(scope: !5363, file: !2, line: 138, column: 2)
!5363 = distinct !DILexicalBlock(scope: !5348, file: !2, line: 138, column: 2)
!5364 = !DILocalVariable(name: "__dummy2", scope: !5362, file: !2, line: 138, type: !52)
!5365 = !DILocalVariable(name: "__ai_ptr", scope: !5366, file: !2, line: 144, type: !285)
!5366 = distinct !DILexicalBlock(scope: !5367, file: !2, line: 144, column: 14)
!5367 = distinct !DILexicalBlock(scope: !5368, file: !2, line: 144, column: 14)
!5368 = distinct !DILexicalBlock(scope: !5369, file: !2, line: 141, column: 7)
!5369 = distinct !DILexicalBlock(scope: !5348, file: !2, line: 140, column: 15)
!5370 = !DILocalVariable(name: "__ai_oldp", scope: !5366, file: !2, line: 144, type: !285)
!5371 = !DILocalVariable(name: "success", scope: !5372, file: !2, line: 144, type: !860)
!5372 = distinct !DILexicalBlock(scope: !5366, file: !2, line: 144, column: 14)
!5373 = !DILocalVariable(name: "_old", scope: !5372, file: !2, line: 144, type: !285)
!5374 = !DILocalVariable(name: "__old", scope: !5372, file: !2, line: 144, type: !277)
!5375 = !DILocalVariable(name: "__new", scope: !5372, file: !2, line: 144, type: !277)
!5376 = !DILocalVariable(name: "__ptr", scope: !5372, file: !2, line: 144, type: !286)
!5377 = !DILocalVariable(name: "__dummy", scope: !5378, file: !2, line: 147, type: !52)
!5378 = distinct !DILexicalBlock(scope: !5379, file: !2, line: 147, column: 2)
!5379 = distinct !DILexicalBlock(scope: !5348, file: !2, line: 147, column: 2)
!5380 = !DILocalVariable(name: "__dummy2", scope: !5378, file: !2, line: 147, type: !52)
!5381 = !DILocation(line: 122, column: 44, scope: !5348)
!5382 = !DILocation(line: 123, column: 17, scope: !5348)
!5383 = !DILocation(line: 124, column: 16, scope: !5348)
!5384 = !DILocation(line: 126, column: 2, scope: !5348)
!5385 = !DILocation(line: 126, column: 25, scope: !5348)
!5386 = !DILocation(line: 126, column: 34, scope: !5348)
!5387 = !DILocation(line: 126, column: 40, scope: !5348)
!5388 = !DILocation(line: 127, column: 2, scope: !5348)
!5389 = !DILocation(line: 127, column: 24, scope: !5348)
!5390 = !DILocation(line: 128, column: 2, scope: !5348)
!5391 = !DILocation(line: 128, column: 16, scope: !5348)
!5392 = !DILocation(line: 130, column: 6, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5348, file: !2, line: 130, column: 6)
!5394 = !DILocation(line: 130, column: 6, scope: !5348)
!5395 = !DILocation(line: 131, column: 3, scope: !5393)
!5396 = !DILocation(line: 138, column: 2, scope: !5348)
!5397 = !DILocation(line: 138, column: 2, scope: !5362)
!5398 = !DILocation(line: 138, column: 2, scope: !5363)
!5399 = !DILocation(line: 139, column: 9, scope: !5400)
!5400 = distinct !DILexicalBlock(scope: !5348, file: !2, line: 139, column: 9)
!5401 = !DILocation(line: 139, column: 9, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5400, file: !2, line: 139, column: 9)
!5403 = !DILocation(line: 139, column: 7, scope: !5348)
!5404 = !DILocation(line: 140, column: 2, scope: !5348)
!5405 = !DILocation(line: 140, column: 9, scope: !5348)
!5406 = !DILocation(line: 141, column: 8, scope: !5368)
!5407 = !DILocation(line: 141, column: 14, scope: !5368)
!5408 = !DILocation(line: 141, column: 20, scope: !5368)
!5409 = !DILocation(line: 141, column: 7, scope: !5369)
!5410 = !DILocation(line: 142, column: 13, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5368, file: !2, line: 141, column: 27)
!5412 = !DILocation(line: 142, column: 19, scope: !5411)
!5413 = !DILocation(line: 142, column: 10, scope: !5411)
!5414 = !DILocation(line: 143, column: 11, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !5411, file: !2, line: 143, column: 11)
!5416 = !DILocation(line: 143, column: 11, scope: !5417)
!5417 = distinct !DILexicalBlock(scope: !5415, file: !2, line: 143, column: 11)
!5418 = !DILocation(line: 143, column: 9, scope: !5411)
!5419 = !DILocation(line: 144, column: 3, scope: !5411)
!5420 = !DILocation(line: 144, column: 14, scope: !5366)
!5421 = !DILocation(line: 144, column: 14, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5366, file: !2, line: 144, column: 14)
!5423 = !DILocation(line: 144, column: 14, scope: !5372)
!5424 = !{i64 2154997040, i64 2154997079, i64 2154997100, i64 2154997137, i64 2154997160, i64 2154997169, i64 2154997370}
!5425 = !DILocation(line: 144, column: 14, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5372, file: !2, line: 144, column: 14)
!5427 = !DILocation(line: 144, column: 14, scope: !5367)
!5428 = !DILocation(line: 144, column: 14, scope: !5368)
!5429 = !DILocation(line: 145, column: 4, scope: !5367)
!5430 = distinct !{!5430, !5404, !5431, !5219, !5220}
!5431 = !DILocation(line: 146, column: 2, scope: !5348)
!5432 = !DILocation(line: 147, column: 2, scope: !5348)
!5433 = !DILocation(line: 147, column: 2, scope: !5378)
!5434 = !DILocation(line: 147, column: 2, scope: !5379)
!5435 = !DILocation(line: 149, column: 9, scope: !5348)
!5436 = !DILocation(line: 149, column: 2, scope: !5348)
!5437 = !DILocation(line: 150, column: 1, scope: !5348)
!5438 = distinct !DISubprogram(name: "task_work_pending", scope: !259, file: !259, line: 27, type: !5332, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5439)
!5439 = !{!5440}
!5440 = !DILocalVariable(name: "task", arg: 1, scope: !5438, file: !259, line: 27, type: !321)
!5441 = !DILocation(line: 27, column: 58, scope: !5438)
!5442 = !DILocation(line: 29, column: 9, scope: !5443)
!5443 = distinct !DILexicalBlock(scope: !5438, file: !259, line: 29, column: 9)
!5444 = !DILocation(line: 29, column: 9, scope: !5445)
!5445 = distinct !DILexicalBlock(scope: !5443, file: !259, line: 29, column: 9)
!5446 = !DILocation(line: 29, column: 9, scope: !5438)
!5447 = !DILocation(line: 29, column: 2, scope: !5438)
!5448 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !5449, file: !5449, line: 32, type: !5450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5449 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5450 = !DISubroutineType(types: !5451)
!5451 = !{!52, !5452}
!5452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!5453 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !5449, file: !5449, line: 43, type: !5454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5454 = !DISubroutineType(types: !5455)
!5455 = !{null, !5452, !52}
!5456 = distinct !DISubprogram(name: "task_work_cancel_func", scope: !2, file: !2, line: 169, type: !5457, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5460)
!5457 = !DISubroutineType(types: !5458)
!5458 = !{!277, !321, !5459}
!5459 = !DIDerivedType(tag: DW_TAG_typedef, name: "task_work_func_t", file: !259, line: 8, baseType: !282)
!5460 = !{!5461, !5462}
!5461 = !DILocalVariable(name: "task", arg: 1, scope: !5456, file: !2, line: 169, type: !321)
!5462 = !DILocalVariable(name: "func", arg: 2, scope: !5456, file: !2, line: 169, type: !5459)
!5463 = !DILocation(line: 169, column: 43, scope: !5456)
!5464 = !DILocation(line: 169, column: 66, scope: !5456)
!5465 = !DILocation(line: 171, column: 32, scope: !5456)
!5466 = !DILocation(line: 171, column: 60, scope: !5456)
!5467 = !DILocation(line: 171, column: 9, scope: !5456)
!5468 = !DILocation(line: 171, column: 2, scope: !5456)
!5469 = distinct !DISubprogram(name: "task_work_func_match", scope: !2, file: !2, line: 152, type: !5352, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5470)
!5470 = !{!5471, !5472}
!5471 = !DILocalVariable(name: "cb", arg: 1, scope: !5469, file: !2, line: 152, type: !277)
!5472 = !DILocalVariable(name: "data", arg: 2, scope: !5469, file: !2, line: 152, type: !33)
!5473 = !DILocation(line: 152, column: 56, scope: !5469)
!5474 = !DILocation(line: 152, column: 66, scope: !5469)
!5475 = !DILocation(line: 154, column: 9, scope: !5469)
!5476 = !DILocation(line: 154, column: 13, scope: !5469)
!5477 = !DILocation(line: 154, column: 21, scope: !5469)
!5478 = !DILocation(line: 154, column: 18, scope: !5469)
!5479 = !DILocation(line: 154, column: 2, scope: !5469)
!5480 = distinct !DISubprogram(name: "task_work_cancel", scope: !2, file: !2, line: 189, type: !5481, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5483)
!5481 = !DISubroutineType(types: !5482)
!5482 = !{!860, !321, !277}
!5483 = !{!5484, !5485, !5486}
!5484 = !DILocalVariable(name: "task", arg: 1, scope: !5480, file: !2, line: 189, type: !321)
!5485 = !DILocalVariable(name: "cb", arg: 2, scope: !5480, file: !2, line: 189, type: !277)
!5486 = !DILocalVariable(name: "ret", scope: !5480, file: !2, line: 191, type: !277)
!5487 = !DILocation(line: 189, column: 43, scope: !5480)
!5488 = !DILocation(line: 189, column: 71, scope: !5480)
!5489 = !DILocation(line: 191, column: 2, scope: !5480)
!5490 = !DILocation(line: 191, column: 24, scope: !5480)
!5491 = !DILocation(line: 193, column: 31, scope: !5480)
!5492 = !DILocation(line: 193, column: 54, scope: !5480)
!5493 = !DILocation(line: 193, column: 8, scope: !5480)
!5494 = !DILocation(line: 193, column: 6, scope: !5480)
!5495 = !DILocation(line: 195, column: 9, scope: !5480)
!5496 = !DILocation(line: 195, column: 16, scope: !5480)
!5497 = !DILocation(line: 195, column: 13, scope: !5480)
!5498 = !DILocation(line: 196, column: 1, scope: !5480)
!5499 = !DILocation(line: 195, column: 2, scope: !5480)
!5500 = distinct !DISubprogram(name: "task_work_match", scope: !2, file: !2, line: 174, type: !5352, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5501)
!5501 = !{!5502, !5503}
!5502 = !DILocalVariable(name: "cb", arg: 1, scope: !5500, file: !2, line: 174, type: !277)
!5503 = !DILocalVariable(name: "data", arg: 2, scope: !5500, file: !2, line: 174, type: !33)
!5504 = !DILocation(line: 174, column: 51, scope: !5500)
!5505 = !DILocation(line: 174, column: 61, scope: !5500)
!5506 = !DILocation(line: 176, column: 9, scope: !5500)
!5507 = !DILocation(line: 176, column: 15, scope: !5500)
!5508 = !DILocation(line: 176, column: 12, scope: !5500)
!5509 = !DILocation(line: 176, column: 2, scope: !5500)
!5510 = distinct !DISubprogram(name: "task_work_run", scope: !2, file: !2, line: 206, type: !2572, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5511)
!5511 = !{!5512, !5513, !5514, !5515, !5516, !5521, !5522, !5524, !5525, !5526, !5527}
!5512 = !DILocalVariable(name: "task", scope: !5510, file: !2, line: 208, type: !321)
!5513 = !DILocalVariable(name: "work", scope: !5510, file: !2, line: 209, type: !277)
!5514 = !DILocalVariable(name: "head", scope: !5510, file: !2, line: 209, type: !277)
!5515 = !DILocalVariable(name: "next", scope: !5510, file: !2, line: 209, type: !277)
!5516 = !DILocalVariable(name: "__ai_ptr", scope: !5517, file: !2, line: 225, type: !285)
!5517 = distinct !DILexicalBlock(scope: !5518, file: !2, line: 225, column: 13)
!5518 = distinct !DILexicalBlock(scope: !5519, file: !2, line: 211, column: 11)
!5519 = distinct !DILexicalBlock(scope: !5520, file: !2, line: 211, column: 2)
!5520 = distinct !DILexicalBlock(scope: !5510, file: !2, line: 211, column: 2)
!5521 = !DILocalVariable(name: "__ai_oldp", scope: !5517, file: !2, line: 225, type: !285)
!5522 = !DILocalVariable(name: "success", scope: !5523, file: !2, line: 225, type: !860)
!5523 = distinct !DILexicalBlock(scope: !5517, file: !2, line: 225, column: 13)
!5524 = !DILocalVariable(name: "_old", scope: !5523, file: !2, line: 225, type: !285)
!5525 = !DILocalVariable(name: "__old", scope: !5523, file: !2, line: 225, type: !277)
!5526 = !DILocalVariable(name: "__new", scope: !5523, file: !2, line: 225, type: !277)
!5527 = !DILocalVariable(name: "__ptr", scope: !5523, file: !2, line: 225, type: !286)
!5528 = !DILocation(line: 208, column: 2, scope: !5510)
!5529 = !DILocation(line: 208, column: 22, scope: !5510)
!5530 = !DILocation(line: 208, column: 29, scope: !5510)
!5531 = !DILocation(line: 209, column: 2, scope: !5510)
!5532 = !DILocation(line: 209, column: 24, scope: !5510)
!5533 = !DILocation(line: 209, column: 31, scope: !5510)
!5534 = !DILocation(line: 209, column: 38, scope: !5510)
!5535 = !DILocation(line: 211, column: 2, scope: !5510)
!5536 = !DILocation(line: 216, column: 10, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5518, file: !2, line: 216, column: 10)
!5538 = !DILocation(line: 216, column: 10, scope: !5539)
!5539 = distinct !DILexicalBlock(scope: !5537, file: !2, line: 216, column: 10)
!5540 = !DILocation(line: 216, column: 8, scope: !5518)
!5541 = !DILocation(line: 217, column: 3, scope: !5518)
!5542 = !DILocation(line: 218, column: 9, scope: !5543)
!5543 = distinct !DILexicalBlock(scope: !5518, file: !2, line: 217, column: 6)
!5544 = !DILocation(line: 219, column: 9, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5543, file: !2, line: 219, column: 8)
!5546 = !DILocation(line: 219, column: 8, scope: !5543)
!5547 = !DILocation(line: 220, column: 9, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5549, file: !2, line: 220, column: 9)
!5549 = distinct !DILexicalBlock(scope: !5545, file: !2, line: 219, column: 15)
!5550 = !DILocation(line: 220, column: 15, scope: !5548)
!5551 = !DILocation(line: 220, column: 21, scope: !5548)
!5552 = !DILocation(line: 220, column: 9, scope: !5549)
!5553 = !DILocation(line: 221, column: 11, scope: !5548)
!5554 = !DILocation(line: 221, column: 6, scope: !5548)
!5555 = !DILocation(line: 223, column: 6, scope: !5548)
!5556 = !DILocation(line: 224, column: 4, scope: !5549)
!5557 = !DILocation(line: 225, column: 3, scope: !5543)
!5558 = !DILocation(line: 225, column: 13, scope: !5517)
!5559 = !DILocation(line: 225, column: 13, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5517, file: !2, line: 225, column: 13)
!5561 = !DILocation(line: 225, column: 13, scope: !5523)
!5562 = !{i64 2155003790, i64 2155003829, i64 2155003850, i64 2155003887, i64 2155003910, i64 2155003919, i64 2155004120}
!5563 = !DILocation(line: 225, column: 13, scope: !5564)
!5564 = distinct !DILexicalBlock(scope: !5523, file: !2, line: 225, column: 13)
!5565 = !DILocation(line: 225, column: 13, scope: !5518)
!5566 = !DILocation(line: 225, column: 12, scope: !5518)
!5567 = distinct !{!5567, !5541, !5568, !5219, !5220}
!5568 = !DILocation(line: 225, column: 56, scope: !5518)
!5569 = !DILocation(line: 227, column: 8, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5518, file: !2, line: 227, column: 7)
!5571 = !DILocation(line: 227, column: 7, scope: !5518)
!5572 = !DILocation(line: 228, column: 4, scope: !5570)
!5573 = !DILocation(line: 234, column: 3, scope: !5518)
!5574 = !DILocation(line: 235, column: 3, scope: !5518)
!5575 = !DILocation(line: 237, column: 3, scope: !5518)
!5576 = !DILocation(line: 238, column: 11, scope: !5577)
!5577 = distinct !DILexicalBlock(scope: !5518, file: !2, line: 237, column: 6)
!5578 = !DILocation(line: 238, column: 17, scope: !5577)
!5579 = !DILocation(line: 238, column: 9, scope: !5577)
!5580 = !DILocation(line: 239, column: 4, scope: !5577)
!5581 = !DILocation(line: 239, column: 10, scope: !5577)
!5582 = !DILocation(line: 239, column: 15, scope: !5577)
!5583 = !DILocation(line: 240, column: 11, scope: !5577)
!5584 = !DILocation(line: 240, column: 9, scope: !5577)
!5585 = !DILocation(line: 241, column: 4, scope: !5586)
!5586 = distinct !DILexicalBlock(scope: !5577, file: !2, line: 241, column: 4)
!5587 = !DILocation(line: 242, column: 3, scope: !5577)
!5588 = !DILocation(line: 242, column: 12, scope: !5518)
!5589 = distinct !{!5589, !5575, !5590, !5219, !5220}
!5590 = !DILocation(line: 242, column: 16, scope: !5518)
!5591 = !DILocation(line: 211, column: 2, scope: !5519)
!5592 = distinct !{!5592, !5593, !5594, !5220}
!5593 = !DILocation(line: 211, column: 2, scope: !5520)
!5594 = !DILocation(line: 243, column: 2, scope: !5520)
!5595 = !DILocation(line: 244, column: 1, scope: !5510)
!5596 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !5449, file: !5449, line: 29, type: !5597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5597 = !DISubroutineType(types: !5598)
!5598 = !{null, !5452}
!5599 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !5449, file: !5449, line: 41, type: !5597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5600 = distinct !DISubprogram(name: "__might_resched", scope: !5601, file: !5601, line: 184, type: !5602, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5604)
!5601 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!5602 = !DISubroutineType(types: !5603)
!5603 = !{null, !30, !35, !13}
!5604 = !{!5605, !5606, !5607}
!5605 = !DILocalVariable(name: "file", arg: 1, scope: !5600, file: !5601, line: 184, type: !30)
!5606 = !DILocalVariable(name: "line", arg: 2, scope: !5600, file: !5601, line: 184, type: !35)
!5607 = !DILocalVariable(name: "offsets", arg: 3, scope: !5600, file: !5601, line: 185, type: !13)
!5608 = !DILocation(line: 184, column: 50, scope: !5600)
!5609 = !DILocation(line: 184, column: 60, scope: !5600)
!5610 = !DILocation(line: 185, column: 23, scope: !5600)
!5611 = !DILocation(line: 185, column: 34, scope: !5600)
!5612 = !DILocation(line: 2104, column: 9, scope: !5613)
!5613 = distinct !DILexicalBlock(scope: !5108, file: !323, line: 2104, column: 9)
!5614 = !DILocation(line: 2104, column: 9, scope: !5108)
!5615 = !DILocation(line: 2104, column: 2, scope: !5108)
!5616 = distinct !DISubprogram(name: "kasan_check_write", scope: !5617, file: !5617, line: 44, type: !5618, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5620)
!5617 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5618 = !DISubroutineType(types: !5619)
!5619 = !{!860, !5284, !13}
!5620 = !{!5621, !5622}
!5621 = !DILocalVariable(name: "p", arg: 1, scope: !5616, file: !5617, line: 44, type: !5284)
!5622 = !DILocalVariable(name: "size", arg: 2, scope: !5616, file: !5617, line: 44, type: !13)
!5623 = !DILocation(line: 44, column: 59, scope: !5616)
!5624 = !DILocation(line: 44, column: 75, scope: !5616)
!5625 = !DILocation(line: 46, column: 2, scope: !5616)
!5626 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5627, file: !5627, line: 229, type: !5628, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5630)
!5627 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5628 = !DISubroutineType(types: !5629)
!5629 = !{null, !5284, !48, !35}
!5630 = !{!5631, !5632, !5633}
!5631 = !DILocalVariable(name: "ptr", arg: 1, scope: !5626, file: !5627, line: 229, type: !5284)
!5632 = !DILocalVariable(name: "size", arg: 2, scope: !5626, file: !5627, line: 229, type: !48)
!5633 = !DILocalVariable(name: "type", arg: 3, scope: !5626, file: !5627, line: 230, type: !35)
!5634 = !DILocation(line: 229, column: 60, scope: !5626)
!5635 = !DILocation(line: 229, column: 72, scope: !5626)
!5636 = !DILocation(line: 230, column: 15, scope: !5626)
!5637 = !DILocation(line: 230, column: 23, scope: !5626)
!5638 = distinct !DISubprogram(name: "test_and_set_tsk_thread_flag", scope: !323, file: !323, line: 2056, type: !5639, scopeLine: 2057, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5641)
!5639 = !DISubroutineType(types: !5640)
!5640 = !{!35, !321, !35}
!5641 = !{!5642, !5643}
!5642 = !DILocalVariable(name: "tsk", arg: 1, scope: !5638, file: !323, line: 2056, type: !321)
!5643 = !DILocalVariable(name: "flag", arg: 2, scope: !5638, file: !323, line: 2056, type: !35)
!5644 = !DILocation(line: 2056, column: 68, scope: !5638)
!5645 = !DILocation(line: 2056, column: 77, scope: !5638)
!5646 = !DILocation(line: 2058, column: 37, scope: !5638)
!5647 = !DILocation(line: 2058, column: 60, scope: !5638)
!5648 = !DILocation(line: 2058, column: 9, scope: !5638)
!5649 = !DILocation(line: 2058, column: 2, scope: !5638)
!5650 = !DISubprogram(name: "kick_process", scope: !323, file: !323, line: 2002, type: !4229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5651 = distinct !DISubprogram(name: "test_and_set_ti_thread_flag", scope: !5652, file: !5652, line: 106, type: !5653, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5656)
!5652 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!5653 = !DISubroutineType(types: !5654)
!5654 = !{!35, !5655, !35}
!5655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!5656 = !{!5657, !5658}
!5657 = !DILocalVariable(name: "ti", arg: 1, scope: !5651, file: !5652, line: 106, type: !5655)
!5658 = !DILocalVariable(name: "flag", arg: 2, scope: !5651, file: !5652, line: 106, type: !35)
!5659 = !DILocation(line: 106, column: 67, scope: !5651)
!5660 = !DILocation(line: 106, column: 75, scope: !5651)
!5661 = !DILocation(line: 108, column: 26, scope: !5651)
!5662 = !DILocation(line: 108, column: 50, scope: !5651)
!5663 = !DILocation(line: 108, column: 54, scope: !5651)
!5664 = !DILocation(line: 108, column: 9, scope: !5651)
!5665 = !DILocation(line: 108, column: 2, scope: !5651)
!5666 = distinct !DISubprogram(name: "test_and_set_bit", scope: !5667, file: !5667, line: 68, type: !5668, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5672)
!5667 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!5668 = !DISubroutineType(types: !5669)
!5669 = !{!860, !1091, !5670}
!5670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5671, size: 64)
!5671 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !52)
!5672 = !{!5673, !5674}
!5673 = !DILocalVariable(name: "nr", arg: 1, scope: !5666, file: !5667, line: 68, type: !1091)
!5674 = !DILocalVariable(name: "addr", arg: 2, scope: !5666, file: !5667, line: 68, type: !5670)
!5675 = !DILocation(line: 68, column: 51, scope: !5666)
!5676 = !DILocation(line: 68, column: 79, scope: !5666)
!5677 = !DILocation(line: 70, column: 2, scope: !5666)
!5678 = !DILocation(line: 70, column: 2, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5666, file: !5667, line: 70, column: 2)
!5680 = !DILocation(line: 71, column: 31, scope: !5666)
!5681 = !DILocation(line: 71, column: 38, scope: !5666)
!5682 = !DILocation(line: 71, column: 36, scope: !5666)
!5683 = !DILocation(line: 71, column: 2, scope: !5666)
!5684 = !DILocation(line: 72, column: 31, scope: !5666)
!5685 = !DILocation(line: 72, column: 35, scope: !5666)
!5686 = !DILocation(line: 72, column: 9, scope: !5666)
!5687 = !DILocation(line: 72, column: 2, scope: !5666)
!5688 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !5689, file: !5689, line: 136, type: !5668, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5690)
!5689 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5690 = !{!5691, !5692, !5693}
!5691 = !DILocalVariable(name: "nr", arg: 1, scope: !5688, file: !5689, line: 136, type: !1091)
!5692 = !DILocalVariable(name: "addr", arg: 2, scope: !5688, file: !5689, line: 136, type: !5670)
!5693 = !DILocalVariable(name: "c", scope: !5694, file: !5689, line: 138, type: !860)
!5694 = distinct !DILexicalBlock(scope: !5688, file: !5689, line: 138, column: 9)
!5695 = !DILocation(line: 136, column: 28, scope: !5688)
!5696 = !DILocation(line: 136, column: 56, scope: !5688)
!5697 = !DILocation(line: 138, column: 9, scope: !5694)
!5698 = !{i64 2148624241, i64 2148624280, i64 2148624301, i64 2148624338, i64 2148624361, i64 2148624370, i64 2148624473}
!5699 = !DILocation(line: 138, column: 9, scope: !5688)
!5700 = !DILocation(line: 138, column: 2, scope: !5688)
!5701 = !DISubprogram(name: "wake_up_state", scope: !323, file: !323, line: 1997, type: !5702, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5702 = !DISubroutineType(types: !5703)
!5703 = !{!35, !321, !13}
!5704 = distinct !DISubprogram(name: "task_work_set_notify_irq", scope: !2, file: !2, line: 10, type: !314, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5705)
!5705 = !{!5706}
!5706 = !DILocalVariable(name: "entry", arg: 1, scope: !5704, file: !2, line: 10, type: !291)
!5707 = !DILocation(line: 10, column: 55, scope: !5704)
!5708 = !DILocation(line: 12, column: 31, scope: !5704)
!5709 = !DILocation(line: 12, column: 2, scope: !5704)
!5710 = !DILocation(line: 13, column: 1, scope: !5704)
