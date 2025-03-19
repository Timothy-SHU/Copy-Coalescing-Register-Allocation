; ModuleID = 'kernel/trace/rethook.c'
source_filename = "kernel/trace/rethook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_call_key = type { ptr, %union.anon.13 }
%union.anon.13 = type { i64 }
%struct.pcpu_hot = type { %union.anon.15 }
%union.anon.15 = type { %struct.anon.16, [16 x i8] }
%struct.anon.16 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
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
%struct.atomic_t = type { i32 }
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
%struct.rethook_node = type { %union.anon.14, %struct.llist_node, ptr, i64, i64 }
%union.anon.14 = type { %struct.freelist_node }
%struct.freelist_node = type { %struct.atomic_t, ptr }
%struct.rethook = type { ptr, ptr, %struct.freelist_head, %struct.refcount_struct, %struct.callback_head }
%struct.freelist_head = type { ptr }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.17, i64, i64, %union.anon.18 }
%union.anon.17 = type { i64 }
%union.anon.18 = type { i64 }

@rethook_flush_task.__UNIQUE_ID___addressable___SCK__preempt_schedule303 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !0
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@_kbl_addr_rethook_recycle = internal global i64 ptrtoint (ptr @rethook_recycle to i64), section "_kprobe_blacklist", align 8, !dbg !4164
@_kbl_addr_rethook_try_get = internal global i64 ptrtoint (ptr @rethook_try_get to i64), section "_kprobe_blacklist", align 8, !dbg !4166
@_kbl_addr_rethook_hook = internal global i64 ptrtoint (ptr @rethook_hook to i64), section "_kprobe_blacklist", align 8, !dbg !4168
@_kbl_addr___rethook_find_ret_addr = internal global i64 ptrtoint (ptr @__rethook_find_ret_addr to i64), section "_kprobe_blacklist", align 8, !dbg !4170
@.str = private unnamed_addr constant [23 x i8] c"kernel/trace/rethook.c\00", align 1, !dbg !4172
@_kbl_addr_rethook_find_ret_addr = internal global i64 ptrtoint (ptr @rethook_find_ret_addr to i64), section "_kprobe_blacklist", align 8, !dbg !4177
@.str.1 = private unnamed_addr constant [82 x i8] c"\013rethook: rethook: Return address not found! Maybe there is a bug in the kernel\0A\00", align 1, !dbg !4179
@rethook_trampoline_handler.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace313 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !4184
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@_kbl_addr_rethook_trampoline_handler = internal global i64 ptrtoint (ptr @rethook_trampoline_handler to i64), section "_kprobe_blacklist", align 8, !dbg !4209
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4211
@.str.3 = private unnamed_addr constant [25 x i8] c"include/linux/freelist.h\00", align 1, !dbg !4216
@llvm.compiler.used = appending global [8 x ptr] [ptr @rethook_flush_task.__UNIQUE_ID___addressable___SCK__preempt_schedule303, ptr @_kbl_addr_rethook_recycle, ptr @_kbl_addr_rethook_try_get, ptr @_kbl_addr_rethook_hook, ptr @_kbl_addr___rethook_find_ret_addr, ptr @_kbl_addr_rethook_find_ret_addr, ptr @rethook_trampoline_handler.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace313, ptr @_kbl_addr_rethook_trampoline_handler], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rethook_flush_task(ptr noundef %tk) #0 align 16 !dbg !2 {
entry:
  %tk.addr = alloca ptr, align 8
  %rhn = alloca ptr, align 8
  %node = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %tk, ptr %tk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tk.addr, metadata !4222, metadata !DIExpression()), !dbg !4238
  call void @llvm.lifetime.start.p0(i64 8, ptr %rhn) #17, !dbg !4239
  call void @llvm.dbg.declare(metadata ptr %rhn, metadata !4223, metadata !DIExpression()), !dbg !4240
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #17, !dbg !4241
  call void @llvm.dbg.declare(metadata ptr %node, metadata !4224, metadata !DIExpression()), !dbg !4242
  %0 = load ptr, ptr %tk.addr, align 8, !dbg !4243
  %rethooks = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 194, !dbg !4244
  %call = call ptr @__llist_del_all(ptr noundef %rethooks) #18, !dbg !4245
  store ptr %call, ptr %node, align 8, !dbg !4246
  br label %while.cond, !dbg !4247

while.cond:                                       ; preds = %do.end9, %entry
  %1 = load ptr, ptr %node, align 8, !dbg !4248
  %tobool = icmp ne ptr %1, null, !dbg !4247
  br i1 %tobool, label %while.body, label %while.end, !dbg !4247

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !4249
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4225, metadata !DIExpression()), !dbg !4249
  %2 = load ptr, ptr %node, align 8, !dbg !4249
  store ptr %2, ptr %__mptr, align 8, !dbg !4249
  %3 = load ptr, ptr %__mptr, align 8, !dbg !4249
  %add.ptr = getelementptr i8, ptr %3, i64 -16, !dbg !4249
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4249
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !4250
  %4 = load ptr, ptr %tmp, align 8, !dbg !4249
  store ptr %4, ptr %rhn, align 8, !dbg !4251
  %5 = load ptr, ptr %node, align 8, !dbg !4252
  %next = getelementptr inbounds %struct.llist_node, ptr %5, i32 0, i32 0, !dbg !4253
  %6 = load ptr, ptr %next, align 8, !dbg !4253
  store ptr %6, ptr %node, align 8, !dbg !4254
  br label %do.body, !dbg !4255

do.body:                                          ; preds = %while.body
  call void @__preempt_count_add(i32 noundef 1) #18, !dbg !4256
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !4256, !srcloc !4258
  br label %do.cond, !dbg !4256

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4256

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %rhn, align 8, !dbg !4259
  call void @rethook_recycle(ptr noundef %7) #18, !dbg !4260
  br label %do.body1, !dbg !4261

do.body1:                                         ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !4262, !srcloc !4264
  %call2 = call zeroext i1 @__preempt_count_dec_and_test() #18, !dbg !4265
  %lnot = xor i1 %call2, true, !dbg !4265
  %lnot3 = xor i1 %lnot, true, !dbg !4265
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4265
  %conv = sext i32 %lnot.ext to i64, !dbg !4265
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4265
  %tobool4 = icmp ne i64 %expval, 0, !dbg !4265
  br i1 %tobool4, label %if.then, label %if.end, !dbg !4262

if.then:                                          ; preds = %do.body1
  br label %do.body5, !dbg !4265

do.body5:                                         ; preds = %if.then
  %8 = call i64 @llvm.read_register.i64(metadata !4228), !dbg !4267
  %9 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %8) #17, !dbg !4267, !srcloc !4269
  call void @llvm.write_register.i64(metadata !4228, i64 %9), !dbg !4267
  br label %do.cond6, !dbg !4267

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !4267

do.end7:                                          ; preds = %do.cond6
  br label %if.end, !dbg !4267

if.end:                                           ; preds = %do.end7, %do.body1
  br label %do.cond8, !dbg !4262

do.cond8:                                         ; preds = %if.end
  br label %do.end9, !dbg !4262

do.end9:                                          ; preds = %do.cond8
  br label %while.cond, !dbg !4247, !llvm.loop !4270

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #17, !dbg !4274
  call void @llvm.lifetime.end.p0(i64 8, ptr %rhn) #17, !dbg !4274
  ret void, !dbg !4274
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__llist_del_all(ptr noundef %head) #3 align 16 !dbg !4275 {
entry:
  %head.addr = alloca ptr, align 8
  %first = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4280, metadata !DIExpression()), !dbg !4282
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #17, !dbg !4283
  call void @llvm.dbg.declare(metadata ptr %first, metadata !4281, metadata !DIExpression()), !dbg !4284
  %0 = load ptr, ptr %head.addr, align 8, !dbg !4285
  %first1 = getelementptr inbounds %struct.llist_head, ptr %0, i32 0, i32 0, !dbg !4286
  %1 = load ptr, ptr %first1, align 8, !dbg !4286
  store ptr %1, ptr %first, align 8, !dbg !4284
  %2 = load ptr, ptr %head.addr, align 8, !dbg !4287
  %first2 = getelementptr inbounds %struct.llist_head, ptr %2, i32 0, i32 0, !dbg !4288
  store ptr null, ptr %first2, align 8, !dbg !4289
  %3 = load ptr, ptr %first, align 8, !dbg !4290
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #17, !dbg !4291
  ret ptr %3, !dbg !4292
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #4 align 16 !dbg !4293 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4296, metadata !DIExpression()), !dbg !4303
  br label %do.body, !dbg !4304

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #17, !dbg !4305
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !4297, metadata !DIExpression()), !dbg !4305
  %0 = load i32, ptr %val.addr, align 4, !dbg !4305
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !4305
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !4305

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !4305
  %cmp = icmp eq i32 %2, 1, !dbg !4305
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !4305

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !4305
  %cmp1 = icmp eq i32 %3, -1, !dbg !4305
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !4305

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !4305
  br label %cond.end, !dbg !4305

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !4305

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !4305
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !4305
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !4306
  %cmp2 = icmp eq i32 %5, 1, !dbg !4306
  br i1 %cmp2, label %if.then, label %if.else, !dbg !4305

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1)) #17, !dbg !4307, !srcloc !4309
  br label %if.end8, !dbg !4306

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !4310
  %cmp3 = icmp eq i32 %6, -1, !dbg !4310
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !4306

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1)) #17, !dbg !4311, !srcloc !4313
  br label %if.end, !dbg !4310

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !4310

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #17, !dbg !4314
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !4299, metadata !DIExpression()), !dbg !4314
  %7 = load i32, ptr %val.addr, align 4, !dbg !4314
  %conv = sext i32 %7 to i64, !dbg !4314
  %and = and i64 %conv, 4294967295, !dbg !4314
  %conv7 = trunc i64 %and to i32, !dbg !4314
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !4314
  %8 = load i32, ptr %pto_val__, align 4, !dbg !4314
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1)) #17, !dbg !4314, !srcloc !4315
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #17, !dbg !4310
  br label %do.cond, !dbg !4314

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !4314

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #17, !dbg !4304
  br label %do.end10, !dbg !4305

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !4316
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rethook_recycle(ptr noundef %node) #0 align 16 !dbg !4317 {
entry:
  %node.addr = alloca ptr, align 8
  %handler = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !4321, metadata !DIExpression()), !dbg !4323
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler) #17, !dbg !4324
  call void @llvm.dbg.declare(metadata ptr %handler, metadata !4322, metadata !DIExpression()), !dbg !4325
  %0 = load ptr, ptr %node.addr, align 8, !dbg !4326
  %rethook = getelementptr inbounds %struct.rethook_node, ptr %0, i32 0, i32 2, !dbg !4327
  %1 = load ptr, ptr %rethook, align 8, !dbg !4327
  %call = call ptr @rethook_get_handler(ptr noundef %1) #18, !dbg !4328
  store ptr %call, ptr %handler, align 8, !dbg !4329
  %2 = load ptr, ptr %handler, align 8, !dbg !4330
  %tobool = icmp ne ptr %2, null, !dbg !4330
  %lnot = xor i1 %tobool, true, !dbg !4330
  %lnot1 = xor i1 %lnot, true, !dbg !4330
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4330
  %conv = sext i32 %lnot.ext to i64, !dbg !4330
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4330
  %tobool2 = icmp ne i64 %expval, 0, !dbg !4330
  br i1 %tobool2, label %if.then, label %if.else, !dbg !4332

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %node.addr, align 8, !dbg !4333
  %4 = getelementptr inbounds %struct.rethook_node, ptr %3, i32 0, i32 0, !dbg !4334
  %5 = load ptr, ptr %node.addr, align 8, !dbg !4335
  %rethook3 = getelementptr inbounds %struct.rethook_node, ptr %5, i32 0, i32 2, !dbg !4336
  %6 = load ptr, ptr %rethook3, align 8, !dbg !4336
  %pool = getelementptr inbounds %struct.rethook, ptr %6, i32 0, i32 2, !dbg !4337
  call void @freelist_add(ptr noundef %4, ptr noundef %pool) #18, !dbg !4338
  br label %if.end, !dbg !4338

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %node.addr, align 8, !dbg !4339
  %8 = getelementptr inbounds %struct.rethook_node, ptr %7, i32 0, i32 0, !dbg !4340
  call void @call_rcu(ptr noundef %8, ptr noundef @free_rethook_node_rcu) #18, !dbg !4341
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler) #17, !dbg !4342
  ret void, !dbg !4342
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #4 align 16 !dbg !4343 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #17, !dbg !4347
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4345, metadata !DIExpression()), !dbg !4347
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1)) #17, !dbg !4347, !srcloc !4348
  %1 = icmp ult i8 %0, 2, !dbg !4347
  call void @llvm.assume(i1 %1), !dbg !4347
  store i8 %0, ptr %c, align 1, !dbg !4347
  %2 = load i8, ptr %c, align 1, !dbg !4347, !range !4349, !noundef !405
  %tobool = trunc i8 %2 to i1, !dbg !4347
  %frombool = zext i1 %tobool to i8, !dbg !4347
  store i8 %frombool, ptr %tmp, align 1, !dbg !4347
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #17, !dbg !4350
  %3 = load i8, ptr %tmp, align 1, !dbg !4347, !range !4349, !noundef !405
  %tobool1 = trunc i8 %3 to i1, !dbg !4347
  ret i1 %tobool1, !dbg !4351
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rethook_stop(ptr noundef %rh) #0 align 16 !dbg !4352 {
entry:
  %rh.addr = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  store ptr %rh, ptr %rh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rh.addr, metadata !4356, metadata !DIExpression()), !dbg !4359
  br label %do.body, !dbg !4360

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #17, !dbg !4361
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !4357, metadata !DIExpression()), !dbg !4361
  store i64 0, ptr %_r_a_p__v, align 8, !dbg !4361
  %0 = load i64, ptr %_r_a_p__v, align 8, !dbg !4362
  %cmp = icmp eq i64 %0, 0, !dbg !4362
  br i1 %cmp, label %if.then, label %if.else, !dbg !4361

if.then:                                          ; preds = %do.body
  br label %do.body1, !dbg !4362

do.body1:                                         ; preds = %if.then
  br label %do.body2, !dbg !4364

do.body2:                                         ; preds = %do.body1
  br label %do.cond, !dbg !4366

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !4366

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !4364

do.body3:                                         ; preds = %do.end
  %1 = load i64, ptr %_r_a_p__v, align 8, !dbg !4368
  %2 = inttoptr i64 %1 to ptr, !dbg !4368
  %3 = load ptr, ptr %rh.addr, align 8, !dbg !4368
  %handler = getelementptr inbounds %struct.rethook, ptr %3, i32 0, i32 1, !dbg !4368
  store volatile ptr %2, ptr %handler, align 8, !dbg !4368
  br label %do.cond4, !dbg !4368

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !4368

do.end5:                                          ; preds = %do.cond4
  br label %do.cond6, !dbg !4364

do.cond6:                                         ; preds = %do.end5
  br label %do.end7, !dbg !4364

do.end7:                                          ; preds = %do.cond6
  br label %if.end, !dbg !4364

if.else:                                          ; preds = %do.body
  br label %do.body8, !dbg !4362

do.body8:                                         ; preds = %if.else
  br label %do.body9, !dbg !4370

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !4372

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !4372

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !4370

do.body12:                                        ; preds = %do.end11
  br label %do.body13, !dbg !4374

do.body13:                                        ; preds = %do.body12
  br label %do.cond14, !dbg !4376

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !4376

do.end15:                                         ; preds = %do.cond14
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !4374, !srcloc !4378
  br label %do.body16, !dbg !4374

do.body16:                                        ; preds = %do.end15
  br label %do.body17, !dbg !4379

do.body17:                                        ; preds = %do.body16
  br label %do.cond18, !dbg !4381

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !4381

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !4379

do.body20:                                        ; preds = %do.end19
  %4 = load i64, ptr %_r_a_p__v, align 8, !dbg !4383
  %5 = inttoptr i64 %4 to ptr, !dbg !4383
  %6 = load ptr, ptr %rh.addr, align 8, !dbg !4383
  %handler21 = getelementptr inbounds %struct.rethook, ptr %6, i32 0, i32 1, !dbg !4383
  store volatile ptr %5, ptr %handler21, align 8, !dbg !4383
  br label %do.cond22, !dbg !4383

do.cond22:                                        ; preds = %do.body20
  br label %do.end23, !dbg !4383

do.end23:                                         ; preds = %do.cond22
  br label %do.cond24, !dbg !4379

do.cond24:                                        ; preds = %do.end23
  br label %do.end25, !dbg !4379

do.end25:                                         ; preds = %do.cond24
  br label %do.cond26, !dbg !4374

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !4374

do.end27:                                         ; preds = %do.cond26
  br label %do.cond28, !dbg !4370

do.cond28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !4370

do.end29:                                         ; preds = %do.cond28
  br label %if.end

if.end:                                           ; preds = %do.end29, %do.end7
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #17, !dbg !4360
  br label %do.end31, !dbg !4361

do.end31:                                         ; preds = %if.end
  ret void, !dbg !4385
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rethook_free(ptr noundef %rh) #0 align 16 !dbg !4386 {
entry:
  %rh.addr = alloca ptr, align 8
  store ptr %rh, ptr %rh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rh.addr, metadata !4388, metadata !DIExpression()), !dbg !4389
  %0 = load ptr, ptr %rh.addr, align 8, !dbg !4390
  call void @rethook_stop(ptr noundef %0) #18, !dbg !4391
  %1 = load ptr, ptr %rh.addr, align 8, !dbg !4392
  %rcu = getelementptr inbounds %struct.rethook, ptr %1, i32 0, i32 4, !dbg !4393
  call void @call_rcu(ptr noundef %rcu, ptr noundef @rethook_free_rcu) #18, !dbg !4394
  ret void, !dbg !4395
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4396 dso_local void @call_rcu(ptr noundef, ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rethook_free_rcu(ptr noundef %head) #0 align 16 !dbg !4401 {
entry:
  %head.addr = alloca ptr, align 8
  %rh = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %rhn = alloca ptr, align 8
  %node = alloca ptr, align 8
  %count = alloca i32, align 4
  %__mptr2 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4403, metadata !DIExpression()), !dbg !4413
  call void @llvm.lifetime.start.p0(i64 8, ptr %rh) #17, !dbg !4414
  call void @llvm.dbg.declare(metadata ptr %rh, metadata !4404, metadata !DIExpression()), !dbg !4415
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !4416
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4405, metadata !DIExpression()), !dbg !4416
  %0 = load ptr, ptr %head.addr, align 8, !dbg !4416
  store ptr %0, ptr %__mptr, align 8, !dbg !4416
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4416
  %add.ptr = getelementptr i8, ptr %1, i64 -32, !dbg !4416
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4416
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !4417
  %2 = load ptr, ptr %tmp, align 8, !dbg !4416
  store ptr %2, ptr %rh, align 8, !dbg !4415
  call void @llvm.lifetime.start.p0(i64 8, ptr %rhn) #17, !dbg !4418
  call void @llvm.dbg.declare(metadata ptr %rhn, metadata !4407, metadata !DIExpression()), !dbg !4419
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #17, !dbg !4420
  call void @llvm.dbg.declare(metadata ptr %node, metadata !4408, metadata !DIExpression()), !dbg !4421
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #17, !dbg !4422
  call void @llvm.dbg.declare(metadata ptr %count, metadata !4409, metadata !DIExpression()), !dbg !4423
  store i32 1, ptr %count, align 4, !dbg !4423
  %3 = load ptr, ptr %rh, align 8, !dbg !4424
  %pool = getelementptr inbounds %struct.rethook, ptr %3, i32 0, i32 2, !dbg !4425
  %head1 = getelementptr inbounds %struct.freelist_head, ptr %pool, i32 0, i32 0, !dbg !4426
  %4 = load ptr, ptr %head1, align 8, !dbg !4426
  store ptr %4, ptr %node, align 8, !dbg !4427
  br label %while.cond, !dbg !4428

while.cond:                                       ; preds = %while.body, %entry
  %5 = load ptr, ptr %node, align 8, !dbg !4429
  %tobool = icmp ne ptr %5, null, !dbg !4428
  br i1 %tobool, label %while.body, label %while.end, !dbg !4428

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #17, !dbg !4430
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !4410, metadata !DIExpression()), !dbg !4430
  %6 = load ptr, ptr %node, align 8, !dbg !4430
  store ptr %6, ptr %__mptr2, align 8, !dbg !4430
  %7 = load ptr, ptr %__mptr2, align 8, !dbg !4430
  %add.ptr4 = getelementptr i8, ptr %7, i64 0, !dbg !4430
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !4430
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #17, !dbg !4431
  %8 = load ptr, ptr %tmp3, align 8, !dbg !4430
  store ptr %8, ptr %rhn, align 8, !dbg !4432
  %9 = load ptr, ptr %node, align 8, !dbg !4433
  %next = getelementptr inbounds %struct.freelist_node, ptr %9, i32 0, i32 1, !dbg !4434
  %10 = load ptr, ptr %next, align 8, !dbg !4434
  store ptr %10, ptr %node, align 8, !dbg !4435
  %11 = load ptr, ptr %rhn, align 8, !dbg !4436
  call void @kfree(ptr noundef %11) #18, !dbg !4437
  %12 = load i32, ptr %count, align 4, !dbg !4438
  %inc = add i32 %12, 1, !dbg !4438
  store i32 %inc, ptr %count, align 4, !dbg !4438
  br label %while.cond, !dbg !4428, !llvm.loop !4439

while.end:                                        ; preds = %while.cond
  %13 = load i32, ptr %count, align 4, !dbg !4441
  %14 = load ptr, ptr %rh, align 8, !dbg !4443
  %ref = getelementptr inbounds %struct.rethook, ptr %14, i32 0, i32 3, !dbg !4444
  %call = call zeroext i1 @refcount_sub_and_test(i32 noundef %13, ptr noundef %ref) #18, !dbg !4445
  br i1 %call, label %if.then, label %if.end, !dbg !4446

if.then:                                          ; preds = %while.end
  %15 = load ptr, ptr %rh, align 8, !dbg !4447
  call void @kfree(ptr noundef %15) #18, !dbg !4448
  br label %if.end, !dbg !4448

if.end:                                           ; preds = %if.then, %while.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #17, !dbg !4449
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #17, !dbg !4449
  call void @llvm.lifetime.end.p0(i64 8, ptr %rhn) #17, !dbg !4449
  call void @llvm.lifetime.end.p0(i64 8, ptr %rh) #17, !dbg !4449
  ret void, !dbg !4449
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @rethook_alloc(ptr noundef %data, ptr noundef %handler) #0 align 16 !dbg !4450 {
entry:
  %retval = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %handler.addr = alloca ptr, align 8
  %rh = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %_r_a_p__v = alloca i64, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4454, metadata !DIExpression()), !dbg !4459
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !4455, metadata !DIExpression()), !dbg !4460
  call void @llvm.lifetime.start.p0(i64 8, ptr %rh) #17, !dbg !4461
  call void @llvm.dbg.declare(metadata ptr %rh, metadata !4456, metadata !DIExpression()), !dbg !4462
  %call = call noalias ptr @kzalloc(i64 noundef 48, i32 noundef 3264) #19, !dbg !4463
  store ptr %call, ptr %rh, align 8, !dbg !4462
  %0 = load ptr, ptr %rh, align 8, !dbg !4464
  %tobool = icmp ne ptr %0, null, !dbg !4464
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4466

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %handler.addr, align 8, !dbg !4467
  %tobool1 = icmp ne ptr %1, null, !dbg !4467
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4468

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load ptr, ptr %rh, align 8, !dbg !4469
  call void @kfree(ptr noundef %2) #18, !dbg !4471
  store ptr null, ptr %retval, align 8, !dbg !4472
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4472

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %data.addr, align 8, !dbg !4473
  %4 = load ptr, ptr %rh, align 8, !dbg !4474
  %data2 = getelementptr inbounds %struct.rethook, ptr %4, i32 0, i32 0, !dbg !4475
  store ptr %3, ptr %data2, align 8, !dbg !4476
  br label %do.body, !dbg !4477

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #17, !dbg !4478
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !4457, metadata !DIExpression()), !dbg !4478
  %5 = load ptr, ptr %handler.addr, align 8, !dbg !4478
  %6 = ptrtoint ptr %5 to i64, !dbg !4478
  store i64 %6, ptr %_r_a_p__v, align 8, !dbg !4478
  br i1 false, label %land.lhs.true, label %if.else, !dbg !4479

land.lhs.true:                                    ; preds = %do.body
  %7 = load i64, ptr %_r_a_p__v, align 8, !dbg !4479
  %cmp = icmp eq i64 %7, 0, !dbg !4479
  br i1 %cmp, label %if.then3, label %if.else, !dbg !4478

if.then3:                                         ; preds = %land.lhs.true
  br label %do.body4, !dbg !4479

do.body4:                                         ; preds = %if.then3
  br label %do.body5, !dbg !4481

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !4483

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !4483

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !4481

do.body6:                                         ; preds = %do.end
  %8 = load i64, ptr %_r_a_p__v, align 8, !dbg !4485
  %9 = inttoptr i64 %8 to ptr, !dbg !4485
  %10 = load ptr, ptr %rh, align 8, !dbg !4485
  %handler7 = getelementptr inbounds %struct.rethook, ptr %10, i32 0, i32 1, !dbg !4485
  store volatile ptr %9, ptr %handler7, align 8, !dbg !4485
  br label %do.cond8, !dbg !4485

do.cond8:                                         ; preds = %do.body6
  br label %do.end9, !dbg !4485

do.end9:                                          ; preds = %do.cond8
  br label %do.cond10, !dbg !4481

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !4481

do.end11:                                         ; preds = %do.cond10
  br label %if.end34, !dbg !4481

if.else:                                          ; preds = %land.lhs.true, %do.body
  br label %do.body12, !dbg !4479

do.body12:                                        ; preds = %if.else
  br label %do.body13, !dbg !4487

do.body13:                                        ; preds = %do.body12
  br label %do.cond14, !dbg !4489

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !4489

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !4487

do.body16:                                        ; preds = %do.end15
  br label %do.body17, !dbg !4491

do.body17:                                        ; preds = %do.body16
  br label %do.cond18, !dbg !4493

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !4493

do.end19:                                         ; preds = %do.cond18
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !4491, !srcloc !4495
  br label %do.body20, !dbg !4491

do.body20:                                        ; preds = %do.end19
  br label %do.body21, !dbg !4496

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !4498

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !4498

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !4496

do.body24:                                        ; preds = %do.end23
  %11 = load i64, ptr %_r_a_p__v, align 8, !dbg !4500
  %12 = inttoptr i64 %11 to ptr, !dbg !4500
  %13 = load ptr, ptr %rh, align 8, !dbg !4500
  %handler25 = getelementptr inbounds %struct.rethook, ptr %13, i32 0, i32 1, !dbg !4500
  store volatile ptr %12, ptr %handler25, align 8, !dbg !4500
  br label %do.cond26, !dbg !4500

do.cond26:                                        ; preds = %do.body24
  br label %do.end27, !dbg !4500

do.end27:                                         ; preds = %do.cond26
  br label %do.cond28, !dbg !4496

do.cond28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !4496

do.end29:                                         ; preds = %do.cond28
  br label %do.cond30, !dbg !4491

do.cond30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !4491

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !4487

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !4487

do.end33:                                         ; preds = %do.cond32
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %do.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #17, !dbg !4477
  br label %do.cond35, !dbg !4478

do.cond35:                                        ; preds = %if.end34
  br label %do.end36, !dbg !4478

do.end36:                                         ; preds = %do.cond35
  %14 = load ptr, ptr %rh, align 8, !dbg !4502
  %pool = getelementptr inbounds %struct.rethook, ptr %14, i32 0, i32 2, !dbg !4503
  %head = getelementptr inbounds %struct.freelist_head, ptr %pool, i32 0, i32 0, !dbg !4504
  store ptr null, ptr %head, align 8, !dbg !4505
  %15 = load ptr, ptr %rh, align 8, !dbg !4506
  %ref = getelementptr inbounds %struct.rethook, ptr %15, i32 0, i32 3, !dbg !4507
  call void @refcount_set(ptr noundef %ref, i32 noundef 1) #18, !dbg !4508
  %16 = load ptr, ptr %rh, align 8, !dbg !4509
  store ptr %16, ptr %retval, align 8, !dbg !4510
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4510

cleanup:                                          ; preds = %do.end36, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rh) #17, !dbg !4511
  %17 = load ptr, ptr %retval, align 8, !dbg !4511
  ret ptr %17, !dbg !4511
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !4512 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4516, metadata !DIExpression()), !dbg !4518
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4517, metadata !DIExpression()), !dbg !4519
  %0 = load i64, ptr %size.addr, align 8, !dbg !4520
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4521
  %or = or i32 %1, 256, !dbg !4522
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !4523
  ret ptr %call, !dbg !4524
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4525 dso_local void @kfree(ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_set(ptr noundef %r, i32 noundef %n) #3 align 16 !dbg !4528 {
entry:
  %r.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4533, metadata !DIExpression()), !dbg !4535
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4534, metadata !DIExpression()), !dbg !4536
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4537
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !4538
  %1 = load i32, ptr %n.addr, align 4, !dbg !4539
  call void @atomic_set(ptr noundef %refs, i32 noundef %1) #18, !dbg !4540
  ret void, !dbg !4541
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rethook_add_node(ptr noundef %rh, ptr noundef %node) #0 align 16 !dbg !4542 {
entry:
  %rh.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  store ptr %rh, ptr %rh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rh.addr, metadata !4546, metadata !DIExpression()), !dbg !4548
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !4547, metadata !DIExpression()), !dbg !4549
  %0 = load ptr, ptr %rh.addr, align 8, !dbg !4550
  %1 = load ptr, ptr %node.addr, align 8, !dbg !4551
  %rethook = getelementptr inbounds %struct.rethook_node, ptr %1, i32 0, i32 2, !dbg !4552
  store ptr %0, ptr %rethook, align 8, !dbg !4553
  %2 = load ptr, ptr %node.addr, align 8, !dbg !4554
  %3 = getelementptr inbounds %struct.rethook_node, ptr %2, i32 0, i32 0, !dbg !4555
  %4 = load ptr, ptr %rh.addr, align 8, !dbg !4556
  %pool = getelementptr inbounds %struct.rethook, ptr %4, i32 0, i32 2, !dbg !4557
  call void @freelist_add(ptr noundef %3, ptr noundef %pool) #18, !dbg !4558
  %5 = load ptr, ptr %rh.addr, align 8, !dbg !4559
  %ref = getelementptr inbounds %struct.rethook, ptr %5, i32 0, i32 3, !dbg !4560
  call void @refcount_inc(ptr noundef %ref) #18, !dbg !4561
  ret void, !dbg !4562
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @freelist_add(ptr noundef %node, ptr noundef %list) #3 align 16 !dbg !4563 {
entry:
  %node.addr = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !4568, metadata !DIExpression()), !dbg !4570
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4569, metadata !DIExpression()), !dbg !4571
  %0 = load ptr, ptr %node.addr, align 8, !dbg !4572
  %refs = getelementptr inbounds %struct.freelist_node, ptr %0, i32 0, i32 0, !dbg !4574
  %call = call i32 @atomic_fetch_add_release(i32 noundef -2147483648, ptr noundef %refs) #18, !dbg !4575
  %tobool = icmp ne i32 %call, 0, !dbg !4575
  br i1 %tobool, label %if.end, label %if.then, !dbg !4576

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %node.addr, align 8, !dbg !4577
  %2 = load ptr, ptr %list.addr, align 8, !dbg !4579
  call void @__freelist_add(ptr noundef %1, ptr noundef %2) #18, !dbg !4580
  br label %if.end, !dbg !4581

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4582
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #3 align 16 !dbg !4583 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4587, metadata !DIExpression()), !dbg !4588
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4589
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #18, !dbg !4590
  ret void, !dbg !4591
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rethook_get_handler(ptr noundef %rh) #3 align 16 !dbg !4592 {
entry:
  %rh.addr = alloca ptr, align 8
  %__UNIQUE_ID_rcu307 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %rh, ptr %rh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rh.addr, metadata !4596, metadata !DIExpression()), !dbg !4599
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu307) #17, !dbg !4600
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu307, metadata !4597, metadata !DIExpression()), !dbg !4600
  br label %do.body, !dbg !4601

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4603

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4603

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %rh.addr, align 8, !dbg !4601
  %handler = getelementptr inbounds %struct.rethook, ptr %0, i32 0, i32 1, !dbg !4601
  %1 = load volatile ptr, ptr %handler, align 8, !dbg !4601
  store ptr %1, ptr %tmp, align 8, !dbg !4603
  %2 = load ptr, ptr %tmp, align 8, !dbg !4601
  store ptr %2, ptr %__UNIQUE_ID_rcu307, align 8, !dbg !4600
  br label %do.body1, !dbg !4600

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !4605

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !4605

do.end3:                                          ; preds = %do.cond2
  %3 = load ptr, ptr %__UNIQUE_ID_rcu307, align 8, !dbg !4600
  store ptr %3, ptr %tmp4, align 8, !dbg !4605
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu307) #17, !dbg !4607
  %4 = load ptr, ptr %tmp4, align 8, !dbg !4600
  ret ptr %4, !dbg !4608
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_rethook_node_rcu(ptr noundef %head) #0 align 16 !dbg !4609 {
entry:
  %head.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4611, metadata !DIExpression()), !dbg !4615
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #17, !dbg !4616
  call void @llvm.dbg.declare(metadata ptr %node, metadata !4612, metadata !DIExpression()), !dbg !4617
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !4618
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4613, metadata !DIExpression()), !dbg !4618
  %0 = load ptr, ptr %head.addr, align 8, !dbg !4618
  store ptr %0, ptr %__mptr, align 8, !dbg !4618
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4618
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4618
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4618
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !4619
  %2 = load ptr, ptr %tmp, align 8, !dbg !4618
  store ptr %2, ptr %node, align 8, !dbg !4617
  %3 = load ptr, ptr %node, align 8, !dbg !4620
  %rethook = getelementptr inbounds %struct.rethook_node, ptr %3, i32 0, i32 2, !dbg !4622
  %4 = load ptr, ptr %rethook, align 8, !dbg !4622
  %ref = getelementptr inbounds %struct.rethook, ptr %4, i32 0, i32 3, !dbg !4623
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %ref) #18, !dbg !4624
  br i1 %call, label %if.then, label %if.end, !dbg !4625

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %node, align 8, !dbg !4626
  %rethook1 = getelementptr inbounds %struct.rethook_node, ptr %5, i32 0, i32 2, !dbg !4627
  %6 = load ptr, ptr %rethook1, align 8, !dbg !4627
  call void @kfree(ptr noundef %6) #18, !dbg !4628
  br label %if.end, !dbg !4628

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %node, align 8, !dbg !4629
  call void @kfree(ptr noundef %7) #18, !dbg !4630
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #17, !dbg !4631
  ret void, !dbg !4631
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @rethook_try_get(ptr noundef %rh) #0 align 16 !dbg !4632 {
entry:
  %retval = alloca ptr, align 8
  %rh.addr = alloca ptr, align 8
  %handler = alloca ptr, align 8
  %fn = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %rh, ptr %rh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rh.addr, metadata !4636, metadata !DIExpression()), !dbg !4641
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler) #17, !dbg !4642
  call void @llvm.dbg.declare(metadata ptr %handler, metadata !4637, metadata !DIExpression()), !dbg !4643
  %0 = load ptr, ptr %rh.addr, align 8, !dbg !4644
  %call = call ptr @rethook_get_handler(ptr noundef %0) #18, !dbg !4645
  store ptr %call, ptr %handler, align 8, !dbg !4643
  call void @llvm.lifetime.start.p0(i64 8, ptr %fn) #17, !dbg !4646
  call void @llvm.dbg.declare(metadata ptr %fn, metadata !4638, metadata !DIExpression()), !dbg !4647
  %1 = load ptr, ptr %handler, align 8, !dbg !4648
  %tobool = icmp ne ptr %1, null, !dbg !4648
  %lnot = xor i1 %tobool, true, !dbg !4648
  %lnot1 = xor i1 %lnot, true, !dbg !4648
  %lnot2 = xor i1 %lnot1, true, !dbg !4648
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4648
  %conv = sext i32 %lnot.ext to i64, !dbg !4648
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4648
  %tobool3 = icmp ne i64 %expval, 0, !dbg !4648
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4650

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4651
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4651

if.end:                                           ; preds = %entry
  %call4 = call zeroext i1 @rcu_is_watching() #18, !dbg !4652
  %lnot5 = xor i1 %call4, true, !dbg !4652
  %lnot7 = xor i1 %lnot5, true, !dbg !4652
  %lnot9 = xor i1 %lnot7, true, !dbg !4652
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !4652
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !4652
  %expval12 = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !4652
  %tobool13 = icmp ne i64 %expval12, 0, !dbg !4652
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !4654

if.then14:                                        ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !4655
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4655

if.end15:                                         ; preds = %if.end
  %2 = load ptr, ptr %rh.addr, align 8, !dbg !4656
  %pool = getelementptr inbounds %struct.rethook, ptr %2, i32 0, i32 2, !dbg !4657
  %call16 = call ptr @freelist_try_get(ptr noundef %pool) #18, !dbg !4658
  store ptr %call16, ptr %fn, align 8, !dbg !4659
  %3 = load ptr, ptr %fn, align 8, !dbg !4660
  %tobool17 = icmp ne ptr %3, null, !dbg !4660
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !4662

if.then18:                                        ; preds = %if.end15
  store ptr null, ptr %retval, align 8, !dbg !4663
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4663

if.end19:                                         ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !4664
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4639, metadata !DIExpression()), !dbg !4664
  %4 = load ptr, ptr %fn, align 8, !dbg !4664
  store ptr %4, ptr %__mptr, align 8, !dbg !4664
  %5 = load ptr, ptr %__mptr, align 8, !dbg !4664
  %add.ptr = getelementptr i8, ptr %5, i64 0, !dbg !4664
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4664
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !4665
  %6 = load ptr, ptr %tmp, align 8, !dbg !4664
  store ptr %6, ptr %retval, align 8, !dbg !4666
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4666

cleanup:                                          ; preds = %if.end19, %if.then18, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fn) #17, !dbg !4667
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler) #17, !dbg !4667
  %7 = load ptr, ptr %retval, align 8, !dbg !4667
  ret ptr %7, !dbg !4667
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4668 dso_local zeroext i1 @rcu_is_watching() #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @freelist_try_get(ptr noundef %list) #3 align 16 !dbg !4670 {
entry:
  %retval = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %next = alloca ptr, align 8
  %head = alloca ptr, align 8
  %___p1 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %refs = alloca i32, align 4
  %___p19 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  %tmp18 = alloca ptr, align 8
  %tmp22 = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %__ai_oldp = alloca ptr, align 8
  %tmp25 = alloca i64, align 8
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca ptr, align 8
  %__new = alloca ptr, align 8
  %__ptr = alloca ptr, align 8
  %tmp33 = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp73 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4674, metadata !DIExpression()), !dbg !4702
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #17, !dbg !4703
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !4675, metadata !DIExpression()), !dbg !4704
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #17, !dbg !4703
  call void @llvm.dbg.declare(metadata ptr %next, metadata !4676, metadata !DIExpression()), !dbg !4705
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #17, !dbg !4703
  call void @llvm.dbg.declare(metadata ptr %head, metadata !4677, metadata !DIExpression()), !dbg !4706
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p1) #17, !dbg !4707
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !4678, metadata !DIExpression()), !dbg !4707
  br label %do.body, !dbg !4708

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4710

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4710

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %list.addr, align 8, !dbg !4708
  %head1 = getelementptr inbounds %struct.freelist_head, ptr %0, i32 0, i32 0, !dbg !4708
  %1 = load volatile ptr, ptr %head1, align 8, !dbg !4708
  store ptr %1, ptr %tmp, align 8, !dbg !4710
  %2 = load ptr, ptr %tmp, align 8, !dbg !4708
  store ptr %2, ptr %___p1, align 8, !dbg !4707
  br label %do.body2, !dbg !4707

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !4712

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !4712

do.end4:                                          ; preds = %do.cond3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !4707, !srcloc !4714
  %3 = load ptr, ptr %___p1, align 8, !dbg !4707
  store ptr %3, ptr %tmp5, align 8, !dbg !4707
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p1) #17, !dbg !4715
  %4 = load ptr, ptr %tmp5, align 8, !dbg !4707
  store ptr %4, ptr %head, align 8, !dbg !4706
  call void @llvm.lifetime.start.p0(i64 4, ptr %refs) #17, !dbg !4716
  call void @llvm.dbg.declare(metadata ptr %refs, metadata !4680, metadata !DIExpression()), !dbg !4717
  br label %while.cond, !dbg !4718

while.cond:                                       ; preds = %if.end89, %do.end17, %do.end4
  %5 = load ptr, ptr %head, align 8, !dbg !4719
  %tobool = icmp ne ptr %5, null, !dbg !4718
  br i1 %tobool, label %while.body, label %while.end, !dbg !4718

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %head, align 8, !dbg !4720
  store ptr %6, ptr %prev, align 8, !dbg !4721
  %7 = load ptr, ptr %head, align 8, !dbg !4722
  %refs6 = getelementptr inbounds %struct.freelist_node, ptr %7, i32 0, i32 0, !dbg !4723
  %call = call i32 @atomic_read(ptr noundef %refs6) #18, !dbg !4724
  store i32 %call, ptr %refs, align 4, !dbg !4725
  %8 = load i32, ptr %refs, align 4, !dbg !4726
  %and = and i32 %8, 2147483647, !dbg !4727
  %cmp = icmp eq i32 %and, 0, !dbg !4728
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4729

lor.lhs.false:                                    ; preds = %while.body
  %9 = load ptr, ptr %head, align 8, !dbg !4730
  %refs7 = getelementptr inbounds %struct.freelist_node, ptr %9, i32 0, i32 0, !dbg !4731
  %10 = load i32, ptr %refs, align 4, !dbg !4732
  %add = add i32 %10, 1, !dbg !4733
  %call8 = call zeroext i1 @atomic_try_cmpxchg_acquire(ptr noundef %refs7, ptr noundef %refs, i32 noundef %add) #18, !dbg !4734
  br i1 %call8, label %if.end, label %if.then, !dbg !4735

if.then:                                          ; preds = %lor.lhs.false, %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p19) #17, !dbg !4736
  call void @llvm.dbg.declare(metadata ptr %___p19, metadata !4681, metadata !DIExpression()), !dbg !4736
  br label %do.body10, !dbg !4737

do.body10:                                        ; preds = %if.then
  br label %do.cond11, !dbg !4739

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !4739

do.end12:                                         ; preds = %do.cond11
  %11 = load ptr, ptr %list.addr, align 8, !dbg !4737
  %head14 = getelementptr inbounds %struct.freelist_head, ptr %11, i32 0, i32 0, !dbg !4737
  %12 = load volatile ptr, ptr %head14, align 8, !dbg !4737
  store ptr %12, ptr %tmp13, align 8, !dbg !4739
  %13 = load ptr, ptr %tmp13, align 8, !dbg !4737
  store ptr %13, ptr %___p19, align 8, !dbg !4736
  br label %do.body15, !dbg !4736

do.body15:                                        ; preds = %do.end12
  br label %do.cond16, !dbg !4741

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !4741

do.end17:                                         ; preds = %do.cond16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !4736, !srcloc !4743
  %14 = load ptr, ptr %___p19, align 8, !dbg !4736
  store ptr %14, ptr %tmp18, align 8, !dbg !4736
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p19) #17, !dbg !4744
  %15 = load ptr, ptr %tmp18, align 8, !dbg !4736
  store ptr %15, ptr %head, align 8, !dbg !4745
  br label %while.cond, !dbg !4746, !llvm.loop !4747

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body19, !dbg !4749

do.body19:                                        ; preds = %if.end
  br label %do.cond20, !dbg !4751

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !4751

do.end21:                                         ; preds = %do.cond20
  %16 = load ptr, ptr %head, align 8, !dbg !4749
  %next23 = getelementptr inbounds %struct.freelist_node, ptr %16, i32 0, i32 1, !dbg !4749
  %17 = load volatile ptr, ptr %next23, align 8, !dbg !4749
  store ptr %17, ptr %tmp22, align 8, !dbg !4751
  %18 = load ptr, ptr %tmp22, align 8, !dbg !4749
  store ptr %18, ptr %next, align 8, !dbg !4753
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #17, !dbg !4754
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !4686, metadata !DIExpression()), !dbg !4754
  %19 = load ptr, ptr %list.addr, align 8, !dbg !4754
  %head24 = getelementptr inbounds %struct.freelist_head, ptr %19, i32 0, i32 0, !dbg !4754
  store ptr %head24, ptr %__ai_ptr, align 8, !dbg !4754
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_oldp) #17, !dbg !4754
  call void @llvm.dbg.declare(metadata ptr %__ai_oldp, metadata !4689, metadata !DIExpression()), !dbg !4754
  store ptr %head, ptr %__ai_oldp, align 8, !dbg !4754
  %20 = load ptr, ptr %__ai_ptr, align 8, !dbg !4754
  call void @instrument_atomic_read_write(ptr noundef %20, i64 noundef 8) #18, !dbg !4754
  %21 = load ptr, ptr %__ai_oldp, align 8, !dbg !4754
  call void @instrument_read_write(ptr noundef %21, i64 noundef 8) #18, !dbg !4754
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #17, !dbg !4755
  call void @llvm.dbg.declare(metadata ptr %success, metadata !4690, metadata !DIExpression()), !dbg !4755
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #17, !dbg !4755
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !4692, metadata !DIExpression()), !dbg !4755
  %22 = load ptr, ptr %__ai_oldp, align 8, !dbg !4755
  store ptr %22, ptr %_old, align 8, !dbg !4755
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #17, !dbg !4755
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !4693, metadata !DIExpression()), !dbg !4755
  %23 = load ptr, ptr %_old, align 8, !dbg !4755
  %24 = load ptr, ptr %23, align 8, !dbg !4755
  store ptr %24, ptr %__old, align 8, !dbg !4755
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #17, !dbg !4755
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !4694, metadata !DIExpression()), !dbg !4755
  %25 = load ptr, ptr %next, align 8, !dbg !4755
  store ptr %25, ptr %__new, align 8, !dbg !4755
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #17, !dbg !4755
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4695, metadata !DIExpression()), !dbg !4755
  %26 = load ptr, ptr %__ai_ptr, align 8, !dbg !4755
  store ptr %26, ptr %__ptr, align 8, !dbg !4755
  %27 = load ptr, ptr %__ptr, align 8, !dbg !4755
  %28 = load ptr, ptr %__old, align 8, !dbg !4755
  %29 = load ptr, ptr %__new, align 8, !dbg !4755
  %30 = call { i8, ptr } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %27, ptr %29, ptr elementtype(i64) %27, ptr %28) #17, !dbg !4755, !srcloc !4756
  %asmresult = extractvalue { i8, ptr } %30, 0, !dbg !4755
  %asmresult26 = extractvalue { i8, ptr } %30, 1, !dbg !4755
  %31 = icmp ult i8 %asmresult, 2, !dbg !4755
  call void @llvm.assume(i1 %31), !dbg !4755
  store i8 %asmresult, ptr %success, align 1, !dbg !4755
  store ptr %asmresult26, ptr %__old, align 8, !dbg !4755
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #17, !dbg !4755
  %32 = load i8, ptr %success, align 1, !dbg !4757, !range !4349, !noundef !405
  %tobool27 = trunc i8 %32 to i1, !dbg !4757
  %lnot = xor i1 %tobool27, true, !dbg !4757
  %lnot28 = xor i1 %lnot, true, !dbg !4757
  %lnot29 = xor i1 %lnot28, true, !dbg !4757
  %lnot.ext = zext i1 %lnot29 to i32, !dbg !4757
  %conv = sext i32 %lnot.ext to i64, !dbg !4757
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4757
  %tobool30 = icmp ne i64 %expval, 0, !dbg !4757
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !4755

if.then31:                                        ; preds = %do.end21
  %33 = load ptr, ptr %__old, align 8, !dbg !4757
  %34 = load ptr, ptr %_old, align 8, !dbg !4757
  store ptr %33, ptr %34, align 8, !dbg !4757
  br label %if.end32, !dbg !4757

if.end32:                                         ; preds = %if.then31, %do.end21
  %35 = load i8, ptr %success, align 1, !dbg !4755, !range !4349, !noundef !405
  %tobool34 = trunc i8 %35 to i1, !dbg !4755
  %lnot35 = xor i1 %tobool34, true, !dbg !4755
  %lnot37 = xor i1 %lnot35, true, !dbg !4755
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !4755
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !4755
  %expval40 = call i64 @llvm.expect.i64(i64 %conv39, i64 1), !dbg !4755
  store i64 %expval40, ptr %tmp33, align 8, !dbg !4757
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #17, !dbg !4754
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #17, !dbg !4754
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #17, !dbg !4754
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #17, !dbg !4754
  %36 = load i64, ptr %tmp33, align 8, !dbg !4755
  store i64 %36, ptr %tmp25, align 8, !dbg !4754
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_oldp) #17, !dbg !4759
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #17, !dbg !4759
  %37 = load i64, ptr %tmp25, align 8, !dbg !4754
  %tobool41 = icmp ne i64 %37, 0, !dbg !4759
  br i1 %tobool41, label %if.then42, label %if.end83, !dbg !4760

if.then42:                                        ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !4761
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4696, metadata !DIExpression()), !dbg !4761
  %38 = load ptr, ptr %head, align 8, !dbg !4761
  %refs43 = getelementptr inbounds %struct.freelist_node, ptr %38, i32 0, i32 0, !dbg !4761
  %call44 = call i32 @atomic_read(ptr noundef %refs43) #18, !dbg !4761
  %and45 = and i32 %call44, -2147483648, !dbg !4761
  %tobool46 = icmp ne i32 %and45, 0, !dbg !4761
  %lnot47 = xor i1 %tobool46, true, !dbg !4761
  %lnot49 = xor i1 %lnot47, true, !dbg !4761
  %lnot.ext50 = zext i1 %lnot49 to i32, !dbg !4761
  store i32 %lnot.ext50, ptr %__ret_warn_on, align 4, !dbg !4761
  %39 = load i32, ptr %__ret_warn_on, align 4, !dbg !4762
  %tobool51 = icmp ne i32 %39, 0, !dbg !4762
  %lnot52 = xor i1 %tobool51, true, !dbg !4762
  %lnot54 = xor i1 %lnot52, true, !dbg !4762
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !4762
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !4762
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !4762
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !4762
  br i1 %tobool58, label %if.then59, label %if.end72, !dbg !4761

if.then59:                                        ; preds = %if.then42
  br label %do.body60, !dbg !4762

do.body60:                                        ; preds = %if.then59
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !4763
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4699, metadata !DIExpression()), !dbg !4763
  store i32 2307, ptr %__flags, align 4, !dbg !4763
  br label %do.body61, !dbg !4763

do.body61:                                        ; preds = %do.body60
  br label %do.cond62, !dbg !4764

do.cond62:                                        ; preds = %do.body61
  br label %do.end63, !dbg !4764

do.end63:                                         ; preds = %do.cond62
  br label %do.body64, !dbg !4763

do.body64:                                        ; preds = %do.end63
  %40 = load i32, ptr %__flags, align 4, !dbg !4766
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 106, i32 %40, i64 12) #17, !dbg !4766, !srcloc !4768
  br label %do.cond65, !dbg !4766

do.cond65:                                        ; preds = %do.body64
  br label %do.end66, !dbg !4766

do.end66:                                         ; preds = %do.cond65
  br label %do.body67, !dbg !4763

do.body67:                                        ; preds = %do.end66
  br label %do.cond68, !dbg !4769

do.cond68:                                        ; preds = %do.body67
  br label %do.end69, !dbg !4769

do.end69:                                         ; preds = %do.cond68
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !4762
  br label %do.cond70, !dbg !4763

do.cond70:                                        ; preds = %do.end69
  br label %do.end71, !dbg !4763

do.end71:                                         ; preds = %do.cond70
  br label %if.end72, !dbg !4763

if.end72:                                         ; preds = %do.end71, %if.then42
  %41 = load i32, ptr %__ret_warn_on, align 4, !dbg !4761
  %tobool74 = icmp ne i32 %41, 0, !dbg !4761
  %lnot75 = xor i1 %tobool74, true, !dbg !4761
  %lnot77 = xor i1 %lnot75, true, !dbg !4761
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !4761
  %conv79 = sext i32 %lnot.ext78 to i64, !dbg !4761
  %expval80 = call i64 @llvm.expect.i64(i64 %conv79, i64 0), !dbg !4761
  store i64 %expval80, ptr %tmp73, align 8, !dbg !4762
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !4771
  %42 = load i64, ptr %tmp73, align 8, !dbg !4761
  %43 = load ptr, ptr %head, align 8, !dbg !4772
  %refs81 = getelementptr inbounds %struct.freelist_node, ptr %43, i32 0, i32 0, !dbg !4773
  %call82 = call i32 @atomic_fetch_add(i32 noundef -2, ptr noundef %refs81) #18, !dbg !4774
  %44 = load ptr, ptr %head, align 8, !dbg !4775
  store ptr %44, ptr %retval, align 8, !dbg !4776
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4776

if.end83:                                         ; preds = %if.end32
  %45 = load ptr, ptr %prev, align 8, !dbg !4777
  %refs84 = getelementptr inbounds %struct.freelist_node, ptr %45, i32 0, i32 0, !dbg !4778
  %call85 = call i32 @atomic_fetch_add(i32 noundef -1, ptr noundef %refs84) #18, !dbg !4779
  store i32 %call85, ptr %refs, align 4, !dbg !4780
  %46 = load i32, ptr %refs, align 4, !dbg !4781
  %cmp86 = icmp eq i32 %46, -2147483647, !dbg !4783
  br i1 %cmp86, label %if.then88, label %if.end89, !dbg !4784

if.then88:                                        ; preds = %if.end83
  %47 = load ptr, ptr %prev, align 8, !dbg !4785
  %48 = load ptr, ptr %list.addr, align 8, !dbg !4786
  call void @__freelist_add(ptr noundef %47, ptr noundef %48) #18, !dbg !4787
  br label %if.end89, !dbg !4787

if.end89:                                         ; preds = %if.then88, %if.end83
  br label %while.cond, !dbg !4718, !llvm.loop !4747

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8, !dbg !4788
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4788

cleanup:                                          ; preds = %while.end, %if.end72
  call void @llvm.lifetime.end.p0(i64 4, ptr %refs) #17, !dbg !4789
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #17, !dbg !4789
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #17, !dbg !4789
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #17, !dbg !4789
  %49 = load ptr, ptr %retval, align 8, !dbg !4789
  ret ptr %49, !dbg !4789
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rethook_hook(ptr noundef %node, ptr noundef %regs, i1 noundef zeroext %mcount) #0 align 16 !dbg !4790 {
entry:
  %node.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %mcount.addr = alloca i8, align 1
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !4794, metadata !DIExpression()), !dbg !4797
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4795, metadata !DIExpression()), !dbg !4798
  %frombool = zext i1 %mcount to i8
  store i8 %frombool, ptr %mcount.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %mcount.addr, metadata !4796, metadata !DIExpression()), !dbg !4799
  %0 = load ptr, ptr %node.addr, align 8, !dbg !4800
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !4801
  %2 = load i8, ptr %mcount.addr, align 1, !dbg !4802, !range !4349, !noundef !405
  %tobool = trunc i8 %2 to i1, !dbg !4802
  call void @arch_rethook_prepare(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %tobool) #18, !dbg !4803
  %3 = load ptr, ptr %node.addr, align 8, !dbg !4804
  %llist = getelementptr inbounds %struct.rethook_node, ptr %3, i32 0, i32 1, !dbg !4805
  %call = call ptr @get_current() #18, !dbg !4806
  %rethooks = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 194, !dbg !4807
  %call1 = call zeroext i1 @__llist_add(ptr noundef %llist, ptr noundef %rethooks) #18, !dbg !4808
  ret void, !dbg !4809
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4810 dso_local void @arch_rethook_prepare(ptr noundef, ptr noundef, i1 noundef zeroext) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__llist_add(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !4811 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4815, metadata !DIExpression()), !dbg !4817
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4816, metadata !DIExpression()), !dbg !4818
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4819
  %1 = load ptr, ptr %new.addr, align 8, !dbg !4820
  %2 = load ptr, ptr %head.addr, align 8, !dbg !4821
  %call = call zeroext i1 @__llist_add_batch(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18, !dbg !4822
  ret i1 %call, !dbg !4823
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #4 align 16 !dbg !4824 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #17, !dbg !4835
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4829, metadata !DIExpression()), !dbg !4835
  br label %do.body, !dbg !4835

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !4836
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4831, metadata !DIExpression()), !dbg !4836
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4836
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4836
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !4835
  br label %do.cond, !dbg !4836

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4836

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #17, !dbg !4837
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4833, metadata !DIExpression()), !dbg !4837
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #20, !dbg !4837, !srcloc !4838
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4837
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4837
  %3 = inttoptr i64 %2 to ptr, !dbg !4837
  store ptr %3, ptr %tmp, align 8, !dbg !4837
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #17, !dbg !4835
  %4 = load ptr, ptr %tmp, align 8, !dbg !4837
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4835
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4835
  store ptr %5, ptr %tmp1, align 8, !dbg !4835
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #17, !dbg !4839
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4835
  ret ptr %6, !dbg !4840
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rethook_find_ret_addr(ptr noundef %tsk, ptr noundef %cur) #0 align 16 !dbg !4841 {
entry:
  %retval = alloca i64, align 8
  %tsk.addr = alloca ptr, align 8
  %cur.addr = alloca ptr, align 8
  %rh = alloca ptr, align 8
  %node = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !4846, metadata !DIExpression()), !dbg !4853
  store ptr %cur, ptr %cur.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cur.addr, metadata !4847, metadata !DIExpression()), !dbg !4854
  call void @llvm.lifetime.start.p0(i64 8, ptr %rh) #17, !dbg !4855
  call void @llvm.dbg.declare(metadata ptr %rh, metadata !4848, metadata !DIExpression()), !dbg !4856
  store ptr null, ptr %rh, align 8, !dbg !4856
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #17, !dbg !4857
  call void @llvm.dbg.declare(metadata ptr %node, metadata !4849, metadata !DIExpression()), !dbg !4858
  %0 = load ptr, ptr %cur.addr, align 8, !dbg !4859
  %1 = load ptr, ptr %0, align 8, !dbg !4860
  store ptr %1, ptr %node, align 8, !dbg !4858
  %2 = load ptr, ptr %node, align 8, !dbg !4861
  %tobool = icmp ne ptr %2, null, !dbg !4861
  br i1 %tobool, label %if.else, label %if.then, !dbg !4863

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tsk.addr, align 8, !dbg !4864
  %rethooks = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 194, !dbg !4865
  %first = getelementptr inbounds %struct.llist_head, ptr %rethooks, i32 0, i32 0, !dbg !4866
  %4 = load ptr, ptr %first, align 8, !dbg !4866
  store ptr %4, ptr %node, align 8, !dbg !4867
  br label %if.end, !dbg !4868

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %node, align 8, !dbg !4869
  %next = getelementptr inbounds %struct.llist_node, ptr %5, i32 0, i32 0, !dbg !4870
  %6 = load ptr, ptr %next, align 8, !dbg !4870
  store ptr %6, ptr %node, align 8, !dbg !4871
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !dbg !4872

while.cond:                                       ; preds = %if.end4, %if.end
  %7 = load ptr, ptr %node, align 8, !dbg !4873
  %tobool1 = icmp ne ptr %7, null, !dbg !4872
  br i1 %tobool1, label %while.body, label %while.end, !dbg !4872

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !4874
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4850, metadata !DIExpression()), !dbg !4874
  %8 = load ptr, ptr %node, align 8, !dbg !4874
  store ptr %8, ptr %__mptr, align 8, !dbg !4874
  %9 = load ptr, ptr %__mptr, align 8, !dbg !4874
  %add.ptr = getelementptr i8, ptr %9, i64 -16, !dbg !4874
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4874
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !4875
  %10 = load ptr, ptr %tmp, align 8, !dbg !4874
  store ptr %10, ptr %rh, align 8, !dbg !4876
  %11 = load ptr, ptr %rh, align 8, !dbg !4877
  %ret_addr = getelementptr inbounds %struct.rethook_node, ptr %11, i32 0, i32 3, !dbg !4879
  %12 = load i64, ptr %ret_addr, align 8, !dbg !4879
  %cmp = icmp ne i64 %12, ptrtoint (ptr @arch_rethook_trampoline to i64), !dbg !4880
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !4881

if.then2:                                         ; preds = %while.body
  %13 = load ptr, ptr %node, align 8, !dbg !4882
  %14 = load ptr, ptr %cur.addr, align 8, !dbg !4884
  store ptr %13, ptr %14, align 8, !dbg !4885
  %15 = load ptr, ptr %rh, align 8, !dbg !4886
  %ret_addr3 = getelementptr inbounds %struct.rethook_node, ptr %15, i32 0, i32 3, !dbg !4887
  %16 = load i64, ptr %ret_addr3, align 8, !dbg !4887
  store i64 %16, ptr %retval, align 8, !dbg !4888
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4888

if.end4:                                          ; preds = %while.body
  %17 = load ptr, ptr %node, align 8, !dbg !4889
  %next5 = getelementptr inbounds %struct.llist_node, ptr %17, i32 0, i32 0, !dbg !4890
  %18 = load ptr, ptr %next5, align 8, !dbg !4890
  store ptr %18, ptr %node, align 8, !dbg !4891
  br label %while.cond, !dbg !4872, !llvm.loop !4892

while.end:                                        ; preds = %while.cond
  store i64 0, ptr %retval, align 8, !dbg !4894
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4894

cleanup:                                          ; preds = %while.end, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #17, !dbg !4895
  call void @llvm.lifetime.end.p0(i64 8, ptr %rh) #17, !dbg !4895
  %19 = load i64, ptr %retval, align 8, !dbg !4895
  ret i64 %19, !dbg !4895
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @rethook_find_ret_addr(ptr noundef %tsk, i64 noundef %frame, ptr noundef %cur) #0 align 16 !dbg !4896 {
entry:
  %retval = alloca i64, align 8
  %tsk.addr = alloca ptr, align 8
  %frame.addr = alloca i64, align 8
  %cur.addr = alloca ptr, align 8
  %rhn = alloca ptr, align 8
  %ret = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on28 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__flags50 = alloca i32, align 4
  %tmp63 = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp79 = alloca ptr, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !4900, metadata !DIExpression()), !dbg !4920
  store i64 %frame, ptr %frame.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %frame.addr, metadata !4901, metadata !DIExpression()), !dbg !4921
  store ptr %cur, ptr %cur.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cur.addr, metadata !4902, metadata !DIExpression()), !dbg !4922
  call void @llvm.lifetime.start.p0(i64 8, ptr %rhn) #17, !dbg !4923
  call void @llvm.dbg.declare(metadata ptr %rhn, metadata !4903, metadata !DIExpression()), !dbg !4924
  store ptr null, ptr %rhn, align 8, !dbg !4924
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #17, !dbg !4925
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4904, metadata !DIExpression()), !dbg !4926
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !4927
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4905, metadata !DIExpression()), !dbg !4927
  %0 = load ptr, ptr %cur.addr, align 8, !dbg !4927
  %tobool = icmp ne ptr %0, null, !dbg !4927
  %lnot = xor i1 %tobool, true, !dbg !4927
  %lnot1 = xor i1 %lnot, true, !dbg !4927
  %lnot2 = xor i1 %lnot1, true, !dbg !4927
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4927
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4927
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !4928
  %tobool3 = icmp ne i32 %1, 0, !dbg !4928
  %lnot4 = xor i1 %tobool3, true, !dbg !4928
  %lnot6 = xor i1 %lnot4, true, !dbg !4928
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4928
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4928
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4928
  %tobool8 = icmp ne i64 %expval, 0, !dbg !4928
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4927

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4928

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !4929
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4908, metadata !DIExpression()), !dbg !4929
  store i32 2307, ptr %__flags, align 4, !dbg !4929
  br label %do.body9, !dbg !4929

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !4930

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !4930

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !4929

do.body10:                                        ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !4932
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 260, i32 %2, i64 12) #17, !dbg !4932, !srcloc !4934
  br label %do.cond11, !dbg !4932

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !4932

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !4929

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !4935

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !4935

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !4928
  br label %do.cond16, !dbg !4929

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !4929

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !4929

if.end:                                           ; preds = %do.end17, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !4927
  %tobool18 = icmp ne i32 %3, 0, !dbg !4927
  %lnot19 = xor i1 %tobool18, true, !dbg !4927
  %lnot21 = xor i1 %lnot19, true, !dbg !4927
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !4927
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !4927
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !4927
  store i64 %expval24, ptr %tmp, align 8, !dbg !4928
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !4937
  %4 = load i64, ptr %tmp, align 8, !dbg !4927
  %tobool25 = icmp ne i64 %4, 0, !dbg !4937
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !4938

if.then26:                                        ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !4939
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4939

if.end27:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on28) #17, !dbg !4940
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on28, metadata !4911, metadata !DIExpression()), !dbg !4940
  %5 = load ptr, ptr %tsk.addr, align 8, !dbg !4940
  %call = call ptr @get_current() #18, !dbg !4940
  %cmp = icmp ne ptr %5, %call, !dbg !4940
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4940

land.rhs:                                         ; preds = %if.end27
  br label %do.body30, !dbg !4941

do.body30:                                        ; preds = %land.rhs
  br label %do.cond31, !dbg !4943

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !4943

do.end32:                                         ; preds = %do.cond31
  %6 = load ptr, ptr %tsk.addr, align 8, !dbg !4941
  %__state = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 1, !dbg !4941
  %7 = load volatile i32, ptr %__state, align 8, !dbg !4941
  store i32 %7, ptr %tmp33, align 4, !dbg !4943
  %8 = load i32, ptr %tmp33, align 4, !dbg !4941
  %cmp34 = icmp eq i32 %8, 0, !dbg !4940
  br label %land.end

land.end:                                         ; preds = %do.end32, %if.end27
  %9 = phi i1 [ false, %if.end27 ], [ %cmp34, %do.end32 ], !dbg !4945
  %lnot36 = xor i1 %9, true, !dbg !4940
  %lnot38 = xor i1 %lnot36, true, !dbg !4940
  %lnot.ext39 = zext i1 %lnot38 to i32, !dbg !4940
  store i32 %lnot.ext39, ptr %__ret_warn_on28, align 4, !dbg !4940
  %10 = load i32, ptr %__ret_warn_on28, align 4, !dbg !4946
  %tobool40 = icmp ne i32 %10, 0, !dbg !4946
  %lnot41 = xor i1 %tobool40, true, !dbg !4946
  %lnot43 = xor i1 %lnot41, true, !dbg !4946
  %lnot.ext44 = zext i1 %lnot43 to i32, !dbg !4946
  %conv45 = sext i32 %lnot.ext44 to i64, !dbg !4946
  %expval46 = call i64 @llvm.expect.i64(i64 %conv45, i64 0), !dbg !4946
  %tobool47 = icmp ne i64 %expval46, 0, !dbg !4946
  br i1 %tobool47, label %if.then48, label %if.end62, !dbg !4940

if.then48:                                        ; preds = %land.end
  br label %do.body49, !dbg !4946

do.body49:                                        ; preds = %if.then48
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags50) #17, !dbg !4947
  call void @llvm.dbg.declare(metadata ptr %__flags50, metadata !4914, metadata !DIExpression()), !dbg !4947
  store i32 2307, ptr %__flags50, align 4, !dbg !4947
  br label %do.body51, !dbg !4947

do.body51:                                        ; preds = %do.body49
  br label %do.cond52, !dbg !4948

do.cond52:                                        ; preds = %do.body51
  br label %do.end53, !dbg !4948

do.end53:                                         ; preds = %do.cond52
  br label %do.body54, !dbg !4947

do.body54:                                        ; preds = %do.end53
  %11 = load i32, ptr %__flags50, align 4, !dbg !4950
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 263, i32 %11, i64 12) #17, !dbg !4950, !srcloc !4952
  br label %do.cond55, !dbg !4950

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !4950

do.end56:                                         ; preds = %do.cond55
  br label %do.body57, !dbg !4947

do.body57:                                        ; preds = %do.end56
  br label %do.cond58, !dbg !4953

do.cond58:                                        ; preds = %do.body57
  br label %do.end59, !dbg !4953

do.end59:                                         ; preds = %do.cond58
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags50) #17, !dbg !4946
  br label %do.cond60, !dbg !4947

do.cond60:                                        ; preds = %do.end59
  br label %do.end61, !dbg !4947

do.end61:                                         ; preds = %do.cond60
  br label %if.end62, !dbg !4947

if.end62:                                         ; preds = %do.end61, %land.end
  %12 = load i32, ptr %__ret_warn_on28, align 4, !dbg !4940
  %tobool64 = icmp ne i32 %12, 0, !dbg !4940
  %lnot65 = xor i1 %tobool64, true, !dbg !4940
  %lnot67 = xor i1 %lnot65, true, !dbg !4940
  %lnot.ext68 = zext i1 %lnot67 to i32, !dbg !4940
  %conv69 = sext i32 %lnot.ext68 to i64, !dbg !4940
  %expval70 = call i64 @llvm.expect.i64(i64 %conv69, i64 0), !dbg !4940
  store i64 %expval70, ptr %tmp63, align 8, !dbg !4946
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on28) #17, !dbg !4955
  %13 = load i64, ptr %tmp63, align 8, !dbg !4940
  %tobool71 = icmp ne i64 %13, 0, !dbg !4955
  br i1 %tobool71, label %if.then72, label %if.end73, !dbg !4956

if.then72:                                        ; preds = %if.end62
  store i64 0, ptr %retval, align 8, !dbg !4957
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4957

if.end73:                                         ; preds = %if.end62
  br label %do.body74, !dbg !4958

do.body74:                                        ; preds = %do.cond80, %if.end73
  %14 = load ptr, ptr %tsk.addr, align 8, !dbg !4959
  %15 = load ptr, ptr %cur.addr, align 8, !dbg !4960
  %call75 = call i64 @__rethook_find_ret_addr(ptr noundef %14, ptr noundef %15) #18, !dbg !4961
  store i64 %call75, ptr %ret, align 8, !dbg !4962
  %16 = load i64, ptr %ret, align 8, !dbg !4963
  %tobool76 = icmp ne i64 %16, 0, !dbg !4963
  br i1 %tobool76, label %if.end78, label %if.then77, !dbg !4965

if.then77:                                        ; preds = %do.body74
  br label %do.end84, !dbg !4966

if.end78:                                         ; preds = %do.body74
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !4967
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4917, metadata !DIExpression()), !dbg !4967
  %17 = load ptr, ptr %cur.addr, align 8, !dbg !4967
  %18 = load ptr, ptr %17, align 8, !dbg !4967
  store ptr %18, ptr %__mptr, align 8, !dbg !4967
  %19 = load ptr, ptr %__mptr, align 8, !dbg !4967
  %add.ptr = getelementptr i8, ptr %19, i64 -16, !dbg !4967
  store ptr %add.ptr, ptr %tmp79, align 8, !dbg !4967
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !4968
  %20 = load ptr, ptr %tmp79, align 8, !dbg !4967
  store ptr %20, ptr %rhn, align 8, !dbg !4969
  br label %do.cond80, !dbg !4970

do.cond80:                                        ; preds = %if.end78
  %21 = load ptr, ptr %rhn, align 8, !dbg !4971
  %frame81 = getelementptr inbounds %struct.rethook_node, ptr %21, i32 0, i32 4, !dbg !4972
  %22 = load i64, ptr %frame81, align 8, !dbg !4972
  %23 = load i64, ptr %frame.addr, align 8, !dbg !4973
  %cmp82 = icmp ne i64 %22, %23, !dbg !4974
  br i1 %cmp82, label %do.body74, label %do.end84, !dbg !4970, !llvm.loop !4975

do.end84:                                         ; preds = %do.cond80, %if.then77
  %24 = load i64, ptr %ret, align 8, !dbg !4977
  store i64 %24, ptr %retval, align 8, !dbg !4978
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4978

cleanup:                                          ; preds = %do.end84, %if.then72, %if.then26
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #17, !dbg !4979
  call void @llvm.lifetime.end.p0(i64 8, ptr %rhn) #17, !dbg !4979
  %25 = load i64, ptr %retval, align 8, !dbg !4979
  ret i64 %25, !dbg !4979
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden void @arch_rethook_fixup_return(ptr noundef %regs, i64 noundef %correct_ret_addr) #0 align 16 !dbg !4980 {
entry:
  %regs.addr = alloca ptr, align 8
  %correct_ret_addr.addr = alloca i64, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4984, metadata !DIExpression()), !dbg !4986
  store i64 %correct_ret_addr, ptr %correct_ret_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %correct_ret_addr.addr, metadata !4985, metadata !DIExpression()), !dbg !4987
  ret void, !dbg !4988
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @rethook_trampoline_handler(ptr noundef %regs, i64 noundef %frame) #0 align 16 !dbg !4186 {
entry:
  %regs.addr = alloca ptr, align 8
  %frame.addr = alloca i64, align 8
  %first = alloca ptr, align 8
  %node = alloca ptr, align 8
  %correct_ret_addr = alloca i64, align 8
  %handler = alloca ptr, align 8
  %rhn = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp21 = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp44 = alloca i64, align 8
  %__mptr75 = alloca ptr, align 8
  %tmp76 = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4190, metadata !DIExpression()), !dbg !4989
  store i64 %frame, ptr %frame.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %frame.addr, metadata !4191, metadata !DIExpression()), !dbg !4990
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #17, !dbg !4991
  call void @llvm.dbg.declare(metadata ptr %first, metadata !4192, metadata !DIExpression()), !dbg !4992
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #17, !dbg !4991
  call void @llvm.dbg.declare(metadata ptr %node, metadata !4193, metadata !DIExpression()), !dbg !4993
  store ptr null, ptr %node, align 8, !dbg !4993
  call void @llvm.lifetime.start.p0(i64 8, ptr %correct_ret_addr) #17, !dbg !4994
  call void @llvm.dbg.declare(metadata ptr %correct_ret_addr, metadata !4194, metadata !DIExpression()), !dbg !4995
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler) #17, !dbg !4996
  call void @llvm.dbg.declare(metadata ptr %handler, metadata !4195, metadata !DIExpression()), !dbg !4997
  call void @llvm.lifetime.start.p0(i64 8, ptr %rhn) #17, !dbg !4998
  call void @llvm.dbg.declare(metadata ptr %rhn, metadata !4196, metadata !DIExpression()), !dbg !4999
  %call = call ptr @get_current() #18, !dbg !5000
  %call1 = call i64 @__rethook_find_ret_addr(ptr noundef %call, ptr noundef %node) #18, !dbg !5001
  store i64 %call1, ptr %correct_ret_addr, align 8, !dbg !5002
  %0 = load i64, ptr %correct_ret_addr, align 8, !dbg !5003
  %tobool = icmp ne i64 %0, 0, !dbg !5003
  br i1 %tobool, label %if.end, label %if.then, !dbg !5005

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5006

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5009

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5009

do.end:                                           ; preds = %do.cond
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #21, !dbg !5006
  store i32 %call2, ptr %tmp, align 4, !dbg !5009
  %1 = load i32, ptr %tmp, align 4, !dbg !5006
  br label %do.body3, !dbg !5011

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !5012

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !5015

do.body5:                                         ; preds = %do.body4
  br label %do.cond6, !dbg !5017

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5017

do.end7:                                          ; preds = %do.cond6
  br label %do.body8, !dbg !5015

do.body8:                                         ; preds = %do.end7
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 300, i32 0, i64 12) #17, !dbg !5019, !srcloc !5021
  br label %do.cond9, !dbg !5019

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !5019

do.end10:                                         ; preds = %do.cond9
  unreachable, !dbg !5015

do.cond11:                                        ; No predecessors!
  br label %do.end12, !dbg !5015

do.end12:                                         ; preds = %do.cond11
  br label %do.cond13, !dbg !5022

do.cond13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !5022

do.end14:                                         ; preds = %do.cond13
  br label %if.end, !dbg !5023

if.end:                                           ; preds = %do.end14, %entry
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5024
  %3 = load i64, ptr %correct_ret_addr, align 8, !dbg !5025
  call void @instruction_pointer_set(ptr noundef %2, i64 noundef %3) #18, !dbg !5026
  br label %do.body15, !dbg !5027

do.body15:                                        ; preds = %if.end
  call void @__preempt_count_add(i32 noundef 1) #18, !dbg !5028
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !5028, !srcloc !5030
  br label %do.cond16, !dbg !5028

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !5028

do.end17:                                         ; preds = %do.cond16
  %call18 = call ptr @get_current() #18, !dbg !5031
  %rethooks = getelementptr inbounds %struct.task_struct, ptr %call18, i32 0, i32 194, !dbg !5032
  %first19 = getelementptr inbounds %struct.llist_head, ptr %rethooks, i32 0, i32 0, !dbg !5033
  %4 = load ptr, ptr %first19, align 8, !dbg !5033
  store ptr %4, ptr %first, align 8, !dbg !5034
  br label %while.cond, !dbg !5035

while.cond:                                       ; preds = %if.end63, %do.end17
  %5 = load ptr, ptr %first, align 8, !dbg !5036
  %tobool20 = icmp ne ptr %5, null, !dbg !5035
  br i1 %tobool20, label %while.body, label %while.end, !dbg !5035

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !5037
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4197, metadata !DIExpression()), !dbg !5037
  %6 = load ptr, ptr %first, align 8, !dbg !5037
  store ptr %6, ptr %__mptr, align 8, !dbg !5037
  %7 = load ptr, ptr %__mptr, align 8, !dbg !5037
  %add.ptr = getelementptr i8, ptr %7, i64 -16, !dbg !5037
  store ptr %add.ptr, ptr %tmp21, align 8, !dbg !5037
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !5038
  %8 = load ptr, ptr %tmp21, align 8, !dbg !5037
  store ptr %8, ptr %rhn, align 8, !dbg !5039
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !5040
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4200, metadata !DIExpression()), !dbg !5040
  %9 = load ptr, ptr %rhn, align 8, !dbg !5040
  %frame22 = getelementptr inbounds %struct.rethook_node, ptr %9, i32 0, i32 4, !dbg !5040
  %10 = load i64, ptr %frame22, align 8, !dbg !5040
  %11 = load i64, ptr %frame.addr, align 8, !dbg !5040
  %cmp = icmp ne i64 %10, %11, !dbg !5040
  %lnot = xor i1 %cmp, true, !dbg !5040
  %lnot23 = xor i1 %lnot, true, !dbg !5040
  %lnot.ext = zext i1 %lnot23 to i32, !dbg !5040
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5040
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !5041
  %tobool24 = icmp ne i32 %12, 0, !dbg !5041
  %lnot25 = xor i1 %tobool24, true, !dbg !5041
  %lnot27 = xor i1 %lnot25, true, !dbg !5041
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !5041
  %conv = sext i32 %lnot.ext28 to i64, !dbg !5041
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5041
  %tobool29 = icmp ne i64 %expval, 0, !dbg !5041
  br i1 %tobool29, label %if.then30, label %if.end43, !dbg !5040

if.then30:                                        ; preds = %while.body
  br label %do.body31, !dbg !5041

do.body31:                                        ; preds = %if.then30
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !5042
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4203, metadata !DIExpression()), !dbg !5042
  store i32 2307, ptr %__flags, align 4, !dbg !5042
  br label %do.body32, !dbg !5042

do.body32:                                        ; preds = %do.body31
  br label %do.cond33, !dbg !5043

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !5043

do.end34:                                         ; preds = %do.cond33
  br label %do.body35, !dbg !5042

do.body35:                                        ; preds = %do.end34
  %13 = load i32, ptr %__flags, align 4, !dbg !5045
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 318, i32 %13, i64 12) #17, !dbg !5045, !srcloc !5047
  br label %do.cond36, !dbg !5045

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !5045

do.end37:                                         ; preds = %do.cond36
  br label %do.body38, !dbg !5042

do.body38:                                        ; preds = %do.end37
  br label %do.cond39, !dbg !5048

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !5048

do.end40:                                         ; preds = %do.cond39
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !5041
  br label %do.cond41, !dbg !5042

do.cond41:                                        ; preds = %do.end40
  br label %do.end42, !dbg !5042

do.end42:                                         ; preds = %do.cond41
  br label %if.end43, !dbg !5042

if.end43:                                         ; preds = %do.end42, %while.body
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !5040
  %tobool45 = icmp ne i32 %14, 0, !dbg !5040
  %lnot46 = xor i1 %tobool45, true, !dbg !5040
  %lnot48 = xor i1 %lnot46, true, !dbg !5040
  %lnot.ext49 = zext i1 %lnot48 to i32, !dbg !5040
  %conv50 = sext i32 %lnot.ext49 to i64, !dbg !5040
  %expval51 = call i64 @llvm.expect.i64(i64 %conv50, i64 0), !dbg !5040
  store i64 %expval51, ptr %tmp44, align 8, !dbg !5041
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !5050
  %15 = load i64, ptr %tmp44, align 8, !dbg !5040
  %tobool52 = icmp ne i64 %15, 0, !dbg !5050
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !5051

if.then53:                                        ; preds = %if.end43
  br label %while.end, !dbg !5052

if.end54:                                         ; preds = %if.end43
  %16 = load ptr, ptr %rhn, align 8, !dbg !5053
  %rethook = getelementptr inbounds %struct.rethook_node, ptr %16, i32 0, i32 2, !dbg !5054
  %17 = load ptr, ptr %rethook, align 8, !dbg !5054
  %call55 = call ptr @rethook_get_handler(ptr noundef %17) #18, !dbg !5055
  store ptr %call55, ptr %handler, align 8, !dbg !5056
  %18 = load ptr, ptr %handler, align 8, !dbg !5057
  %tobool56 = icmp ne ptr %18, null, !dbg !5057
  br i1 %tobool56, label %if.then57, label %if.end59, !dbg !5059

if.then57:                                        ; preds = %if.end54
  %19 = load ptr, ptr %handler, align 8, !dbg !5060
  %20 = load ptr, ptr %rhn, align 8, !dbg !5061
  %21 = load ptr, ptr %rhn, align 8, !dbg !5062
  %rethook58 = getelementptr inbounds %struct.rethook_node, ptr %21, i32 0, i32 2, !dbg !5063
  %22 = load ptr, ptr %rethook58, align 8, !dbg !5063
  %data = getelementptr inbounds %struct.rethook, ptr %22, i32 0, i32 0, !dbg !5064
  %23 = load ptr, ptr %data, align 8, !dbg !5064
  %24 = load i64, ptr %correct_ret_addr, align 8, !dbg !5065
  %25 = load ptr, ptr %regs.addr, align 8, !dbg !5066
  call void %19(ptr noundef %20, ptr noundef %23, i64 noundef %24, ptr noundef %25) #18, !dbg !5060
  br label %if.end59, !dbg !5060

if.end59:                                         ; preds = %if.then57, %if.end54
  %26 = load ptr, ptr %first, align 8, !dbg !5067
  %27 = load ptr, ptr %node, align 8, !dbg !5069
  %cmp60 = icmp eq ptr %26, %27, !dbg !5070
  br i1 %cmp60, label %if.then62, label %if.end63, !dbg !5071

if.then62:                                        ; preds = %if.end59
  br label %while.end, !dbg !5072

if.end63:                                         ; preds = %if.end59
  %28 = load ptr, ptr %first, align 8, !dbg !5073
  %next = getelementptr inbounds %struct.llist_node, ptr %28, i32 0, i32 0, !dbg !5074
  %29 = load ptr, ptr %next, align 8, !dbg !5074
  store ptr %29, ptr %first, align 8, !dbg !5075
  br label %while.cond, !dbg !5035, !llvm.loop !5076

while.end:                                        ; preds = %if.then62, %if.then53, %while.cond
  %30 = load ptr, ptr %regs.addr, align 8, !dbg !5078
  %31 = load i64, ptr %correct_ret_addr, align 8, !dbg !5079
  call void @arch_rethook_fixup_return(ptr noundef %30, i64 noundef %31) #18, !dbg !5080
  %call64 = call ptr @get_current() #18, !dbg !5081
  %rethooks65 = getelementptr inbounds %struct.task_struct, ptr %call64, i32 0, i32 194, !dbg !5082
  %first66 = getelementptr inbounds %struct.llist_head, ptr %rethooks65, i32 0, i32 0, !dbg !5083
  %32 = load ptr, ptr %first66, align 8, !dbg !5083
  store ptr %32, ptr %first, align 8, !dbg !5084
  %33 = load ptr, ptr %node, align 8, !dbg !5085
  %next67 = getelementptr inbounds %struct.llist_node, ptr %33, i32 0, i32 0, !dbg !5086
  %34 = load ptr, ptr %next67, align 8, !dbg !5086
  %call68 = call ptr @get_current() #18, !dbg !5087
  %rethooks69 = getelementptr inbounds %struct.task_struct, ptr %call68, i32 0, i32 194, !dbg !5088
  %first70 = getelementptr inbounds %struct.llist_head, ptr %rethooks69, i32 0, i32 0, !dbg !5089
  store ptr %34, ptr %first70, align 8, !dbg !5090
  %35 = load ptr, ptr %node, align 8, !dbg !5091
  %next71 = getelementptr inbounds %struct.llist_node, ptr %35, i32 0, i32 0, !dbg !5092
  store ptr null, ptr %next71, align 8, !dbg !5093
  br label %while.cond72, !dbg !5094

while.cond72:                                     ; preds = %while.body74, %while.end
  %36 = load ptr, ptr %first, align 8, !dbg !5095
  %tobool73 = icmp ne ptr %36, null, !dbg !5094
  br i1 %tobool73, label %while.body74, label %while.end79, !dbg !5094

while.body74:                                     ; preds = %while.cond72
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr75) #17, !dbg !5096
  call void @llvm.dbg.declare(metadata ptr %__mptr75, metadata !4206, metadata !DIExpression()), !dbg !5096
  %37 = load ptr, ptr %first, align 8, !dbg !5096
  store ptr %37, ptr %__mptr75, align 8, !dbg !5096
  %38 = load ptr, ptr %__mptr75, align 8, !dbg !5096
  %add.ptr77 = getelementptr i8, ptr %38, i64 -16, !dbg !5096
  store ptr %add.ptr77, ptr %tmp76, align 8, !dbg !5096
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr75) #17, !dbg !5097
  %39 = load ptr, ptr %tmp76, align 8, !dbg !5096
  store ptr %39, ptr %rhn, align 8, !dbg !5098
  %40 = load ptr, ptr %first, align 8, !dbg !5099
  %next78 = getelementptr inbounds %struct.llist_node, ptr %40, i32 0, i32 0, !dbg !5100
  %41 = load ptr, ptr %next78, align 8, !dbg !5100
  store ptr %41, ptr %first, align 8, !dbg !5101
  %42 = load ptr, ptr %rhn, align 8, !dbg !5102
  call void @rethook_recycle(ptr noundef %42) #18, !dbg !5103
  br label %while.cond72, !dbg !5094, !llvm.loop !5104

while.end79:                                      ; preds = %while.cond72
  br label %do.body80, !dbg !5106

do.body80:                                        ; preds = %while.end79
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !5107, !srcloc !5109
  %call81 = call zeroext i1 @__preempt_count_dec_and_test() #18, !dbg !5110
  %lnot82 = xor i1 %call81, true, !dbg !5110
  %lnot84 = xor i1 %lnot82, true, !dbg !5110
  %lnot.ext85 = zext i1 %lnot84 to i32, !dbg !5110
  %conv86 = sext i32 %lnot.ext85 to i64, !dbg !5110
  %expval87 = call i64 @llvm.expect.i64(i64 %conv86, i64 0), !dbg !5110
  %tobool88 = icmp ne i64 %expval87, 0, !dbg !5110
  br i1 %tobool88, label %if.then89, label %if.end93, !dbg !5107

if.then89:                                        ; preds = %do.body80
  br label %do.body90, !dbg !5110

do.body90:                                        ; preds = %if.then89
  %43 = call i64 @llvm.read_register.i64(metadata !4228), !dbg !5112
  %44 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %43) #17, !dbg !5112, !srcloc !5114
  call void @llvm.write_register.i64(metadata !4228, i64 %44), !dbg !5112
  br label %do.cond91, !dbg !5112

do.cond91:                                        ; preds = %do.body90
  br label %do.end92, !dbg !5112

do.end92:                                         ; preds = %do.cond91
  br label %if.end93, !dbg !5112

if.end93:                                         ; preds = %do.end92, %do.body80
  br label %do.cond94, !dbg !5107

do.cond94:                                        ; preds = %if.end93
  br label %do.end95, !dbg !5107

do.end95:                                         ; preds = %do.cond94
  %45 = load i64, ptr %correct_ret_addr, align 8, !dbg !5115
  call void @llvm.lifetime.end.p0(i64 8, ptr %rhn) #17, !dbg !5116
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler) #17, !dbg !5116
  call void @llvm.lifetime.end.p0(i64 8, ptr %correct_ret_addr) #17, !dbg !5116
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #17, !dbg !5116
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #17, !dbg !5116
  ret i64 %45, !dbg !5117
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5118 dso_local i32 @_printk(ptr noundef, ...) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instruction_pointer_set(ptr noundef %regs, i64 noundef %val) #3 align 16 !dbg !5122 {
entry:
  %regs.addr = alloca ptr, align 8
  %val.addr = alloca i64, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5124, metadata !DIExpression()), !dbg !5126
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5125, metadata !DIExpression()), !dbg !5127
  %0 = load i64, ptr %val.addr, align 8, !dbg !5128
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !5129
  %ip = getelementptr inbounds %struct.pt_regs, ptr %1, i32 0, i32 16, !dbg !5130
  store i64 %0, ptr %ip, align 8, !dbg !5131
  ret void, !dbg !5132
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_sub_and_test(i32 noundef %i, ptr noundef %r) #3 align 16 !dbg !5133 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5137, metadata !DIExpression()), !dbg !5139
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5138, metadata !DIExpression()), !dbg !5140
  %0 = load i32, ptr %i.addr, align 4, !dbg !5141
  %1 = load ptr, ptr %r.addr, align 8, !dbg !5142
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef %0, ptr noundef %1, ptr noundef null) #18, !dbg !5143
  ret i1 %call, !dbg !5144
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !5145 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5149, metadata !DIExpression()), !dbg !5153
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5150, metadata !DIExpression()), !dbg !5154
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5151, metadata !DIExpression()), !dbg !5155
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #17, !dbg !5156
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5152, metadata !DIExpression()), !dbg !5157
  %0 = load i32, ptr %i.addr, align 4, !dbg !5158
  %1 = load ptr, ptr %r.addr, align 8, !dbg !5159
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !5160
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #18, !dbg !5161
  store i32 %call, ptr %old, align 4, !dbg !5157
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !5162
  %tobool = icmp ne ptr %2, null, !dbg !5162
  br i1 %tobool, label %if.then, label %if.end, !dbg !5164

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !5165
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !5166
  store i32 %3, ptr %4, align 4, !dbg !5167
  br label %if.end, !dbg !5168

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !5169
  %6 = load i32, ptr %i.addr, align 4, !dbg !5171
  %cmp = icmp eq i32 %5, %6, !dbg !5172
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !5173

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !5174

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !5176

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !5178

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5178

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !5176

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !5180

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !5182

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5182

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !5180, !srcloc !5184
  br label %do.cond7, !dbg !5180

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !5180

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !5176

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !5176

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !5185
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5185

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !5186
  %cmp12 = icmp slt i32 %7, 0, !dbg !5186
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !5186

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !5186
  %9 = load i32, ptr %i.addr, align 4, !dbg !5186
  %sub = sub i32 %8, %9, !dbg !5186
  %cmp13 = icmp slt i32 %sub, 0, !dbg !5186
  br label %lor.end, !dbg !5186

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !5186
  %lnot14 = xor i1 %lnot, true, !dbg !5186
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !5186
  %conv = sext i32 %lnot.ext to i64, !dbg !5186
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5186
  %tobool15 = icmp ne i64 %expval, 0, !dbg !5186
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5188

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !5189
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #18, !dbg !5190
  br label %if.end17, !dbg !5190

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !5191
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5191

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #17, !dbg !5192
  %12 = load i1, ptr %retval, align 1, !dbg !5192
  ret i1 %12, !dbg !5192
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !5193 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5199, metadata !DIExpression()), !dbg !5201
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5200, metadata !DIExpression()), !dbg !5202
  br label %do.body, !dbg !5203

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5204

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5206
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #18, !dbg !5207
  %1 = load i32, ptr %i.addr, align 4, !dbg !5208
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5209
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #18, !dbg !5210
  ret i32 %call, !dbg !5211
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5212 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !5215 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5223, metadata !DIExpression()), !dbg !5225
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5224, metadata !DIExpression()), !dbg !5226
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5227
  %1 = load i64, ptr %size.addr, align 8, !dbg !5228
  %conv = trunc i64 %1 to i32, !dbg !5228
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !5229
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5230
  %3 = load i64, ptr %size.addr, align 8, !dbg !5230
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #18, !dbg !5230
  ret void, !dbg !5231
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !5232 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5235, metadata !DIExpression()), !dbg !5237
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5236, metadata !DIExpression()), !dbg !5238
  %0 = load i32, ptr %i.addr, align 4, !dbg !5239
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5240
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #18, !dbg !5241
  ret i32 %call, !dbg !5242
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !5243 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5248, metadata !DIExpression()), !dbg !5250
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5249, metadata !DIExpression()), !dbg !5251
  ret i1 true, !dbg !5252
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !5253 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5258, metadata !DIExpression()), !dbg !5261
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5259, metadata !DIExpression()), !dbg !5262
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5260, metadata !DIExpression()), !dbg !5263
  ret void, !dbg !5264
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !5265 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5268, metadata !DIExpression()), !dbg !5272
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5269, metadata !DIExpression()), !dbg !5273
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #17, !dbg !5274
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5270, metadata !DIExpression()), !dbg !5274
  %0 = load i32, ptr %i.addr, align 4, !dbg !5274
  %sub = sub i32 0, %0, !dbg !5274
  store i32 %sub, ptr %__ret, align 4, !dbg !5274
  %1 = load i32, ptr %__ret, align 4, !dbg !5274
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5274
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !5274
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #17, !dbg !5274, !srcloc !5275
  store i32 %3, ptr %__ret, align 4, !dbg !5274
  %4 = load i32, ptr %__ret, align 4, !dbg !5274
  store i32 %4, ptr %tmp, align 4, !dbg !5274
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #17, !dbg !5276
  %5 = load i32, ptr %tmp, align 4, !dbg !5274
  ret i32 %5, !dbg !5277
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #13 align 16 !dbg !5278 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5280, metadata !DIExpression()), !dbg !5285
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5281, metadata !DIExpression()), !dbg !5286
  %0 = load i64, ptr %size.addr, align 8, !dbg !5287
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5288
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5289

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5290
  %tobool = icmp ne i64 %2, 0, !dbg !5290
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5291

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !5292
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5282, metadata !DIExpression()), !dbg !5293
  %3 = load i64, ptr %size.addr, align 8, !dbg !5294
  %cmp = icmp ugt i64 %3, 8192, !dbg !5296
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5297

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5298
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5299
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !5300
  store ptr %call, ptr %retval, align 8, !dbg !5301
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5301

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5302
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !5302
  store i32 %call2, ptr %index, align 4, !dbg !5303
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5304
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5305
  %9 = ptrtoint ptr %8 to i64, !dbg !5305
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !5306
  %idxprom = zext i32 %call3 to i64, !dbg !5307
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5307
  %10 = load i32, ptr %index, align 4, !dbg !5308
  %idxprom4 = zext i32 %10 to i64, !dbg !5307
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5307
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5307
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5309
  %13 = load i64, ptr %size.addr, align 8, !dbg !5310
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #22, !dbg !5311
  store ptr %call6, ptr %retval, align 8, !dbg !5312
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5312

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !5313
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5314
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5315
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !5316
  store ptr %call8, ptr %retval, align 8, !dbg !5317
  br label %return, !dbg !5317

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5318
  ret ptr %16, !dbg !5318
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5319 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !5320 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5324, metadata !DIExpression()), !dbg !5326
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5325, metadata !DIExpression()), !dbg !5327
  %0 = load i64, ptr %size.addr, align 8, !dbg !5328
  %tobool = icmp ne i64 %0, 0, !dbg !5328
  br i1 %tobool, label %if.end, label %if.then, !dbg !5330

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5331
  br label %return, !dbg !5331

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5332
  %cmp = icmp ule i64 %1, 8, !dbg !5334
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5335

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5336
  br label %return, !dbg !5336

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5337
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5339
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5340

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5341
  %cmp4 = icmp ule i64 %3, 96, !dbg !5342
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5343

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5344
  br label %return, !dbg !5344

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5345
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5347
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5348

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5349
  %cmp9 = icmp ule i64 %5, 192, !dbg !5350
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5351

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5352
  br label %return, !dbg !5352

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5353
  %cmp12 = icmp ule i64 %6, 8, !dbg !5355
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5356

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5357
  br label %return, !dbg !5357

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5358
  %cmp15 = icmp ule i64 %7, 16, !dbg !5360
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5361

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5362
  br label %return, !dbg !5362

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5363
  %cmp18 = icmp ule i64 %8, 32, !dbg !5365
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5366

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5367
  br label %return, !dbg !5367

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5368
  %cmp21 = icmp ule i64 %9, 64, !dbg !5370
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5371

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5372
  br label %return, !dbg !5372

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5373
  %cmp24 = icmp ule i64 %10, 128, !dbg !5375
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5376

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5377
  br label %return, !dbg !5377

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5378
  %cmp27 = icmp ule i64 %11, 256, !dbg !5380
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5381

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5382
  br label %return, !dbg !5382

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5383
  %cmp30 = icmp ule i64 %12, 512, !dbg !5385
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5386

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5387
  br label %return, !dbg !5387

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5388
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5390
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5391

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5392
  br label %return, !dbg !5392

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5393
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5395
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5396

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5397
  br label %return, !dbg !5397

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5398
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5400
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5401

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5402
  br label %return, !dbg !5402

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5403
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5405
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5406

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5407
  br label %return, !dbg !5407

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5408
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5410
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5411

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5412
  br label %return, !dbg !5412

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5413
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5415
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5416

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5417
  br label %return, !dbg !5417

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5418
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5420
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5421

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5422
  br label %return, !dbg !5422

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5423
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5425
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5426

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5427
  br label %return, !dbg !5427

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5428
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5430
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5431

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5432
  br label %return, !dbg !5432

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5433
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5435
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5436

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5437
  br label %return, !dbg !5437

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5438
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5440
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5441

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5442
  br label %return, !dbg !5442

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5443
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5445
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5446

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5447
  br label %return, !dbg !5447

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5448, !range !4349, !noundef !405
  %tobool69 = trunc i8 %25 to i1, !dbg !5448
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5450

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5451

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_206() #23, !dbg !5452, !srcloc !5455
  unreachable, !dbg !5452

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5456

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5457

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5458

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5460

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5458

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #17, !dbg !5462, !srcloc !5464
  br label %do.end75, !dbg !5462

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5458

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5465
  br label %return, !dbg !5465

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5466
  ret i32 %26, !dbg !5466
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5467 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !5470 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5474, metadata !DIExpression()), !dbg !5476
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5475, metadata !DIExpression()), !dbg !5477
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5478
  %and = and i32 %0, 17, !dbg !5478
  %cmp = icmp eq i32 %and, 0, !dbg !5478
  %lnot = xor i1 %cmp, true, !dbg !5478
  %lnot1 = xor i1 %lnot, true, !dbg !5478
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5478
  %conv = sext i32 %lnot.ext to i64, !dbg !5478
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5478
  %tobool = icmp ne i64 %expval, 0, !dbg !5478
  br i1 %tobool, label %if.then, label %if.end, !dbg !5480

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5481
  br label %return, !dbg !5481

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5482
  %and2 = and i32 %1, 1, !dbg !5484
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5484
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5485

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5486
  br label %return, !dbg !5486

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5487
  br label %return, !dbg !5487

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5489
  ret i32 %2, !dbg !5489
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5490 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #14

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5491 dso_local void @__compiletime_assert_206() #16

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !5492 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5496, metadata !DIExpression()), !dbg !5498
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5497, metadata !DIExpression()), !dbg !5499
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5500
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #18, !dbg !5501
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5502
  %2 = load i32, ptr %i.addr, align 4, !dbg !5503
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #18, !dbg !5504
  ret void, !dbg !5505
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !5506 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5508, metadata !DIExpression()), !dbg !5510
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5509, metadata !DIExpression()), !dbg !5511
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5512
  %1 = load i64, ptr %size.addr, align 8, !dbg !5513
  %conv = trunc i64 %1 to i32, !dbg !5513
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !5514
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5515
  %3 = load i64, ptr %size.addr, align 8, !dbg !5515
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #18, !dbg !5515
  ret void, !dbg !5516
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !5517 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5519, metadata !DIExpression()), !dbg !5521
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5520, metadata !DIExpression()), !dbg !5522
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5523
  %1 = load i32, ptr %i.addr, align 4, !dbg !5524
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #18, !dbg !5525
  ret void, !dbg !5526
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !5527 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5529, metadata !DIExpression()), !dbg !5531
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5530, metadata !DIExpression()), !dbg !5532
  br label %do.body, !dbg !5533

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !5534
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5534
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !5534
  store volatile i32 %0, ptr %counter, align 4, !dbg !5534
  br label %do.end, !dbg !5534

do.end:                                           ; preds = %do.body
  ret void, !dbg !5536
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_release(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !5537 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5539, metadata !DIExpression()), !dbg !5541
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5540, metadata !DIExpression()), !dbg !5542
  br label %do.body, !dbg !5543

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5544

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5546
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #18, !dbg !5547
  %1 = load i32, ptr %i.addr, align 4, !dbg !5548
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5549
  %call = call i32 @raw_atomic_fetch_add_release(i32 noundef %1, ptr noundef %2) #18, !dbg !5550
  ret i32 %call, !dbg !5551
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__freelist_add(ptr noundef %node, ptr noundef %list) #3 align 16 !dbg !5552 {
entry:
  %node.addr = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %__ai_oldp = alloca ptr, align 8
  %tmp15 = alloca i64, align 8
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca ptr, align 8
  %__new = alloca ptr, align 8
  %__ptr = alloca ptr, align 8
  %tmp20 = alloca i64, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5554, metadata !DIExpression()), !dbg !5570
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5555, metadata !DIExpression()), !dbg !5571
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #17, !dbg !5572
  call void @llvm.dbg.declare(metadata ptr %head, metadata !5556, metadata !DIExpression()), !dbg !5573
  br label %do.body, !dbg !5574

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5576

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5576

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5574
  %head1 = getelementptr inbounds %struct.freelist_head, ptr %0, i32 0, i32 0, !dbg !5574
  %1 = load volatile ptr, ptr %head1, align 8, !dbg !5574
  store ptr %1, ptr %tmp, align 8, !dbg !5576
  %2 = load ptr, ptr %tmp, align 8, !dbg !5574
  store ptr %2, ptr %head, align 8, !dbg !5573
  br label %for.cond, !dbg !5578

for.cond:                                         ; preds = %if.then32, %do.end
  br label %do.body2, !dbg !5579

do.body2:                                         ; preds = %for.cond
  br label %do.body3, !dbg !5580

do.body3:                                         ; preds = %do.body2
  br label %do.cond4, !dbg !5582

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !5582

do.end5:                                          ; preds = %do.cond4
  br label %do.body6, !dbg !5580

do.body6:                                         ; preds = %do.end5
  %3 = load ptr, ptr %head, align 8, !dbg !5584
  %4 = load ptr, ptr %node.addr, align 8, !dbg !5584
  %next = getelementptr inbounds %struct.freelist_node, ptr %4, i32 0, i32 1, !dbg !5584
  store volatile ptr %3, ptr %next, align 8, !dbg !5584
  br label %do.cond7, !dbg !5584

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !5584

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !5580

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !5580

do.end10:                                         ; preds = %do.cond9
  %5 = load ptr, ptr %node.addr, align 8, !dbg !5586
  %refs = getelementptr inbounds %struct.freelist_node, ptr %5, i32 0, i32 0, !dbg !5587
  call void @atomic_set_release(ptr noundef %refs, i32 noundef 1) #18, !dbg !5588
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #17, !dbg !5589
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !5557, metadata !DIExpression()), !dbg !5589
  %6 = load ptr, ptr %list.addr, align 8, !dbg !5589
  %head11 = getelementptr inbounds %struct.freelist_head, ptr %6, i32 0, i32 0, !dbg !5589
  store ptr %head11, ptr %__ai_ptr, align 8, !dbg !5589
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_oldp) #17, !dbg !5589
  call void @llvm.dbg.declare(metadata ptr %__ai_oldp, metadata !5563, metadata !DIExpression()), !dbg !5589
  store ptr %head, ptr %__ai_oldp, align 8, !dbg !5589
  br label %do.body12, !dbg !5589

do.body12:                                        ; preds = %do.end10
  br label %do.cond13, !dbg !5590

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5590

do.end14:                                         ; preds = %do.cond13
  %7 = load ptr, ptr %__ai_ptr, align 8, !dbg !5589
  call void @instrument_atomic_read_write(ptr noundef %7, i64 noundef 8) #18, !dbg !5589
  %8 = load ptr, ptr %__ai_oldp, align 8, !dbg !5589
  call void @instrument_read_write(ptr noundef %8, i64 noundef 8) #18, !dbg !5589
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #17, !dbg !5592
  call void @llvm.dbg.declare(metadata ptr %success, metadata !5564, metadata !DIExpression()), !dbg !5592
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #17, !dbg !5592
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !5566, metadata !DIExpression()), !dbg !5592
  %9 = load ptr, ptr %__ai_oldp, align 8, !dbg !5592
  store ptr %9, ptr %_old, align 8, !dbg !5592
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #17, !dbg !5592
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !5567, metadata !DIExpression()), !dbg !5592
  %10 = load ptr, ptr %_old, align 8, !dbg !5592
  %11 = load ptr, ptr %10, align 8, !dbg !5592
  store ptr %11, ptr %__old, align 8, !dbg !5592
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #17, !dbg !5592
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !5568, metadata !DIExpression()), !dbg !5592
  %12 = load ptr, ptr %node.addr, align 8, !dbg !5592
  store ptr %12, ptr %__new, align 8, !dbg !5592
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #17, !dbg !5592
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5569, metadata !DIExpression()), !dbg !5592
  %13 = load ptr, ptr %__ai_ptr, align 8, !dbg !5592
  store ptr %13, ptr %__ptr, align 8, !dbg !5592
  %14 = load ptr, ptr %__ptr, align 8, !dbg !5592
  %15 = load ptr, ptr %__old, align 8, !dbg !5592
  %16 = load ptr, ptr %__new, align 8, !dbg !5592
  %17 = call { i8, ptr } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %14, ptr %16, ptr elementtype(i64) %14, ptr %15) #17, !dbg !5592, !srcloc !5593
  %asmresult = extractvalue { i8, ptr } %17, 0, !dbg !5592
  %asmresult16 = extractvalue { i8, ptr } %17, 1, !dbg !5592
  %18 = icmp ult i8 %asmresult, 2, !dbg !5592
  call void @llvm.assume(i1 %18), !dbg !5592
  store i8 %asmresult, ptr %success, align 1, !dbg !5592
  store ptr %asmresult16, ptr %__old, align 8, !dbg !5592
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #17, !dbg !5592
  %19 = load i8, ptr %success, align 1, !dbg !5594, !range !4349, !noundef !405
  %tobool = trunc i8 %19 to i1, !dbg !5594
  %lnot = xor i1 %tobool, true, !dbg !5594
  %lnot17 = xor i1 %lnot, true, !dbg !5594
  %lnot18 = xor i1 %lnot17, true, !dbg !5594
  %lnot.ext = zext i1 %lnot18 to i32, !dbg !5594
  %conv = sext i32 %lnot.ext to i64, !dbg !5594
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5594
  %tobool19 = icmp ne i64 %expval, 0, !dbg !5594
  br i1 %tobool19, label %if.then, label %if.end, !dbg !5592

if.then:                                          ; preds = %do.end14
  %20 = load ptr, ptr %__old, align 8, !dbg !5594
  %21 = load ptr, ptr %_old, align 8, !dbg !5594
  store ptr %20, ptr %21, align 8, !dbg !5594
  br label %if.end, !dbg !5594

if.end:                                           ; preds = %if.then, %do.end14
  %22 = load i8, ptr %success, align 1, !dbg !5592, !range !4349, !noundef !405
  %tobool21 = trunc i8 %22 to i1, !dbg !5592
  %lnot22 = xor i1 %tobool21, true, !dbg !5592
  %lnot24 = xor i1 %lnot22, true, !dbg !5592
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !5592
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !5592
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 1), !dbg !5592
  store i64 %expval27, ptr %tmp20, align 8, !dbg !5594
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #17, !dbg !5589
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #17, !dbg !5589
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #17, !dbg !5589
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #17, !dbg !5589
  %23 = load i64, ptr %tmp20, align 8, !dbg !5592
  store i64 %23, ptr %tmp15, align 8, !dbg !5589
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_oldp) #17, !dbg !5596
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #17, !dbg !5596
  %24 = load i64, ptr %tmp15, align 8, !dbg !5589
  %tobool28 = icmp ne i64 %24, 0, !dbg !5596
  br i1 %tobool28, label %if.end34, label %if.then29, !dbg !5597

if.then29:                                        ; preds = %if.end
  %25 = load ptr, ptr %node.addr, align 8, !dbg !5598
  %refs30 = getelementptr inbounds %struct.freelist_node, ptr %25, i32 0, i32 0, !dbg !5601
  %call = call i32 @atomic_fetch_add_release(i32 noundef 2147483647, ptr noundef %refs30) #18, !dbg !5602
  %cmp = icmp eq i32 %call, 1, !dbg !5603
  br i1 %cmp, label %if.then32, label %if.end33, !dbg !5604

if.then32:                                        ; preds = %if.then29
  br label %for.cond, !dbg !5605, !llvm.loop !5606

if.end33:                                         ; preds = %if.then29
  br label %if.end34, !dbg !5609

if.end34:                                         ; preds = %if.end33, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #17, !dbg !5610
  ret void, !dbg !5610
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_release(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !5611 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5613, metadata !DIExpression()), !dbg !5615
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5614, metadata !DIExpression()), !dbg !5616
  %0 = load i32, ptr %i.addr, align 4, !dbg !5617
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5618
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #18, !dbg !5619
  ret i32 %call, !dbg !5620
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !5621 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5623, metadata !DIExpression()), !dbg !5627
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5624, metadata !DIExpression()), !dbg !5628
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #17, !dbg !5629
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5625, metadata !DIExpression()), !dbg !5629
  %0 = load i32, ptr %i.addr, align 4, !dbg !5629
  store i32 %0, ptr %__ret, align 4, !dbg !5629
  %1 = load i32, ptr %__ret, align 4, !dbg !5629
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5629
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !5629
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #17, !dbg !5629, !srcloc !5630
  store i32 %3, ptr %__ret, align 4, !dbg !5629
  %4 = load i32, ptr %__ret, align 4, !dbg !5629
  store i32 %4, ptr %tmp, align 4, !dbg !5629
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #17, !dbg !5631
  %5 = load i32, ptr %tmp, align 4, !dbg !5629
  ret i32 %5, !dbg !5632
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set_release(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !5633 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5635, metadata !DIExpression()), !dbg !5637
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5636, metadata !DIExpression()), !dbg !5638
  br label %do.body, !dbg !5639

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5640

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5642
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #18, !dbg !5643
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5644
  %2 = load i32, ptr %i.addr, align 4, !dbg !5645
  call void @raw_atomic_set_release(ptr noundef %1, i32 noundef %2) #18, !dbg !5646
  ret void, !dbg !5647
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !5648 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5650, metadata !DIExpression()), !dbg !5652
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5651, metadata !DIExpression()), !dbg !5653
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5654
  %1 = load i64, ptr %size.addr, align 8, !dbg !5655
  %conv = trunc i64 %1 to i32, !dbg !5655
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !5656
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5657
  %3 = load i64, ptr %size.addr, align 8, !dbg !5657
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 3) #18, !dbg !5657
  ret void, !dbg !5658
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set_release(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !5659 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5661, metadata !DIExpression()), !dbg !5663
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5662, metadata !DIExpression()), !dbg !5664
  br label %do.body, !dbg !5665

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5668

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5670

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5668

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !5672

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !5674

do.end4:                                          ; preds = %do.body3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !5672, !srcloc !5676
  br label %do.body5, !dbg !5672

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5677

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5679

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5677

do.body8:                                         ; preds = %do.end7
  %0 = load i32, ptr %i.addr, align 4, !dbg !5681
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5681
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !5681
  store volatile i32 %0, ptr %counter, align 4, !dbg !5681
  br label %do.end9, !dbg !5681

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5677

do.end10:                                         ; preds = %do.end9
  br label %do.end11, !dbg !5672

do.end11:                                         ; preds = %do.end10
  br label %do.end12, !dbg !5668

do.end12:                                         ; preds = %do.end11
  ret void, !dbg !5683
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !5684 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5688, metadata !DIExpression()), !dbg !5690
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5689, metadata !DIExpression()), !dbg !5691
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5692
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !5693
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #18, !dbg !5694
  ret void, !dbg !5695
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !5696 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5700, metadata !DIExpression()), !dbg !5704
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5701, metadata !DIExpression()), !dbg !5705
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5702, metadata !DIExpression()), !dbg !5706
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #17, !dbg !5707
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5703, metadata !DIExpression()), !dbg !5708
  %0 = load i32, ptr %i.addr, align 4, !dbg !5709
  %1 = load ptr, ptr %r.addr, align 8, !dbg !5710
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !5711
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #18, !dbg !5712
  store i32 %call, ptr %old, align 4, !dbg !5708
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !5713
  %tobool = icmp ne ptr %2, null, !dbg !5713
  br i1 %tobool, label %if.then, label %if.end, !dbg !5715

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !5716
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !5717
  store i32 %3, ptr %4, align 4, !dbg !5718
  br label %if.end, !dbg !5719

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !5720
  %tobool1 = icmp ne i32 %5, 0, !dbg !5720
  %lnot = xor i1 %tobool1, true, !dbg !5720
  %lnot2 = xor i1 %lnot, true, !dbg !5720
  %lnot3 = xor i1 %lnot2, true, !dbg !5720
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5720
  %conv = sext i32 %lnot.ext to i64, !dbg !5720
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5720
  %tobool4 = icmp ne i64 %expval, 0, !dbg !5720
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5722

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !5723
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #18, !dbg !5724
  br label %if.end18, !dbg !5724

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !5725
  %cmp = icmp slt i32 %7, 0, !dbg !5725
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5725

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !5725
  %9 = load i32, ptr %i.addr, align 4, !dbg !5725
  %add = add i32 %8, %9, !dbg !5725
  %cmp7 = icmp slt i32 %add, 0, !dbg !5725
  br label %lor.end, !dbg !5725

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !5725
  %lnot11 = xor i1 %lnot9, true, !dbg !5725
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5725
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5725
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !5725
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !5725
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5727

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !5728
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #18, !dbg !5729
  br label %if.end17, !dbg !5729

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #17, !dbg !5730
  ret void, !dbg !5730
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !5731 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5733, metadata !DIExpression()), !dbg !5735
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5734, metadata !DIExpression()), !dbg !5736
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5737
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #18, !dbg !5738
  %1 = load i32, ptr %i.addr, align 4, !dbg !5739
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5740
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #18, !dbg !5741
  ret i32 %call, !dbg !5742
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !5743 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5745, metadata !DIExpression()), !dbg !5747
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5746, metadata !DIExpression()), !dbg !5748
  %0 = load i32, ptr %i.addr, align 4, !dbg !5749
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5750
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #18, !dbg !5751
  ret i32 %call, !dbg !5752
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #3 align 16 !dbg !5753 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5757, metadata !DIExpression()), !dbg !5758
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5759
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #18, !dbg !5760
  ret i1 %call, !dbg !5761
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !5762 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5766, metadata !DIExpression()), !dbg !5768
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5767, metadata !DIExpression()), !dbg !5769
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5770
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !5771
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #18, !dbg !5772
  ret i1 %call, !dbg !5773
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #4 align 16 !dbg !5774 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5780, metadata !DIExpression()), !dbg !5781
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5782
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #18, !dbg !5783
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5784
  %call = call i32 @raw_atomic_read(ptr noundef %1) #18, !dbg !5785
  ret i32 %call, !dbg !5786
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_try_cmpxchg_acquire(ptr noundef %v, ptr noundef %old, i32 noundef %new) #4 align 16 !dbg !5787 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5791, metadata !DIExpression()), !dbg !5794
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !5792, metadata !DIExpression()), !dbg !5795
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5793, metadata !DIExpression()), !dbg !5796
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5797
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #18, !dbg !5798
  %1 = load ptr, ptr %old.addr, align 8, !dbg !5799
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 4) #18, !dbg !5800
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5801
  %3 = load ptr, ptr %old.addr, align 8, !dbg !5802
  %4 = load i32, ptr %new.addr, align 4, !dbg !5803
  %call = call zeroext i1 @raw_atomic_try_cmpxchg_acquire(ptr noundef %2, ptr noundef %3, i32 noundef %4) #18, !dbg !5804
  ret i1 %call, !dbg !5805
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !5806 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5808, metadata !DIExpression()), !dbg !5810
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5809, metadata !DIExpression()), !dbg !5811
  br label %do.body, !dbg !5812

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5813

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5815
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #18, !dbg !5816
  %1 = load i32, ptr %i.addr, align 4, !dbg !5817
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5818
  %call = call i32 @raw_atomic_fetch_add(i32 noundef %1, ptr noundef %2) #18, !dbg !5819
  ret i32 %call, !dbg !5820
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !5821 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5823, metadata !DIExpression()), !dbg !5825
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5824, metadata !DIExpression()), !dbg !5826
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5827
  %1 = load i64, ptr %size.addr, align 8, !dbg !5828
  %conv = trunc i64 %1 to i32, !dbg !5828
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #18, !dbg !5829
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5830
  %3 = load i64, ptr %size.addr, align 8, !dbg !5830
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #18, !dbg !5830
  ret void, !dbg !5831
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #4 align 16 !dbg !5832 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5834, metadata !DIExpression()), !dbg !5835
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5836
  %call = call i32 @arch_atomic_read(ptr noundef %0) #18, !dbg !5837
  ret i32 %call, !dbg !5838
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !5839 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5841, metadata !DIExpression()), !dbg !5843
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5842, metadata !DIExpression()), !dbg !5844
  ret i1 true, !dbg !5845
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #4 align 16 !dbg !5846 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5848, metadata !DIExpression()), !dbg !5849
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5850
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !5850
  %1 = load volatile i32, ptr %counter, align 4, !dbg !5850
  ret i32 %1, !dbg !5851
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_try_cmpxchg_acquire(ptr noundef %v, ptr noundef %old, i32 noundef %new) #4 align 16 !dbg !5852 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5854, metadata !DIExpression()), !dbg !5857
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !5855, metadata !DIExpression()), !dbg !5858
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5856, metadata !DIExpression()), !dbg !5859
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5860
  %1 = load ptr, ptr %old.addr, align 8, !dbg !5861
  %2 = load i32, ptr %new.addr, align 4, !dbg !5862
  %call = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #18, !dbg !5863
  ret i1 %call, !dbg !5864
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #4 align 16 !dbg !5865 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5867, metadata !DIExpression()), !dbg !5876
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !5868, metadata !DIExpression()), !dbg !5877
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5869, metadata !DIExpression()), !dbg !5878
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #17, !dbg !5879
  call void @llvm.dbg.declare(metadata ptr %success, metadata !5870, metadata !DIExpression()), !dbg !5879
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #17, !dbg !5879
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !5872, metadata !DIExpression()), !dbg !5879
  %0 = load ptr, ptr %old.addr, align 8, !dbg !5879
  store ptr %0, ptr %_old, align 8, !dbg !5879
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #17, !dbg !5879
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !5873, metadata !DIExpression()), !dbg !5879
  %1 = load ptr, ptr %_old, align 8, !dbg !5879
  %2 = load i32, ptr %1, align 4, !dbg !5879
  store i32 %2, ptr %__old, align 4, !dbg !5879
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #17, !dbg !5879
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !5874, metadata !DIExpression()), !dbg !5879
  %3 = load i32, ptr %new.addr, align 4, !dbg !5879
  store i32 %3, ptr %__new, align 4, !dbg !5879
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #17, !dbg !5879
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5875, metadata !DIExpression()), !dbg !5879
  %4 = load ptr, ptr %v.addr, align 8, !dbg !5879
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !5879
  store ptr %counter, ptr %__ptr, align 8, !dbg !5879
  %5 = load ptr, ptr %__ptr, align 8, !dbg !5879
  %6 = load i32, ptr %__old, align 4, !dbg !5879
  %7 = load i32, ptr %__new, align 4, !dbg !5879
  %8 = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %7, ptr elementtype(i32) %5, i32 %6) #17, !dbg !5879, !srcloc !5880
  %asmresult = extractvalue { i8, i32 } %8, 0, !dbg !5879
  %asmresult1 = extractvalue { i8, i32 } %8, 1, !dbg !5879
  %9 = icmp ult i8 %asmresult, 2, !dbg !5879
  call void @llvm.assume(i1 %9), !dbg !5879
  store i8 %asmresult, ptr %success, align 1, !dbg !5879
  store i32 %asmresult1, ptr %__old, align 4, !dbg !5879
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #17, !dbg !5879
  %10 = load i8, ptr %success, align 1, !dbg !5881, !range !4349, !noundef !405
  %tobool = trunc i8 %10 to i1, !dbg !5881
  %lnot = xor i1 %tobool, true, !dbg !5881
  %lnot2 = xor i1 %lnot, true, !dbg !5881
  %lnot3 = xor i1 %lnot2, true, !dbg !5881
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5881
  %conv = sext i32 %lnot.ext to i64, !dbg !5881
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5881
  %tobool4 = icmp ne i64 %expval, 0, !dbg !5881
  br i1 %tobool4, label %if.then, label %if.end, !dbg !5879

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %__old, align 4, !dbg !5881
  %12 = load ptr, ptr %_old, align 8, !dbg !5881
  store i32 %11, ptr %12, align 4, !dbg !5881
  br label %if.end, !dbg !5881

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !5879, !range !4349, !noundef !405
  %tobool5 = trunc i8 %13 to i1, !dbg !5879
  %lnot6 = xor i1 %tobool5, true, !dbg !5879
  %lnot8 = xor i1 %lnot6, true, !dbg !5879
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !5879
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !5879
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !5879
  store i64 %expval11, ptr %tmp, align 8, !dbg !5881
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #17, !dbg !5883
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #17, !dbg !5883
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #17, !dbg !5883
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #17, !dbg !5883
  %14 = load i64, ptr %tmp, align 8, !dbg !5879
  %tobool12 = icmp ne i64 %14, 0, !dbg !5883
  ret i1 %tobool12, !dbg !5884
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !5885 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5887, metadata !DIExpression()), !dbg !5889
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5888, metadata !DIExpression()), !dbg !5890
  %0 = load i32, ptr %i.addr, align 4, !dbg !5891
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5892
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #18, !dbg !5893
  ret i32 %call, !dbg !5894
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__llist_add_batch(ptr noundef %new_first, ptr noundef %new_last, ptr noundef %head) #3 align 16 !dbg !5895 {
entry:
  %new_first.addr = alloca ptr, align 8
  %new_last.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new_first, ptr %new_first.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_first.addr, metadata !5899, metadata !DIExpression()), !dbg !5902
  store ptr %new_last, ptr %new_last.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_last.addr, metadata !5900, metadata !DIExpression()), !dbg !5903
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5901, metadata !DIExpression()), !dbg !5904
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5905
  %first = getelementptr inbounds %struct.llist_head, ptr %0, i32 0, i32 0, !dbg !5906
  %1 = load ptr, ptr %first, align 8, !dbg !5906
  %2 = load ptr, ptr %new_last.addr, align 8, !dbg !5907
  %next = getelementptr inbounds %struct.llist_node, ptr %2, i32 0, i32 0, !dbg !5908
  store ptr %1, ptr %next, align 8, !dbg !5909
  %3 = load ptr, ptr %new_first.addr, align 8, !dbg !5910
  %4 = load ptr, ptr %head.addr, align 8, !dbg !5911
  %first1 = getelementptr inbounds %struct.llist_head, ptr %4, i32 0, i32 0, !dbg !5912
  store ptr %3, ptr %first1, align 8, !dbg !5913
  %5 = load ptr, ptr %new_last.addr, align 8, !dbg !5914
  %next2 = getelementptr inbounds %struct.llist_node, ptr %5, i32 0, i32 0, !dbg !5915
  %6 = load ptr, ptr %next2, align 8, !dbg !5915
  %cmp = icmp eq ptr %6, null, !dbg !5916
  ret i1 %cmp, !dbg !5917
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @arch_rethook_trampoline() #8

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #7 = { nocallback nounwind }
attributes #8 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { nounwind memory(none) }
attributes #21 = { cold noredzone }
attributes #22 = { noredzone allocsize(2) }
attributes #23 = { noredzone noreturn }

!llvm.dbg.cu = !{!4082}
!llvm.named.register.rsp = !{!4228}
!llvm.module.flags = !{!4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236}
!llvm.ident = !{!4237}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule303", scope: !2, file: !3, line: 32, type: !26, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "rethook_flush_task", scope: !3, file: !3, line: 21, type: !4, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !4221)
!3 = !DIFile(filename: "kernel/trace/rethook.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb554952538ac8247c2c780caeb7fc72")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !8, line: 746, size: 58368, elements: !9)
!8 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!9 = !{!10, !24, !25, !27, !39, !40, !41, !42, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !134, !145, !277, !281, !284, !315, !316, !317, !318, !329, !331, !332, !333, !334, !335, !336, !347, !348, !351, !352, !353, !354, !355, !356, !357, !358, !365, !366, !373, !374, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3242, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3290, !3296, !3297, !3298, !3299, !3300, !3302, !3305, !3312, !3317, !3320, !3323, !3326, !3352, !3490, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3528, !3529, !3530, !3539, !3547, !3548, !3549, !3550, !3551, !3556, !3557, !3558, !3561, !3562, !3565, !3568, !3571, !3579, !3582, !3583, !3669, !3670, !3671, !3672, !3673, !3679, !3680, !3681, !3682, !3685, !3686, !3689, !3692, !3693, !3696, !3697, !3698, !3701, !3702, !3703, !3704, !3705, !3706, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3738, !3739, !3745, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3757, !3835, !3837, !3838, !3839, !3840, !3841, !3842, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3859, !3860, !3861}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !7, file: !8, line: 752, baseType: !11, size: 192)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !12, line: 56, size: 192, elements: !13)
!12 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!13 = !{!14, !16, !17, !23}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !11, file: !12, line: 57, baseType: !15, size: 64)
!15 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !11, file: !12, line: 58, baseType: !15, size: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !11, file: !12, line: 59, baseType: !18, size: 32, offset: 128)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !19, line: 21, baseType: !20)
!19 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !21, line: 27, baseType: !22)
!21 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !11, file: !12, line: 61, baseType: !18, size: 32, offset: 160)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !7, file: !8, line: 754, baseType: !22, size: 32, offset: 192)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !7, file: !8, line: 767, baseType: !26, size: 64, offset: 256)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !7, file: !8, line: 768, baseType: !28, size: 32, offset: 320)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !29, line: 113, baseType: !30)
!29 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !29, line: 111, size: 32, elements: !31)
!31 = !{!32}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !30, file: !29, line: 112, baseType: !33, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !34, line: 174, baseType: !35)
!34 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 172, size: 32, elements: !36)
!36 = !{!37}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !35, file: !34, line: 173, baseType: !38, size: 32)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !7, file: !8, line: 770, baseType: !22, size: 32, offset: 352)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !7, file: !8, line: 771, baseType: !22, size: 32, offset: 384)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !7, file: !8, line: 774, baseType: !38, size: 32, offset: 416)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !7, file: !8, line: 775, baseType: !43, size: 128, offset: 448)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !44, line: 58, size: 128, elements: !45)
!44 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!45 = !{!46, !52, !57, !61}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !43, file: !44, line: 59, baseType: !47, size: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !48, line: 60, size: 64, elements: !49)
!48 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!49 = !{!50}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !47, file: !48, line: 61, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, scope: !43, file: !44, line: 60, baseType: !53, size: 32, offset: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !43, file: !44, line: 60, size: 32, elements: !54)
!54 = !{!55, !56}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !53, file: !44, line: 61, baseType: !22, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !53, file: !44, line: 62, baseType: !33, size: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !43, file: !44, line: 65, baseType: !58, size: 16, offset: 96)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !19, line: 19, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !21, line: 24, baseType: !60)
!60 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !43, file: !44, line: 65, baseType: !58, size: 16, offset: 112)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !7, file: !8, line: 776, baseType: !22, size: 32, offset: 576)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !7, file: !8, line: 777, baseType: !15, size: 64, offset: 640)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !7, file: !8, line: 778, baseType: !6, size: 64, offset: 704)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !7, file: !8, line: 787, baseType: !38, size: 32, offset: 768)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !7, file: !8, line: 788, baseType: !38, size: 32, offset: 800)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !7, file: !8, line: 790, baseType: !38, size: 32, offset: 832)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !7, file: !8, line: 792, baseType: !38, size: 32, offset: 864)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !7, file: !8, line: 793, baseType: !38, size: 32, offset: 896)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !7, file: !8, line: 794, baseType: !38, size: 32, offset: 928)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !7, file: !8, line: 795, baseType: !22, size: 32, offset: 960)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !7, file: !8, line: 797, baseType: !73, size: 2048, offset: 1024)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !8, line: 551, size: 2048, elements: !74)
!74 = !{!75, !80, !88, !92, !93, !99, !100, !101, !102, !103, !104, !108, !109, !110, !111, !113, !116, !117, !118}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !73, file: !8, line: 553, baseType: !76, size: 128)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !8, line: 411, size: 128, elements: !77)
!77 = !{!78, !79}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !76, file: !8, line: 412, baseType: !15, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !76, file: !8, line: 413, baseType: !18, size: 32, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !73, file: !8, line: 554, baseType: !81, size: 192, align: 64, offset: 128)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !82, line: 5, size: 192, align: 64, elements: !83)
!82 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!83 = !{!84, !85, !87}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !81, file: !82, line: 6, baseType: !15, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !81, file: !82, line: 7, baseType: !86, size: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !81, file: !82, line: 8, baseType: !86, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !73, file: !8, line: 555, baseType: !89, size: 64, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !19, line: 23, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !21, line: 31, baseType: !91)
!91 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !73, file: !8, line: 556, baseType: !89, size: 64, offset: 384)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !73, file: !8, line: 558, baseType: !94, size: 128, offset: 448)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !34, line: 190, size: 128, elements: !95)
!95 = !{!96, !98}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !94, file: !34, line: 191, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !94, file: !34, line: 191, baseType: !97, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !73, file: !8, line: 559, baseType: !22, size: 32, offset: 576)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !73, file: !8, line: 561, baseType: !89, size: 64, offset: 640)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !73, file: !8, line: 562, baseType: !89, size: 64, offset: 704)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !73, file: !8, line: 563, baseType: !89, size: 64, offset: 768)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !73, file: !8, line: 564, baseType: !89, size: 64, offset: 832)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !73, file: !8, line: 565, baseType: !105, size: 64, offset: 896)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !19, line: 22, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !21, line: 30, baseType: !107)
!107 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !73, file: !8, line: 566, baseType: !89, size: 64, offset: 960)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !73, file: !8, line: 568, baseType: !89, size: 64, offset: 1024)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !73, file: !8, line: 571, baseType: !38, size: 32, offset: 1088)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !73, file: !8, line: 572, baseType: !112, size: 64, offset: 1152)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !73, file: !8, line: 574, baseType: !114, size: 64, offset: 1216)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !8, line: 49, flags: DIFlagFwdDecl)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !73, file: !8, line: 576, baseType: !114, size: 64, offset: 1280)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !73, file: !8, line: 578, baseType: !15, size: 64, offset: 1344)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !73, file: !8, line: 588, baseType: !119, size: 512, align: 512, offset: 1536)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !8, line: 497, size: 512, align: 512, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !119, file: !8, line: 498, baseType: !89, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !119, file: !8, line: 499, baseType: !89, size: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !119, file: !8, line: 500, baseType: !89, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !119, file: !8, line: 501, baseType: !18, size: 32, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !119, file: !8, line: 502, baseType: !18, size: 32, offset: 224)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !119, file: !8, line: 503, baseType: !15, size: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !119, file: !8, line: 504, baseType: !15, size: 64, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !119, file: !8, line: 505, baseType: !15, size: 64, offset: 384)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !119, file: !8, line: 506, baseType: !130, size: 64, align: 64, offset: 448)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !8, line: 445, size: 64, align: 64, elements: !131)
!131 = !{!132, !133}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !130, file: !8, line: 446, baseType: !22, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !130, file: !8, line: 447, baseType: !22, size: 32, offset: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !7, file: !8, line: 798, baseType: !135, size: 384, offset: 3072)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !8, line: 592, size: 384, elements: !136)
!136 = !{!137, !138, !139, !140, !141, !142, !143}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !135, file: !8, line: 593, baseType: !94, size: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !135, file: !8, line: 594, baseType: !15, size: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !135, file: !8, line: 595, baseType: !15, size: 64, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !135, file: !8, line: 596, baseType: !22, size: 32, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !135, file: !8, line: 597, baseType: !60, size: 16, offset: 288)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !135, file: !8, line: 598, baseType: !60, size: 16, offset: 304)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !135, file: !8, line: 600, baseType: !144, size: 64, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !7, file: !8, line: 799, baseType: !146, size: 1792, offset: 3456)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !8, line: 610, size: 1792, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !274, !275}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !146, file: !8, line: 611, baseType: !81, size: 192, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !146, file: !8, line: 618, baseType: !89, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !146, file: !8, line: 619, baseType: !89, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !146, file: !8, line: 620, baseType: !89, size: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !146, file: !8, line: 621, baseType: !89, size: 64, offset: 384)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !146, file: !8, line: 622, baseType: !89, size: 64, offset: 448)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !146, file: !8, line: 629, baseType: !105, size: 64, offset: 512)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !146, file: !8, line: 630, baseType: !89, size: 64, offset: 576)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !146, file: !8, line: 631, baseType: !22, size: 32, offset: 640)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !146, file: !8, line: 653, baseType: !22, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !146, file: !8, line: 654, baseType: !22, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !146, file: !8, line: 655, baseType: !22, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !146, file: !8, line: 656, baseType: !22, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !146, file: !8, line: 662, baseType: !162, size: 512, offset: 704)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !163, line: 118, size: 512, elements: !164)
!163 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!164 = !{!165, !173, !174, !183, !270, !271, !272, !273}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !162, file: !163, line: 119, baseType: !166, size: 256)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !167, line: 9, size: 256, elements: !168)
!167 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!168 = !{!169, !170}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !166, file: !167, line: 10, baseType: !81, size: 192, align: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !166, file: !167, line: 11, baseType: !171, size: 64, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !172, line: 29, baseType: !105)
!172 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !162, file: !163, line: 120, baseType: !171, size: 64, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !162, file: !163, line: 121, baseType: !175, size: 64, offset: 320)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{!178, !182}
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !163, line: 65, baseType: !22, size: 32, elements: !179)
!179 = !{!180, !181}
!180 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!181 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !162, file: !163, line: 122, baseType: !184, size: 64, offset: 384)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !163, line: 159, size: 512, align: 512, elements: !186)
!186 = !{!187, !238, !239, !243, !253, !254, !265, !269}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !185, file: !163, line: 160, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !163, line: 215, size: 4608, align: 512, elements: !190)
!190 = !{!191, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !189, file: !163, line: 216, baseType: !192, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !193, line: 23, baseType: !194)
!193 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !193, line: 14, size: 32, elements: !195)
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !194, file: !193, line: 15, baseType: !197, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !198, line: 44, baseType: !199)
!198 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !198, line: 14, size: 32, elements: !200)
!200 = !{!201}
!201 = !DIDerivedType(tag: DW_TAG_member, scope: !199, file: !198, line: 15, baseType: !202, size: 32)
!202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !199, file: !198, line: 15, size: 32, elements: !203)
!203 = !{!204, !205, !213}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !202, file: !198, line: 16, baseType: !33, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, scope: !202, file: !198, line: 24, baseType: !206, size: 16)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !202, file: !198, line: 24, size: 16, elements: !207)
!207 = !{!208, !212}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !206, file: !198, line: 25, baseType: !209, size: 8)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !19, line: 17, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !21, line: 21, baseType: !211)
!211 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !206, file: !198, line: 26, baseType: !209, size: 8, offset: 8)
!213 = !DIDerivedType(tag: DW_TAG_member, scope: !202, file: !198, line: 28, baseType: !214, size: 32)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !202, file: !198, line: 28, size: 32, elements: !215)
!215 = !{!216, !217}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !214, file: !198, line: 29, baseType: !58, size: 16)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !214, file: !198, line: 30, baseType: !58, size: 16, offset: 16)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !189, file: !163, line: 217, baseType: !22, size: 32, offset: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !189, file: !163, line: 218, baseType: !22, size: 32, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !189, file: !163, line: 219, baseType: !22, size: 32, offset: 96)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !189, file: !163, line: 220, baseType: !22, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !189, file: !163, line: 221, baseType: !22, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !189, file: !163, line: 222, baseType: !22, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !189, file: !163, line: 223, baseType: !22, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !189, file: !163, line: 224, baseType: !22, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !189, file: !163, line: 226, baseType: !22, size: 32, offset: 160)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !189, file: !163, line: 227, baseType: !60, size: 16, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !189, file: !163, line: 228, baseType: !60, size: 16, offset: 208)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !189, file: !163, line: 229, baseType: !22, size: 32, offset: 224)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !189, file: !163, line: 235, baseType: !171, size: 64, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !189, file: !163, line: 236, baseType: !182, size: 64, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !189, file: !163, line: 237, baseType: !171, size: 64, offset: 384)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !189, file: !163, line: 238, baseType: !182, size: 64, offset: 448)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !189, file: !163, line: 239, baseType: !235, size: 4096, align: 512, offset: 512)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 4096, align: 512, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 8)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !185, file: !163, line: 161, baseType: !22, size: 32, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !185, file: !163, line: 162, baseType: !240, size: 32, offset: 96)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !34, line: 32, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !242, line: 96, baseType: !38)
!242 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!243 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !185, file: !163, line: 163, baseType: !244, size: 32, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !245, line: 274, baseType: !246)
!245 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !245, line: 274, size: 32, elements: !247)
!247 = !{!248}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !246, file: !245, line: 274, baseType: !249, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !245, line: 69, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !245, line: 64, size: 32, elements: !251)
!251 = !{!252}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !250, file: !245, line: 65, baseType: !22, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !185, file: !163, line: 164, baseType: !182, size: 64, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !185, file: !163, line: 165, baseType: !255, size: 128, offset: 256)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !167, line: 14, size: 128, elements: !256)
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !255, file: !167, line: 15, baseType: !258, size: 128)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !82, line: 26, size: 128, elements: !259)
!259 = !{!260, !264}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !258, file: !82, line: 27, baseType: !261, size: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !82, line: 12, size: 64, elements: !262)
!262 = !{!263}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !261, file: !82, line: 13, baseType: !86, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !258, file: !82, line: 28, baseType: !86, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !185, file: !163, line: 166, baseType: !266, size: 64, offset: 384)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!171}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !185, file: !163, line: 167, baseType: !171, size: 64, offset: 448)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !162, file: !163, line: 123, baseType: !209, size: 8, offset: 448)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !162, file: !163, line: 124, baseType: !209, size: 8, offset: 456)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !162, file: !163, line: 125, baseType: !209, size: 8, offset: 464)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !162, file: !163, line: 126, baseType: !209, size: 8, offset: 472)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !146, file: !8, line: 671, baseType: !162, size: 512, offset: 1216)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !146, file: !8, line: 679, baseType: !276, size: 64, offset: 1728)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !7, file: !8, line: 800, baseType: !278, size: 64, offset: 5248)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !8, line: 800, flags: DIFlagFwdDecl)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !7, file: !8, line: 809, baseType: !282, size: 64, offset: 5312)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !8, line: 70, flags: DIFlagFwdDecl)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !7, file: !8, line: 825, baseType: !285, size: 2048, align: 512, offset: 5632)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !8, line: 509, size: 2048, align: 512, elements: !286)
!286 = !{!287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !285, file: !8, line: 511, baseType: !89, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !285, file: !8, line: 512, baseType: !89, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !285, file: !8, line: 513, baseType: !89, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !285, file: !8, line: 514, baseType: !89, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !285, file: !8, line: 515, baseType: !89, size: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !285, file: !8, line: 516, baseType: !89, size: 64, offset: 320)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !285, file: !8, line: 518, baseType: !89, size: 64, offset: 384)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !285, file: !8, line: 519, baseType: !89, size: 64, offset: 448)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !285, file: !8, line: 520, baseType: !105, size: 64, offset: 512)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !285, file: !8, line: 522, baseType: !89, size: 64, offset: 576)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !285, file: !8, line: 523, baseType: !89, size: 64, offset: 640)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !285, file: !8, line: 524, baseType: !105, size: 64, offset: 704)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !285, file: !8, line: 526, baseType: !105, size: 64, offset: 768)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !285, file: !8, line: 527, baseType: !89, size: 64, offset: 832)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !285, file: !8, line: 529, baseType: !89, size: 64, offset: 896)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !285, file: !8, line: 530, baseType: !89, size: 64, offset: 960)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !285, file: !8, line: 531, baseType: !89, size: 64, offset: 1024)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !285, file: !8, line: 532, baseType: !89, size: 64, offset: 1088)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !285, file: !8, line: 533, baseType: !89, size: 64, offset: 1152)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !285, file: !8, line: 535, baseType: !89, size: 64, offset: 1216)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !285, file: !8, line: 536, baseType: !89, size: 64, offset: 1280)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !285, file: !8, line: 537, baseType: !89, size: 64, offset: 1344)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !285, file: !8, line: 538, baseType: !89, size: 64, offset: 1408)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !285, file: !8, line: 539, baseType: !89, size: 64, offset: 1472)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !285, file: !8, line: 540, baseType: !89, size: 64, offset: 1536)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !285, file: !8, line: 541, baseType: !89, size: 64, offset: 1600)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !285, file: !8, line: 542, baseType: !89, size: 64, offset: 1664)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !285, file: !8, line: 543, baseType: !89, size: 64, offset: 1728)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !7, file: !8, line: 833, baseType: !22, size: 32, offset: 7680)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !7, file: !8, line: 836, baseType: !22, size: 32, offset: 7712)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !7, file: !8, line: 837, baseType: !38, size: 32, offset: 7744)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !7, file: !8, line: 838, baseType: !319, size: 64, offset: 7808)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !322, line: 19, baseType: !323)
!322 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !322, line: 19, size: 64, elements: !324)
!324 = !{!325}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !323, file: !322, line: 19, baseType: !326, size: 64)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 64, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 1)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !7, file: !8, line: 839, baseType: !330, size: 64, offset: 7872)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !7, file: !8, line: 840, baseType: !321, size: 64, offset: 7936)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !7, file: !8, line: 841, baseType: !26, size: 64, offset: 8000)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !7, file: !8, line: 843, baseType: !60, size: 16, offset: 8064)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !7, file: !8, line: 845, baseType: !60, size: 16, offset: 8080)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !7, file: !8, line: 848, baseType: !38, size: 32, offset: 8096)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !7, file: !8, line: 849, baseType: !337, size: 32, offset: 8128)
!337 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !8, line: 718, size: 32, elements: !338)
!338 = !{!339, !346}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !337, file: !8, line: 724, baseType: !340, size: 32)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !337, file: !8, line: 719, size: 32, elements: !341)
!341 = !{!342, !343, !344, !345}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !340, file: !8, line: 720, baseType: !209, size: 8)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !340, file: !8, line: 721, baseType: !209, size: 8, offset: 8)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !340, file: !8, line: 722, baseType: !209, size: 8, offset: 16)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !340, file: !8, line: 723, baseType: !209, size: 8, offset: 24)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !337, file: !8, line: 725, baseType: !18, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !7, file: !8, line: 850, baseType: !94, size: 128, offset: 8192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !7, file: !8, line: 851, baseType: !349, size: 64, offset: 8320)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !8, line: 60, flags: DIFlagFwdDecl)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !7, file: !8, line: 855, baseType: !15, size: 64, offset: 8384)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !7, file: !8, line: 856, baseType: !209, size: 8, offset: 8448)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !7, file: !8, line: 857, baseType: !209, size: 8, offset: 8456)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !7, file: !8, line: 858, baseType: !38, size: 32, offset: 8480)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !7, file: !8, line: 859, baseType: !94, size: 128, offset: 8512)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !7, file: !8, line: 860, baseType: !38, size: 32, offset: 8640)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !7, file: !8, line: 861, baseType: !94, size: 128, offset: 8704)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !7, file: !8, line: 873, baseType: !359, size: 256, offset: 8832)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !8, line: 376, size: 256, elements: !360)
!360 = !{!361, !362, !363, !364}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !359, file: !8, line: 381, baseType: !15, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !359, file: !8, line: 384, baseType: !91, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !359, file: !8, line: 389, baseType: !91, size: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !359, file: !8, line: 392, baseType: !91, size: 64, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !7, file: !8, line: 875, baseType: !94, size: 128, offset: 9088)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !7, file: !8, line: 877, baseType: !367, size: 320, offset: 9216)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !368, line: 86, size: 320, elements: !369)
!368 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!369 = !{!370, !371, !372}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !367, file: !368, line: 87, baseType: !38, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !367, file: !368, line: 88, baseType: !94, size: 128, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !367, file: !368, line: 89, baseType: !94, size: 128, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !7, file: !8, line: 878, baseType: !81, size: 192, align: 64, offset: 9536)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !7, file: !8, line: 881, baseType: !375, size: 64, offset: 9728)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !377, line: 733, size: 10240, elements: !378)
!377 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!378 = !{!379, !3155}
!379 = !DIDerivedType(tag: DW_TAG_member, scope: !376, file: !377, line: 734, baseType: !380, size: 10240)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !376, file: !377, line: 734, size: 10240, elements: !381)
!381 = !{!382, !386, !408, !3033, !3034, !3035, !3036, !3037, !3038, !3045, !3046, !3047, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3086, !3088, !3091, !3134, !3135, !3136, !3139, !3140, !3141, !3144, !3145, !3146, !3153, !3154}
!382 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !377, line: 739, baseType: !383, size: 512, align: 512)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !380, file: !377, line: 739, size: 512, align: 512, elements: !384)
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !383, file: !377, line: 747, baseType: !33, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !380, file: !377, line: 750, baseType: !387, size: 128, offset: 512)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !388, line: 218, size: 128, elements: !389)
!388 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!389 = !{!390, !406, !407}
!390 = !DIDerivedType(tag: DW_TAG_member, scope: !387, file: !388, line: 219, baseType: !391, size: 32)
!391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !387, file: !388, line: 219, size: 32, elements: !392)
!392 = !{!393, !402}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !391, file: !388, line: 220, baseType: !394, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !395, line: 29, baseType: !396)
!395 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !395, line: 17, size: 32, elements: !397)
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !395, line: 18, baseType: !399, size: 32)
!399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !395, line: 18, size: 32, elements: !400)
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !399, file: !395, line: 19, baseType: !194, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !391, file: !388, line: 221, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !388, line: 197, baseType: !404)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !388, line: 197, elements: !405)
!405 = !{}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !387, file: !388, line: 223, baseType: !22, size: 32, offset: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !387, file: !388, line: 224, baseType: !26, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !380, file: !377, line: 752, baseType: !409, size: 64, offset: 640)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!15, !412, !15, !15, !15, !15}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !414, line: 994, size: 1856, align: 64, elements: !415)
!414 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!415 = !{!416, !430, !431, !433, !440, !452, !455, !456, !588, !798, !807, !3023, !3024, !3025, !3026, !3027, !3028, !3030, !3031, !3032}
!416 = !DIDerivedType(tag: DW_TAG_member, scope: !413, file: !414, line: 995, baseType: !417, size: 128)
!417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !413, file: !414, line: 995, size: 128, elements: !418)
!418 = !{!419, !420, !429}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !417, file: !414, line: 996, baseType: !47, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !417, file: !414, line: 997, baseType: !421, size: 128, align: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !34, line: 232, size: 128, align: 64, elements: !422)
!422 = !{!423, !425}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !421, file: !34, line: 233, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !421, file: !34, line: 234, baseType: !426, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !424}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !417, file: !414, line: 998, baseType: !22, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !413, file: !414, line: 1005, baseType: !394, size: 32, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !413, file: !414, line: 1006, baseType: !432, size: 32, offset: 160)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !34, line: 156, baseType: !22)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !413, file: !414, line: 1007, baseType: !434, size: 64, offset: 192)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !435, line: 13, baseType: !436)
!435 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !34, line: 181, baseType: !437)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 179, size: 64, elements: !438)
!438 = !{!439}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !437, file: !34, line: 180, baseType: !105, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !413, file: !414, line: 1008, baseType: !441, size: 256, offset: 256)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !442, line: 66, size: 256, elements: !443)
!442 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!443 = !{!444, !445, !446, !451}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !441, file: !442, line: 67, baseType: !434, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !441, file: !442, line: 68, baseType: !192, size: 32, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !441, file: !442, line: 70, baseType: !447, size: 32, offset: 96)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !448, line: 15, size: 32, elements: !449)
!448 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!449 = !{!450}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !447, file: !448, line: 20, baseType: !33, size: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !441, file: !442, line: 72, baseType: !94, size: 128, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !413, file: !414, line: 1009, baseType: !453, size: 64, offset: 512)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !34, line: 52, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !242, line: 88, baseType: !107)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !413, file: !414, line: 1010, baseType: !22, size: 32, offset: 576)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !413, file: !414, line: 1011, baseType: !457, size: 256, offset: 640)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !414, line: 948, size: 256, elements: !458)
!458 = !{!459, !482, !570, !578, !586, !587}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !457, file: !414, line: 949, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !461, line: 34, baseType: !462)
!461 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !461, line: 25, size: 64, elements: !463)
!463 = !{!464}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !462, file: !461, line: 26, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !466, line: 27, baseType: !467)
!466 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !466, line: 13, size: 64, elements: !468)
!468 = !{!469, !481}
!469 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !466, line: 14, baseType: !470, size: 32)
!470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !467, file: !466, line: 14, size: 32, elements: !471)
!471 = !{!472, !473}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !470, file: !466, line: 15, baseType: !33, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, scope: !470, file: !466, line: 16, baseType: !474, size: 32)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !470, file: !466, line: 16, size: 32, elements: !475)
!475 = !{!476, !477}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !474, file: !466, line: 18, baseType: !209, size: 8)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !474, file: !466, line: 19, baseType: !478, size: 24, offset: 8)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 24, elements: !479)
!479 = !{!480}
!480 = !DISubrange(count: 3)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !467, file: !466, line: 26, baseType: !197, size: 32, offset: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !457, file: !414, line: 950, baseType: !483, size: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !485, line: 59, size: 768, elements: !486)
!485 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!486 = !{!487, !488, !489, !490, !503, !504, !511, !512}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !484, file: !485, line: 61, baseType: !28, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !484, file: !485, line: 62, baseType: !22, size: 32, offset: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !484, file: !485, line: 63, baseType: !394, size: 32, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !484, file: !485, line: 65, baseType: !491, size: 256, offset: 128)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !492, size: 256, elements: !501)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !34, line: 194, size: 64, elements: !493)
!493 = !{!494}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !492, file: !34, line: 195, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !34, line: 198, size: 128, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !496, file: !34, line: 199, baseType: !495, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !496, file: !34, line: 199, baseType: !500, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!501 = !{!502}
!502 = !DISubrange(count: 4)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !484, file: !485, line: 66, baseType: !492, size: 64, offset: 384)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !484, file: !485, line: 68, baseType: !505, size: 192, offset: 448)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !506, line: 41, baseType: !507)
!506 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !506, line: 37, size: 192, elements: !508)
!508 = !{!509, !510}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !507, file: !506, line: 38, baseType: !394, size: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !507, file: !506, line: 39, baseType: !94, size: 128, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !484, file: !485, line: 69, baseType: !421, size: 128, align: 64, offset: 640)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !484, file: !485, line: 70, baseType: !513, offset: 768)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, elements: !568)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !485, line: 54, size: 128, elements: !515)
!515 = !{!516, !517}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !514, file: !485, line: 55, baseType: !38, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !514, file: !485, line: 56, baseType: !518, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !520, line: 26, size: 1152, elements: !521)
!520 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!521 = !{!522, !536, !537, !538, !539, !543, !544, !545, !548, !551, !555, !556, !567}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !519, file: !520, line: 27, baseType: !523, size: 192)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !524, line: 19, size: 192, elements: !525)
!524 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!525 = !{!526, !534, !535}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !523, file: !524, line: 20, baseType: !527, size: 128)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !528, line: 296, size: 128, elements: !529)
!528 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!529 = !{!530, !531, !533}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !527, file: !528, line: 297, baseType: !394, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !527, file: !528, line: 299, baseType: !532, size: 32, offset: 32)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !34, line: 154, baseType: !22)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !527, file: !528, line: 300, baseType: !26, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !523, file: !524, line: 21, baseType: !22, size: 32, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !523, file: !524, line: 22, baseType: !22, size: 32, offset: 160)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !519, file: !520, line: 28, baseType: !421, size: 128, align: 64, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !519, file: !520, line: 29, baseType: !22, size: 32, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !519, file: !520, line: 30, baseType: !6, size: 64, offset: 384)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !519, file: !520, line: 31, baseType: !540, size: 64, offset: 448)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !542, line: 11, flags: DIFlagFwdDecl)
!542 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!543 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !519, file: !520, line: 32, baseType: !22, size: 32, offset: 512)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !519, file: !520, line: 33, baseType: !518, size: 64, offset: 576)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !519, file: !520, line: 35, baseType: !546, size: 64, offset: 640)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !520, line: 17, flags: DIFlagFwdDecl)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !519, file: !520, line: 37, baseType: !549, size: 64, offset: 704)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !377, line: 901, flags: DIFlagFwdDecl)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !519, file: !520, line: 38, baseType: !552, size: 64, offset: 768)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !554, line: 16, flags: DIFlagFwdDecl)
!554 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!555 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !519, file: !520, line: 39, baseType: !38, size: 32, offset: 832)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !519, file: !520, line: 40, baseType: !557, size: 192, offset: 896)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !558, line: 9, size: 192, elements: !559)
!558 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!559 = !{!560, !561, !565, !566}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !557, file: !558, line: 10, baseType: !434, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !557, file: !558, line: 11, baseType: !562, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !564)
!564 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !558, line: 7, flags: DIFlagFwdDecl)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !557, file: !558, line: 12, baseType: !22, size: 32, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !557, file: !558, line: 13, baseType: !28, size: 32, offset: 160)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !519, file: !520, line: 42, baseType: !38, size: 32, offset: 1088)
!568 = !{!569}
!569 = !DISubrange(count: -1)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !457, file: !414, line: 951, baseType: !571, size: 32, offset: 128)
!571 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !485, line: 9, baseType: !22, size: 32, elements: !572)
!572 = !{!573, !574, !575, !576, !577}
!573 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!574 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!575 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!576 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!577 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !457, file: !414, line: 952, baseType: !579, size: 32, offset: 160)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !580, line: 23, baseType: !581)
!580 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !580, line: 21, size: 32, elements: !582)
!582 = !{!583}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !581, file: !580, line: 22, baseType: !584, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !34, line: 37, baseType: !585)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !242, line: 49, baseType: !22)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !457, file: !414, line: 952, baseType: !579, size: 32, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !457, file: !414, line: 953, baseType: !38, size: 32, offset: 224)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !413, file: !414, line: 1012, baseType: !589, size: 64, offset: 896)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !591)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !592, line: 110, size: 1472, elements: !593)
!592 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!593 = !{!594, !595, !596, !603, !604, !605, !606, !607, !608, !609, !610, !616, !617, !618, !619, !620, !621, !748, !749, !750, !751, !752, !783, !784, !785, !793}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !591, file: !592, line: 111, baseType: !434, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !591, file: !592, line: 112, baseType: !579, size: 32, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !591, file: !592, line: 113, baseType: !597, size: 32, offset: 96)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !580, line: 28, baseType: !598)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !580, line: 26, size: 32, elements: !599)
!599 = !{!600}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !598, file: !580, line: 27, baseType: !601, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !34, line: 38, baseType: !602)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !242, line: 50, baseType: !22)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !591, file: !592, line: 114, baseType: !579, size: 32, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !591, file: !592, line: 115, baseType: !597, size: 32, offset: 160)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !591, file: !592, line: 116, baseType: !579, size: 32, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !591, file: !592, line: 117, baseType: !597, size: 32, offset: 224)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !591, file: !592, line: 118, baseType: !579, size: 32, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !591, file: !592, line: 119, baseType: !597, size: 32, offset: 288)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !591, file: !592, line: 120, baseType: !22, size: 32, offset: 320)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !591, file: !592, line: 121, baseType: !611, size: 64, offset: 384)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !612, line: 24, baseType: !613)
!612 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !612, line: 24, size: 64, elements: !614)
!614 = !{!615}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !613, file: !612, line: 24, baseType: !89, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !591, file: !592, line: 122, baseType: !611, size: 64, offset: 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !591, file: !592, line: 123, baseType: !611, size: 64, offset: 512)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !591, file: !592, line: 124, baseType: !611, size: 64, offset: 576)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !591, file: !592, line: 125, baseType: !611, size: 64, offset: 640)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !591, file: !592, line: 127, baseType: !211, size: 8, offset: 704)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !591, file: !592, line: 129, baseType: !622, size: 64, offset: 768)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !624, line: 195, size: 1728, elements: !625)
!624 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!625 = !{!626, !627, !632, !637, !646, !649, !650, !657, !658, !659, !660, !663, !664, !665, !667, !668, !712, !733}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !623, file: !624, line: 196, baseType: !28, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !623, file: !624, line: 197, baseType: !628, size: 32, offset: 32)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !624, line: 28, baseType: !629)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !34, line: 104, baseType: !630)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !19, line: 20, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !21, line: 26, baseType: !38)
!632 = !DIDerivedType(tag: DW_TAG_member, scope: !623, file: !624, line: 198, baseType: !633, size: 192, offset: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !623, file: !624, line: 198, size: 192, elements: !634)
!634 = !{!635, !636}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !633, file: !624, line: 199, baseType: !94, size: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !633, file: !624, line: 200, baseType: !81, size: 192, align: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !623, file: !624, line: 205, baseType: !638, size: 320, offset: 256)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !639, line: 48, size: 320, elements: !640)
!639 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!640 = !{!641, !642, !643, !644, !645}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !638, file: !639, line: 49, baseType: !434, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !638, file: !639, line: 55, baseType: !434, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !638, file: !639, line: 57, baseType: !447, size: 32, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !638, file: !639, line: 59, baseType: !192, size: 32, offset: 160)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !638, file: !639, line: 60, baseType: !94, size: 128, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !623, file: !624, line: 206, baseType: !647, size: 64, offset: 576)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !624, line: 206, flags: DIFlagFwdDecl)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !623, file: !624, line: 207, baseType: !26, size: 64, offset: 640)
!650 = !DIDerivedType(tag: DW_TAG_member, scope: !623, file: !624, line: 208, baseType: !651, size: 64, offset: 704)
!651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !623, file: !624, line: 208, size: 64, elements: !652)
!652 = !{!653, !656}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !651, file: !624, line: 209, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !655, line: 8, baseType: !106)
!655 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!656 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !651, file: !624, line: 210, baseType: !654, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !623, file: !624, line: 212, baseType: !654, size: 64, offset: 768)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !623, file: !624, line: 213, baseType: !579, size: 32, offset: 832)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !623, file: !624, line: 214, baseType: !597, size: 32, offset: 864)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !623, file: !624, line: 215, baseType: !661, size: 32, offset: 896)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !624, line: 31, baseType: !662)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !34, line: 110, baseType: !18)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !623, file: !624, line: 216, baseType: !60, size: 16, offset: 928)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !623, file: !624, line: 217, baseType: !60, size: 16, offset: 944)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !623, file: !624, line: 221, baseType: !666, size: 16, offset: 960)
!666 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !623, file: !624, line: 228, baseType: !15, size: 64, offset: 1024)
!668 = !DIDerivedType(tag: DW_TAG_member, scope: !623, file: !624, line: 245, baseType: !669, size: 320, offset: 1088)
!669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !623, file: !624, line: 245, size: 320, elements: !670)
!670 = !{!671, !703}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !669, file: !624, line: 246, baseType: !672, size: 320)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !624, line: 114, size: 320, elements: !673)
!673 = !{!674, !675, !688, !691, !700}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !672, file: !624, line: 116, baseType: !15, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, scope: !672, file: !624, line: 117, baseType: !676, size: 64, offset: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !672, file: !624, line: 117, size: 64, elements: !677)
!677 = !{!678, !687}
!678 = !DIDerivedType(tag: DW_TAG_member, scope: !676, file: !624, line: 118, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !676, file: !624, line: 118, size: 64, elements: !680)
!680 = !{!681, !682}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !679, file: !624, line: 120, baseType: !58, size: 16)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !679, file: !624, line: 121, baseType: !683, size: 48, offset: 16)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 48, elements: !685)
!684 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!685 = !{!686}
!686 = !DISubrange(count: 6)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !676, file: !624, line: 127, baseType: !15, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !672, file: !624, line: 129, baseType: !689, size: 64, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !624, line: 102, flags: DIFlagFwdDecl)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !672, file: !624, line: 130, baseType: !692, size: 64, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !624, line: 108, size: 192, elements: !694)
!694 = !{!695, !696, !697}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !693, file: !624, line: 109, baseType: !421, size: 128, align: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !693, file: !624, line: 110, baseType: !28, size: 32, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !693, file: !624, line: 111, baseType: !698, size: 8, offset: 160)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !34, line: 35, baseType: !699)
!699 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !672, file: !624, line: 131, baseType: !701, size: 64, offset: 256)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !684)
!703 = !DIDerivedType(tag: DW_TAG_member, scope: !669, file: !624, line: 247, baseType: !704, size: 320)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !669, file: !624, line: 247, size: 320, elements: !705)
!705 = !{!706, !707, !708, !709, !710}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !704, file: !624, line: 248, baseType: !15, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !704, file: !624, line: 249, baseType: !15, size: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !704, file: !624, line: 250, baseType: !689, size: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !704, file: !624, line: 251, baseType: !692, size: 64, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !704, file: !624, line: 252, baseType: !711, size: 64, offset: 256)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, scope: !623, file: !624, line: 260, baseType: !713, size: 256, offset: 1408)
!713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !623, file: !624, line: 260, size: 256, elements: !714)
!714 = !{!715, !721}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !713, file: !624, line: 261, baseType: !716, size: 256)
!716 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !624, line: 134, size: 256, elements: !717)
!717 = !{!718, !719}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !716, file: !624, line: 135, baseType: !26, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !716, file: !624, line: 136, baseType: !720, size: 256)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 256, elements: !501)
!721 = !DIDerivedType(tag: DW_TAG_member, scope: !713, file: !624, line: 262, baseType: !722, size: 256)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !713, file: !624, line: 262, size: 256, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !722, file: !624, line: 264, baseType: !94, size: 128)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !722, file: !624, line: 265, baseType: !726, size: 128, offset: 128)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !727, line: 22, size: 128, elements: !728)
!727 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!728 = !{!729, !732}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !726, file: !727, line: 23, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !727, line: 23, flags: DIFlagFwdDecl)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !726, file: !727, line: 24, baseType: !15, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !623, file: !624, line: 280, baseType: !734, size: 64, offset: 1664)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !624, line: 176, size: 192, elements: !736)
!736 = !{!737, !746, !747}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !735, file: !624, line: 177, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !624, line: 171, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!38, !622, !742, !744, !622}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !690)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !716)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !735, file: !624, line: 178, baseType: !622, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !735, file: !624, line: 179, baseType: !689, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !591, file: !592, line: 130, baseType: !622, size: 64, offset: 832)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !591, file: !592, line: 131, baseType: !622, size: 64, offset: 896)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !591, file: !592, line: 132, baseType: !622, size: 64, offset: 960)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !591, file: !592, line: 135, baseType: !26, size: 64, offset: 1024)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !591, file: !592, line: 137, baseType: !753, size: 64, offset: 1088)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !755, line: 14, size: 1088, elements: !756)
!755 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!756 = !{!757, !758, !767, !768, !769, !770, !771, !772}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !754, file: !755, line: 15, baseType: !28, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !754, file: !755, line: 17, baseType: !759, size: 320, offset: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !760, line: 22, size: 320, elements: !761)
!760 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!761 = !{!762, !763, !764, !765}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !759, file: !760, line: 23, baseType: !192, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !759, file: !760, line: 24, baseType: !105, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !759, file: !760, line: 26, baseType: !94, size: 128, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !759, file: !760, line: 28, baseType: !766, size: 64, offset: 256)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !754, file: !755, line: 19, baseType: !15, size: 64, offset: 384)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !754, file: !755, line: 20, baseType: !434, size: 64, offset: 448)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !754, file: !755, line: 23, baseType: !496, size: 128, offset: 512)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !754, file: !755, line: 24, baseType: !579, size: 32, offset: 640)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !754, file: !755, line: 29, baseType: !434, size: 64, offset: 704)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !754, file: !755, line: 36, baseType: !773, size: 320, offset: 768)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !774, line: 15, size: 320, elements: !775)
!774 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!775 = !{!776, !777, !778, !779, !780, !781, !782}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !773, file: !774, line: 16, baseType: !192, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !773, file: !774, line: 18, baseType: !38, size: 32, offset: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !773, file: !774, line: 19, baseType: !38, size: 32, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !773, file: !774, line: 20, baseType: !38, size: 32, offset: 96)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !773, file: !774, line: 21, baseType: !38, size: 32, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !773, file: !774, line: 22, baseType: !15, size: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !773, file: !774, line: 23, baseType: !15, size: 64, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !591, file: !592, line: 138, baseType: !549, size: 64, offset: 1152)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !591, file: !592, line: 139, baseType: !552, size: 64, offset: 1216)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !591, file: !592, line: 140, baseType: !786, size: 64, offset: 1280)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !592, line: 25, size: 64, elements: !788)
!788 = !{!789, !790, !791}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !787, file: !592, line: 26, baseType: !33, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !787, file: !592, line: 27, baseType: !38, size: 32, offset: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !787, file: !592, line: 28, baseType: !792, offset: 64)
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !597, elements: !568)
!793 = !DIDerivedType(tag: DW_TAG_member, scope: !591, file: !592, line: 142, baseType: !794, size: 128, offset: 1344)
!794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !591, file: !592, line: 142, size: 128, elements: !795)
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !794, file: !592, line: 143, baseType: !38, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !794, file: !592, line: 144, baseType: !421, size: 128, align: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !413, file: !414, line: 1013, baseType: !799, size: 256, offset: 960)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !414, line: 970, size: 256, elements: !800)
!800 = !{!801, !802, !803, !804, !805, !806}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !799, file: !414, line: 971, baseType: !15, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !799, file: !414, line: 972, baseType: !22, size: 32, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !799, file: !414, line: 973, baseType: !22, size: 32, offset: 96)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !799, file: !414, line: 974, baseType: !22, size: 32, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !799, file: !414, line: 975, baseType: !22, size: 32, offset: 160)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !799, file: !414, line: 976, baseType: !453, size: 64, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !413, file: !414, line: 1014, baseType: !808, size: 128, offset: 1216)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !809, line: 8, size: 128, elements: !810)
!809 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!810 = !{!811, !3022}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !808, file: !809, line: 9, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !814, line: 70, size: 256, elements: !815)
!814 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!815 = !{!816, !3019, !3020, !3021}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !813, file: !814, line: 71, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !819, line: 82, size: 1536, elements: !820)
!819 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!820 = !{!821, !822, !827, !835, !836, !851, !2986, !2988, !3001, !3002, !3003, !3004, !3005, !3011, !3012, !3013}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !818, file: !819, line: 84, baseType: !22, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !818, file: !819, line: 85, baseType: !823, size: 32, offset: 32)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !245, line: 275, baseType: !824)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !245, line: 275, size: 32, elements: !825)
!825 = !{!826}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !824, file: !245, line: 275, baseType: !249, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !818, file: !819, line: 86, baseType: !828, size: 128, offset: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !829, line: 38, size: 128, elements: !830)
!829 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!830 = !{!831, !833}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !828, file: !829, line: 39, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !828, file: !829, line: 39, baseType: !834, size: 64, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !818, file: !819, line: 87, baseType: !817, size: 64, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !818, file: !819, line: 88, baseType: !837, size: 128, offset: 256)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !819, line: 49, size: 128, elements: !838)
!838 = !{!839, !848}
!839 = !DIDerivedType(tag: DW_TAG_member, scope: !837, file: !819, line: 50, baseType: !840, size: 64)
!840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !837, file: !819, line: 50, size: 64, elements: !841)
!841 = !{!842, !847}
!842 = !DIDerivedType(tag: DW_TAG_member, scope: !840, file: !819, line: 51, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !840, file: !819, line: 51, size: 64, elements: !844)
!844 = !{!845, !846}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !843, file: !819, line: 52, baseType: !18, size: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !843, file: !819, line: 52, baseType: !18, size: 32, offset: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !840, file: !819, line: 54, baseType: !89, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !837, file: !819, line: 56, baseType: !849, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !818, file: !819, line: 89, baseType: !852, size: 64, offset: 384)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !414, line: 641, size: 4800, elements: !854)
!854 = !{!855, !857, !858, !859, !860, !861, !862, !865, !866, !1057, !2800, !2801, !2802, !2803, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2968, !2971, !2972, !2973, !2982, !2983, !2984, !2985}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !853, file: !414, line: 642, baseType: !856, size: 16)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !34, line: 24, baseType: !60)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !853, file: !414, line: 643, baseType: !60, size: 16, offset: 16)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !853, file: !414, line: 644, baseType: !579, size: 32, offset: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !853, file: !414, line: 645, baseType: !94, size: 128, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !853, file: !414, line: 646, baseType: !597, size: 32, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !853, file: !414, line: 647, baseType: !22, size: 32, offset: 224)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !853, file: !414, line: 650, baseType: !863, size: 64, offset: 256)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !414, line: 607, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !853, file: !414, line: 651, baseType: !863, size: 64, offset: 320)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !853, file: !414, line: 654, baseType: !867, size: 64, offset: 384)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !869)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !414, line: 1966, size: 2048, align: 512, elements: !870)
!870 = !{!871, !875, !888, !894, !898, !902, !906, !910, !914, !918, !922, !923, !929, !933, !971, !1002, !1012, !1018, !1022, !1026, !1030, !1034, !1038, !1044, !1048}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !869, file: !414, line: 1967, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!817, !852, !817, !22}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !869, file: !414, line: 1968, baseType: !876, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!701, !817, !852, !879}
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !881, line: 10, size: 128, elements: !882)
!881 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!882 = !{!883, !887}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !880, file: !881, line: 11, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{null, !26}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !880, file: !881, line: 12, baseType: !26, size: 64, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !869, file: !414, line: 1969, baseType: !889, size: 64, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{!38, !892, !852, !38}
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !612, line: 42, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !869, file: !414, line: 1970, baseType: !895, size: 64, offset: 192)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{!863, !852, !38, !698}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !869, file: !414, line: 1972, baseType: !899, size: 64, offset: 256)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!38, !817, !711, !38}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !869, file: !414, line: 1974, baseType: !903, size: 64, offset: 320)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{!38, !892, !852, !817, !856, !698}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !869, file: !414, line: 1976, baseType: !907, size: 64, offset: 384)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!38, !817, !852, !817}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !869, file: !414, line: 1977, baseType: !911, size: 64, offset: 448)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!38, !852, !817}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !869, file: !414, line: 1978, baseType: !915, size: 64, offset: 512)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DISubroutineType(types: !917)
!917 = !{!38, !892, !852, !817, !701}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !869, file: !414, line: 1980, baseType: !919, size: 64, offset: 576)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!38, !892, !852, !817, !856}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !869, file: !414, line: 1982, baseType: !911, size: 64, offset: 640)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !869, file: !414, line: 1983, baseType: !924, size: 64, offset: 704)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{!38, !892, !852, !817, !856, !927}
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !34, line: 21, baseType: !928)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !34, line: 18, baseType: !18)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !869, file: !414, line: 1985, baseType: !930, size: 64, offset: 768)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{!38, !892, !852, !817, !852, !817, !22}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !869, file: !414, line: 1987, baseType: !934, size: 64, offset: 832)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!38, !892, !817, !937}
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !414, line: 226, size: 640, elements: !939)
!939 = !{!940, !941, !942, !952, !961, !962, !968, !969, !970}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !938, file: !414, line: 227, baseType: !22, size: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !938, file: !414, line: 228, baseType: !856, size: 16, offset: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, scope: !938, file: !414, line: 241, baseType: !943, size: 32, offset: 64)
!943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !938, file: !414, line: 241, size: 32, elements: !944)
!944 = !{!945, !946}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !943, file: !414, line: 242, baseType: !579, size: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !943, file: !414, line: 243, baseType: !947, size: 32)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !948, line: 16, baseType: !949)
!948 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !948, line: 14, size: 32, elements: !950)
!950 = !{!951}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !949, file: !948, line: 15, baseType: !584, size: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, scope: !938, file: !414, line: 245, baseType: !953, size: 32, offset: 96)
!953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !938, file: !414, line: 245, size: 32, elements: !954)
!954 = !{!955, !956}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !953, file: !414, line: 246, baseType: !597, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !953, file: !414, line: 247, baseType: !957, size: 32)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !948, line: 20, baseType: !958)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !948, line: 18, size: 32, elements: !959)
!959 = !{!960}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !958, file: !948, line: 19, baseType: !601, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !938, file: !414, line: 249, baseType: !453, size: 64, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !938, file: !414, line: 250, baseType: !963, size: 128, offset: 192)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !655, line: 13, size: 128, elements: !964)
!964 = !{!965, !966}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !963, file: !655, line: 14, baseType: !654, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !963, file: !655, line: 15, baseType: !967, size: 64, offset: 64)
!967 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !938, file: !414, line: 251, baseType: !963, size: 128, offset: 320)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !938, file: !414, line: 252, baseType: !963, size: 128, offset: 448)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !938, file: !414, line: 259, baseType: !412, size: 64, offset: 576)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !869, file: !414, line: 1988, baseType: !972, size: 64, offset: 896)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!38, !892, !975, !977, !18, !22}
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !808)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !979, line: 22, size: 1280, elements: !980)
!979 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!980 = !{!981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !978, file: !979, line: 23, baseType: !18, size: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !978, file: !979, line: 24, baseType: !856, size: 16, offset: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !978, file: !979, line: 25, baseType: !22, size: 32, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !978, file: !979, line: 26, baseType: !662, size: 32, offset: 96)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !978, file: !979, line: 27, baseType: !89, size: 64, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !978, file: !979, line: 28, baseType: !89, size: 64, offset: 192)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !978, file: !979, line: 41, baseType: !89, size: 64, offset: 256)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !978, file: !979, line: 42, baseType: !927, size: 32, offset: 320)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !978, file: !979, line: 43, baseType: !927, size: 32, offset: 352)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !978, file: !979, line: 44, baseType: !579, size: 32, offset: 384)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !978, file: !979, line: 45, baseType: !597, size: 32, offset: 416)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !978, file: !979, line: 46, baseType: !453, size: 64, offset: 448)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !978, file: !979, line: 47, baseType: !963, size: 128, offset: 512)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !978, file: !979, line: 48, baseType: !963, size: 128, offset: 640)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !978, file: !979, line: 49, baseType: !963, size: 128, offset: 768)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !978, file: !979, line: 50, baseType: !963, size: 128, offset: 896)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !978, file: !979, line: 51, baseType: !89, size: 64, offset: 1024)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !978, file: !979, line: 52, baseType: !89, size: 64, offset: 1088)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !978, file: !979, line: 53, baseType: !18, size: 32, offset: 1152)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !978, file: !979, line: 54, baseType: !18, size: 32, offset: 1184)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !978, file: !979, line: 55, baseType: !89, size: 64, offset: 1216)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !869, file: !414, line: 1990, baseType: !1003, size: 64, offset: 960)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!1006, !817, !711, !1009}
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !34, line: 66, baseType: !1007)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !242, line: 73, baseType: !1008)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !242, line: 15, baseType: !967)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 61, baseType: !1010)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !242, line: 72, baseType: !1011)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !242, line: 16, baseType: !15)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !869, file: !414, line: 1991, baseType: !1013, size: 64, offset: 1024)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!38, !852, !1016, !89, !89}
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !414, line: 55, flags: DIFlagFwdDecl)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !869, file: !414, line: 1993, baseType: !1019, size: 64, offset: 1088)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!38, !852, !38}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !869, file: !414, line: 1994, baseType: !1023, size: 64, offset: 1152)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!38, !852, !817, !412, !22, !856}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !869, file: !414, line: 1997, baseType: !1027, size: 64, offset: 1216)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!38, !892, !852, !412, !856}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !869, file: !414, line: 1999, baseType: !1031, size: 64, offset: 1280)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!863, !892, !817, !38}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !869, file: !414, line: 2001, baseType: !1035, size: 64, offset: 1344)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!38, !892, !817, !863, !38}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !869, file: !414, line: 2003, baseType: !1039, size: 64, offset: 1408)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!38, !892, !817, !1042}
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !414, line: 76, flags: DIFlagFwdDecl)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !869, file: !414, line: 2005, baseType: !1045, size: 64, offset: 1472)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!38, !817, !1042}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !869, file: !414, line: 2006, baseType: !1049, size: 64, offset: 1536)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!1052, !852}
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !414, line: 3192, size: 192, elements: !1054)
!1054 = !{!1055, !1056}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1053, file: !414, line: 3193, baseType: !527, size: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1053, file: !414, line: 3194, baseType: !18, size: 32, offset: 128)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !853, file: !414, line: 655, baseType: !1058, size: 64, offset: 448)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !414, line: 1190, size: 10752, elements: !1060)
!1060 = !{!1061, !1062, !1063, !1064, !1065, !1066, !2303, !2445, !2485, !2568, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2585, !2589, !2590, !2593, !2596, !2599, !2602, !2603, !2604, !2645, !2671, !2672, !2673, !2674, !2675, !2676, !2679, !2683, !2692, !2693, !2694, !2695, !2754, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1059, file: !414, line: 1191, baseType: !94, size: 128)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1059, file: !414, line: 1192, baseType: !927, size: 32, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1059, file: !414, line: 1193, baseType: !211, size: 8, offset: 160)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1059, file: !414, line: 1194, baseType: !15, size: 64, offset: 192)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1059, file: !414, line: 1195, baseType: !453, size: 64, offset: 256)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1059, file: !414, line: 1196, baseType: !1067, size: 64, offset: 320)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !414, line: 2366, size: 576, elements: !1069)
!1069 = !{!1070, !1071, !1072, !1078, !1082, !1086, !1090, !2291, !2292, !2293, !2295, !2296, !2297, !2299, !2300, !2301, !2302}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1068, file: !414, line: 2367, baseType: !701, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1068, file: !414, line: 2368, baseType: !38, size: 32, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1068, file: !414, line: 2376, baseType: !1073, size: 64, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!38, !1076}
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !814, line: 21, flags: DIFlagFwdDecl)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1068, file: !414, line: 2377, baseType: !1079, size: 64, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1081)
!1081 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !414, line: 75, flags: DIFlagFwdDecl)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1068, file: !414, line: 2378, baseType: !1083, size: 64, offset: 256)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!817, !1067, !38, !701, !26}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1068, file: !414, line: 2380, baseType: !1087, size: 64, offset: 320)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{null, !1058}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1068, file: !414, line: 2381, baseType: !1091, size: 64, offset: 384)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1093, line: 402, size: 9216, align: 512, elements: !1094)
!1093 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!1094 = !{!1095, !1102, !1103, !1107, !1934, !1960, !1961, !1962, !1963, !1967, !1970, !1971, !1972, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2040, !2044, !2064, !2084, !2085, !2086, !2087, !2096, !2119, !2120, !2123, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2137, !2138, !2249, !2257, !2258, !2259, !2261, !2265, !2266, !2270, !2271, !2272, !2273, !2275, !2276, !2277, !2284, !2285, !2286, !2290}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1092, file: !1093, line: 403, baseType: !1096, size: 32)
!1096 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !1093, line: 312, baseType: !22, size: 32, elements: !1097)
!1097 = !{!1098, !1099, !1100, !1101}
!1098 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!1099 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!1100 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!1101 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1092, file: !1093, line: 406, baseType: !94, size: 128, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1092, file: !1093, line: 409, baseType: !1104, size: 448, offset: 192)
!1104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 448, elements: !1105)
!1105 = !{!1106}
!1106 = !DISubrange(count: 56)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1092, file: !1093, line: 417, baseType: !1108, size: 768, offset: 640)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !1093, line: 45, size: 768, elements: !1109)
!1109 = !{!1110, !1927, !1928, !1929, !1932}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1108, file: !1093, line: 46, baseType: !1111, size: 512)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1112, line: 64, size: 512, elements: !1113)
!1112 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1113 = !{!1114, !1115, !1116, !1118, !1162, !1806, !1917, !1922, !1923, !1924, !1925, !1926}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1111, file: !1112, line: 65, baseType: !701, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1111, file: !1112, line: 66, baseType: !94, size: 128, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1111, file: !1112, line: 67, baseType: !1117, size: 64, offset: 192)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1111, file: !1112, line: 68, baseType: !1119, size: 64, offset: 256)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1112, line: 168, size: 768, elements: !1121)
!1121 = !{!1122, !1123, !1124, !1125}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1120, file: !1112, line: 169, baseType: !94, size: 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1120, file: !1112, line: 170, baseType: !394, size: 32, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1120, file: !1112, line: 171, baseType: !1111, size: 512, offset: 192)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1120, file: !1112, line: 172, baseType: !1126, size: 64, offset: 704)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1128)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1112, line: 133, size: 192, elements: !1129)
!1129 = !{!1130, !1137, !1142}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1128, file: !1112, line: 134, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1132)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!38, !1135}
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1111)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1128, file: !1112, line: 135, baseType: !1138, size: 64, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1139)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!701, !1135}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1128, file: !1112, line: 136, baseType: !1143, size: 64, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1144)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!38, !1135, !1147}
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1112, line: 125, size: 20736, elements: !1149)
!1149 = !{!1150, !1152, !1156, !1157, !1161}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1148, file: !1112, line: 126, baseType: !1151, size: 192)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 192, elements: !479)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1148, file: !1112, line: 127, baseType: !1153, size: 4096, offset: 192)
!1153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 4096, elements: !1154)
!1154 = !{!1155}
!1155 = !DISubrange(count: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1148, file: !1112, line: 128, baseType: !38, size: 32, offset: 4288)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1148, file: !1112, line: 129, baseType: !1158, size: 16384, offset: 4320)
!1158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 16384, elements: !1159)
!1159 = !{!1160}
!1160 = !DISubrange(count: 2048)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1148, file: !1112, line: 130, baseType: !38, size: 32, offset: 20704)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1111, file: !1112, line: 69, baseType: !1163, size: 64, offset: 320)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1165)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1112, line: 116, size: 384, elements: !1166)
!1166 = !{!1167, !1171, !1190, !1760, !1796, !1800}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1165, file: !1112, line: 117, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{null, !1117}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1165, file: !1112, line: 118, baseType: !1172, size: 64, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1174)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1175, line: 254, size: 128, elements: !1176)
!1175 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1176 = !{!1177, !1186}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1174, file: !1175, line: 255, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!1006, !1117, !1181, !711}
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1175, line: 30, size: 128, elements: !1183)
!1183 = !{!1184, !1185}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1182, file: !1175, line: 31, baseType: !701, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1182, file: !1175, line: 32, baseType: !856, size: 16, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1174, file: !1175, line: 256, baseType: !1187, size: 64, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!1006, !1117, !1181, !701, !1009}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1165, file: !1112, line: 119, baseType: !1191, size: 64, offset: 128)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1194)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1175, line: 84, size: 320, elements: !1195)
!1195 = !{!1196, !1197, !1201, !1756, !1758}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1194, file: !1175, line: 85, baseType: !701, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1194, file: !1175, line: 86, baseType: !1198, size: 64, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!856, !1117, !1181, !38}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1194, file: !1175, line: 88, baseType: !1202, size: 64, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!856, !1117, !1205, !38}
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1175, line: 175, size: 512, elements: !1207)
!1207 = !{!1208, !1209, !1210, !1211, !1747, !1751, !1752}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1206, file: !1175, line: 176, baseType: !1182, size: 128)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1206, file: !1175, line: 177, baseType: !1009, size: 64, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1206, file: !1175, line: 178, baseType: !26, size: 64, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1206, file: !1175, line: 179, baseType: !1212, size: 64, offset: 256)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!1215}
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !414, line: 472, size: 1536, align: 64, elements: !1217)
!1217 = !{!1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1739, !1740, !1741, !1744, !1745, !1746}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1216, file: !414, line: 473, baseType: !852, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1216, file: !414, line: 474, baseType: !527, size: 128, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1216, file: !414, line: 475, baseType: !638, size: 320, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1216, file: !414, line: 476, baseType: !532, size: 32, offset: 512)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1216, file: !414, line: 477, baseType: !33, size: 32, offset: 544)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1216, file: !414, line: 482, baseType: !258, size: 128, offset: 576)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1216, file: !414, line: 483, baseType: !15, size: 64, offset: 704)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1216, file: !414, line: 484, baseType: !15, size: 64, offset: 768)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1216, file: !414, line: 485, baseType: !1227, size: 64, offset: 832)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1229)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !414, line: 404, size: 1280, elements: !1230)
!1230 = !{!1231, !1557, !1627, !1631, !1635, !1641, !1647, !1651, !1656, !1660, !1664, !1668, !1696, !1707, !1711, !1715, !1720, !1724, !1731, !1735}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1229, file: !414, line: 405, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!38, !1235, !1555}
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !377, line: 74, size: 512, align: 128, elements: !1237)
!1237 = !{!1238, !1239, !1549, !1554}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1236, file: !377, line: 75, baseType: !15, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, scope: !1236, file: !377, line: 83, baseType: !1240, size: 320, offset: 64)
!1240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1236, file: !377, line: 83, size: 320, elements: !1241)
!1241 = !{!1242, !1263, !1277, !1281, !1548}
!1242 = !DIDerivedType(tag: DW_TAG_member, scope: !1240, file: !377, line: 84, baseType: !1243, size: 320)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1240, file: !377, line: 84, size: 320, elements: !1244)
!1244 = !{!1245, !1256, !1257, !1262}
!1245 = !DIDerivedType(tag: DW_TAG_member, scope: !1243, file: !377, line: 90, baseType: !1246, size: 128)
!1246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1243, file: !377, line: 90, size: 128, elements: !1247)
!1247 = !{!1248, !1249, !1254, !1255}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1246, file: !377, line: 91, baseType: !94, size: 128)
!1249 = !DIDerivedType(tag: DW_TAG_member, scope: !1246, file: !377, line: 94, baseType: !1250, size: 128)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1246, file: !377, line: 94, size: 128, elements: !1251)
!1251 = !{!1252, !1253}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1250, file: !377, line: 96, baseType: !26, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1250, file: !377, line: 98, baseType: !22, size: 32, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1246, file: !377, line: 102, baseType: !94, size: 128)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1246, file: !377, line: 103, baseType: !94, size: 128)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1243, file: !377, line: 106, baseType: !1215, size: 64, offset: 128)
!1257 = !DIDerivedType(tag: DW_TAG_member, scope: !1243, file: !377, line: 107, baseType: !1258, size: 64, offset: 192)
!1258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1243, file: !377, line: 107, size: 64, elements: !1259)
!1259 = !{!1260, !1261}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1258, file: !377, line: 108, baseType: !15, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1258, file: !377, line: 109, baseType: !15, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1243, file: !377, line: 117, baseType: !15, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, scope: !1240, file: !377, line: 119, baseType: !1264, size: 320)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1240, file: !377, line: 119, size: 320, elements: !1265)
!1265 = !{!1266, !1267, !1270, !1271, !1272}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1264, file: !377, line: 124, baseType: !15, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1264, file: !377, line: 125, baseType: !1268, size: 64, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !377, line: 125, flags: DIFlagFwdDecl)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1264, file: !377, line: 126, baseType: !15, size: 64, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1264, file: !377, line: 127, baseType: !15, size: 64, offset: 192)
!1272 = !DIDerivedType(tag: DW_TAG_member, scope: !1264, file: !377, line: 128, baseType: !1273, size: 64, offset: 256)
!1273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1264, file: !377, line: 128, size: 64, elements: !1274)
!1274 = !{!1275, !1276}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1273, file: !377, line: 133, baseType: !15, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1273, file: !377, line: 138, baseType: !434, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, scope: !1240, file: !377, line: 141, baseType: !1278, size: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1240, file: !377, line: 141, size: 64, elements: !1279)
!1279 = !{!1280}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1278, file: !377, line: 142, baseType: !15, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, scope: !1240, file: !377, line: 144, baseType: !1282, size: 128)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1240, file: !377, line: 144, size: 128, elements: !1283)
!1283 = !{!1284, !1547}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1282, file: !377, line: 146, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1287, line: 126, size: 1216, elements: !1288)
!1287 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!1288 = !{!1289, !1299, !1320, !1331, !1339, !1340, !1341, !1529, !1530, !1531}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1286, file: !1287, line: 127, baseType: !1290, size: 384)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !1287, line: 21, size: 384, elements: !1291)
!1291 = !{!1292, !1293, !1295, !1296, !1297, !1298}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1290, file: !1287, line: 22, baseType: !15, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1290, file: !1287, line: 23, baseType: !1294, size: 64, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1290, file: !1287, line: 24, baseType: !1294, size: 64, offset: 128)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1290, file: !1287, line: 25, baseType: !15, size: 64, offset: 192)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1290, file: !1287, line: 26, baseType: !15, size: 64, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1290, file: !1287, line: 27, baseType: !15, size: 64, offset: 320)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1286, file: !1287, line: 128, baseType: !1300, size: 128, offset: 384)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1301, line: 105, size: 128, elements: !1302)
!1301 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1302 = !{!1303, !1304}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1300, file: !1301, line: 110, baseType: !15, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1300, file: !1301, line: 118, baseType: !1305, size: 64, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1301, line: 95, size: 448, elements: !1307)
!1307 = !{!1308, !1309, !1315, !1316, !1317, !1318, !1319}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1306, file: !1301, line: 96, baseType: !434, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1306, file: !1301, line: 97, baseType: !1310, size: 64, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1301, line: 60, baseType: !1312)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{null, !1314}
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1306, file: !1301, line: 98, baseType: !1310, size: 64, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1306, file: !1301, line: 99, baseType: !698, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1306, file: !1301, line: 100, baseType: !698, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1306, file: !1301, line: 101, baseType: !421, size: 128, align: 64, offset: 256)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1306, file: !1301, line: 102, baseType: !1314, size: 64, offset: 384)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1286, file: !1287, line: 129, baseType: !1321, size: 256, offset: 512)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1322, line: 26, size: 256, elements: !1323)
!1322 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1323 = !{!1324, !1325}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1321, file: !1322, line: 27, baseType: !22, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1321, file: !1322, line: 28, baseType: !1326, size: 192, offset: 64)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1327, line: 43, size: 192, elements: !1328)
!1327 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1328 = !{!1329, !1330}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1326, file: !1327, line: 44, baseType: !192, size: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1326, file: !1327, line: 45, baseType: !94, size: 128, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1286, file: !1287, line: 130, baseType: !1332, size: 32, offset: 768)
!1332 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !1287, line: 68, baseType: !22, size: 32, elements: !1333)
!1333 = !{!1334, !1335, !1336, !1337, !1338}
!1334 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!1335 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!1336 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!1337 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!1338 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1286, file: !1287, line: 131, baseType: !22, size: 32, offset: 800)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1286, file: !1287, line: 132, baseType: !15, size: 64, offset: 832)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1286, file: !1287, line: 133, baseType: !1342, size: 64, offset: 896)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1344)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !1287, line: 77, size: 192, elements: !1345)
!1345 = !{!1346, !1350, !1525}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1344, file: !1287, line: 83, baseType: !1347, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{null, !1235}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1344, file: !1287, line: 89, baseType: !1351, size: 64, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!1354, !1355}
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !377, line: 1184, baseType: !22)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1357, line: 512, size: 896, elements: !1358)
!1357 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1358 = !{!1359, !1477, !1493, !1500, !1507, !1517, !1518, !1519, !1521, !1523}
!1359 = !DIDerivedType(tag: DW_TAG_member, scope: !1356, file: !1357, line: 513, baseType: !1360, size: 320)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1356, file: !1357, line: 513, size: 320, elements: !1361)
!1361 = !{!1362, !1473, !1474, !1475, !1476}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1360, file: !1357, line: 514, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !377, line: 625, size: 1344, elements: !1365)
!1365 = !{!1366, !1375, !1376, !1384, !1391, !1392, !1397, !1398, !1403, !1404, !1407, !1466, !1467, !1468, !1469, !1470, !1471}
!1366 = !DIDerivedType(tag: DW_TAG_member, scope: !1364, file: !377, line: 628, baseType: !1367, size: 128)
!1367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1364, file: !377, line: 628, size: 128, elements: !1368)
!1368 = !{!1369, !1374}
!1369 = !DIDerivedType(tag: DW_TAG_member, scope: !1367, file: !377, line: 629, baseType: !1370, size: 128)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1367, file: !377, line: 629, size: 128, elements: !1371)
!1371 = !{!1372, !1373}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1370, file: !377, line: 631, baseType: !15, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1370, file: !377, line: 632, baseType: !15, size: 64, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1367, file: !377, line: 635, baseType: !421, size: 128, align: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1364, file: !377, line: 639, baseType: !375, size: 64, offset: 128)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1364, file: !377, line: 640, baseType: !1377, size: 64, offset: 192)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1378, line: 297, baseType: !1379)
!1378 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1378, line: 297, size: 64, elements: !1380)
!1380 = !{!1381}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1379, file: !1378, line: 297, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1383, line: 19, baseType: !15)
!1383 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1384 = !DIDerivedType(tag: DW_TAG_member, scope: !1364, file: !377, line: 646, baseType: !1385, size: 64, offset: 256)
!1385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1364, file: !377, line: 646, size: 64, elements: !1386)
!1386 = !{!1387, !1390}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1385, file: !377, line: 647, baseType: !1388, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1389)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !377, line: 542, baseType: !15)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1385, file: !377, line: 648, baseType: !1389, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1364, file: !377, line: 666, baseType: !38, size: 32, offset: 320)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1364, file: !377, line: 667, baseType: !1393, size: 64, offset: 384)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !377, line: 579, size: 320, elements: !1395)
!1395 = !{!1396}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1394, file: !377, line: 580, baseType: !638, size: 320)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1364, file: !377, line: 670, baseType: !698, size: 8, offset: 448)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1364, file: !377, line: 681, baseType: !1399, size: 256, offset: 512)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1364, file: !377, line: 678, size: 256, elements: !1400)
!1400 = !{!1401, !1402}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1399, file: !377, line: 679, baseType: !81, size: 192, align: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1399, file: !377, line: 680, baseType: !15, size: 64, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1364, file: !377, line: 689, baseType: !94, size: 128, offset: 768)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1364, file: !377, line: 691, baseType: !1405, size: 64, offset: 896)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !377, line: 691, flags: DIFlagFwdDecl)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1364, file: !377, line: 694, baseType: !1408, size: 64, offset: 960)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1410)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1357, line: 563, size: 1024, elements: !1411)
!1411 = !{!1412, !1416, !1417, !1421, !1425, !1429, !1430, !1434, !1438, !1442, !1443, !1444, !1448, !1452, !1458, !1462}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1410, file: !1357, line: 564, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{null, !1363}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1410, file: !1357, line: 569, baseType: !1413, size: 64, offset: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1410, file: !1357, line: 571, baseType: !1418, size: 64, offset: 128)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!38, !1363, !15}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1410, file: !1357, line: 572, baseType: !1422, size: 64, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!38, !1363}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1410, file: !1357, line: 578, baseType: !1426, size: 64, offset: 256)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!38, !1363, !15, !15, !15}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1410, file: !1357, line: 580, baseType: !1351, size: 64, offset: 320)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1410, file: !1357, line: 581, baseType: !1431, size: 64, offset: 384)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!1354, !1355, !22}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1410, file: !1357, line: 582, baseType: !1435, size: 64, offset: 448)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!1354, !1355, !15, !15}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1410, file: !1357, line: 584, baseType: !1439, size: 64, offset: 512)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!15, !1363}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1410, file: !1357, line: 588, baseType: !1351, size: 64, offset: 576)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1410, file: !1357, line: 591, baseType: !1351, size: 64, offset: 640)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1410, file: !1357, line: 597, baseType: !1445, size: 64, offset: 704)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!38, !1363, !15, !26, !38, !38}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1410, file: !1357, line: 603, baseType: !1449, size: 64, offset: 768)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!701, !1363}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1410, file: !1357, line: 613, baseType: !1453, size: 64, offset: 832)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!38, !1363, !1456}
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !377, line: 717, flags: DIFlagFwdDecl)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1410, file: !1357, line: 625, baseType: !1459, size: 64, offset: 896)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!1456, !1363, !15}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1410, file: !1357, line: 633, baseType: !1463, size: 64, offset: 960)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!1235, !1363, !15}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1364, file: !377, line: 697, baseType: !15, size: 64, offset: 1024)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1364, file: !377, line: 699, baseType: !412, size: 64, offset: 1088)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1364, file: !377, line: 700, baseType: !26, size: 64, offset: 1152)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1364, file: !377, line: 711, baseType: !434, size: 64, offset: 1216)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1364, file: !377, line: 717, baseType: !1456, size: 64, offset: 1280)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1364, file: !377, line: 722, baseType: !1472, offset: 1344)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !377, line: 570, elements: !405)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1360, file: !1357, line: 515, baseType: !532, size: 32, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1360, file: !1357, line: 516, baseType: !15, size: 64, offset: 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1360, file: !1357, line: 517, baseType: !15, size: 64, offset: 192)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1360, file: !1357, line: 518, baseType: !15, size: 64, offset: 256)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1356, file: !1357, line: 520, baseType: !1478, size: 32, offset: 320)
!1478 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !377, line: 1325, baseType: !22, size: 32, elements: !1479)
!1479 = !{!1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492}
!1480 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!1481 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!1482 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!1483 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!1484 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!1485 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!1486 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!1487 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!1488 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!1489 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!1490 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!1491 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!1492 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1356, file: !1357, line: 522, baseType: !1494, size: 64, offset: 384)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1383, line: 22, baseType: !1496)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1383, line: 22, size: 64, elements: !1497)
!1497 = !{!1498}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1496, file: !1383, line: 22, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1383, line: 15, baseType: !15)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1356, file: !1357, line: 524, baseType: !1501, size: 64, offset: 448)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1378, line: 372, baseType: !1503)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1378, line: 372, size: 64, elements: !1504)
!1504 = !{!1505}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1503, file: !1378, line: 372, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1383, line: 16, baseType: !15)
!1507 = !DIDerivedType(tag: DW_TAG_member, scope: !1356, file: !1357, line: 527, baseType: !1508, size: 64, offset: 512)
!1508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1356, file: !1357, line: 527, size: 64, elements: !1509)
!1509 = !{!1510, !1516}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1508, file: !1357, line: 528, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1383, line: 21, baseType: !1512)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1383, line: 21, size: 64, elements: !1513)
!1513 = !{!1514}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1512, file: !1383, line: 21, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1383, line: 14, baseType: !15)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1508, file: !1357, line: 529, baseType: !1495, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1356, file: !1357, line: 534, baseType: !1235, size: 64, offset: 576)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1356, file: !1357, line: 535, baseType: !1235, size: 64, offset: 640)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1356, file: !1357, line: 541, baseType: !1520, size: 64, offset: 704)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1356, file: !1357, line: 545, baseType: !1522, size: 64, offset: 768)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1356, file: !1357, line: 549, baseType: !1524, size: 64, offset: 832)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1378, line: 520, baseType: !1235)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1344, file: !1287, line: 100, baseType: !1526, size: 64, offset: 128)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!38, !1285, !15, !15, !38}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1286, file: !1287, line: 134, baseType: !26, size: 64, offset: 960)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1286, file: !1287, line: 135, baseType: !38, size: 32, offset: 1024)
!1531 = !DIDerivedType(tag: DW_TAG_member, scope: !1286, file: !1287, line: 136, baseType: !1532, size: 128, offset: 1088)
!1532 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1286, file: !1287, line: 136, size: 128, elements: !1533)
!1533 = !{!1534, !1540}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1532, file: !1287, line: 137, baseType: !1535, size: 128)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1536, line: 6, size: 128, elements: !1537)
!1536 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1537 = !{!1538, !1539}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1535, file: !1536, line: 7, baseType: !89, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1535, file: !1536, line: 8, baseType: !89, size: 64, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, scope: !1532, file: !1287, line: 138, baseType: !1541)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1532, file: !1287, line: 138, elements: !1542)
!1542 = !{!1543, !1545}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1541, file: !1287, line: 138, baseType: !1544)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1541, file: !1287, line: 138, elements: !405)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1541, file: !1287, line: 138, baseType: !1546)
!1546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1535, elements: !568)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1282, file: !377, line: 147, baseType: !26, size: 64, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1240, file: !377, line: 161, baseType: !421, size: 128, align: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, scope: !1236, file: !377, line: 164, baseType: !1550, size: 32, offset: 384)
!1550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1236, file: !377, line: 164, size: 32, elements: !1551)
!1551 = !{!1552, !1553}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1550, file: !377, line: 169, baseType: !33, size: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1550, file: !377, line: 177, baseType: !22, size: 32)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1236, file: !377, line: 181, baseType: !33, size: 32, offset: 416)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !414, line: 309, flags: DIFlagFwdDecl)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1229, file: !414, line: 406, baseType: !1558, size: 64, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!38, !412, !1561}
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !377, line: 293, size: 1536, elements: !1563)
!1563 = !{!1564, !1594, !1608}
!1564 = !DIDerivedType(tag: DW_TAG_member, scope: !1562, file: !377, line: 295, baseType: !1565, size: 512)
!1565 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1562, file: !377, line: 295, size: 512, elements: !1566)
!1566 = !{!1567, !1593}
!1567 = !DIDerivedType(tag: DW_TAG_member, scope: !1565, file: !377, line: 296, baseType: !1568, size: 448)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1565, file: !377, line: 296, size: 448, elements: !1569)
!1569 = !{!1570, !1571, !1580, !1581, !1582, !1591, !1592}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1568, file: !377, line: 298, baseType: !15, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, scope: !1568, file: !377, line: 299, baseType: !1572, size: 128, offset: 64)
!1572 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1568, file: !377, line: 299, size: 128, elements: !1573)
!1573 = !{!1574, !1575}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1572, file: !377, line: 300, baseType: !94, size: 128)
!1575 = !DIDerivedType(tag: DW_TAG_member, scope: !1572, file: !377, line: 302, baseType: !1576, size: 128)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1572, file: !377, line: 302, size: 128, elements: !1577)
!1577 = !{!1578, !1579}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1576, file: !377, line: 303, baseType: !26, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1576, file: !377, line: 305, baseType: !22, size: 32, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1568, file: !377, line: 310, baseType: !1215, size: 64, offset: 192)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1568, file: !377, line: 311, baseType: !15, size: 64, offset: 256)
!1582 = !DIDerivedType(tag: DW_TAG_member, scope: !1568, file: !377, line: 312, baseType: !1583, size: 64, offset: 320)
!1583 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1568, file: !377, line: 312, size: 64, elements: !1584)
!1584 = !{!1585, !1586}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1583, file: !377, line: 313, baseType: !26, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1583, file: !377, line: 314, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !377, line: 257, baseType: !1588)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !377, line: 255, size: 64, elements: !1589)
!1589 = !{!1590}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1588, file: !377, line: 256, baseType: !15, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1568, file: !377, line: 316, baseType: !33, size: 32, offset: 384)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1568, file: !377, line: 317, baseType: !33, size: 32, offset: 416)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1565, file: !377, line: 323, baseType: !1236, size: 512, align: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, scope: !1562, file: !377, line: 325, baseType: !1595, size: 512, offset: 512)
!1595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1562, file: !377, line: 325, size: 512, elements: !1596)
!1596 = !{!1597, !1607}
!1597 = !DIDerivedType(tag: DW_TAG_member, scope: !1595, file: !377, line: 326, baseType: !1598, size: 320)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1595, file: !377, line: 326, size: 320, elements: !1599)
!1599 = !{!1600, !1601, !1602, !1603, !1604, !1605, !1606}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1598, file: !377, line: 327, baseType: !15, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1598, file: !377, line: 328, baseType: !15, size: 64, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1598, file: !377, line: 329, baseType: !15, size: 64, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1598, file: !377, line: 331, baseType: !33, size: 32, offset: 192)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1598, file: !377, line: 332, baseType: !33, size: 32, offset: 224)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1598, file: !377, line: 333, baseType: !33, size: 32, offset: 256)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1598, file: !377, line: 335, baseType: !22, size: 32, offset: 288)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1595, file: !377, line: 339, baseType: !1236, size: 512, align: 128)
!1608 = !DIDerivedType(tag: DW_TAG_member, scope: !1562, file: !377, line: 341, baseType: !1609, size: 512, offset: 1024)
!1609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1562, file: !377, line: 341, size: 512, elements: !1610)
!1610 = !{!1611, !1620, !1626}
!1611 = !DIDerivedType(tag: DW_TAG_member, scope: !1609, file: !377, line: 342, baseType: !1612, size: 384)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1609, file: !377, line: 342, size: 384, elements: !1613)
!1613 = !{!1614, !1615, !1616, !1617, !1618, !1619}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1612, file: !377, line: 343, baseType: !15, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1612, file: !377, line: 344, baseType: !15, size: 64, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1612, file: !377, line: 346, baseType: !26, size: 64, offset: 128)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1612, file: !377, line: 347, baseType: !26, size: 64, offset: 192)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1612, file: !377, line: 348, baseType: !26, size: 64, offset: 256)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1612, file: !377, line: 349, baseType: !26, size: 64, offset: 320)
!1620 = !DIDerivedType(tag: DW_TAG_member, scope: !1609, file: !377, line: 352, baseType: !1621, size: 256)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1609, file: !377, line: 352, size: 256, elements: !1622)
!1622 = !{!1623, !1624, !1625}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1621, file: !377, line: 353, baseType: !15, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1621, file: !377, line: 354, baseType: !15, size: 64, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1621, file: !377, line: 356, baseType: !94, size: 128, offset: 128)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1609, file: !377, line: 359, baseType: !1236, size: 512, align: 128)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1229, file: !414, line: 409, baseType: !1628, size: 64, offset: 128)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!38, !1215, !1555}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1229, file: !414, line: 412, baseType: !1632, size: 64, offset: 192)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!698, !1215, !1561}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1229, file: !414, line: 414, baseType: !1636, size: 64, offset: 256)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{null, !1639}
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !414, line: 310, flags: DIFlagFwdDecl)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1229, file: !414, line: 416, baseType: !1642, size: 64, offset: 320)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!38, !412, !1215, !453, !22, !1645, !1646}
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1229, file: !414, line: 419, baseType: !1648, size: 64, offset: 384)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!38, !412, !1215, !453, !22, !22, !1235, !26}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1229, file: !414, line: 424, baseType: !1652, size: 64, offset: 448)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!1655, !1215, !1655}
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !34, line: 131, baseType: !89)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1229, file: !414, line: 425, baseType: !1657, size: 64, offset: 512)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{null, !1561, !1009, !1009}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1229, file: !414, line: 426, baseType: !1661, size: 64, offset: 576)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!698, !1561, !532}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1229, file: !414, line: 427, baseType: !1665, size: 64, offset: 640)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{null, !1561}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1229, file: !414, line: 428, baseType: !1669, size: 64, offset: 704)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!1006, !1672, !1694}
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !414, line: 373, size: 384, elements: !1674)
!1674 = !{!1675, !1676, !1677, !1681, !1682, !1683, !1684}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1673, file: !414, line: 374, baseType: !412, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1673, file: !414, line: 375, baseType: !453, size: 64, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1673, file: !414, line: 376, baseType: !1678, size: 64, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{null, !1672, !967}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1673, file: !414, line: 377, baseType: !26, size: 64, offset: 192)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1673, file: !414, line: 378, baseType: !38, size: 32, offset: 256)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1673, file: !414, line: 379, baseType: !58, size: 16, offset: 288)
!1684 = !DIDerivedType(tag: DW_TAG_member, scope: !1673, file: !414, line: 380, baseType: !1685, size: 64, offset: 320)
!1685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1673, file: !414, line: 380, size: 64, elements: !1686)
!1686 = !{!1687, !1690}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1685, file: !414, line: 386, baseType: !1688, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !414, line: 386, flags: DIFlagFwdDecl)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1685, file: !414, line: 395, baseType: !1691, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!1006, !26}
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !414, line: 69, flags: DIFlagFwdDecl)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1229, file: !414, line: 433, baseType: !1697, size: 64, offset: 768)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!38, !1215, !1561, !1561, !1700}
!1700 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !1701, line: 15, baseType: !22, size: 32, elements: !1702)
!1701 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!1702 = !{!1703, !1704, !1705, !1706}
!1703 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!1704 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!1705 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!1706 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1229, file: !414, line: 435, baseType: !1708, size: 64, offset: 832)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!38, !1561}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1229, file: !414, line: 436, baseType: !1712, size: 64, offset: 896)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!698, !1561, !1009, !1009}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1229, file: !414, line: 438, baseType: !1716, size: 64, offset: 960)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{null, !1561, !1719, !1719}
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1229, file: !414, line: 439, baseType: !1721, size: 64, offset: 1024)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!38, !1215, !1235}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1229, file: !414, line: 442, baseType: !1725, size: 64, offset: 1088)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!38, !1728, !412, !1730}
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !414, line: 66, flags: DIFlagFwdDecl)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1229, file: !414, line: 444, baseType: !1732, size: 64, offset: 1152)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{null, !412}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1229, file: !414, line: 445, baseType: !1736, size: 64, offset: 1216)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!38, !1672, !1694}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1216, file: !414, line: 486, baseType: !15, size: 64, offset: 896)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1216, file: !414, line: 487, baseType: !638, size: 320, offset: 960)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1216, file: !414, line: 488, baseType: !1742, size: 32, offset: 1280)
!1742 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1743, line: 8, baseType: !18)
!1743 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1216, file: !414, line: 489, baseType: !394, size: 32, offset: 1312)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1216, file: !414, line: 490, baseType: !94, size: 128, offset: 1344)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1216, file: !414, line: 491, baseType: !26, size: 64, offset: 1472)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1206, file: !1175, line: 180, baseType: !1748, size: 64, offset: 320)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!1006, !412, !1117, !1205, !711, !453, !1009}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1206, file: !1175, line: 182, baseType: !1748, size: 64, offset: 384)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1206, file: !1175, line: 184, baseType: !1753, size: 64, offset: 448)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!38, !412, !1117, !1205, !1363}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1194, file: !1175, line: 90, baseType: !1757, size: 64, offset: 192)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1194, file: !1175, line: 91, baseType: !1759, size: 64, offset: 256)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1165, file: !1112, line: 120, baseType: !1761, size: 64, offset: 192)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!1764, !1135}
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1766)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !1767, line: 39, size: 384, elements: !1768)
!1767 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!1768 = !{!1769, !1775, !1779, !1783, !1791, !1795}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1766, file: !1767, line: 40, baseType: !1770, size: 32)
!1770 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !1767, line: 26, baseType: !22, size: 32, elements: !1771)
!1771 = !{!1772, !1773, !1774}
!1772 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!1773 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!1774 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1766, file: !1767, line: 41, baseType: !1776, size: 64, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!698}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1766, file: !1767, line: 42, baseType: !1780, size: 64, offset: 128)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!26}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1766, file: !1767, line: 43, baseType: !1784, size: 64, offset: 192)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!1787, !1789}
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !1767, line: 19, flags: DIFlagFwdDecl)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1766, file: !1767, line: 44, baseType: !1792, size: 64, offset: 256)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!1787}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1766, file: !1767, line: 45, baseType: !884, size: 64, offset: 320)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1165, file: !1112, line: 121, baseType: !1797, size: 64, offset: 256)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!1787, !1135}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1165, file: !1112, line: 122, baseType: !1801, size: 64, offset: 320)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{null, !1135, !1804, !1805}
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1111, file: !1112, line: 70, baseType: !1807, size: 64, offset: 384)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1809, line: 190, size: 1152, elements: !1810)
!1809 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1810 = !{!1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1909, !1910, !1911, !1912, !1913, !1916}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1808, file: !1809, line: 191, baseType: !33, size: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1808, file: !1809, line: 192, baseType: !33, size: 32, offset: 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1808, file: !1809, line: 202, baseType: !1807, size: 64, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1808, file: !1809, line: 203, baseType: !701, size: 64, offset: 128)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1808, file: !1809, line: 205, baseType: !81, size: 192, align: 64, offset: 192)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1808, file: !1809, line: 207, baseType: !1787, size: 64, offset: 384)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1808, file: !1809, line: 208, baseType: !22, size: 32, offset: 448)
!1818 = !DIDerivedType(tag: DW_TAG_member, scope: !1808, file: !1809, line: 209, baseType: !1819, size: 256, offset: 512)
!1819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1808, file: !1809, line: 209, size: 256, elements: !1820)
!1820 = !{!1821, !1830, !1834}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1819, file: !1809, line: 210, baseType: !1822, size: 256)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1809, line: 153, size: 256, elements: !1823)
!1823 = !{!1824, !1825, !1826, !1829}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1822, file: !1809, line: 154, baseType: !15, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1822, file: !1809, line: 156, baseType: !261, size: 64, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1822, file: !1809, line: 162, baseType: !1827, size: 64, offset: 128)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1809, line: 162, flags: DIFlagFwdDecl)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1822, file: !1809, line: 167, baseType: !15, size: 64, offset: 192)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1819, file: !1809, line: 211, baseType: !1831, size: 64)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1809, line: 170, size: 64, elements: !1832)
!1832 = !{!1833}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1831, file: !1809, line: 171, baseType: !1807, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1819, file: !1809, line: 212, baseType: !1835, size: 256)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1809, line: 174, size: 256, elements: !1836)
!1836 = !{!1837, !1904, !1907, !1908}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1835, file: !1809, line: 175, baseType: !1838, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1840)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1809, line: 271, size: 768, elements: !1841)
!1841 = !{!1842, !1864, !1868, !1872, !1877, !1881, !1885, !1889, !1890, !1891, !1892, !1900}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1840, file: !1809, line: 276, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!38, !1846}
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1809, line: 251, size: 1216, elements: !1848)
!1848 = !{!1849, !1850, !1851, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1847, file: !1809, line: 253, baseType: !1807, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1847, file: !1809, line: 254, baseType: !412, size: 64, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1847, file: !1809, line: 255, baseType: !1852, size: 64, offset: 128)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !8, line: 66, flags: DIFlagFwdDecl)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1847, file: !1809, line: 256, baseType: !26, size: 64, offset: 192)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1847, file: !1809, line: 259, baseType: !441, size: 256, offset: 256)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1847, file: !1809, line: 260, baseType: !441, size: 256, offset: 512)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1847, file: !1809, line: 261, baseType: !38, size: 32, offset: 768)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1847, file: !1809, line: 262, baseType: !94, size: 128, offset: 832)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1847, file: !1809, line: 263, baseType: !711, size: 64, offset: 960)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1847, file: !1809, line: 265, baseType: !1009, size: 64, offset: 1024)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1847, file: !1809, line: 266, baseType: !698, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1847, file: !1809, line: 267, baseType: !698, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1847, file: !1809, line: 268, baseType: !1408, size: 64, offset: 1152)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1840, file: !1809, line: 277, baseType: !1865, size: 64, offset: 64)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{null, !1846}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1840, file: !1809, line: 290, baseType: !1869, size: 64, offset: 128)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!38, !1852, !26}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1840, file: !1809, line: 292, baseType: !1873, size: 64, offset: 192)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!26, !1852, !1876}
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1840, file: !1809, line: 293, baseType: !1878, size: 64, offset: 256)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!26, !1852, !26, !1876}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1840, file: !1809, line: 294, baseType: !1882, size: 64, offset: 320)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{null, !1852, !26}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1840, file: !1809, line: 296, baseType: !1886, size: 64, offset: 384)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!1006, !1846, !711, !1009, !453}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1840, file: !1809, line: 306, baseType: !1009, size: 64, offset: 448)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1840, file: !1809, line: 313, baseType: !698, size: 8, offset: 512)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1840, file: !1809, line: 314, baseType: !1886, size: 64, offset: 576)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1840, file: !1809, line: 317, baseType: !1893, size: 64, offset: 640)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!1896, !1846, !1898}
!1896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1897, line: 59, baseType: !22)
!1897 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !414, line: 61, flags: DIFlagFwdDecl)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1840, file: !1809, line: 320, baseType: !1901, size: 64, offset: 704)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!38, !1846, !1363}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1835, file: !1809, line: 176, baseType: !1905, size: 64, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1809, line: 35, flags: DIFlagFwdDecl)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1835, file: !1809, line: 177, baseType: !453, size: 64, offset: 128)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1835, file: !1809, line: 178, baseType: !1807, size: 64, offset: 192)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1808, file: !1809, line: 215, baseType: !26, size: 64, offset: 768)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1808, file: !1809, line: 221, baseType: !89, size: 64, offset: 832)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1808, file: !1809, line: 223, baseType: !60, size: 16, offset: 896)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1808, file: !1809, line: 224, baseType: !856, size: 16, offset: 912)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1808, file: !1809, line: 225, baseType: !1914, size: 64, offset: 960)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1809, line: 36, flags: DIFlagFwdDecl)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1808, file: !1809, line: 227, baseType: !421, size: 128, align: 64, offset: 1024)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1111, file: !1112, line: 71, baseType: !1918, size: 32, offset: 448)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1919, line: 19, size: 32, elements: !1920)
!1919 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1920 = !{!1921}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1918, file: !1919, line: 20, baseType: !28, size: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1111, file: !1112, line: 73, baseType: !22, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1111, file: !1112, line: 74, baseType: !22, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1111, file: !1112, line: 75, baseType: !22, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1111, file: !1112, line: 76, baseType: !22, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1111, file: !1112, line: 77, baseType: !22, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1108, file: !1093, line: 47, baseType: !1091, size: 64, offset: 512)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1108, file: !1093, line: 48, baseType: !1117, size: 64, offset: 576)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1108, file: !1093, line: 49, baseType: !1930, size: 64, offset: 640)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !1093, line: 49, flags: DIFlagFwdDecl)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1108, file: !1093, line: 50, baseType: !1933, size: 64, offset: 704)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1092, file: !1093, line: 418, baseType: !1935, size: 64, offset: 1408)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !1093, line: 53, size: 448, elements: !1937)
!1937 = !{!1938, !1939, !1944, !1948, !1952, !1956}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1936, file: !1093, line: 54, baseType: !1182, size: 128)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1936, file: !1093, line: 55, baseType: !1940, size: 64, offset: 128)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!1006, !1935, !1943, !711}
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1936, file: !1093, line: 57, baseType: !1945, size: 64, offset: 192)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!1006, !1935, !1943, !701, !1009}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1936, file: !1093, line: 59, baseType: !1949, size: 64, offset: 256)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{null, !1091, !701}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1936, file: !1093, line: 60, baseType: !1953, size: 64, offset: 320)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!38, !1091}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1936, file: !1093, line: 61, baseType: !1957, size: 64, offset: 384)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{null, !1091}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1092, file: !1093, line: 419, baseType: !701, size: 64, offset: 1472)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1092, file: !1093, line: 420, baseType: !701, size: 64, offset: 1536)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1092, file: !1093, line: 421, baseType: !1117, size: 64, offset: 1600)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1092, file: !1093, line: 424, baseType: !1964, size: 64, offset: 1664)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1966)
!1966 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !1093, line: 424, flags: DIFlagFwdDecl)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1092, file: !1093, line: 425, baseType: !1968, size: 64, offset: 1728)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !630)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1092, file: !1093, line: 426, baseType: !22, size: 32, offset: 1792)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1092, file: !1093, line: 435, baseType: !441, size: 256, offset: 1856)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1092, file: !1093, line: 437, baseType: !1973, size: 64, offset: 2112)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1975, line: 69, size: 320, elements: !1976)
!1975 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1976 = !{!1977, !1978, !1979, !1996, !1998, !2002, !2003}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1974, file: !1975, line: 70, baseType: !701, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1974, file: !1975, line: 71, baseType: !1091, size: 64, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1974, file: !1975, line: 72, baseType: !1980, size: 64, offset: 128)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1982)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1975, line: 47, size: 256, elements: !1983)
!1983 = !{!1984, !1985, !1991, !1995}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1982, file: !1975, line: 49, baseType: !22, size: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1982, file: !1975, line: 51, baseType: !1986, size: 64, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!38, !701, !1989}
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1974)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1982, file: !1975, line: 53, baseType: !1992, size: 64, offset: 128)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!38, !711, !1989}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1982, file: !1975, line: 55, baseType: !884, size: 64, offset: 192)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1974, file: !1975, line: 73, baseType: !1997, size: 16, offset: 192)
!1997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1974, file: !1975, line: 74, baseType: !1999, size: 8, offset: 208)
!1999 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !19, line: 16, baseType: !2000)
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !21, line: 20, baseType: !2001)
!2001 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1974, file: !1975, line: 75, baseType: !209, size: 8, offset: 216)
!2003 = !DIDerivedType(tag: DW_TAG_member, scope: !1974, file: !1975, line: 76, baseType: !2004, size: 64, offset: 256)
!2004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1974, file: !1975, line: 76, size: 64, elements: !2005)
!2005 = !{!2006, !2007, !2014}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2004, file: !1975, line: 77, baseType: !26, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2004, file: !1975, line: 78, baseType: !2008, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2010)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1975, line: 86, size: 128, elements: !2011)
!2011 = !{!2012, !2013}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2010, file: !1975, line: 87, baseType: !22, size: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2010, file: !1975, line: 88, baseType: !711, size: 64, offset: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2004, file: !1975, line: 79, baseType: !2015, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2017)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1975, line: 92, size: 256, elements: !2018)
!2018 = !{!2019, !2020, !2021, !2023, !2024}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2017, file: !1975, line: 94, baseType: !22, size: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2017, file: !1975, line: 95, baseType: !22, size: 32, offset: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2017, file: !1975, line: 96, baseType: !2022, size: 64, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2017, file: !1975, line: 97, baseType: !1980, size: 64, offset: 128)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2017, file: !1975, line: 98, baseType: !26, size: 64, offset: 192)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1092, file: !1093, line: 438, baseType: !22, size: 32, offset: 2176)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1092, file: !1093, line: 441, baseType: !22, size: 32, offset: 2208)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1092, file: !1093, line: 442, baseType: !1964, size: 64, offset: 2240)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1092, file: !1093, line: 443, baseType: !1968, size: 64, offset: 2304)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1092, file: !1093, line: 444, baseType: !698, size: 8, offset: 2368)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1092, file: !1093, line: 451, baseType: !698, size: 8, offset: 2376)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1092, file: !1093, line: 454, baseType: !22, size: 32, offset: 2400)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1092, file: !1093, line: 455, baseType: !2033, size: 64, offset: 2432)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2035, line: 23, size: 96, elements: !2036)
!2035 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2036 = !{!2037, !2038, !2039}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2034, file: !2035, line: 24, baseType: !38, size: 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2034, file: !2035, line: 24, baseType: !38, size: 32, offset: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2034, file: !2035, line: 24, baseType: !38, size: 32, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1092, file: !1093, line: 458, baseType: !2041, size: 64, offset: 2496)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!38}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1092, file: !1093, line: 460, baseType: !2045, size: 4032, align: 512, offset: 2560)
!2045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2046, size: 4032, elements: !2062)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !1093, line: 362, size: 576, elements: !2047)
!2047 = !{!2048, !2049, !2050}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2046, file: !1093, line: 363, baseType: !26, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2046, file: !1093, line: 364, baseType: !22, size: 32, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2046, file: !1093, line: 367, baseType: !2051, size: 448, offset: 128)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !1093, line: 319, size: 448, elements: !2052)
!2052 = !{!2053, !2054}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2051, file: !1093, line: 320, baseType: !1091, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2051, file: !1093, line: 321, baseType: !2055, size: 384, offset: 64)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2056, line: 40, size: 384, elements: !2057)
!2056 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2057 = !{!2058}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2055, file: !2056, line: 41, baseType: !2059, size: 384, align: 64)
!2059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 384, align: 64, elements: !2060)
!2060 = !{!2061}
!2061 = !DISubrange(count: 2)
!2062 = !{!2063}
!2063 = !DISubrange(count: 7)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1092, file: !1093, line: 463, baseType: !2065, size: 192, offset: 6592)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2066, line: 8, size: 192, elements: !2067)
!2066 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2067 = !{!2068, !2069, !2071}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2065, file: !2066, line: 10, baseType: !22, size: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2065, file: !2066, line: 11, baseType: !2070, size: 64, offset: 64)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2065, file: !2066, line: 12, baseType: !2072, size: 64, offset: 128)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2074, line: 59, size: 48, elements: !2075)
!2074 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2075 = !{!2076, !2079, !2080, !2081, !2082, !2083}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2073, file: !2074, line: 60, baseType: !2077, size: 16)
!2077 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !19, line: 18, baseType: !2078)
!2078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !21, line: 23, baseType: !666)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2073, file: !2074, line: 61, baseType: !2077, size: 16, offset: 16)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2073, file: !2074, line: 63, baseType: !22, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2073, file: !2074, line: 64, baseType: !22, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2073, file: !2074, line: 65, baseType: !22, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2073, file: !2074, line: 66, baseType: !22, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1092, file: !1093, line: 465, baseType: !15, size: 64, offset: 6784)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1092, file: !1093, line: 469, baseType: !22, size: 32, offset: 6848)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1092, file: !1093, line: 470, baseType: !94, size: 128, offset: 6912)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1092, file: !1093, line: 471, baseType: !2088, size: 64, offset: 7040)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2090, line: 33, size: 96, elements: !2091)
!2090 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2091 = !{!2092, !2093, !2094, !2095}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2089, file: !2090, line: 37, baseType: !38, size: 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2089, file: !2090, line: 43, baseType: !38, size: 32, offset: 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2089, file: !2090, line: 45, baseType: !60, size: 16, offset: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2089, file: !2090, line: 47, baseType: !60, size: 16, offset: 80)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1092, file: !1093, line: 476, baseType: !2097, size: 64, offset: 7104)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !1093, line: 378, size: 256, elements: !2099)
!2099 = !{!2100, !2116, !2117, !2118}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2098, file: !1093, line: 379, baseType: !2101, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2103, line: 204, baseType: !2104)
!2103 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2103, line: 197, size: 192, elements: !2105)
!2105 = !{!2106, !2108, !2109, !2110, !2112, !2114}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2104, file: !2103, line: 198, baseType: !2107, size: 32)
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2103, line: 21, baseType: !20)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2104, file: !2103, line: 199, baseType: !211, size: 8, offset: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2104, file: !2103, line: 200, baseType: !211, size: 8, offset: 40)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2104, file: !2103, line: 201, baseType: !2111, size: 16, offset: 48)
!2111 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2103, line: 17, baseType: !59)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2104, file: !2103, line: 202, baseType: !2113, size: 64, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2103, line: 16, baseType: !90)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2104, file: !2103, line: 203, baseType: !2115, size: 64, offset: 128)
!2115 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2103, line: 22, baseType: !90)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2098, file: !1093, line: 380, baseType: !22, size: 32, offset: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2098, file: !1093, line: 381, baseType: !711, size: 64, offset: 128)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2098, file: !1093, line: 382, baseType: !711, size: 64, offset: 192)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1092, file: !1093, line: 477, baseType: !2098, size: 256, offset: 7168)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1092, file: !1093, line: 480, baseType: !2121, size: 64, offset: 7424)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !1093, line: 480, flags: DIFlagFwdDecl)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1092, file: !1093, line: 483, baseType: !2124, size: 64, offset: 7488)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !1093, line: 483, flags: DIFlagFwdDecl)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1092, file: !1093, line: 488, baseType: !711, size: 64, offset: 7552)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1092, file: !1093, line: 492, baseType: !26, size: 64, offset: 7616)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1092, file: !1093, line: 493, baseType: !22, size: 32, offset: 7680)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1092, file: !1093, line: 495, baseType: !26, size: 64, offset: 7744)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1092, file: !1093, line: 496, baseType: !22, size: 32, offset: 7808)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1092, file: !1093, line: 499, baseType: !22, size: 32, offset: 7840)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1092, file: !1093, line: 500, baseType: !2133, size: 64, offset: 7872)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2135, line: 45, baseType: !2136)
!2135 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1092, file: !1093, line: 503, baseType: !22, size: 32, offset: 7936)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1092, file: !1093, line: 504, baseType: !2139, size: 64, offset: 8000)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2142, line: 96, size: 192, elements: !2143)
!2142 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2143 = !{!2144, !2145, !2210, !2213}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2141, file: !2142, line: 97, baseType: !22, size: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2141, file: !2142, line: 98, baseType: !2146, size: 64, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2142, line: 24, size: 3072, elements: !2148)
!2148 = !{!2149, !2151, !2152, !2153, !2154, !2168, !2169, !2170, !2171, !2183, !2195, !2196, !2207, !2208, !2209}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2147, file: !2142, line: 26, baseType: !2150, size: 128)
!2150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 128, elements: !2060)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2147, file: !2142, line: 27, baseType: !2150, size: 128, offset: 128)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2147, file: !2142, line: 28, baseType: !38, size: 32, offset: 256)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2147, file: !2142, line: 31, baseType: !394, size: 32, align: 512, offset: 512)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2147, file: !2142, line: 32, baseType: !2155, size: 960, offset: 576)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2156, line: 206, size: 960, elements: !2157)
!2156 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2157 = !{!2158, !2159, !2162, !2164, !2165, !2167}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2155, file: !2156, line: 207, baseType: !424, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2155, file: !2156, line: 208, baseType: !2160, size: 256, offset: 64)
!2160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2161, size: 256, elements: !501)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2155, file: !2156, line: 209, baseType: !2163, size: 256, offset: 320)
!2163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 256, elements: !501)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2155, file: !2156, line: 213, baseType: !967, size: 64, offset: 576)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2155, file: !2156, line: 215, baseType: !2166, size: 256, offset: 640)
!2166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !967, size: 256, elements: !501)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2155, file: !2156, line: 216, baseType: !209, size: 8, offset: 896)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2147, file: !2142, line: 33, baseType: !15, size: 64, offset: 1536)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2147, file: !2142, line: 34, baseType: !15, size: 64, offset: 1600)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2147, file: !2142, line: 35, baseType: !698, size: 8, offset: 1664)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2147, file: !2142, line: 36, baseType: !2172, size: 320, offset: 1728)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2173, line: 11, size: 320, elements: !2174)
!2173 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2174 = !{!2175, !2176, !2177, !2182}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2172, file: !2173, line: 16, baseType: !496, size: 128)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2172, file: !2173, line: 17, baseType: !15, size: 64, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2172, file: !2173, line: 18, baseType: !2178, size: 64, offset: 192)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{null, !2181}
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2172, file: !2173, line: 19, baseType: !18, size: 32, offset: 256)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2147, file: !2142, line: 37, baseType: !2184, size: 256, offset: 2048)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2185, line: 98, size: 256, elements: !2186)
!2185 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2186 = !{!2187, !2188, !2189}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2184, file: !2185, line: 99, baseType: !434, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2184, file: !2185, line: 100, baseType: !94, size: 128, offset: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2184, file: !2185, line: 101, baseType: !2190, size: 64, offset: 192)
!2190 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2185, line: 21, baseType: !2191)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{null, !2194}
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2147, file: !2142, line: 38, baseType: !421, size: 128, align: 64, offset: 2304)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2147, file: !2142, line: 39, baseType: !2197, size: 64, offset: 2432)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2142, line: 49, size: 768, elements: !2199)
!2199 = !{!2200, !2201, !2202, !2203, !2204, !2205, !2206}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2198, file: !2142, line: 50, baseType: !394, size: 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2198, file: !2142, line: 51, baseType: !2163, size: 256, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2198, file: !2142, line: 53, baseType: !2163, size: 256, offset: 320)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2198, file: !2142, line: 54, baseType: !15, size: 64, offset: 576)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2198, file: !2142, line: 55, baseType: !2197, size: 64, offset: 640)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2198, file: !2142, line: 56, baseType: !38, size: 32, offset: 704)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2198, file: !2142, line: 57, baseType: !38, size: 32, offset: 736)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2147, file: !2142, line: 40, baseType: !15, size: 64, offset: 2496)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2147, file: !2142, line: 42, baseType: !38, size: 32, offset: 2560)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2147, file: !2142, line: 43, baseType: !2140, size: 64, offset: 2624)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2141, file: !2142, line: 99, baseType: !2211, offset: 128)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2212, line: 211, elements: !405)
!2212 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2141, file: !2142, line: 100, baseType: !2214, size: 64, offset: 128)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2142, line: 63, size: 3008, elements: !2216)
!2216 = !{!2217, !2218, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2248}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2215, file: !2142, line: 64, baseType: !2197, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2215, file: !2142, line: 65, baseType: !2219, size: 192, offset: 64)
!2219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2197, size: 192, elements: !479)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2215, file: !2142, line: 67, baseType: !38, size: 32, offset: 256)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2215, file: !2142, line: 68, baseType: !441, size: 256, offset: 320)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2215, file: !2142, line: 69, baseType: !394, size: 32, offset: 576)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2215, file: !2142, line: 70, baseType: !441, size: 256, offset: 640)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2215, file: !2142, line: 71, baseType: !15, size: 64, offset: 896)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2215, file: !2142, line: 72, baseType: !15, size: 64, offset: 960)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2215, file: !2142, line: 73, baseType: !15, size: 64, offset: 1024)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2215, file: !2142, line: 74, baseType: !15, size: 64, offset: 1088)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2215, file: !2142, line: 75, baseType: !15, size: 64, offset: 1152)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2215, file: !2142, line: 76, baseType: !15, size: 64, offset: 1216)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2215, file: !2142, line: 77, baseType: !15, size: 64, offset: 1280)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2215, file: !2142, line: 78, baseType: !15, size: 64, offset: 1344)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2215, file: !2142, line: 79, baseType: !698, size: 8, offset: 1408)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2215, file: !2142, line: 80, baseType: !15, size: 64, offset: 1472)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2215, file: !2142, line: 81, baseType: !441, size: 256, offset: 1536)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2215, file: !2142, line: 82, baseType: !1321, size: 256, offset: 1792)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2215, file: !2142, line: 84, baseType: !33, size: 32, offset: 2048)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2215, file: !2142, line: 87, baseType: !15, size: 64, offset: 2112)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2215, file: !2142, line: 88, baseType: !15, size: 64, offset: 2176)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2215, file: !2142, line: 89, baseType: !2240, size: 704, offset: 2240)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2185, line: 111, size: 704, elements: !2241)
!2241 = !{!2242, !2243, !2244, !2247}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2240, file: !2185, line: 112, baseType: !2184, size: 256)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2240, file: !2185, line: 113, baseType: !2172, size: 320, offset: 256)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2240, file: !2185, line: 116, baseType: !2245, size: 64, offset: 576)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2185, line: 18, flags: DIFlagFwdDecl)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2240, file: !2185, line: 117, baseType: !38, size: 32, offset: 640)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2215, file: !2142, line: 90, baseType: !2140, size: 64, offset: 2944)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1092, file: !1093, line: 515, baseType: !2250, size: 64, offset: 8064)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2252, line: 117, size: 128, elements: !2253)
!2252 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2253 = !{!2254, !2255, !2256}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2251, file: !2252, line: 118, baseType: !630, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2251, file: !2252, line: 119, baseType: !630, size: 32, offset: 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2251, file: !2252, line: 120, baseType: !967, size: 64, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1092, file: !1093, line: 516, baseType: !22, size: 32, offset: 8128)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1092, file: !1093, line: 519, baseType: !22, size: 32, offset: 8160)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1092, file: !1093, line: 520, baseType: !2260, size: 64, offset: 8192)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1092, file: !1093, line: 523, baseType: !2262, size: 64, offset: 8256)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !1093, line: 523, flags: DIFlagFwdDecl)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1092, file: !1093, line: 524, baseType: !22, size: 32, offset: 8320)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1092, file: !1093, line: 525, baseType: !2267, size: 64, offset: 8384)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !1093, line: 525, flags: DIFlagFwdDecl)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1092, file: !1093, line: 526, baseType: !22, size: 32, offset: 8448)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1092, file: !1093, line: 533, baseType: !26, size: 64, offset: 8512)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1092, file: !1093, line: 534, baseType: !22, size: 32, offset: 8576)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1092, file: !1093, line: 535, baseType: !2274, size: 64, offset: 8640)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1092, file: !1093, line: 536, baseType: !22, size: 32, offset: 8704)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1092, file: !1093, line: 539, baseType: !38, size: 32, offset: 8736)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1092, file: !1093, line: 540, baseType: !2278, size: 64, offset: 8768)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2280, line: 32, size: 64, elements: !2281)
!2280 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2281 = !{!2282, !2283}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2279, file: !2280, line: 33, baseType: !630, size: 32)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2279, file: !2280, line: 34, baseType: !630, size: 32, offset: 32)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1092, file: !1093, line: 563, baseType: !94, size: 128, offset: 8832)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1092, file: !1093, line: 565, baseType: !94, size: 128, offset: 8960)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1092, file: !1093, line: 568, baseType: !2287, size: 64, offset: 9088)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{null}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1092, file: !1093, line: 570, baseType: !33, size: 32, offset: 9152)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1068, file: !414, line: 2382, baseType: !1067, size: 64, offset: 448)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1068, file: !414, line: 2383, baseType: !492, size: 64, offset: 512)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1068, file: !414, line: 2385, baseType: !2294, offset: 576)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2212, line: 206, elements: !405)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1068, file: !414, line: 2386, baseType: !2294, offset: 576)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1068, file: !414, line: 2387, baseType: !2294, offset: 576)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1068, file: !414, line: 2388, baseType: !2298, offset: 576)
!2298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2294, elements: !479)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1068, file: !414, line: 2390, baseType: !2294, offset: 576)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1068, file: !414, line: 2391, baseType: !2294, offset: 576)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1068, file: !414, line: 2392, baseType: !2294, offset: 576)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1068, file: !414, line: 2393, baseType: !2294, offset: 576)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1059, file: !414, line: 1197, baseType: !2304, size: 64, offset: 384)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2306)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !414, line: 2057, size: 1664, elements: !2307)
!2307 = !{!2308, !2312, !2316, !2317, !2321, !2325, !2329, !2330, !2331, !2335, !2343, !2347, !2348, !2349, !2355, !2359, !2360, !2364, !2365, !2366, !2367, !2371, !2375, !2428, !2443, !2444}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2306, file: !414, line: 2058, baseType: !2309, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!852, !1058}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2306, file: !414, line: 2059, baseType: !2313, size: 64, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{null, !852}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2306, file: !414, line: 2060, baseType: !2313, size: 64, offset: 128)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2306, file: !414, line: 2062, baseType: !2318, size: 64, offset: 192)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{null, !852, !38}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2306, file: !414, line: 2063, baseType: !2322, size: 64, offset: 256)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!38, !852, !1555}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2306, file: !414, line: 2064, baseType: !2326, size: 64, offset: 320)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!38, !852}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2306, file: !414, line: 2065, baseType: !2313, size: 64, offset: 384)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2306, file: !414, line: 2066, baseType: !1087, size: 64, offset: 448)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2306, file: !414, line: 2067, baseType: !2332, size: 64, offset: 512)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!38, !1058, !38}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2306, file: !414, line: 2068, baseType: !2336, size: 64, offset: 576)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!38, !1058, !2339}
!2339 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !414, line: 2052, baseType: !22, size: 32, elements: !2340)
!2340 = !{!2341, !2342}
!2341 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!2342 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2306, file: !414, line: 2069, baseType: !2344, size: 64, offset: 640)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!38, !1058}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2306, file: !414, line: 2070, baseType: !2336, size: 64, offset: 704)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2306, file: !414, line: 2071, baseType: !2344, size: 64, offset: 768)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2306, file: !414, line: 2072, baseType: !2350, size: 64, offset: 832)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!38, !817, !2353}
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !414, line: 62, flags: DIFlagFwdDecl)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2306, file: !414, line: 2073, baseType: !2356, size: 64, offset: 896)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!38, !1058, !2070, !711}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2306, file: !414, line: 2074, baseType: !1087, size: 64, offset: 960)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2306, file: !414, line: 2076, baseType: !2361, size: 64, offset: 1024)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!38, !1852, !817}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2306, file: !414, line: 2077, baseType: !2361, size: 64, offset: 1088)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2306, file: !414, line: 2078, baseType: !2361, size: 64, offset: 1152)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2306, file: !414, line: 2079, baseType: !2361, size: 64, offset: 1216)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2306, file: !414, line: 2081, baseType: !2368, size: 64, offset: 1280)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!1006, !1058, !38, !711, !1009, !453}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2306, file: !414, line: 2082, baseType: !2372, size: 64, offset: 1344)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!1006, !1058, !38, !701, !1009, !453}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2306, file: !414, line: 2083, baseType: !2376, size: 64, offset: 1408)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!2379, !852}
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !2382, line: 296, size: 1664, elements: !2383)
!2382 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!2383 = !{!2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2413, !2414, !2415}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2381, file: !2382, line: 297, baseType: !496, size: 128)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2381, file: !2382, line: 298, baseType: !94, size: 128, offset: 128)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2381, file: !2382, line: 299, baseType: !94, size: 128, offset: 256)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2381, file: !2382, line: 300, baseType: !94, size: 128, offset: 384)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2381, file: !2382, line: 301, baseType: !441, size: 256, offset: 512)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2381, file: !2382, line: 302, baseType: !394, size: 32, offset: 768)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2381, file: !2382, line: 303, baseType: !33, size: 32, offset: 800)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2381, file: !2382, line: 304, baseType: !1058, size: 64, offset: 832)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2381, file: !2382, line: 305, baseType: !2393, size: 64, offset: 896)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !2382, line: 68, size: 64, elements: !2394)
!2394 = !{!2395, !2407}
!2395 = !DIDerivedType(tag: DW_TAG_member, scope: !2393, file: !2382, line: 69, baseType: !2396, size: 32)
!2396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2393, file: !2382, line: 69, size: 32, elements: !2397)
!2397 = !{!2398, !2399, !2400}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2396, file: !2382, line: 70, baseType: !579, size: 32)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2396, file: !2382, line: 71, baseType: !597, size: 32)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2396, file: !2382, line: 72, baseType: !2401, size: 32)
!2401 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2402, line: 24, baseType: !2403)
!2402 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2402, line: 22, size: 32, elements: !2404)
!2404 = !{!2405}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2403, file: !2402, line: 23, baseType: !2406, size: 32)
!2406 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2402, line: 20, baseType: !585)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2393, file: !2382, line: 74, baseType: !2408, size: 32, offset: 32)
!2408 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !2382, line: 54, baseType: !22, size: 32, elements: !2409)
!2409 = !{!2410, !2411, !2412}
!2410 = !DIEnumerator(name: "USRQUOTA", value: 0)
!2411 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!2412 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2381, file: !2382, line: 306, baseType: !453, size: 64, offset: 960)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2381, file: !2382, line: 307, baseType: !15, size: 64, offset: 1024)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2381, file: !2382, line: 308, baseType: !2416, size: 576, offset: 1088)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !2382, line: 205, size: 576, elements: !2417)
!2417 = !{!2418, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2416, file: !2382, line: 206, baseType: !2419, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !2382, line: 66, baseType: !107)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2416, file: !2382, line: 207, baseType: !2419, size: 64, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2416, file: !2382, line: 208, baseType: !2419, size: 64, offset: 128)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2416, file: !2382, line: 209, baseType: !2419, size: 64, offset: 192)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2416, file: !2382, line: 210, baseType: !2419, size: 64, offset: 256)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2416, file: !2382, line: 211, baseType: !2419, size: 64, offset: 320)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2416, file: !2382, line: 212, baseType: !2419, size: 64, offset: 384)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2416, file: !2382, line: 213, baseType: !654, size: 64, offset: 448)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2416, file: !2382, line: 214, baseType: !654, size: 64, offset: 512)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2306, file: !414, line: 2085, baseType: !2429, size: 64, offset: 1472)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!967, !1058, !2432}
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2434, line: 15, size: 256, elements: !2435)
!2434 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2435 = !{!2436, !2437, !2438, !2439, !2440}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2433, file: !2434, line: 16, baseType: !532, size: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2433, file: !2434, line: 19, baseType: !38, size: 32, offset: 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2433, file: !2434, line: 26, baseType: !15, size: 64, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2433, file: !2434, line: 33, baseType: !15, size: 64, offset: 128)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2433, file: !2434, line: 36, baseType: !2441, size: 64, offset: 192)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !377, line: 33, flags: DIFlagFwdDecl)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2306, file: !414, line: 2087, baseType: !2429, size: 64, offset: 1536)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2306, file: !414, line: 2089, baseType: !1087, size: 64, offset: 1600)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1059, file: !414, line: 1198, baseType: !2446, size: 64, offset: 448)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2448)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !2382, line: 324, size: 704, elements: !2449)
!2449 = !{!2450, !2454, !2458, !2462, !2463, !2464, !2465, !2466, !2471, !2476, !2480}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2448, file: !2382, line: 325, baseType: !2451, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!38, !2380}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2448, file: !2382, line: 326, baseType: !2455, size: 64, offset: 64)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!2380, !1058, !38}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2448, file: !2382, line: 327, baseType: !2459, size: 64, offset: 128)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{null, !2380}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2448, file: !2382, line: 328, baseType: !2451, size: 64, offset: 192)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2448, file: !2382, line: 329, baseType: !2451, size: 64, offset: 256)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2448, file: !2382, line: 330, baseType: !2451, size: 64, offset: 320)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2448, file: !2382, line: 331, baseType: !2332, size: 64, offset: 384)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2448, file: !2382, line: 334, baseType: !2467, size: 64, offset: 448)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!2470, !852}
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2448, file: !2382, line: 335, baseType: !2472, size: 64, offset: 512)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!38, !852, !2475}
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2448, file: !2382, line: 337, baseType: !2477, size: 64, offset: 576)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!38, !852, !2470}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2448, file: !2382, line: 339, baseType: !2481, size: 64, offset: 640)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!38, !1058, !2484}
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1059, file: !414, line: 1199, baseType: !2486, size: 64, offset: 512)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2488)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !2382, line: 430, size: 704, elements: !2489)
!2489 = !{!2490, !2494, !2495, !2499, !2500, !2501, !2516, !2539, !2543, !2544, !2567}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2488, file: !2382, line: 431, baseType: !2491, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!38, !1058, !38, !38, !975}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2488, file: !2382, line: 432, baseType: !2332, size: 64, offset: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2488, file: !2382, line: 433, baseType: !2496, size: 64, offset: 128)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!38, !1058, !22}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2488, file: !2382, line: 434, baseType: !2496, size: 64, offset: 192)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2488, file: !2382, line: 435, baseType: !2332, size: 64, offset: 256)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2488, file: !2382, line: 436, baseType: !2502, size: 64, offset: 320)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!38, !1058, !38, !2505}
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !2382, line: 417, size: 256, elements: !2507)
!2507 = !{!2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2506, file: !2382, line: 418, baseType: !38, size: 32)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2506, file: !2382, line: 419, baseType: !22, size: 32, offset: 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2506, file: !2382, line: 420, baseType: !22, size: 32, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2506, file: !2382, line: 422, baseType: !22, size: 32, offset: 96)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2506, file: !2382, line: 423, baseType: !22, size: 32, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2506, file: !2382, line: 424, baseType: !22, size: 32, offset: 160)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2506, file: !2382, line: 425, baseType: !22, size: 32, offset: 192)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2506, file: !2382, line: 426, baseType: !22, size: 32, offset: 224)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2488, file: !2382, line: 437, baseType: !2517, size: 64, offset: 384)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!38, !1058, !2393, !2520}
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !2382, line: 345, size: 960, elements: !2522)
!2522 = !{!2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2521, file: !2382, line: 346, baseType: !38, size: 32)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2521, file: !2382, line: 347, baseType: !89, size: 64, offset: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2521, file: !2382, line: 348, baseType: !89, size: 64, offset: 128)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2521, file: !2382, line: 349, baseType: !89, size: 64, offset: 192)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2521, file: !2382, line: 350, baseType: !89, size: 64, offset: 256)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2521, file: !2382, line: 351, baseType: !89, size: 64, offset: 320)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2521, file: !2382, line: 352, baseType: !89, size: 64, offset: 384)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2521, file: !2382, line: 353, baseType: !105, size: 64, offset: 448)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2521, file: !2382, line: 355, baseType: !105, size: 64, offset: 512)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2521, file: !2382, line: 356, baseType: !38, size: 32, offset: 576)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2521, file: !2382, line: 357, baseType: !38, size: 32, offset: 608)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2521, file: !2382, line: 358, baseType: !89, size: 64, offset: 640)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2521, file: !2382, line: 359, baseType: !89, size: 64, offset: 704)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2521, file: !2382, line: 360, baseType: !89, size: 64, offset: 768)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2521, file: !2382, line: 361, baseType: !105, size: 64, offset: 832)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2521, file: !2382, line: 362, baseType: !38, size: 32, offset: 896)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2488, file: !2382, line: 438, baseType: !2540, size: 64, offset: 448)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!38, !1058, !2484, !2520}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2488, file: !2382, line: 440, baseType: !2517, size: 64, offset: 512)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2488, file: !2382, line: 441, baseType: !2545, size: 64, offset: 576)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!38, !1058, !2548}
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !2382, line: 411, size: 1408, elements: !2550)
!2550 = !{!2551, !2552}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2549, file: !2382, line: 412, baseType: !22, size: 32)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2549, file: !2382, line: 413, baseType: !2553, size: 1344, offset: 64)
!2553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2554, size: 1344, elements: !479)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !2382, line: 397, size: 448, elements: !2555)
!2555 = !{!2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2566}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2554, file: !2382, line: 398, baseType: !22, size: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2554, file: !2382, line: 399, baseType: !22, size: 32, offset: 32)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2554, file: !2382, line: 401, baseType: !22, size: 32, offset: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2554, file: !2382, line: 402, baseType: !22, size: 32, offset: 96)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2554, file: !2382, line: 403, baseType: !22, size: 32, offset: 128)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2554, file: !2382, line: 404, baseType: !22, size: 32, offset: 160)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2554, file: !2382, line: 405, baseType: !22, size: 32, offset: 192)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2554, file: !2382, line: 406, baseType: !91, size: 64, offset: 256)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2554, file: !2382, line: 407, baseType: !2565, size: 64, offset: 320)
!2565 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !34, line: 132, baseType: !89)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2554, file: !2382, line: 408, baseType: !2565, size: 64, offset: 384)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2488, file: !2382, line: 442, baseType: !2496, size: 64, offset: 640)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1059, file: !414, line: 1200, baseType: !2569, size: 64, offset: 576)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2571)
!2571 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !414, line: 54, flags: DIFlagFwdDecl)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1059, file: !414, line: 1201, baseType: !15, size: 64, offset: 640)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1059, file: !414, line: 1202, baseType: !15, size: 64, offset: 704)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1059, file: !414, line: 1203, baseType: !15, size: 64, offset: 768)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1059, file: !414, line: 1204, baseType: !817, size: 64, offset: 832)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1059, file: !414, line: 1205, baseType: !638, size: 320, offset: 896)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1059, file: !414, line: 1206, baseType: !38, size: 32, offset: 1216)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1059, file: !414, line: 1207, baseType: !33, size: 32, offset: 1248)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1059, file: !414, line: 1209, baseType: !26, size: 64, offset: 1280)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1059, file: !414, line: 1211, baseType: !2581, size: 64, offset: 1344)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2584)
!2584 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !414, line: 1211, flags: DIFlagFwdDecl)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1059, file: !414, line: 1223, baseType: !2586, size: 64, offset: 1408)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !829, line: 34, size: 64, elements: !2587)
!2587 = !{!2588}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2586, file: !829, line: 35, baseType: !832, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1059, file: !414, line: 1224, baseType: !94, size: 128, offset: 1472)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1059, file: !414, line: 1225, baseType: !2591, size: 64, offset: 1600)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !414, line: 1225, flags: DIFlagFwdDecl)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1059, file: !414, line: 1226, baseType: !2594, size: 64, offset: 1664)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !414, line: 1226, flags: DIFlagFwdDecl)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1059, file: !414, line: 1227, baseType: !2597, size: 64, offset: 1728)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !414, line: 50, flags: DIFlagFwdDecl)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1059, file: !414, line: 1228, baseType: !2600, size: 64, offset: 1792)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !414, line: 1228, flags: DIFlagFwdDecl)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1059, file: !414, line: 1229, baseType: !496, size: 128, offset: 1856)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1059, file: !414, line: 1230, baseType: !22, size: 32, offset: 1984)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1059, file: !414, line: 1231, baseType: !2605, size: 2496, offset: 2048)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !2382, line: 521, size: 2496, elements: !2606)
!2606 = !{!2607, !2608, !2609, !2611, !2643}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2605, file: !2382, line: 522, baseType: !22, size: 32)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2605, file: !2382, line: 523, baseType: !638, size: 320, offset: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2605, file: !2382, line: 524, baseType: !2610, size: 192, offset: 384)
!2610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !852, size: 192, elements: !479)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2605, file: !2382, line: 525, baseType: !2612, size: 1728, offset: 576)
!2612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2613, size: 1728, elements: !479)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !2382, line: 222, size: 576, elements: !2614)
!2614 = !{!2615, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2613, file: !2382, line: 223, baseType: !2616, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !2382, line: 445, size: 256, elements: !2618)
!2618 = !{!2619, !2620, !2633, !2634}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2617, file: !2382, line: 446, baseType: !38, size: 32)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2617, file: !2382, line: 447, baseType: !2621, size: 64, offset: 64)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2623)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !2382, line: 312, size: 512, elements: !2624)
!2624 = !{!2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2623, file: !2382, line: 313, baseType: !2332, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2623, file: !2382, line: 314, baseType: !2332, size: 64, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2623, file: !2382, line: 315, baseType: !2332, size: 64, offset: 128)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2623, file: !2382, line: 316, baseType: !2332, size: 64, offset: 192)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2623, file: !2382, line: 317, baseType: !2451, size: 64, offset: 256)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2623, file: !2382, line: 318, baseType: !2451, size: 64, offset: 320)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2623, file: !2382, line: 319, baseType: !2451, size: 64, offset: 384)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2623, file: !2382, line: 320, baseType: !2481, size: 64, offset: 448)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2617, file: !2382, line: 448, baseType: !1091, size: 64, offset: 128)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2617, file: !2382, line: 449, baseType: !2616, size: 64, offset: 192)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2613, file: !2382, line: 224, baseType: !38, size: 32, offset: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2613, file: !2382, line: 226, baseType: !94, size: 128, offset: 128)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2613, file: !2382, line: 227, baseType: !15, size: 64, offset: 256)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2613, file: !2382, line: 228, baseType: !22, size: 32, offset: 320)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2613, file: !2382, line: 229, baseType: !22, size: 32, offset: 352)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2613, file: !2382, line: 230, baseType: !2419, size: 64, offset: 384)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2613, file: !2382, line: 231, baseType: !2419, size: 64, offset: 448)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2613, file: !2382, line: 232, baseType: !26, size: 64, offset: 512)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2605, file: !2382, line: 526, baseType: !2644, size: 192, offset: 2304)
!2644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2621, size: 192, elements: !479)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1059, file: !414, line: 1233, baseType: !2646, size: 2368, offset: 4544)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !414, line: 1184, size: 2368, elements: !2647)
!2647 = !{!2648, !2649, !2650}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2646, file: !414, line: 1185, baseType: !60, size: 16)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2646, file: !414, line: 1186, baseType: !60, size: 16, offset: 16)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2646, file: !414, line: 1187, baseType: !2651, size: 2304, offset: 64)
!2651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2652, size: 2304, elements: !479)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2653, line: 12, size: 768, elements: !2654)
!2653 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2654 = !{!2655, !2663, !2664, !2669, !2670}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2652, file: !2653, line: 13, baseType: !2656, size: 384)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2657, line: 17, size: 384, elements: !2658)
!2657 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2658 = !{!2659, !2660, !2661, !2662}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2656, file: !2657, line: 18, baseType: !38, size: 32)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2656, file: !2657, line: 19, baseType: !38, size: 32, offset: 32)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2656, file: !2657, line: 20, baseType: !505, size: 192, offset: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2656, file: !2657, line: 22, baseType: !421, size: 128, align: 64, offset: 256)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2652, file: !2653, line: 14, baseType: !2022, size: 64, offset: 384)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2652, file: !2653, line: 15, baseType: !2665, size: 64, offset: 448)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2666, line: 16, size: 64, elements: !2667)
!2666 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2667 = !{!2668}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2665, file: !2666, line: 17, baseType: !6, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2652, file: !2653, line: 16, baseType: !505, size: 192, offset: 512)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2652, file: !2653, line: 17, baseType: !33, size: 32, offset: 704)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1059, file: !414, line: 1240, baseType: !26, size: 64, offset: 6912)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1059, file: !414, line: 1243, baseType: !18, size: 32, offset: 6976)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1059, file: !414, line: 1245, baseType: !654, size: 64, offset: 7040)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1059, file: !414, line: 1246, baseType: !654, size: 64, offset: 7104)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1059, file: !414, line: 1248, baseType: !20, size: 32, offset: 7168)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1059, file: !414, line: 1249, baseType: !2677, size: 64, offset: 7232)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !414, line: 634, flags: DIFlagFwdDecl)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1059, file: !414, line: 1252, baseType: !2680, size: 256, offset: 7296)
!2680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 256, elements: !2681)
!2681 = !{!2682}
!2682 = !DISubrange(count: 32)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1059, file: !414, line: 1253, baseType: !2684, size: 128, offset: 7552)
!2684 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2685, line: 21, baseType: !2686)
!2685 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2685, line: 19, size: 128, elements: !2687)
!2687 = !{!2688}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2686, file: !2685, line: 20, baseType: !2689, size: 128)
!2689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 128, elements: !2690)
!2690 = !{!2691}
!2691 = !DISubrange(count: 16)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1059, file: !414, line: 1255, baseType: !22, size: 32, offset: 7680)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1059, file: !414, line: 1261, baseType: !441, size: 256, offset: 7744)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1059, file: !414, line: 1267, baseType: !701, size: 64, offset: 8000)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1059, file: !414, line: 1269, baseType: !2696, size: 64, offset: 8064)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2698)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !819, line: 128, size: 1024, align: 512, elements: !2699)
!2699 = !{!2700, !2704, !2705, !2712, !2718, !2722, !2726, !2730, !2731, !2735, !2739, !2744, !2748}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2698, file: !819, line: 129, baseType: !2701, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!38, !817, !22}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2698, file: !819, line: 130, baseType: !2701, size: 64, offset: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2698, file: !819, line: 131, baseType: !2706, size: 64, offset: 128)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!38, !2709, !2711}
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !818)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2698, file: !819, line: 132, baseType: !2713, size: 64, offset: 192)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!38, !2709, !22, !701, !2716}
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !837)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2698, file: !819, line: 134, baseType: !2719, size: 64, offset: 256)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!38, !2709}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2698, file: !819, line: 135, baseType: !2723, size: 64, offset: 320)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!38, !817}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2698, file: !819, line: 136, baseType: !2727, size: 64, offset: 384)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{null, !817}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2698, file: !819, line: 137, baseType: !2727, size: 64, offset: 448)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2698, file: !819, line: 138, baseType: !2732, size: 64, offset: 512)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{null, !817, !852}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2698, file: !819, line: 139, baseType: !2736, size: 64, offset: 576)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!711, !817, !711, !38}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2698, file: !819, line: 140, baseType: !2740, size: 64, offset: 640)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!812, !2743}
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2698, file: !819, line: 141, baseType: !2745, size: 64, offset: 704)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!38, !975, !698}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2698, file: !819, line: 142, baseType: !2749, size: 64, offset: 768)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!817, !817, !2752}
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !853)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1059, file: !414, line: 1271, baseType: !2755, size: 448, offset: 8128)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2434, line: 63, size: 448, elements: !2756)
!2756 = !{!2757, !2762, !2763, !2764, !2765, !2766, !2767}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2755, file: !2434, line: 64, baseType: !2758, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!15, !2761, !2432}
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2755, file: !2434, line: 66, baseType: !2758, size: 64, offset: 64)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2755, file: !2434, line: 69, baseType: !967, size: 64, offset: 128)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2755, file: !2434, line: 70, baseType: !38, size: 32, offset: 192)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2755, file: !2434, line: 71, baseType: !22, size: 32, offset: 224)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2755, file: !2434, line: 74, baseType: !94, size: 128, offset: 256)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2755, file: !2434, line: 85, baseType: !2768, size: 64, offset: 384)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1059, file: !414, line: 1274, baseType: !434, size: 64, offset: 8576)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1059, file: !414, line: 1280, baseType: !434, size: 64, offset: 8640)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1059, file: !414, line: 1283, baseType: !38, size: 32, offset: 8704)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1059, file: !414, line: 1286, baseType: !1742, size: 32, offset: 8736)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1059, file: !414, line: 1289, baseType: !2245, size: 64, offset: 8768)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1059, file: !414, line: 1290, baseType: !492, size: 64, offset: 8832)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1059, file: !414, line: 1297, baseType: !549, size: 64, offset: 8896)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1059, file: !414, line: 1304, baseType: !2777, size: 64, offset: 8960)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2778, line: 49, size: 64, elements: !2779)
!2778 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2779 = !{!2780}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2777, file: !2778, line: 50, baseType: !2781, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2778, line: 41, size: 512, align: 512, elements: !2783)
!2783 = !{!2784, !2785, !2790}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2782, file: !2778, line: 43, baseType: !394, size: 32)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2782, file: !2778, line: 45, baseType: !2786, size: 192, offset: 64)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2778, line: 29, size: 192, elements: !2787)
!2787 = !{!2788, !2789}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2786, file: !2778, line: 30, baseType: !94, size: 128)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2786, file: !2778, line: 32, baseType: !967, size: 64, offset: 128)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2782, file: !2778, line: 46, baseType: !967, size: 64, offset: 256)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1059, file: !414, line: 1305, baseType: !2777, size: 64, offset: 9024)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1059, file: !414, line: 1306, baseType: !421, size: 128, align: 64, offset: 9088)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1059, file: !414, line: 1307, baseType: !2184, size: 256, offset: 9216)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1059, file: !414, line: 1309, baseType: !441, size: 256, offset: 9472)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1059, file: !414, line: 1314, baseType: !38, size: 32, offset: 9728)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1059, file: !414, line: 1317, baseType: !394, size: 32, align: 512, offset: 10240)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1059, file: !414, line: 1318, baseType: !94, size: 128, offset: 10304)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1059, file: !414, line: 1320, baseType: !394, size: 32, offset: 10432)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1059, file: !414, line: 1321, baseType: !94, size: 128, offset: 10496)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !853, file: !414, line: 656, baseType: !1215, size: 64, offset: 512)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !853, file: !414, line: 659, baseType: !26, size: 64, offset: 576)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !853, file: !414, line: 663, baseType: !15, size: 64, offset: 640)
!2803 = !DIDerivedType(tag: DW_TAG_member, scope: !853, file: !414, line: 671, baseType: !2804, size: 32, offset: 704)
!2804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !853, file: !414, line: 671, size: 32, elements: !2805)
!2805 = !{!2806, !2808}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2804, file: !414, line: 672, baseType: !2807, size: 32)
!2807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2804, file: !414, line: 673, baseType: !22, size: 32)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !853, file: !414, line: 675, baseType: !927, size: 32, offset: 736)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !853, file: !414, line: 676, baseType: !453, size: 64, offset: 768)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !853, file: !414, line: 677, baseType: !963, size: 128, offset: 832)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !853, file: !414, line: 678, baseType: !963, size: 128, offset: 960)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !853, file: !414, line: 679, baseType: !963, size: 128, offset: 1088)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !853, file: !414, line: 680, baseType: !394, size: 32, offset: 1216)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !853, file: !414, line: 681, baseType: !60, size: 16, offset: 1248)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !853, file: !414, line: 682, baseType: !209, size: 8, offset: 1264)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !853, file: !414, line: 683, baseType: !209, size: 8, offset: 1272)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !853, file: !414, line: 684, baseType: !2565, size: 64, offset: 1280)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !853, file: !414, line: 691, baseType: !15, size: 64, offset: 1344)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !853, file: !414, line: 692, baseType: !638, size: 320, offset: 1408)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !853, file: !414, line: 694, baseType: !15, size: 64, offset: 1728)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !853, file: !414, line: 695, baseType: !15, size: 64, offset: 1792)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !853, file: !414, line: 697, baseType: !496, size: 128, offset: 1856)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !853, file: !414, line: 698, baseType: !94, size: 128, offset: 1984)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !853, file: !414, line: 707, baseType: !94, size: 128, offset: 2112)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !853, file: !414, line: 708, baseType: !94, size: 128, offset: 2240)
!2827 = !DIDerivedType(tag: DW_TAG_member, scope: !853, file: !414, line: 709, baseType: !2828, size: 128, offset: 2368)
!2828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !853, file: !414, line: 709, size: 128, elements: !2829)
!2829 = !{!2830, !2831}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2828, file: !414, line: 710, baseType: !492, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2828, file: !414, line: 711, baseType: !421, size: 128, align: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !853, file: !414, line: 713, baseType: !436, size: 64, offset: 2496)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !853, file: !414, line: 714, baseType: !436, size: 64, offset: 2560)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !853, file: !414, line: 715, baseType: !33, size: 32, offset: 2624)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !853, file: !414, line: 716, baseType: !33, size: 32, offset: 2656)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !853, file: !414, line: 717, baseType: !33, size: 32, offset: 2688)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !853, file: !414, line: 719, baseType: !33, size: 32, offset: 2720)
!2838 = !DIDerivedType(tag: DW_TAG_member, scope: !853, file: !414, line: 721, baseType: !2839, size: 64, offset: 2752)
!2839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !853, file: !414, line: 721, size: 64, elements: !2840)
!2840 = !{!2841, !2967}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2839, file: !414, line: 722, baseType: !2842, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2844)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !414, line: 1914, size: 2112, elements: !2845)
!2845 = !{!2846, !2847, !2851, !2855, !2859, !2860, !2861, !2867, !2880, !2884, !2888, !2889, !2893, !2894, !2898, !2903, !2904, !2908, !2912, !2918, !2919, !2923, !2924, !2930, !2934, !2935, !2940, !2944, !2948, !2952, !2956, !2957, !2963}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2844, file: !414, line: 1915, baseType: !1091, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2844, file: !414, line: 1916, baseType: !2848, size: 64, offset: 64)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!453, !412, !453, !38}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2844, file: !414, line: 1917, baseType: !2852, size: 64, offset: 128)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!1006, !412, !711, !1009, !1876}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2844, file: !414, line: 1918, baseType: !2856, size: 64, offset: 192)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!1006, !412, !701, !1009, !1876}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2844, file: !414, line: 1919, baseType: !1669, size: 64, offset: 256)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2844, file: !414, line: 1920, baseType: !1669, size: 64, offset: 320)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2844, file: !414, line: 1921, baseType: !2862, size: 64, offset: 384)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!38, !1672, !2865, !22}
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !414, line: 53, flags: DIFlagFwdDecl)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2844, file: !414, line: 1923, baseType: !2868, size: 64, offset: 448)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!38, !412, !2871}
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !414, line: 1858, size: 128, elements: !2873)
!2873 = !{!2874, !2879}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2872, file: !414, line: 1859, baseType: !2875, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !414, line: 1855, baseType: !2876)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!698, !2871, !701, !38, !453, !89, !22}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2872, file: !414, line: 1860, baseType: !453, size: 64, offset: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2844, file: !414, line: 1924, baseType: !2881, size: 64, offset: 512)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!1896, !412, !1898}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2844, file: !414, line: 1925, baseType: !2885, size: 64, offset: 576)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!967, !412, !22, !15}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2844, file: !414, line: 1926, baseType: !2885, size: 64, offset: 640)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2844, file: !414, line: 1927, baseType: !2890, size: 64, offset: 704)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!38, !412, !1363}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2844, file: !414, line: 1928, baseType: !15, size: 64, offset: 768)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2844, file: !414, line: 1929, baseType: !2895, size: 64, offset: 832)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!38, !852, !412}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2844, file: !414, line: 1930, baseType: !2899, size: 64, offset: 896)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!38, !412, !2902}
!2902 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !414, line: 1061, baseType: !26)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2844, file: !414, line: 1931, baseType: !2895, size: 64, offset: 960)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2844, file: !414, line: 1932, baseType: !2905, size: 64, offset: 1024)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!38, !412, !453, !453, !38}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2844, file: !414, line: 1933, baseType: !2909, size: 64, offset: 1088)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!38, !38, !412, !38}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2844, file: !414, line: 1934, baseType: !2913, size: 64, offset: 1152)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!38, !412, !38, !2916}
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !414, line: 1063, flags: DIFlagFwdDecl)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2844, file: !414, line: 1935, baseType: !409, size: 64, offset: 1216)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2844, file: !414, line: 1936, baseType: !2920, size: 64, offset: 1280)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!38, !38}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2844, file: !414, line: 1937, baseType: !2913, size: 64, offset: 1344)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2844, file: !414, line: 1938, baseType: !2925, size: 64, offset: 1408)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!1006, !2928, !412, !1876, !1009, !22}
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !8, line: 59, flags: DIFlagFwdDecl)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2844, file: !414, line: 1939, baseType: !2931, size: 64, offset: 1472)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!1006, !412, !1876, !2928, !1009, !22}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2844, file: !414, line: 1940, baseType: !1732, size: 64, offset: 1536)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2844, file: !414, line: 1941, baseType: !2936, size: 64, offset: 1600)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!38, !412, !38, !2939, !1646}
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2844, file: !414, line: 1942, baseType: !2941, size: 64, offset: 1664)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!967, !412, !38, !453, !453}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2844, file: !414, line: 1944, baseType: !2945, size: 64, offset: 1728)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{null, !1852, !412}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2844, file: !414, line: 1948, baseType: !2949, size: 64, offset: 1792)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!1006, !412, !453, !412, !453, !1009, !22}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2844, file: !414, line: 1950, baseType: !2953, size: 64, offset: 1856)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!453, !412, !453, !412, !453, !453, !22}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2844, file: !414, line: 1953, baseType: !2905, size: 64, offset: 1920)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2844, file: !414, line: 1954, baseType: !2958, size: 64, offset: 1984)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!38, !2961, !22}
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !414, line: 1911, flags: DIFlagFwdDecl)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2844, file: !414, line: 1955, baseType: !2964, size: 64, offset: 2048)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!38, !2961, !2865, !22}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2839, file: !414, line: 723, baseType: !2313, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !853, file: !414, line: 725, baseType: !2969, size: 64, offset: 2816)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !414, line: 725, flags: DIFlagFwdDecl)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !853, file: !414, line: 726, baseType: !1216, size: 1536, align: 64, offset: 2880)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !853, file: !414, line: 727, baseType: !94, size: 128, offset: 4416)
!2973 = !DIDerivedType(tag: DW_TAG_member, scope: !853, file: !414, line: 728, baseType: !2974, size: 64, offset: 4544)
!2974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !853, file: !414, line: 728, size: 64, elements: !2975)
!2975 = !{!2976, !2977, !2980, !2981}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2974, file: !414, line: 729, baseType: !2928, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2974, file: !414, line: 730, baseType: !2978, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !414, line: 730, flags: DIFlagFwdDecl)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2974, file: !414, line: 731, baseType: !711, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2974, file: !414, line: 732, baseType: !22, size: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !853, file: !414, line: 735, baseType: !20, size: 32, offset: 4608)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !853, file: !414, line: 738, baseType: !20, size: 32, offset: 4640)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !853, file: !414, line: 739, baseType: !2677, size: 64, offset: 4672)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !853, file: !414, line: 750, baseType: !26, size: 64, offset: 4736)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !818, file: !819, line: 91, baseType: !2987, size: 256, offset: 448)
!2987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 256, elements: !2681)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !818, file: !819, line: 94, baseType: !2989, size: 64, offset: 704)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2990, line: 25, size: 64, elements: !2991)
!2990 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!2991 = !{!2992}
!2992 = !DIDerivedType(tag: DW_TAG_member, scope: !2989, file: !2990, line: 26, baseType: !2993, size: 64)
!2993 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2989, file: !2990, line: 26, size: 64, elements: !2994)
!2994 = !{!2995, !2996}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !2993, file: !2990, line: 28, baseType: !90, size: 64, align: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, scope: !2993, file: !2990, line: 30, baseType: !2997, size: 64)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2993, file: !2990, line: 30, size: 64, elements: !2998)
!2998 = !{!2999, !3000}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2997, file: !2990, line: 31, baseType: !394, size: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2997, file: !2990, line: 32, baseType: !38, size: 32, offset: 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !818, file: !819, line: 95, baseType: !2696, size: 64, offset: 768)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !818, file: !819, line: 96, baseType: !1058, size: 64, offset: 832)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !818, file: !819, line: 97, baseType: !15, size: 64, offset: 896)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !818, file: !819, line: 98, baseType: !26, size: 64, offset: 960)
!3005 = !DIDerivedType(tag: DW_TAG_member, scope: !818, file: !819, line: 100, baseType: !3006, size: 128, offset: 1024)
!3006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !818, file: !819, line: 100, size: 128, elements: !3007)
!3007 = !{!3008, !3009}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3006, file: !819, line: 101, baseType: !94, size: 128)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3006, file: !819, line: 102, baseType: !3010, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !818, file: !819, line: 104, baseType: !94, size: 128, offset: 1152)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !818, file: !819, line: 105, baseType: !94, size: 128, offset: 1280)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !818, file: !819, line: 113, baseType: !3014, size: 128, offset: 1408)
!3014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !818, file: !819, line: 109, size: 128, elements: !3015)
!3015 = !{!3016, !3017, !3018}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3014, file: !819, line: 110, baseType: !496, size: 128)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3014, file: !819, line: 111, baseType: !828, size: 128)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3014, file: !819, line: 112, baseType: !421, size: 128, align: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !813, file: !814, line: 72, baseType: !1058, size: 64, offset: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !813, file: !814, line: 73, baseType: !38, size: 32, offset: 128)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !813, file: !814, line: 74, baseType: !892, size: 64, offset: 192)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !808, file: !809, line: 10, baseType: !817, size: 64, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !413, file: !414, line: 1015, baseType: !852, size: 64, offset: 1344)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !413, file: !414, line: 1016, baseType: !2842, size: 64, offset: 1408)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !413, file: !414, line: 1018, baseType: !89, size: 64, offset: 1472)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !413, file: !414, line: 1020, baseType: !26, size: 64, offset: 1536)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !413, file: !414, line: 1023, baseType: !26, size: 64, offset: 1600)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !413, file: !414, line: 1027, baseType: !3029, size: 64, offset: 1664)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !413, file: !414, line: 1029, baseType: !1215, size: 64, offset: 1728)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !413, file: !414, line: 1030, baseType: !1742, size: 32, offset: 1792)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !413, file: !414, line: 1031, baseType: !1742, size: 32, offset: 1824)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !380, file: !377, line: 756, baseType: !15, size: 64, offset: 704)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !380, file: !377, line: 757, baseType: !15, size: 64, offset: 768)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !380, file: !377, line: 760, baseType: !15, size: 64, offset: 832)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !380, file: !377, line: 761, baseType: !15, size: 64, offset: 896)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !380, file: !377, line: 763, baseType: !15, size: 64, offset: 960)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !380, file: !377, line: 764, baseType: !3039, size: 64, offset: 1024)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1378, line: 299, baseType: !3041)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1378, line: 299, size: 64, elements: !3042)
!3042 = !{!3043}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3041, file: !1378, line: 299, baseType: !3044, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1383, line: 18, baseType: !15)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !380, file: !377, line: 773, baseType: !33, size: 32, offset: 1088)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !380, file: !377, line: 785, baseType: !33, size: 32, offset: 1120)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !380, file: !377, line: 795, baseType: !3048, size: 64, offset: 1152)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !377, line: 726, size: 128, elements: !3050)
!3050 = !{!3051, !3052}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3049, file: !377, line: 727, baseType: !89, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3049, file: !377, line: 728, baseType: !38, size: 32, offset: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !380, file: !377, line: 801, baseType: !15, size: 64, offset: 1216)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !380, file: !377, line: 804, baseType: !434, size: 64, offset: 1280)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !380, file: !377, line: 806, baseType: !38, size: 32, offset: 1344)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !380, file: !377, line: 808, baseType: !394, size: 32, offset: 1376)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !380, file: !377, line: 823, baseType: !638, size: 320, offset: 1408)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !380, file: !377, line: 825, baseType: !94, size: 128, offset: 1728)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !380, file: !377, line: 845, baseType: !38, size: 32, offset: 1856)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !380, file: !377, line: 849, baseType: !15, size: 64, offset: 1920)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !380, file: !377, line: 850, baseType: !15, size: 64, offset: 1984)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !380, file: !377, line: 852, baseType: !15, size: 64, offset: 2048)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !380, file: !377, line: 853, baseType: !15, size: 64, offset: 2112)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !380, file: !377, line: 854, baseType: !436, size: 64, offset: 2176)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !380, file: !377, line: 855, baseType: !15, size: 64, offset: 2240)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !380, file: !377, line: 856, baseType: !15, size: 64, offset: 2304)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !380, file: !377, line: 857, baseType: !15, size: 64, offset: 2368)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !380, file: !377, line: 858, baseType: !15, size: 64, offset: 2432)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !380, file: !377, line: 865, baseType: !249, size: 32, offset: 2496)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !380, file: !377, line: 867, baseType: !394, size: 32, offset: 2528)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !380, file: !377, line: 869, baseType: !15, size: 64, offset: 2560)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !380, file: !377, line: 869, baseType: !15, size: 64, offset: 2624)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !380, file: !377, line: 869, baseType: !15, size: 64, offset: 2688)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !380, file: !377, line: 869, baseType: !15, size: 64, offset: 2752)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !380, file: !377, line: 870, baseType: !15, size: 64, offset: 2816)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !380, file: !377, line: 870, baseType: !15, size: 64, offset: 2880)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !380, file: !377, line: 870, baseType: !15, size: 64, offset: 2944)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !380, file: !377, line: 871, baseType: !15, size: 64, offset: 3008)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !380, file: !377, line: 871, baseType: !15, size: 64, offset: 3072)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !380, file: !377, line: 871, baseType: !15, size: 64, offset: 3136)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !380, file: !377, line: 871, baseType: !15, size: 64, offset: 3200)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !380, file: !377, line: 873, baseType: !3083, size: 3328, offset: 3264)
!3083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 3328, elements: !3084)
!3084 = !{!3085}
!3085 = !DISubrange(count: 52)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !380, file: !377, line: 875, baseType: !3087, size: 1280, offset: 6592)
!3087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !759, size: 1280, elements: !501)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !380, file: !377, line: 877, baseType: !3089, size: 64, offset: 7872)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !377, line: 877, flags: DIFlagFwdDecl)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !380, file: !377, line: 880, baseType: !3092, size: 1088, offset: 7936)
!3092 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3093, line: 72, baseType: !3094)
!3093 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3093, line: 23, size: 1088, elements: !3095)
!3095 = !{!3096, !3097, !3098, !3099, !3100, !3103, !3104, !3105, !3106, !3131, !3132, !3133}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3094, file: !3093, line: 28, baseType: !89, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3094, file: !3093, line: 38, baseType: !436, size: 64, offset: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3094, file: !3093, line: 40, baseType: !15, size: 64, offset: 128)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3094, file: !3093, line: 43, baseType: !638, size: 320, offset: 192)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3094, file: !3093, line: 44, baseType: !3101, size: 64, offset: 512)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3093, line: 44, flags: DIFlagFwdDecl)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3094, file: !3093, line: 48, baseType: !15, size: 64, offset: 576)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3094, file: !3093, line: 59, baseType: !441, size: 256, offset: 640)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3094, file: !3093, line: 60, baseType: !26, size: 64, offset: 896)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3094, file: !3093, line: 61, baseType: !3107, size: 64, offset: 960)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3109)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3110, line: 13, size: 1216, elements: !3111)
!3110 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3111 = !{!3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3109, file: !3110, line: 14, baseType: !26, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3109, file: !3110, line: 15, baseType: !15, size: 64, offset: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3109, file: !3110, line: 17, baseType: !15, size: 64, offset: 128)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3109, file: !3110, line: 17, baseType: !15, size: 64, offset: 192)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3109, file: !3110, line: 18, baseType: !15, size: 64, offset: 256)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3109, file: !3110, line: 18, baseType: !15, size: 64, offset: 320)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3109, file: !3110, line: 19, baseType: !1787, size: 64, offset: 384)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3109, file: !3110, line: 21, baseType: !967, size: 64, offset: 448)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3109, file: !3110, line: 23, baseType: !967, size: 64, offset: 512)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3109, file: !3110, line: 24, baseType: !967, size: 64, offset: 576)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3109, file: !3110, line: 25, baseType: !967, size: 64, offset: 640)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3109, file: !3110, line: 26, baseType: !967, size: 64, offset: 704)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3109, file: !3110, line: 27, baseType: !967, size: 64, offset: 768)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3109, file: !3110, line: 28, baseType: !967, size: 64, offset: 832)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3109, file: !3110, line: 29, baseType: !967, size: 64, offset: 896)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3109, file: !3110, line: 30, baseType: !967, size: 64, offset: 960)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3109, file: !3110, line: 31, baseType: !967, size: 64, offset: 1024)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3109, file: !3110, line: 32, baseType: !967, size: 64, offset: 1088)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3109, file: !3110, line: 33, baseType: !967, size: 64, offset: 1152)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3094, file: !3093, line: 63, baseType: !33, size: 32, offset: 1024)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3094, file: !3093, line: 69, baseType: !58, size: 16, offset: 1056)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3094, file: !3093, line: 70, baseType: !2077, size: 16, offset: 1072)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !380, file: !377, line: 882, baseType: !15, size: 64, offset: 9024)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !380, file: !377, line: 885, baseType: !394, size: 32, offset: 9088)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !380, file: !377, line: 886, baseType: !3137, size: 64, offset: 9152)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !377, line: 732, flags: DIFlagFwdDecl)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !380, file: !377, line: 901, baseType: !549, size: 64, offset: 9216)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !380, file: !377, line: 904, baseType: !412, size: 64, offset: 9280)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !380, file: !377, line: 906, baseType: !3142, size: 64, offset: 9344)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !377, line: 906, flags: DIFlagFwdDecl)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !380, file: !377, line: 930, baseType: !33, size: 32, offset: 9408)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !380, file: !377, line: 933, baseType: !33, size: 32, offset: 9440)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !380, file: !377, line: 935, baseType: !3147, size: 64, offset: 9472)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !3148, line: 103, size: 64, elements: !3149)
!3148 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!3149 = !{!3150}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3147, file: !3148, line: 104, baseType: !3151, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !3148, line: 101, flags: DIFlagFwdDecl)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !380, file: !377, line: 940, baseType: !434, size: 64, offset: 9536)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !380, file: !377, line: 942, baseType: !2184, size: 256, offset: 9600)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !376, file: !377, line: 986, baseType: !3156, offset: 10240)
!3156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, elements: !568)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !7, file: !8, line: 882, baseType: !375, size: 64, offset: 9792)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !7, file: !8, line: 884, baseType: !38, size: 32, offset: 9856)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !7, file: !8, line: 885, baseType: !38, size: 32, offset: 9888)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !7, file: !8, line: 886, baseType: !38, size: 32, offset: 9920)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !7, file: !8, line: 888, baseType: !38, size: 32, offset: 9952)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !7, file: !8, line: 890, baseType: !15, size: 64, offset: 9984)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !7, file: !8, line: 893, baseType: !22, size: 32, offset: 10048)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !7, file: !8, line: 896, baseType: !22, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !7, file: !8, line: 897, baseType: !22, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !7, file: !8, line: 898, baseType: !22, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !7, file: !8, line: 899, baseType: !22, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !7, file: !8, line: 919, baseType: !22, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !7, file: !8, line: 922, baseType: !22, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !7, file: !8, line: 923, baseType: !22, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !7, file: !8, line: 925, baseType: !22, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !7, file: !8, line: 939, baseType: !22, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !7, file: !8, line: 941, baseType: !22, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !7, file: !8, line: 944, baseType: !22, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !7, file: !8, line: 956, baseType: !22, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !7, file: !8, line: 962, baseType: !22, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !7, file: !8, line: 966, baseType: !22, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !7, file: !8, line: 969, baseType: !15, size: 64, offset: 10176)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !7, file: !8, line: 971, baseType: !3180, size: 448, offset: 10240)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !3181, line: 25, size: 448, elements: !3182)
!3181 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!3182 = !{!3183, !3184, !3189}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3180, file: !3181, line: 26, baseType: !15, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3180, file: !3181, line: 27, baseType: !3185, size: 64, offset: 64)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!967, !3188}
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, scope: !3180, file: !3181, line: 28, baseType: !3190, size: 320, offset: 128)
!3190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3180, file: !3181, line: 28, size: 320, elements: !3191)
!3191 = !{!3192, !3202, !3232}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3190, file: !3181, line: 37, baseType: !3193, size: 320)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3190, file: !3181, line: 30, size: 320, elements: !3194)
!3194 = !{!3195, !3197, !3198, !3199, !3200, !3201}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3193, file: !3181, line: 31, baseType: !3196, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3193, file: !3181, line: 32, baseType: !18, size: 32, offset: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3193, file: !3181, line: 33, baseType: !18, size: 32, offset: 96)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3193, file: !3181, line: 34, baseType: !18, size: 32, offset: 128)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3193, file: !3181, line: 35, baseType: !89, size: 64, offset: 192)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3193, file: !3181, line: 36, baseType: !3196, size: 64, offset: 256)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3190, file: !3181, line: 47, baseType: !3203, size: 192)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3190, file: !3181, line: 39, size: 192, elements: !3204)
!3204 = !{!3205, !3206, !3212, !3231}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3203, file: !3181, line: 40, baseType: !240, size: 32)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3203, file: !3181, line: 41, baseType: !3207, size: 32, offset: 32)
!3207 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !3181, line: 16, baseType: !22, size: 32, elements: !3208)
!3208 = !{!3209, !3210, !3211}
!3209 = !DIEnumerator(name: "TT_NONE", value: 0)
!3210 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!3211 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!3212 = !DIDerivedType(tag: DW_TAG_member, scope: !3203, file: !3181, line: 42, baseType: !3213, size: 64, offset: 64)
!3213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3203, file: !3181, line: 42, size: 64, elements: !3214)
!3214 = !{!3215, !3223}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3213, file: !3181, line: 43, baseType: !3216, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3218, line: 7, size: 128, elements: !3219)
!3218 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3219 = !{!3220, !3222}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3217, file: !3218, line: 8, baseType: !3221, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !242, line: 93, baseType: !107)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3217, file: !3218, line: 9, baseType: !107, size: 64, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3213, file: !3181, line: 44, baseType: !3224, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3226, line: 7, size: 64, elements: !3227)
!3226 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3227 = !{!3228, !3230}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3225, file: !3226, line: 8, baseType: !3229, size: 32)
!3229 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3226, line: 5, baseType: !630)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3225, file: !3226, line: 9, baseType: !630, size: 32, offset: 32)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3203, file: !3181, line: 46, baseType: !89, size: 64, offset: 128)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3190, file: !3181, line: 55, baseType: !3233, size: 256)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3190, file: !3181, line: 49, size: 256, elements: !3234)
!3234 = !{!3235, !3238, !3239, !3240, !3241}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3233, file: !3181, line: 50, baseType: !3236, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !3181, line: 14, flags: DIFlagFwdDecl)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3233, file: !3181, line: 51, baseType: !38, size: 32, offset: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3233, file: !3181, line: 52, baseType: !38, size: 32, offset: 96)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3233, file: !3181, line: 53, baseType: !15, size: 64, offset: 128)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3233, file: !3181, line: 54, baseType: !15, size: 64, offset: 192)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !7, file: !8, line: 973, baseType: !3243, size: 32, offset: 10688)
!3243 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !34, line: 27, baseType: !3244)
!3244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !242, line: 28, baseType: !38)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !7, file: !8, line: 974, baseType: !3243, size: 32, offset: 10720)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !7, file: !8, line: 978, baseType: !15, size: 64, offset: 10752)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !7, file: !8, line: 987, baseType: !6, size: 64, offset: 10816)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !7, file: !8, line: 990, baseType: !6, size: 64, offset: 10880)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !7, file: !8, line: 995, baseType: !94, size: 128, offset: 10944)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !7, file: !8, line: 996, baseType: !94, size: 128, offset: 11072)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !7, file: !8, line: 997, baseType: !6, size: 64, offset: 11200)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !7, file: !8, line: 1005, baseType: !94, size: 128, offset: 11264)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !7, file: !8, line: 1006, baseType: !94, size: 128, offset: 11392)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !7, file: !8, line: 1009, baseType: !483, size: 64, offset: 11520)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !7, file: !8, line: 1010, baseType: !3256, size: 512, offset: 11584)
!3256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !496, size: 512, elements: !501)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !7, file: !8, line: 1011, baseType: !94, size: 128, offset: 12096)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !7, file: !8, line: 1012, baseType: !94, size: 128, offset: 12224)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !7, file: !8, line: 1014, baseType: !1933, size: 64, offset: 12352)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !7, file: !8, line: 1017, baseType: !2070, size: 64, offset: 12416)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !7, file: !8, line: 1020, baseType: !2070, size: 64, offset: 12480)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !7, file: !8, line: 1023, baseType: !26, size: 64, offset: 12544)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !7, file: !8, line: 1025, baseType: !89, size: 64, offset: 12608)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !7, file: !8, line: 1026, baseType: !89, size: 64, offset: 12672)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !7, file: !8, line: 1031, baseType: !89, size: 64, offset: 12736)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !7, file: !8, line: 1032, baseType: !3267, size: 192, offset: 12800)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !8, line: 324, size: 192, elements: !3268)
!3268 = !{!3269, !3270, !3271}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3267, file: !8, line: 326, baseType: !89, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3267, file: !8, line: 327, baseType: !89, size: 64, offset: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3267, file: !8, line: 328, baseType: !192, size: 32, offset: 128)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !7, file: !8, line: 1041, baseType: !15, size: 64, offset: 12992)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !7, file: !8, line: 1042, baseType: !15, size: 64, offset: 13056)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !7, file: !8, line: 1045, baseType: !89, size: 64, offset: 13120)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !7, file: !8, line: 1048, baseType: !89, size: 64, offset: 13184)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !7, file: !8, line: 1051, baseType: !15, size: 64, offset: 13248)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !7, file: !8, line: 1052, baseType: !15, size: 64, offset: 13312)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !7, file: !8, line: 1055, baseType: !3279, size: 640, offset: 13376)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3280, line: 132, size: 640, elements: !3281)
!3280 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3281 = !{!3282, !3288, !3289}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3279, file: !3280, line: 133, baseType: !3283, size: 576)
!3283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3284, size: 576, elements: !479)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3280, line: 117, size: 192, elements: !3285)
!3285 = !{!3286, !3287}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3284, file: !3280, line: 118, baseType: !89, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3284, file: !3280, line: 119, baseType: !255, size: 128, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3279, file: !3280, line: 134, baseType: !22, size: 32, offset: 576)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3279, file: !3280, line: 135, baseType: !22, size: 32, offset: 608)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !7, file: !8, line: 1058, baseType: !3291, size: 448, offset: 14016)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3280, line: 144, size: 448, elements: !3292)
!3292 = !{!3293, !3294, !3295}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3291, file: !3280, line: 145, baseType: !421, size: 128, align: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3291, file: !3280, line: 146, baseType: !441, size: 256, offset: 128)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3291, file: !3280, line: 147, baseType: !22, size: 32, offset: 384)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !7, file: !8, line: 1064, baseType: !589, size: 64, offset: 14464)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !7, file: !8, line: 1067, baseType: !589, size: 64, offset: 14528)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !7, file: !8, line: 1070, baseType: !589, size: 64, offset: 14592)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !7, file: !8, line: 1074, baseType: !622, size: 64, offset: 14656)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !7, file: !8, line: 1084, baseType: !3301, size: 128, offset: 14720)
!3301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 128, elements: !2690)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !7, file: !8, line: 1086, baseType: !3303, size: 64, offset: 14848)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !8, line: 55, flags: DIFlagFwdDecl)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !7, file: !8, line: 1089, baseType: !3306, size: 64, offset: 14912)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3307, line: 12, size: 64, elements: !3308)
!3307 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3308 = !{!3309}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3306, file: !3307, line: 13, baseType: !3310, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3307, line: 8, flags: DIFlagFwdDecl)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !7, file: !8, line: 1090, baseType: !3313, size: 128, offset: 14976)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3314, line: 13, size: 128, elements: !3315)
!3314 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3315 = !{!3316}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3313, file: !3314, line: 14, baseType: !94, size: 128)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !7, file: !8, line: 1097, baseType: !3318, size: 64, offset: 15104)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !8, line: 50, flags: DIFlagFwdDecl)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !7, file: !8, line: 1100, baseType: !3321, size: 64, offset: 15168)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !8, line: 1100, flags: DIFlagFwdDecl)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !7, file: !8, line: 1103, baseType: !3324, size: 64, offset: 15232)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !8, line: 53, flags: DIFlagFwdDecl)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !7, file: !8, line: 1107, baseType: !3327, size: 64, offset: 15296)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3329, line: 31, size: 576, elements: !3330)
!3329 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3330 = !{!3331, !3332, !3335, !3338, !3341, !3342, !3345, !3348, !3349}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3328, file: !3329, line: 32, baseType: !28, size: 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3328, file: !3329, line: 33, baseType: !3333, size: 64, offset: 64)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3329, line: 9, flags: DIFlagFwdDecl)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3328, file: !3329, line: 34, baseType: !3336, size: 64, offset: 128)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3329, line: 10, flags: DIFlagFwdDecl)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3328, file: !3329, line: 35, baseType: !3339, size: 64, offset: 192)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3329, line: 8, flags: DIFlagFwdDecl)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3328, file: !3329, line: 36, baseType: !518, size: 64, offset: 256)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3328, file: !3329, line: 37, baseType: !3343, size: 64, offset: 320)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !624, line: 34, flags: DIFlagFwdDecl)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3328, file: !3329, line: 38, baseType: !3346, size: 64, offset: 384)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3329, line: 38, flags: DIFlagFwdDecl)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3328, file: !3329, line: 39, baseType: !3346, size: 64, offset: 448)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3328, file: !3329, line: 40, baseType: !3350, size: 64, offset: 512)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3329, line: 12, flags: DIFlagFwdDecl)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !7, file: !8, line: 1110, baseType: !3353, size: 64, offset: 15360)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3355, line: 93, size: 8768, elements: !3356)
!3355 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3356 = !{!3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3404, !3413, !3414, !3416, !3417, !3418, !3421, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3459, !3460, !3467, !3477, !3480, !3481, !3484, !3485, !3486, !3487, !3488, !3489}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3354, file: !3355, line: 94, baseType: !28, size: 32)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3354, file: !3355, line: 95, baseType: !33, size: 32, offset: 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3354, file: !3355, line: 96, baseType: !38, size: 32, offset: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3354, file: !3355, line: 97, baseType: !38, size: 32, offset: 96)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3354, file: !3355, line: 98, baseType: !94, size: 128, offset: 128)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3354, file: !3355, line: 100, baseType: !505, size: 192, offset: 256)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3354, file: !3355, line: 103, baseType: !6, size: 64, offset: 448)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3354, file: !3355, line: 106, baseType: !3365, size: 192, offset: 512)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !554, line: 32, size: 192, elements: !3366)
!3366 = !{!3367, !3368}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3365, file: !554, line: 33, baseType: !94, size: 128)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3365, file: !554, line: 34, baseType: !3369, size: 64, offset: 128)
!3369 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3370, line: 25, baseType: !3371)
!3370 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3370, line: 23, size: 64, elements: !3372)
!3372 = !{!3373}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3371, file: !3370, line: 24, baseType: !326, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3354, file: !3355, line: 109, baseType: !492, size: 64, offset: 704)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3354, file: !3355, line: 112, baseType: !38, size: 32, offset: 768)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3354, file: !3355, line: 114, baseType: !38, size: 32, offset: 800)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3354, file: !3355, line: 115, baseType: !6, size: 64, offset: 832)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3354, file: !3355, line: 118, baseType: !38, size: 32, offset: 896)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3354, file: !3355, line: 119, baseType: !22, size: 32, offset: 928)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3354, file: !3355, line: 121, baseType: !3381, size: 64, offset: 960)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3355, line: 80, size: 448, elements: !3383)
!3383 = !{!3384, !3385, !3391}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3382, file: !3355, line: 81, baseType: !33, size: 32)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3382, file: !3355, line: 82, baseType: !3386, size: 128, offset: 64)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3355, line: 75, size: 128, elements: !3387)
!3387 = !{!3388, !3389}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3386, file: !3355, line: 76, baseType: !6, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3386, file: !3355, line: 77, baseType: !3390, size: 64, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3382, file: !3355, line: 83, baseType: !1321, size: 256, offset: 192)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3354, file: !3355, line: 132, baseType: !22, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3354, file: !3355, line: 133, baseType: !22, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3354, file: !3355, line: 138, baseType: !22, size: 32, offset: 1056)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3354, file: !3355, line: 139, baseType: !94, size: 128, offset: 1088)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3354, file: !3355, line: 142, baseType: !162, size: 512, offset: 1216)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3354, file: !3355, line: 143, baseType: !171, size: 64, offset: 1728)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3354, file: !3355, line: 150, baseType: !3399, size: 256, offset: 1792)
!3399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3400, size: 256, elements: !2060)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3355, line: 38, size: 128, elements: !3401)
!3401 = !{!3402, !3403}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3400, file: !3355, line: 39, baseType: !89, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3400, file: !3355, line: 40, baseType: !89, size: 64, offset: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3354, file: !3355, line: 156, baseType: !3405, size: 192, offset: 2048)
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3355, line: 66, size: 192, elements: !3406)
!3406 = !{!3407}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3405, file: !3355, line: 67, baseType: !3408, size: 192)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3355, line: 47, size: 192, elements: !3409)
!3409 = !{!3410, !3411, !3412}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3408, file: !3355, line: 48, baseType: !436, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3408, file: !3355, line: 49, baseType: !436, size: 64, offset: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3408, file: !3355, line: 50, baseType: !436, size: 64, offset: 128)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3354, file: !3355, line: 160, baseType: !3279, size: 640, offset: 2240)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3354, file: !3355, line: 163, baseType: !3415, size: 256, offset: 2880)
!3415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 256, elements: !501)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3354, file: !3355, line: 169, baseType: !483, size: 64, offset: 3136)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3354, file: !3355, line: 172, baseType: !38, size: 32, offset: 3200)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3354, file: !3355, line: 174, baseType: !3419, size: 64, offset: 3264)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3355, line: 174, flags: DIFlagFwdDecl)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3354, file: !3355, line: 185, baseType: !3422, size: 64, offset: 3328)
!3422 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !245, line: 860, baseType: !3423)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !245, line: 853, size: 64, elements: !3424)
!3424 = !{!3425, !3426}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3423, file: !245, line: 858, baseType: !823, size: 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3423, file: !245, line: 859, baseType: !394, size: 32, offset: 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3354, file: !3355, line: 186, baseType: !89, size: 64, offset: 3392)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3354, file: !3355, line: 186, baseType: !89, size: 64, offset: 3456)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3354, file: !3355, line: 186, baseType: !89, size: 64, offset: 3520)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3354, file: !3355, line: 186, baseType: !89, size: 64, offset: 3584)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3354, file: !3355, line: 187, baseType: !89, size: 64, offset: 3648)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3354, file: !3355, line: 188, baseType: !89, size: 64, offset: 3712)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3354, file: !3355, line: 189, baseType: !3267, size: 192, offset: 3776)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3354, file: !3355, line: 190, baseType: !15, size: 64, offset: 3968)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3354, file: !3355, line: 190, baseType: !15, size: 64, offset: 4032)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3354, file: !3355, line: 190, baseType: !15, size: 64, offset: 4096)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3354, file: !3355, line: 190, baseType: !15, size: 64, offset: 4160)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3354, file: !3355, line: 191, baseType: !15, size: 64, offset: 4224)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3354, file: !3355, line: 191, baseType: !15, size: 64, offset: 4288)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3354, file: !3355, line: 191, baseType: !15, size: 64, offset: 4352)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3354, file: !3355, line: 191, baseType: !15, size: 64, offset: 4416)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3354, file: !3355, line: 192, baseType: !15, size: 64, offset: 4480)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3354, file: !3355, line: 192, baseType: !15, size: 64, offset: 4544)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3354, file: !3355, line: 192, baseType: !15, size: 64, offset: 4608)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3354, file: !3355, line: 192, baseType: !15, size: 64, offset: 4672)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3354, file: !3355, line: 193, baseType: !15, size: 64, offset: 4736)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3354, file: !3355, line: 193, baseType: !15, size: 64, offset: 4800)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3354, file: !3355, line: 194, baseType: !3449, size: 448, offset: 4864)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3450, line: 12, size: 448, elements: !3451)
!3450 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3451 = !{!3452, !3453, !3454, !3455, !3456, !3457, !3458}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3449, file: !3450, line: 15, baseType: !89, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3449, file: !3450, line: 17, baseType: !89, size: 64, offset: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3449, file: !3450, line: 19, baseType: !89, size: 64, offset: 128)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3449, file: !3450, line: 21, baseType: !89, size: 64, offset: 192)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3449, file: !3450, line: 29, baseType: !89, size: 64, offset: 256)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3449, file: !3450, line: 35, baseType: !89, size: 64, offset: 320)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3449, file: !3450, line: 44, baseType: !89, size: 64, offset: 384)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3354, file: !3355, line: 202, baseType: !91, size: 64, offset: 5312)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3354, file: !3355, line: 213, baseType: !3461, size: 2048, offset: 5376)
!3461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3462, size: 2048, elements: !2690)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3463, line: 43, size: 128, elements: !3464)
!3463 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3464 = !{!3465, !3466}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3462, file: !3463, line: 44, baseType: !1011, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3462, file: !3463, line: 45, baseType: !1011, size: 64, offset: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3354, file: !3355, line: 216, baseType: !3468, size: 448, offset: 7424)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3355, line: 30, size: 448, elements: !3469)
!3469 = !{!3470, !3471, !3472, !3473, !3474, !3475, !3476}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3468, file: !3355, line: 31, baseType: !38, size: 32)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3468, file: !3355, line: 32, baseType: !967, size: 64, offset: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3468, file: !3355, line: 33, baseType: !15, size: 64, offset: 128)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3468, file: !3355, line: 34, baseType: !89, size: 64, offset: 192)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3468, file: !3355, line: 34, baseType: !89, size: 64, offset: 256)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3468, file: !3355, line: 35, baseType: !15, size: 64, offset: 320)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3468, file: !3355, line: 35, baseType: !15, size: 64, offset: 384)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3354, file: !3355, line: 219, baseType: !3478, size: 64, offset: 7872)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3355, line: 219, flags: DIFlagFwdDecl)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3354, file: !3355, line: 222, baseType: !22, size: 32, offset: 7936)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3354, file: !3355, line: 223, baseType: !3482, size: 64, offset: 8000)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3355, line: 223, flags: DIFlagFwdDecl)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3354, file: !3355, line: 230, baseType: !698, size: 8, offset: 8064)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3354, file: !3355, line: 231, baseType: !666, size: 16, offset: 8080)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3354, file: !3355, line: 232, baseType: !666, size: 16, offset: 8096)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3354, file: !3355, line: 234, baseType: !375, size: 64, offset: 8128)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3354, file: !3355, line: 237, baseType: !441, size: 256, offset: 8192)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3354, file: !3355, line: 243, baseType: !638, size: 320, offset: 8448)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !7, file: !8, line: 1111, baseType: !3491, size: 64, offset: 15424)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3355, line: 20, size: 16640, elements: !3493)
!3493 = !{!3494, !3495, !3496, !3497}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3492, file: !3355, line: 21, baseType: !394, size: 32)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3492, file: !3355, line: 22, baseType: !28, size: 32, offset: 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3492, file: !3355, line: 23, baseType: !505, size: 192, offset: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3492, file: !3355, line: 24, baseType: !3498, size: 16384, offset: 256)
!3498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3499, size: 16384, elements: !1154)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !554, line: 51, size: 256, elements: !3500)
!3500 = !{!3501}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3499, file: !554, line: 52, baseType: !3502, size: 256)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !554, line: 37, size: 256, elements: !3503)
!3503 = !{!3504, !3511, !3512, !3516}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3502, file: !554, line: 39, baseType: !3505, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3506, line: 83, baseType: !3507)
!3506 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3506, line: 82, baseType: !3509)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{null, !38}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3502, file: !554, line: 40, baseType: !15, size: 64, offset: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3502, file: !554, line: 46, baseType: !3513, size: 64, offset: 128)
!3513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3506, line: 86, baseType: !3514)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3506, line: 85, baseType: !2288)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3502, file: !554, line: 48, baseType: !3369, size: 64, offset: 192)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !7, file: !8, line: 1112, baseType: !3369, size: 64, offset: 15488)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !7, file: !8, line: 1113, baseType: !3369, size: 64, offset: 15552)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !7, file: !8, line: 1115, baseType: !3369, size: 64, offset: 15616)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !7, file: !8, line: 1116, baseType: !3365, size: 192, offset: 15680)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !7, file: !8, line: 1117, baseType: !15, size: 64, offset: 15872)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !7, file: !8, line: 1118, baseType: !1009, size: 64, offset: 15936)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !7, file: !8, line: 1119, baseType: !22, size: 32, offset: 16000)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !7, file: !8, line: 1121, baseType: !424, size: 64, offset: 16064)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !7, file: !8, line: 1125, baseType: !3526, size: 64, offset: 16128)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !8, line: 43, flags: DIFlagFwdDecl)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !7, file: !8, line: 1127, baseType: !579, size: 32, offset: 16192)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !7, file: !8, line: 1128, baseType: !22, size: 32, offset: 16224)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !7, file: !8, line: 1130, baseType: !3531, size: 128, offset: 16256)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3532, line: 37, size: 128, elements: !3533)
!3532 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3533 = !{!3534, !3535, !3536}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3531, file: !3532, line: 38, baseType: !38, size: 32)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3531, file: !3532, line: 39, baseType: !33, size: 32, offset: 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3531, file: !3532, line: 40, baseType: !3537, size: 64, offset: 64)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3532, line: 24, flags: DIFlagFwdDecl)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !7, file: !8, line: 1131, baseType: !3540, size: 256, offset: 16384)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3541, line: 12, size: 256, elements: !3542)
!3541 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3542 = !{!3543, !3544, !3545, !3546}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3540, file: !3541, line: 13, baseType: !711, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3540, file: !3541, line: 14, baseType: !15, size: 64, offset: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3540, file: !3541, line: 15, baseType: !15, size: 64, offset: 128)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3540, file: !3541, line: 16, baseType: !698, size: 8, offset: 192)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !7, file: !8, line: 1134, baseType: !89, size: 64, offset: 16640)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !7, file: !8, line: 1135, baseType: !89, size: 64, offset: 16704)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !7, file: !8, line: 1138, baseType: !394, size: 32, offset: 16768)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !7, file: !8, line: 1141, baseType: !192, size: 32, offset: 16800)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !7, file: !8, line: 1143, baseType: !3552, size: 64, offset: 16832)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !8, line: 735, size: 64, elements: !3553)
!3553 = !{!3554}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3552, file: !8, line: 736, baseType: !3555, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !7, file: !8, line: 1147, baseType: !258, size: 128, offset: 16896)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !7, file: !8, line: 1149, baseType: !6, size: 64, offset: 17024)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !7, file: !8, line: 1151, baseType: !3559, size: 64, offset: 17088)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !8, line: 1151, flags: DIFlagFwdDecl)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !7, file: !8, line: 1188, baseType: !26, size: 64, offset: 17152)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !7, file: !8, line: 1191, baseType: !3563, size: 64, offset: 17216)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !8, line: 44, flags: DIFlagFwdDecl)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !7, file: !8, line: 1194, baseType: !3566, size: 64, offset: 17280)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !8, line: 45, flags: DIFlagFwdDecl)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !7, file: !8, line: 1197, baseType: !3569, size: 64, offset: 17344)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !8, line: 61, flags: DIFlagFwdDecl)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !7, file: !8, line: 1199, baseType: !3572, size: 64, offset: 17408)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3574, line: 99, size: 128, elements: !3575)
!3574 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3575 = !{!3576, !3577, !3578}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3573, file: !3574, line: 100, baseType: !434, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3573, file: !3574, line: 101, baseType: !33, size: 32, offset: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3573, file: !3574, line: 103, baseType: !60, size: 16, offset: 96)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !7, file: !8, line: 1202, baseType: !3580, size: 64, offset: 17472)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !8, line: 48, flags: DIFlagFwdDecl)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !7, file: !8, line: 1205, baseType: !15, size: 64, offset: 17536)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !7, file: !8, line: 1206, baseType: !3584, size: 64, offset: 17600)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !554, line: 14, baseType: !3586)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !554, line: 12, size: 384, elements: !3587)
!3587 = !{!3588}
!3588 = !DIDerivedType(tag: DW_TAG_member, scope: !3586, file: !554, line: 13, baseType: !3589, size: 384)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3586, file: !554, line: 13, size: 384, elements: !3590)
!3590 = !{!3591, !3592, !3593, !3594}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3589, file: !554, line: 13, baseType: !38, size: 32)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3589, file: !554, line: 13, baseType: !38, size: 32, offset: 32)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3589, file: !554, line: 13, baseType: !38, size: 32, offset: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3589, file: !554, line: 13, baseType: !3595, size: 256, offset: 128)
!3595 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3596, line: 37, size: 256, elements: !3597)
!3596 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3597 = !{!3598, !3603, !3616, !3622, !3631, !3658, !3663}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3595, file: !3596, line: 42, baseType: !3599, size: 64)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3595, file: !3596, line: 39, size: 64, elements: !3600)
!3600 = !{!3601, !3602}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3599, file: !3596, line: 40, baseType: !3244, size: 32)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3599, file: !3596, line: 41, baseType: !585, size: 32, offset: 32)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3595, file: !3596, line: 50, baseType: !3604, size: 192)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3595, file: !3596, line: 45, size: 192, elements: !3605)
!3605 = !{!3606, !3608, !3609, !3615}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3604, file: !3596, line: 46, baseType: !3607, size: 32)
!3607 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !242, line: 95, baseType: !38)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3604, file: !3596, line: 47, baseType: !38, size: 32, offset: 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3604, file: !3596, line: 48, baseType: !3610, size: 64, offset: 64)
!3610 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3596, line: 11, baseType: !3611)
!3611 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3596, line: 8, size: 64, elements: !3612)
!3612 = !{!3613, !3614}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3611, file: !3596, line: 9, baseType: !38, size: 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3611, file: !3596, line: 10, baseType: !26, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3604, file: !3596, line: 49, baseType: !38, size: 32, offset: 128)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3595, file: !3596, line: 57, baseType: !3617, size: 128)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3595, file: !3596, line: 53, size: 128, elements: !3618)
!3618 = !{!3619, !3620, !3621}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3617, file: !3596, line: 54, baseType: !3244, size: 32)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3617, file: !3596, line: 55, baseType: !585, size: 32, offset: 32)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3617, file: !3596, line: 56, baseType: !3610, size: 64, offset: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3595, file: !3596, line: 66, baseType: !3623, size: 256)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3595, file: !3596, line: 60, size: 256, elements: !3624)
!3624 = !{!3625, !3626, !3627, !3628, !3630}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3623, file: !3596, line: 61, baseType: !3244, size: 32)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3623, file: !3596, line: 62, baseType: !585, size: 32, offset: 32)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3623, file: !3596, line: 63, baseType: !38, size: 32, offset: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3623, file: !3596, line: 64, baseType: !3629, size: 64, offset: 128)
!3629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !242, line: 94, baseType: !1008)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3623, file: !3596, line: 65, baseType: !3629, size: 64, offset: 192)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3595, file: !3596, line: 105, baseType: !3632, size: 256)
!3632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3595, file: !3596, line: 69, size: 256, elements: !3633)
!3633 = !{!3634, !3635}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3632, file: !3596, line: 70, baseType: !26, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_member, scope: !3632, file: !3596, line: 79, baseType: !3636, size: 192, offset: 64)
!3636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3632, file: !3596, line: 79, size: 192, elements: !3637)
!3637 = !{!3638, !3639, !3640, !3647, !3652}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3636, file: !3596, line: 81, baseType: !38, size: 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3636, file: !3596, line: 86, baseType: !666, size: 16)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3636, file: !3596, line: 92, baseType: !3641, size: 192)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3636, file: !3596, line: 88, size: 192, elements: !3642)
!3642 = !{!3643, !3645, !3646}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3641, file: !3596, line: 89, baseType: !3644, size: 64)
!3644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 64, elements: !236)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3641, file: !3596, line: 90, baseType: !26, size: 64, offset: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3641, file: !3596, line: 91, baseType: !26, size: 64, offset: 128)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3636, file: !3596, line: 97, baseType: !3648, size: 96)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3636, file: !3596, line: 94, size: 96, elements: !3649)
!3649 = !{!3650, !3651}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3648, file: !3596, line: 95, baseType: !3644, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3648, file: !3596, line: 96, baseType: !20, size: 32, offset: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3636, file: !3596, line: 103, baseType: !3653, size: 128)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3636, file: !3596, line: 99, size: 128, elements: !3654)
!3654 = !{!3655, !3656, !3657}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3653, file: !3596, line: 100, baseType: !15, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3653, file: !3596, line: 101, baseType: !20, size: 32, offset: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3653, file: !3596, line: 102, baseType: !20, size: 32, offset: 96)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3595, file: !3596, line: 111, baseType: !3659, size: 128)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3595, file: !3596, line: 108, size: 128, elements: !3660)
!3660 = !{!3661, !3662}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3659, file: !3596, line: 109, baseType: !967, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3659, file: !3596, line: 110, baseType: !38, size: 32, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3595, file: !3596, line: 118, baseType: !3664, size: 128)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3595, file: !3596, line: 114, size: 128, elements: !3665)
!3665 = !{!3666, !3667, !3668}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3664, file: !3596, line: 115, baseType: !26, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3664, file: !3596, line: 116, baseType: !38, size: 32, offset: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3664, file: !3596, line: 117, baseType: !22, size: 32, offset: 96)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !7, file: !8, line: 1208, baseType: !3449, size: 448, offset: 17664)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !7, file: !8, line: 1215, baseType: !89, size: 64, offset: 18112)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !7, file: !8, line: 1217, baseType: !89, size: 64, offset: 18176)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !7, file: !8, line: 1219, baseType: !89, size: 64, offset: 18240)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !7, file: !8, line: 1223, baseType: !3674, size: 64, offset: 18304)
!3674 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3675, line: 99, baseType: !3676)
!3675 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3675, line: 99, size: 64, elements: !3677)
!3677 = !{!3678}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3676, file: !3675, line: 99, baseType: !326, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !7, file: !8, line: 1225, baseType: !823, size: 32, offset: 18368)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !7, file: !8, line: 1226, baseType: !38, size: 32, offset: 18400)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !7, file: !8, line: 1227, baseType: !38, size: 32, offset: 18432)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !7, file: !8, line: 1231, baseType: !3683, size: 64, offset: 18496)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !8, line: 1231, flags: DIFlagFwdDecl)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !7, file: !8, line: 1233, baseType: !94, size: 128, offset: 18560)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !7, file: !8, line: 1240, baseType: !3687, size: 64, offset: 18688)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !8, line: 62, flags: DIFlagFwdDecl)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !7, file: !8, line: 1242, baseType: !3690, size: 64, offset: 18752)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !8, line: 1242, flags: DIFlagFwdDecl)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !7, file: !8, line: 1244, baseType: !94, size: 128, offset: 18816)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !7, file: !8, line: 1245, baseType: !3694, size: 64, offset: 18944)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !8, line: 51, flags: DIFlagFwdDecl)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !7, file: !8, line: 1246, baseType: !441, size: 256, offset: 19008)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !7, file: !8, line: 1247, baseType: !22, size: 32, offset: 19264)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !7, file: !8, line: 1250, baseType: !3699, size: 64, offset: 19328)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !8, line: 57, flags: DIFlagFwdDecl)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !7, file: !8, line: 1251, baseType: !441, size: 256, offset: 19392)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !7, file: !8, line: 1252, baseType: !94, size: 128, offset: 19648)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !7, file: !8, line: 1259, baseType: !1456, size: 64, offset: 19776)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !7, file: !8, line: 1260, baseType: !666, size: 16, offset: 19840)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !7, file: !8, line: 1261, baseType: !666, size: 16, offset: 19856)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !7, file: !8, line: 1314, baseType: !3707, size: 64, offset: 19904)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3709, line: 62, size: 256, align: 256, elements: !3710)
!3709 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3710 = !{!3711, !3712, !3713, !3714, !3715, !3716, !3717}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3708, file: !3709, line: 75, baseType: !20, size: 32)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3708, file: !3709, line: 90, baseType: !20, size: 32, offset: 32)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3708, file: !3709, line: 112, baseType: !90, size: 64, offset: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3708, file: !3709, line: 132, baseType: !20, size: 32, offset: 128)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3708, file: !3709, line: 140, baseType: !20, size: 32, offset: 160)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3708, file: !3709, line: 149, baseType: !20, size: 32, offset: 192)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3708, file: !3709, line: 154, baseType: !3718, offset: 224)
!3718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, elements: !568)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !7, file: !8, line: 1315, baseType: !18, size: 32, offset: 19968)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !7, file: !8, line: 1316, baseType: !18, size: 32, offset: 20000)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !7, file: !8, line: 1321, baseType: !15, size: 64, offset: 20032)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !7, file: !8, line: 1325, baseType: !38, size: 32, offset: 20096)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !7, file: !8, line: 1326, baseType: !38, size: 32, offset: 20128)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !7, file: !8, line: 1327, baseType: !38, size: 32, offset: 20160)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !7, file: !8, line: 1328, baseType: !38, size: 32, offset: 20192)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !7, file: !8, line: 1329, baseType: !421, size: 128, align: 64, offset: 20224)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !7, file: !8, line: 1332, baseType: !3728, size: 128, offset: 20352)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3729, line: 51, size: 128, elements: !3730)
!3729 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3730 = !{!3731, !3736, !3737}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3728, file: !3729, line: 60, baseType: !3732, size: 64)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3733, line: 7, size: 64, elements: !3734)
!3733 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3734 = !{!3735}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3732, file: !3733, line: 12, baseType: !323, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3728, file: !3729, line: 63, baseType: !698, size: 8, offset: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3728, file: !3729, line: 70, baseType: !698, size: 8, offset: 72)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !7, file: !8, line: 1335, baseType: !2928, size: 64, offset: 20480)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !7, file: !8, line: 1337, baseType: !3740, size: 128, offset: 20544)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3729, line: 39, size: 128, elements: !3741)
!3741 = !{!3742, !3743, !3744}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3740, file: !3729, line: 40, baseType: !1235, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3740, file: !3729, line: 42, baseType: !20, size: 32, offset: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3740, file: !3729, line: 43, baseType: !20, size: 32, offset: 96)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !7, file: !8, line: 1340, baseType: !3746, size: 64, offset: 20672)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !8, line: 69, flags: DIFlagFwdDecl)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !7, file: !8, line: 1351, baseType: !38, size: 32, offset: 20736)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !7, file: !8, line: 1352, baseType: !38, size: 32, offset: 20768)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !7, file: !8, line: 1354, baseType: !15, size: 64, offset: 20800)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !7, file: !8, line: 1364, baseType: !89, size: 64, offset: 20864)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !7, file: !8, line: 1365, baseType: !89, size: 64, offset: 20928)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !7, file: !8, line: 1412, baseType: !15, size: 64, offset: 20992)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !7, file: !8, line: 1453, baseType: !3755, size: 64, offset: 21056)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !8, line: 1453, flags: DIFlagFwdDecl)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !7, file: !8, line: 1457, baseType: !3758, size: 64, offset: 21120)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !3148, line: 61, size: 576, elements: !3760)
!3760 = !{!3761, !3768, !3787, !3790, !3791, !3824, !3834}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3759, file: !3148, line: 62, baseType: !3762, size: 32)
!3762 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !3148, line: 51, baseType: !22, size: 32, elements: !3763)
!3763 = !{!3764, !3765, !3766, !3767}
!3764 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!3765 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!3766 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!3767 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!3768 = !DIDerivedType(tag: DW_TAG_member, scope: !3759, file: !3148, line: 64, baseType: !3769, size: 192, offset: 64)
!3769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3759, file: !3148, line: 64, size: 192, elements: !3770)
!3770 = !{!3771, !3782}
!3771 = !DIDerivedType(tag: DW_TAG_member, scope: !3769, file: !3148, line: 65, baseType: !3772, size: 192)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3769, file: !3148, line: 65, size: 192, elements: !3773)
!3773 = !{!3774, !3781}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3772, file: !3148, line: 66, baseType: !3775, size: 128)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3776, line: 50, size: 128, elements: !3777)
!3776 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3777 = !{!3778, !3779, !3780}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3775, file: !3776, line: 52, baseType: !15, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3775, file: !3776, line: 54, baseType: !22, size: 32, offset: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3775, file: !3776, line: 55, baseType: !22, size: 32, offset: 96)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3772, file: !3148, line: 67, baseType: !15, size: 64, offset: 128)
!3782 = !DIDerivedType(tag: DW_TAG_member, scope: !3769, file: !3148, line: 70, baseType: !3783, size: 192)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3769, file: !3148, line: 70, size: 192, elements: !3784)
!3784 = !{!3785, !3786}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3783, file: !3148, line: 71, baseType: !421, size: 128, align: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3783, file: !3148, line: 72, baseType: !15, size: 64, offset: 128)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3759, file: !3148, line: 76, baseType: !3788, size: 64, offset: 256)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !3148, line: 76, flags: DIFlagFwdDecl)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3759, file: !3148, line: 77, baseType: !15, size: 64, offset: 320)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3759, file: !3148, line: 79, baseType: !3792, size: 64, offset: 384)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3776, line: 25, size: 256, elements: !3794)
!3794 = !{!3795, !3801, !3805}
!3795 = !DIDerivedType(tag: DW_TAG_member, scope: !3793, file: !3776, line: 26, baseType: !3796, size: 128)
!3796 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3793, file: !3776, line: 26, size: 128, elements: !3797)
!3797 = !{!3798, !3800}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3796, file: !3776, line: 27, baseType: !3799, size: 128)
!3799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 128, elements: !2690)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3796, file: !3776, line: 28, baseType: !3799, size: 128)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3793, file: !3776, line: 31, baseType: !3802, size: 64, offset: 128)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3804)
!3804 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3776, line: 23, flags: DIFlagFwdDecl)
!3805 = !DIDerivedType(tag: DW_TAG_member, scope: !3793, file: !3776, line: 33, baseType: !3806, size: 64, offset: 192)
!3806 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3793, file: !3776, line: 33, size: 64, elements: !3807)
!3807 = !{!3808, !3814, !3819}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3806, file: !3776, line: 38, baseType: !3809, size: 64)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3806, file: !3776, line: 34, size: 64, elements: !3810)
!3810 = !{!3811, !3812, !3813}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3809, file: !3776, line: 35, baseType: !630, size: 32)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3809, file: !3776, line: 36, baseType: !209, size: 8, offset: 32)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3809, file: !3776, line: 37, baseType: !209, size: 8, offset: 40)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3806, file: !3776, line: 42, baseType: !3815, size: 16)
!3815 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3806, file: !3776, line: 39, size: 16, elements: !3816)
!3816 = !{!3817, !3818}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3815, file: !3776, line: 40, baseType: !209, size: 8)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3815, file: !3776, line: 41, baseType: !209, size: 8, offset: 8)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3806, file: !3776, line: 46, baseType: !3820, size: 16)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3806, file: !3776, line: 43, size: 16, elements: !3821)
!3821 = !{!3822, !3823}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3820, file: !3776, line: 44, baseType: !209, size: 8)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3820, file: !3776, line: 45, baseType: !209, size: 8, offset: 8)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3759, file: !3148, line: 81, baseType: !3825, size: 64, offset: 448)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !3148, line: 85, size: 384, elements: !3827)
!3827 = !{!3828, !3829, !3830, !3831, !3832, !3833}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3826, file: !3148, line: 86, baseType: !3788, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3826, file: !3148, line: 87, baseType: !15, size: 64, offset: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3826, file: !3148, line: 88, baseType: !15, size: 64, offset: 128)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3826, file: !3148, line: 89, baseType: !15, size: 64, offset: 192)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3826, file: !3148, line: 90, baseType: !698, size: 8, offset: 256)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3826, file: !3148, line: 92, baseType: !3825, size: 64, offset: 320)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3759, file: !3148, line: 82, baseType: !22, size: 32, offset: 512)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !7, file: !8, line: 1463, baseType: !3836, offset: 21184)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !8, line: 739, elements: !405)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !7, file: !8, line: 1470, baseType: !421, size: 128, align: 64, offset: 21184)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !7, file: !8, line: 1471, baseType: !28, size: 32, offset: 21312)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !7, file: !8, line: 1472, baseType: !38, size: 32, offset: 21344)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !7, file: !8, line: 1474, baseType: !6, size: 64, offset: 21376)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !7, file: !8, line: 1475, baseType: !2172, size: 320, offset: 21440)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !7, file: !8, line: 1478, baseType: !3843, size: 64, offset: 21760)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !8, line: 1478, flags: DIFlagFwdDecl)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !7, file: !8, line: 1482, baseType: !28, size: 32, offset: 21824)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !7, file: !8, line: 1489, baseType: !26, size: 64, offset: 21888)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !7, file: !8, line: 1504, baseType: !26, size: 64, offset: 21952)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !7, file: !8, line: 1505, baseType: !90, size: 64, offset: 22016)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !7, file: !8, line: 1506, baseType: !89, size: 64, offset: 22080)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !7, file: !8, line: 1507, baseType: !90, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !7, file: !8, line: 1508, baseType: !90, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !7, file: !8, line: 1509, baseType: !90, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !7, file: !8, line: 1510, baseType: !421, size: 128, align: 64, offset: 22208)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !7, file: !8, line: 1511, baseType: !38, size: 32, offset: 22336)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !7, file: !8, line: 1515, baseType: !3856, size: 64, offset: 22400)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !48, line: 56, size: 64, elements: !3857)
!3857 = !{!3858}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3856, file: !48, line: 57, baseType: !51, size: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !7, file: !8, line: 1518, baseType: !3856, size: 64, offset: 22464)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !7, file: !8, line: 1528, baseType: !421, size: 128, align: 64, offset: 22528)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !7, file: !8, line: 1552, baseType: !3862, size: 35328, offset: 23040)
!3862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3863, line: 430, size: 35328, elements: !3864)
!3863 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3864 = !{!3865, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3894, !3895, !3896, !3897, !3898, !3899, !3902, !3903, !3904, !3905}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3862, file: !3863, line: 432, baseType: !3866, size: 192)
!3866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3867, size: 192, elements: !479)
!3867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3868, line: 16, size: 64, elements: !3869)
!3868 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3869 = !{!3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3867, file: !3868, line: 17, baseType: !58, size: 16)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3867, file: !3868, line: 18, baseType: !58, size: 16, offset: 16)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3867, file: !3868, line: 19, baseType: !58, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3867, file: !3868, line: 19, baseType: !58, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3867, file: !3868, line: 19, baseType: !58, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3867, file: !3868, line: 19, baseType: !58, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3867, file: !3868, line: 19, baseType: !58, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3867, file: !3868, line: 20, baseType: !58, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3867, file: !3868, line: 20, baseType: !58, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3867, file: !3868, line: 20, baseType: !58, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3867, file: !3868, line: 20, baseType: !58, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3867, file: !3868, line: 20, baseType: !58, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3867, file: !3868, line: 20, baseType: !58, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3862, file: !3863, line: 436, baseType: !15, size: 64, offset: 192)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3862, file: !3863, line: 440, baseType: !60, size: 16, offset: 256)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3862, file: !3863, line: 441, baseType: !60, size: 16, offset: 272)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3862, file: !3863, line: 442, baseType: !60, size: 16, offset: 288)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3862, file: !3863, line: 443, baseType: !60, size: 16, offset: 304)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3862, file: !3863, line: 447, baseType: !15, size: 64, offset: 320)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3862, file: !3863, line: 448, baseType: !15, size: 64, offset: 384)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3862, file: !3863, line: 459, baseType: !3891, size: 256, offset: 448)
!3891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3892, size: 256, elements: !501)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3863, line: 428, flags: DIFlagFwdDecl)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3862, file: !3863, line: 461, baseType: !15, size: 64, offset: 704)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3862, file: !3863, line: 463, baseType: !15, size: 64, offset: 768)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3862, file: !3863, line: 465, baseType: !15, size: 64, offset: 832)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3862, file: !3863, line: 466, baseType: !15, size: 64, offset: 896)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3862, file: !3863, line: 467, baseType: !15, size: 64, offset: 960)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3862, file: !3863, line: 473, baseType: !3900, size: 64, offset: 1024)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3863, line: 10, flags: DIFlagFwdDecl)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3862, file: !3863, line: 480, baseType: !15, size: 64, offset: 1088)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3862, file: !3863, line: 482, baseType: !22, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3862, file: !3863, line: 491, baseType: !18, size: 32, offset: 1184)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3862, file: !3863, line: 501, baseType: !3906, size: 33792, offset: 1536)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3907, line: 448, size: 33792, elements: !3908)
!3907 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3908 = !{!3909, !3910, !3911, !4073, !4074, !4080, !4081}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3906, file: !3907, line: 461, baseType: !22, size: 32)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3906, file: !3907, line: 468, baseType: !15, size: 64, offset: 64)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3906, file: !3907, line: 476, baseType: !3912, size: 64, offset: 128)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3907, line: 356, size: 33280, align: 512, elements: !3914)
!3914 = !{!3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3913, file: !3907, line: 358, baseType: !22, size: 32)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3913, file: !3907, line: 361, baseType: !22, size: 32, offset: 32)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3913, file: !3907, line: 364, baseType: !89, size: 64, offset: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3913, file: !3907, line: 367, baseType: !89, size: 64, offset: 128)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3913, file: !3907, line: 370, baseType: !89, size: 64, offset: 192)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3913, file: !3907, line: 373, baseType: !22, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3913, file: !3907, line: 376, baseType: !22, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3913, file: !3907, line: 391, baseType: !22, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3913, file: !3907, line: 394, baseType: !22, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3913, file: !3907, line: 397, baseType: !3925, size: 32768, offset: 512)
!3925 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3907, line: 348, size: 32768, elements: !3926)
!3926 = !{!3927, !3942, !3979, !4056, !4069}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3925, file: !3907, line: 349, baseType: !3928, size: 896)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3907, line: 12, size: 896, elements: !3929)
!3929 = !{!3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3941}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3928, file: !3907, line: 13, baseType: !18, size: 32)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3928, file: !3907, line: 14, baseType: !18, size: 32, offset: 32)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3928, file: !3907, line: 15, baseType: !18, size: 32, offset: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3928, file: !3907, line: 16, baseType: !18, size: 32, offset: 96)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3928, file: !3907, line: 17, baseType: !18, size: 32, offset: 128)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3928, file: !3907, line: 18, baseType: !18, size: 32, offset: 160)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3928, file: !3907, line: 19, baseType: !18, size: 32, offset: 192)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3928, file: !3907, line: 22, baseType: !3938, size: 640, offset: 224)
!3938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 640, elements: !3939)
!3939 = !{!3940}
!3940 = !DISubrange(count: 20)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3928, file: !3907, line: 25, baseType: !18, size: 32, offset: 864)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3925, file: !3907, line: 350, baseType: !3943, size: 4096, align: 128)
!3943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3907, line: 34, size: 4096, align: 128, elements: !3944)
!3944 = !{!3945, !3946, !3947, !3948, !3949, !3964, !3965, !3966, !3968, !3970, !3974}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3943, file: !3907, line: 35, baseType: !58, size: 16)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3943, file: !3907, line: 36, baseType: !58, size: 16, offset: 16)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3943, file: !3907, line: 37, baseType: !58, size: 16, offset: 32)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3943, file: !3907, line: 38, baseType: !58, size: 16, offset: 48)
!3949 = !DIDerivedType(tag: DW_TAG_member, scope: !3943, file: !3907, line: 39, baseType: !3950, size: 128, offset: 64)
!3950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3943, file: !3907, line: 39, size: 128, elements: !3951)
!3951 = !{!3952, !3957}
!3952 = !DIDerivedType(tag: DW_TAG_member, scope: !3950, file: !3907, line: 40, baseType: !3953, size: 128)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3950, file: !3907, line: 40, size: 128, elements: !3954)
!3954 = !{!3955, !3956}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3953, file: !3907, line: 41, baseType: !89, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3953, file: !3907, line: 42, baseType: !89, size: 64, offset: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, scope: !3950, file: !3907, line: 44, baseType: !3958, size: 128)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3950, file: !3907, line: 44, size: 128, elements: !3959)
!3959 = !{!3960, !3961, !3962, !3963}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3958, file: !3907, line: 45, baseType: !18, size: 32)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3958, file: !3907, line: 46, baseType: !18, size: 32, offset: 32)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3958, file: !3907, line: 47, baseType: !18, size: 32, offset: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3958, file: !3907, line: 48, baseType: !18, size: 32, offset: 96)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3943, file: !3907, line: 51, baseType: !18, size: 32, offset: 192)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3943, file: !3907, line: 52, baseType: !18, size: 32, offset: 224)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3943, file: !3907, line: 55, baseType: !3967, size: 1024, offset: 256)
!3967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 1024, elements: !2681)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3943, file: !3907, line: 58, baseType: !3969, size: 2048, offset: 1280)
!3969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 2048, elements: !1154)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3943, file: !3907, line: 60, baseType: !3971, size: 384, offset: 3328)
!3971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 384, elements: !3972)
!3972 = !{!3973}
!3973 = !DISubrange(count: 12)
!3974 = !DIDerivedType(tag: DW_TAG_member, scope: !3943, file: !3907, line: 62, baseType: !3975, size: 384, offset: 3712)
!3975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3943, file: !3907, line: 62, size: 384, elements: !3976)
!3976 = !{!3977, !3978}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3975, file: !3907, line: 63, baseType: !3971, size: 384)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3975, file: !3907, line: 64, baseType: !3971, size: 384)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3925, file: !3907, line: 351, baseType: !3980, size: 1088)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3907, line: 79, size: 1088, elements: !3981)
!3981 = !{!3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !4055}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3980, file: !3907, line: 80, baseType: !18, size: 32)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3980, file: !3907, line: 81, baseType: !18, size: 32, offset: 32)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3980, file: !3907, line: 82, baseType: !18, size: 32, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3980, file: !3907, line: 83, baseType: !18, size: 32, offset: 96)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3980, file: !3907, line: 84, baseType: !18, size: 32, offset: 128)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3980, file: !3907, line: 85, baseType: !18, size: 32, offset: 160)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3980, file: !3907, line: 86, baseType: !18, size: 32, offset: 192)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3980, file: !3907, line: 88, baseType: !3938, size: 640, offset: 224)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3980, file: !3907, line: 89, baseType: !209, size: 8, offset: 864)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3980, file: !3907, line: 90, baseType: !209, size: 8, offset: 872)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3980, file: !3907, line: 91, baseType: !209, size: 8, offset: 880)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3980, file: !3907, line: 92, baseType: !209, size: 8, offset: 888)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3980, file: !3907, line: 93, baseType: !209, size: 8, offset: 896)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3980, file: !3907, line: 94, baseType: !209, size: 8, offset: 904)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3980, file: !3907, line: 95, baseType: !3997, size: 64, offset: 960)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3999, line: 11, size: 128, elements: !4000)
!3999 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4000 = !{!4001, !4002}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3998, file: !3999, line: 12, baseType: !967, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3998, file: !3999, line: 13, baseType: !4003, size: 64, offset: 64)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4005, line: 103, size: 1344, elements: !4006)
!4005 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4006 = !{!4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4035, !4036, !4037}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4004, file: !4005, line: 109, baseType: !15, size: 64)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4004, file: !4005, line: 110, baseType: !15, size: 64, offset: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4004, file: !4005, line: 111, baseType: !15, size: 64, offset: 128)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4004, file: !4005, line: 112, baseType: !15, size: 64, offset: 192)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4004, file: !4005, line: 113, baseType: !15, size: 64, offset: 256)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4004, file: !4005, line: 114, baseType: !15, size: 64, offset: 320)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4004, file: !4005, line: 117, baseType: !15, size: 64, offset: 384)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4004, file: !4005, line: 118, baseType: !15, size: 64, offset: 448)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4004, file: !4005, line: 119, baseType: !15, size: 64, offset: 512)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4004, file: !4005, line: 120, baseType: !15, size: 64, offset: 576)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4004, file: !4005, line: 121, baseType: !15, size: 64, offset: 640)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4004, file: !4005, line: 122, baseType: !15, size: 64, offset: 704)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4004, file: !4005, line: 123, baseType: !15, size: 64, offset: 768)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4004, file: !4005, line: 124, baseType: !15, size: 64, offset: 832)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4004, file: !4005, line: 125, baseType: !15, size: 64, offset: 896)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4004, file: !4005, line: 139, baseType: !15, size: 64, offset: 960)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4004, file: !4005, line: 142, baseType: !15, size: 64, offset: 1024)
!4024 = !DIDerivedType(tag: DW_TAG_member, scope: !4004, file: !4005, line: 144, baseType: !4025, size: 64, offset: 1088)
!4025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4004, file: !4005, line: 144, size: 64, elements: !4026)
!4026 = !{!4027, !4028, !4029}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4025, file: !4005, line: 146, baseType: !58, size: 16)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4025, file: !4005, line: 148, baseType: !89, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4025, file: !4005, line: 150, baseType: !4030, size: 64)
!4030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4005, line: 59, size: 64, elements: !4031)
!4031 = !{!4032, !4033, !4034}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4030, file: !4005, line: 61, baseType: !89, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4030, file: !4005, line: 63, baseType: !89, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4030, file: !4005, line: 65, baseType: !89, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4004, file: !4005, line: 153, baseType: !15, size: 64, offset: 1152)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4004, file: !4005, line: 154, baseType: !15, size: 64, offset: 1216)
!4037 = !DIDerivedType(tag: DW_TAG_member, scope: !4004, file: !4005, line: 156, baseType: !4038, size: 64, offset: 1280)
!4038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4004, file: !4005, line: 156, size: 64, elements: !4039)
!4039 = !{!4040, !4041, !4042}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4038, file: !4005, line: 158, baseType: !58, size: 16)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4038, file: !4005, line: 160, baseType: !89, size: 64)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4038, file: !4005, line: 162, baseType: !4043, size: 64)
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4005, line: 69, size: 64, elements: !4044)
!4044 = !{!4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4043, file: !4005, line: 71, baseType: !89, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4043, file: !4005, line: 73, baseType: !89, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4043, file: !4005, line: 75, baseType: !89, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4043, file: !4005, line: 77, baseType: !89, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4043, file: !4005, line: 80, baseType: !89, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4043, file: !4005, line: 83, baseType: !89, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4043, file: !4005, line: 86, baseType: !89, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4043, file: !4005, line: 88, baseType: !89, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4043, file: !4005, line: 93, baseType: !89, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4043, file: !4005, line: 100, baseType: !89, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3980, file: !3907, line: 96, baseType: !18, size: 32, offset: 1024)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3925, file: !3907, line: 352, baseType: !4057, size: 4608, align: 512)
!4057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3907, line: 333, size: 4608, align: 512, elements: !4058)
!4058 = !{!4059, !4060, !4067}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4057, file: !3907, line: 334, baseType: !3943, size: 4096, align: 128)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4057, file: !3907, line: 335, baseType: !4061, size: 512, offset: 4096)
!4061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3907, line: 312, size: 512, elements: !4062)
!4062 = !{!4063, !4064, !4065}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4061, file: !3907, line: 313, baseType: !89, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4061, file: !3907, line: 314, baseType: !89, size: 64, offset: 64)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4061, file: !3907, line: 315, baseType: !4066, size: 384, offset: 128)
!4066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 384, elements: !685)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4057, file: !3907, line: 336, baseType: !4068, offset: 4608)
!4068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, elements: !568)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3925, file: !3907, line: 353, baseType: !4070, size: 32768)
!4070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 32768, elements: !4071)
!4071 = !{!4072}
!4072 = !DISubrange(count: 4096)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3906, file: !3907, line: 484, baseType: !3912, size: 64, offset: 192)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3906, file: !3907, line: 491, baseType: !4075, size: 128, offset: 256)
!4075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3907, line: 404, size: 128, elements: !4076)
!4076 = !{!4077, !4078, !4079}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4075, file: !3907, line: 424, baseType: !89, size: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4075, file: !3907, line: 432, baseType: !22, size: 32, offset: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4075, file: !3907, line: 440, baseType: !22, size: 32, offset: 96)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3906, file: !3907, line: 498, baseType: !4075, size: 128, offset: 384)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3906, file: !3907, line: 508, baseType: !3913, size: 33280, align: 512, offset: 512)
!4082 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/trace/.rethook.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/trace/rethook\22 -D KBUILD_BASENAME=\22rethook\22 -D KBUILD_MODNAME=\22rethook\22 -D __KBUILD_MODNAME=kmod_rethook -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/trace/rethook.ll kernel/trace/rethook.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4083, retainedTypes: !4106, globals: !4163, splitDebugInlining: false, nameTableKind: None)
!4083 = !{!178, !571, !1096, !1332, !1478, !1700, !1770, !2339, !2408, !3207, !3762, !4084, !4089, !4096}
!4084 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4085, line: 10, baseType: !22, size: 32, elements: !4086)
!4085 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!4086 = !{!4087, !4088}
!4087 = !DIEnumerator(name: "false", value: 0)
!4088 = !DIEnumerator(name: "true", value: 1)
!4089 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !29, line: 119, baseType: !22, size: 32, elements: !4090)
!4090 = !{!4091, !4092, !4093, !4094, !4095}
!4091 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!4092 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!4093 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!4094 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!4095 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!4096 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !4097, line: 364, baseType: !22, size: 32, elements: !4098)
!4097 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!4098 = !{!4099, !4100, !4101, !4102, !4103, !4104, !4105}
!4099 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!4100 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!4101 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!4102 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!4103 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!4104 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!4105 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!4106 = !{!26, !4107, !4140, !4129, !4141, !532, !15, !4143, !38, !18, !4124, !4146, !4148, !4151, !4152, !4153, !4155, !4156, !4158, !2070, !4160, !4162, !6}
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rethook_node", file: !4109, line: 55, size: 384, elements: !4110)
!4109 = !DIFile(filename: "./include/linux/rethook.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85ff586ed71ca39237544b8dc008a817")
!4110 = !{!4111, !4122, !4123, !4138, !4139}
!4111 = !DIDerivedType(tag: DW_TAG_member, scope: !4108, file: !4109, line: 56, baseType: !4112, size: 128)
!4112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4108, file: !4109, line: 56, size: 128, elements: !4113)
!4113 = !{!4114, !4121}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !4112, file: !4109, line: 57, baseType: !4115, size: 128)
!4115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freelist_node", file: !4116, line: 18, size: 128, elements: !4117)
!4116 = !DIFile(filename: "./include/linux/freelist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d8a4e8a502ceb024e8cafd6126b6d04a")
!4117 = !{!4118, !4119}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !4115, file: !4116, line: 19, baseType: !33, size: 32)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4115, file: !4116, line: 20, baseType: !4120, size: 64, offset: 64)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4112, file: !4109, line: 58, baseType: !421, size: 128, align: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !4108, file: !4109, line: 60, baseType: !47, size: 64, offset: 128)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "rethook", scope: !4108, file: !4109, line: 61, baseType: !4124, size: 64, offset: 192)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rethook", file: !4109, line: 30, size: 384, elements: !4126)
!4126 = !{!4127, !4128, !4132, !4136, !4137}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4125, file: !4109, line: 31, baseType: !26, size: 64)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4125, file: !4109, line: 37, baseType: !4129, size: 64, offset: 64)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{null, !4107, !26, !15, !4003}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !4125, file: !4109, line: 38, baseType: !4133, size: 64, offset: 128)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freelist_head", file: !4116, line: 23, size: 64, elements: !4134)
!4134 = !{!4135}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4133, file: !4116, line: 24, baseType: !4120, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4125, file: !4109, line: 39, baseType: !28, size: 32, offset: 192)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4125, file: !4109, line: 40, baseType: !421, size: 128, align: 64, offset: 256)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "ret_addr", scope: !4108, file: !4109, line: 62, baseType: !15, size: 64, offset: 256)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !4108, file: !4109, line: 63, baseType: !15, size: 64, offset: 320)
!4140 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !34, line: 42, baseType: !15)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4129)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4145)
!4145 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !22)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !38)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4150)
!4150 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4120)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !89)
!4155 = !DIDerivedType(tag: DW_TAG_typedef, name: "rethook_handler_t", file: !4109, line: 17, baseType: !4129)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4142)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4147)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !18)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!4163 = !{!0, !4164, !4166, !4168, !4170, !4172, !4177, !4179, !4184, !4209, !4211, !4216}
!4164 = !DIGlobalVariableExpression(var: !4165, expr: !DIExpression())
!4165 = distinct !DIGlobalVariable(name: "_kbl_addr_rethook_recycle", scope: !4082, file: !3, line: 159, type: !15, isLocal: true, isDefinition: true)
!4166 = !DIGlobalVariableExpression(var: !4167, expr: !DIExpression())
!4167 = distinct !DIGlobalVariable(name: "_kbl_addr_rethook_try_get", scope: !4082, file: !3, line: 192, type: !15, isLocal: true, isDefinition: true)
!4168 = !DIGlobalVariableExpression(var: !4169, expr: !DIExpression())
!4169 = distinct !DIGlobalVariable(name: "_kbl_addr_rethook_hook", scope: !4082, file: !3, line: 212, type: !15, isLocal: true, isDefinition: true)
!4170 = !DIGlobalVariableExpression(var: !4171, expr: !DIExpression())
!4171 = distinct !DIGlobalVariable(name: "_kbl_addr___rethook_find_ret_addr", scope: !4082, file: !3, line: 236, type: !15, isLocal: true, isDefinition: true)
!4172 = !DIGlobalVariableExpression(var: !4173, expr: !DIExpression())
!4173 = distinct !DIGlobalVariable(scope: null, file: !3, line: 260, type: !4174, isLocal: true, isDefinition: true)
!4174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 184, elements: !4175)
!4175 = !{!4176}
!4176 = !DISubrange(count: 23)
!4177 = !DIGlobalVariableExpression(var: !4178, expr: !DIExpression())
!4178 = distinct !DIGlobalVariable(name: "_kbl_addr_rethook_find_ret_addr", scope: !4082, file: !3, line: 275, type: !15, isLocal: true, isDefinition: true)
!4179 = !DIGlobalVariableExpression(var: !4180, expr: !DIExpression())
!4180 = distinct !DIGlobalVariable(scope: null, file: !3, line: 299, type: !4181, isLocal: true, isDefinition: true)
!4181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 656, elements: !4182)
!4182 = !{!4183}
!4183 = !DISubrange(count: 82)
!4184 = !DIGlobalVariableExpression(var: !4185, expr: !DIExpression())
!4185 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace313", scope: !4186, file: !3, line: 343, type: !26, isLocal: true, isDefinition: true)
!4186 = distinct !DISubprogram(name: "rethook_trampoline_handler", scope: !3, file: !3, line: 289, type: !4187, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !4189)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!15, !4003, !15}
!4189 = !{!4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4200, !4203, !4206}
!4190 = !DILocalVariable(name: "regs", arg: 1, scope: !4186, file: !3, line: 289, type: !4003)
!4191 = !DILocalVariable(name: "frame", arg: 2, scope: !4186, file: !3, line: 290, type: !15)
!4192 = !DILocalVariable(name: "first", scope: !4186, file: !3, line: 292, type: !51)
!4193 = !DILocalVariable(name: "node", scope: !4186, file: !3, line: 292, type: !51)
!4194 = !DILocalVariable(name: "correct_ret_addr", scope: !4186, file: !3, line: 293, type: !15)
!4195 = !DILocalVariable(name: "handler", scope: !4186, file: !3, line: 294, type: !4155)
!4196 = !DILocalVariable(name: "rhn", scope: !4186, file: !3, line: 295, type: !4107)
!4197 = !DILocalVariable(name: "__mptr", scope: !4198, file: !3, line: 317, type: !26)
!4198 = distinct !DILexicalBlock(scope: !4199, file: !3, line: 317, column: 9)
!4199 = distinct !DILexicalBlock(scope: !4186, file: !3, line: 316, column: 16)
!4200 = !DILocalVariable(name: "__ret_warn_on", scope: !4201, file: !3, line: 318, type: !38)
!4201 = distinct !DILexicalBlock(scope: !4202, file: !3, line: 318, column: 7)
!4202 = distinct !DILexicalBlock(scope: !4199, file: !3, line: 318, column: 7)
!4203 = !DILocalVariable(name: "__flags", scope: !4204, file: !3, line: 318, type: !38)
!4204 = distinct !DILexicalBlock(scope: !4205, file: !3, line: 318, column: 7)
!4205 = distinct !DILexicalBlock(scope: !4201, file: !3, line: 318, column: 7)
!4206 = !DILocalVariable(name: "__mptr", scope: !4207, file: !3, line: 339, type: !26)
!4207 = distinct !DILexicalBlock(scope: !4208, file: !3, line: 339, column: 9)
!4208 = distinct !DILexicalBlock(scope: !4186, file: !3, line: 338, column: 16)
!4209 = !DIGlobalVariableExpression(var: !4210, expr: !DIExpression())
!4210 = distinct !DIGlobalVariable(name: "_kbl_addr_rethook_trampoline_handler", scope: !4082, file: !3, line: 347, type: !15, isLocal: true, isDefinition: true)
!4211 = !DIGlobalVariableExpression(var: !4212, expr: !DIExpression())
!4212 = distinct !DIGlobalVariable(scope: null, file: !4097, line: 480, type: !4213, isLocal: true, isDefinition: true)
!4213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 168, elements: !4214)
!4214 = !{!4215}
!4215 = !DISubrange(count: 21)
!4216 = !DIGlobalVariableExpression(var: !4217, expr: !DIExpression())
!4217 = distinct !DIGlobalVariable(scope: null, file: !4116, line: 106, type: !4218, isLocal: true, isDefinition: true)
!4218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 200, elements: !4219)
!4219 = !{!4220}
!4220 = !DISubrange(count: 25)
!4221 = !{!4222, !4223, !4224, !4225}
!4222 = !DILocalVariable(name: "tk", arg: 1, scope: !2, file: !3, line: 21, type: !6)
!4223 = !DILocalVariable(name: "rhn", scope: !2, file: !3, line: 23, type: !4107)
!4224 = !DILocalVariable(name: "node", scope: !2, file: !3, line: 24, type: !51)
!4225 = !DILocalVariable(name: "__mptr", scope: !4226, file: !3, line: 28, type: !26)
!4226 = distinct !DILexicalBlock(scope: !4227, file: !3, line: 28, column: 9)
!4227 = distinct !DILexicalBlock(scope: !2, file: !3, line: 27, column: 15)
!4228 = !{!"rsp"}
!4229 = !{i32 7, !"Dwarf Version", i32 5}
!4230 = !{i32 2, !"Debug Info Version", i32 3}
!4231 = !{i32 1, !"wchar_size", i32 2}
!4232 = !{i32 8, !"cf-protection-branch", i32 1}
!4233 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4234 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4235 = !{i32 1, !"Code Model", i32 2}
!4236 = !{i32 1, !"override-stack-alignment", i32 8}
!4237 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4238 = !DILocation(line: 21, column: 45, scope: !2)
!4239 = !DILocation(line: 23, column: 2, scope: !2)
!4240 = !DILocation(line: 23, column: 23, scope: !2)
!4241 = !DILocation(line: 24, column: 2, scope: !2)
!4242 = !DILocation(line: 24, column: 21, scope: !2)
!4243 = !DILocation(line: 26, column: 26, scope: !2)
!4244 = !DILocation(line: 26, column: 30, scope: !2)
!4245 = !DILocation(line: 26, column: 9, scope: !2)
!4246 = !DILocation(line: 26, column: 7, scope: !2)
!4247 = !DILocation(line: 27, column: 2, scope: !2)
!4248 = !DILocation(line: 27, column: 9, scope: !2)
!4249 = !DILocation(line: 28, column: 9, scope: !4226)
!4250 = !DILocation(line: 28, column: 9, scope: !4227)
!4251 = !DILocation(line: 28, column: 7, scope: !4227)
!4252 = !DILocation(line: 29, column: 10, scope: !4227)
!4253 = !DILocation(line: 29, column: 16, scope: !4227)
!4254 = !DILocation(line: 29, column: 8, scope: !4227)
!4255 = !DILocation(line: 30, column: 3, scope: !4227)
!4256 = !DILocation(line: 30, column: 3, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4227, file: !3, line: 30, column: 3)
!4258 = !{i64 2154534499}
!4259 = !DILocation(line: 31, column: 19, scope: !4227)
!4260 = !DILocation(line: 31, column: 3, scope: !4227)
!4261 = !DILocation(line: 32, column: 3, scope: !4227)
!4262 = !DILocation(line: 32, column: 3, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4227, file: !3, line: 32, column: 3)
!4264 = !{i64 2154534645}
!4265 = !DILocation(line: 32, column: 3, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4263, file: !3, line: 32, column: 3)
!4267 = !DILocation(line: 32, column: 3, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4266, file: !3, line: 32, column: 3)
!4269 = !{i64 2154534827}
!4270 = distinct !{!4270, !4247, !4271, !4272, !4273}
!4271 = !DILocation(line: 33, column: 2, scope: !2)
!4272 = !{!"llvm.loop.mustprogress"}
!4273 = !{!"llvm.loop.unroll.disable"}
!4274 = !DILocation(line: 34, column: 1, scope: !2)
!4275 = distinct !DISubprogram(name: "__llist_del_all", scope: !48, file: !48, line: 242, type: !4276, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !4279)
!4276 = !DISubroutineType(types: !4277)
!4277 = !{!51, !4278}
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!4279 = !{!4280, !4281}
!4280 = !DILocalVariable(name: "head", arg: 1, scope: !4275, file: !48, line: 242, type: !4278)
!4281 = !DILocalVariable(name: "first", scope: !4275, file: !48, line: 244, type: !51)
!4282 = !DILocation(line: 242, column: 69, scope: !4275)
!4283 = !DILocation(line: 244, column: 2, scope: !4275)
!4284 = !DILocation(line: 244, column: 21, scope: !4275)
!4285 = !DILocation(line: 244, column: 29, scope: !4275)
!4286 = !DILocation(line: 244, column: 35, scope: !4275)
!4287 = !DILocation(line: 246, column: 2, scope: !4275)
!4288 = !DILocation(line: 246, column: 8, scope: !4275)
!4289 = !DILocation(line: 246, column: 14, scope: !4275)
!4290 = !DILocation(line: 247, column: 9, scope: !4275)
!4291 = !DILocation(line: 248, column: 1, scope: !4275)
!4292 = !DILocation(line: 247, column: 2, scope: !4275)
!4293 = distinct !DISubprogram(name: "__preempt_count_add", scope: !4294, file: !4294, line: 78, type: !3509, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !4295)
!4294 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!4295 = !{!4296, !4297, !4299}
!4296 = !DILocalVariable(name: "val", arg: 1, scope: !4293, file: !4294, line: 78, type: !38)
!4297 = !DILocalVariable(name: "pao_ID__", scope: !4298, file: !4294, line: 80, type: !2136)
!4298 = distinct !DILexicalBlock(scope: !4293, file: !4294, line: 80, column: 2)
!4299 = !DILocalVariable(name: "pto_val__", scope: !4300, file: !4294, line: 80, type: !18)
!4300 = distinct !DILexicalBlock(scope: !4301, file: !4294, line: 80, column: 2)
!4301 = distinct !DILexicalBlock(scope: !4302, file: !4294, line: 80, column: 2)
!4302 = distinct !DILexicalBlock(scope: !4298, file: !4294, line: 80, column: 2)
!4303 = !DILocation(line: 78, column: 53, scope: !4293)
!4304 = !DILocation(line: 80, column: 2, scope: !4293)
!4305 = !DILocation(line: 80, column: 2, scope: !4298)
!4306 = !DILocation(line: 80, column: 2, scope: !4302)
!4307 = !DILocation(line: 80, column: 2, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4302, file: !4294, line: 80, column: 2)
!4309 = !{i64 2149516499}
!4310 = !DILocation(line: 80, column: 2, scope: !4301)
!4311 = !DILocation(line: 80, column: 2, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4301, file: !4294, line: 80, column: 2)
!4313 = !{i64 2149516794}
!4314 = !DILocation(line: 80, column: 2, scope: !4300)
!4315 = !{i64 2149517499}
!4316 = !DILocation(line: 81, column: 1, scope: !4293)
!4317 = distinct !DISubprogram(name: "rethook_recycle", scope: !3, file: !3, line: 149, type: !4318, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !4320)
!4318 = !DISubroutineType(types: !4319)
!4319 = !{null, !4107}
!4320 = !{!4321, !4322}
!4321 = !DILocalVariable(name: "node", arg: 1, scope: !4317, file: !3, line: 149, type: !4107)
!4322 = !DILocalVariable(name: "handler", scope: !4317, file: !3, line: 151, type: !4155)
!4323 = !DILocation(line: 149, column: 43, scope: !4317)
!4324 = !DILocation(line: 151, column: 2, scope: !4317)
!4325 = !DILocation(line: 151, column: 20, scope: !4317)
!4326 = !DILocation(line: 153, column: 32, scope: !4317)
!4327 = !DILocation(line: 153, column: 38, scope: !4317)
!4328 = !DILocation(line: 153, column: 12, scope: !4317)
!4329 = !DILocation(line: 153, column: 10, scope: !4317)
!4330 = !DILocation(line: 154, column: 6, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 154, column: 6)
!4332 = !DILocation(line: 154, column: 6, scope: !4317)
!4333 = !DILocation(line: 155, column: 17, scope: !4331)
!4334 = !DILocation(line: 155, column: 23, scope: !4331)
!4335 = !DILocation(line: 155, column: 34, scope: !4331)
!4336 = !DILocation(line: 155, column: 40, scope: !4331)
!4337 = !DILocation(line: 155, column: 49, scope: !4331)
!4338 = !DILocation(line: 155, column: 3, scope: !4331)
!4339 = !DILocation(line: 157, column: 13, scope: !4331)
!4340 = !DILocation(line: 157, column: 19, scope: !4331)
!4341 = !DILocation(line: 157, column: 3, scope: !4331)
!4342 = !DILocation(line: 158, column: 1, scope: !4317)
!4343 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !4294, file: !4294, line: 93, type: !1777, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !4344)
!4344 = !{!4345}
!4345 = !DILocalVariable(name: "c", scope: !4346, file: !4294, line: 95, type: !698)
!4346 = distinct !DILexicalBlock(scope: !4343, file: !4294, line: 95, column: 9)
!4347 = !DILocation(line: 95, column: 9, scope: !4346)
!4348 = !{i64 2149520855, i64 2149520948}
!4349 = !{i8 0, i8 2}
!4350 = !DILocation(line: 95, column: 9, scope: !4343)
!4351 = !DILocation(line: 95, column: 2, scope: !4343)
!4352 = distinct !DISubprogram(name: "rethook_stop", scope: !3, file: !3, line: 64, type: !4353, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !4355)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{null, !4124}
!4355 = !{!4356, !4357}
!4356 = !DILocalVariable(name: "rh", arg: 1, scope: !4352, file: !3, line: 64, type: !4124)
!4357 = !DILocalVariable(name: "_r_a_p__v", scope: !4358, file: !3, line: 66, type: !4140)
!4358 = distinct !DILexicalBlock(scope: !4352, file: !3, line: 66, column: 2)
!4359 = !DILocation(line: 64, column: 35, scope: !4352)
!4360 = !DILocation(line: 66, column: 2, scope: !4352)
!4361 = !DILocation(line: 66, column: 2, scope: !4358)
!4362 = !DILocation(line: 66, column: 2, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4358, file: !3, line: 66, column: 2)
!4364 = !DILocation(line: 66, column: 2, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4363, file: !3, line: 66, column: 2)
!4366 = !DILocation(line: 66, column: 2, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 66, column: 2)
!4368 = !DILocation(line: 66, column: 2, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 66, column: 2)
!4370 = !DILocation(line: 66, column: 2, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4363, file: !3, line: 66, column: 2)
!4372 = !DILocation(line: 66, column: 2, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4371, file: !3, line: 66, column: 2)
!4374 = !DILocation(line: 66, column: 2, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4371, file: !3, line: 66, column: 2)
!4376 = !DILocation(line: 66, column: 2, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4375, file: !3, line: 66, column: 2)
!4378 = !{i64 2154543674}
!4379 = !DILocation(line: 66, column: 2, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4375, file: !3, line: 66, column: 2)
!4381 = !DILocation(line: 66, column: 2, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4380, file: !3, line: 66, column: 2)
!4383 = !DILocation(line: 66, column: 2, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4380, file: !3, line: 66, column: 2)
!4385 = !DILocation(line: 67, column: 1, scope: !4352)
!4386 = distinct !DISubprogram(name: "rethook_free", scope: !3, file: !3, line: 79, type: !4353, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !4387)
!4387 = !{!4388}
!4388 = !DILocalVariable(name: "rh", arg: 1, scope: !4386, file: !3, line: 79, type: !4124)
!4389 = !DILocation(line: 79, column: 35, scope: !4386)
!4390 = !DILocation(line: 81, column: 15, scope: !4386)
!4391 = !DILocation(line: 81, column: 2, scope: !4386)
!4392 = !DILocation(line: 83, column: 12, scope: !4386)
!4393 = !DILocation(line: 83, column: 16, scope: !4386)
!4394 = !DILocation(line: 83, column: 2, scope: !4386)
!4395 = !DILocation(line: 84, column: 1, scope: !4386)
!4396 = !DISubprogram(name: "call_rcu", scope: !4397, file: !4397, line: 42, type: !4398, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4397 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!4398 = !DISubroutineType(types: !4399)
!4399 = !{null, !424, !4400}
!4400 = !DIDerivedType(tag: DW_TAG_typedef, name: "rcu_callback_t", file: !34, line: 238, baseType: !426)
!4401 = distinct !DISubprogram(name: "rethook_free_rcu", scope: !3, file: !3, line: 36, type: !427, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !4402)
!4402 = !{!4403, !4404, !4405, !4407, !4408, !4409, !4410}
!4403 = !DILocalVariable(name: "head", arg: 1, scope: !4401, file: !3, line: 36, type: !424)
!4404 = !DILocalVariable(name: "rh", scope: !4401, file: !3, line: 38, type: !4124)
!4405 = !DILocalVariable(name: "__mptr", scope: !4406, file: !3, line: 38, type: !26)
!4406 = distinct !DILexicalBlock(scope: !4401, file: !3, line: 38, column: 23)
!4407 = !DILocalVariable(name: "rhn", scope: !4401, file: !3, line: 39, type: !4107)
!4408 = !DILocalVariable(name: "node", scope: !4401, file: !3, line: 40, type: !4120)
!4409 = !DILocalVariable(name: "count", scope: !4401, file: !3, line: 41, type: !38)
!4410 = !DILocalVariable(name: "__mptr", scope: !4411, file: !3, line: 45, type: !26)
!4411 = distinct !DILexicalBlock(scope: !4412, file: !3, line: 45, column: 9)
!4412 = distinct !DILexicalBlock(scope: !4401, file: !3, line: 44, column: 15)
!4413 = !DILocation(line: 36, column: 47, scope: !4401)
!4414 = !DILocation(line: 38, column: 2, scope: !4401)
!4415 = !DILocation(line: 38, column: 18, scope: !4401)
!4416 = !DILocation(line: 38, column: 23, scope: !4406)
!4417 = !DILocation(line: 38, column: 23, scope: !4401)
!4418 = !DILocation(line: 39, column: 2, scope: !4401)
!4419 = !DILocation(line: 39, column: 23, scope: !4401)
!4420 = !DILocation(line: 40, column: 2, scope: !4401)
!4421 = !DILocation(line: 40, column: 24, scope: !4401)
!4422 = !DILocation(line: 41, column: 2, scope: !4401)
!4423 = !DILocation(line: 41, column: 6, scope: !4401)
!4424 = !DILocation(line: 43, column: 9, scope: !4401)
!4425 = !DILocation(line: 43, column: 13, scope: !4401)
!4426 = !DILocation(line: 43, column: 18, scope: !4401)
!4427 = !DILocation(line: 43, column: 7, scope: !4401)
!4428 = !DILocation(line: 44, column: 2, scope: !4401)
!4429 = !DILocation(line: 44, column: 9, scope: !4401)
!4430 = !DILocation(line: 45, column: 9, scope: !4411)
!4431 = !DILocation(line: 45, column: 9, scope: !4412)
!4432 = !DILocation(line: 45, column: 7, scope: !4412)
!4433 = !DILocation(line: 46, column: 10, scope: !4412)
!4434 = !DILocation(line: 46, column: 16, scope: !4412)
!4435 = !DILocation(line: 46, column: 8, scope: !4412)
!4436 = !DILocation(line: 47, column: 9, scope: !4412)
!4437 = !DILocation(line: 47, column: 3, scope: !4412)
!4438 = !DILocation(line: 48, column: 8, scope: !4412)
!4439 = distinct !{!4439, !4428, !4440, !4272, !4273}
!4440 = !DILocation(line: 49, column: 2, scope: !4401)
!4441 = !DILocation(line: 52, column: 28, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4401, file: !3, line: 52, column: 6)
!4443 = !DILocation(line: 52, column: 36, scope: !4442)
!4444 = !DILocation(line: 52, column: 40, scope: !4442)
!4445 = !DILocation(line: 52, column: 6, scope: !4442)
!4446 = !DILocation(line: 52, column: 6, scope: !4401)
!4447 = !DILocation(line: 53, column: 9, scope: !4442)
!4448 = !DILocation(line: 53, column: 3, scope: !4442)
!4449 = !DILocation(line: 54, column: 1, scope: !4401)
!4450 = distinct !DISubprogram(name: "rethook_alloc", scope: !3, file: !3, line: 101, type: !4451, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !4453)
!4451 = !DISubroutineType(types: !4452)
!4452 = !{!4124, !26, !4155}
!4453 = !{!4454, !4455, !4456, !4457}
!4454 = !DILocalVariable(name: "data", arg: 1, scope: !4450, file: !3, line: 101, type: !26)
!4455 = !DILocalVariable(name: "handler", arg: 2, scope: !4450, file: !3, line: 101, type: !4155)
!4456 = !DILocalVariable(name: "rh", scope: !4450, file: !3, line: 103, type: !4124)
!4457 = !DILocalVariable(name: "_r_a_p__v", scope: !4458, file: !3, line: 111, type: !4140)
!4458 = distinct !DILexicalBlock(scope: !4450, file: !3, line: 111, column: 2)
!4459 = !DILocation(line: 101, column: 37, scope: !4450)
!4460 = !DILocation(line: 101, column: 61, scope: !4450)
!4461 = !DILocation(line: 103, column: 2, scope: !4450)
!4462 = !DILocation(line: 103, column: 18, scope: !4450)
!4463 = !DILocation(line: 103, column: 23, scope: !4450)
!4464 = !DILocation(line: 105, column: 7, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4450, file: !3, line: 105, column: 6)
!4466 = !DILocation(line: 105, column: 10, scope: !4465)
!4467 = !DILocation(line: 105, column: 14, scope: !4465)
!4468 = !DILocation(line: 105, column: 6, scope: !4450)
!4469 = !DILocation(line: 106, column: 9, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4465, file: !3, line: 105, column: 23)
!4471 = !DILocation(line: 106, column: 3, scope: !4470)
!4472 = !DILocation(line: 107, column: 3, scope: !4470)
!4473 = !DILocation(line: 110, column: 13, scope: !4450)
!4474 = !DILocation(line: 110, column: 2, scope: !4450)
!4475 = !DILocation(line: 110, column: 6, scope: !4450)
!4476 = !DILocation(line: 110, column: 11, scope: !4450)
!4477 = !DILocation(line: 111, column: 2, scope: !4450)
!4478 = !DILocation(line: 111, column: 2, scope: !4458)
!4479 = !DILocation(line: 111, column: 2, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 111, column: 2)
!4481 = !DILocation(line: 111, column: 2, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4480, file: !3, line: 111, column: 2)
!4483 = !DILocation(line: 111, column: 2, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4482, file: !3, line: 111, column: 2)
!4485 = !DILocation(line: 111, column: 2, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4482, file: !3, line: 111, column: 2)
!4487 = !DILocation(line: 111, column: 2, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4480, file: !3, line: 111, column: 2)
!4489 = !DILocation(line: 111, column: 2, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 111, column: 2)
!4491 = !DILocation(line: 111, column: 2, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 111, column: 2)
!4493 = !DILocation(line: 111, column: 2, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4492, file: !3, line: 111, column: 2)
!4495 = !{i64 2154555153}
!4496 = !DILocation(line: 111, column: 2, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4492, file: !3, line: 111, column: 2)
!4498 = !DILocation(line: 111, column: 2, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4497, file: !3, line: 111, column: 2)
!4500 = !DILocation(line: 111, column: 2, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4497, file: !3, line: 111, column: 2)
!4502 = !DILocation(line: 112, column: 2, scope: !4450)
!4503 = !DILocation(line: 112, column: 6, scope: !4450)
!4504 = !DILocation(line: 112, column: 11, scope: !4450)
!4505 = !DILocation(line: 112, column: 16, scope: !4450)
!4506 = !DILocation(line: 113, column: 16, scope: !4450)
!4507 = !DILocation(line: 113, column: 20, scope: !4450)
!4508 = !DILocation(line: 113, column: 2, scope: !4450)
!4509 = !DILocation(line: 115, column: 9, scope: !4450)
!4510 = !DILocation(line: 115, column: 2, scope: !4450)
!4511 = !DILocation(line: 116, column: 1, scope: !4450)
!4512 = distinct !DISubprogram(name: "kzalloc", scope: !4097, file: !4097, line: 719, type: !4513, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !4515)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{!26, !1009, !532}
!4515 = !{!4516, !4517}
!4516 = !DILocalVariable(name: "size", arg: 1, scope: !4512, file: !4097, line: 719, type: !1009)
!4517 = !DILocalVariable(name: "flags", arg: 2, scope: !4512, file: !4097, line: 719, type: !532)
!4518 = !DILocation(line: 719, column: 52, scope: !4512)
!4519 = !DILocation(line: 719, column: 64, scope: !4512)
!4520 = !DILocation(line: 721, column: 17, scope: !4512)
!4521 = !DILocation(line: 721, column: 23, scope: !4512)
!4522 = !DILocation(line: 721, column: 29, scope: !4512)
!4523 = !DILocation(line: 721, column: 9, scope: !4512)
!4524 = !DILocation(line: 721, column: 2, scope: !4512)
!4525 = !DISubprogram(name: "kfree", scope: !4097, file: !4097, line: 227, type: !4526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{null, !1787}
!4528 = distinct !DISubprogram(name: "refcount_set", scope: !29, file: !29, line: 134, type: !4529, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !4532)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{null, !4531, !38}
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!4532 = !{!4533, !4534}
!4533 = !DILocalVariable(name: "r", arg: 1, scope: !4528, file: !29, line: 134, type: !4531)
!4534 = !DILocalVariable(name: "n", arg: 2, scope: !4528, file: !29, line: 134, type: !38)
!4535 = !DILocation(line: 134, column: 45, scope: !4528)
!4536 = !DILocation(line: 134, column: 52, scope: !4528)
!4537 = !DILocation(line: 136, column: 14, scope: !4528)
!4538 = !DILocation(line: 136, column: 17, scope: !4528)
!4539 = !DILocation(line: 136, column: 23, scope: !4528)
!4540 = !DILocation(line: 136, column: 2, scope: !4528)
!4541 = !DILocation(line: 137, column: 1, scope: !4528)
!4542 = distinct !DISubprogram(name: "rethook_add_node", scope: !3, file: !3, line: 126, type: !4543, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !4545)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{null, !4124, !4107}
!4545 = !{!4546, !4547}
!4546 = !DILocalVariable(name: "rh", arg: 1, scope: !4542, file: !3, line: 126, type: !4124)
!4547 = !DILocalVariable(name: "node", arg: 2, scope: !4542, file: !3, line: 126, type: !4107)
!4548 = !DILocation(line: 126, column: 39, scope: !4542)
!4549 = !DILocation(line: 126, column: 64, scope: !4542)
!4550 = !DILocation(line: 128, column: 18, scope: !4542)
!4551 = !DILocation(line: 128, column: 2, scope: !4542)
!4552 = !DILocation(line: 128, column: 8, scope: !4542)
!4553 = !DILocation(line: 128, column: 16, scope: !4542)
!4554 = !DILocation(line: 129, column: 16, scope: !4542)
!4555 = !DILocation(line: 129, column: 22, scope: !4542)
!4556 = !DILocation(line: 129, column: 33, scope: !4542)
!4557 = !DILocation(line: 129, column: 37, scope: !4542)
!4558 = !DILocation(line: 129, column: 2, scope: !4542)
!4559 = !DILocation(line: 130, column: 16, scope: !4542)
!4560 = !DILocation(line: 130, column: 20, scope: !4542)
!4561 = !DILocation(line: 130, column: 2, scope: !4542)
!4562 = !DILocation(line: 131, column: 1, scope: !4542)
!4563 = distinct !DISubprogram(name: "freelist_add", scope: !4116, file: !4116, line: 64, type: !4564, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !4567)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{null, !4120, !4566}
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4567 = !{!4568, !4569}
!4568 = !DILocalVariable(name: "node", arg: 1, scope: !4563, file: !4116, line: 64, type: !4120)
!4569 = !DILocalVariable(name: "list", arg: 2, scope: !4563, file: !4116, line: 64, type: !4566)
!4570 = !DILocation(line: 64, column: 55, scope: !4563)
!4571 = !DILocation(line: 64, column: 83, scope: !4563)
!4572 = !DILocation(line: 70, column: 51, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4563, file: !4116, line: 70, column: 6)
!4574 = !DILocation(line: 70, column: 57, scope: !4573)
!4575 = !DILocation(line: 70, column: 7, scope: !4573)
!4576 = !DILocation(line: 70, column: 6, scope: !4563)
!4577 = !DILocation(line: 75, column: 18, scope: !4578)
!4578 = distinct !DILexicalBlock(scope: !4573, file: !4116, line: 70, column: 64)
!4579 = !DILocation(line: 75, column: 24, scope: !4578)
!4580 = !DILocation(line: 75, column: 3, scope: !4578)
!4581 = !DILocation(line: 76, column: 2, scope: !4578)
!4582 = !DILocation(line: 77, column: 1, scope: !4563)
!4583 = distinct !DISubprogram(name: "refcount_inc", scope: !29, file: !29, line: 265, type: !4584, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !4586)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{null, !4531}
!4586 = !{!4587}
!4587 = !DILocalVariable(name: "r", arg: 1, scope: !4583, file: !29, line: 265, type: !4531)
!4588 = !DILocation(line: 265, column: 45, scope: !4583)
!4589 = !DILocation(line: 267, column: 17, scope: !4583)
!4590 = !DILocation(line: 267, column: 2, scope: !4583)
!4591 = !DILocation(line: 268, column: 1, scope: !4583)
!4592 = distinct !DISubprogram(name: "rethook_get_handler", scope: !3, file: !3, line: 86, type: !4593, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !4595)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!4155, !4124}
!4595 = !{!4596, !4597}
!4596 = !DILocalVariable(name: "rh", arg: 1, scope: !4592, file: !3, line: 86, type: !4124)
!4597 = !DILocalVariable(name: "__UNIQUE_ID_rcu307", scope: !4598, file: !3, line: 88, type: !4129)
!4598 = distinct !DILexicalBlock(scope: !4592, file: !3, line: 88, column: 28)
!4599 = !DILocation(line: 86, column: 69, scope: !4592)
!4600 = !DILocation(line: 88, column: 28, scope: !4598)
!4601 = !DILocation(line: 88, column: 28, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4598, file: !3, line: 88, column: 28)
!4603 = !DILocation(line: 88, column: 28, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !4602, file: !3, line: 88, column: 28)
!4605 = !DILocation(line: 88, column: 28, scope: !4606)
!4606 = distinct !DILexicalBlock(scope: !4598, file: !3, line: 88, column: 28)
!4607 = !DILocation(line: 88, column: 28, scope: !4592)
!4608 = !DILocation(line: 88, column: 2, scope: !4592)
!4609 = distinct !DISubprogram(name: "free_rethook_node_rcu", scope: !3, file: !3, line: 133, type: !427, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !4610)
!4610 = !{!4611, !4612, !4613}
!4611 = !DILocalVariable(name: "head", arg: 1, scope: !4609, file: !3, line: 133, type: !424)
!4612 = !DILocalVariable(name: "node", scope: !4609, file: !3, line: 135, type: !4107)
!4613 = !DILocalVariable(name: "__mptr", scope: !4614, file: !3, line: 135, type: !26)
!4614 = distinct !DILexicalBlock(scope: !4609, file: !3, line: 135, column: 30)
!4615 = !DILocation(line: 133, column: 52, scope: !4609)
!4616 = !DILocation(line: 135, column: 2, scope: !4609)
!4617 = !DILocation(line: 135, column: 23, scope: !4609)
!4618 = !DILocation(line: 135, column: 30, scope: !4614)
!4619 = !DILocation(line: 135, column: 30, scope: !4609)
!4620 = !DILocation(line: 137, column: 29, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4609, file: !3, line: 137, column: 6)
!4622 = !DILocation(line: 137, column: 35, scope: !4621)
!4623 = !DILocation(line: 137, column: 44, scope: !4621)
!4624 = !DILocation(line: 137, column: 6, scope: !4621)
!4625 = !DILocation(line: 137, column: 6, scope: !4609)
!4626 = !DILocation(line: 138, column: 9, scope: !4621)
!4627 = !DILocation(line: 138, column: 15, scope: !4621)
!4628 = !DILocation(line: 138, column: 3, scope: !4621)
!4629 = !DILocation(line: 139, column: 8, scope: !4609)
!4630 = !DILocation(line: 139, column: 2, scope: !4609)
!4631 = !DILocation(line: 140, column: 1, scope: !4609)
!4632 = distinct !DISubprogram(name: "rethook_try_get", scope: !3, file: !3, line: 168, type: !4633, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !4635)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!4107, !4124}
!4635 = !{!4636, !4637, !4638, !4639}
!4636 = !DILocalVariable(name: "rh", arg: 1, scope: !4632, file: !3, line: 168, type: !4124)
!4637 = !DILocalVariable(name: "handler", scope: !4632, file: !3, line: 170, type: !4155)
!4638 = !DILocalVariable(name: "fn", scope: !4632, file: !3, line: 171, type: !4120)
!4639 = !DILocalVariable(name: "__mptr", scope: !4640, file: !3, line: 190, type: !26)
!4640 = distinct !DILexicalBlock(scope: !4632, file: !3, line: 190, column: 9)
!4641 = !DILocation(line: 168, column: 54, scope: !4632)
!4642 = !DILocation(line: 170, column: 2, scope: !4632)
!4643 = !DILocation(line: 170, column: 20, scope: !4632)
!4644 = !DILocation(line: 170, column: 50, scope: !4632)
!4645 = !DILocation(line: 170, column: 30, scope: !4632)
!4646 = !DILocation(line: 171, column: 2, scope: !4632)
!4647 = !DILocation(line: 171, column: 24, scope: !4632)
!4648 = !DILocation(line: 174, column: 6, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4632, file: !3, line: 174, column: 6)
!4650 = !DILocation(line: 174, column: 6, scope: !4632)
!4651 = !DILocation(line: 175, column: 3, scope: !4649)
!4652 = !DILocation(line: 183, column: 6, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4632, file: !3, line: 183, column: 6)
!4654 = !DILocation(line: 183, column: 6, scope: !4632)
!4655 = !DILocation(line: 184, column: 3, scope: !4653)
!4656 = !DILocation(line: 186, column: 25, scope: !4632)
!4657 = !DILocation(line: 186, column: 29, scope: !4632)
!4658 = !DILocation(line: 186, column: 7, scope: !4632)
!4659 = !DILocation(line: 186, column: 5, scope: !4632)
!4660 = !DILocation(line: 187, column: 7, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4632, file: !3, line: 187, column: 6)
!4662 = !DILocation(line: 187, column: 6, scope: !4632)
!4663 = !DILocation(line: 188, column: 3, scope: !4661)
!4664 = !DILocation(line: 190, column: 9, scope: !4640)
!4665 = !DILocation(line: 190, column: 9, scope: !4632)
!4666 = !DILocation(line: 190, column: 2, scope: !4632)
!4667 = !DILocation(line: 191, column: 1, scope: !4632)
!4668 = !DISubprogram(name: "rcu_is_watching", scope: !4669, file: !4669, line: 106, type: !1777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4669 = !DIFile(filename: "./include/linux/rcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ba1a11a02717ea844631ceb399131463")
!4670 = distinct !DISubprogram(name: "freelist_try_get", scope: !4116, file: !4116, line: 79, type: !4671, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !4673)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!4120, !4566}
!4673 = !{!4674, !4675, !4676, !4677, !4678, !4680, !4681, !4686, !4689, !4690, !4692, !4693, !4694, !4695, !4696, !4699}
!4674 = !DILocalVariable(name: "list", arg: 1, scope: !4670, file: !4116, line: 79, type: !4566)
!4675 = !DILocalVariable(name: "prev", scope: !4670, file: !4116, line: 81, type: !4120)
!4676 = !DILocalVariable(name: "next", scope: !4670, file: !4116, line: 81, type: !4120)
!4677 = !DILocalVariable(name: "head", scope: !4670, file: !4116, line: 81, type: !4120)
!4678 = !DILocalVariable(name: "___p1", scope: !4679, file: !4116, line: 81, type: !4120)
!4679 = distinct !DILexicalBlock(scope: !4670, file: !4116, line: 81, column: 45)
!4680 = !DILocalVariable(name: "refs", scope: !4670, file: !4116, line: 82, type: !22)
!4681 = !DILocalVariable(name: "___p1", scope: !4682, file: !4116, line: 89, type: !4120)
!4682 = distinct !DILexicalBlock(scope: !4683, file: !4116, line: 89, column: 11)
!4683 = distinct !DILexicalBlock(scope: !4684, file: !4116, line: 88, column: 64)
!4684 = distinct !DILexicalBlock(scope: !4685, file: !4116, line: 87, column: 7)
!4685 = distinct !DILexicalBlock(scope: !4670, file: !4116, line: 84, column: 15)
!4686 = !DILocalVariable(name: "__ai_ptr", scope: !4687, file: !4116, line: 99, type: !4152)
!4687 = distinct !DILexicalBlock(scope: !4688, file: !4116, line: 99, column: 7)
!4688 = distinct !DILexicalBlock(scope: !4685, file: !4116, line: 99, column: 7)
!4689 = !DILocalVariable(name: "__ai_oldp", scope: !4687, file: !4116, line: 99, type: !4152)
!4690 = !DILocalVariable(name: "success", scope: !4691, file: !4116, line: 99, type: !698)
!4691 = distinct !DILexicalBlock(scope: !4687, file: !4116, line: 99, column: 7)
!4692 = !DILocalVariable(name: "_old", scope: !4691, file: !4116, line: 99, type: !4152)
!4693 = !DILocalVariable(name: "__old", scope: !4691, file: !4116, line: 99, type: !4120)
!4694 = !DILocalVariable(name: "__new", scope: !4691, file: !4116, line: 99, type: !4120)
!4695 = !DILocalVariable(name: "__ptr", scope: !4691, file: !4116, line: 99, type: !4153)
!4696 = !DILocalVariable(name: "__ret_warn_on", scope: !4697, file: !4116, line: 106, type: !38)
!4697 = distinct !DILexicalBlock(scope: !4698, file: !4116, line: 106, column: 4)
!4698 = distinct !DILexicalBlock(scope: !4688, file: !4116, line: 99, column: 54)
!4699 = !DILocalVariable(name: "__flags", scope: !4700, file: !4116, line: 106, type: !38)
!4700 = distinct !DILexicalBlock(scope: !4701, file: !4116, line: 106, column: 4)
!4701 = distinct !DILexicalBlock(scope: !4697, file: !4116, line: 106, column: 4)
!4702 = !DILocation(line: 79, column: 76, scope: !4670)
!4703 = !DILocation(line: 81, column: 2, scope: !4670)
!4704 = !DILocation(line: 81, column: 24, scope: !4670)
!4705 = !DILocation(line: 81, column: 31, scope: !4670)
!4706 = !DILocation(line: 81, column: 38, scope: !4670)
!4707 = !DILocation(line: 81, column: 45, scope: !4679)
!4708 = !DILocation(line: 81, column: 45, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4679, file: !4116, line: 81, column: 45)
!4710 = !DILocation(line: 81, column: 45, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4709, file: !4116, line: 81, column: 45)
!4712 = !DILocation(line: 81, column: 45, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4679, file: !4116, line: 81, column: 45)
!4714 = !{i64 2154456798}
!4715 = !DILocation(line: 81, column: 45, scope: !4670)
!4716 = !DILocation(line: 82, column: 2, scope: !4670)
!4717 = !DILocation(line: 82, column: 15, scope: !4670)
!4718 = !DILocation(line: 84, column: 2, scope: !4670)
!4719 = !DILocation(line: 84, column: 9, scope: !4670)
!4720 = !DILocation(line: 85, column: 10, scope: !4685)
!4721 = !DILocation(line: 85, column: 8, scope: !4685)
!4722 = !DILocation(line: 86, column: 23, scope: !4685)
!4723 = !DILocation(line: 86, column: 29, scope: !4685)
!4724 = !DILocation(line: 86, column: 10, scope: !4685)
!4725 = !DILocation(line: 86, column: 8, scope: !4685)
!4726 = !DILocation(line: 87, column: 8, scope: !4684)
!4727 = !DILocation(line: 87, column: 13, scope: !4684)
!4728 = !DILocation(line: 87, column: 26, scope: !4684)
!4729 = !DILocation(line: 87, column: 31, scope: !4684)
!4730 = !DILocation(line: 88, column: 36, scope: !4684)
!4731 = !DILocation(line: 88, column: 42, scope: !4684)
!4732 = !DILocation(line: 88, column: 55, scope: !4684)
!4733 = !DILocation(line: 88, column: 59, scope: !4684)
!4734 = !DILocation(line: 88, column: 8, scope: !4684)
!4735 = !DILocation(line: 87, column: 7, scope: !4685)
!4736 = !DILocation(line: 89, column: 11, scope: !4682)
!4737 = !DILocation(line: 89, column: 11, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4682, file: !4116, line: 89, column: 11)
!4739 = !DILocation(line: 89, column: 11, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4738, file: !4116, line: 89, column: 11)
!4741 = !DILocation(line: 89, column: 11, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4682, file: !4116, line: 89, column: 11)
!4743 = !{i64 2154461605}
!4744 = !DILocation(line: 89, column: 11, scope: !4683)
!4745 = !DILocation(line: 89, column: 9, scope: !4683)
!4746 = !DILocation(line: 90, column: 4, scope: !4683)
!4747 = distinct !{!4747, !4718, !4748, !4272, !4273}
!4748 = !DILocation(line: 124, column: 2, scope: !4670)
!4749 = !DILocation(line: 98, column: 10, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4685, file: !4116, line: 98, column: 10)
!4751 = !DILocation(line: 98, column: 10, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4750, file: !4116, line: 98, column: 10)
!4753 = !DILocation(line: 98, column: 8, scope: !4685)
!4754 = !DILocation(line: 99, column: 7, scope: !4687)
!4755 = !DILocation(line: 99, column: 7, scope: !4691)
!4756 = !{i64 2154467435, i64 2154467474, i64 2154467495, i64 2154467532, i64 2154467555, i64 2154467564, i64 2154467765}
!4757 = !DILocation(line: 99, column: 7, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4691, file: !4116, line: 99, column: 7)
!4759 = !DILocation(line: 99, column: 7, scope: !4688)
!4760 = !DILocation(line: 99, column: 7, scope: !4685)
!4761 = !DILocation(line: 106, column: 4, scope: !4697)
!4762 = !DILocation(line: 106, column: 4, scope: !4701)
!4763 = !DILocation(line: 106, column: 4, scope: !4700)
!4764 = !DILocation(line: 106, column: 4, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4700, file: !4116, line: 106, column: 4)
!4766 = !DILocation(line: 106, column: 4, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4700, file: !4116, line: 106, column: 4)
!4768 = !{i64 2154468476, i64 2154468505, i64 2154468551, i64 2154468609, i64 2154468663, i64 2154468717, i64 2154468772, i64 2154468803, i64 2154469111, i64 2154469117, i64 2154469164, i64 2154469187, i64 2154469213}
!4769 = !DILocation(line: 106, column: 4, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4700, file: !4116, line: 106, column: 4)
!4771 = !DILocation(line: 106, column: 4, scope: !4698)
!4772 = !DILocation(line: 112, column: 26, scope: !4698)
!4773 = !DILocation(line: 112, column: 32, scope: !4698)
!4774 = !DILocation(line: 112, column: 4, scope: !4698)
!4775 = !DILocation(line: 114, column: 11, scope: !4698)
!4776 = !DILocation(line: 114, column: 4, scope: !4698)
!4777 = !DILocation(line: 121, column: 32, scope: !4685)
!4778 = !DILocation(line: 121, column: 38, scope: !4685)
!4779 = !DILocation(line: 121, column: 10, scope: !4685)
!4780 = !DILocation(line: 121, column: 8, scope: !4685)
!4781 = !DILocation(line: 122, column: 7, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4685, file: !4116, line: 122, column: 7)
!4783 = !DILocation(line: 122, column: 12, scope: !4782)
!4784 = !DILocation(line: 122, column: 7, scope: !4685)
!4785 = !DILocation(line: 123, column: 19, scope: !4782)
!4786 = !DILocation(line: 123, column: 25, scope: !4782)
!4787 = !DILocation(line: 123, column: 4, scope: !4782)
!4788 = !DILocation(line: 126, column: 2, scope: !4670)
!4789 = !DILocation(line: 127, column: 1, scope: !4670)
!4790 = distinct !DISubprogram(name: "rethook_hook", scope: !3, file: !3, line: 207, type: !4791, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !4793)
!4791 = !DISubroutineType(types: !4792)
!4792 = !{null, !4107, !4003, !698}
!4793 = !{!4794, !4795, !4796}
!4794 = !DILocalVariable(name: "node", arg: 1, scope: !4790, file: !3, line: 207, type: !4107)
!4795 = !DILocalVariable(name: "regs", arg: 2, scope: !4790, file: !3, line: 207, type: !4003)
!4796 = !DILocalVariable(name: "mcount", arg: 3, scope: !4790, file: !3, line: 207, type: !698)
!4797 = !DILocation(line: 207, column: 40, scope: !4790)
!4798 = !DILocation(line: 207, column: 62, scope: !4790)
!4799 = !DILocation(line: 207, column: 73, scope: !4790)
!4800 = !DILocation(line: 209, column: 23, scope: !4790)
!4801 = !DILocation(line: 209, column: 29, scope: !4790)
!4802 = !DILocation(line: 209, column: 35, scope: !4790)
!4803 = !DILocation(line: 209, column: 2, scope: !4790)
!4804 = !DILocation(line: 210, column: 15, scope: !4790)
!4805 = !DILocation(line: 210, column: 21, scope: !4790)
!4806 = !DILocation(line: 210, column: 29, scope: !4790)
!4807 = !DILocation(line: 210, column: 38, scope: !4790)
!4808 = !DILocation(line: 210, column: 2, scope: !4790)
!4809 = !DILocation(line: 211, column: 1, scope: !4790)
!4810 = !DISubprogram(name: "arch_rethook_prepare", scope: !4109, file: !4109, line: 77, type: !4791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4811 = distinct !DISubprogram(name: "__llist_add", scope: !48, file: !48, line: 224, type: !4812, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !4814)
!4812 = !DISubroutineType(types: !4813)
!4813 = !{!698, !51, !4278}
!4814 = !{!4815, !4816}
!4815 = !DILocalVariable(name: "new", arg: 1, scope: !4811, file: !48, line: 224, type: !51)
!4816 = !DILocalVariable(name: "head", arg: 2, scope: !4811, file: !48, line: 224, type: !4278)
!4817 = !DILocation(line: 224, column: 51, scope: !4811)
!4818 = !DILocation(line: 224, column: 75, scope: !4811)
!4819 = !DILocation(line: 226, column: 27, scope: !4811)
!4820 = !DILocation(line: 226, column: 32, scope: !4811)
!4821 = !DILocation(line: 226, column: 37, scope: !4811)
!4822 = !DILocation(line: 226, column: 9, scope: !4811)
!4823 = !DILocation(line: 226, column: 2, scope: !4811)
!4824 = distinct !DISubprogram(name: "get_current", scope: !4825, file: !4825, line: 39, type: !4826, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !4828)
!4825 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!4826 = !DISubroutineType(types: !4827)
!4827 = !{!6}
!4828 = !{!4829, !4831, !4833}
!4829 = !DILocalVariable(name: "pscr_ret__", scope: !4830, file: !4825, line: 41, type: !6)
!4830 = distinct !DILexicalBlock(scope: !4824, file: !4825, line: 41, column: 9)
!4831 = !DILocalVariable(name: "__vpp_verify", scope: !4832, file: !4825, line: 41, type: !1787)
!4832 = distinct !DILexicalBlock(scope: !4830, file: !4825, line: 41, column: 9)
!4833 = !DILocalVariable(name: "pfo_val__", scope: !4834, file: !4825, line: 41, type: !89)
!4834 = distinct !DILexicalBlock(scope: !4830, file: !4825, line: 41, column: 9)
!4835 = !DILocation(line: 41, column: 9, scope: !4830)
!4836 = !DILocation(line: 41, column: 9, scope: !4832)
!4837 = !DILocation(line: 41, column: 9, scope: !4834)
!4838 = !{i64 2149110585}
!4839 = !DILocation(line: 41, column: 9, scope: !4824)
!4840 = !DILocation(line: 41, column: 2, scope: !4824)
!4841 = distinct !DISubprogram(name: "__rethook_find_ret_addr", scope: !3, file: !3, line: 215, type: !4842, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !4845)
!4842 = !DISubroutineType(types: !4843)
!4843 = !{!15, !6, !4844}
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!4845 = !{!4846, !4847, !4848, !4849, !4850}
!4846 = !DILocalVariable(name: "tsk", arg: 1, scope: !4841, file: !3, line: 215, type: !6)
!4847 = !DILocalVariable(name: "cur", arg: 2, scope: !4841, file: !3, line: 216, type: !4844)
!4848 = !DILocalVariable(name: "rh", scope: !4841, file: !3, line: 218, type: !4107)
!4849 = !DILocalVariable(name: "node", scope: !4841, file: !3, line: 219, type: !51)
!4850 = !DILocalVariable(name: "__mptr", scope: !4851, file: !3, line: 227, type: !26)
!4851 = distinct !DILexicalBlock(scope: !4852, file: !3, line: 227, column: 8)
!4852 = distinct !DILexicalBlock(scope: !4841, file: !3, line: 226, column: 15)
!4853 = !DILocation(line: 215, column: 66, scope: !4841)
!4854 = !DILocation(line: 216, column: 31, scope: !4841)
!4855 = !DILocation(line: 218, column: 2, scope: !4841)
!4856 = !DILocation(line: 218, column: 23, scope: !4841)
!4857 = !DILocation(line: 219, column: 2, scope: !4841)
!4858 = !DILocation(line: 219, column: 21, scope: !4841)
!4859 = !DILocation(line: 219, column: 29, scope: !4841)
!4860 = !DILocation(line: 219, column: 28, scope: !4841)
!4861 = !DILocation(line: 221, column: 7, scope: !4862)
!4862 = distinct !DILexicalBlock(scope: !4841, file: !3, line: 221, column: 6)
!4863 = !DILocation(line: 221, column: 6, scope: !4841)
!4864 = !DILocation(line: 222, column: 10, scope: !4862)
!4865 = !DILocation(line: 222, column: 15, scope: !4862)
!4866 = !DILocation(line: 222, column: 24, scope: !4862)
!4867 = !DILocation(line: 222, column: 8, scope: !4862)
!4868 = !DILocation(line: 222, column: 3, scope: !4862)
!4869 = !DILocation(line: 224, column: 10, scope: !4862)
!4870 = !DILocation(line: 224, column: 16, scope: !4862)
!4871 = !DILocation(line: 224, column: 8, scope: !4862)
!4872 = !DILocation(line: 226, column: 2, scope: !4841)
!4873 = !DILocation(line: 226, column: 9, scope: !4841)
!4874 = !DILocation(line: 227, column: 8, scope: !4851)
!4875 = !DILocation(line: 227, column: 8, scope: !4852)
!4876 = !DILocation(line: 227, column: 6, scope: !4852)
!4877 = !DILocation(line: 228, column: 7, scope: !4878)
!4878 = distinct !DILexicalBlock(scope: !4852, file: !3, line: 228, column: 7)
!4879 = !DILocation(line: 228, column: 11, scope: !4878)
!4880 = !DILocation(line: 228, column: 20, scope: !4878)
!4881 = !DILocation(line: 228, column: 7, scope: !4852)
!4882 = !DILocation(line: 229, column: 11, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4878, file: !3, line: 228, column: 63)
!4884 = !DILocation(line: 229, column: 5, scope: !4883)
!4885 = !DILocation(line: 229, column: 9, scope: !4883)
!4886 = !DILocation(line: 230, column: 11, scope: !4883)
!4887 = !DILocation(line: 230, column: 15, scope: !4883)
!4888 = !DILocation(line: 230, column: 4, scope: !4883)
!4889 = !DILocation(line: 232, column: 10, scope: !4852)
!4890 = !DILocation(line: 232, column: 16, scope: !4852)
!4891 = !DILocation(line: 232, column: 8, scope: !4852)
!4892 = distinct !{!4892, !4872, !4893, !4272, !4273}
!4893 = !DILocation(line: 233, column: 2, scope: !4841)
!4894 = !DILocation(line: 234, column: 2, scope: !4841)
!4895 = !DILocation(line: 235, column: 1, scope: !4841)
!4896 = distinct !DISubprogram(name: "rethook_find_ret_addr", scope: !3, file: !3, line: 254, type: !4897, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !4899)
!4897 = !DISubroutineType(types: !4898)
!4898 = !{!15, !6, !15, !4844}
!4899 = !{!4900, !4901, !4902, !4903, !4904, !4905, !4908, !4911, !4914, !4917}
!4900 = !DILocalVariable(name: "tsk", arg: 1, scope: !4896, file: !3, line: 254, type: !6)
!4901 = !DILocalVariable(name: "frame", arg: 2, scope: !4896, file: !3, line: 254, type: !15)
!4902 = !DILocalVariable(name: "cur", arg: 3, scope: !4896, file: !3, line: 255, type: !4844)
!4903 = !DILocalVariable(name: "rhn", scope: !4896, file: !3, line: 257, type: !4107)
!4904 = !DILocalVariable(name: "ret", scope: !4896, file: !3, line: 258, type: !15)
!4905 = !DILocalVariable(name: "__ret_warn_on", scope: !4906, file: !3, line: 260, type: !38)
!4906 = distinct !DILexicalBlock(scope: !4907, file: !3, line: 260, column: 6)
!4907 = distinct !DILexicalBlock(scope: !4896, file: !3, line: 260, column: 6)
!4908 = !DILocalVariable(name: "__flags", scope: !4909, file: !3, line: 260, type: !38)
!4909 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 260, column: 6)
!4910 = distinct !DILexicalBlock(scope: !4906, file: !3, line: 260, column: 6)
!4911 = !DILocalVariable(name: "__ret_warn_on", scope: !4912, file: !3, line: 263, type: !38)
!4912 = distinct !DILexicalBlock(scope: !4913, file: !3, line: 263, column: 6)
!4913 = distinct !DILexicalBlock(scope: !4896, file: !3, line: 263, column: 6)
!4914 = !DILocalVariable(name: "__flags", scope: !4915, file: !3, line: 263, type: !38)
!4915 = distinct !DILexicalBlock(scope: !4916, file: !3, line: 263, column: 6)
!4916 = distinct !DILexicalBlock(scope: !4912, file: !3, line: 263, column: 6)
!4917 = !DILocalVariable(name: "__mptr", scope: !4918, file: !3, line: 270, type: !26)
!4918 = distinct !DILexicalBlock(scope: !4919, file: !3, line: 270, column: 9)
!4919 = distinct !DILexicalBlock(scope: !4896, file: !3, line: 266, column: 5)
!4920 = !DILocation(line: 254, column: 57, scope: !4896)
!4921 = !DILocation(line: 254, column: 76, scope: !4896)
!4922 = !DILocation(line: 255, column: 29, scope: !4896)
!4923 = !DILocation(line: 257, column: 2, scope: !4896)
!4924 = !DILocation(line: 257, column: 23, scope: !4896)
!4925 = !DILocation(line: 258, column: 2, scope: !4896)
!4926 = !DILocation(line: 258, column: 16, scope: !4896)
!4927 = !DILocation(line: 260, column: 6, scope: !4906)
!4928 = !DILocation(line: 260, column: 6, scope: !4910)
!4929 = !DILocation(line: 260, column: 6, scope: !4909)
!4930 = !DILocation(line: 260, column: 6, scope: !4931)
!4931 = distinct !DILexicalBlock(scope: !4909, file: !3, line: 260, column: 6)
!4932 = !DILocation(line: 260, column: 6, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4909, file: !3, line: 260, column: 6)
!4934 = !{i64 2154562879, i64 2154562908, i64 2154562954, i64 2154563012, i64 2154563066, i64 2154563120, i64 2154563175, i64 2154563206, i64 2154563514, i64 2154563520, i64 2154563567, i64 2154563590, i64 2154563616}
!4935 = !DILocation(line: 260, column: 6, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4909, file: !3, line: 260, column: 6)
!4937 = !DILocation(line: 260, column: 6, scope: !4907)
!4938 = !DILocation(line: 260, column: 6, scope: !4896)
!4939 = !DILocation(line: 261, column: 3, scope: !4907)
!4940 = !DILocation(line: 263, column: 6, scope: !4912)
!4941 = !DILocation(line: 263, column: 6, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4912, file: !3, line: 263, column: 6)
!4943 = !DILocation(line: 263, column: 6, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4942, file: !3, line: 263, column: 6)
!4945 = !DILocation(line: 0, scope: !4912)
!4946 = !DILocation(line: 263, column: 6, scope: !4916)
!4947 = !DILocation(line: 263, column: 6, scope: !4915)
!4948 = !DILocation(line: 263, column: 6, scope: !4949)
!4949 = distinct !DILexicalBlock(scope: !4915, file: !3, line: 263, column: 6)
!4950 = !DILocation(line: 263, column: 6, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4915, file: !3, line: 263, column: 6)
!4952 = !{i64 2154568459, i64 2154568488, i64 2154568534, i64 2154568592, i64 2154568646, i64 2154568700, i64 2154568755, i64 2154568786, i64 2154569094, i64 2154569100, i64 2154569147, i64 2154569170, i64 2154569196}
!4953 = !DILocation(line: 263, column: 6, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4915, file: !3, line: 263, column: 6)
!4955 = !DILocation(line: 263, column: 6, scope: !4913)
!4956 = !DILocation(line: 263, column: 6, scope: !4896)
!4957 = !DILocation(line: 264, column: 3, scope: !4913)
!4958 = !DILocation(line: 266, column: 2, scope: !4896)
!4959 = !DILocation(line: 267, column: 33, scope: !4919)
!4960 = !DILocation(line: 267, column: 38, scope: !4919)
!4961 = !DILocation(line: 267, column: 9, scope: !4919)
!4962 = !DILocation(line: 267, column: 7, scope: !4919)
!4963 = !DILocation(line: 268, column: 8, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4919, file: !3, line: 268, column: 7)
!4965 = !DILocation(line: 268, column: 7, scope: !4919)
!4966 = !DILocation(line: 269, column: 4, scope: !4964)
!4967 = !DILocation(line: 270, column: 9, scope: !4918)
!4968 = !DILocation(line: 270, column: 9, scope: !4919)
!4969 = !DILocation(line: 270, column: 7, scope: !4919)
!4970 = !DILocation(line: 271, column: 2, scope: !4919)
!4971 = !DILocation(line: 271, column: 11, scope: !4896)
!4972 = !DILocation(line: 271, column: 16, scope: !4896)
!4973 = !DILocation(line: 271, column: 25, scope: !4896)
!4974 = !DILocation(line: 271, column: 22, scope: !4896)
!4975 = distinct !{!4975, !4958, !4976, !4272, !4273}
!4976 = !DILocation(line: 271, column: 30, scope: !4896)
!4977 = !DILocation(line: 273, column: 9, scope: !4896)
!4978 = !DILocation(line: 273, column: 2, scope: !4896)
!4979 = !DILocation(line: 274, column: 1, scope: !4896)
!4980 = distinct !DISubprogram(name: "arch_rethook_fixup_return", scope: !3, file: !3, line: 277, type: !4981, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !4983)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{null, !4003, !15}
!4983 = !{!4984, !4985}
!4984 = !DILocalVariable(name: "regs", arg: 1, scope: !4980, file: !3, line: 277, type: !4003)
!4985 = !DILocalVariable(name: "correct_ret_addr", arg: 2, scope: !4980, file: !3, line: 278, type: !15)
!4986 = !DILocation(line: 277, column: 55, scope: !4980)
!4987 = !DILocation(line: 278, column: 25, scope: !4980)
!4988 = !DILocation(line: 286, column: 1, scope: !4980)
!4989 = !DILocation(line: 289, column: 58, scope: !4186)
!4990 = !DILocation(line: 290, column: 21, scope: !4186)
!4991 = !DILocation(line: 292, column: 2, scope: !4186)
!4992 = !DILocation(line: 292, column: 21, scope: !4186)
!4993 = !DILocation(line: 292, column: 29, scope: !4186)
!4994 = !DILocation(line: 293, column: 2, scope: !4186)
!4995 = !DILocation(line: 293, column: 16, scope: !4186)
!4996 = !DILocation(line: 294, column: 2, scope: !4186)
!4997 = !DILocation(line: 294, column: 20, scope: !4186)
!4998 = !DILocation(line: 295, column: 2, scope: !4186)
!4999 = !DILocation(line: 295, column: 23, scope: !4186)
!5000 = !DILocation(line: 297, column: 45, scope: !4186)
!5001 = !DILocation(line: 297, column: 21, scope: !4186)
!5002 = !DILocation(line: 297, column: 19, scope: !4186)
!5003 = !DILocation(line: 298, column: 7, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !4186, file: !3, line: 298, column: 6)
!5005 = !DILocation(line: 298, column: 6, scope: !4186)
!5006 = !DILocation(line: 299, column: 3, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !5008, file: !3, line: 299, column: 3)
!5008 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 298, column: 25)
!5009 = !DILocation(line: 299, column: 3, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 299, column: 3)
!5011 = !DILocation(line: 300, column: 3, scope: !5008)
!5012 = !DILocation(line: 300, column: 3, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !5014, file: !3, line: 300, column: 3)
!5014 = distinct !DILexicalBlock(scope: !5008, file: !3, line: 300, column: 3)
!5015 = !DILocation(line: 300, column: 3, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !5013, file: !3, line: 300, column: 3)
!5017 = !DILocation(line: 300, column: 3, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !5016, file: !3, line: 300, column: 3)
!5019 = !DILocation(line: 300, column: 3, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !5016, file: !3, line: 300, column: 3)
!5021 = !{i64 2154571890, i64 2154571919, i64 2154571965, i64 2154572023, i64 2154572077, i64 2154572131, i64 2154572186, i64 2154572217}
!5022 = !DILocation(line: 300, column: 3, scope: !5014)
!5023 = !DILocation(line: 301, column: 2, scope: !5008)
!5024 = !DILocation(line: 303, column: 26, scope: !4186)
!5025 = !DILocation(line: 303, column: 32, scope: !4186)
!5026 = !DILocation(line: 303, column: 2, scope: !4186)
!5027 = !DILocation(line: 309, column: 2, scope: !4186)
!5028 = !DILocation(line: 309, column: 2, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !4186, file: !3, line: 309, column: 2)
!5030 = !{i64 2154572700}
!5031 = !DILocation(line: 315, column: 10, scope: !4186)
!5032 = !DILocation(line: 315, column: 19, scope: !4186)
!5033 = !DILocation(line: 315, column: 28, scope: !4186)
!5034 = !DILocation(line: 315, column: 8, scope: !4186)
!5035 = !DILocation(line: 316, column: 2, scope: !4186)
!5036 = !DILocation(line: 316, column: 9, scope: !4186)
!5037 = !DILocation(line: 317, column: 9, scope: !4198)
!5038 = !DILocation(line: 317, column: 9, scope: !4199)
!5039 = !DILocation(line: 317, column: 7, scope: !4199)
!5040 = !DILocation(line: 318, column: 7, scope: !4201)
!5041 = !DILocation(line: 318, column: 7, scope: !4205)
!5042 = !DILocation(line: 318, column: 7, scope: !4204)
!5043 = !DILocation(line: 318, column: 7, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !4204, file: !3, line: 318, column: 7)
!5045 = !DILocation(line: 318, column: 7, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !4204, file: !3, line: 318, column: 7)
!5047 = !{i64 2154574427, i64 2154574456, i64 2154574502, i64 2154574560, i64 2154574614, i64 2154574668, i64 2154574723, i64 2154574754, i64 2154575062, i64 2154575068, i64 2154575115, i64 2154575138, i64 2154575164}
!5048 = !DILocation(line: 318, column: 7, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !4204, file: !3, line: 318, column: 7)
!5050 = !DILocation(line: 318, column: 7, scope: !4202)
!5051 = !DILocation(line: 318, column: 7, scope: !4199)
!5052 = !DILocation(line: 319, column: 4, scope: !4202)
!5053 = !DILocation(line: 320, column: 33, scope: !4199)
!5054 = !DILocation(line: 320, column: 38, scope: !4199)
!5055 = !DILocation(line: 320, column: 13, scope: !4199)
!5056 = !DILocation(line: 320, column: 11, scope: !4199)
!5057 = !DILocation(line: 321, column: 7, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !4199, file: !3, line: 321, column: 7)
!5059 = !DILocation(line: 321, column: 7, scope: !4199)
!5060 = !DILocation(line: 322, column: 4, scope: !5058)
!5061 = !DILocation(line: 322, column: 12, scope: !5058)
!5062 = !DILocation(line: 322, column: 17, scope: !5058)
!5063 = !DILocation(line: 322, column: 22, scope: !5058)
!5064 = !DILocation(line: 322, column: 31, scope: !5058)
!5065 = !DILocation(line: 323, column: 5, scope: !5058)
!5066 = !DILocation(line: 323, column: 23, scope: !5058)
!5067 = !DILocation(line: 325, column: 7, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !4199, file: !3, line: 325, column: 7)
!5069 = !DILocation(line: 325, column: 16, scope: !5068)
!5070 = !DILocation(line: 325, column: 13, scope: !5068)
!5071 = !DILocation(line: 325, column: 7, scope: !4199)
!5072 = !DILocation(line: 326, column: 4, scope: !5068)
!5073 = !DILocation(line: 327, column: 11, scope: !4199)
!5074 = !DILocation(line: 327, column: 18, scope: !4199)
!5075 = !DILocation(line: 327, column: 9, scope: !4199)
!5076 = distinct !{!5076, !5035, !5077, !4272, !4273}
!5077 = !DILocation(line: 328, column: 2, scope: !4186)
!5078 = !DILocation(line: 331, column: 28, scope: !4186)
!5079 = !DILocation(line: 331, column: 34, scope: !4186)
!5080 = !DILocation(line: 331, column: 2, scope: !4186)
!5081 = !DILocation(line: 334, column: 10, scope: !4186)
!5082 = !DILocation(line: 334, column: 19, scope: !4186)
!5083 = !DILocation(line: 334, column: 28, scope: !4186)
!5084 = !DILocation(line: 334, column: 8, scope: !4186)
!5085 = !DILocation(line: 335, column: 28, scope: !4186)
!5086 = !DILocation(line: 335, column: 34, scope: !4186)
!5087 = !DILocation(line: 335, column: 2, scope: !4186)
!5088 = !DILocation(line: 335, column: 11, scope: !4186)
!5089 = !DILocation(line: 335, column: 20, scope: !4186)
!5090 = !DILocation(line: 335, column: 26, scope: !4186)
!5091 = !DILocation(line: 336, column: 2, scope: !4186)
!5092 = !DILocation(line: 336, column: 8, scope: !4186)
!5093 = !DILocation(line: 336, column: 13, scope: !4186)
!5094 = !DILocation(line: 338, column: 2, scope: !4186)
!5095 = !DILocation(line: 338, column: 9, scope: !4186)
!5096 = !DILocation(line: 339, column: 9, scope: !4207)
!5097 = !DILocation(line: 339, column: 9, scope: !4208)
!5098 = !DILocation(line: 339, column: 7, scope: !4208)
!5099 = !DILocation(line: 340, column: 11, scope: !4208)
!5100 = !DILocation(line: 340, column: 18, scope: !4208)
!5101 = !DILocation(line: 340, column: 9, scope: !4208)
!5102 = !DILocation(line: 341, column: 19, scope: !4208)
!5103 = !DILocation(line: 341, column: 3, scope: !4208)
!5104 = distinct !{!5104, !5094, !5105, !4272, !4273}
!5105 = !DILocation(line: 342, column: 2, scope: !4186)
!5106 = !DILocation(line: 343, column: 2, scope: !4186)
!5107 = !DILocation(line: 343, column: 2, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !4186, file: !3, line: 343, column: 2)
!5109 = !{i64 2154576727}
!5110 = !DILocation(line: 343, column: 2, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5108, file: !3, line: 343, column: 2)
!5112 = !DILocation(line: 343, column: 2, scope: !5113)
!5113 = distinct !DILexicalBlock(scope: !5111, file: !3, line: 343, column: 2)
!5114 = !{i64 2154576886}
!5115 = !DILocation(line: 345, column: 9, scope: !4186)
!5116 = !DILocation(line: 346, column: 1, scope: !4186)
!5117 = !DILocation(line: 345, column: 2, scope: !4186)
!5118 = !DISubprogram(name: "_printk", scope: !5119, file: !5119, line: 153, type: !5120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5119 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5120 = !DISubroutineType(types: !5121)
!5121 = !{!38, !701, null}
!5122 = distinct !DISubprogram(name: "instruction_pointer_set", scope: !4005, file: !4005, line: 290, type: !4981, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5123)
!5123 = !{!5124, !5125}
!5124 = !DILocalVariable(name: "regs", arg: 1, scope: !5122, file: !4005, line: 290, type: !4003)
!5125 = !DILocalVariable(name: "val", arg: 2, scope: !5122, file: !4005, line: 291, type: !15)
!5126 = !DILocation(line: 290, column: 60, scope: !5122)
!5127 = !DILocation(line: 291, column: 17, scope: !5122)
!5128 = !DILocation(line: 293, column: 13, scope: !5122)
!5129 = !DILocation(line: 293, column: 2, scope: !5122)
!5130 = !DILocation(line: 293, column: 8, scope: !5122)
!5131 = !DILocation(line: 293, column: 11, scope: !5122)
!5132 = !DILocation(line: 294, column: 1, scope: !5122)
!5133 = distinct !DISubprogram(name: "refcount_sub_and_test", scope: !29, file: !29, line: 308, type: !5134, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5136)
!5134 = !DISubroutineType(types: !5135)
!5135 = !{!698, !38, !4531}
!5136 = !{!5137, !5138}
!5137 = !DILocalVariable(name: "i", arg: 1, scope: !5133, file: !29, line: 308, type: !38)
!5138 = !DILocalVariable(name: "r", arg: 2, scope: !5133, file: !29, line: 308, type: !4531)
!5139 = !DILocation(line: 308, column: 59, scope: !5133)
!5140 = !DILocation(line: 308, column: 74, scope: !5133)
!5141 = !DILocation(line: 310, column: 33, scope: !5133)
!5142 = !DILocation(line: 310, column: 36, scope: !5133)
!5143 = !DILocation(line: 310, column: 9, scope: !5133)
!5144 = !DILocation(line: 310, column: 2, scope: !5133)
!5145 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !29, file: !29, line: 270, type: !5146, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5148)
!5146 = !DISubroutineType(types: !5147)
!5147 = !{!698, !38, !4531, !2070}
!5148 = !{!5149, !5150, !5151, !5152}
!5149 = !DILocalVariable(name: "i", arg: 1, scope: !5145, file: !29, line: 270, type: !38)
!5150 = !DILocalVariable(name: "r", arg: 2, scope: !5145, file: !29, line: 270, type: !4531)
!5151 = !DILocalVariable(name: "oldp", arg: 3, scope: !5145, file: !29, line: 270, type: !2070)
!5152 = !DILocalVariable(name: "old", scope: !5145, file: !29, line: 272, type: !38)
!5153 = !DILocation(line: 270, column: 61, scope: !5145)
!5154 = !DILocation(line: 270, column: 76, scope: !5145)
!5155 = !DILocation(line: 270, column: 84, scope: !5145)
!5156 = !DILocation(line: 272, column: 2, scope: !5145)
!5157 = !DILocation(line: 272, column: 6, scope: !5145)
!5158 = !DILocation(line: 272, column: 37, scope: !5145)
!5159 = !DILocation(line: 272, column: 41, scope: !5145)
!5160 = !DILocation(line: 272, column: 44, scope: !5145)
!5161 = !DILocation(line: 272, column: 12, scope: !5145)
!5162 = !DILocation(line: 274, column: 6, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5145, file: !29, line: 274, column: 6)
!5164 = !DILocation(line: 274, column: 6, scope: !5145)
!5165 = !DILocation(line: 275, column: 11, scope: !5163)
!5166 = !DILocation(line: 275, column: 4, scope: !5163)
!5167 = !DILocation(line: 275, column: 9, scope: !5163)
!5168 = !DILocation(line: 275, column: 3, scope: !5163)
!5169 = !DILocation(line: 277, column: 6, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5145, file: !29, line: 277, column: 6)
!5171 = !DILocation(line: 277, column: 13, scope: !5170)
!5172 = !DILocation(line: 277, column: 10, scope: !5170)
!5173 = !DILocation(line: 277, column: 6, scope: !5145)
!5174 = !DILocation(line: 278, column: 3, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5170, file: !29, line: 277, column: 16)
!5176 = !DILocation(line: 278, column: 3, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5175, file: !29, line: 278, column: 3)
!5178 = !DILocation(line: 278, column: 3, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5177, file: !29, line: 278, column: 3)
!5180 = !DILocation(line: 278, column: 3, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !5177, file: !29, line: 278, column: 3)
!5182 = !DILocation(line: 278, column: 3, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5181, file: !29, line: 278, column: 3)
!5184 = !{i64 2149815343}
!5185 = !DILocation(line: 279, column: 3, scope: !5175)
!5186 = !DILocation(line: 282, column: 6, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5145, file: !29, line: 282, column: 6)
!5188 = !DILocation(line: 282, column: 6, scope: !5145)
!5189 = !DILocation(line: 283, column: 26, scope: !5187)
!5190 = !DILocation(line: 283, column: 3, scope: !5187)
!5191 = !DILocation(line: 285, column: 2, scope: !5145)
!5192 = !DILocation(line: 286, column: 1, scope: !5145)
!5193 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !5194, file: !5194, line: 397, type: !5195, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5198)
!5194 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5195 = !DISubroutineType(types: !5196)
!5196 = !{!38, !38, !5197}
!5197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!5198 = !{!5199, !5200}
!5199 = !DILocalVariable(name: "i", arg: 1, scope: !5193, file: !5194, line: 397, type: !38)
!5200 = !DILocalVariable(name: "v", arg: 2, scope: !5193, file: !5194, line: 397, type: !5197)
!5201 = !DILocation(line: 397, column: 30, scope: !5193)
!5202 = !DILocation(line: 397, column: 43, scope: !5193)
!5203 = !DILocation(line: 399, column: 2, scope: !5193)
!5204 = !DILocation(line: 399, column: 2, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5193, file: !5194, line: 399, column: 2)
!5206 = !DILocation(line: 400, column: 31, scope: !5193)
!5207 = !DILocation(line: 400, column: 2, scope: !5193)
!5208 = !DILocation(line: 401, column: 38, scope: !5193)
!5209 = !DILocation(line: 401, column: 41, scope: !5193)
!5210 = !DILocation(line: 401, column: 9, scope: !5193)
!5211 = !DILocation(line: 401, column: 2, scope: !5193)
!5212 = !DISubprogram(name: "refcount_warn_saturate", scope: !29, file: !29, line: 127, type: !5213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5213 = !DISubroutineType(types: !5214)
!5214 = !{null, !4531, !4089}
!5215 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5216, file: !5216, line: 94, type: !5217, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5222)
!5216 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5217 = !DISubroutineType(types: !5218)
!5218 = !{null, !5219, !1009}
!5219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5220, size: 64)
!5220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5221)
!5221 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5222 = !{!5223, !5224}
!5223 = !DILocalVariable(name: "v", arg: 1, scope: !5215, file: !5216, line: 94, type: !5219)
!5224 = !DILocalVariable(name: "size", arg: 2, scope: !5215, file: !5216, line: 94, type: !1009)
!5225 = !DILocation(line: 94, column: 79, scope: !5215)
!5226 = !DILocation(line: 94, column: 89, scope: !5215)
!5227 = !DILocation(line: 96, column: 20, scope: !5215)
!5228 = !DILocation(line: 96, column: 23, scope: !5215)
!5229 = !DILocation(line: 96, column: 2, scope: !5215)
!5230 = !DILocation(line: 97, column: 2, scope: !5215)
!5231 = !DILocation(line: 98, column: 1, scope: !5215)
!5232 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !5233, file: !5233, line: 928, type: !5195, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5234)
!5233 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5234 = !{!5235, !5236}
!5235 = !DILocalVariable(name: "i", arg: 1, scope: !5232, file: !5233, line: 928, type: !38)
!5236 = !DILocalVariable(name: "v", arg: 2, scope: !5232, file: !5233, line: 928, type: !5197)
!5237 = !DILocation(line: 928, column: 34, scope: !5232)
!5238 = !DILocation(line: 928, column: 47, scope: !5232)
!5239 = !DILocation(line: 936, column: 31, scope: !5232)
!5240 = !DILocation(line: 936, column: 34, scope: !5232)
!5241 = !DILocation(line: 936, column: 9, scope: !5232)
!5242 = !DILocation(line: 936, column: 2, scope: !5232)
!5243 = distinct !DISubprogram(name: "kasan_check_write", scope: !5244, file: !5244, line: 44, type: !5245, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5247)
!5244 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5245 = !DISubroutineType(types: !5246)
!5246 = !{!698, !5219, !22}
!5247 = !{!5248, !5249}
!5248 = !DILocalVariable(name: "p", arg: 1, scope: !5243, file: !5244, line: 44, type: !5219)
!5249 = !DILocalVariable(name: "size", arg: 2, scope: !5243, file: !5244, line: 44, type: !22)
!5250 = !DILocation(line: 44, column: 59, scope: !5243)
!5251 = !DILocation(line: 44, column: 75, scope: !5243)
!5252 = !DILocation(line: 46, column: 2, scope: !5243)
!5253 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5254, file: !5254, line: 229, type: !5255, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5257)
!5254 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5255 = !DISubroutineType(types: !5256)
!5256 = !{null, !5219, !1009, !38}
!5257 = !{!5258, !5259, !5260}
!5258 = !DILocalVariable(name: "ptr", arg: 1, scope: !5253, file: !5254, line: 229, type: !5219)
!5259 = !DILocalVariable(name: "size", arg: 2, scope: !5253, file: !5254, line: 229, type: !1009)
!5260 = !DILocalVariable(name: "type", arg: 3, scope: !5253, file: !5254, line: 230, type: !38)
!5261 = !DILocation(line: 229, column: 60, scope: !5253)
!5262 = !DILocation(line: 229, column: 72, scope: !5253)
!5263 = !DILocation(line: 230, column: 15, scope: !5253)
!5264 = !DILocation(line: 230, column: 23, scope: !5253)
!5265 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !5266, file: !5266, line: 101, type: !5195, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5267)
!5266 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!5267 = !{!5268, !5269, !5270}
!5268 = !DILocalVariable(name: "i", arg: 1, scope: !5265, file: !5266, line: 101, type: !38)
!5269 = !DILocalVariable(name: "v", arg: 2, scope: !5265, file: !5266, line: 101, type: !5197)
!5270 = !DILocalVariable(name: "__ret", scope: !5271, file: !5266, line: 103, type: !38)
!5271 = distinct !DILexicalBlock(scope: !5265, file: !5266, line: 103, column: 9)
!5272 = !DILocation(line: 101, column: 54, scope: !5265)
!5273 = !DILocation(line: 101, column: 67, scope: !5265)
!5274 = !DILocation(line: 103, column: 9, scope: !5271)
!5275 = !{i64 2147987737, i64 2147987776, i64 2147987797, i64 2147987834, i64 2147987857, i64 2147987866}
!5276 = !DILocation(line: 103, column: 9, scope: !5265)
!5277 = !DILocation(line: 103, column: 2, scope: !5265)
!5278 = distinct !DISubprogram(name: "kmalloc", scope: !4097, file: !4097, line: 591, type: !4513, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5279)
!5279 = !{!5280, !5281, !5282}
!5280 = !DILocalVariable(name: "size", arg: 1, scope: !5278, file: !4097, line: 591, type: !1009)
!5281 = !DILocalVariable(name: "flags", arg: 2, scope: !5278, file: !4097, line: 591, type: !532)
!5282 = !DILocalVariable(name: "index", scope: !5283, file: !4097, line: 594, type: !22)
!5283 = distinct !DILexicalBlock(scope: !5284, file: !4097, line: 593, column: 42)
!5284 = distinct !DILexicalBlock(scope: !5278, file: !4097, line: 593, column: 6)
!5285 = !DILocation(line: 591, column: 61, scope: !5278)
!5286 = !DILocation(line: 591, column: 73, scope: !5278)
!5287 = !DILocation(line: 593, column: 27, scope: !5284)
!5288 = !DILocation(line: 593, column: 6, scope: !5284)
!5289 = !DILocation(line: 593, column: 33, scope: !5284)
!5290 = !DILocation(line: 593, column: 36, scope: !5284)
!5291 = !DILocation(line: 593, column: 6, scope: !5278)
!5292 = !DILocation(line: 594, column: 3, scope: !5283)
!5293 = !DILocation(line: 594, column: 16, scope: !5283)
!5294 = !DILocation(line: 596, column: 7, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !5283, file: !4097, line: 596, column: 7)
!5296 = !DILocation(line: 596, column: 12, scope: !5295)
!5297 = !DILocation(line: 596, column: 7, scope: !5283)
!5298 = !DILocation(line: 597, column: 25, scope: !5295)
!5299 = !DILocation(line: 597, column: 31, scope: !5295)
!5300 = !DILocation(line: 597, column: 11, scope: !5295)
!5301 = !DILocation(line: 597, column: 4, scope: !5295)
!5302 = !DILocation(line: 599, column: 11, scope: !5283)
!5303 = !DILocation(line: 599, column: 9, scope: !5283)
!5304 = !DILocation(line: 601, column: 33, scope: !5283)
!5305 = !DILocation(line: 601, column: 40, scope: !5283)
!5306 = !DILocation(line: 601, column: 20, scope: !5283)
!5307 = !DILocation(line: 601, column: 5, scope: !5283)
!5308 = !DILocation(line: 601, column: 51, scope: !5283)
!5309 = !DILocation(line: 602, column: 5, scope: !5283)
!5310 = !DILocation(line: 602, column: 12, scope: !5283)
!5311 = !DILocation(line: 600, column: 10, scope: !5283)
!5312 = !DILocation(line: 600, column: 3, scope: !5283)
!5313 = !DILocation(line: 603, column: 2, scope: !5284)
!5314 = !DILocation(line: 604, column: 19, scope: !5278)
!5315 = !DILocation(line: 604, column: 25, scope: !5278)
!5316 = !DILocation(line: 604, column: 9, scope: !5278)
!5317 = !DILocation(line: 604, column: 2, scope: !5278)
!5318 = !DILocation(line: 605, column: 1, scope: !5278)
!5319 = !DISubprogram(name: "kmalloc_large", scope: !4097, file: !4097, line: 531, type: !4513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5320 = distinct !DISubprogram(name: "__kmalloc_index", scope: !4097, file: !4097, line: 444, type: !5321, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5323)
!5321 = !DISubroutineType(types: !5322)
!5322 = !{!22, !1009, !698}
!5323 = !{!5324, !5325}
!5324 = !DILocalVariable(name: "size", arg: 1, scope: !5320, file: !4097, line: 444, type: !1009)
!5325 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5320, file: !4097, line: 445, type: !698)
!5326 = !DILocation(line: 444, column: 60, scope: !5320)
!5327 = !DILocation(line: 445, column: 16, scope: !5320)
!5328 = !DILocation(line: 447, column: 7, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5320, file: !4097, line: 447, column: 6)
!5330 = !DILocation(line: 447, column: 6, scope: !5320)
!5331 = !DILocation(line: 448, column: 3, scope: !5329)
!5332 = !DILocation(line: 450, column: 6, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5320, file: !4097, line: 450, column: 6)
!5334 = !DILocation(line: 450, column: 11, scope: !5333)
!5335 = !DILocation(line: 450, column: 6, scope: !5320)
!5336 = !DILocation(line: 451, column: 3, scope: !5333)
!5337 = !DILocation(line: 453, column: 32, scope: !5338)
!5338 = distinct !DILexicalBlock(scope: !5320, file: !4097, line: 453, column: 6)
!5339 = !DILocation(line: 453, column: 37, scope: !5338)
!5340 = !DILocation(line: 453, column: 42, scope: !5338)
!5341 = !DILocation(line: 453, column: 45, scope: !5338)
!5342 = !DILocation(line: 453, column: 50, scope: !5338)
!5343 = !DILocation(line: 453, column: 6, scope: !5320)
!5344 = !DILocation(line: 454, column: 3, scope: !5338)
!5345 = !DILocation(line: 455, column: 32, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !5320, file: !4097, line: 455, column: 6)
!5347 = !DILocation(line: 455, column: 37, scope: !5346)
!5348 = !DILocation(line: 455, column: 43, scope: !5346)
!5349 = !DILocation(line: 455, column: 46, scope: !5346)
!5350 = !DILocation(line: 455, column: 51, scope: !5346)
!5351 = !DILocation(line: 455, column: 6, scope: !5320)
!5352 = !DILocation(line: 456, column: 3, scope: !5346)
!5353 = !DILocation(line: 457, column: 6, scope: !5354)
!5354 = distinct !DILexicalBlock(scope: !5320, file: !4097, line: 457, column: 6)
!5355 = !DILocation(line: 457, column: 11, scope: !5354)
!5356 = !DILocation(line: 457, column: 6, scope: !5320)
!5357 = !DILocation(line: 457, column: 26, scope: !5354)
!5358 = !DILocation(line: 458, column: 6, scope: !5359)
!5359 = distinct !DILexicalBlock(scope: !5320, file: !4097, line: 458, column: 6)
!5360 = !DILocation(line: 458, column: 11, scope: !5359)
!5361 = !DILocation(line: 458, column: 6, scope: !5320)
!5362 = !DILocation(line: 458, column: 26, scope: !5359)
!5363 = !DILocation(line: 459, column: 6, scope: !5364)
!5364 = distinct !DILexicalBlock(scope: !5320, file: !4097, line: 459, column: 6)
!5365 = !DILocation(line: 459, column: 11, scope: !5364)
!5366 = !DILocation(line: 459, column: 6, scope: !5320)
!5367 = !DILocation(line: 459, column: 26, scope: !5364)
!5368 = !DILocation(line: 460, column: 6, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5320, file: !4097, line: 460, column: 6)
!5370 = !DILocation(line: 460, column: 11, scope: !5369)
!5371 = !DILocation(line: 460, column: 6, scope: !5320)
!5372 = !DILocation(line: 460, column: 26, scope: !5369)
!5373 = !DILocation(line: 461, column: 6, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5320, file: !4097, line: 461, column: 6)
!5375 = !DILocation(line: 461, column: 11, scope: !5374)
!5376 = !DILocation(line: 461, column: 6, scope: !5320)
!5377 = !DILocation(line: 461, column: 26, scope: !5374)
!5378 = !DILocation(line: 462, column: 6, scope: !5379)
!5379 = distinct !DILexicalBlock(scope: !5320, file: !4097, line: 462, column: 6)
!5380 = !DILocation(line: 462, column: 11, scope: !5379)
!5381 = !DILocation(line: 462, column: 6, scope: !5320)
!5382 = !DILocation(line: 462, column: 26, scope: !5379)
!5383 = !DILocation(line: 463, column: 6, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5320, file: !4097, line: 463, column: 6)
!5385 = !DILocation(line: 463, column: 11, scope: !5384)
!5386 = !DILocation(line: 463, column: 6, scope: !5320)
!5387 = !DILocation(line: 463, column: 26, scope: !5384)
!5388 = !DILocation(line: 464, column: 6, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5320, file: !4097, line: 464, column: 6)
!5390 = !DILocation(line: 464, column: 11, scope: !5389)
!5391 = !DILocation(line: 464, column: 6, scope: !5320)
!5392 = !DILocation(line: 464, column: 26, scope: !5389)
!5393 = !DILocation(line: 465, column: 6, scope: !5394)
!5394 = distinct !DILexicalBlock(scope: !5320, file: !4097, line: 465, column: 6)
!5395 = !DILocation(line: 465, column: 11, scope: !5394)
!5396 = !DILocation(line: 465, column: 6, scope: !5320)
!5397 = !DILocation(line: 465, column: 26, scope: !5394)
!5398 = !DILocation(line: 466, column: 6, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !5320, file: !4097, line: 466, column: 6)
!5400 = !DILocation(line: 466, column: 11, scope: !5399)
!5401 = !DILocation(line: 466, column: 6, scope: !5320)
!5402 = !DILocation(line: 466, column: 26, scope: !5399)
!5403 = !DILocation(line: 467, column: 6, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5320, file: !4097, line: 467, column: 6)
!5405 = !DILocation(line: 467, column: 11, scope: !5404)
!5406 = !DILocation(line: 467, column: 6, scope: !5320)
!5407 = !DILocation(line: 467, column: 26, scope: !5404)
!5408 = !DILocation(line: 468, column: 6, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5320, file: !4097, line: 468, column: 6)
!5410 = !DILocation(line: 468, column: 11, scope: !5409)
!5411 = !DILocation(line: 468, column: 6, scope: !5320)
!5412 = !DILocation(line: 468, column: 26, scope: !5409)
!5413 = !DILocation(line: 469, column: 6, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5320, file: !4097, line: 469, column: 6)
!5415 = !DILocation(line: 469, column: 11, scope: !5414)
!5416 = !DILocation(line: 469, column: 6, scope: !5320)
!5417 = !DILocation(line: 469, column: 26, scope: !5414)
!5418 = !DILocation(line: 470, column: 6, scope: !5419)
!5419 = distinct !DILexicalBlock(scope: !5320, file: !4097, line: 470, column: 6)
!5420 = !DILocation(line: 470, column: 11, scope: !5419)
!5421 = !DILocation(line: 470, column: 6, scope: !5320)
!5422 = !DILocation(line: 470, column: 26, scope: !5419)
!5423 = !DILocation(line: 471, column: 6, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5320, file: !4097, line: 471, column: 6)
!5425 = !DILocation(line: 471, column: 11, scope: !5424)
!5426 = !DILocation(line: 471, column: 6, scope: !5320)
!5427 = !DILocation(line: 471, column: 26, scope: !5424)
!5428 = !DILocation(line: 472, column: 6, scope: !5429)
!5429 = distinct !DILexicalBlock(scope: !5320, file: !4097, line: 472, column: 6)
!5430 = !DILocation(line: 472, column: 11, scope: !5429)
!5431 = !DILocation(line: 472, column: 6, scope: !5320)
!5432 = !DILocation(line: 472, column: 26, scope: !5429)
!5433 = !DILocation(line: 473, column: 6, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5320, file: !4097, line: 473, column: 6)
!5435 = !DILocation(line: 473, column: 11, scope: !5434)
!5436 = !DILocation(line: 473, column: 6, scope: !5320)
!5437 = !DILocation(line: 473, column: 26, scope: !5434)
!5438 = !DILocation(line: 474, column: 6, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5320, file: !4097, line: 474, column: 6)
!5440 = !DILocation(line: 474, column: 11, scope: !5439)
!5441 = !DILocation(line: 474, column: 6, scope: !5320)
!5442 = !DILocation(line: 474, column: 27, scope: !5439)
!5443 = !DILocation(line: 475, column: 6, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5320, file: !4097, line: 475, column: 6)
!5445 = !DILocation(line: 475, column: 11, scope: !5444)
!5446 = !DILocation(line: 475, column: 6, scope: !5320)
!5447 = !DILocation(line: 475, column: 32, scope: !5444)
!5448 = !DILocation(line: 477, column: 50, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5320, file: !4097, line: 477, column: 6)
!5450 = !DILocation(line: 477, column: 6, scope: !5320)
!5451 = !DILocation(line: 478, column: 3, scope: !5449)
!5452 = !DILocation(line: 478, column: 3, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5454, file: !4097, line: 478, column: 3)
!5454 = distinct !DILexicalBlock(scope: !5449, file: !4097, line: 478, column: 3)
!5455 = !{i32 -2142316334}
!5456 = !DILocation(line: 478, column: 3, scope: !5454)
!5457 = !DILocation(line: 480, column: 3, scope: !5449)
!5458 = !DILocation(line: 480, column: 3, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5449, file: !4097, line: 480, column: 3)
!5460 = !DILocation(line: 480, column: 3, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5459, file: !4097, line: 480, column: 3)
!5462 = !DILocation(line: 480, column: 3, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5459, file: !4097, line: 480, column: 3)
!5464 = !{i64 2152651165, i64 2152651194, i64 2152651240, i64 2152651298, i64 2152651352, i64 2152651406, i64 2152651461, i64 2152651492}
!5465 = !DILocation(line: 483, column: 2, scope: !5320)
!5466 = !DILocation(line: 484, column: 1, scope: !5320)
!5467 = !DISubprogram(name: "kmalloc_trace", scope: !4097, file: !4097, line: 525, type: !5468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5468 = !DISubroutineType(types: !5469)
!5469 = !{!26, !540, !532, !1009}
!5470 = distinct !DISubprogram(name: "kmalloc_type", scope: !4097, file: !4097, line: 401, type: !5471, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5473)
!5471 = !DISubroutineType(types: !5472)
!5472 = !{!4096, !532, !15}
!5473 = !{!5474, !5475}
!5474 = !DILocalVariable(name: "flags", arg: 1, scope: !5470, file: !4097, line: 401, type: !532)
!5475 = !DILocalVariable(name: "caller", arg: 2, scope: !5470, file: !4097, line: 401, type: !15)
!5476 = !DILocation(line: 401, column: 67, scope: !5470)
!5477 = !DILocation(line: 401, column: 88, scope: !5470)
!5478 = !DILocation(line: 407, column: 6, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5470, file: !4097, line: 407, column: 6)
!5480 = !DILocation(line: 407, column: 6, scope: !5470)
!5481 = !DILocation(line: 413, column: 3, scope: !5479)
!5482 = !DILocation(line: 423, column: 38, scope: !5483)
!5483 = distinct !DILexicalBlock(scope: !5470, file: !4097, line: 423, column: 6)
!5484 = !DILocation(line: 423, column: 44, scope: !5483)
!5485 = !DILocation(line: 423, column: 6, scope: !5470)
!5486 = !DILocation(line: 424, column: 3, scope: !5483)
!5487 = !DILocation(line: 426, column: 3, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5470, file: !4097, line: 425, column: 6)
!5489 = !DILocation(line: 429, column: 1, scope: !5470)
!5490 = !DISubprogram(name: "__kmalloc", scope: !4097, file: !4097, line: 488, type: !4513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5491 = !DISubprogram(name: "__compiletime_assert_206", scope: !4097, file: !4097, line: 478, type: !2288, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5492 = distinct !DISubprogram(name: "atomic_set", scope: !5194, file: !5194, line: 65, type: !5493, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5495)
!5493 = !DISubroutineType(types: !5494)
!5494 = !{null, !5197, !38}
!5495 = !{!5496, !5497}
!5496 = !DILocalVariable(name: "v", arg: 1, scope: !5492, file: !5194, line: 65, type: !5197)
!5497 = !DILocalVariable(name: "i", arg: 2, scope: !5492, file: !5194, line: 65, type: !38)
!5498 = !DILocation(line: 65, column: 22, scope: !5492)
!5499 = !DILocation(line: 65, column: 29, scope: !5492)
!5500 = !DILocation(line: 67, column: 26, scope: !5492)
!5501 = !DILocation(line: 67, column: 2, scope: !5492)
!5502 = !DILocation(line: 68, column: 17, scope: !5492)
!5503 = !DILocation(line: 68, column: 20, scope: !5492)
!5504 = !DILocation(line: 68, column: 2, scope: !5492)
!5505 = !DILocation(line: 69, column: 1, scope: !5492)
!5506 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5216, file: !5216, line: 80, type: !5217, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5507)
!5507 = !{!5508, !5509}
!5508 = !DILocalVariable(name: "v", arg: 1, scope: !5506, file: !5216, line: 80, type: !5219)
!5509 = !DILocalVariable(name: "size", arg: 2, scope: !5506, file: !5216, line: 80, type: !1009)
!5510 = !DILocation(line: 80, column: 74, scope: !5506)
!5511 = !DILocation(line: 80, column: 84, scope: !5506)
!5512 = !DILocation(line: 82, column: 20, scope: !5506)
!5513 = !DILocation(line: 82, column: 23, scope: !5506)
!5514 = !DILocation(line: 82, column: 2, scope: !5506)
!5515 = !DILocation(line: 83, column: 2, scope: !5506)
!5516 = !DILocation(line: 84, column: 1, scope: !5506)
!5517 = distinct !DISubprogram(name: "raw_atomic_set", scope: !5233, file: !5233, line: 488, type: !5493, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5518)
!5518 = !{!5519, !5520}
!5519 = !DILocalVariable(name: "v", arg: 1, scope: !5517, file: !5233, line: 488, type: !5197)
!5520 = !DILocalVariable(name: "i", arg: 2, scope: !5517, file: !5233, line: 488, type: !38)
!5521 = !DILocation(line: 488, column: 26, scope: !5517)
!5522 = !DILocation(line: 488, column: 33, scope: !5517)
!5523 = !DILocation(line: 490, column: 18, scope: !5517)
!5524 = !DILocation(line: 490, column: 21, scope: !5517)
!5525 = !DILocation(line: 490, column: 2, scope: !5517)
!5526 = !DILocation(line: 491, column: 1, scope: !5517)
!5527 = distinct !DISubprogram(name: "arch_atomic_set", scope: !5266, file: !5266, line: 26, type: !5493, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5528)
!5528 = !{!5529, !5530}
!5529 = !DILocalVariable(name: "v", arg: 1, scope: !5527, file: !5266, line: 26, type: !5197)
!5530 = !DILocalVariable(name: "i", arg: 2, scope: !5527, file: !5266, line: 26, type: !38)
!5531 = !DILocation(line: 26, column: 55, scope: !5527)
!5532 = !DILocation(line: 26, column: 62, scope: !5527)
!5533 = !DILocation(line: 28, column: 2, scope: !5527)
!5534 = !DILocation(line: 28, column: 2, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5527, file: !5266, line: 28, column: 2)
!5536 = !DILocation(line: 29, column: 1, scope: !5527)
!5537 = distinct !DISubprogram(name: "atomic_fetch_add_release", scope: !5194, file: !5194, line: 231, type: !5195, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5538)
!5538 = !{!5539, !5540}
!5539 = !DILocalVariable(name: "i", arg: 1, scope: !5537, file: !5194, line: 231, type: !38)
!5540 = !DILocalVariable(name: "v", arg: 2, scope: !5537, file: !5194, line: 231, type: !5197)
!5541 = !DILocation(line: 231, column: 30, scope: !5537)
!5542 = !DILocation(line: 231, column: 43, scope: !5537)
!5543 = !DILocation(line: 233, column: 2, scope: !5537)
!5544 = !DILocation(line: 233, column: 2, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5537, file: !5194, line: 233, column: 2)
!5546 = !DILocation(line: 234, column: 31, scope: !5537)
!5547 = !DILocation(line: 234, column: 2, scope: !5537)
!5548 = !DILocation(line: 235, column: 38, scope: !5537)
!5549 = !DILocation(line: 235, column: 41, scope: !5537)
!5550 = !DILocation(line: 235, column: 9, scope: !5537)
!5551 = !DILocation(line: 235, column: 2, scope: !5537)
!5552 = distinct !DISubprogram(name: "__freelist_add", scope: !4116, file: !4116, line: 30, type: !4564, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5553)
!5553 = !{!5554, !5555, !5556, !5557, !5563, !5564, !5566, !5567, !5568, !5569}
!5554 = !DILocalVariable(name: "node", arg: 1, scope: !5552, file: !4116, line: 30, type: !4120)
!5555 = !DILocalVariable(name: "list", arg: 2, scope: !5552, file: !4116, line: 30, type: !4566)
!5556 = !DILocalVariable(name: "head", scope: !5552, file: !4116, line: 46, type: !4120)
!5557 = !DILocalVariable(name: "__ai_ptr", scope: !5558, file: !4116, line: 52, type: !4152)
!5558 = distinct !DILexicalBlock(scope: !5559, file: !4116, line: 52, column: 8)
!5559 = distinct !DILexicalBlock(scope: !5560, file: !4116, line: 52, column: 7)
!5560 = distinct !DILexicalBlock(scope: !5561, file: !4116, line: 48, column: 11)
!5561 = distinct !DILexicalBlock(scope: !5562, file: !4116, line: 48, column: 2)
!5562 = distinct !DILexicalBlock(scope: !5552, file: !4116, line: 48, column: 2)
!5563 = !DILocalVariable(name: "__ai_oldp", scope: !5558, file: !4116, line: 52, type: !4152)
!5564 = !DILocalVariable(name: "success", scope: !5565, file: !4116, line: 52, type: !698)
!5565 = distinct !DILexicalBlock(scope: !5558, file: !4116, line: 52, column: 8)
!5566 = !DILocalVariable(name: "_old", scope: !5565, file: !4116, line: 52, type: !4152)
!5567 = !DILocalVariable(name: "__old", scope: !5565, file: !4116, line: 52, type: !4120)
!5568 = !DILocalVariable(name: "__new", scope: !5565, file: !4116, line: 52, type: !4120)
!5569 = !DILocalVariable(name: "__ptr", scope: !5565, file: !4116, line: 52, type: !4153)
!5570 = !DILocation(line: 30, column: 57, scope: !5552)
!5571 = !DILocation(line: 30, column: 85, scope: !5552)
!5572 = !DILocation(line: 46, column: 2, scope: !5552)
!5573 = !DILocation(line: 46, column: 24, scope: !5552)
!5574 = !DILocation(line: 46, column: 31, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5552, file: !4116, line: 46, column: 31)
!5576 = !DILocation(line: 46, column: 31, scope: !5577)
!5577 = distinct !DILexicalBlock(scope: !5575, file: !4116, line: 46, column: 31)
!5578 = !DILocation(line: 48, column: 2, scope: !5552)
!5579 = !DILocation(line: 49, column: 3, scope: !5560)
!5580 = !DILocation(line: 49, column: 3, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5560, file: !4116, line: 49, column: 3)
!5582 = !DILocation(line: 49, column: 3, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5581, file: !4116, line: 49, column: 3)
!5584 = !DILocation(line: 49, column: 3, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5581, file: !4116, line: 49, column: 3)
!5586 = !DILocation(line: 50, column: 23, scope: !5560)
!5587 = !DILocation(line: 50, column: 29, scope: !5560)
!5588 = !DILocation(line: 50, column: 3, scope: !5560)
!5589 = !DILocation(line: 52, column: 8, scope: !5558)
!5590 = !DILocation(line: 52, column: 8, scope: !5591)
!5591 = distinct !DILexicalBlock(scope: !5558, file: !4116, line: 52, column: 8)
!5592 = !DILocation(line: 52, column: 8, scope: !5565)
!5593 = !{i64 2154451209, i64 2154451248, i64 2154451269, i64 2154451306, i64 2154451329, i64 2154451338, i64 2154451539}
!5594 = !DILocation(line: 52, column: 8, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5565, file: !4116, line: 52, column: 8)
!5596 = !DILocation(line: 52, column: 8, scope: !5559)
!5597 = !DILocation(line: 52, column: 7, scope: !5560)
!5598 = !DILocation(line: 57, column: 56, scope: !5599)
!5599 = distinct !DILexicalBlock(scope: !5600, file: !4116, line: 57, column: 8)
!5600 = distinct !DILexicalBlock(scope: !5559, file: !4116, line: 52, column: 55)
!5601 = !DILocation(line: 57, column: 62, scope: !5599)
!5602 = !DILocation(line: 57, column: 8, scope: !5599)
!5603 = !DILocation(line: 57, column: 68, scope: !5599)
!5604 = !DILocation(line: 57, column: 8, scope: !5600)
!5605 = !DILocation(line: 58, column: 5, scope: !5599)
!5606 = distinct !{!5606, !5607, !5608, !4273}
!5607 = !DILocation(line: 48, column: 2, scope: !5562)
!5608 = !DILocation(line: 61, column: 2, scope: !5562)
!5609 = !DILocation(line: 59, column: 3, scope: !5600)
!5610 = !DILocation(line: 62, column: 1, scope: !5552)
!5611 = distinct !DISubprogram(name: "raw_atomic_fetch_add_release", scope: !5233, file: !5233, line: 705, type: !5195, scopeLine: 706, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5612)
!5612 = !{!5613, !5614}
!5613 = !DILocalVariable(name: "i", arg: 1, scope: !5611, file: !5233, line: 705, type: !38)
!5614 = !DILocalVariable(name: "v", arg: 2, scope: !5611, file: !5233, line: 705, type: !5197)
!5615 = !DILocation(line: 705, column: 34, scope: !5611)
!5616 = !DILocation(line: 705, column: 47, scope: !5611)
!5617 = !DILocation(line: 713, column: 31, scope: !5611)
!5618 = !DILocation(line: 713, column: 34, scope: !5611)
!5619 = !DILocation(line: 713, column: 9, scope: !5611)
!5620 = !DILocation(line: 713, column: 2, scope: !5611)
!5621 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !5266, file: !5266, line: 95, type: !5195, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5622)
!5622 = !{!5623, !5624, !5625}
!5623 = !DILocalVariable(name: "i", arg: 1, scope: !5621, file: !5266, line: 95, type: !38)
!5624 = !DILocalVariable(name: "v", arg: 2, scope: !5621, file: !5266, line: 95, type: !5197)
!5625 = !DILocalVariable(name: "__ret", scope: !5626, file: !5266, line: 97, type: !38)
!5626 = distinct !DILexicalBlock(scope: !5621, file: !5266, line: 97, column: 9)
!5627 = !DILocation(line: 95, column: 54, scope: !5621)
!5628 = !DILocation(line: 95, column: 67, scope: !5621)
!5629 = !DILocation(line: 97, column: 9, scope: !5626)
!5630 = !{i64 2147985552, i64 2147985591, i64 2147985612, i64 2147985649, i64 2147985672, i64 2147985681}
!5631 = !DILocation(line: 97, column: 9, scope: !5621)
!5632 = !DILocation(line: 97, column: 2, scope: !5621)
!5633 = distinct !DISubprogram(name: "atomic_set_release", scope: !5194, file: !5194, line: 83, type: !5493, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5634)
!5634 = !{!5635, !5636}
!5635 = !DILocalVariable(name: "v", arg: 1, scope: !5633, file: !5194, line: 83, type: !5197)
!5636 = !DILocalVariable(name: "i", arg: 2, scope: !5633, file: !5194, line: 83, type: !38)
!5637 = !DILocation(line: 83, column: 30, scope: !5633)
!5638 = !DILocation(line: 83, column: 37, scope: !5633)
!5639 = !DILocation(line: 85, column: 2, scope: !5633)
!5640 = !DILocation(line: 85, column: 2, scope: !5641)
!5641 = distinct !DILexicalBlock(scope: !5633, file: !5194, line: 85, column: 2)
!5642 = !DILocation(line: 86, column: 26, scope: !5633)
!5643 = !DILocation(line: 86, column: 2, scope: !5633)
!5644 = !DILocation(line: 87, column: 25, scope: !5633)
!5645 = !DILocation(line: 87, column: 28, scope: !5633)
!5646 = !DILocation(line: 87, column: 2, scope: !5633)
!5647 = !DILocation(line: 88, column: 1, scope: !5633)
!5648 = distinct !DISubprogram(name: "instrument_read_write", scope: !5216, file: !5216, line: 52, type: !5217, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5649)
!5649 = !{!5650, !5651}
!5650 = !DILocalVariable(name: "v", arg: 1, scope: !5648, file: !5216, line: 52, type: !5219)
!5651 = !DILocalVariable(name: "size", arg: 2, scope: !5648, file: !5216, line: 52, type: !1009)
!5652 = !DILocation(line: 52, column: 72, scope: !5648)
!5653 = !DILocation(line: 52, column: 82, scope: !5648)
!5654 = !DILocation(line: 54, column: 20, scope: !5648)
!5655 = !DILocation(line: 54, column: 23, scope: !5648)
!5656 = !DILocation(line: 54, column: 2, scope: !5648)
!5657 = !DILocation(line: 55, column: 2, scope: !5648)
!5658 = !DILocation(line: 56, column: 1, scope: !5648)
!5659 = distinct !DISubprogram(name: "raw_atomic_set_release", scope: !5233, file: !5233, line: 505, type: !5493, scopeLine: 506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5660)
!5660 = !{!5661, !5662}
!5661 = !DILocalVariable(name: "v", arg: 1, scope: !5659, file: !5233, line: 505, type: !5197)
!5662 = !DILocalVariable(name: "i", arg: 2, scope: !5659, file: !5233, line: 505, type: !38)
!5663 = !DILocation(line: 505, column: 34, scope: !5659)
!5664 = !DILocation(line: 505, column: 41, scope: !5659)
!5665 = !DILocation(line: 511, column: 3, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5667, file: !5233, line: 510, column: 31)
!5667 = distinct !DILexicalBlock(scope: !5659, file: !5233, line: 510, column: 6)
!5668 = !DILocation(line: 511, column: 3, scope: !5669)
!5669 = distinct !DILexicalBlock(scope: !5666, file: !5233, line: 511, column: 3)
!5670 = !DILocation(line: 511, column: 3, scope: !5671)
!5671 = distinct !DILexicalBlock(scope: !5669, file: !5233, line: 511, column: 3)
!5672 = !DILocation(line: 511, column: 3, scope: !5673)
!5673 = distinct !DILexicalBlock(scope: !5669, file: !5233, line: 511, column: 3)
!5674 = !DILocation(line: 511, column: 3, scope: !5675)
!5675 = distinct !DILexicalBlock(scope: !5673, file: !5233, line: 511, column: 3)
!5676 = !{i64 2148163299}
!5677 = !DILocation(line: 511, column: 3, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5673, file: !5233, line: 511, column: 3)
!5679 = !DILocation(line: 511, column: 3, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !5678, file: !5233, line: 511, column: 3)
!5681 = !DILocation(line: 511, column: 3, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5678, file: !5233, line: 511, column: 3)
!5683 = !DILocation(line: 517, column: 1, scope: !5659)
!5684 = distinct !DISubprogram(name: "__refcount_inc", scope: !29, file: !29, line: 248, type: !5685, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5687)
!5685 = !DISubroutineType(types: !5686)
!5686 = !{null, !4531, !2070}
!5687 = !{!5688, !5689}
!5688 = !DILocalVariable(name: "r", arg: 1, scope: !5684, file: !29, line: 248, type: !4531)
!5689 = !DILocalVariable(name: "oldp", arg: 2, scope: !5684, file: !29, line: 248, type: !2070)
!5690 = !DILocation(line: 248, column: 47, scope: !5684)
!5691 = !DILocation(line: 248, column: 55, scope: !5684)
!5692 = !DILocation(line: 250, column: 20, scope: !5684)
!5693 = !DILocation(line: 250, column: 23, scope: !5684)
!5694 = !DILocation(line: 250, column: 2, scope: !5684)
!5695 = !DILocation(line: 251, column: 1, scope: !5684)
!5696 = distinct !DISubprogram(name: "__refcount_add", scope: !29, file: !29, line: 191, type: !5697, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5699)
!5697 = !DISubroutineType(types: !5698)
!5698 = !{null, !38, !4531, !2070}
!5699 = !{!5700, !5701, !5702, !5703}
!5700 = !DILocalVariable(name: "i", arg: 1, scope: !5696, file: !29, line: 191, type: !38)
!5701 = !DILocalVariable(name: "r", arg: 2, scope: !5696, file: !29, line: 191, type: !4531)
!5702 = !DILocalVariable(name: "oldp", arg: 3, scope: !5696, file: !29, line: 191, type: !2070)
!5703 = !DILocalVariable(name: "old", scope: !5696, file: !29, line: 193, type: !38)
!5704 = !DILocation(line: 191, column: 39, scope: !5696)
!5705 = !DILocation(line: 191, column: 54, scope: !5696)
!5706 = !DILocation(line: 191, column: 62, scope: !5696)
!5707 = !DILocation(line: 193, column: 2, scope: !5696)
!5708 = !DILocation(line: 193, column: 6, scope: !5696)
!5709 = !DILocation(line: 193, column: 37, scope: !5696)
!5710 = !DILocation(line: 193, column: 41, scope: !5696)
!5711 = !DILocation(line: 193, column: 44, scope: !5696)
!5712 = !DILocation(line: 193, column: 12, scope: !5696)
!5713 = !DILocation(line: 195, column: 6, scope: !5714)
!5714 = distinct !DILexicalBlock(scope: !5696, file: !29, line: 195, column: 6)
!5715 = !DILocation(line: 195, column: 6, scope: !5696)
!5716 = !DILocation(line: 196, column: 11, scope: !5714)
!5717 = !DILocation(line: 196, column: 4, scope: !5714)
!5718 = !DILocation(line: 196, column: 9, scope: !5714)
!5719 = !DILocation(line: 196, column: 3, scope: !5714)
!5720 = !DILocation(line: 198, column: 6, scope: !5721)
!5721 = distinct !DILexicalBlock(scope: !5696, file: !29, line: 198, column: 6)
!5722 = !DILocation(line: 198, column: 6, scope: !5696)
!5723 = !DILocation(line: 199, column: 26, scope: !5721)
!5724 = !DILocation(line: 199, column: 3, scope: !5721)
!5725 = !DILocation(line: 200, column: 11, scope: !5726)
!5726 = distinct !DILexicalBlock(scope: !5721, file: !29, line: 200, column: 11)
!5727 = !DILocation(line: 200, column: 11, scope: !5721)
!5728 = !DILocation(line: 201, column: 26, scope: !5726)
!5729 = !DILocation(line: 201, column: 3, scope: !5726)
!5730 = !DILocation(line: 202, column: 1, scope: !5696)
!5731 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !5194, file: !5194, line: 250, type: !5195, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5732)
!5732 = !{!5733, !5734}
!5733 = !DILocalVariable(name: "i", arg: 1, scope: !5731, file: !5194, line: 250, type: !38)
!5734 = !DILocalVariable(name: "v", arg: 2, scope: !5731, file: !5194, line: 250, type: !5197)
!5735 = !DILocation(line: 250, column: 30, scope: !5731)
!5736 = !DILocation(line: 250, column: 43, scope: !5731)
!5737 = !DILocation(line: 252, column: 31, scope: !5731)
!5738 = !DILocation(line: 252, column: 2, scope: !5731)
!5739 = !DILocation(line: 253, column: 38, scope: !5731)
!5740 = !DILocation(line: 253, column: 41, scope: !5731)
!5741 = !DILocation(line: 253, column: 9, scope: !5731)
!5742 = !DILocation(line: 253, column: 2, scope: !5731)
!5743 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !5233, file: !5233, line: 731, type: !5195, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5744)
!5744 = !{!5745, !5746}
!5745 = !DILocalVariable(name: "i", arg: 1, scope: !5743, file: !5233, line: 731, type: !38)
!5746 = !DILocalVariable(name: "v", arg: 2, scope: !5743, file: !5233, line: 731, type: !5197)
!5747 = !DILocation(line: 731, column: 34, scope: !5743)
!5748 = !DILocation(line: 731, column: 47, scope: !5743)
!5749 = !DILocation(line: 736, column: 31, scope: !5743)
!5750 = !DILocation(line: 736, column: 34, scope: !5743)
!5751 = !DILocation(line: 736, column: 9, scope: !5743)
!5752 = !DILocation(line: 736, column: 2, scope: !5743)
!5753 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !29, file: !29, line: 331, type: !5754, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5756)
!5754 = !DISubroutineType(types: !5755)
!5755 = !{!698, !4531}
!5756 = !{!5757}
!5757 = !DILocalVariable(name: "r", arg: 1, scope: !5753, file: !29, line: 331, type: !4531)
!5758 = !DILocation(line: 331, column: 67, scope: !5753)
!5759 = !DILocation(line: 333, column: 33, scope: !5753)
!5760 = !DILocation(line: 333, column: 9, scope: !5753)
!5761 = !DILocation(line: 333, column: 2, scope: !5753)
!5762 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !29, file: !29, line: 313, type: !5763, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5765)
!5763 = !DISubroutineType(types: !5764)
!5764 = !{!698, !4531, !2070}
!5765 = !{!5766, !5767}
!5766 = !DILocalVariable(name: "r", arg: 1, scope: !5762, file: !29, line: 313, type: !4531)
!5767 = !DILocalVariable(name: "oldp", arg: 2, scope: !5762, file: !29, line: 313, type: !2070)
!5768 = !DILocation(line: 313, column: 69, scope: !5762)
!5769 = !DILocation(line: 313, column: 77, scope: !5762)
!5770 = !DILocation(line: 315, column: 36, scope: !5762)
!5771 = !DILocation(line: 315, column: 39, scope: !5762)
!5772 = !DILocation(line: 315, column: 9, scope: !5762)
!5773 = !DILocation(line: 315, column: 2, scope: !5762)
!5774 = distinct !DISubprogram(name: "atomic_read", scope: !5194, file: !5194, line: 30, type: !5775, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5779)
!5775 = !DISubroutineType(types: !5776)
!5776 = !{!38, !5777}
!5777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5778, size: 64)
!5778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!5779 = !{!5780}
!5780 = !DILocalVariable(name: "v", arg: 1, scope: !5774, file: !5194, line: 30, type: !5777)
!5781 = !DILocation(line: 30, column: 29, scope: !5774)
!5782 = !DILocation(line: 32, column: 25, scope: !5774)
!5783 = !DILocation(line: 32, column: 2, scope: !5774)
!5784 = !DILocation(line: 33, column: 25, scope: !5774)
!5785 = !DILocation(line: 33, column: 9, scope: !5774)
!5786 = !DILocation(line: 33, column: 2, scope: !5774)
!5787 = distinct !DISubprogram(name: "atomic_try_cmpxchg_acquire", scope: !5194, file: !5194, line: 1292, type: !5788, scopeLine: 1293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5790)
!5788 = !DISubroutineType(types: !5789)
!5789 = !{!698, !5197, !2070, !38}
!5790 = !{!5791, !5792, !5793}
!5791 = !DILocalVariable(name: "v", arg: 1, scope: !5787, file: !5194, line: 1292, type: !5197)
!5792 = !DILocalVariable(name: "old", arg: 2, scope: !5787, file: !5194, line: 1292, type: !2070)
!5793 = !DILocalVariable(name: "new", arg: 3, scope: !5787, file: !5194, line: 1292, type: !38)
!5794 = !DILocation(line: 1292, column: 38, scope: !5787)
!5795 = !DILocation(line: 1292, column: 46, scope: !5787)
!5796 = !DILocation(line: 1292, column: 55, scope: !5787)
!5797 = !DILocation(line: 1294, column: 31, scope: !5787)
!5798 = !DILocation(line: 1294, column: 2, scope: !5787)
!5799 = !DILocation(line: 1295, column: 31, scope: !5787)
!5800 = !DILocation(line: 1295, column: 2, scope: !5787)
!5801 = !DILocation(line: 1296, column: 40, scope: !5787)
!5802 = !DILocation(line: 1296, column: 43, scope: !5787)
!5803 = !DILocation(line: 1296, column: 48, scope: !5787)
!5804 = !DILocation(line: 1296, column: 9, scope: !5787)
!5805 = !DILocation(line: 1296, column: 2, scope: !5787)
!5806 = distinct !DISubprogram(name: "atomic_fetch_add", scope: !5194, file: !5194, line: 194, type: !5195, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5807)
!5807 = !{!5808, !5809}
!5808 = !DILocalVariable(name: "i", arg: 1, scope: !5806, file: !5194, line: 194, type: !38)
!5809 = !DILocalVariable(name: "v", arg: 2, scope: !5806, file: !5194, line: 194, type: !5197)
!5810 = !DILocation(line: 194, column: 22, scope: !5806)
!5811 = !DILocation(line: 194, column: 35, scope: !5806)
!5812 = !DILocation(line: 196, column: 2, scope: !5806)
!5813 = !DILocation(line: 196, column: 2, scope: !5814)
!5814 = distinct !DILexicalBlock(scope: !5806, file: !5194, line: 196, column: 2)
!5815 = !DILocation(line: 197, column: 31, scope: !5806)
!5816 = !DILocation(line: 197, column: 2, scope: !5806)
!5817 = !DILocation(line: 198, column: 30, scope: !5806)
!5818 = !DILocation(line: 198, column: 33, scope: !5806)
!5819 = !DILocation(line: 198, column: 9, scope: !5806)
!5820 = !DILocation(line: 198, column: 2, scope: !5806)
!5821 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5216, file: !5216, line: 66, type: !5217, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5822)
!5822 = !{!5823, !5824}
!5823 = !DILocalVariable(name: "v", arg: 1, scope: !5821, file: !5216, line: 66, type: !5219)
!5824 = !DILocalVariable(name: "size", arg: 2, scope: !5821, file: !5216, line: 66, type: !1009)
!5825 = !DILocation(line: 66, column: 73, scope: !5821)
!5826 = !DILocation(line: 66, column: 83, scope: !5821)
!5827 = !DILocation(line: 68, column: 19, scope: !5821)
!5828 = !DILocation(line: 68, column: 22, scope: !5821)
!5829 = !DILocation(line: 68, column: 2, scope: !5821)
!5830 = !DILocation(line: 69, column: 2, scope: !5821)
!5831 = !DILocation(line: 70, column: 1, scope: !5821)
!5832 = distinct !DISubprogram(name: "raw_atomic_read", scope: !5233, file: !5233, line: 442, type: !5775, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5833)
!5833 = !{!5834}
!5834 = !DILocalVariable(name: "v", arg: 1, scope: !5832, file: !5233, line: 442, type: !5777)
!5835 = !DILocation(line: 442, column: 33, scope: !5832)
!5836 = !DILocation(line: 444, column: 26, scope: !5832)
!5837 = !DILocation(line: 444, column: 9, scope: !5832)
!5838 = !DILocation(line: 444, column: 2, scope: !5832)
!5839 = distinct !DISubprogram(name: "kasan_check_read", scope: !5244, file: !5244, line: 40, type: !5245, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5840)
!5840 = !{!5841, !5842}
!5841 = !DILocalVariable(name: "p", arg: 1, scope: !5839, file: !5244, line: 40, type: !5219)
!5842 = !DILocalVariable(name: "size", arg: 2, scope: !5839, file: !5244, line: 40, type: !22)
!5843 = !DILocation(line: 40, column: 58, scope: !5839)
!5844 = !DILocation(line: 40, column: 74, scope: !5839)
!5845 = !DILocation(line: 42, column: 2, scope: !5839)
!5846 = distinct !DISubprogram(name: "arch_atomic_read", scope: !5266, file: !5266, line: 17, type: !5775, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5847)
!5847 = !{!5848}
!5848 = !DILocalVariable(name: "v", arg: 1, scope: !5846, file: !5266, line: 17, type: !5777)
!5849 = !DILocation(line: 17, column: 61, scope: !5846)
!5850 = !DILocation(line: 23, column: 9, scope: !5846)
!5851 = !DILocation(line: 23, column: 2, scope: !5846)
!5852 = distinct !DISubprogram(name: "raw_atomic_try_cmpxchg_acquire", scope: !5233, file: !5233, line: 2142, type: !5788, scopeLine: 2143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5853)
!5853 = !{!5854, !5855, !5856}
!5854 = !DILocalVariable(name: "v", arg: 1, scope: !5852, file: !5233, line: 2142, type: !5197)
!5855 = !DILocalVariable(name: "old", arg: 2, scope: !5852, file: !5233, line: 2142, type: !2070)
!5856 = !DILocalVariable(name: "new", arg: 3, scope: !5852, file: !5233, line: 2142, type: !38)
!5857 = !DILocation(line: 2142, column: 42, scope: !5852)
!5858 = !DILocation(line: 2142, column: 50, scope: !5852)
!5859 = !DILocation(line: 2142, column: 59, scope: !5852)
!5860 = !DILocation(line: 2151, column: 33, scope: !5852)
!5861 = !DILocation(line: 2151, column: 36, scope: !5852)
!5862 = !DILocation(line: 2151, column: 41, scope: !5852)
!5863 = !DILocation(line: 2151, column: 9, scope: !5852)
!5864 = !DILocation(line: 2151, column: 2, scope: !5852)
!5865 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !5266, file: !5266, line: 113, type: !5788, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5866)
!5866 = !{!5867, !5868, !5869, !5870, !5872, !5873, !5874, !5875}
!5867 = !DILocalVariable(name: "v", arg: 1, scope: !5865, file: !5266, line: 113, type: !5197)
!5868 = !DILocalVariable(name: "old", arg: 2, scope: !5865, file: !5266, line: 113, type: !2070)
!5869 = !DILocalVariable(name: "new", arg: 3, scope: !5865, file: !5266, line: 113, type: !38)
!5870 = !DILocalVariable(name: "success", scope: !5871, file: !5266, line: 115, type: !698)
!5871 = distinct !DILexicalBlock(scope: !5865, file: !5266, line: 115, column: 9)
!5872 = !DILocalVariable(name: "_old", scope: !5871, file: !5266, line: 115, type: !2070)
!5873 = !DILocalVariable(name: "__old", scope: !5871, file: !5266, line: 115, type: !38)
!5874 = !DILocalVariable(name: "__new", scope: !5871, file: !5266, line: 115, type: !38)
!5875 = !DILocalVariable(name: "__ptr", scope: !5871, file: !5266, line: 115, type: !4160)
!5876 = !DILocation(line: 113, column: 63, scope: !5865)
!5877 = !DILocation(line: 113, column: 71, scope: !5865)
!5878 = !DILocation(line: 113, column: 80, scope: !5865)
!5879 = !DILocation(line: 115, column: 9, scope: !5871)
!5880 = !{i64 2147993444, i64 2147993483, i64 2147993504, i64 2147993541, i64 2147993564, i64 2147993573, i64 2147993871}
!5881 = !DILocation(line: 115, column: 9, scope: !5882)
!5882 = distinct !DILexicalBlock(scope: !5871, file: !5266, line: 115, column: 9)
!5883 = !DILocation(line: 115, column: 9, scope: !5865)
!5884 = !DILocation(line: 115, column: 2, scope: !5865)
!5885 = distinct !DISubprogram(name: "raw_atomic_fetch_add", scope: !5233, file: !5233, line: 651, type: !5195, scopeLine: 652, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5886)
!5886 = !{!5887, !5888}
!5887 = !DILocalVariable(name: "i", arg: 1, scope: !5885, file: !5233, line: 651, type: !38)
!5888 = !DILocalVariable(name: "v", arg: 2, scope: !5885, file: !5233, line: 651, type: !5197)
!5889 = !DILocation(line: 651, column: 26, scope: !5885)
!5890 = !DILocation(line: 651, column: 39, scope: !5885)
!5891 = !DILocation(line: 654, column: 31, scope: !5885)
!5892 = !DILocation(line: 654, column: 34, scope: !5885)
!5893 = !DILocation(line: 654, column: 9, scope: !5885)
!5894 = !DILocation(line: 654, column: 2, scope: !5885)
!5895 = distinct !DISubprogram(name: "__llist_add_batch", scope: !48, file: !48, line: 203, type: !5896, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4082, retainedNodes: !5898)
!5896 = !DISubroutineType(types: !5897)
!5897 = !{!698, !51, !51, !4278}
!5898 = !{!5899, !5900, !5901}
!5899 = !DILocalVariable(name: "new_first", arg: 1, scope: !5895, file: !48, line: 203, type: !51)
!5900 = !DILocalVariable(name: "new_last", arg: 2, scope: !5895, file: !48, line: 204, type: !51)
!5901 = !DILocalVariable(name: "head", arg: 3, scope: !5895, file: !48, line: 205, type: !4278)
!5902 = !DILocation(line: 203, column: 57, scope: !5895)
!5903 = !DILocation(line: 204, column: 29, scope: !5895)
!5904 = !DILocation(line: 205, column: 29, scope: !5895)
!5905 = !DILocation(line: 207, column: 19, scope: !5895)
!5906 = !DILocation(line: 207, column: 25, scope: !5895)
!5907 = !DILocation(line: 207, column: 2, scope: !5895)
!5908 = !DILocation(line: 207, column: 12, scope: !5895)
!5909 = !DILocation(line: 207, column: 17, scope: !5895)
!5910 = !DILocation(line: 208, column: 16, scope: !5895)
!5911 = !DILocation(line: 208, column: 2, scope: !5895)
!5912 = !DILocation(line: 208, column: 8, scope: !5895)
!5913 = !DILocation(line: 208, column: 14, scope: !5895)
!5914 = !DILocation(line: 209, column: 9, scope: !5895)
!5915 = !DILocation(line: 209, column: 19, scope: !5895)
!5916 = !DILocation(line: 209, column: 24, scope: !5895)
!5917 = !DILocation(line: 209, column: 2, scope: !5895)
