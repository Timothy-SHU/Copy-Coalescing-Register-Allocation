; ModuleID = 'kernel/umh.c'
source_filename = "kernel/umh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_usermodehelper_read_trylock: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad usermodehelper_read_trylock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_usermodehelper_read_lock_wait: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad usermodehelper_read_lock_wait ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_usermodehelper_read_unlock: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad usermodehelper_read_unlock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_call_usermodehelper_setup: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad call_usermodehelper_setup ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_call_usermodehelper_exec: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad call_usermodehelper_exec ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_call_usermodehelper: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad call_usermodehelper ; .previous"
module asm ".section\09\22.initcallearly.init..kmod_umh__401_571_init_umh_sysctls\22, \22a\22\09\09"
module asm "__initcall__kmod_umh__401_571_init_umh_sysctlsearly:\09\09\09"
module asm ".long\09__initstub__kmod_umh__401_571_init_umh_sysctlsearly - .\09"
module asm ".previous\09\09\09\09\09"

%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.lock_class_key = type {}
%struct.pcpu_hot = type { %union.anon.19 }
%union.anon.19 = type { %struct.anon.20, [16 x i8] }
%struct.anon.20 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.21 }
%union.anon.21 = type { i64 }
%struct.static_call_key = type { ptr, %union.anon.22 }
%union.anon.22 = type { i64 }
%struct.kernel_cap_t = type { i64 }
%struct.ctl_table = type { ptr, ptr, i32, i16, i32, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.8, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.8 = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.10 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.seqcount = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.15, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.18 }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { i64, i64 }
%union.anon.18 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.subprocess_info = type { %struct.work_struct, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i64, ptr, %struct.sigset_t }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.path = type { ptr, ptr }
%struct.cred = type { %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.23 }
%struct.kgid_t = type { i32 }
%union.anon.23 = type { %struct.callback_head }

@umhelper_sem = internal global %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @umhelper_sem, i64 24), ptr getelementptr (i8, ptr @umhelper_sem, i64 24) } }, align 8, !dbg !0
@usermodehelper_disabled_waitq = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @usermodehelper_disabled_waitq, i64 8), ptr getelementptr (i8, ptr @usermodehelper_disabled_waitq, i64 8) } }, align 8, !dbg !6170
@usermodehelper_disabled = internal global i32 2, align 4, !dbg !6172
@__UNIQUE_ID___addressable_usermodehelper_read_trylock395 = internal global ptr @usermodehelper_read_trylock, section ".discard.addressable", align 8, !dbg !6141
@__UNIQUE_ID___addressable_usermodehelper_read_lock_wait396 = internal global ptr @usermodehelper_read_lock_wait, section ".discard.addressable", align 8, !dbg !6143
@__UNIQUE_ID___addressable_usermodehelper_read_unlock397 = internal global ptr @usermodehelper_read_unlock, section ".discard.addressable", align 8, !dbg !6145
@running_helpers = internal global %struct.atomic_t zeroinitializer, align 4, !dbg !6178
@running_helpers_waitq = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @running_helpers_waitq, i64 8), ptr getelementptr (i8, ptr @running_helpers_waitq, i64 8) } }, align 8, !dbg !6180
@call_usermodehelper_setup.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !6147
@__UNIQUE_ID___addressable_call_usermodehelper_setup398 = internal global ptr @call_usermodehelper_setup, section ".discard.addressable", align 8, !dbg !6162
@system_unbound_wq = external dso_local global ptr, align 8
@__UNIQUE_ID___addressable_call_usermodehelper_exec399 = internal global ptr @call_usermodehelper_exec, section ".discard.addressable", align 8, !dbg !6164
@__UNIQUE_ID___addressable_call_usermodehelper400 = internal global ptr @call_usermodehelper, section ".discard.addressable", align 8, !dbg !6166
@__UNIQUE_ID___addressable___initstub__kmod_umh__401_571_init_umh_sysctlsearly402 = internal global ptr @__initstub__kmod_umh__401_571_init_umh_sysctlsearly, section ".discard.addressable", align 8, !dbg !6168
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@freezer_active = external dso_local global %struct.static_key_false, align 8
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched29 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !6174
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !6182
@umh_sysctl_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !6187
@usermodehelper_bset = internal global %struct.kernel_cap_t { i64 2199023255551 }, align 8, !dbg !6189
@usermodehelper_inheritable = internal global %struct.kernel_cap_t { i64 2199023255551 }, align 8, !dbg !6191
@.str.1 = private unnamed_addr constant [22 x i8] c"kernel/usermodehelper\00", align 1, !dbg !6193
@usermodehelper_table = internal global [3 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.3, ptr @usermodehelper_bset, i32 16, i16 384, i32 0, ptr @proc_cap_handler, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.4, ptr @usermodehelper_inheritable, i32 16, i16 384, i32 0, ptr @proc_cap_handler, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 16, !dbg !6206
@.str.2 = private unnamed_addr constant [21 x i8] c"usermodehelper_table\00", align 1, !dbg !6198
@.str.3 = private unnamed_addr constant [5 x i8] c"bset\00", align 1, !dbg !6200
@.str.4 = private unnamed_addr constant [12 x i8] c"inheritable\00", align 1, !dbg !6203
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID___addressable_usermodehelper_read_trylock395, ptr @__UNIQUE_ID___addressable_usermodehelper_read_lock_wait396, ptr @__UNIQUE_ID___addressable_usermodehelper_read_unlock397, ptr @__UNIQUE_ID___addressable_call_usermodehelper_setup398, ptr @__UNIQUE_ID___addressable_call_usermodehelper_exec399, ptr @__UNIQUE_ID___addressable_call_usermodehelper400, ptr @__UNIQUE_ID___addressable___initstub__kmod_umh__401_571_init_umh_sysctlsearly402, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched29], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @usermodehelper_read_trylock() #0 align 16 !dbg !6218 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 8
  %ret = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr %wait) #17, !dbg !6222
  call void @llvm.dbg.declare(metadata ptr %wait, metadata !6220, metadata !DIExpression()), !dbg !6222
  %flags = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 0, !dbg !6222
  store i32 0, ptr %flags, align 8, !dbg !6222
  %private = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1, !dbg !6222
  %call = call ptr @get_current() #18, !dbg !6222
  store ptr %call, ptr %private, align 8, !dbg !6222
  %func = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2, !dbg !6222
  store ptr @autoremove_wake_function, ptr %func, align 8, !dbg !6222
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, !dbg !6222
  %next = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 0, !dbg !6222
  %entry2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, !dbg !6222
  store ptr %entry2, ptr %next, align 8, !dbg !6222
  %prev = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 1, !dbg !6222
  %entry3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, !dbg !6222
  store ptr %entry3, ptr %prev, align 8, !dbg !6222
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !6223
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6221, metadata !DIExpression()), !dbg !6224
  store i32 0, ptr %ret, align 4, !dbg !6224
  call void @down_read(ptr noundef @umhelper_sem) #18, !dbg !6225
  br label %for.cond, !dbg !6226

for.cond:                                         ; preds = %if.end8, %entry
  call void @prepare_to_wait(ptr noundef @usermodehelper_disabled_waitq, ptr noundef %wait, i32 noundef 1) #18, !dbg !6227
  %0 = load i32, ptr @usermodehelper_disabled, align 4, !dbg !6231
  %tobool = icmp ne i32 %0, 0, !dbg !6231
  br i1 %tobool, label %if.end, label %if.then, !dbg !6233

if.then:                                          ; preds = %for.cond
  br label %for.end, !dbg !6234

if.end:                                           ; preds = %for.cond
  %1 = load i32, ptr @usermodehelper_disabled, align 4, !dbg !6235
  %cmp = icmp eq i32 %1, 2, !dbg !6237
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !6238

if.then4:                                         ; preds = %if.end
  store i32 -11, ptr %ret, align 4, !dbg !6239
  br label %if.end5, !dbg !6240

if.end5:                                          ; preds = %if.then4, %if.end
  call void @up_read(ptr noundef @umhelper_sem) #18, !dbg !6241
  %2 = load i32, ptr %ret, align 4, !dbg !6242
  %tobool6 = icmp ne i32 %2, 0, !dbg !6242
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !6244

if.then7:                                         ; preds = %if.end5
  br label %for.end, !dbg !6245

if.end8:                                          ; preds = %if.end5
  call void @schedule() #18, !dbg !6246
  %call9 = call zeroext i1 @try_to_freeze() #18, !dbg !6247
  call void @down_read(ptr noundef @umhelper_sem) #18, !dbg !6248
  br label %for.cond, !dbg !6249, !llvm.loop !6250

for.end:                                          ; preds = %if.then7, %if.then
  call void @finish_wait(ptr noundef @usermodehelper_disabled_waitq, ptr noundef %wait) #18, !dbg !6254
  %3 = load i32, ptr %ret, align 4, !dbg !6255
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !6256
  call void @llvm.lifetime.end.p0(i64 40, ptr %wait) #17, !dbg !6256
  ret i32 %3, !dbg !6257
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #3 align 16 !dbg !6258 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #17, !dbg !6269
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6263, metadata !DIExpression()), !dbg !6269
  br label %do.body, !dbg !6269

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !6270
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6265, metadata !DIExpression()), !dbg !6270
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6270
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6270
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !6269
  br label %do.cond, !dbg !6270

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6270

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #17, !dbg !6271
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6267, metadata !DIExpression()), !dbg !6271
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #19, !dbg !6271, !srcloc !6272
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6271
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6271
  %3 = inttoptr i64 %2 to ptr, !dbg !6271
  store ptr %3, ptr %tmp, align 8, !dbg !6271
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #17, !dbg !6269
  %4 = load ptr, ptr %tmp, align 8, !dbg !6271
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6269
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6269
  store ptr %5, ptr %tmp1, align 8, !dbg !6269
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #17, !dbg !6273
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6269
  ret ptr %6, !dbg !6274
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6275 dso_local void @down_read(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6279 dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6283 dso_local void @up_read(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6284 dso_local void @schedule() #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @try_to_freeze() #5 align 16 !dbg !6285 {
entry:
  %retval = alloca i1, align 1
  br label %do.body, !dbg !6287

do.body:                                          ; preds = %entry
  call void @might_resched() #18, !dbg !6288
  br label %do.end, !dbg !6288

do.end:                                           ; preds = %do.body
  %call = call ptr @get_current() #18, !dbg !6290
  %call1 = call zeroext i1 @freezing(ptr noundef %call) #18, !dbg !6290
  %lnot = xor i1 %call1, true, !dbg !6290
  %lnot2 = xor i1 %lnot, true, !dbg !6290
  %lnot3 = xor i1 %lnot2, true, !dbg !6290
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6290
  %conv = sext i32 %lnot.ext to i64, !dbg !6290
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6290
  %tobool = icmp ne i64 %expval, 0, !dbg !6290
  br i1 %tobool, label %if.then, label %if.end, !dbg !6292

if.then:                                          ; preds = %do.end
  store i1 false, ptr %retval, align 1, !dbg !6293
  br label %return, !dbg !6293

if.end:                                           ; preds = %do.end
  %call4 = call ptr @get_current() #18, !dbg !6294
  %flags = getelementptr inbounds %struct.task_struct, ptr %call4, i32 0, i32 4, !dbg !6296
  %0 = load i32, ptr %flags, align 4, !dbg !6296
  %and = and i32 %0, 32768, !dbg !6297
  %tobool5 = icmp ne i32 %and, 0, !dbg !6297
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !6298

if.then6:                                         ; preds = %if.end
  call void @debug_check_no_locks_held() #18, !dbg !6299
  br label %if.end7, !dbg !6299

if.end7:                                          ; preds = %if.then6, %if.end
  %call8 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #18, !dbg !6300
  store i1 %call8, ptr %retval, align 1, !dbg !6301
  br label %return, !dbg !6301

return:                                           ; preds = %if.end7, %if.then
  %1 = load i1, ptr %retval, align 1, !dbg !6302
  ret i1 %1, !dbg !6302
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6303 dso_local void @finish_wait(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @usermodehelper_read_lock_wait(i64 noundef %timeout) #0 align 16 !dbg !6306 {
entry:
  %retval = alloca i64, align 8
  %timeout.addr = alloca i64, align 8
  %wait = alloca %struct.wait_queue_entry, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !6310, metadata !DIExpression()), !dbg !6312
  call void @llvm.lifetime.start.p0(i64 40, ptr %wait) #17, !dbg !6313
  call void @llvm.dbg.declare(metadata ptr %wait, metadata !6311, metadata !DIExpression()), !dbg !6313
  %flags = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 0, !dbg !6313
  store i32 0, ptr %flags, align 8, !dbg !6313
  %private = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1, !dbg !6313
  %call = call ptr @get_current() #18, !dbg !6313
  store ptr %call, ptr %private, align 8, !dbg !6313
  %func = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2, !dbg !6313
  store ptr @autoremove_wake_function, ptr %func, align 8, !dbg !6313
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, !dbg !6313
  %next = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 0, !dbg !6313
  %entry2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, !dbg !6313
  store ptr %entry2, ptr %next, align 8, !dbg !6313
  %prev = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 1, !dbg !6313
  %entry3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, !dbg !6313
  store ptr %entry3, ptr %prev, align 8, !dbg !6313
  %0 = load i64, ptr %timeout.addr, align 8, !dbg !6314
  %cmp = icmp slt i64 %0, 0, !dbg !6316
  br i1 %cmp, label %if.then, label %if.end, !dbg !6317

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !6318
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6318

if.end:                                           ; preds = %entry
  call void @down_read(ptr noundef @umhelper_sem) #18, !dbg !6319
  br label %for.cond, !dbg !6320

for.cond:                                         ; preds = %if.end9, %if.end
  call void @prepare_to_wait(ptr noundef @usermodehelper_disabled_waitq, ptr noundef %wait, i32 noundef 2) #18, !dbg !6321
  %1 = load i32, ptr @usermodehelper_disabled, align 4, !dbg !6325
  %tobool = icmp ne i32 %1, 0, !dbg !6325
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !6327

if.then4:                                         ; preds = %for.cond
  br label %for.end, !dbg !6328

if.end5:                                          ; preds = %for.cond
  call void @up_read(ptr noundef @umhelper_sem) #18, !dbg !6329
  %2 = load i64, ptr %timeout.addr, align 8, !dbg !6330
  %call6 = call i64 @schedule_timeout(i64 noundef %2) #18, !dbg !6331
  store i64 %call6, ptr %timeout.addr, align 8, !dbg !6332
  %3 = load i64, ptr %timeout.addr, align 8, !dbg !6333
  %tobool7 = icmp ne i64 %3, 0, !dbg !6333
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !6335

if.then8:                                         ; preds = %if.end5
  br label %for.end, !dbg !6336

if.end9:                                          ; preds = %if.end5
  call void @down_read(ptr noundef @umhelper_sem) #18, !dbg !6337
  br label %for.cond, !dbg !6338, !llvm.loop !6339

for.end:                                          ; preds = %if.then8, %if.then4
  call void @finish_wait(ptr noundef @usermodehelper_disabled_waitq, ptr noundef %wait) #18, !dbg !6342
  %4 = load i64, ptr %timeout.addr, align 8, !dbg !6343
  store i64 %4, ptr %retval, align 8, !dbg !6344
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6344

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 40, ptr %wait) #17, !dbg !6345
  %5 = load i64, ptr %retval, align 8, !dbg !6345
  ret i64 %5, !dbg !6345
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6346 dso_local i64 @schedule_timeout(i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @usermodehelper_read_unlock() #0 align 16 !dbg !6347 {
entry:
  call void @up_read(ptr noundef @umhelper_sem) #18, !dbg !6348
  ret void, !dbg !6349
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__usermodehelper_set_disable_depth(i32 noundef %depth) #0 align 16 !dbg !6350 {
entry:
  %depth.addr = alloca i32, align 4
  store i32 %depth, ptr %depth.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %depth.addr, metadata !6354, metadata !DIExpression()), !dbg !6355
  call void @down_write(ptr noundef @umhelper_sem) #18, !dbg !6356
  %0 = load i32, ptr %depth.addr, align 4, !dbg !6357
  store i32 %0, ptr @usermodehelper_disabled, align 4, !dbg !6358
  %call = call i32 @__wake_up(ptr noundef @usermodehelper_disabled_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #18, !dbg !6359
  call void @up_write(ptr noundef @umhelper_sem) #18, !dbg !6360
  ret void, !dbg !6361
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6362 dso_local void @down_write(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6363 dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6366 dso_local void @up_write(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__usermodehelper_disable(i32 noundef %depth) #0 align 16 !dbg !6367 {
entry:
  %retval = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %retval1 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret = alloca i64, align 8
  %__cond = alloca i8, align 1
  %tmp = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret10 = alloca i64, align 8
  %__int = alloca i64, align 8
  %__cond12 = alloca i8, align 1
  %tmp21 = alloca i32, align 4
  %tmp32 = alloca i64, align 8
  %tmp34 = alloca i64, align 8
  store i32 %depth, ptr %depth.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %depth.addr, metadata !6371, metadata !DIExpression()), !dbg !6389
  call void @llvm.lifetime.start.p0(i64 8, ptr %retval1) #17, !dbg !6390
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !6372, metadata !DIExpression()), !dbg !6391
  %0 = load i32, ptr %depth.addr, align 4, !dbg !6392
  %tobool = icmp ne i32 %0, 0, !dbg !6392
  br i1 %tobool, label %if.end, label %if.then, !dbg !6394

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6395
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup38, !dbg !6395

if.end:                                           ; preds = %entry
  call void @down_write(ptr noundef @umhelper_sem) #18, !dbg !6396
  %1 = load i32, ptr %depth.addr, align 4, !dbg !6397
  store i32 %1, ptr @usermodehelper_disabled, align 4, !dbg !6398
  call void @up_write(ptr noundef @umhelper_sem) #18, !dbg !6399
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #17, !dbg !6400
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6373, metadata !DIExpression()), !dbg !6400
  store i64 5000, ptr %__ret, align 8, !dbg !6400
  br label %do.body, !dbg !6400

do.body:                                          ; preds = %if.end
  call void @might_resched() #18, !dbg !6401
  br label %do.cond, !dbg !6401

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6401

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %__cond) #17, !dbg !6403
  call void @llvm.dbg.declare(metadata ptr %__cond, metadata !6375, metadata !DIExpression()), !dbg !6403
  %call = call i32 @atomic_read(ptr noundef @running_helpers) #18, !dbg !6403
  %cmp = icmp eq i32 %call, 0, !dbg !6403
  %frombool = zext i1 %cmp to i8, !dbg !6403
  store i8 %frombool, ptr %__cond, align 1, !dbg !6403
  %2 = load i8, ptr %__cond, align 1, !dbg !6404, !range !6406, !noundef !668
  %tobool2 = trunc i8 %2 to i1, !dbg !6404
  br i1 %tobool2, label %land.lhs.true, label %if.end5, !dbg !6404

land.lhs.true:                                    ; preds = %do.end
  %3 = load i64, ptr %__ret, align 8, !dbg !6404
  %tobool3 = icmp ne i64 %3, 0, !dbg !6404
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !6403

if.then4:                                         ; preds = %land.lhs.true
  store i64 1, ptr %__ret, align 8, !dbg !6404
  br label %if.end5, !dbg !6404

if.end5:                                          ; preds = %if.then4, %land.lhs.true, %do.end
  %4 = load i8, ptr %__cond, align 1, !dbg !6403, !range !6406, !noundef !668
  %tobool6 = trunc i8 %4 to i1, !dbg !6403
  br i1 %tobool6, label %lor.end, label %lor.rhs, !dbg !6403

lor.rhs:                                          ; preds = %if.end5
  %5 = load i64, ptr %__ret, align 8, !dbg !6403
  %tobool7 = icmp ne i64 %5, 0, !dbg !6403
  %lnot = xor i1 %tobool7, true, !dbg !6403
  br label %lor.end, !dbg !6403

lor.end:                                          ; preds = %lor.rhs, %if.end5
  %6 = phi i1 [ true, %if.end5 ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %6 to i32, !dbg !6403
  store i32 %lor.ext, ptr %tmp, align 4, !dbg !6404
  call void @llvm.lifetime.end.p0(i64 1, ptr %__cond) #17, !dbg !6407
  %7 = load i32, ptr %tmp, align 4, !dbg !6403
  %tobool8 = icmp ne i32 %7, 0, !dbg !6407
  br i1 %tobool8, label %if.end33, label %if.then9, !dbg !6400

if.then9:                                         ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry) #17, !dbg !6408
  call void @llvm.dbg.declare(metadata ptr %__wq_entry, metadata !6378, metadata !DIExpression()), !dbg !6408
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret10) #17, !dbg !6408
  call void @llvm.dbg.declare(metadata ptr %__ret10, metadata !6380, metadata !DIExpression()), !dbg !6408
  store i64 5000, ptr %__ret10, align 8, !dbg !6408
  call void @init_wait_entry(ptr noundef %__wq_entry, i32 noundef 0) #18, !dbg !6408
  br label %for.cond, !dbg !6408

for.cond:                                         ; preds = %cleanup.cont, %if.then9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #17, !dbg !6409
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !6381, metadata !DIExpression()), !dbg !6409
  %call11 = call i64 @prepare_to_wait_event(ptr noundef @running_helpers_waitq, ptr noundef %__wq_entry, i32 noundef 2) #18, !dbg !6409
  store i64 %call11, ptr %__int, align 8, !dbg !6409
  call void @llvm.lifetime.start.p0(i64 1, ptr %__cond12) #17, !dbg !6410
  call void @llvm.dbg.declare(metadata ptr %__cond12, metadata !6385, metadata !DIExpression()), !dbg !6410
  %call13 = call i32 @atomic_read(ptr noundef @running_helpers) #18, !dbg !6410
  %cmp14 = icmp eq i32 %call13, 0, !dbg !6410
  %frombool15 = zext i1 %cmp14 to i8, !dbg !6410
  store i8 %frombool15, ptr %__cond12, align 1, !dbg !6410
  %8 = load i8, ptr %__cond12, align 1, !dbg !6411, !range !6406, !noundef !668
  %tobool16 = trunc i8 %8 to i1, !dbg !6411
  br i1 %tobool16, label %land.lhs.true17, label %if.end20, !dbg !6411

land.lhs.true17:                                  ; preds = %for.cond
  %9 = load i64, ptr %__ret10, align 8, !dbg !6411
  %tobool18 = icmp ne i64 %9, 0, !dbg !6411
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !6410

if.then19:                                        ; preds = %land.lhs.true17
  store i64 1, ptr %__ret10, align 8, !dbg !6411
  br label %if.end20, !dbg !6411

if.end20:                                         ; preds = %if.then19, %land.lhs.true17, %for.cond
  %10 = load i8, ptr %__cond12, align 1, !dbg !6410, !range !6406, !noundef !668
  %tobool22 = trunc i8 %10 to i1, !dbg !6410
  br i1 %tobool22, label %lor.end26, label %lor.rhs23, !dbg !6410

lor.rhs23:                                        ; preds = %if.end20
  %11 = load i64, ptr %__ret10, align 8, !dbg !6410
  %tobool24 = icmp ne i64 %11, 0, !dbg !6410
  %lnot25 = xor i1 %tobool24, true, !dbg !6410
  br label %lor.end26, !dbg !6410

lor.end26:                                        ; preds = %lor.rhs23, %if.end20
  %12 = phi i1 [ true, %if.end20 ], [ %lnot25, %lor.rhs23 ]
  %lor.ext27 = zext i1 %12 to i32, !dbg !6410
  store i32 %lor.ext27, ptr %tmp21, align 4, !dbg !6411
  call void @llvm.lifetime.end.p0(i64 1, ptr %__cond12) #17, !dbg !6413
  %13 = load i32, ptr %tmp21, align 4, !dbg !6410
  %tobool28 = icmp ne i32 %13, 0, !dbg !6413
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !6409

if.then29:                                        ; preds = %lor.end26
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6413

if.end30:                                         ; preds = %lor.end26
  %14 = load i64, ptr %__ret10, align 8, !dbg !6409
  %call31 = call i64 @schedule_timeout(i64 noundef %14) #18, !dbg !6409
  store i64 %call31, ptr %__ret10, align 8, !dbg !6409
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6414
  br label %cleanup, !dbg !6414

cleanup:                                          ; preds = %if.end30, %if.then29
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #17, !dbg !6414
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !6414, !llvm.loop !6415

for.end:                                          ; preds = %cleanup
  call void @finish_wait(ptr noundef @running_helpers_waitq, ptr noundef %__wq_entry) #18, !dbg !6408
  br label %__out, !dbg !6408

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !6388), !dbg !6408
  %15 = load i64, ptr %__ret10, align 8, !dbg !6408
  store i64 %15, ptr %tmp32, align 8, !dbg !6408
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret10) #17, !dbg !6407
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry) #17, !dbg !6407
  %16 = load i64, ptr %tmp32, align 8, !dbg !6408
  store i64 %16, ptr %__ret, align 8, !dbg !6407
  br label %if.end33, !dbg !6407

if.end33:                                         ; preds = %__out, %lor.end
  %17 = load i64, ptr %__ret, align 8, !dbg !6400
  store i64 %17, ptr %tmp34, align 8, !dbg !6407
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #17, !dbg !6417
  %18 = load i64, ptr %tmp34, align 8, !dbg !6400
  store i64 %18, ptr %retval1, align 8, !dbg !6418
  %19 = load i64, ptr %retval1, align 8, !dbg !6419
  %tobool35 = icmp ne i64 %19, 0, !dbg !6419
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !6421

if.then36:                                        ; preds = %if.end33
  store i32 0, ptr %retval, align 4, !dbg !6422
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup38, !dbg !6422

if.end37:                                         ; preds = %if.end33
  call void @__usermodehelper_set_disable_depth(i32 noundef 0) #18, !dbg !6423
  store i32 -11, ptr %retval, align 4, !dbg !6424
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup38, !dbg !6424

cleanup38:                                        ; preds = %if.end37, %if.then36, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %retval1) #17, !dbg !6425
  %20 = load i32, ptr %retval, align 4, !dbg !6425
  ret i32 %20, !dbg !6425

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #3 align 16 !dbg !6176 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !6426
  %0 = load ptr, ptr %tmp, align 8, !dbg !6426
  %call = call i32 %0() #18, !dbg !6428
  ret void, !dbg !6429
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #3 align 16 !dbg !6430 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6437, metadata !DIExpression()), !dbg !6438
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6439
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #18, !dbg !6440
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6441
  %call = call i32 @raw_atomic_read(ptr noundef %1) #18, !dbg !6442
  ret i32 %call, !dbg !6443
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6444 dso_local void @init_wait_entry(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6447 dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @call_usermodehelper_setup(ptr noundef %path, ptr noundef %argv, ptr noundef %envp, i32 noundef %gfp_mask, ptr noundef %init, ptr noundef %cleanup, ptr noundef %data) #0 align 16 !dbg !6149 {
entry:
  %path.addr = alloca ptr, align 8
  %argv.addr = alloca ptr, align 8
  %envp.addr = alloca ptr, align 8
  %gfp_mask.addr = alloca i32, align 4
  %init.addr = alloca ptr, align 8
  %cleanup.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %sub_info = alloca ptr, align 8
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !6153, metadata !DIExpression()), !dbg !6450
  store ptr %argv, ptr %argv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !6154, metadata !DIExpression()), !dbg !6451
  store ptr %envp, ptr %envp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %envp.addr, metadata !6155, metadata !DIExpression()), !dbg !6452
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !6156, metadata !DIExpression()), !dbg !6453
  store ptr %init, ptr %init.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %init.addr, metadata !6157, metadata !DIExpression()), !dbg !6454
  store ptr %cleanup, ptr %cleanup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cleanup.addr, metadata !6158, metadata !DIExpression()), !dbg !6455
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6159, metadata !DIExpression()), !dbg !6456
  call void @llvm.lifetime.start.p0(i64 8, ptr %sub_info) #17, !dbg !6457
  call void @llvm.dbg.declare(metadata ptr %sub_info, metadata !6160, metadata !DIExpression()), !dbg !6458
  %0 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6459
  %call = call noalias ptr @kzalloc(i64 noundef 96, i32 noundef %0) #20, !dbg !6460
  store ptr %call, ptr %sub_info, align 8, !dbg !6461
  %1 = load ptr, ptr %sub_info, align 8, !dbg !6462
  %tobool = icmp ne ptr %1, null, !dbg !6462
  br i1 %tobool, label %if.end, label %if.then, !dbg !6464

if.then:                                          ; preds = %entry
  br label %out, !dbg !6465

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !6466

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !6467

do.body1:                                         ; preds = %do.body
  %2 = load ptr, ptr %sub_info, align 8, !dbg !6469
  %work = getelementptr inbounds %struct.subprocess_info, ptr %2, i32 0, i32 0, !dbg !6469
  call void @__init_work(ptr noundef %work, i32 noundef 0) #18, !dbg !6469
  %3 = load ptr, ptr %sub_info, align 8, !dbg !6469
  %work2 = getelementptr inbounds %struct.subprocess_info, ptr %3, i32 0, i32 0, !dbg !6469
  %data3 = getelementptr inbounds %struct.work_struct, ptr %work2, i32 0, i32 0, !dbg !6469
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !6469
  store i64 68719476704, ptr %counter, align 8, !dbg !6469
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %data3, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !6469
  %4 = load ptr, ptr %sub_info, align 8, !dbg !6469
  %work4 = getelementptr inbounds %struct.subprocess_info, ptr %4, i32 0, i32 0, !dbg !6469
  %entry5 = getelementptr inbounds %struct.work_struct, ptr %work4, i32 0, i32 1, !dbg !6469
  call void @INIT_LIST_HEAD(ptr noundef %entry5) #18, !dbg !6469
  %5 = load ptr, ptr %sub_info, align 8, !dbg !6469
  %work6 = getelementptr inbounds %struct.subprocess_info, ptr %5, i32 0, i32 0, !dbg !6469
  %func = getelementptr inbounds %struct.work_struct, ptr %work6, i32 0, i32 2, !dbg !6469
  store ptr @call_usermodehelper_exec_work, ptr %func, align 8, !dbg !6469
  br label %do.cond, !dbg !6469

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6469

do.end:                                           ; preds = %do.cond
  br label %do.cond7, !dbg !6467

do.cond7:                                         ; preds = %do.end
  br label %do.end8, !dbg !6467

do.end8:                                          ; preds = %do.cond7
  %6 = load ptr, ptr %path.addr, align 8, !dbg !6471
  %7 = load ptr, ptr %sub_info, align 8, !dbg !6472
  %path9 = getelementptr inbounds %struct.subprocess_info, ptr %7, i32 0, i32 2, !dbg !6473
  store ptr %6, ptr %path9, align 8, !dbg !6474
  %8 = load ptr, ptr %argv.addr, align 8, !dbg !6475
  %9 = load ptr, ptr %sub_info, align 8, !dbg !6476
  %argv10 = getelementptr inbounds %struct.subprocess_info, ptr %9, i32 0, i32 3, !dbg !6477
  store ptr %8, ptr %argv10, align 8, !dbg !6478
  %10 = load ptr, ptr %envp.addr, align 8, !dbg !6479
  %11 = load ptr, ptr %sub_info, align 8, !dbg !6480
  %envp11 = getelementptr inbounds %struct.subprocess_info, ptr %11, i32 0, i32 4, !dbg !6481
  store ptr %10, ptr %envp11, align 8, !dbg !6482
  %12 = load ptr, ptr %cleanup.addr, align 8, !dbg !6483
  %13 = load ptr, ptr %sub_info, align 8, !dbg !6484
  %cleanup12 = getelementptr inbounds %struct.subprocess_info, ptr %13, i32 0, i32 8, !dbg !6485
  store ptr %12, ptr %cleanup12, align 8, !dbg !6486
  %14 = load ptr, ptr %init.addr, align 8, !dbg !6487
  %15 = load ptr, ptr %sub_info, align 8, !dbg !6488
  %init13 = getelementptr inbounds %struct.subprocess_info, ptr %15, i32 0, i32 7, !dbg !6489
  store ptr %14, ptr %init13, align 8, !dbg !6490
  %16 = load ptr, ptr %data.addr, align 8, !dbg !6491
  %17 = load ptr, ptr %sub_info, align 8, !dbg !6492
  %data14 = getelementptr inbounds %struct.subprocess_info, ptr %17, i32 0, i32 9, !dbg !6493
  store ptr %16, ptr %data14, align 8, !dbg !6494
  br label %out, !dbg !6492

out:                                              ; preds = %do.end8, %if.then
  call void @llvm.dbg.label(metadata !6161), !dbg !6495
  %18 = load ptr, ptr %sub_info, align 8, !dbg !6496
  call void @llvm.lifetime.end.p0(i64 8, ptr %sub_info) #17, !dbg !6497
  ret ptr %18, !dbg !6498
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !6499 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6503, metadata !DIExpression()), !dbg !6505
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6504, metadata !DIExpression()), !dbg !6506
  %0 = load i64, ptr %size.addr, align 8, !dbg !6507
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6508
  %or = or i32 %1, 256, !dbg !6509
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #20, !dbg !6510
  ret ptr %call, !dbg !6511
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__init_work(ptr noundef %work, i32 noundef %onstack) #5 align 16 !dbg !6512 {
entry:
  %work.addr = alloca ptr, align 8
  %onstack.addr = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !6516, metadata !DIExpression()), !dbg !6518
  store i32 %onstack, ptr %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %onstack.addr, metadata !6517, metadata !DIExpression()), !dbg !6519
  ret void, !dbg !6520
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #5 align 16 !dbg !6521 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6526, metadata !DIExpression()), !dbg !6527
  br label %do.body, !dbg !6528

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6529

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6531

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6529

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6533
  %1 = load ptr, ptr %list.addr, align 8, !dbg !6533
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6533
  store volatile ptr %0, ptr %next, align 8, !dbg !6533
  br label %do.end3, !dbg !6533

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6529

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !6535

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6536

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6538

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !6536

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !6540
  %3 = load ptr, ptr %list.addr, align 8, !dbg !6540
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !6540
  store volatile ptr %2, ptr %prev, align 8, !dbg !6540
  br label %do.end9, !dbg !6540

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !6536

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !6542
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @call_usermodehelper_exec_work(ptr noundef %work) #0 align 16 !dbg !6543 {
entry:
  %work.addr = alloca ptr, align 8
  %sub_info = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %pid = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !6545, metadata !DIExpression()), !dbg !6552
  call void @llvm.lifetime.start.p0(i64 8, ptr %sub_info) #17, !dbg !6553
  call void @llvm.dbg.declare(metadata ptr %sub_info, metadata !6546, metadata !DIExpression()), !dbg !6554
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !6555
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6547, metadata !DIExpression()), !dbg !6555
  %0 = load ptr, ptr %work.addr, align 8, !dbg !6555
  store ptr %0, ptr %__mptr, align 8, !dbg !6555
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6555
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6555
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6555
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !6556
  %2 = load ptr, ptr %tmp, align 8, !dbg !6555
  store ptr %2, ptr %sub_info, align 8, !dbg !6554
  %3 = load ptr, ptr %sub_info, align 8, !dbg !6557
  %wait = getelementptr inbounds %struct.subprocess_info, ptr %3, i32 0, i32 5, !dbg !6558
  %4 = load i32, ptr %wait, align 8, !dbg !6558
  %and = and i32 %4, 2, !dbg !6559
  %tobool = icmp ne i32 %and, 0, !dbg !6559
  br i1 %tobool, label %if.then, label %if.else, !dbg !6560

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %sub_info, align 8, !dbg !6561
  call void @call_usermodehelper_exec_sync(ptr noundef %5) #18, !dbg !6563
  br label %if.end2, !dbg !6564

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pid) #17, !dbg !6565
  call void @llvm.dbg.declare(metadata ptr %pid, metadata !6549, metadata !DIExpression()), !dbg !6566
  %6 = load ptr, ptr %sub_info, align 8, !dbg !6567
  %call = call i32 @user_mode_thread(ptr noundef @call_usermodehelper_exec_async, ptr noundef %6, i64 noundef 32785) #18, !dbg !6568
  store i32 %call, ptr %pid, align 4, !dbg !6569
  %7 = load i32, ptr %pid, align 4, !dbg !6570
  %cmp = icmp slt i32 %7, 0, !dbg !6572
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6573

if.then1:                                         ; preds = %if.else
  %8 = load i32, ptr %pid, align 4, !dbg !6574
  %9 = load ptr, ptr %sub_info, align 8, !dbg !6576
  %retval = getelementptr inbounds %struct.subprocess_info, ptr %9, i32 0, i32 6, !dbg !6577
  store i32 %8, ptr %retval, align 4, !dbg !6578
  %10 = load ptr, ptr %sub_info, align 8, !dbg !6579
  call void @umh_complete(ptr noundef %10) #18, !dbg !6580
  br label %if.end, !dbg !6581

if.end:                                           ; preds = %if.then1, %if.else
  call void @llvm.lifetime.end.p0(i64 4, ptr %pid) #17, !dbg !6582
  br label %if.end2

if.end2:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sub_info) #17, !dbg !6583
  ret void, !dbg !6583
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @call_usermodehelper_exec(ptr noundef %sub_info, i32 noundef %wait) #0 align 16 !dbg !6584 {
entry:
  %retval = alloca i32, align 4
  %sub_info.addr = alloca ptr, align 8
  %wait.addr = alloca i32, align 4
  %state = alloca i32, align 4
  %done = alloca %struct.completion, align 8
  %retval7 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ret = alloca ptr, align 8
  %tmp32 = alloca ptr, align 8
  store ptr %sub_info, ptr %sub_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sub_info.addr, metadata !6588, metadata !DIExpression()), !dbg !6604
  store i32 %wait, ptr %wait.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !6589, metadata !DIExpression()), !dbg !6605
  call void @llvm.lifetime.start.p0(i64 4, ptr %state) #17, !dbg !6606
  call void @llvm.dbg.declare(metadata ptr %state, metadata !6590, metadata !DIExpression()), !dbg !6607
  store i32 2, ptr %state, align 4, !dbg !6607
  call void @llvm.lifetime.start.p0(i64 32, ptr %done) #17, !dbg !6608
  call void @llvm.dbg.declare(metadata ptr %done, metadata !6591, metadata !DIExpression()), !dbg !6608
  %done1 = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 0, !dbg !6608
  store i32 0, ptr %done1, align 8, !dbg !6608
  %wait2 = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1, !dbg !6608
  %lock = getelementptr inbounds %struct.swait_queue_head, ptr %wait2, i32 0, i32 0, !dbg !6608
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 0, !dbg !6608
  %0 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !6608
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6608
  store i32 0, ptr %counter, align 8, !dbg !6608
  %task_list = getelementptr inbounds %struct.swait_queue_head, ptr %wait2, i32 0, i32 1, !dbg !6608
  %next = getelementptr inbounds %struct.list_head, ptr %task_list, i32 0, i32 0, !dbg !6608
  %wait3 = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1, !dbg !6608
  %task_list4 = getelementptr inbounds %struct.swait_queue_head, ptr %wait3, i32 0, i32 1, !dbg !6608
  store ptr %task_list4, ptr %next, align 8, !dbg !6608
  %prev = getelementptr inbounds %struct.list_head, ptr %task_list, i32 0, i32 1, !dbg !6608
  %wait5 = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1, !dbg !6608
  %task_list6 = getelementptr inbounds %struct.swait_queue_head, ptr %wait5, i32 0, i32 1, !dbg !6608
  store ptr %task_list6, ptr %prev, align 8, !dbg !6608
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval7) #17, !dbg !6609
  call void @llvm.dbg.declare(metadata ptr %retval7, metadata !6592, metadata !DIExpression()), !dbg !6610
  store i32 0, ptr %retval7, align 4, !dbg !6610
  %1 = load ptr, ptr %sub_info.addr, align 8, !dbg !6611
  %path = getelementptr inbounds %struct.subprocess_info, ptr %1, i32 0, i32 2, !dbg !6613
  %2 = load ptr, ptr %path, align 8, !dbg !6613
  %tobool = icmp ne ptr %2, null, !dbg !6611
  br i1 %tobool, label %if.end, label %if.then, !dbg !6614

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %sub_info.addr, align 8, !dbg !6615
  call void @call_usermodehelper_freeinfo(ptr noundef %3) #18, !dbg !6617
  store i32 -22, ptr %retval, align 4, !dbg !6618
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6618

if.end:                                           ; preds = %entry
  call void @helper_lock() #18, !dbg !6619
  %4 = load i32, ptr @usermodehelper_disabled, align 4, !dbg !6620
  %tobool8 = icmp ne i32 %4, 0, !dbg !6620
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !6622

if.then9:                                         ; preds = %if.end
  store i32 -16, ptr %retval7, align 4, !dbg !6623
  br label %out, !dbg !6625

if.end10:                                         ; preds = %if.end
  %5 = load ptr, ptr %sub_info.addr, align 8, !dbg !6626
  %path11 = getelementptr inbounds %struct.subprocess_info, ptr %5, i32 0, i32 2, !dbg !6628
  %6 = load ptr, ptr %path11, align 8, !dbg !6628
  %call = call i64 @strlen(ptr noundef %6) #18, !dbg !6629
  %cmp = icmp eq i64 %call, 0, !dbg !6630
  br i1 %cmp, label %if.then12, label %if.end13, !dbg !6631

if.then12:                                        ; preds = %if.end10
  br label %out, !dbg !6632

if.end13:                                         ; preds = %if.end10
  %7 = load i32, ptr %wait.addr, align 4, !dbg !6633
  %cmp14 = icmp eq i32 %7, 0, !dbg !6634
  br i1 %cmp14, label %cond.true, label %cond.false, !dbg !6635

cond.true:                                        ; preds = %if.end13
  br label %cond.end, !dbg !6635

cond.false:                                       ; preds = %if.end13
  br label %cond.end, !dbg !6635

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %done, %cond.false ], !dbg !6635
  %8 = load ptr, ptr %sub_info.addr, align 8, !dbg !6636
  %complete = getelementptr inbounds %struct.subprocess_info, ptr %8, i32 0, i32 1, !dbg !6637
  store ptr %cond, ptr %complete, align 8, !dbg !6638
  %9 = load i32, ptr %wait.addr, align 4, !dbg !6639
  %10 = load ptr, ptr %sub_info.addr, align 8, !dbg !6640
  %wait15 = getelementptr inbounds %struct.subprocess_info, ptr %10, i32 0, i32 5, !dbg !6641
  store i32 %9, ptr %wait15, align 8, !dbg !6642
  %11 = load ptr, ptr @system_unbound_wq, align 8, !dbg !6643
  %12 = load ptr, ptr %sub_info.addr, align 8, !dbg !6644
  %work = getelementptr inbounds %struct.subprocess_info, ptr %12, i32 0, i32 0, !dbg !6645
  %call16 = call zeroext i1 @queue_work(ptr noundef %11, ptr noundef %work) #18, !dbg !6646
  %13 = load i32, ptr %wait.addr, align 4, !dbg !6647
  %cmp17 = icmp eq i32 %13, 0, !dbg !6649
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !6650

if.then18:                                        ; preds = %cond.end
  br label %unlock, !dbg !6651

if.end19:                                         ; preds = %cond.end
  %14 = load i32, ptr %wait.addr, align 4, !dbg !6652
  %and = and i32 %14, 8, !dbg !6654
  %tobool20 = icmp ne i32 %and, 0, !dbg !6654
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !6655

if.then21:                                        ; preds = %if.end19
  %15 = load i32, ptr %state, align 4, !dbg !6656
  %or = or i32 %15, 8192, !dbg !6656
  store i32 %or, ptr %state, align 4, !dbg !6656
  br label %if.end22, !dbg !6657

if.end22:                                         ; preds = %if.then21, %if.end19
  %16 = load i32, ptr %wait.addr, align 4, !dbg !6658
  %and23 = and i32 %16, 4, !dbg !6659
  %tobool24 = icmp ne i32 %and23, 0, !dbg !6659
  br i1 %tobool24, label %if.then25, label %if.end36, !dbg !6660

if.then25:                                        ; preds = %if.end22
  %17 = load i32, ptr %state, align 4, !dbg !6661
  %or26 = or i32 %17, 258, !dbg !6662
  %call27 = call i32 @wait_for_completion_state(ptr noundef %done, i32 noundef %or26) #18, !dbg !6663
  store i32 %call27, ptr %retval7, align 4, !dbg !6664
  %18 = load i32, ptr %retval7, align 4, !dbg !6665
  %tobool28 = icmp ne i32 %18, 0, !dbg !6665
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !6667

if.then29:                                        ; preds = %if.then25
  br label %wait_done, !dbg !6668

if.end30:                                         ; preds = %if.then25
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #17, !dbg !6669
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !6593, metadata !DIExpression()), !dbg !6669
  %19 = load ptr, ptr %sub_info.addr, align 8, !dbg !6669
  %complete31 = getelementptr inbounds %struct.subprocess_info, ptr %19, i32 0, i32 1, !dbg !6669
  store ptr %complete31, ptr %__ai_ptr, align 8, !dbg !6669
  br label %do.body, !dbg !6669

do.body:                                          ; preds = %if.end30
  br label %do.cond, !dbg !6670

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6670

do.end:                                           ; preds = %do.cond
  %20 = load ptr, ptr %__ai_ptr, align 8, !dbg !6669
  call void @instrument_atomic_read_write(ptr noundef %20, i64 noundef 8) #18, !dbg !6669
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #17, !dbg !6672
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6599, metadata !DIExpression()), !dbg !6672
  store ptr null, ptr %__ret, align 8, !dbg !6672
  %21 = load ptr, ptr %__ret, align 8, !dbg !6672
  %22 = load ptr, ptr %__ai_ptr, align 8, !dbg !6672
  %23 = call ptr asm sideeffect "xchgq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %22, ptr %21, ptr elementtype(ptr) %22) #17, !dbg !6672, !srcloc !6673
  store ptr %23, ptr %__ret, align 8, !dbg !6672
  %24 = load ptr, ptr %__ret, align 8, !dbg !6672
  store ptr %24, ptr %tmp32, align 8, !dbg !6672
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #17, !dbg !6669
  %25 = load ptr, ptr %tmp32, align 8, !dbg !6672
  store ptr %25, ptr %tmp, align 8, !dbg !6669
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #17, !dbg !6674
  %26 = load ptr, ptr %tmp, align 8, !dbg !6669
  %tobool33 = icmp ne ptr %26, null, !dbg !6674
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !6675

if.then34:                                        ; preds = %do.end
  br label %unlock, !dbg !6676

if.end35:                                         ; preds = %do.end
  br label %if.end36, !dbg !6677

if.end36:                                         ; preds = %if.end35, %if.end22
  %27 = load i32, ptr %state, align 4, !dbg !6678
  %call37 = call i32 @wait_for_completion_state(ptr noundef %done, i32 noundef %27) #18, !dbg !6679
  br label %wait_done, !dbg !6679

wait_done:                                        ; preds = %if.end36, %if.then29
  call void @llvm.dbg.label(metadata !6601), !dbg !6680
  %28 = load ptr, ptr %sub_info.addr, align 8, !dbg !6681
  %retval38 = getelementptr inbounds %struct.subprocess_info, ptr %28, i32 0, i32 6, !dbg !6682
  %29 = load i32, ptr %retval38, align 4, !dbg !6682
  store i32 %29, ptr %retval7, align 4, !dbg !6683
  br label %out, !dbg !6684

out:                                              ; preds = %wait_done, %if.then12, %if.then9
  call void @llvm.dbg.label(metadata !6602), !dbg !6685
  %30 = load ptr, ptr %sub_info.addr, align 8, !dbg !6686
  call void @call_usermodehelper_freeinfo(ptr noundef %30) #18, !dbg !6687
  br label %unlock, !dbg !6687

unlock:                                           ; preds = %out, %if.then34, %if.then18
  call void @llvm.dbg.label(metadata !6603), !dbg !6688
  call void @helper_unlock() #18, !dbg !6689
  %31 = load i32, ptr %retval7, align 4, !dbg !6690
  store i32 %31, ptr %retval, align 4, !dbg !6691
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6691

cleanup:                                          ; preds = %unlock, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval7) #17, !dbg !6692
  call void @llvm.lifetime.end.p0(i64 32, ptr %done) #17, !dbg !6692
  call void @llvm.lifetime.end.p0(i64 4, ptr %state) #17, !dbg !6692
  %32 = load i32, ptr %retval, align 4, !dbg !6692
  ret i32 %32, !dbg !6692
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @call_usermodehelper_freeinfo(ptr noundef %info) #0 align 16 !dbg !6693 {
entry:
  %info.addr = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !6695, metadata !DIExpression()), !dbg !6696
  %0 = load ptr, ptr %info.addr, align 8, !dbg !6697
  %cleanup = getelementptr inbounds %struct.subprocess_info, ptr %0, i32 0, i32 8, !dbg !6699
  %1 = load ptr, ptr %cleanup, align 8, !dbg !6699
  %tobool = icmp ne ptr %1, null, !dbg !6697
  br i1 %tobool, label %if.then, label %if.end, !dbg !6700

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %info.addr, align 8, !dbg !6701
  %cleanup1 = getelementptr inbounds %struct.subprocess_info, ptr %2, i32 0, i32 8, !dbg !6702
  %3 = load ptr, ptr %cleanup1, align 8, !dbg !6702
  %4 = load ptr, ptr %info.addr, align 8, !dbg !6703
  call void %3(ptr noundef %4) #18, !dbg !6704
  br label %if.end, !dbg !6704

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %info.addr, align 8, !dbg !6705
  call void @kfree(ptr noundef %5) #18, !dbg !6706
  ret void, !dbg !6707
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @helper_lock() #0 align 16 !dbg !6708 {
entry:
  call void @atomic_inc(ptr noundef @running_helpers) #18, !dbg !6709
  br label %do.body, !dbg !6710

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6711

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6713

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6711

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !6715

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6711

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !6717
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6718 dso_local i64 @strlen(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_work(ptr noundef %wq, ptr noundef %work) #5 align 16 !dbg !6722 {
entry:
  %wq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !6726, metadata !DIExpression()), !dbg !6728
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !6727, metadata !DIExpression()), !dbg !6729
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !6730
  %1 = load ptr, ptr %work.addr, align 8, !dbg !6731
  %call = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1) #18, !dbg !6732
  ret i1 %call, !dbg !6733
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6734 dso_local i32 @wait_for_completion_state(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !6737 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6745, metadata !DIExpression()), !dbg !6747
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6746, metadata !DIExpression()), !dbg !6748
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6749
  %1 = load i64, ptr %size.addr, align 8, !dbg !6750
  %conv = trunc i64 %1 to i32, !dbg !6750
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !6751
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6752
  %3 = load i64, ptr %size.addr, align 8, !dbg !6752
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #18, !dbg !6752
  ret void, !dbg !6753
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @helper_unlock() #0 align 16 !dbg !6754 {
entry:
  %call = call zeroext i1 @atomic_dec_and_test(ptr noundef @running_helpers) #18, !dbg !6755
  br i1 %call, label %if.then, label %if.end, !dbg !6757

if.then:                                          ; preds = %entry
  %call1 = call i32 @__wake_up(ptr noundef @running_helpers_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #18, !dbg !6758
  br label %if.end, !dbg !6758

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6759
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @call_usermodehelper(ptr noundef %path, ptr noundef %argv, ptr noundef %envp, i32 noundef %wait) #0 align 16 !dbg !6760 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca ptr, align 8
  %argv.addr = alloca ptr, align 8
  %envp.addr = alloca ptr, align 8
  %wait.addr = alloca i32, align 4
  %info = alloca ptr, align 8
  %gfp_mask = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !6764, metadata !DIExpression()), !dbg !6770
  store ptr %argv, ptr %argv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !6765, metadata !DIExpression()), !dbg !6771
  store ptr %envp, ptr %envp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %envp.addr, metadata !6766, metadata !DIExpression()), !dbg !6772
  store i32 %wait, ptr %wait.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !6767, metadata !DIExpression()), !dbg !6773
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #17, !dbg !6774
  call void @llvm.dbg.declare(metadata ptr %info, metadata !6768, metadata !DIExpression()), !dbg !6775
  call void @llvm.lifetime.start.p0(i64 4, ptr %gfp_mask) #17, !dbg !6776
  call void @llvm.dbg.declare(metadata ptr %gfp_mask, metadata !6769, metadata !DIExpression()), !dbg !6777
  %0 = load i32, ptr %wait.addr, align 4, !dbg !6778
  %cmp = icmp eq i32 %0, 0, !dbg !6779
  %1 = zext i1 %cmp to i64, !dbg !6780
  %cond = select i1 %cmp, i32 2080, i32 3264, !dbg !6780
  store i32 %cond, ptr %gfp_mask, align 4, !dbg !6777
  %2 = load ptr, ptr %path.addr, align 8, !dbg !6781
  %3 = load ptr, ptr %argv.addr, align 8, !dbg !6782
  %4 = load ptr, ptr %envp.addr, align 8, !dbg !6783
  %5 = load i32, ptr %gfp_mask, align 4, !dbg !6784
  %call = call ptr @call_usermodehelper_setup(ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef null, ptr noundef null, ptr noundef null) #18, !dbg !6785
  store ptr %call, ptr %info, align 8, !dbg !6786
  %6 = load ptr, ptr %info, align 8, !dbg !6787
  %cmp1 = icmp eq ptr %6, null, !dbg !6789
  br i1 %cmp1, label %if.then, label %if.end, !dbg !6790

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6791
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6791

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %info, align 8, !dbg !6792
  %8 = load i32, ptr %wait.addr, align 4, !dbg !6793
  %call2 = call i32 @call_usermodehelper_exec(ptr noundef %7, i32 noundef %8) #18, !dbg !6794
  store i32 %call2, ptr %retval, align 4, !dbg !6795
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6795

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %gfp_mask) #17, !dbg !6796
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #17, !dbg !6796
  %9 = load i32, ptr %retval, align 4, !dbg !6796
  ret i32 %9, !dbg !6796
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_umh__401_571_init_umh_sysctlsearly() #8 section ".init.text" align 16 !dbg !6797 {
entry:
  %call = call i32 @init_umh_sysctls() #21, !dbg !6798
  ret i32 %call, !dbg !6798
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @init_umh_sysctls() #8 section ".init.text" align 16 !dbg !6799 {
entry:
  call void @__register_sysctl_init(ptr noundef @.str.1, ptr noundef @usermodehelper_table, ptr noundef @.str.2, i64 noundef 3) #18, !dbg !6800
  ret i32 0, !dbg !6801
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @freezing(ptr noundef %p) #5 align 16 !dbg !6802 {
entry:
  %retval = alloca i1, align 1
  %p.addr = alloca ptr, align 8
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6806, metadata !DIExpression()), !dbg !6810
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #17, !dbg !6811
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !6807, metadata !DIExpression()), !dbg !6811
  %call = call zeroext i1 @arch_static_branch(ptr noundef @freezer_active, i1 noundef zeroext false) #18, !dbg !6812
  %frombool = zext i1 %call to i8, !dbg !6812
  store i8 %frombool, ptr %branch, align 1, !dbg !6812
  %0 = load i8, ptr %branch, align 1, !dbg !6811, !range !6406, !noundef !668
  %tobool = trunc i8 %0 to i1, !dbg !6811
  %lnot = xor i1 %tobool, true, !dbg !6811
  %lnot1 = xor i1 %lnot, true, !dbg !6811
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6811
  %conv = sext i32 %lnot.ext to i64, !dbg !6811
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6811
  store i64 %expval, ptr %tmp, align 8, !dbg !6815
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #17, !dbg !6816
  %1 = load i64, ptr %tmp, align 8, !dbg !6811
  %tobool2 = icmp ne i64 %1, 0, !dbg !6816
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6817

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8, !dbg !6818
  %call3 = call zeroext i1 @freezing_slow_path(ptr noundef %2) #18, !dbg !6819
  store i1 %call3, ptr %retval, align 1, !dbg !6820
  br label %return, !dbg !6820

if.end:                                           ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6821
  br label %return, !dbg !6821

return:                                           ; preds = %if.end, %if.then
  %3 = load i1, ptr %retval, align 1, !dbg !6822
  ret i1 %3, !dbg !6822
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debug_check_no_locks_held() #5 align 16 !dbg !6823 {
entry:
  ret void, !dbg !6825
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6826 dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #3 align 16 !dbg !6829 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6835, metadata !DIExpression()), !dbg !6838
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !6836, metadata !DIExpression()), !dbg !6839
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6840
  %1 = load i8, ptr %branch.addr, align 1, !dbg !6841, !range !6406, !noundef !668
  %tobool = trunc i8 %1 to i1, !dbg !6841
  %conv = zext i1 %tobool to i32, !dbg !6841
  %or = or i32 2, %conv, !dbg !6842
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #17
          to label %asm.fallthrough [label %l_yes], !dbg !6843, !srcloc !6844

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6845
  br label %return, !dbg !6845

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !6837), !dbg !6846
  store i1 true, ptr %retval, align 1, !dbg !6847
  br label %return, !dbg !6847

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !6848
  ret i1 %2, !dbg !6848
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6849 dso_local zeroext i1 @freezing_slow_path(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !6850 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6852, metadata !DIExpression()), !dbg !6854
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6853, metadata !DIExpression()), !dbg !6855
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6856
  %1 = load i64, ptr %size.addr, align 8, !dbg !6857
  %conv = trunc i64 %1 to i32, !dbg !6857
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #18, !dbg !6858
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6859
  %3 = load i64, ptr %size.addr, align 8, !dbg !6859
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #18, !dbg !6859
  ret void, !dbg !6860
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #3 align 16 !dbg !6861 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6864, metadata !DIExpression()), !dbg !6865
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6866
  %call = call i32 @arch_atomic_read(ptr noundef %0) #18, !dbg !6867
  ret i32 %call, !dbg !6868
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6869 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6874, metadata !DIExpression()), !dbg !6876
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6875, metadata !DIExpression()), !dbg !6877
  ret i1 true, !dbg !6878
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !6879 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6884, metadata !DIExpression()), !dbg !6887
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6885, metadata !DIExpression()), !dbg !6888
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6886, metadata !DIExpression()), !dbg !6889
  ret void, !dbg !6890
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #3 align 16 !dbg !6891 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6894, metadata !DIExpression()), !dbg !6895
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6896
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6896
  %1 = load volatile i32, ptr %counter, align 4, !dbg !6896
  ret i32 %1, !dbg !6897
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !6898 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6900, metadata !DIExpression()), !dbg !6905
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6901, metadata !DIExpression()), !dbg !6906
  %0 = load i64, ptr %size.addr, align 8, !dbg !6907
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6908
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6909

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6910
  %tobool = icmp ne i64 %2, 0, !dbg !6910
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6911

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !6912
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6902, metadata !DIExpression()), !dbg !6913
  %3 = load i64, ptr %size.addr, align 8, !dbg !6914
  %cmp = icmp ugt i64 %3, 8192, !dbg !6916
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6917

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6918
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6919
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !6920
  store ptr %call, ptr %retval, align 8, !dbg !6921
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6921

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6922
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !6922
  store i32 %call2, ptr %index, align 4, !dbg !6923
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6924
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6925
  %9 = ptrtoint ptr %8 to i64, !dbg !6925
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !6926
  %idxprom = zext i32 %call3 to i64, !dbg !6927
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6927
  %10 = load i32, ptr %index, align 4, !dbg !6928
  %idxprom4 = zext i32 %10 to i64, !dbg !6927
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6927
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6927
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6929
  %13 = load i64, ptr %size.addr, align 8, !dbg !6930
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #22, !dbg !6931
  store ptr %call6, ptr %retval, align 8, !dbg !6932
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6932

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !6933
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6934
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6935
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !6936
  store ptr %call8, ptr %retval, align 8, !dbg !6937
  br label %return, !dbg !6937

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6938
  ret ptr %16, !dbg !6938
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6939 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #3 align 16 !dbg !6940 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6944, metadata !DIExpression()), !dbg !6946
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6945, metadata !DIExpression()), !dbg !6947
  %0 = load i64, ptr %size.addr, align 8, !dbg !6948
  %tobool = icmp ne i64 %0, 0, !dbg !6948
  br i1 %tobool, label %if.end, label %if.then, !dbg !6950

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6951
  br label %return, !dbg !6951

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6952
  %cmp = icmp ule i64 %1, 8, !dbg !6954
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6955

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6956
  br label %return, !dbg !6956

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6957
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6959
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6960

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6961
  %cmp4 = icmp ule i64 %3, 96, !dbg !6962
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6963

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6964
  br label %return, !dbg !6964

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6965
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6967
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6968

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6969
  %cmp9 = icmp ule i64 %5, 192, !dbg !6970
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6971

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6972
  br label %return, !dbg !6972

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6973
  %cmp12 = icmp ule i64 %6, 8, !dbg !6975
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6976

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6977
  br label %return, !dbg !6977

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6978
  %cmp15 = icmp ule i64 %7, 16, !dbg !6980
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6981

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6982
  br label %return, !dbg !6982

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6983
  %cmp18 = icmp ule i64 %8, 32, !dbg !6985
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6986

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6987
  br label %return, !dbg !6987

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6988
  %cmp21 = icmp ule i64 %9, 64, !dbg !6990
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6991

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6992
  br label %return, !dbg !6992

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6993
  %cmp24 = icmp ule i64 %10, 128, !dbg !6995
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6996

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6997
  br label %return, !dbg !6997

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6998
  %cmp27 = icmp ule i64 %11, 256, !dbg !7000
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !7001

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !7002
  br label %return, !dbg !7002

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !7003
  %cmp30 = icmp ule i64 %12, 512, !dbg !7005
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !7006

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !7007
  br label %return, !dbg !7007

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !7008
  %cmp33 = icmp ule i64 %13, 1024, !dbg !7010
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !7011

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !7012
  br label %return, !dbg !7012

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !7013
  %cmp36 = icmp ule i64 %14, 2048, !dbg !7015
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !7016

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !7017
  br label %return, !dbg !7017

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !7018
  %cmp39 = icmp ule i64 %15, 4096, !dbg !7020
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !7021

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !7022
  br label %return, !dbg !7022

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !7023
  %cmp42 = icmp ule i64 %16, 8192, !dbg !7025
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !7026

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !7027
  br label %return, !dbg !7027

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !7028
  %cmp45 = icmp ule i64 %17, 16384, !dbg !7030
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !7031

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !7032
  br label %return, !dbg !7032

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !7033
  %cmp48 = icmp ule i64 %18, 32768, !dbg !7035
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !7036

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !7037
  br label %return, !dbg !7037

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !7038
  %cmp51 = icmp ule i64 %19, 65536, !dbg !7040
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !7041

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !7042
  br label %return, !dbg !7042

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !7043
  %cmp54 = icmp ule i64 %20, 131072, !dbg !7045
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !7046

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !7047
  br label %return, !dbg !7047

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !7048
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7050
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7051

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7052
  br label %return, !dbg !7052

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7053
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7055
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7056

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7057
  br label %return, !dbg !7057

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7058
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7060
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7061

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7062
  br label %return, !dbg !7062

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7063
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7065
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7066

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7067
  br label %return, !dbg !7067

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7068, !range !6406, !noundef !668
  %tobool69 = trunc i8 %25 to i1, !dbg !7068
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7070

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7071

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_255() #23, !dbg !7072, !srcloc !7075
  unreachable, !dbg !7072

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7076

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7077

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7078

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7080

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7078

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #17, !dbg !7082, !srcloc !7084
  br label %do.end75, !dbg !7082

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7078

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7085
  br label %return, !dbg !7085

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7086
  ret i32 %26, !dbg !7086
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7087 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #3 align 16 !dbg !7090 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7094, metadata !DIExpression()), !dbg !7096
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7095, metadata !DIExpression()), !dbg !7097
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7098
  %and = and i32 %0, 17, !dbg !7098
  %cmp = icmp eq i32 %and, 0, !dbg !7098
  %lnot = xor i1 %cmp, true, !dbg !7098
  %lnot1 = xor i1 %lnot, true, !dbg !7098
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7098
  %conv = sext i32 %lnot.ext to i64, !dbg !7098
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7098
  %tobool = icmp ne i64 %expval, 0, !dbg !7098
  br i1 %tobool, label %if.then, label %if.end, !dbg !7100

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7101
  br label %return, !dbg !7101

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7102
  %and2 = and i32 %1, 1, !dbg !7104
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7104
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7105

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7106
  br label %return, !dbg !7106

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7107
  br label %return, !dbg !7107

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7109
  ret i32 %2, !dbg !7109
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7110 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7111 dso_local void @__compiletime_assert_255() #14

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @call_usermodehelper_exec_sync(ptr noundef %sub_info) #0 align 16 !dbg !7112 {
entry:
  %sub_info.addr = alloca ptr, align 8
  %pid = alloca i32, align 4
  store ptr %sub_info, ptr %sub_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sub_info.addr, metadata !7114, metadata !DIExpression()), !dbg !7116
  call void @llvm.lifetime.start.p0(i64 4, ptr %pid) #17, !dbg !7117
  call void @llvm.dbg.declare(metadata ptr %pid, metadata !7115, metadata !DIExpression()), !dbg !7118
  call void @kernel_sigaction(i32 noundef 17, ptr noundef null) #18, !dbg !7119
  %0 = load ptr, ptr %sub_info.addr, align 8, !dbg !7120
  %call = call i32 @user_mode_thread(ptr noundef @call_usermodehelper_exec_async, ptr noundef %0, i64 noundef 17) #18, !dbg !7121
  store i32 %call, ptr %pid, align 4, !dbg !7122
  %1 = load i32, ptr %pid, align 4, !dbg !7123
  %cmp = icmp slt i32 %1, 0, !dbg !7125
  br i1 %cmp, label %if.then, label %if.else, !dbg !7126

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %pid, align 4, !dbg !7127
  %3 = load ptr, ptr %sub_info.addr, align 8, !dbg !7128
  %retval = getelementptr inbounds %struct.subprocess_info, ptr %3, i32 0, i32 6, !dbg !7129
  store i32 %2, ptr %retval, align 4, !dbg !7130
  br label %if.end, !dbg !7128

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %pid, align 4, !dbg !7131
  %5 = load ptr, ptr %sub_info.addr, align 8, !dbg !7132
  %retval1 = getelementptr inbounds %struct.subprocess_info, ptr %5, i32 0, i32 6, !dbg !7133
  %call2 = call i32 @kernel_wait(i32 noundef %4, ptr noundef %retval1) #18, !dbg !7134
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @kernel_sigaction(i32 noundef 17, ptr noundef inttoptr (i64 1 to ptr)) #18, !dbg !7135
  %6 = load ptr, ptr %sub_info.addr, align 8, !dbg !7136
  call void @umh_complete(ptr noundef %6) #18, !dbg !7137
  call void @llvm.lifetime.end.p0(i64 4, ptr %pid) #17, !dbg !7138
  ret void, !dbg !7138
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7139 dso_local i32 @user_mode_thread(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @call_usermodehelper_exec_async(ptr noundef %data) #0 align 16 !dbg !7146 {
entry:
  %data.addr = alloca ptr, align 8
  %sub_info = alloca ptr, align 8
  %new = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %tmp = alloca %struct.kernel_cap_t, align 8
  %tmp13 = alloca %struct.kernel_cap_t, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !7148, metadata !DIExpression()), !dbg !7153
  call void @llvm.lifetime.start.p0(i64 8, ptr %sub_info) #17, !dbg !7154
  call void @llvm.dbg.declare(metadata ptr %sub_info, metadata !7149, metadata !DIExpression()), !dbg !7155
  %0 = load ptr, ptr %data.addr, align 8, !dbg !7156
  store ptr %0, ptr %sub_info, align 8, !dbg !7155
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #17, !dbg !7157
  call void @llvm.dbg.declare(metadata ptr %new, metadata !7150, metadata !DIExpression()), !dbg !7158
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #17, !dbg !7159
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !7151, metadata !DIExpression()), !dbg !7160
  %call = call ptr @get_current() #18, !dbg !7161
  %sighand = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 105, !dbg !7162
  %1 = load ptr, ptr %sighand, align 8, !dbg !7162
  %siglock = getelementptr inbounds %struct.sighand_struct, ptr %1, i32 0, i32 0, !dbg !7163
  call void @spin_lock_irq(ptr noundef %siglock) #18, !dbg !7164
  %call2 = call ptr @get_current() #18, !dbg !7165
  call void @flush_signal_handlers(ptr noundef %call2, i32 noundef 1) #18, !dbg !7166
  %call3 = call ptr @get_current() #18, !dbg !7167
  %sighand4 = getelementptr inbounds %struct.task_struct, ptr %call3, i32 0, i32 105, !dbg !7168
  %2 = load ptr, ptr %sighand4, align 8, !dbg !7168
  %siglock5 = getelementptr inbounds %struct.sighand_struct, ptr %2, i32 0, i32 0, !dbg !7169
  call void @spin_unlock_irq(ptr noundef %siglock5) #18, !dbg !7170
  %call6 = call ptr @get_current() #18, !dbg !7171
  %fs = getelementptr inbounds %struct.task_struct, ptr %call6, i32 0, i32 100, !dbg !7172
  %3 = load ptr, ptr %fs, align 32, !dbg !7172
  %umask = getelementptr inbounds %struct.fs_struct, ptr %3, i32 0, i32 3, !dbg !7173
  store i32 18, ptr %umask, align 4, !dbg !7174
  %call7 = call ptr @get_current() #18, !dbg !7175
  call void @set_user_nice(ptr noundef %call7, i64 noundef 0) #18, !dbg !7176
  store i32 -12, ptr %retval1, align 4, !dbg !7177
  %call8 = call ptr @get_current() #18, !dbg !7178
  %call9 = call ptr @prepare_kernel_cred(ptr noundef %call8) #18, !dbg !7179
  store ptr %call9, ptr %new, align 8, !dbg !7180
  %4 = load ptr, ptr %new, align 8, !dbg !7181
  %tobool = icmp ne ptr %4, null, !dbg !7181
  br i1 %tobool, label %if.end, label %if.then, !dbg !7183

if.then:                                          ; preds = %entry
  br label %out, !dbg !7184

if.end:                                           ; preds = %entry
  call void @spin_lock(ptr noundef @umh_sysctl_lock) #18, !dbg !7185
  %5 = load ptr, ptr %new, align 8, !dbg !7186
  %cap_bset = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 13, !dbg !7187
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #17, !dbg !7188
  %6 = load ptr, ptr %new, align 8, !dbg !7189
  %cap_bset10 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 13, !dbg !7190
  %7 = load i64, ptr @usermodehelper_bset, align 8, !dbg !7188
  %coerce.dive = getelementptr inbounds %struct.kernel_cap_t, ptr %cap_bset10, i32 0, i32 0, !dbg !7188
  %8 = load i64, ptr %coerce.dive, align 8, !dbg !7188
  %call11 = call i64 @cap_intersect(i64 %7, i64 %8) #18, !dbg !7188
  %coerce.dive12 = getelementptr inbounds %struct.kernel_cap_t, ptr %tmp, i32 0, i32 0, !dbg !7188
  store i64 %call11, ptr %coerce.dive12, align 8, !dbg !7188
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cap_bset, ptr align 8 %tmp, i64 8, i1 false), !dbg !7188
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #17, !dbg !7188
  %9 = load ptr, ptr %new, align 8, !dbg !7191
  %cap_inheritable = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 10, !dbg !7192
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp13) #17, !dbg !7193
  %10 = load ptr, ptr %new, align 8, !dbg !7194
  %cap_inheritable14 = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 10, !dbg !7195
  %11 = load i64, ptr @usermodehelper_inheritable, align 8, !dbg !7193
  %coerce.dive15 = getelementptr inbounds %struct.kernel_cap_t, ptr %cap_inheritable14, i32 0, i32 0, !dbg !7193
  %12 = load i64, ptr %coerce.dive15, align 8, !dbg !7193
  %call16 = call i64 @cap_intersect(i64 %11, i64 %12) #18, !dbg !7193
  %coerce.dive17 = getelementptr inbounds %struct.kernel_cap_t, ptr %tmp13, i32 0, i32 0, !dbg !7193
  store i64 %call16, ptr %coerce.dive17, align 8, !dbg !7193
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cap_inheritable, ptr align 8 %tmp13, i64 8, i1 false), !dbg !7193
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp13) #17, !dbg !7193
  call void @spin_unlock(ptr noundef @umh_sysctl_lock) #18, !dbg !7196
  %13 = load ptr, ptr %sub_info, align 8, !dbg !7197
  %init = getelementptr inbounds %struct.subprocess_info, ptr %13, i32 0, i32 7, !dbg !7199
  %14 = load ptr, ptr %init, align 8, !dbg !7199
  %tobool18 = icmp ne ptr %14, null, !dbg !7197
  br i1 %tobool18, label %if.then19, label %if.end25, !dbg !7200

if.then19:                                        ; preds = %if.end
  %15 = load ptr, ptr %sub_info, align 8, !dbg !7201
  %init20 = getelementptr inbounds %struct.subprocess_info, ptr %15, i32 0, i32 7, !dbg !7203
  %16 = load ptr, ptr %init20, align 8, !dbg !7203
  %17 = load ptr, ptr %sub_info, align 8, !dbg !7204
  %18 = load ptr, ptr %new, align 8, !dbg !7205
  %call21 = call i32 %16(ptr noundef %17, ptr noundef %18) #18, !dbg !7201
  store i32 %call21, ptr %retval1, align 4, !dbg !7206
  %19 = load i32, ptr %retval1, align 4, !dbg !7207
  %tobool22 = icmp ne i32 %19, 0, !dbg !7207
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !7209

if.then23:                                        ; preds = %if.then19
  %20 = load ptr, ptr %new, align 8, !dbg !7210
  call void @abort_creds(ptr noundef %20) #18, !dbg !7212
  br label %out, !dbg !7213

if.end24:                                         ; preds = %if.then19
  br label %if.end25, !dbg !7214

if.end25:                                         ; preds = %if.end24, %if.end
  %21 = load ptr, ptr %new, align 8, !dbg !7215
  %call26 = call i32 @commit_creds(ptr noundef %21) #18, !dbg !7216
  call void @wait_for_initramfs() #18, !dbg !7217
  %22 = load ptr, ptr %sub_info, align 8, !dbg !7218
  %path = getelementptr inbounds %struct.subprocess_info, ptr %22, i32 0, i32 2, !dbg !7219
  %23 = load ptr, ptr %path, align 8, !dbg !7219
  %24 = load ptr, ptr %sub_info, align 8, !dbg !7220
  %argv = getelementptr inbounds %struct.subprocess_info, ptr %24, i32 0, i32 3, !dbg !7221
  %25 = load ptr, ptr %argv, align 8, !dbg !7221
  %26 = load ptr, ptr %sub_info, align 8, !dbg !7222
  %envp = getelementptr inbounds %struct.subprocess_info, ptr %26, i32 0, i32 4, !dbg !7223
  %27 = load ptr, ptr %envp, align 8, !dbg !7223
  %call27 = call i32 @kernel_execve(ptr noundef %23, ptr noundef %25, ptr noundef %27) #18, !dbg !7224
  store i32 %call27, ptr %retval1, align 4, !dbg !7225
  br label %out, !dbg !7226

out:                                              ; preds = %if.end25, %if.then23, %if.then
  call void @llvm.dbg.label(metadata !7152), !dbg !7227
  %28 = load i32, ptr %retval1, align 4, !dbg !7228
  %29 = load ptr, ptr %sub_info, align 8, !dbg !7229
  %retval28 = getelementptr inbounds %struct.subprocess_info, ptr %29, i32 0, i32 6, !dbg !7230
  store i32 %28, ptr %retval28, align 4, !dbg !7231
  %30 = load ptr, ptr %sub_info, align 8, !dbg !7232
  %wait = getelementptr inbounds %struct.subprocess_info, ptr %30, i32 0, i32 5, !dbg !7234
  %31 = load i32, ptr %wait, align 8, !dbg !7234
  %and = and i32 %31, 2, !dbg !7235
  %tobool29 = icmp ne i32 %and, 0, !dbg !7235
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !7236

if.then30:                                        ; preds = %out
  %32 = load ptr, ptr %sub_info, align 8, !dbg !7237
  call void @umh_complete(ptr noundef %32) #18, !dbg !7238
  br label %if.end31, !dbg !7238

if.end31:                                         ; preds = %if.then30, %out
  %33 = load i32, ptr %retval1, align 4, !dbg !7239
  %tobool32 = icmp ne i32 %33, 0, !dbg !7239
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !7241

if.then33:                                        ; preds = %if.end31
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #17, !dbg !7242
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #17, !dbg !7242
  call void @llvm.lifetime.end.p0(i64 8, ptr %sub_info) #17, !dbg !7242
  ret i32 0, !dbg !7243

if.end34:                                         ; preds = %if.end31
  call void @do_exit(i64 noundef 0) #23, !dbg !7244
  unreachable, !dbg !7244
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @umh_complete(ptr noundef %sub_info) #0 align 16 !dbg !7245 {
entry:
  %sub_info.addr = alloca ptr, align 8
  %comp = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ret = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %sub_info, ptr %sub_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sub_info.addr, metadata !7247, metadata !DIExpression()), !dbg !7253
  call void @llvm.lifetime.start.p0(i64 8, ptr %comp) #17, !dbg !7254
  call void @llvm.dbg.declare(metadata ptr %comp, metadata !7248, metadata !DIExpression()), !dbg !7255
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #17, !dbg !7256
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !7249, metadata !DIExpression()), !dbg !7256
  %0 = load ptr, ptr %sub_info.addr, align 8, !dbg !7256
  %complete = getelementptr inbounds %struct.subprocess_info, ptr %0, i32 0, i32 1, !dbg !7256
  store ptr %complete, ptr %__ai_ptr, align 8, !dbg !7256
  br label %do.body, !dbg !7256

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !7257

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7257

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %__ai_ptr, align 8, !dbg !7256
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 8) #18, !dbg !7256
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #17, !dbg !7259
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !7251, metadata !DIExpression()), !dbg !7259
  store ptr null, ptr %__ret, align 8, !dbg !7259
  %2 = load ptr, ptr %__ret, align 8, !dbg !7259
  %3 = load ptr, ptr %__ai_ptr, align 8, !dbg !7259
  %4 = call ptr asm sideeffect "xchgq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %3, ptr %2, ptr elementtype(ptr) %3) #17, !dbg !7259, !srcloc !7260
  store ptr %4, ptr %__ret, align 8, !dbg !7259
  %5 = load ptr, ptr %__ret, align 8, !dbg !7259
  store ptr %5, ptr %tmp1, align 8, !dbg !7259
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #17, !dbg !7256
  %6 = load ptr, ptr %tmp1, align 8, !dbg !7259
  store ptr %6, ptr %tmp, align 8, !dbg !7256
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #17, !dbg !7261
  %7 = load ptr, ptr %tmp, align 8, !dbg !7256
  store ptr %7, ptr %comp, align 8, !dbg !7255
  %8 = load ptr, ptr %comp, align 8, !dbg !7262
  %tobool = icmp ne ptr %8, null, !dbg !7262
  br i1 %tobool, label %if.then, label %if.else, !dbg !7264

if.then:                                          ; preds = %do.end
  %9 = load ptr, ptr %comp, align 8, !dbg !7265
  call void @complete(ptr noundef %9) #18, !dbg !7266
  br label %if.end, !dbg !7266

if.else:                                          ; preds = %do.end
  %10 = load ptr, ptr %sub_info.addr, align 8, !dbg !7267
  call void @call_usermodehelper_freeinfo(ptr noundef %10) #18, !dbg !7268
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %comp) #17, !dbg !7269
  ret void, !dbg !7269
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7270 dso_local void @kernel_sigaction(i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7273 dso_local i32 @kernel_wait(i32 noundef, ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #3 align 16 !dbg !7276 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7281, metadata !DIExpression()), !dbg !7282
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7283
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !7283
  call void @_raw_spin_lock_irq(ptr noundef %1) #18, !dbg !7283
  ret void, !dbg !7284
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7285 dso_local void @flush_signal_handlers(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #3 align 16 !dbg !7288 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7290, metadata !DIExpression()), !dbg !7291
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7292
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !7292
  call void @_raw_spin_unlock_irq(ptr noundef %1) #18, !dbg !7292
  ret void, !dbg !7293
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7294 dso_local void @set_user_nice(ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7297 dso_local ptr @prepare_kernel_cred(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #3 align 16 !dbg !7300 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7302, metadata !DIExpression()), !dbg !7303
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7304
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !7304
  call void @_raw_spin_lock(ptr noundef %1) #18, !dbg !7304
  ret void, !dbg !7305
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cap_intersect(i64 %a.coerce, i64 %b.coerce) #5 align 16 !dbg !7306 {
entry:
  %retval = alloca %struct.kernel_cap_t, align 8
  %a = alloca %struct.kernel_cap_t, align 8
  %b = alloca %struct.kernel_cap_t, align 8
  %coerce.dive = getelementptr inbounds %struct.kernel_cap_t, ptr %a, i32 0, i32 0
  store i64 %a.coerce, ptr %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.kernel_cap_t, ptr %b, i32 0, i32 0
  store i64 %b.coerce, ptr %coerce.dive1, align 8
  call void @llvm.dbg.declare(metadata ptr %a, metadata !7311, metadata !DIExpression()), !dbg !7313
  call void @llvm.dbg.declare(metadata ptr %b, metadata !7312, metadata !DIExpression()), !dbg !7314
  %val = getelementptr inbounds %struct.kernel_cap_t, ptr %retval, i32 0, i32 0, !dbg !7315
  %val2 = getelementptr inbounds %struct.kernel_cap_t, ptr %a, i32 0, i32 0, !dbg !7316
  %0 = load i64, ptr %val2, align 8, !dbg !7316
  %val3 = getelementptr inbounds %struct.kernel_cap_t, ptr %b, i32 0, i32 0, !dbg !7317
  %1 = load i64, ptr %val3, align 8, !dbg !7317
  %and = and i64 %0, %1, !dbg !7318
  store i64 %and, ptr %val, align 8, !dbg !7315
  %coerce.dive4 = getelementptr inbounds %struct.kernel_cap_t, ptr %retval, i32 0, i32 0, !dbg !7319
  %2 = load i64, ptr %coerce.dive4, align 8, !dbg !7319
  ret i64 %2, !dbg !7319
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #3 align 16 !dbg !7320 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7322, metadata !DIExpression()), !dbg !7323
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7324
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !7324
  call void @_raw_spin_unlock(ptr noundef %1) #18, !dbg !7324
  ret void, !dbg !7325
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7326 dso_local void @abort_creds(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7329 dso_local i32 @commit_creds(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7332 dso_local void @wait_for_initramfs() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7334 dso_local i32 @kernel_execve(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7337 dso_local void @do_exit(i64 noundef) #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7340 dso_local void @_raw_spin_lock_irq(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7345 dso_local void @_raw_spin_unlock_irq(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7346 dso_local void @_raw_spin_lock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7347 dso_local void @_raw_spin_unlock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7348 dso_local void @complete(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7351 dso_local void @kfree(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #3 align 16 !dbg !7354 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7359, metadata !DIExpression()), !dbg !7360
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7361
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #18, !dbg !7362
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7363
  call void @raw_atomic_inc(ptr noundef %1) #18, !dbg !7364
  ret void, !dbg !7365
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #3 align 16 !dbg !7366 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7368, metadata !DIExpression()), !dbg !7369
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7370
  call void @arch_atomic_inc(ptr noundef %0) #18, !dbg !7371
  ret void, !dbg !7372
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #3 align 16 !dbg !7373 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7375, metadata !DIExpression()), !dbg !7376
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7377
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !7378
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #17, !dbg !7379, !srcloc !7380
  ret void, !dbg !7381
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7382 dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !7385 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7387, metadata !DIExpression()), !dbg !7389
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7388, metadata !DIExpression()), !dbg !7390
  ret i1 true, !dbg !7391
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_dec_and_test(ptr noundef %v) #3 align 16 !dbg !7392 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7396, metadata !DIExpression()), !dbg !7397
  br label %do.body, !dbg !7398

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7399

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7401
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #18, !dbg !7402
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7403
  %call = call zeroext i1 @raw_atomic_dec_and_test(ptr noundef %1) #18, !dbg !7404
  ret i1 %call, !dbg !7405
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_dec_and_test(ptr noundef %v) #3 align 16 !dbg !7406 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7408, metadata !DIExpression()), !dbg !7409
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7410
  %call = call zeroext i1 @arch_atomic_dec_and_test(ptr noundef %0) #18, !dbg !7411
  ret i1 %call, !dbg !7412
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_dec_and_test(ptr noundef %v) #3 align 16 !dbg !7413 {
entry:
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7415, metadata !DIExpression()), !dbg !7418
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #17, !dbg !7419
  call void @llvm.dbg.declare(metadata ptr %c, metadata !7416, metadata !DIExpression()), !dbg !7419
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7419
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !7419
  %1 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #17, !dbg !7419, !srcloc !7420
  %2 = icmp ult i8 %1, 2, !dbg !7419
  call void @llvm.assume(i1 %2), !dbg !7419
  store i8 %1, ptr %c, align 1, !dbg !7419
  %3 = load i8, ptr %c, align 1, !dbg !7419, !range !6406, !noundef !668
  %tobool = trunc i8 %3 to i1, !dbg !7419
  %frombool = zext i1 %tobool to i8, !dbg !7419
  store i8 %frombool, ptr %tmp, align 1, !dbg !7419
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #17, !dbg !7421
  %4 = load i8, ptr %tmp, align 1, !dbg !7419, !range !6406, !noundef !668
  %tobool1 = trunc i8 %4 to i1, !dbg !7419
  ret i1 %tobool1, !dbg !7422
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7423 dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_cap_handler(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 16 !dbg !7426 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  %write.addr = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %lenp.addr = alloca ptr, align 8
  %ppos.addr = alloca ptr, align 8
  %t = alloca %struct.ctl_table, align 8
  %cap_array = alloca [2 x i64], align 16
  %new_cap = alloca %struct.kernel_cap_t, align 8
  %cap = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.kernel_cap_t, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !7428, metadata !DIExpression()), !dbg !7440
  store i32 %write, ptr %write.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !7429, metadata !DIExpression()), !dbg !7441
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !7430, metadata !DIExpression()), !dbg !7442
  store ptr %lenp, ptr %lenp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lenp.addr, metadata !7431, metadata !DIExpression()), !dbg !7443
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !7432, metadata !DIExpression()), !dbg !7444
  call void @llvm.lifetime.start.p0(i64 64, ptr %t) #17, !dbg !7445
  call void @llvm.dbg.declare(metadata ptr %t, metadata !7433, metadata !DIExpression()), !dbg !7446
  call void @llvm.lifetime.start.p0(i64 16, ptr %cap_array) #17, !dbg !7447
  call void @llvm.dbg.declare(metadata ptr %cap_array, metadata !7434, metadata !DIExpression()), !dbg !7448
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_cap) #17, !dbg !7449
  call void @llvm.dbg.declare(metadata ptr %new_cap, metadata !7436, metadata !DIExpression()), !dbg !7450
  call void @llvm.lifetime.start.p0(i64 8, ptr %cap) #17, !dbg !7449
  call void @llvm.dbg.declare(metadata ptr %cap, metadata !7437, metadata !DIExpression()), !dbg !7451
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !7452
  call void @llvm.dbg.declare(metadata ptr %err, metadata !7439, metadata !DIExpression()), !dbg !7453
  %0 = load i32, ptr %write.addr, align 4, !dbg !7454
  %tobool = icmp ne i32 %0, 0, !dbg !7454
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !7456

land.lhs.true:                                    ; preds = %entry
  %call = call zeroext i1 @capable(i32 noundef 8) #18, !dbg !7457
  br i1 %call, label %lor.lhs.false, label %if.then, !dbg !7458

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call1 = call zeroext i1 @capable(i32 noundef 16) #18, !dbg !7459
  br i1 %call1, label %if.end, label %if.then, !dbg !7460

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i32 -1, ptr %retval, align 4, !dbg !7461
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7461

if.end:                                           ; preds = %lor.lhs.false, %entry
  %1 = load ptr, ptr %table.addr, align 8, !dbg !7462
  %data = getelementptr inbounds %struct.ctl_table, ptr %1, i32 0, i32 1, !dbg !7463
  %2 = load ptr, ptr %data, align 8, !dbg !7463
  store ptr %2, ptr %cap, align 8, !dbg !7464
  call void @spin_lock(ptr noundef @umh_sysctl_lock) #18, !dbg !7465
  %3 = load ptr, ptr %cap, align 8, !dbg !7466
  %val = getelementptr inbounds %struct.kernel_cap_t, ptr %3, i32 0, i32 0, !dbg !7467
  %4 = load i64, ptr %val, align 8, !dbg !7467
  %conv = trunc i64 %4 to i32, !dbg !7468
  %conv2 = zext i32 %conv to i64, !dbg !7468
  %arrayidx = getelementptr [2 x i64], ptr %cap_array, i64 0, i64 0, !dbg !7469
  store i64 %conv2, ptr %arrayidx, align 16, !dbg !7470
  %5 = load ptr, ptr %cap, align 8, !dbg !7471
  %val3 = getelementptr inbounds %struct.kernel_cap_t, ptr %5, i32 0, i32 0, !dbg !7472
  %6 = load i64, ptr %val3, align 8, !dbg !7472
  %shr = lshr i64 %6, 32, !dbg !7473
  %arrayidx4 = getelementptr [2 x i64], ptr %cap_array, i64 0, i64 1, !dbg !7474
  store i64 %shr, ptr %arrayidx4, align 8, !dbg !7475
  call void @spin_unlock(ptr noundef @umh_sysctl_lock) #18, !dbg !7476
  %7 = load ptr, ptr %table.addr, align 8, !dbg !7477
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t, ptr align 8 %7, i64 64, i1 false), !dbg !7478
  %data5 = getelementptr inbounds %struct.ctl_table, ptr %t, i32 0, i32 1, !dbg !7479
  store ptr %cap_array, ptr %data5, align 8, !dbg !7480
  %8 = load i32, ptr %write.addr, align 4, !dbg !7481
  %9 = load ptr, ptr %buffer.addr, align 8, !dbg !7482
  %10 = load ptr, ptr %lenp.addr, align 8, !dbg !7483
  %11 = load ptr, ptr %ppos.addr, align 8, !dbg !7484
  %call6 = call i32 @proc_doulongvec_minmax(ptr noundef %t, i32 noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #18, !dbg !7485
  store i32 %call6, ptr %err, align 4, !dbg !7486
  %12 = load i32, ptr %err, align 4, !dbg !7487
  %cmp = icmp slt i32 %12, 0, !dbg !7489
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !7490

if.then8:                                         ; preds = %if.end
  %13 = load i32, ptr %err, align 4, !dbg !7491
  store i32 %13, ptr %retval, align 4, !dbg !7492
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7492

if.end9:                                          ; preds = %if.end
  %arrayidx10 = getelementptr [2 x i64], ptr %cap_array, i64 0, i64 0, !dbg !7493
  %14 = load i64, ptr %arrayidx10, align 16, !dbg !7493
  %conv11 = trunc i64 %14 to i32, !dbg !7494
  %conv12 = zext i32 %conv11 to i64, !dbg !7494
  %val13 = getelementptr inbounds %struct.kernel_cap_t, ptr %new_cap, i32 0, i32 0, !dbg !7495
  store i64 %conv12, ptr %val13, align 8, !dbg !7496
  %arrayidx14 = getelementptr [2 x i64], ptr %cap_array, i64 0, i64 1, !dbg !7497
  %15 = load i64, ptr %arrayidx14, align 8, !dbg !7497
  %shl = shl i64 %15, 32, !dbg !7498
  %val15 = getelementptr inbounds %struct.kernel_cap_t, ptr %new_cap, i32 0, i32 0, !dbg !7499
  %16 = load i64, ptr %val15, align 8, !dbg !7500
  %add = add i64 %16, %shl, !dbg !7500
  store i64 %add, ptr %val15, align 8, !dbg !7500
  %17 = load i32, ptr %write.addr, align 4, !dbg !7501
  %tobool16 = icmp ne i32 %17, 0, !dbg !7501
  br i1 %tobool16, label %if.then17, label %if.end21, !dbg !7503

if.then17:                                        ; preds = %if.end9
  call void @spin_lock(ptr noundef @umh_sysctl_lock) #18, !dbg !7504
  %18 = load ptr, ptr %cap, align 8, !dbg !7506
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #17, !dbg !7507
  %19 = load ptr, ptr %cap, align 8, !dbg !7508
  %coerce.dive = getelementptr inbounds %struct.kernel_cap_t, ptr %19, i32 0, i32 0, !dbg !7507
  %20 = load i64, ptr %coerce.dive, align 8, !dbg !7507
  %coerce.dive18 = getelementptr inbounds %struct.kernel_cap_t, ptr %new_cap, i32 0, i32 0, !dbg !7507
  %21 = load i64, ptr %coerce.dive18, align 8, !dbg !7507
  %call19 = call i64 @cap_intersect(i64 %20, i64 %21) #18, !dbg !7507
  %coerce.dive20 = getelementptr inbounds %struct.kernel_cap_t, ptr %tmp, i32 0, i32 0, !dbg !7507
  store i64 %call19, ptr %coerce.dive20, align 8, !dbg !7507
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %18, ptr align 8 %tmp, i64 8, i1 false), !dbg !7507
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #17, !dbg !7507
  call void @spin_unlock(ptr noundef @umh_sysctl_lock) #18, !dbg !7509
  br label %if.end21, !dbg !7510

if.end21:                                         ; preds = %if.then17, %if.end9
  store i32 0, ptr %retval, align 4, !dbg !7511
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7511

cleanup:                                          ; preds = %if.end21, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !7512
  call void @llvm.lifetime.end.p0(i64 8, ptr %cap) #17, !dbg !7512
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_cap) #17, !dbg !7512
  call void @llvm.lifetime.end.p0(i64 16, ptr %cap_array) #17, !dbg !7512
  call void @llvm.lifetime.end.p0(i64 64, ptr %t) #17, !dbg !7512
  %22 = load i32, ptr %retval, align 4, !dbg !7512
  ret i32 %22, !dbg !7512
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7513 dso_local zeroext i1 @capable(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7516 dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { nounwind memory(none) }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { cold noredzone }
attributes #22 = { noredzone allocsize(2) }
attributes #23 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!6209, !6210, !6211, !6212, !6213, !6214, !6215, !6216}
!llvm.ident = !{!6217}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "umhelper_sem", scope: !2, file: !3, line: 38, type: !879, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.umh.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/umh\22 -D KBUILD_BASENAME=\22umh\22 -D KBUILD_MODNAME=\22umh\22 -D __KBUILD_MODNAME=kmod_umh -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/umh.ll kernel/umh.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !326, globals: !6140, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/umh.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "21e8945734ecd775d09e15c2cc64e9c7")
!4 = !{!5, !12, !108, !134, !139, !147, !154, !162, !178, !183, !190, !196, !203, !211, !218, !224, !233, !238, !243, !249, !260, !266, !275, !280, !286, !298, !304, !311, !316}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "umh_disable_depth", file: !6, line: 45, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9ecec28201063d5e3b04c190bc92649")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "UMH_ENABLED", value: 0)
!10 = !DIEnumerator(name: "UMH_FREEZING", value: 1)
!11 = !DIEnumerator(name: "UMH_DISABLED", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !14, file: !13, line: 147, baseType: !7, size: 32, elements: !105)
!13 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !13, line: 135, size: 512, elements: !15)
!15 = !{!16, !20, !22, !24, !28, !29, !45, !103, !104}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !14, file: !13, line: 136, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !14, file: !13, line: 137, baseType: !21, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !14, file: !13, line: 138, baseType: !23, size: 32, offset: 128)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !14, file: !13, line: 139, baseType: !25, size: 16, offset: 160)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !26, line: 24, baseType: !27)
!26 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!27 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !14, file: !13, line: 150, baseType: !12, size: 32, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !14, file: !13, line: 151, baseType: !30, size: 64, offset: 256)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !13, line: 64, baseType: !32)
!32 = !DISubroutineType(types: !33)
!33 = !{!23, !34, !23, !21, !35, !41}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 61, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !38, line: 72, baseType: !39)
!38 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !38, line: 16, baseType: !40)
!40 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !26, line: 52, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !38, line: 88, baseType: !44)
!44 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !14, file: !13, line: 152, baseType: !46, size: 64, offset: 320)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !13, line: 117, size: 256, elements: !48)
!48 = !{!49, !54}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !47, file: !13, line: 118, baseType: !50, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !26, line: 174, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !26, line: 172, size: 32, elements: !52)
!52 = !{!53}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !51, file: !26, line: 173, baseType: !23, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !47, file: !13, line: 119, baseType: !55, size: 192, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !56, line: 41, baseType: !57)
!56 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !56, line: 37, size: 192, elements: !58)
!58 = !{!59, !97}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !57, file: !56, line: 38, baseType: !60, size: 32)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !61, line: 29, baseType: !62)
!61 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !61, line: 17, size: 32, elements: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, scope: !62, file: !61, line: 18, baseType: !65, size: 32)
!65 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !62, file: !61, line: 18, size: 32, elements: !66)
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !65, file: !61, line: 19, baseType: !68, size: 32)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !69, line: 14, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!70 = !{!71}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !68, file: !69, line: 15, baseType: !72, size: 32)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !73, line: 44, baseType: !74)
!73 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !73, line: 14, size: 32, elements: !75)
!75 = !{!76}
!76 = !DIDerivedType(tag: DW_TAG_member, scope: !74, file: !73, line: 15, baseType: !77, size: 32)
!77 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !74, file: !73, line: 15, size: 32, elements: !78)
!78 = !{!79, !80, !90}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !77, file: !73, line: 16, baseType: !50, size: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, scope: !77, file: !73, line: 24, baseType: !81, size: 16)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !77, file: !73, line: 24, size: 16, elements: !82)
!82 = !{!83, !89}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !81, file: !73, line: 25, baseType: !84, size: 8)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !85, line: 17, baseType: !86)
!85 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !87, line: 21, baseType: !88)
!87 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!88 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !81, file: !73, line: 26, baseType: !84, size: 8, offset: 8)
!90 = !DIDerivedType(tag: DW_TAG_member, scope: !77, file: !73, line: 28, baseType: !91, size: 32)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !77, file: !73, line: 28, size: 32, elements: !92)
!92 = !{!93, !96}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !91, file: !73, line: 29, baseType: !94, size: 16)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !85, line: 19, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !87, line: 24, baseType: !27)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !91, file: !73, line: 30, baseType: !94, size: 16, offset: 16)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !57, file: !56, line: 39, baseType: !98, size: 128, offset: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !26, line: 190, size: 128, elements: !99)
!99 = !{!100, !102}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !98, file: !26, line: 191, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !98, file: !26, line: 191, baseType: !101, size: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !14, file: !13, line: 153, baseType: !21, size: 64, offset: 384)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !14, file: !13, line: 154, baseType: !21, size: 64, offset: 448)
!105 = !{!106, !107}
!106 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!107 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !109, line: 30, baseType: !7, size: 32, elements: !110)
!109 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!110 = !{!111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133}
!111 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!112 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!113 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!114 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!115 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!116 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!117 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!118 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!119 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!120 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!121 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!122 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!123 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!124 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!125 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!126 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!127 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!128 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!129 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!130 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!131 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!132 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!133 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !135, line: 65, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!136 = !{!137, !138}
!137 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!138 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !140, line: 9, baseType: !7, size: 32, elements: !141)
!140 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!141 = !{!142, !143, !144, !145, !146}
!142 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!143 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!144 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!145 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!146 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !148, line: 312, baseType: !7, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!149 = !{!150, !151, !152, !153}
!150 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!151 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!152 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!153 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !155, line: 68, baseType: !7, size: 32, elements: !156)
!155 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!156 = !{!157, !158, !159, !160, !161}
!157 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!158 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!159 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!160 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!161 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !163, line: 1325, baseType: !7, size: 32, elements: !164)
!163 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177}
!165 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!166 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!167 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!168 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!169 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!170 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!171 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!172 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!173 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!174 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!175 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!176 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!177 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !179, line: 32, baseType: !7, size: 32, elements: !180)
!179 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!180 = !{!181, !182}
!181 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!182 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !184, line: 15, baseType: !7, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!185 = !{!186, !187, !188, !189}
!186 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!187 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!188 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!189 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !191, line: 45, baseType: !7, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!192 = !{!193, !194, !195}
!193 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!194 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!195 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !197, line: 487, baseType: !7, size: 32, elements: !198)
!197 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!198 = !{!199, !200, !201, !202}
!199 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!200 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!201 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!202 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !204, line: 620, baseType: !7, size: 32, elements: !205)
!204 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!205 = !{!206, !207, !208, !209, !210}
!206 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!207 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!208 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!209 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!210 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !204, line: 597, baseType: !23, size: 32, elements: !212)
!212 = !{!213, !214, !215, !216, !217}
!213 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!214 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!215 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!216 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!217 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!218 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !219, line: 26, baseType: !7, size: 32, elements: !220)
!219 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!220 = !{!221, !222, !223}
!221 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!222 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!223 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !197, line: 547, baseType: !7, size: 32, elements: !225)
!225 = !{!226, !227, !228, !229, !230, !231, !232}
!226 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!227 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!228 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!229 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!230 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!231 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!232 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !197, line: 564, baseType: !7, size: 32, elements: !234)
!234 = !{!235, !236, !237}
!235 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!236 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!237 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !197, line: 577, baseType: !7, size: 32, elements: !239)
!239 = !{!240, !241, !242}
!240 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!241 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!242 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !197, line: 503, baseType: !7, size: 32, elements: !244)
!244 = !{!245, !246, !247, !248}
!245 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!246 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!247 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!248 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !250, line: 253, baseType: !7, size: 32, elements: !251)
!250 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!251 = !{!252, !253, !254, !255, !256, !257, !258, !259}
!252 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!253 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!254 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!255 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!256 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!257 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!258 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!259 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!260 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !250, line: 158, baseType: !7, size: 32, elements: !261)
!261 = !{!262, !263, !264, !265}
!262 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!263 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!264 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!265 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!266 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !267, line: 593, baseType: !23, size: 32, elements: !268)
!267 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!268 = !{!269, !270, !271, !272, !273, !274}
!269 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!270 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!271 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!272 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!273 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!274 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!275 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !276, line: 2052, baseType: !7, size: 32, elements: !277)
!276 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!277 = !{!278, !279}
!278 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!279 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!280 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !281, line: 54, baseType: !7, size: 32, elements: !282)
!281 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!282 = !{!283, !284, !285}
!283 = !DIEnumerator(name: "USRQUOTA", value: 0)
!284 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!285 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!286 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !287, line: 44, baseType: !7, size: 32, elements: !288)
!287 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!288 = !{!289, !290, !291, !292, !293, !294, !295, !296, !297}
!289 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!290 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!291 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!292 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!293 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!294 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!295 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!296 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!297 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!298 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !299, line: 16, baseType: !7, size: 32, elements: !300)
!299 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!300 = !{!301, !302, !303}
!301 = !DIEnumerator(name: "TT_NONE", value: 0)
!302 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!303 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!304 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !305, line: 51, baseType: !7, size: 32, elements: !306)
!305 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!306 = !{!307, !308, !309, !310}
!307 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!308 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!309 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!310 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!311 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !312, line: 10, baseType: !7, size: 32, elements: !313)
!312 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!313 = !{!314, !315}
!314 = !DIEnumerator(name: "false", value: 0)
!315 = !DIEnumerator(name: "true", value: 1)
!316 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !317, line: 364, baseType: !7, size: 32, elements: !318)
!317 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!318 = !{!319, !320, !321, !322, !323, !324, !325}
!319 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!320 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!321 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!322 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!323 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!324 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!325 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!326 = !{!21, !40, !327, !328, !329, !6113, !6116, !6118, !5603, !6138, !23, !340, !398}
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !26, line: 154, baseType: !7)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !331, line: 746, size: 58368, elements: !332)
!331 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!332 = !{!333, !343, !344, !345, !351, !352, !353, !354, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !437, !448, !549, !553, !556, !587, !588, !589, !590, !601, !603, !604, !605, !606, !607, !608, !619, !620, !623, !624, !625, !626, !627, !628, !629, !630, !637, !638, !645, !646, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5189, !5251, !5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5263, !5264, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5294, !5300, !5301, !5302, !5303, !5304, !5306, !5309, !5316, !5321, !5333, !5360, !5363, !5395, !5588, !5615, !5616, !5617, !5618, !5619, !5620, !5621, !5622, !5623, !5626, !5627, !5628, !5637, !5645, !5646, !5647, !5648, !5649, !5654, !5655, !5656, !5659, !5660, !5663, !5666, !5671, !5678, !5681, !5682, !5768, !5769, !5770, !5771, !5772, !5778, !5779, !5780, !5781, !5782, !5783, !5786, !5789, !5790, !5793, !5794, !5795, !5796, !5797, !5798, !5799, !5800, !5801, !5814, !5815, !5816, !5817, !5818, !5819, !5820, !5821, !5822, !5833, !5834, !5840, !5843, !5844, !5845, !5846, !5847, !5848, !5849, !5850, !5922, !5924, !5925, !5926, !5927, !5928, !5929, !5932, !5933, !5934, !5935, !5936, !5937, !5938, !5939, !5940, !5941, !5942, !5946, !5947, !5948}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !330, file: !331, line: 752, baseType: !334, size: 192)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !335, line: 56, size: 192, elements: !336)
!335 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!336 = !{!337, !338, !339, !342}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !334, file: !335, line: 57, baseType: !40, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !334, file: !335, line: 58, baseType: !40, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !334, file: !335, line: 59, baseType: !340, size: 32, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !85, line: 21, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !87, line: 27, baseType: !7)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !334, file: !335, line: 61, baseType: !340, size: 32, offset: 160)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !330, file: !331, line: 754, baseType: !7, size: 32, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !330, file: !331, line: 767, baseType: !21, size: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !330, file: !331, line: 768, baseType: !346, size: 32, offset: 320)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !347, line: 113, baseType: !348)
!347 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !347, line: 111, size: 32, elements: !349)
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !348, file: !347, line: 112, baseType: !50, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !330, file: !331, line: 770, baseType: !7, size: 32, offset: 352)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !330, file: !331, line: 771, baseType: !7, size: 32, offset: 384)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !330, file: !331, line: 774, baseType: !23, size: 32, offset: 416)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !330, file: !331, line: 775, baseType: !355, size: 128, offset: 448)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !356, line: 58, size: 128, elements: !357)
!356 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!357 = !{!358, !364, !369, !370}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !355, file: !356, line: 59, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !360, line: 60, size: 64, elements: !361)
!360 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !359, file: !360, line: 61, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !356, line: 60, baseType: !365, size: 32, offset: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !355, file: !356, line: 60, size: 32, elements: !366)
!366 = !{!367, !368}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !365, file: !356, line: 61, baseType: !7, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !365, file: !356, line: 62, baseType: !50, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !355, file: !356, line: 65, baseType: !94, size: 16, offset: 96)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !355, file: !356, line: 65, baseType: !94, size: 16, offset: 112)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !330, file: !331, line: 776, baseType: !7, size: 32, offset: 576)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !330, file: !331, line: 777, baseType: !40, size: 64, offset: 640)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !330, file: !331, line: 778, baseType: !329, size: 64, offset: 704)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !330, file: !331, line: 787, baseType: !23, size: 32, offset: 768)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !330, file: !331, line: 788, baseType: !23, size: 32, offset: 800)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !330, file: !331, line: 790, baseType: !23, size: 32, offset: 832)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !330, file: !331, line: 792, baseType: !23, size: 32, offset: 864)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !330, file: !331, line: 793, baseType: !23, size: 32, offset: 896)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !330, file: !331, line: 794, baseType: !23, size: 32, offset: 928)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !330, file: !331, line: 795, baseType: !7, size: 32, offset: 960)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !330, file: !331, line: 797, baseType: !382, size: 2048, offset: 1024)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !331, line: 551, size: 2048, elements: !383)
!383 = !{!384, !389, !397, !401, !402, !403, !404, !405, !406, !407, !408, !411, !412, !413, !414, !416, !419, !420, !421}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !382, file: !331, line: 553, baseType: !385, size: 128)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !331, line: 411, size: 128, elements: !386)
!386 = !{!387, !388}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !385, file: !331, line: 412, baseType: !40, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !385, file: !331, line: 413, baseType: !340, size: 32, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !382, file: !331, line: 554, baseType: !390, size: 192, align: 64, offset: 128)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !391, line: 5, size: 192, align: 64, elements: !392)
!391 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!392 = !{!393, !394, !396}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !390, file: !391, line: 6, baseType: !40, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !390, file: !391, line: 7, baseType: !395, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !390, file: !391, line: 8, baseType: !395, size: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !382, file: !331, line: 555, baseType: !398, size: 64, offset: 320)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !85, line: 23, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !87, line: 31, baseType: !400)
!400 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !382, file: !331, line: 556, baseType: !398, size: 64, offset: 384)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !382, file: !331, line: 558, baseType: !98, size: 128, offset: 448)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !382, file: !331, line: 559, baseType: !7, size: 32, offset: 576)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !382, file: !331, line: 561, baseType: !398, size: 64, offset: 640)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !382, file: !331, line: 562, baseType: !398, size: 64, offset: 704)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !382, file: !331, line: 563, baseType: !398, size: 64, offset: 768)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !382, file: !331, line: 564, baseType: !398, size: 64, offset: 832)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !382, file: !331, line: 565, baseType: !409, size: 64, offset: 896)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !85, line: 22, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !87, line: 30, baseType: !44)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !382, file: !331, line: 566, baseType: !398, size: 64, offset: 960)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !382, file: !331, line: 568, baseType: !398, size: 64, offset: 1024)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !382, file: !331, line: 571, baseType: !23, size: 32, offset: 1088)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !382, file: !331, line: 572, baseType: !415, size: 64, offset: 1152)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !382, file: !331, line: 574, baseType: !417, size: 64, offset: 1216)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !331, line: 49, flags: DIFlagFwdDecl)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !382, file: !331, line: 576, baseType: !417, size: 64, offset: 1280)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !382, file: !331, line: 578, baseType: !40, size: 64, offset: 1344)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !382, file: !331, line: 588, baseType: !422, size: 512, align: 512, offset: 1536)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !331, line: 497, size: 512, align: 512, elements: !423)
!423 = !{!424, !425, !426, !427, !428, !429, !430, !431, !432}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !422, file: !331, line: 498, baseType: !398, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !422, file: !331, line: 499, baseType: !398, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !422, file: !331, line: 500, baseType: !398, size: 64, offset: 128)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !422, file: !331, line: 501, baseType: !340, size: 32, offset: 192)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !422, file: !331, line: 502, baseType: !340, size: 32, offset: 224)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !422, file: !331, line: 503, baseType: !40, size: 64, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !422, file: !331, line: 504, baseType: !40, size: 64, offset: 320)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !422, file: !331, line: 505, baseType: !40, size: 64, offset: 384)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !422, file: !331, line: 506, baseType: !433, size: 64, align: 64, offset: 448)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !331, line: 445, size: 64, align: 64, elements: !434)
!434 = !{!435, !436}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !433, file: !331, line: 446, baseType: !7, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !433, file: !331, line: 447, baseType: !7, size: 32, offset: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !330, file: !331, line: 798, baseType: !438, size: 384, offset: 3072)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !331, line: 592, size: 384, elements: !439)
!439 = !{!440, !441, !442, !443, !444, !445, !446}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !438, file: !331, line: 593, baseType: !98, size: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !438, file: !331, line: 594, baseType: !40, size: 64, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !438, file: !331, line: 595, baseType: !40, size: 64, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !438, file: !331, line: 596, baseType: !7, size: 32, offset: 256)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !438, file: !331, line: 597, baseType: !27, size: 16, offset: 288)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !438, file: !331, line: 598, baseType: !27, size: 16, offset: 304)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !438, file: !331, line: 600, baseType: !447, size: 64, offset: 320)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !330, file: !331, line: 799, baseType: !449, size: 1792, offset: 3456)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !331, line: 610, size: 1792, elements: !450)
!450 = !{!451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !546, !547}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !449, file: !331, line: 611, baseType: !390, size: 192, align: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !449, file: !331, line: 618, baseType: !398, size: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !449, file: !331, line: 619, baseType: !398, size: 64, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !449, file: !331, line: 620, baseType: !398, size: 64, offset: 320)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !449, file: !331, line: 621, baseType: !398, size: 64, offset: 384)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !449, file: !331, line: 622, baseType: !398, size: 64, offset: 448)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !449, file: !331, line: 629, baseType: !409, size: 64, offset: 512)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !449, file: !331, line: 630, baseType: !398, size: 64, offset: 576)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !449, file: !331, line: 631, baseType: !7, size: 32, offset: 640)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !449, file: !331, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !449, file: !331, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !449, file: !331, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !449, file: !331, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !449, file: !331, line: 662, baseType: !465, size: 512, offset: 704)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !135, line: 118, size: 512, elements: !466)
!466 = !{!467, !475, !476, !481, !542, !543, !544, !545}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !465, file: !135, line: 119, baseType: !468, size: 256)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !469, line: 9, size: 256, elements: !470)
!469 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!470 = !{!471, !472}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !468, file: !469, line: 10, baseType: !390, size: 192, align: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !468, file: !469, line: 11, baseType: !473, size: 64, offset: 192)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !474, line: 29, baseType: !409)
!474 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !465, file: !135, line: 120, baseType: !473, size: 64, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !465, file: !135, line: 121, baseType: !477, size: 64, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!134, !480}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !465, file: !135, line: 122, baseType: !482, size: 64, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !135, line: 159, size: 512, align: 512, elements: !484)
!484 = !{!485, !511, !512, !515, !525, !526, !537, !541}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !483, file: !135, line: 160, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !135, line: 215, size: 4608, align: 512, elements: !488)
!488 = !{!489, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !487, file: !135, line: 216, baseType: !490, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !69, line: 23, baseType: !68)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !487, file: !135, line: 217, baseType: !7, size: 32, offset: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !487, file: !135, line: 218, baseType: !7, size: 32, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !487, file: !135, line: 219, baseType: !7, size: 32, offset: 96)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !487, file: !135, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !487, file: !135, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !487, file: !135, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !487, file: !135, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !487, file: !135, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !487, file: !135, line: 226, baseType: !7, size: 32, offset: 160)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !487, file: !135, line: 227, baseType: !27, size: 16, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !487, file: !135, line: 228, baseType: !27, size: 16, offset: 208)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !487, file: !135, line: 229, baseType: !7, size: 32, offset: 224)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !487, file: !135, line: 235, baseType: !473, size: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !487, file: !135, line: 236, baseType: !480, size: 64, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !487, file: !135, line: 237, baseType: !473, size: 64, offset: 384)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !487, file: !135, line: 238, baseType: !480, size: 64, offset: 448)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !487, file: !135, line: 239, baseType: !508, size: 4096, align: 512, offset: 512)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 4096, align: 512, elements: !509)
!509 = !{!510}
!510 = !DISubrange(count: 8)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !483, file: !135, line: 161, baseType: !7, size: 32, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !483, file: !135, line: 162, baseType: !513, size: 32, offset: 96)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !26, line: 32, baseType: !514)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !38, line: 96, baseType: !23)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !483, file: !135, line: 163, baseType: !516, size: 32, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !517, line: 274, baseType: !518)
!517 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !517, line: 274, size: 32, elements: !519)
!519 = !{!520}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !518, file: !517, line: 274, baseType: !521, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !517, line: 69, baseType: !522)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !517, line: 64, size: 32, elements: !523)
!523 = !{!524}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !522, file: !517, line: 65, baseType: !7, size: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !483, file: !135, line: 164, baseType: !480, size: 64, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !483, file: !135, line: 165, baseType: !527, size: 128, offset: 256)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !469, line: 14, size: 128, elements: !528)
!528 = !{!529}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !527, file: !469, line: 15, baseType: !530, size: 128)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !391, line: 26, size: 128, elements: !531)
!531 = !{!532, !536}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !530, file: !391, line: 27, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !391, line: 12, size: 64, elements: !534)
!534 = !{!535}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !533, file: !391, line: 13, baseType: !395, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !530, file: !391, line: 28, baseType: !395, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !483, file: !135, line: 166, baseType: !538, size: 64, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!473}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !483, file: !135, line: 167, baseType: !473, size: 64, offset: 448)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !465, file: !135, line: 123, baseType: !84, size: 8, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !465, file: !135, line: 124, baseType: !84, size: 8, offset: 456)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !465, file: !135, line: 125, baseType: !84, size: 8, offset: 464)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !465, file: !135, line: 126, baseType: !84, size: 8, offset: 472)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !449, file: !331, line: 671, baseType: !465, size: 512, offset: 1216)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !449, file: !331, line: 679, baseType: !548, size: 64, offset: 1728)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !330, file: !331, line: 800, baseType: !550, size: 64, offset: 5248)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !552)
!552 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !331, line: 800, flags: DIFlagFwdDecl)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !330, file: !331, line: 809, baseType: !554, size: 64, offset: 5312)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !331, line: 70, flags: DIFlagFwdDecl)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !330, file: !331, line: 825, baseType: !557, size: 2048, align: 512, offset: 5632)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !331, line: 509, size: 2048, align: 512, elements: !558)
!558 = !{!559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !557, file: !331, line: 511, baseType: !398, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !557, file: !331, line: 512, baseType: !398, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !557, file: !331, line: 513, baseType: !398, size: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !557, file: !331, line: 514, baseType: !398, size: 64, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !557, file: !331, line: 515, baseType: !398, size: 64, offset: 256)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !557, file: !331, line: 516, baseType: !398, size: 64, offset: 320)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !557, file: !331, line: 518, baseType: !398, size: 64, offset: 384)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !557, file: !331, line: 519, baseType: !398, size: 64, offset: 448)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !557, file: !331, line: 520, baseType: !409, size: 64, offset: 512)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !557, file: !331, line: 522, baseType: !398, size: 64, offset: 576)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !557, file: !331, line: 523, baseType: !398, size: 64, offset: 640)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !557, file: !331, line: 524, baseType: !409, size: 64, offset: 704)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !557, file: !331, line: 526, baseType: !409, size: 64, offset: 768)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !557, file: !331, line: 527, baseType: !398, size: 64, offset: 832)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !557, file: !331, line: 529, baseType: !398, size: 64, offset: 896)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !557, file: !331, line: 530, baseType: !398, size: 64, offset: 960)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !557, file: !331, line: 531, baseType: !398, size: 64, offset: 1024)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !557, file: !331, line: 532, baseType: !398, size: 64, offset: 1088)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !557, file: !331, line: 533, baseType: !398, size: 64, offset: 1152)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !557, file: !331, line: 535, baseType: !398, size: 64, offset: 1216)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !557, file: !331, line: 536, baseType: !398, size: 64, offset: 1280)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !557, file: !331, line: 537, baseType: !398, size: 64, offset: 1344)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !557, file: !331, line: 538, baseType: !398, size: 64, offset: 1408)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !557, file: !331, line: 539, baseType: !398, size: 64, offset: 1472)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !557, file: !331, line: 540, baseType: !398, size: 64, offset: 1536)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !557, file: !331, line: 541, baseType: !398, size: 64, offset: 1600)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !557, file: !331, line: 542, baseType: !398, size: 64, offset: 1664)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !557, file: !331, line: 543, baseType: !398, size: 64, offset: 1728)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !330, file: !331, line: 833, baseType: !7, size: 32, offset: 7680)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !330, file: !331, line: 836, baseType: !7, size: 32, offset: 7712)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !330, file: !331, line: 837, baseType: !23, size: 32, offset: 7744)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !330, file: !331, line: 838, baseType: !591, size: 64, offset: 7808)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !593)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !594, line: 19, baseType: !595)
!594 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !594, line: 19, size: 64, elements: !596)
!596 = !{!597}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !595, file: !594, line: 19, baseType: !598, size: 64)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 64, elements: !599)
!599 = !{!600}
!600 = !DISubrange(count: 1)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !330, file: !331, line: 839, baseType: !602, size: 64, offset: 7872)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !330, file: !331, line: 840, baseType: !593, size: 64, offset: 7936)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !330, file: !331, line: 841, baseType: !21, size: 64, offset: 8000)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !330, file: !331, line: 843, baseType: !27, size: 16, offset: 8064)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !330, file: !331, line: 845, baseType: !27, size: 16, offset: 8080)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !330, file: !331, line: 848, baseType: !23, size: 32, offset: 8096)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !330, file: !331, line: 849, baseType: !609, size: 32, offset: 8128)
!609 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !331, line: 718, size: 32, elements: !610)
!610 = !{!611, !618}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !609, file: !331, line: 724, baseType: !612, size: 32)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !609, file: !331, line: 719, size: 32, elements: !613)
!613 = !{!614, !615, !616, !617}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !612, file: !331, line: 720, baseType: !84, size: 8)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !612, file: !331, line: 721, baseType: !84, size: 8, offset: 8)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !612, file: !331, line: 722, baseType: !84, size: 8, offset: 16)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !612, file: !331, line: 723, baseType: !84, size: 8, offset: 24)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !609, file: !331, line: 725, baseType: !340, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !330, file: !331, line: 850, baseType: !98, size: 128, offset: 8192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !330, file: !331, line: 851, baseType: !621, size: 64, offset: 8320)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !331, line: 60, flags: DIFlagFwdDecl)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !330, file: !331, line: 855, baseType: !40, size: 64, offset: 8384)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !330, file: !331, line: 856, baseType: !84, size: 8, offset: 8448)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !330, file: !331, line: 857, baseType: !84, size: 8, offset: 8456)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !330, file: !331, line: 858, baseType: !23, size: 32, offset: 8480)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !330, file: !331, line: 859, baseType: !98, size: 128, offset: 8512)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !330, file: !331, line: 860, baseType: !23, size: 32, offset: 8640)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !330, file: !331, line: 861, baseType: !98, size: 128, offset: 8704)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !330, file: !331, line: 873, baseType: !631, size: 256, offset: 8832)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !331, line: 376, size: 256, elements: !632)
!632 = !{!633, !634, !635, !636}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !631, file: !331, line: 381, baseType: !40, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !631, file: !331, line: 384, baseType: !400, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !631, file: !331, line: 389, baseType: !400, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !631, file: !331, line: 392, baseType: !400, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !330, file: !331, line: 875, baseType: !98, size: 128, offset: 9088)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !330, file: !331, line: 877, baseType: !639, size: 320, offset: 9216)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !640, line: 86, size: 320, elements: !641)
!640 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!641 = !{!642, !643, !644}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !639, file: !640, line: 87, baseType: !23, size: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !639, file: !640, line: 88, baseType: !98, size: 128, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !639, file: !640, line: 89, baseType: !98, size: 128, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !330, file: !331, line: 878, baseType: !390, size: 192, align: 64, offset: 9536)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !330, file: !331, line: 881, baseType: !647, size: 64, offset: 9728)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !163, line: 733, size: 10240, elements: !649)
!649 = !{!650, !5165}
!650 = !DIDerivedType(tag: DW_TAG_member, scope: !648, file: !163, line: 734, baseType: !651, size: 10240)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !648, file: !163, line: 734, size: 10240, elements: !652)
!652 = !{!653, !657, !671, !4986, !4987, !4988, !4989, !4990, !4991, !4998, !4999, !5000, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5039, !5040, !5102, !5145, !5146, !5147, !5150, !5151, !5152, !5155, !5156, !5157, !5163, !5164}
!653 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !163, line: 739, baseType: !654, size: 512, align: 512)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !651, file: !163, line: 739, size: 512, align: 512, elements: !655)
!655 = !{!656}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !654, file: !163, line: 747, baseType: !50, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !651, file: !163, line: 750, baseType: !658, size: 128, offset: 512)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !659, line: 218, size: 128, elements: !660)
!659 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!660 = !{!661, !669, !670}
!661 = !DIDerivedType(tag: DW_TAG_member, scope: !658, file: !659, line: 219, baseType: !662, size: 32)
!662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !658, file: !659, line: 219, size: 32, elements: !663)
!663 = !{!664, !665}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !662, file: !659, line: 220, baseType: !60, size: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !662, file: !659, line: 221, baseType: !666)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !659, line: 197, baseType: !667)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !659, line: 197, elements: !668)
!668 = !{}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !658, file: !659, line: 223, baseType: !7, size: 32, offset: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !658, file: !659, line: 224, baseType: !21, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !651, file: !163, line: 752, baseType: !672, size: 64, offset: 640)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!40, !675, !40, !40, !40, !40}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !276, line: 994, size: 1856, align: 64, elements: !677)
!677 = !{!678, !692, !693, !695, !702, !714, !715, !716, !1096, !1174, !1183, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985}
!678 = !DIDerivedType(tag: DW_TAG_member, scope: !676, file: !276, line: 995, baseType: !679, size: 128)
!679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !676, file: !276, line: 995, size: 128, elements: !680)
!680 = !{!681, !682, !691}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !679, file: !276, line: 996, baseType: !359, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !679, file: !276, line: 997, baseType: !683, size: 128, align: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !26, line: 232, size: 128, align: 64, elements: !684)
!684 = !{!685, !687}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !683, file: !26, line: 233, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !683, file: !26, line: 234, baseType: !688, size: 64, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{null, !686}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !679, file: !276, line: 998, baseType: !7, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !676, file: !276, line: 1005, baseType: !60, size: 32, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !676, file: !276, line: 1006, baseType: !694, size: 32, offset: 160)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !26, line: 156, baseType: !7)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !676, file: !276, line: 1007, baseType: !696, size: 64, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !697, line: 13, baseType: !698)
!697 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !26, line: 181, baseType: !699)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !26, line: 179, size: 64, elements: !700)
!700 = !{!701}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !699, file: !26, line: 180, baseType: !409, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !676, file: !276, line: 1008, baseType: !703, size: 256, offset: 256)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !704, line: 66, size: 256, elements: !705)
!704 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!705 = !{!706, !707, !708, !713}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !703, file: !704, line: 67, baseType: !696, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !703, file: !704, line: 68, baseType: !490, size: 32, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !703, file: !704, line: 70, baseType: !709, size: 32, offset: 96)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !710, line: 15, size: 32, elements: !711)
!710 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!711 = !{!712}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !709, file: !710, line: 20, baseType: !50, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !703, file: !704, line: 72, baseType: !98, size: 128, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !676, file: !276, line: 1009, baseType: !42, size: 64, offset: 512)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !676, file: !276, line: 1010, baseType: !7, size: 32, offset: 576)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !676, file: !276, line: 1011, baseType: !717, size: 256, offset: 640)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !276, line: 948, size: 256, elements: !718)
!718 = !{!719, !742, !1092, !1093, !1094, !1095}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !717, file: !276, line: 949, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !721, line: 34, baseType: !722)
!721 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !721, line: 25, size: 64, elements: !723)
!723 = !{!724}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !722, file: !721, line: 26, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !726, line: 27, baseType: !727)
!726 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !726, line: 13, size: 64, elements: !728)
!728 = !{!729, !741}
!729 = !DIDerivedType(tag: DW_TAG_member, scope: !727, file: !726, line: 14, baseType: !730, size: 32)
!730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !727, file: !726, line: 14, size: 32, elements: !731)
!731 = !{!732, !733}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !730, file: !726, line: 15, baseType: !50, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, scope: !730, file: !726, line: 16, baseType: !734, size: 32)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !730, file: !726, line: 16, size: 32, elements: !735)
!735 = !{!736, !737}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !734, file: !726, line: 18, baseType: !84, size: 8)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !734, file: !726, line: 19, baseType: !738, size: 24, offset: 8)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 24, elements: !739)
!739 = !{!740}
!740 = !DISubrange(count: 3)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !727, file: !726, line: 26, baseType: !72, size: 32, offset: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !717, file: !276, line: 950, baseType: !743, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !140, line: 59, size: 768, elements: !745)
!745 = !{!746, !747, !748, !749, !762, !763, !764, !765}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !744, file: !140, line: 61, baseType: !346, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !744, file: !140, line: 62, baseType: !7, size: 32, offset: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !744, file: !140, line: 63, baseType: !60, size: 32, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !744, file: !140, line: 65, baseType: !750, size: 256, offset: 128)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !751, size: 256, elements: !760)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !26, line: 194, size: 64, elements: !752)
!752 = !{!753}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !751, file: !26, line: 195, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !26, line: 198, size: 128, elements: !756)
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !755, file: !26, line: 199, baseType: !754, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !755, file: !26, line: 199, baseType: !759, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!760 = !{!761}
!761 = !DISubrange(count: 4)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !744, file: !140, line: 66, baseType: !751, size: 64, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !744, file: !140, line: 68, baseType: !55, size: 192, offset: 448)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !744, file: !140, line: 69, baseType: !683, size: 128, align: 64, offset: 640)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !744, file: !140, line: 70, baseType: !766, offset: 768)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !767, elements: !1090)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !140, line: 54, size: 128, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !767, file: !140, line: 55, baseType: !23, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !767, file: !140, line: 56, baseType: !771, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !773, line: 26, size: 1152, elements: !774)
!773 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!774 = !{!775, !788, !789, !790, !791, !795, !796, !797, !800, !1086, !1087, !1088, !1089}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !772, file: !773, line: 27, baseType: !776, size: 192)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !777, line: 19, size: 192, elements: !778)
!777 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!778 = !{!779, !786, !787}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !776, file: !777, line: 20, baseType: !780, size: 128)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !781, line: 296, size: 128, elements: !782)
!781 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!782 = !{!783, !784, !785}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !780, file: !781, line: 297, baseType: !60, size: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !780, file: !781, line: 299, baseType: !327, size: 32, offset: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !780, file: !781, line: 300, baseType: !21, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !776, file: !777, line: 21, baseType: !7, size: 32, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !776, file: !777, line: 22, baseType: !7, size: 32, offset: 160)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !772, file: !773, line: 28, baseType: !683, size: 128, align: 64, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !772, file: !773, line: 29, baseType: !7, size: 32, offset: 320)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !772, file: !773, line: 30, baseType: !329, size: 64, offset: 384)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !772, file: !773, line: 31, baseType: !792, size: 64, offset: 448)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !794, line: 325, flags: DIFlagFwdDecl)
!794 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!795 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !772, file: !773, line: 32, baseType: !7, size: 32, offset: 512)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !772, file: !773, line: 33, baseType: !771, size: 64, offset: 576)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !772, file: !773, line: 35, baseType: !798, size: 64, offset: 640)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !773, line: 17, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !772, file: !773, line: 37, baseType: !801, size: 64, offset: 704)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !803, line: 68, size: 4800, elements: !804)
!803 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!804 = !{!805, !827, !828, !829, !830, !831, !839, !846, !857, !858, !861, !862, !984, !985, !996, !1066, !1067, !1081, !1084}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !802, file: !803, line: 69, baseType: !806, size: 576)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !803, line: 23, size: 576, elements: !807)
!807 = !{!808, !809}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !806, file: !803, line: 24, baseType: !340, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, scope: !806, file: !803, line: 25, baseType: !810, size: 512, offset: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !806, file: !803, line: 25, size: 512, elements: !811)
!811 = !{!812, !821}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !810, file: !803, line: 26, baseType: !813, size: 480)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !814, size: 480, elements: !819)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !803, line: 17, size: 96, elements: !815)
!815 = !{!816, !817, !818}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !814, file: !803, line: 18, baseType: !340, size: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !814, file: !803, line: 19, baseType: !340, size: 32, offset: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !814, file: !803, line: 20, baseType: !340, size: 32, offset: 64)
!819 = !{!820}
!820 = !DISubrange(count: 5)
!821 = !DIDerivedType(tag: DW_TAG_member, scope: !810, file: !803, line: 27, baseType: !822, size: 128)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !810, file: !803, line: 27, size: 128, elements: !823)
!823 = !{!824, !826}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !822, file: !803, line: 28, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !822, file: !803, line: 29, baseType: !825, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !802, file: !803, line: 70, baseType: !806, size: 576, offset: 576)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !802, file: !803, line: 71, baseType: !806, size: 576, offset: 1152)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !802, file: !803, line: 72, baseType: !801, size: 64, offset: 1728)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !802, file: !803, line: 73, baseType: !23, size: 32, offset: 1792)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !802, file: !803, line: 74, baseType: !832, size: 32, offset: 1824)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !833, line: 23, baseType: !834)
!833 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !833, line: 21, size: 32, elements: !835)
!835 = !{!836}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !834, file: !833, line: 22, baseType: !837, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !26, line: 37, baseType: !838)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !38, line: 49, baseType: !7)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !802, file: !803, line: 75, baseType: !840, size: 32, offset: 1856)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !833, line: 28, baseType: !841)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !833, line: 26, size: 32, elements: !842)
!842 = !{!843}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !841, file: !833, line: 27, baseType: !844, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !26, line: 38, baseType: !845)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !38, line: 50, baseType: !7)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !802, file: !803, line: 76, baseType: !847, size: 192, offset: 1920)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !848, line: 9, size: 192, elements: !849)
!848 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!849 = !{!850, !851, !855, !856}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !847, file: !848, line: 10, baseType: !696, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !847, file: !848, line: 11, baseType: !852, size: 64, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !854)
!854 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !848, line: 7, flags: DIFlagFwdDecl)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !847, file: !848, line: 12, baseType: !7, size: 32, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !847, file: !848, line: 13, baseType: !346, size: 32, offset: 160)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !802, file: !803, line: 77, baseType: !40, size: 64, offset: 2112)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !802, file: !803, line: 80, baseType: !859, size: 8, offset: 2176)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !26, line: 35, baseType: !860)
!860 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !802, file: !803, line: 88, baseType: !98, size: 128, offset: 2240)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !802, file: !803, line: 89, baseType: !863, size: 64, offset: 2368)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !865, line: 195, size: 1728, elements: !866)
!865 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!866 = !{!867, !868, !873, !878, !887, !890, !891, !898, !899, !900, !901, !904, !905, !906, !908, !909, !948, !969}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !864, file: !865, line: 196, baseType: !346, size: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !864, file: !865, line: 197, baseType: !869, size: 32, offset: 32)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !865, line: 28, baseType: !870)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !26, line: 104, baseType: !871)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !85, line: 20, baseType: !872)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !87, line: 26, baseType: !23)
!873 = !DIDerivedType(tag: DW_TAG_member, scope: !864, file: !865, line: 198, baseType: !874, size: 192, offset: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !864, file: !865, line: 198, size: 192, elements: !875)
!875 = !{!876, !877}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !874, file: !865, line: 199, baseType: !98, size: 128)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !874, file: !865, line: 200, baseType: !390, size: 192, align: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !864, file: !865, line: 205, baseType: !879, size: 320, offset: 256)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !880, line: 48, size: 320, elements: !881)
!880 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!881 = !{!882, !883, !884, !885, !886}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !879, file: !880, line: 49, baseType: !696, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !879, file: !880, line: 55, baseType: !696, size: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !879, file: !880, line: 57, baseType: !709, size: 32, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !879, file: !880, line: 59, baseType: !490, size: 32, offset: 160)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !879, file: !880, line: 60, baseType: !98, size: 128, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !864, file: !865, line: 206, baseType: !888, size: 64, offset: 576)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !865, line: 206, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !864, file: !865, line: 207, baseType: !21, size: 64, offset: 640)
!891 = !DIDerivedType(tag: DW_TAG_member, scope: !864, file: !865, line: 208, baseType: !892, size: 64, offset: 704)
!892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !864, file: !865, line: 208, size: 64, elements: !893)
!893 = !{!894, !897}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !892, file: !865, line: 209, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !896, line: 8, baseType: !410)
!896 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!897 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !892, file: !865, line: 210, baseType: !895, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !864, file: !865, line: 212, baseType: !895, size: 64, offset: 768)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !864, file: !865, line: 213, baseType: !832, size: 32, offset: 832)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !864, file: !865, line: 214, baseType: !840, size: 32, offset: 864)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !864, file: !865, line: 215, baseType: !902, size: 32, offset: 896)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !865, line: 31, baseType: !903)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !26, line: 110, baseType: !340)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !864, file: !865, line: 216, baseType: !27, size: 16, offset: 928)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !864, file: !865, line: 217, baseType: !27, size: 16, offset: 944)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !864, file: !865, line: 221, baseType: !907, size: 16, offset: 960)
!907 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !864, file: !865, line: 228, baseType: !40, size: 64, offset: 1024)
!909 = !DIDerivedType(tag: DW_TAG_member, scope: !864, file: !865, line: 245, baseType: !910, size: 320, offset: 1088)
!910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !864, file: !865, line: 245, size: 320, elements: !911)
!911 = !{!912, !939}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !910, file: !865, line: 246, baseType: !913, size: 320)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !865, line: 114, size: 320, elements: !914)
!914 = !{!915, !916, !928, !931, !938}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !913, file: !865, line: 116, baseType: !40, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, scope: !913, file: !865, line: 117, baseType: !917, size: 64, offset: 64)
!917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !913, file: !865, line: 117, size: 64, elements: !918)
!918 = !{!919, !927}
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !917, file: !865, line: 118, baseType: !920, size: 64)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !917, file: !865, line: 118, size: 64, elements: !921)
!921 = !{!922, !923}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !920, file: !865, line: 120, baseType: !94, size: 16)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !920, file: !865, line: 121, baseType: !924, size: 48, offset: 16)
!924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 48, elements: !925)
!925 = !{!926}
!926 = !DISubrange(count: 6)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !917, file: !865, line: 127, baseType: !40, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !913, file: !865, line: 129, baseType: !929, size: 64, offset: 128)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !865, line: 102, flags: DIFlagFwdDecl)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !913, file: !865, line: 130, baseType: !932, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !865, line: 108, size: 192, elements: !934)
!934 = !{!935, !936, !937}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !933, file: !865, line: 109, baseType: !683, size: 128, align: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !933, file: !865, line: 110, baseType: !346, size: 32, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !933, file: !865, line: 111, baseType: !859, size: 8, offset: 160)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !913, file: !865, line: 131, baseType: !17, size: 64, offset: 256)
!939 = !DIDerivedType(tag: DW_TAG_member, scope: !910, file: !865, line: 247, baseType: !940, size: 320)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !910, file: !865, line: 247, size: 320, elements: !941)
!941 = !{!942, !943, !944, !945, !946}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !940, file: !865, line: 248, baseType: !40, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !940, file: !865, line: 249, baseType: !40, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !940, file: !865, line: 250, baseType: !929, size: 64, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !940, file: !865, line: 251, baseType: !932, size: 64, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !940, file: !865, line: 252, baseType: !947, size: 64, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, scope: !864, file: !865, line: 260, baseType: !949, size: 256, offset: 1408)
!949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !864, file: !865, line: 260, size: 256, elements: !950)
!950 = !{!951, !957}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !949, file: !865, line: 261, baseType: !952, size: 256)
!952 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !865, line: 134, size: 256, elements: !953)
!953 = !{!954, !955}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !952, file: !865, line: 135, baseType: !21, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !952, file: !865, line: 136, baseType: !956, size: 256)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 256, elements: !760)
!957 = !DIDerivedType(tag: DW_TAG_member, scope: !949, file: !865, line: 262, baseType: !958, size: 256)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !949, file: !865, line: 262, size: 256, elements: !959)
!959 = !{!960, !961}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !958, file: !865, line: 264, baseType: !98, size: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !958, file: !865, line: 265, baseType: !962, size: 128, offset: 128)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !963, line: 22, size: 128, elements: !964)
!963 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!964 = !{!965, !968}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !962, file: !963, line: 23, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !963, line: 23, flags: DIFlagFwdDecl)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !962, file: !963, line: 24, baseType: !40, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !864, file: !865, line: 280, baseType: !970, size: 64, offset: 1664)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !865, line: 176, size: 192, elements: !972)
!972 = !{!973, !982, !983}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !971, file: !865, line: 177, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !865, line: 171, baseType: !975)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{!23, !863, !978, !980, !863}
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !930)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !952)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !971, file: !865, line: 178, baseType: !863, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !971, file: !865, line: 179, baseType: !929, size: 64, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !802, file: !803, line: 90, baseType: !879, size: 320, offset: 2432)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !802, file: !803, line: 97, baseType: !986, size: 256, offset: 2752)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !109, line: 98, size: 256, elements: !987)
!987 = !{!988, !989, !990}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !986, file: !109, line: 99, baseType: !696, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !986, file: !109, line: 100, baseType: !98, size: 128, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !986, file: !109, line: 101, baseType: !991, size: 64, offset: 192)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !109, line: 21, baseType: !992)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{null, !995}
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !802, file: !803, line: 99, baseType: !997, size: 768, offset: 3008)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !13, line: 199, size: 768, elements: !998)
!998 = !{!999, !1004}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !997, file: !13, line: 200, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!23, !1003}
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !997, file: !13, line: 201, baseType: !1005, size: 704, offset: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !13, line: 193, size: 704, elements: !1006)
!1006 = !{!1007, !1065}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1005, file: !13, line: 195, baseType: !1008, size: 640)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !13, line: 173, size: 640, elements: !1009)
!1009 = !{!1010, !1022, !1034, !1035, !1055, !1056, !1058, !1064}
!1010 = !DIDerivedType(tag: DW_TAG_member, scope: !1008, file: !13, line: 174, baseType: !1011, size: 192)
!1011 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1008, file: !13, line: 174, size: 192, elements: !1012)
!1012 = !{!1013, !1021}
!1013 = !DIDerivedType(tag: DW_TAG_member, scope: !1011, file: !13, line: 175, baseType: !1014, size: 192)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1011, file: !13, line: 175, size: 192, elements: !1015)
!1015 = !{!1016, !1017, !1018, !1019, !1020}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1014, file: !13, line: 176, baseType: !34, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1014, file: !13, line: 177, baseType: !23, size: 32, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1014, file: !13, line: 178, baseType: !23, size: 32, offset: 96)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1014, file: !13, line: 179, baseType: !23, size: 32, offset: 128)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1014, file: !13, line: 180, baseType: !23, size: 32, offset: 160)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1011, file: !13, line: 182, baseType: !683, size: 128, align: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1008, file: !13, line: 184, baseType: !1023, size: 64, offset: 192)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1025, line: 26, size: 256, elements: !1026)
!1025 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1024, file: !1025, line: 27, baseType: !7, size: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1024, file: !1025, line: 28, baseType: !1029, size: 192, offset: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1030, line: 43, size: 192, elements: !1031)
!1030 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1031 = !{!1032, !1033}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1029, file: !1030, line: 44, baseType: !490, size: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1029, file: !1030, line: 45, baseType: !98, size: 128, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1008, file: !13, line: 185, baseType: !34, size: 64, offset: 256)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1008, file: !13, line: 186, baseType: !1036, size: 64, offset: 320)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !13, line: 204, size: 960, elements: !1038)
!1038 = !{!1039, !1040, !1044, !1051}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1037, file: !13, line: 205, baseType: !997, size: 768)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1037, file: !13, line: 206, baseType: !1041, size: 64, offset: 768)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!1003, !1036}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1037, file: !13, line: 207, baseType: !1045, size: 64, offset: 832)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{null, !1048, !1049, !1050}
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1037, file: !13, line: 209, baseType: !1052, size: 64, offset: 896)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!23, !1048, !34}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1008, file: !13, line: 187, baseType: !1003, size: 64, offset: 384)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1008, file: !13, line: 188, baseType: !1057, size: 64, offset: 448)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1008, file: !13, line: 189, baseType: !1059, size: 64, offset: 512)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !13, line: 157, size: 256, elements: !1061)
!1061 = !{!1062, !1063}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1060, file: !13, line: 158, baseType: !390, size: 192, align: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1060, file: !13, line: 159, baseType: !1048, size: 64, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1008, file: !13, line: 190, baseType: !751, size: 64, offset: 576)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1005, file: !13, line: 196, baseType: !533, size: 64, offset: 640)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !802, file: !803, line: 100, baseType: !1048, size: 64, offset: 3776)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !802, file: !803, line: 102, baseType: !1068, size: 64, offset: 3840)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !803, line: 107, size: 1152, elements: !1070)
!1070 = !{!1071, !1072, !1073, !1074, !1075, !1079}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1069, file: !803, line: 108, baseType: !755, size: 128)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1069, file: !803, line: 109, baseType: !801, size: 64, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1069, file: !803, line: 110, baseType: !832, size: 32, offset: 192)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1069, file: !803, line: 111, baseType: !50, size: 32, offset: 224)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1069, file: !803, line: 112, baseType: !1076, size: 640, offset: 256)
!1076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 640, elements: !1077)
!1077 = !{!1078}
!1078 = !DISubrange(count: 10)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1069, file: !803, line: 113, baseType: !1080, size: 256, offset: 896)
!1080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 256, elements: !760)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !802, file: !803, line: 103, baseType: !1082, size: 640, offset: 3904)
!1082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1083, size: 640, elements: !1077)
!1083 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !802, file: !803, line: 104, baseType: !1085, size: 256, offset: 4544)
!1085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1083, size: 256, elements: !760)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !772, file: !773, line: 38, baseType: !1068, size: 64, offset: 768)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !772, file: !773, line: 39, baseType: !23, size: 32, offset: 832)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !772, file: !773, line: 40, baseType: !847, size: 192, offset: 896)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !772, file: !773, line: 42, baseType: !23, size: 32, offset: 1088)
!1090 = !{!1091}
!1091 = !DISubrange(count: -1)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !717, file: !276, line: 951, baseType: !139, size: 32, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !717, file: !276, line: 952, baseType: !832, size: 32, offset: 160)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !717, file: !276, line: 952, baseType: !832, size: 32, offset: 192)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !717, file: !276, line: 953, baseType: !23, size: 32, offset: 224)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !676, file: !276, line: 1012, baseType: !1097, size: 64, offset: 896)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1099)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1100, line: 110, size: 1472, elements: !1101)
!1100 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1101 = !{!1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1159, !1160, !1161, !1169}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1099, file: !1100, line: 111, baseType: !696, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1099, file: !1100, line: 112, baseType: !832, size: 32, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1099, file: !1100, line: 113, baseType: !840, size: 32, offset: 96)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1099, file: !1100, line: 114, baseType: !832, size: 32, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1099, file: !1100, line: 115, baseType: !840, size: 32, offset: 160)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1099, file: !1100, line: 116, baseType: !832, size: 32, offset: 192)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1099, file: !1100, line: 117, baseType: !840, size: 32, offset: 224)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1099, file: !1100, line: 118, baseType: !832, size: 32, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1099, file: !1100, line: 119, baseType: !840, size: 32, offset: 288)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1099, file: !1100, line: 120, baseType: !7, size: 32, offset: 320)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1099, file: !1100, line: 121, baseType: !1113, size: 64, offset: 384)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1114, line: 24, baseType: !1115)
!1114 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1114, line: 24, size: 64, elements: !1116)
!1116 = !{!1117}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1115, file: !1114, line: 24, baseType: !398, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1099, file: !1100, line: 122, baseType: !1113, size: 64, offset: 448)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1099, file: !1100, line: 123, baseType: !1113, size: 64, offset: 512)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1099, file: !1100, line: 124, baseType: !1113, size: 64, offset: 576)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1099, file: !1100, line: 125, baseType: !1113, size: 64, offset: 640)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1099, file: !1100, line: 127, baseType: !88, size: 8, offset: 704)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1099, file: !1100, line: 129, baseType: !863, size: 64, offset: 768)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1099, file: !1100, line: 130, baseType: !863, size: 64, offset: 832)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1099, file: !1100, line: 131, baseType: !863, size: 64, offset: 896)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1099, file: !1100, line: 132, baseType: !863, size: 64, offset: 960)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1099, file: !1100, line: 135, baseType: !21, size: 64, offset: 1024)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1099, file: !1100, line: 137, baseType: !1129, size: 64, offset: 1088)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1131, line: 14, size: 1088, elements: !1132)
!1131 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1132 = !{!1133, !1134, !1143, !1144, !1145, !1146, !1147, !1148}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1130, file: !1131, line: 15, baseType: !346, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1130, file: !1131, line: 17, baseType: !1135, size: 320, offset: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1136, line: 22, size: 320, elements: !1137)
!1136 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1137 = !{!1138, !1139, !1140, !1141}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1135, file: !1136, line: 23, baseType: !490, size: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1135, file: !1136, line: 24, baseType: !409, size: 64, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1135, file: !1136, line: 26, baseType: !98, size: 128, offset: 128)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1135, file: !1136, line: 28, baseType: !1142, size: 64, offset: 256)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1130, file: !1131, line: 19, baseType: !40, size: 64, offset: 384)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1130, file: !1131, line: 20, baseType: !696, size: 64, offset: 448)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1130, file: !1131, line: 23, baseType: !755, size: 128, offset: 512)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1130, file: !1131, line: 24, baseType: !832, size: 32, offset: 640)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1130, file: !1131, line: 29, baseType: !696, size: 64, offset: 704)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1130, file: !1131, line: 36, baseType: !1149, size: 320, offset: 768)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1150, line: 15, size: 320, elements: !1151)
!1150 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1151 = !{!1152, !1153, !1154, !1155, !1156, !1157, !1158}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1149, file: !1150, line: 16, baseType: !490, size: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1149, file: !1150, line: 18, baseType: !23, size: 32, offset: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1149, file: !1150, line: 19, baseType: !23, size: 32, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1149, file: !1150, line: 20, baseType: !23, size: 32, offset: 96)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1149, file: !1150, line: 21, baseType: !23, size: 32, offset: 128)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1149, file: !1150, line: 22, baseType: !40, size: 64, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1149, file: !1150, line: 23, baseType: !40, size: 64, offset: 256)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1099, file: !1100, line: 138, baseType: !801, size: 64, offset: 1152)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1099, file: !1100, line: 139, baseType: !1068, size: 64, offset: 1216)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1099, file: !1100, line: 140, baseType: !1162, size: 64, offset: 1280)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1100, line: 25, size: 64, elements: !1164)
!1164 = !{!1165, !1166, !1167}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1163, file: !1100, line: 26, baseType: !50, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1163, file: !1100, line: 27, baseType: !23, size: 32, offset: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1163, file: !1100, line: 28, baseType: !1168, offset: 64)
!1168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, elements: !1090)
!1169 = !DIDerivedType(tag: DW_TAG_member, scope: !1099, file: !1100, line: 142, baseType: !1170, size: 128, offset: 1344)
!1170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1099, file: !1100, line: 142, size: 128, elements: !1171)
!1171 = !{!1172, !1173}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1170, file: !1100, line: 143, baseType: !23, size: 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1170, file: !1100, line: 144, baseType: !683, size: 128, align: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !676, file: !276, line: 1013, baseType: !1175, size: 256, offset: 960)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !276, line: 970, size: 256, elements: !1176)
!1176 = !{!1177, !1178, !1179, !1180, !1181, !1182}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1175, file: !276, line: 971, baseType: !40, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1175, file: !276, line: 972, baseType: !7, size: 32, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1175, file: !276, line: 973, baseType: !7, size: 32, offset: 96)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1175, file: !276, line: 974, baseType: !7, size: 32, offset: 128)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1175, file: !276, line: 975, baseType: !7, size: 32, offset: 160)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1175, file: !276, line: 976, baseType: !42, size: 64, offset: 192)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !676, file: !276, line: 1014, baseType: !1184, size: 128, offset: 1216)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1185, line: 8, size: 128, elements: !1186)
!1185 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1186 = !{!1187, !4976}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1184, file: !1185, line: 9, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1190, line: 70, size: 256, elements: !1191)
!1190 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1191 = !{!1192, !4973, !4974, !4975}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1189, file: !1190, line: 71, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1195, line: 82, size: 1536, elements: !1196)
!1195 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1196 = !{!1197, !1198, !1203, !1211, !1212, !1227, !4941, !4943, !4956, !4957, !4958, !4959, !4960, !4965, !4966, !4967}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1194, file: !1195, line: 84, baseType: !7, size: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1194, file: !1195, line: 85, baseType: !1199, size: 32, offset: 32)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !517, line: 275, baseType: !1200)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !517, line: 275, size: 32, elements: !1201)
!1201 = !{!1202}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1200, file: !517, line: 275, baseType: !521, size: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1194, file: !1195, line: 86, baseType: !1204, size: 128, offset: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1205, line: 38, size: 128, elements: !1206)
!1205 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1206 = !{!1207, !1209}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1204, file: !1205, line: 39, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1204, file: !1205, line: 39, baseType: !1210, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1194, file: !1195, line: 87, baseType: !1193, size: 64, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1194, file: !1195, line: 88, baseType: !1213, size: 128, offset: 256)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1195, line: 49, size: 128, elements: !1214)
!1214 = !{!1215, !1224}
!1215 = !DIDerivedType(tag: DW_TAG_member, scope: !1213, file: !1195, line: 50, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1213, file: !1195, line: 50, size: 64, elements: !1217)
!1217 = !{!1218, !1223}
!1218 = !DIDerivedType(tag: DW_TAG_member, scope: !1216, file: !1195, line: 51, baseType: !1219, size: 64)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1216, file: !1195, line: 51, size: 64, elements: !1220)
!1220 = !{!1221, !1222}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1219, file: !1195, line: 52, baseType: !340, size: 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1219, file: !1195, line: 52, baseType: !340, size: 32, offset: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1216, file: !1195, line: 54, baseType: !398, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1213, file: !1195, line: 56, baseType: !1225, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1194, file: !1195, line: 89, baseType: !1228, size: 64, offset: 384)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !276, line: 641, size: 4800, elements: !1230)
!1230 = !{!1231, !1232, !1233, !1234, !1235, !1236, !1237, !1240, !1241, !1428, !4756, !4757, !4758, !4759, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4923, !4926, !4927, !4928, !4937, !4938, !4939, !4940}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1229, file: !276, line: 642, baseType: !25, size: 16)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1229, file: !276, line: 643, baseType: !27, size: 16, offset: 16)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1229, file: !276, line: 644, baseType: !832, size: 32, offset: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1229, file: !276, line: 645, baseType: !98, size: 128, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1229, file: !276, line: 646, baseType: !840, size: 32, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1229, file: !276, line: 647, baseType: !7, size: 32, offset: 224)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1229, file: !276, line: 650, baseType: !1238, size: 64, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !276, line: 607, flags: DIFlagFwdDecl)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1229, file: !276, line: 651, baseType: !1238, size: 64, offset: 320)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1229, file: !276, line: 654, baseType: !1242, size: 64, offset: 384)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1244)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !276, line: 1966, size: 2048, align: 512, elements: !1245)
!1245 = !{!1246, !1250, !1263, !1269, !1273, !1277, !1281, !1285, !1289, !1293, !1297, !1298, !1304, !1308, !1345, !1376, !1383, !1389, !1393, !1397, !1401, !1405, !1409, !1415, !1419}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1244, file: !276, line: 1967, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!1193, !1228, !1193, !7}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1244, file: !276, line: 1968, baseType: !1251, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!17, !1193, !1228, !1254}
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1256, line: 10, size: 128, elements: !1257)
!1256 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1257 = !{!1258, !1262}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1255, file: !1256, line: 11, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{null, !21}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1255, file: !1256, line: 12, baseType: !21, size: 64, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1244, file: !276, line: 1969, baseType: !1264, size: 64, offset: 128)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!23, !1267, !1228, !23}
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1114, line: 42, flags: DIFlagFwdDecl)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1244, file: !276, line: 1970, baseType: !1270, size: 64, offset: 192)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!1238, !1228, !23, !859}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1244, file: !276, line: 1972, baseType: !1274, size: 64, offset: 256)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!23, !1193, !947, !23}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1244, file: !276, line: 1974, baseType: !1278, size: 64, offset: 320)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!23, !1267, !1228, !1193, !25, !859}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1244, file: !276, line: 1976, baseType: !1282, size: 64, offset: 384)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!23, !1193, !1228, !1193}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1244, file: !276, line: 1977, baseType: !1286, size: 64, offset: 448)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!23, !1228, !1193}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1244, file: !276, line: 1978, baseType: !1290, size: 64, offset: 512)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!23, !1267, !1228, !1193, !17}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1244, file: !276, line: 1980, baseType: !1294, size: 64, offset: 576)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!23, !1267, !1228, !1193, !25}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1244, file: !276, line: 1982, baseType: !1286, size: 64, offset: 640)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1244, file: !276, line: 1983, baseType: !1299, size: 64, offset: 704)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!23, !1267, !1228, !1193, !25, !1302}
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !26, line: 21, baseType: !1303)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !26, line: 18, baseType: !340)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1244, file: !276, line: 1985, baseType: !1305, size: 64, offset: 768)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!23, !1267, !1228, !1193, !1228, !1193, !7}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1244, file: !276, line: 1987, baseType: !1309, size: 64, offset: 832)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!23, !1267, !1193, !1312}
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !276, line: 226, size: 640, elements: !1314)
!1314 = !{!1315, !1316, !1317, !1327, !1336, !1337, !1342, !1343, !1344}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1313, file: !276, line: 227, baseType: !7, size: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1313, file: !276, line: 228, baseType: !25, size: 16, offset: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, scope: !1313, file: !276, line: 241, baseType: !1318, size: 32, offset: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1313, file: !276, line: 241, size: 32, elements: !1319)
!1319 = !{!1320, !1321}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1318, file: !276, line: 242, baseType: !832, size: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1318, file: !276, line: 243, baseType: !1322, size: 32)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1323, line: 16, baseType: !1324)
!1323 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1323, line: 14, size: 32, elements: !1325)
!1325 = !{!1326}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1324, file: !1323, line: 15, baseType: !837, size: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, scope: !1313, file: !276, line: 245, baseType: !1328, size: 32, offset: 96)
!1328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1313, file: !276, line: 245, size: 32, elements: !1329)
!1329 = !{!1330, !1331}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1328, file: !276, line: 246, baseType: !840, size: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1328, file: !276, line: 247, baseType: !1332, size: 32)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1323, line: 20, baseType: !1333)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1323, line: 18, size: 32, elements: !1334)
!1334 = !{!1335}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1333, file: !1323, line: 19, baseType: !844, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1313, file: !276, line: 249, baseType: !42, size: 64, offset: 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1313, file: !276, line: 250, baseType: !1338, size: 128, offset: 192)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !896, line: 13, size: 128, elements: !1339)
!1339 = !{!1340, !1341}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1338, file: !896, line: 14, baseType: !895, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1338, file: !896, line: 15, baseType: !1083, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1313, file: !276, line: 251, baseType: !1338, size: 128, offset: 320)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1313, file: !276, line: 252, baseType: !1338, size: 128, offset: 448)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1313, file: !276, line: 259, baseType: !675, size: 64, offset: 576)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1244, file: !276, line: 1988, baseType: !1346, size: 64, offset: 896)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!23, !1267, !1349, !1351, !340, !7}
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1184)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1353, line: 22, size: 1280, elements: !1354)
!1353 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1354 = !{!1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1352, file: !1353, line: 23, baseType: !340, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1352, file: !1353, line: 24, baseType: !25, size: 16, offset: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1352, file: !1353, line: 25, baseType: !7, size: 32, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1352, file: !1353, line: 26, baseType: !903, size: 32, offset: 96)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1352, file: !1353, line: 27, baseType: !398, size: 64, offset: 128)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1352, file: !1353, line: 28, baseType: !398, size: 64, offset: 192)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1352, file: !1353, line: 41, baseType: !398, size: 64, offset: 256)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1352, file: !1353, line: 42, baseType: !1302, size: 32, offset: 320)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1352, file: !1353, line: 43, baseType: !1302, size: 32, offset: 352)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1352, file: !1353, line: 44, baseType: !832, size: 32, offset: 384)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1352, file: !1353, line: 45, baseType: !840, size: 32, offset: 416)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1352, file: !1353, line: 46, baseType: !42, size: 64, offset: 448)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1352, file: !1353, line: 47, baseType: !1338, size: 128, offset: 512)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1352, file: !1353, line: 48, baseType: !1338, size: 128, offset: 640)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1352, file: !1353, line: 49, baseType: !1338, size: 128, offset: 768)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1352, file: !1353, line: 50, baseType: !1338, size: 128, offset: 896)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1352, file: !1353, line: 51, baseType: !398, size: 64, offset: 1024)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1352, file: !1353, line: 52, baseType: !398, size: 64, offset: 1088)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1352, file: !1353, line: 53, baseType: !340, size: 32, offset: 1152)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1352, file: !1353, line: 54, baseType: !340, size: 32, offset: 1184)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1352, file: !1353, line: 55, baseType: !398, size: 64, offset: 1216)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1244, file: !276, line: 1990, baseType: !1377, size: 64, offset: 960)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!1380, !1193, !947, !36}
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !26, line: 66, baseType: !1381)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !38, line: 73, baseType: !1382)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !38, line: 15, baseType: !1083)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1244, file: !276, line: 1991, baseType: !1384, size: 64, offset: 1024)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!23, !1228, !1387, !398, !398}
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !276, line: 55, flags: DIFlagFwdDecl)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1244, file: !276, line: 1993, baseType: !1390, size: 64, offset: 1088)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!23, !1228, !23}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1244, file: !276, line: 1994, baseType: !1394, size: 64, offset: 1152)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!23, !1228, !1193, !675, !7, !25}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1244, file: !276, line: 1997, baseType: !1398, size: 64, offset: 1216)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!23, !1267, !1228, !675, !25}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1244, file: !276, line: 1999, baseType: !1402, size: 64, offset: 1280)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!1238, !1267, !1193, !23}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1244, file: !276, line: 2001, baseType: !1406, size: 64, offset: 1344)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!23, !1267, !1193, !1238, !23}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1244, file: !276, line: 2003, baseType: !1410, size: 64, offset: 1408)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!23, !1267, !1193, !1413}
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !276, line: 76, flags: DIFlagFwdDecl)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1244, file: !276, line: 2005, baseType: !1416, size: 64, offset: 1472)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!23, !1193, !1413}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1244, file: !276, line: 2006, baseType: !1420, size: 64, offset: 1536)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!1423, !1228}
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !276, line: 3192, size: 192, elements: !1425)
!1425 = !{!1426, !1427}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1424, file: !276, line: 3193, baseType: !780, size: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1424, file: !276, line: 3194, baseType: !340, size: 32, offset: 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1229, file: !276, line: 655, baseType: !1429, size: 64, offset: 448)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !276, line: 1190, size: 10752, elements: !1431)
!1431 = !{!1432, !1433, !1434, !1435, !1436, !1437, !4220, !4352, !4392, !4475, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4492, !4496, !4497, !4498, !4501, !4559, !4562, !4563, !4564, !4605, !4627, !4628, !4629, !4630, !4631, !4632, !4635, !4639, !4648, !4649, !4650, !4651, !4710, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1430, file: !276, line: 1191, baseType: !98, size: 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1430, file: !276, line: 1192, baseType: !1302, size: 32, offset: 128)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1430, file: !276, line: 1193, baseType: !88, size: 8, offset: 160)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1430, file: !276, line: 1194, baseType: !40, size: 64, offset: 192)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1430, file: !276, line: 1195, baseType: !42, size: 64, offset: 256)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1430, file: !276, line: 1196, baseType: !1438, size: 64, offset: 320)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !276, line: 2366, size: 576, elements: !1440)
!1440 = !{!1441, !1442, !1443, !1450, !1454, !1458, !1462, !4208, !4209, !4210, !4212, !4213, !4214, !4216, !4217, !4218, !4219}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1439, file: !276, line: 2367, baseType: !17, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1439, file: !276, line: 2368, baseType: !23, size: 32, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1439, file: !276, line: 2376, baseType: !1444, size: 64, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!23, !1447}
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1449, line: 32, flags: DIFlagFwdDecl)
!1449 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1439, file: !276, line: 2377, baseType: !1451, size: 64, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1453)
!1453 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !276, line: 75, flags: DIFlagFwdDecl)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1439, file: !276, line: 2378, baseType: !1455, size: 64, offset: 256)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!1193, !1438, !23, !17, !21}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1439, file: !276, line: 2380, baseType: !1459, size: 64, offset: 320)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{null, !1429}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1439, file: !276, line: 2381, baseType: !1463, size: 64, offset: 384)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !148, line: 402, size: 9216, align: 512, elements: !1465)
!1465 = !{!1466, !1467, !1468, !1472, !2776, !2802, !2803, !2804, !2805, !2809, !2812, !2813, !2814, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2880, !2884, !2904, !2924, !2925, !2926, !2927, !2936, !2959, !2960, !2963, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2977, !2978, !3066, !3074, !3075, !3076, !3078, !4186, !4187, !4196, !4197, !4198, !4199, !4201, !4202, !4203, !4204, !4205, !4206, !4207}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1464, file: !148, line: 403, baseType: !147, size: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1464, file: !148, line: 406, baseType: !98, size: 128, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1464, file: !148, line: 409, baseType: !1469, size: 448, offset: 192)
!1469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 448, elements: !1470)
!1470 = !{!1471}
!1471 = !DISubrange(count: 56)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1464, file: !148, line: 417, baseType: !1473, size: 768, offset: 640)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !148, line: 45, size: 768, elements: !1474)
!1474 = !{!1475, !2770, !2771, !2772, !2775}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1473, file: !148, line: 46, baseType: !1476, size: 512)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1477, line: 64, size: 512, elements: !1478)
!1477 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1478 = !{!1479, !1480, !1481, !1483, !1527, !2618, !2760, !2765, !2766, !2767, !2768, !2769}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1476, file: !1477, line: 65, baseType: !17, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1476, file: !1477, line: 66, baseType: !98, size: 128, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1476, file: !1477, line: 67, baseType: !1482, size: 64, offset: 192)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1476, file: !1477, line: 68, baseType: !1484, size: 64, offset: 256)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1477, line: 168, size: 768, elements: !1486)
!1486 = !{!1487, !1488, !1489, !1490}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1485, file: !1477, line: 169, baseType: !98, size: 128)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1485, file: !1477, line: 170, baseType: !60, size: 32, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1485, file: !1477, line: 171, baseType: !1476, size: 512, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1485, file: !1477, line: 172, baseType: !1491, size: 64, offset: 704)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1493)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1477, line: 133, size: 192, elements: !1494)
!1494 = !{!1495, !1502, !1507}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1493, file: !1477, line: 134, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1497)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!23, !1500}
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1476)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1493, file: !1477, line: 135, baseType: !1503, size: 64, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1504)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!17, !1500}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1493, file: !1477, line: 136, baseType: !1508, size: 64, offset: 128)
!1508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1509)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!23, !1500, !1512}
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1477, line: 125, size: 20736, elements: !1514)
!1514 = !{!1515, !1517, !1521, !1522, !1526}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1513, file: !1477, line: 126, baseType: !1516, size: 192)
!1516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !947, size: 192, elements: !739)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1513, file: !1477, line: 127, baseType: !1518, size: 4096, offset: 192)
!1518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !947, size: 4096, elements: !1519)
!1519 = !{!1520}
!1520 = !DISubrange(count: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1513, file: !1477, line: 128, baseType: !23, size: 32, offset: 4288)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1513, file: !1477, line: 129, baseType: !1523, size: 16384, offset: 4320)
!1523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 16384, elements: !1524)
!1524 = !{!1525}
!1525 = !DISubrange(count: 2048)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1513, file: !1477, line: 130, baseType: !23, size: 32, offset: 20704)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1476, file: !1477, line: 69, baseType: !1528, size: 64, offset: 320)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1530)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1477, line: 116, size: 384, elements: !1531)
!1531 = !{!1532, !1536, !1555, !2606, !2610, !2614}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1530, file: !1477, line: 117, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{null, !1482}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1530, file: !1477, line: 118, baseType: !1537, size: 64, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1539)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1540, line: 254, size: 128, elements: !1541)
!1540 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1541 = !{!1542, !1551}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1539, file: !1540, line: 255, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!1380, !1482, !1546, !947}
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1540, line: 30, size: 128, elements: !1548)
!1548 = !{!1549, !1550}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1547, file: !1540, line: 31, baseType: !17, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1547, file: !1540, line: 32, baseType: !25, size: 16, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1539, file: !1540, line: 256, baseType: !1552, size: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!1380, !1482, !1546, !17, !36}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1530, file: !1477, line: 119, baseType: !1556, size: 64, offset: 128)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1559)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1540, line: 84, size: 320, elements: !1560)
!1560 = !{!1561, !1562, !1566, !2602, !2604}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1559, file: !1540, line: 85, baseType: !17, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1559, file: !1540, line: 86, baseType: !1563, size: 64, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!25, !1482, !1546, !23}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1559, file: !1540, line: 88, baseType: !1567, size: 64, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!25, !1482, !1570, !23}
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1540, line: 175, size: 512, elements: !1572)
!1572 = !{!1573, !1574, !1575, !1576, !2593, !2597, !2598}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1571, file: !1540, line: 176, baseType: !1547, size: 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1571, file: !1540, line: 177, baseType: !36, size: 64, offset: 128)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1571, file: !1540, line: 178, baseType: !21, size: 64, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1571, file: !1540, line: 179, baseType: !1577, size: 64, offset: 256)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!1580}
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !276, line: 472, size: 1536, align: 64, elements: !1582)
!1582 = !{!1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !2585, !2586, !2587, !2590, !2591, !2592}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1581, file: !276, line: 473, baseType: !1228, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1581, file: !276, line: 474, baseType: !780, size: 128, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1581, file: !276, line: 475, baseType: !879, size: 320, offset: 192)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1581, file: !276, line: 476, baseType: !327, size: 32, offset: 512)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1581, file: !276, line: 477, baseType: !50, size: 32, offset: 544)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1581, file: !276, line: 482, baseType: !530, size: 128, offset: 576)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1581, file: !276, line: 483, baseType: !40, size: 64, offset: 704)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1581, file: !276, line: 484, baseType: !40, size: 64, offset: 768)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1581, file: !276, line: 485, baseType: !1592, size: 64, offset: 832)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1594)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !276, line: 404, size: 1280, elements: !1595)
!1595 = !{!1596, !1907, !1977, !1981, !1985, !2002, !2008, !2012, !2017, !2021, !2025, !2029, !2073, !2077, !2081, !2085, !2090, !2094, !2577, !2581}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1594, file: !276, line: 405, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!23, !1600, !1887}
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !163, line: 74, size: 512, align: 128, elements: !1602)
!1602 = !{!1603, !1604, !1881, !1886}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1601, file: !163, line: 75, baseType: !40, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, scope: !1601, file: !163, line: 83, baseType: !1605, size: 320, offset: 64)
!1605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1601, file: !163, line: 83, size: 320, elements: !1606)
!1606 = !{!1607, !1628, !1642, !1646, !1880}
!1607 = !DIDerivedType(tag: DW_TAG_member, scope: !1605, file: !163, line: 84, baseType: !1608, size: 320)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1605, file: !163, line: 84, size: 320, elements: !1609)
!1609 = !{!1610, !1621, !1622, !1627}
!1610 = !DIDerivedType(tag: DW_TAG_member, scope: !1608, file: !163, line: 90, baseType: !1611, size: 128)
!1611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1608, file: !163, line: 90, size: 128, elements: !1612)
!1612 = !{!1613, !1614, !1619, !1620}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1611, file: !163, line: 91, baseType: !98, size: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, scope: !1611, file: !163, line: 94, baseType: !1615, size: 128)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1611, file: !163, line: 94, size: 128, elements: !1616)
!1616 = !{!1617, !1618}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1615, file: !163, line: 96, baseType: !21, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1615, file: !163, line: 98, baseType: !7, size: 32, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1611, file: !163, line: 102, baseType: !98, size: 128)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1611, file: !163, line: 103, baseType: !98, size: 128)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1608, file: !163, line: 106, baseType: !1580, size: 64, offset: 128)
!1622 = !DIDerivedType(tag: DW_TAG_member, scope: !1608, file: !163, line: 107, baseType: !1623, size: 64, offset: 192)
!1623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1608, file: !163, line: 107, size: 64, elements: !1624)
!1624 = !{!1625, !1626}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1623, file: !163, line: 108, baseType: !40, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1623, file: !163, line: 109, baseType: !40, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1608, file: !163, line: 117, baseType: !40, size: 64, offset: 256)
!1628 = !DIDerivedType(tag: DW_TAG_member, scope: !1605, file: !163, line: 119, baseType: !1629, size: 320)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1605, file: !163, line: 119, size: 320, elements: !1630)
!1630 = !{!1631, !1632, !1635, !1636, !1637}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1629, file: !163, line: 124, baseType: !40, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1629, file: !163, line: 125, baseType: !1633, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !163, line: 125, flags: DIFlagFwdDecl)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1629, file: !163, line: 126, baseType: !40, size: 64, offset: 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1629, file: !163, line: 127, baseType: !40, size: 64, offset: 192)
!1637 = !DIDerivedType(tag: DW_TAG_member, scope: !1629, file: !163, line: 128, baseType: !1638, size: 64, offset: 256)
!1638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1629, file: !163, line: 128, size: 64, elements: !1639)
!1639 = !{!1640, !1641}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1638, file: !163, line: 133, baseType: !40, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1638, file: !163, line: 138, baseType: !696, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, scope: !1605, file: !163, line: 141, baseType: !1643, size: 64)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1605, file: !163, line: 141, size: 64, elements: !1644)
!1644 = !{!1645}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1643, file: !163, line: 142, baseType: !40, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, scope: !1605, file: !163, line: 144, baseType: !1647, size: 128)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1605, file: !163, line: 144, size: 128, elements: !1648)
!1648 = !{!1649, !1879}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1647, file: !163, line: 146, baseType: !1650, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !155, line: 126, size: 1216, elements: !1652)
!1652 = !{!1653, !1663, !1684, !1685, !1686, !1687, !1688, !1861, !1862, !1863}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1651, file: !155, line: 127, baseType: !1654, size: 384)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !155, line: 21, size: 384, elements: !1655)
!1655 = !{!1656, !1657, !1659, !1660, !1661, !1662}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1654, file: !155, line: 22, baseType: !40, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1654, file: !155, line: 23, baseType: !1658, size: 64, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1654, file: !155, line: 24, baseType: !1658, size: 64, offset: 128)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1654, file: !155, line: 25, baseType: !40, size: 64, offset: 192)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1654, file: !155, line: 26, baseType: !40, size: 64, offset: 256)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1654, file: !155, line: 27, baseType: !40, size: 64, offset: 320)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1651, file: !155, line: 128, baseType: !1664, size: 128, offset: 384)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1665, line: 105, size: 128, elements: !1666)
!1665 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1666 = !{!1667, !1668}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1664, file: !1665, line: 110, baseType: !40, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1664, file: !1665, line: 118, baseType: !1669, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1665, line: 95, size: 448, elements: !1671)
!1671 = !{!1672, !1673, !1679, !1680, !1681, !1682, !1683}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1670, file: !1665, line: 96, baseType: !696, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1670, file: !1665, line: 97, baseType: !1674, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1665, line: 60, baseType: !1676)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{null, !1678}
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1670, file: !1665, line: 98, baseType: !1674, size: 64, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1670, file: !1665, line: 99, baseType: !859, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1670, file: !1665, line: 100, baseType: !859, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1670, file: !1665, line: 101, baseType: !683, size: 128, align: 64, offset: 256)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1670, file: !1665, line: 102, baseType: !1678, size: 64, offset: 384)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1651, file: !155, line: 129, baseType: !1024, size: 256, offset: 512)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1651, file: !155, line: 130, baseType: !154, size: 32, offset: 768)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1651, file: !155, line: 131, baseType: !7, size: 32, offset: 800)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1651, file: !155, line: 132, baseType: !40, size: 64, offset: 832)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1651, file: !155, line: 133, baseType: !1689, size: 64, offset: 896)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1691)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !155, line: 77, size: 192, elements: !1692)
!1692 = !{!1693, !1697, !1857}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1691, file: !155, line: 83, baseType: !1694, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{null, !1600}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1691, file: !155, line: 89, baseType: !1698, size: 64, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!1701, !1702}
!1701 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !163, line: 1184, baseType: !7)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1704, line: 512, size: 896, elements: !1705)
!1704 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1705 = !{!1706, !1824, !1825, !1832, !1839, !1849, !1850, !1851, !1853, !1855}
!1706 = !DIDerivedType(tag: DW_TAG_member, scope: !1703, file: !1704, line: 513, baseType: !1707, size: 320)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1703, file: !1704, line: 513, size: 320, elements: !1708)
!1708 = !{!1709, !1820, !1821, !1822, !1823}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1707, file: !1704, line: 514, baseType: !1710, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !163, line: 625, size: 1344, elements: !1712)
!1712 = !{!1713, !1722, !1723, !1731, !1738, !1739, !1744, !1745, !1750, !1751, !1754, !1813, !1814, !1815, !1816, !1817, !1818}
!1713 = !DIDerivedType(tag: DW_TAG_member, scope: !1711, file: !163, line: 628, baseType: !1714, size: 128)
!1714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1711, file: !163, line: 628, size: 128, elements: !1715)
!1715 = !{!1716, !1721}
!1716 = !DIDerivedType(tag: DW_TAG_member, scope: !1714, file: !163, line: 629, baseType: !1717, size: 128)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1714, file: !163, line: 629, size: 128, elements: !1718)
!1718 = !{!1719, !1720}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1717, file: !163, line: 631, baseType: !40, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1717, file: !163, line: 632, baseType: !40, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1714, file: !163, line: 635, baseType: !683, size: 128, align: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1711, file: !163, line: 639, baseType: !647, size: 64, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1711, file: !163, line: 640, baseType: !1724, size: 64, offset: 192)
!1724 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1725, line: 297, baseType: !1726)
!1725 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1725, line: 297, size: 64, elements: !1727)
!1727 = !{!1728}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1726, file: !1725, line: 297, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1730, line: 19, baseType: !40)
!1730 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1731 = !DIDerivedType(tag: DW_TAG_member, scope: !1711, file: !163, line: 646, baseType: !1732, size: 64, offset: 256)
!1732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1711, file: !163, line: 646, size: 64, elements: !1733)
!1733 = !{!1734, !1737}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1732, file: !163, line: 647, baseType: !1735, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1736)
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !163, line: 542, baseType: !40)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1732, file: !163, line: 648, baseType: !1736, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1711, file: !163, line: 666, baseType: !23, size: 32, offset: 320)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1711, file: !163, line: 667, baseType: !1740, size: 64, offset: 384)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !163, line: 579, size: 320, elements: !1742)
!1742 = !{!1743}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1741, file: !163, line: 580, baseType: !879, size: 320)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1711, file: !163, line: 670, baseType: !859, size: 8, offset: 448)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1711, file: !163, line: 681, baseType: !1746, size: 256, offset: 512)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1711, file: !163, line: 678, size: 256, elements: !1747)
!1747 = !{!1748, !1749}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1746, file: !163, line: 679, baseType: !390, size: 192, align: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1746, file: !163, line: 680, baseType: !40, size: 64, offset: 192)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1711, file: !163, line: 689, baseType: !98, size: 128, offset: 768)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1711, file: !163, line: 691, baseType: !1752, size: 64, offset: 896)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !163, line: 691, flags: DIFlagFwdDecl)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1711, file: !163, line: 694, baseType: !1755, size: 64, offset: 960)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1757)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1704, line: 563, size: 1024, elements: !1758)
!1758 = !{!1759, !1763, !1764, !1768, !1772, !1776, !1777, !1781, !1785, !1789, !1790, !1791, !1795, !1799, !1805, !1809}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1757, file: !1704, line: 564, baseType: !1760, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{null, !1710}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1757, file: !1704, line: 569, baseType: !1760, size: 64, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1757, file: !1704, line: 571, baseType: !1765, size: 64, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!23, !1710, !40}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1757, file: !1704, line: 572, baseType: !1769, size: 64, offset: 192)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!23, !1710}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1757, file: !1704, line: 578, baseType: !1773, size: 64, offset: 256)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!23, !1710, !40, !40, !40}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1757, file: !1704, line: 580, baseType: !1698, size: 64, offset: 320)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1757, file: !1704, line: 581, baseType: !1778, size: 64, offset: 384)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!1701, !1702, !7}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1757, file: !1704, line: 582, baseType: !1782, size: 64, offset: 448)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!1701, !1702, !40, !40}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1757, file: !1704, line: 584, baseType: !1786, size: 64, offset: 512)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!40, !1710}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1757, file: !1704, line: 588, baseType: !1698, size: 64, offset: 576)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1757, file: !1704, line: 591, baseType: !1698, size: 64, offset: 640)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1757, file: !1704, line: 597, baseType: !1792, size: 64, offset: 704)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!23, !1710, !40, !21, !23, !23}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1757, file: !1704, line: 603, baseType: !1796, size: 64, offset: 768)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!17, !1710}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1757, file: !1704, line: 613, baseType: !1800, size: 64, offset: 832)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!23, !1710, !1803}
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !163, line: 717, flags: DIFlagFwdDecl)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1757, file: !1704, line: 625, baseType: !1806, size: 64, offset: 896)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!1803, !1710, !40}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1757, file: !1704, line: 633, baseType: !1810, size: 64, offset: 960)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!1600, !1710, !40}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1711, file: !163, line: 697, baseType: !40, size: 64, offset: 1024)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1711, file: !163, line: 699, baseType: !675, size: 64, offset: 1088)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1711, file: !163, line: 700, baseType: !21, size: 64, offset: 1152)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1711, file: !163, line: 711, baseType: !696, size: 64, offset: 1216)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1711, file: !163, line: 717, baseType: !1803, size: 64, offset: 1280)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1711, file: !163, line: 722, baseType: !1819, offset: 1344)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !163, line: 570, elements: !668)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1707, file: !1704, line: 515, baseType: !327, size: 32, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1707, file: !1704, line: 516, baseType: !40, size: 64, offset: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1707, file: !1704, line: 517, baseType: !40, size: 64, offset: 192)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1707, file: !1704, line: 518, baseType: !40, size: 64, offset: 256)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1703, file: !1704, line: 520, baseType: !162, size: 32, offset: 320)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1703, file: !1704, line: 522, baseType: !1826, size: 64, offset: 384)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1730, line: 22, baseType: !1828)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1730, line: 22, size: 64, elements: !1829)
!1829 = !{!1830}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1828, file: !1730, line: 22, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1730, line: 15, baseType: !40)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1703, file: !1704, line: 524, baseType: !1833, size: 64, offset: 448)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1725, line: 372, baseType: !1835)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1725, line: 372, size: 64, elements: !1836)
!1836 = !{!1837}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1835, file: !1725, line: 372, baseType: !1838, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1730, line: 16, baseType: !40)
!1839 = !DIDerivedType(tag: DW_TAG_member, scope: !1703, file: !1704, line: 527, baseType: !1840, size: 64, offset: 512)
!1840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1703, file: !1704, line: 527, size: 64, elements: !1841)
!1841 = !{!1842, !1848}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1840, file: !1704, line: 528, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1730, line: 21, baseType: !1844)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1730, line: 21, size: 64, elements: !1845)
!1845 = !{!1846}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1844, file: !1730, line: 21, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1730, line: 14, baseType: !40)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1840, file: !1704, line: 529, baseType: !1827, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1703, file: !1704, line: 534, baseType: !1600, size: 64, offset: 576)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1703, file: !1704, line: 535, baseType: !1600, size: 64, offset: 640)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1703, file: !1704, line: 541, baseType: !1852, size: 64, offset: 704)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1703, file: !1704, line: 545, baseType: !1854, size: 64, offset: 768)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1703, file: !1704, line: 549, baseType: !1856, size: 64, offset: 832)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1725, line: 520, baseType: !1600)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1691, file: !155, line: 100, baseType: !1858, size: 64, offset: 128)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!23, !1650, !40, !40, !23}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1651, file: !155, line: 134, baseType: !21, size: 64, offset: 960)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1651, file: !155, line: 135, baseType: !23, size: 32, offset: 1024)
!1863 = !DIDerivedType(tag: DW_TAG_member, scope: !1651, file: !155, line: 136, baseType: !1864, size: 128, offset: 1088)
!1864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1651, file: !155, line: 136, size: 128, elements: !1865)
!1865 = !{!1866, !1872}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1864, file: !155, line: 137, baseType: !1867, size: 128)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1868, line: 6, size: 128, elements: !1869)
!1868 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1869 = !{!1870, !1871}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1867, file: !1868, line: 7, baseType: !398, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1867, file: !1868, line: 8, baseType: !398, size: 64, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, scope: !1864, file: !155, line: 138, baseType: !1873)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1864, file: !155, line: 138, elements: !1874)
!1874 = !{!1875, !1877}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1873, file: !155, line: 138, baseType: !1876)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1873, file: !155, line: 138, elements: !668)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1873, file: !155, line: 138, baseType: !1878)
!1878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1867, elements: !1090)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1647, file: !163, line: 147, baseType: !21, size: 64, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1605, file: !163, line: 161, baseType: !683, size: 128, align: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, scope: !1601, file: !163, line: 164, baseType: !1882, size: 32, offset: 384)
!1882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1601, file: !163, line: 164, size: 32, elements: !1883)
!1883 = !{!1884, !1885}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1882, file: !163, line: 169, baseType: !50, size: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1882, file: !163, line: 177, baseType: !7, size: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1601, file: !163, line: 181, baseType: !50, size: 32, offset: 416)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !179, line: 42, size: 384, elements: !1889)
!1889 = !{!1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !1888, file: !179, line: 43, baseType: !1083, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !1888, file: !179, line: 45, baseType: !1083, size: 64, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !1888, file: !179, line: 52, baseType: !42, size: 64, offset: 128)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !1888, file: !179, line: 53, baseType: !42, size: 64, offset: 192)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !1888, file: !179, line: 55, baseType: !178, size: 32, offset: 256)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !1888, file: !179, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !1888, file: !179, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !1888, file: !179, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !1888, file: !179, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !1888, file: !179, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !1888, file: !179, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !1888, file: !179, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !1888, file: !179, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !1888, file: !179, line: 78, baseType: !1904, size: 64, offset: 320)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !179, line: 78, flags: DIFlagFwdDecl)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1594, file: !276, line: 406, baseType: !1908, size: 64, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!23, !675, !1911}
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !163, line: 293, size: 1536, elements: !1913)
!1913 = !{!1914, !1944, !1958}
!1914 = !DIDerivedType(tag: DW_TAG_member, scope: !1912, file: !163, line: 295, baseType: !1915, size: 512)
!1915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1912, file: !163, line: 295, size: 512, elements: !1916)
!1916 = !{!1917, !1943}
!1917 = !DIDerivedType(tag: DW_TAG_member, scope: !1915, file: !163, line: 296, baseType: !1918, size: 448)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1915, file: !163, line: 296, size: 448, elements: !1919)
!1919 = !{!1920, !1921, !1930, !1931, !1932, !1941, !1942}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1918, file: !163, line: 298, baseType: !40, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, scope: !1918, file: !163, line: 299, baseType: !1922, size: 128, offset: 64)
!1922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1918, file: !163, line: 299, size: 128, elements: !1923)
!1923 = !{!1924, !1925}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1922, file: !163, line: 300, baseType: !98, size: 128)
!1925 = !DIDerivedType(tag: DW_TAG_member, scope: !1922, file: !163, line: 302, baseType: !1926, size: 128)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1922, file: !163, line: 302, size: 128, elements: !1927)
!1927 = !{!1928, !1929}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1926, file: !163, line: 303, baseType: !21, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1926, file: !163, line: 305, baseType: !7, size: 32, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1918, file: !163, line: 310, baseType: !1580, size: 64, offset: 192)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1918, file: !163, line: 311, baseType: !40, size: 64, offset: 256)
!1932 = !DIDerivedType(tag: DW_TAG_member, scope: !1918, file: !163, line: 312, baseType: !1933, size: 64, offset: 320)
!1933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1918, file: !163, line: 312, size: 64, elements: !1934)
!1934 = !{!1935, !1936}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1933, file: !163, line: 313, baseType: !21, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1933, file: !163, line: 314, baseType: !1937, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !163, line: 257, baseType: !1938)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !163, line: 255, size: 64, elements: !1939)
!1939 = !{!1940}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1938, file: !163, line: 256, baseType: !40, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1918, file: !163, line: 316, baseType: !50, size: 32, offset: 384)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1918, file: !163, line: 317, baseType: !50, size: 32, offset: 416)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1915, file: !163, line: 323, baseType: !1601, size: 512, align: 128)
!1944 = !DIDerivedType(tag: DW_TAG_member, scope: !1912, file: !163, line: 325, baseType: !1945, size: 512, offset: 512)
!1945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1912, file: !163, line: 325, size: 512, elements: !1946)
!1946 = !{!1947, !1957}
!1947 = !DIDerivedType(tag: DW_TAG_member, scope: !1945, file: !163, line: 326, baseType: !1948, size: 320)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1945, file: !163, line: 326, size: 320, elements: !1949)
!1949 = !{!1950, !1951, !1952, !1953, !1954, !1955, !1956}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1948, file: !163, line: 327, baseType: !40, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1948, file: !163, line: 328, baseType: !40, size: 64, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1948, file: !163, line: 329, baseType: !40, size: 64, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1948, file: !163, line: 331, baseType: !50, size: 32, offset: 192)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1948, file: !163, line: 332, baseType: !50, size: 32, offset: 224)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1948, file: !163, line: 333, baseType: !50, size: 32, offset: 256)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1948, file: !163, line: 335, baseType: !7, size: 32, offset: 288)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1945, file: !163, line: 339, baseType: !1601, size: 512, align: 128)
!1958 = !DIDerivedType(tag: DW_TAG_member, scope: !1912, file: !163, line: 341, baseType: !1959, size: 512, offset: 1024)
!1959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1912, file: !163, line: 341, size: 512, elements: !1960)
!1960 = !{!1961, !1970, !1976}
!1961 = !DIDerivedType(tag: DW_TAG_member, scope: !1959, file: !163, line: 342, baseType: !1962, size: 384)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1959, file: !163, line: 342, size: 384, elements: !1963)
!1963 = !{!1964, !1965, !1966, !1967, !1968, !1969}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1962, file: !163, line: 343, baseType: !40, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1962, file: !163, line: 344, baseType: !40, size: 64, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1962, file: !163, line: 346, baseType: !21, size: 64, offset: 128)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1962, file: !163, line: 347, baseType: !21, size: 64, offset: 192)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1962, file: !163, line: 348, baseType: !21, size: 64, offset: 256)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1962, file: !163, line: 349, baseType: !21, size: 64, offset: 320)
!1970 = !DIDerivedType(tag: DW_TAG_member, scope: !1959, file: !163, line: 352, baseType: !1971, size: 256)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1959, file: !163, line: 352, size: 256, elements: !1972)
!1972 = !{!1973, !1974, !1975}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1971, file: !163, line: 353, baseType: !40, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1971, file: !163, line: 354, baseType: !40, size: 64, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1971, file: !163, line: 356, baseType: !98, size: 128, offset: 128)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1959, file: !163, line: 359, baseType: !1601, size: 512, align: 128)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1594, file: !276, line: 409, baseType: !1978, size: 64, offset: 128)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!23, !1580, !1887}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1594, file: !276, line: 412, baseType: !1982, size: 64, offset: 192)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!859, !1580, !1911}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1594, file: !276, line: 414, baseType: !1986, size: 64, offset: 256)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{null, !1989}
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1991, line: 1276, size: 448, elements: !1992)
!1991 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1992 = !{!1993, !1994, !1995, !1997, !1998, !1999, !2000, !2001}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1990, file: !1991, line: 1277, baseType: !675, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1990, file: !1991, line: 1278, baseType: !1580, size: 64, offset: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !1990, file: !1991, line: 1279, baseType: !1996, size: 64, offset: 128)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !1990, file: !1991, line: 1281, baseType: !40, size: 64, offset: 192)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !1990, file: !1991, line: 1282, baseType: !7, size: 32, offset: 256)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !1990, file: !1991, line: 1283, baseType: !7, size: 32, offset: 288)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !1990, file: !1991, line: 1284, baseType: !859, size: 8, offset: 320)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !1990, file: !1991, line: 1285, baseType: !40, size: 64, offset: 384)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1594, file: !276, line: 416, baseType: !2003, size: 64, offset: 320)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!23, !675, !1580, !42, !7, !2006, !2007}
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1594, file: !276, line: 419, baseType: !2009, size: 64, offset: 384)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!23, !675, !1580, !42, !7, !7, !1600, !21}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1594, file: !276, line: 424, baseType: !2013, size: 64, offset: 448)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!2016, !1580, !2016}
!2016 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !26, line: 131, baseType: !398)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1594, file: !276, line: 425, baseType: !2018, size: 64, offset: 512)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{null, !1911, !36, !36}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1594, file: !276, line: 426, baseType: !2022, size: 64, offset: 576)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!859, !1911, !327}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1594, file: !276, line: 427, baseType: !2026, size: 64, offset: 640)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{null, !1911}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1594, file: !276, line: 428, baseType: !2030, size: 64, offset: 704)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!1380, !2033, !2071}
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !276, line: 373, size: 384, elements: !2035)
!2035 = !{!2036, !2037, !2038, !2042, !2043, !2044, !2045}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2034, file: !276, line: 374, baseType: !675, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2034, file: !276, line: 375, baseType: !42, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2034, file: !276, line: 376, baseType: !2039, size: 64, offset: 128)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{null, !2033, !1083}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2034, file: !276, line: 377, baseType: !21, size: 64, offset: 192)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2034, file: !276, line: 378, baseType: !23, size: 32, offset: 256)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2034, file: !276, line: 379, baseType: !94, size: 16, offset: 288)
!2045 = !DIDerivedType(tag: DW_TAG_member, scope: !2034, file: !276, line: 380, baseType: !2046, size: 64, offset: 320)
!2046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2034, file: !276, line: 380, size: 64, elements: !2047)
!2047 = !{!2048, !2067}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2046, file: !276, line: 386, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1991, line: 998, size: 448, elements: !2051)
!2051 = !{!2052, !2053, !2054}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !2050, file: !1991, line: 999, baseType: !1911, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !2050, file: !1991, line: 1000, baseType: !23, size: 32, offset: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2050, file: !1991, line: 1001, baseType: !2055, size: 320, offset: 128)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !56, line: 14, baseType: !2056)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !56, line: 30, size: 320, elements: !2057)
!2057 = !{!2058, !2059, !2060, !2066}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2056, file: !56, line: 31, baseType: !7, size: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2056, file: !56, line: 32, baseType: !21, size: 64, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2056, file: !56, line: 33, baseType: !2061, size: 64, offset: 128)
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !56, line: 16, baseType: !2062)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!23, !2065, !7, !23, !21}
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2056, file: !56, line: 34, baseType: !98, size: 128, offset: 192)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2046, file: !276, line: 395, baseType: !2068, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!1380, !21}
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !276, line: 69, flags: DIFlagFwdDecl)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1594, file: !276, line: 433, baseType: !2074, size: 64, offset: 768)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!23, !1580, !1911, !1911, !183}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1594, file: !276, line: 435, baseType: !2078, size: 64, offset: 832)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!23, !1911}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1594, file: !276, line: 436, baseType: !2082, size: 64, offset: 896)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!859, !1911, !36, !36}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1594, file: !276, line: 438, baseType: !2086, size: 64, offset: 960)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{null, !1911, !2089, !2089}
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1594, file: !276, line: 439, baseType: !2091, size: 64, offset: 1024)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!23, !1580, !1600}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1594, file: !276, line: 442, baseType: !2095, size: 64, offset: 1088)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!23, !2098, !675, !2576}
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !2100, line: 282, size: 2176, elements: !2101)
!2100 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!2101 = !{!2102, !2103, !2104, !2105, !2106, !2108, !2109, !2111, !2118, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2131, !2137, !2138, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !2099, file: !2100, line: 283, baseType: !1664, size: 128)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2099, file: !2100, line: 284, baseType: !40, size: 64, offset: 128)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2099, file: !2100, line: 285, baseType: !907, size: 16, offset: 192)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2099, file: !2100, line: 286, baseType: !639, size: 320, offset: 256)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2099, file: !2100, line: 287, baseType: !2107, size: 8, offset: 576)
!2107 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2099, file: !2100, line: 288, baseType: !7, size: 32, offset: 608)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !2099, file: !2100, line: 289, baseType: !2110, size: 64, offset: 640)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !2099, file: !2100, line: 290, baseType: !2112, size: 64, offset: 704)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !2100, line: 250, size: 64, elements: !2114)
!2114 = !{!2115, !2116, !2117}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2113, file: !2100, line: 251, baseType: !60, size: 32)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2113, file: !2100, line: 257, baseType: !7, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2113, file: !2100, line: 258, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !2099, file: !2100, line: 291, baseType: !2119, size: 128, offset: 768)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !2100, line: 274, size: 128, elements: !2120)
!2120 = !{!2121, !2122}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2119, file: !2100, line: 275, baseType: !2113, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2119, file: !2100, line: 276, baseType: !2113, size: 64, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !2099, file: !2100, line: 292, baseType: !7, size: 32, offset: 896)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !2099, file: !2100, line: 293, baseType: !7, size: 32, offset: 928)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2099, file: !2100, line: 294, baseType: !7, size: 32, offset: 960)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !2099, file: !2100, line: 295, baseType: !7, size: 32, offset: 992)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !2099, file: !2100, line: 296, baseType: !7, size: 32, offset: 1024)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !2099, file: !2100, line: 297, baseType: !7, size: 32, offset: 1056)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !2099, file: !2100, line: 298, baseType: !2130, size: 64, offset: 1088)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !2099, file: !2100, line: 299, baseType: !2132, size: 64, offset: 1152)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !2100, line: 269, size: 96, elements: !2134)
!2134 = !{!2135, !2136}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2133, file: !2100, line: 270, baseType: !2113, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2133, file: !2100, line: 271, baseType: !7, size: 32, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !2099, file: !2100, line: 300, baseType: !533, size: 64, offset: 1216)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !2099, file: !2100, line: 301, baseType: !2139, size: 64, offset: 1280)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2141, line: 40, size: 7424, elements: !2142)
!2141 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2142 = !{!2143, !2144, !2145, !2148, !2152, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2179, !2180}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2140, file: !2141, line: 41, baseType: !2016, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2140, file: !2141, line: 42, baseType: !2016, size: 64, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2140, file: !2141, line: 43, baseType: !2146, size: 64, offset: 128)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !331, line: 1453, flags: DIFlagFwdDecl)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2140, file: !2141, line: 44, baseType: !2149, size: 64, offset: 192)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2151, line: 74, flags: DIFlagFwdDecl)
!2151 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2140, file: !2141, line: 45, baseType: !2153, size: 64, offset: 256)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2141, line: 45, flags: DIFlagFwdDecl)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2140, file: !2141, line: 46, baseType: !40, size: 64, offset: 320)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2140, file: !2141, line: 47, baseType: !859, size: 8, offset: 384)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2140, file: !2141, line: 48, baseType: !84, size: 8, offset: 392)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2140, file: !2141, line: 49, baseType: !859, size: 8, offset: 400)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2140, file: !2141, line: 50, baseType: !859, size: 8, offset: 408)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2140, file: !2141, line: 51, baseType: !1302, size: 32, offset: 416)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2140, file: !2141, line: 52, baseType: !50, size: 32, offset: 448)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2140, file: !2141, line: 53, baseType: !60, size: 32, offset: 480)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2140, file: !2141, line: 54, baseType: !1228, size: 64, offset: 512)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2140, file: !2141, line: 55, baseType: !21, size: 64, offset: 576)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2140, file: !2141, line: 56, baseType: !21, size: 64, offset: 640)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2140, file: !2141, line: 57, baseType: !2167, size: 64, offset: 704)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2169)
!2169 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2141, line: 57, flags: DIFlagFwdDecl)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2140, file: !2141, line: 58, baseType: !703, size: 256, offset: 768)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2140, file: !2141, line: 60, baseType: !23, size: 32, offset: 1024)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2140, file: !2141, line: 61, baseType: !23, size: 32, offset: 1056)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2140, file: !2141, line: 62, baseType: !1482, size: 64, offset: 1088)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2140, file: !2141, line: 65, baseType: !703, size: 256, offset: 1152)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2140, file: !2141, line: 66, baseType: !1429, size: 64, offset: 1408)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2140, file: !2141, line: 68, baseType: !2177, size: 64, offset: 1472)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2141, line: 68, flags: DIFlagFwdDecl)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2140, file: !2141, line: 72, baseType: !859, size: 8, offset: 1536)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2140, file: !2141, line: 77, baseType: !2181, size: 5824, offset: 1600)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !197, line: 705, size: 5824, elements: !2182)
!2182 = !{!2183, !2184, !2186, !2189, !2190, !2243, !2313, !2314, !2315, !2316, !2317, !2324, !2427, !2440, !2450, !2454, !2456, !2457, !2458, !2462, !2469, !2470, !2473, !2476, !2480, !2483, !2484, !2485, !2486, !2487, !2488, !2544, !2545, !2546, !2549, !2552, !2561, !2562, !2563, !2564, !2565, !2566}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2181, file: !197, line: 706, baseType: !1476, size: 512)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2181, file: !197, line: 707, baseType: !2185, size: 64, offset: 512)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2181, file: !197, line: 709, baseType: !2187, size: 64, offset: 576)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !197, line: 37, flags: DIFlagFwdDecl)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2181, file: !197, line: 711, baseType: !17, size: 64, offset: 640)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2181, file: !197, line: 712, baseType: !2191, size: 64, offset: 704)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2193)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !197, line: 89, size: 384, elements: !2194)
!2194 = !{!2195, !2196, !2197, !2203, !2208, !2212}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2193, file: !197, line: 90, baseType: !17, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2193, file: !197, line: 91, baseType: !1556, size: 64, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2193, file: !197, line: 92, baseType: !2198, size: 64, offset: 128)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!23, !2201, !1512}
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2181)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2193, file: !197, line: 93, baseType: !2204, size: 64, offset: 192)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!947, !2201, !2207, !1049, !1050}
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2193, file: !197, line: 95, baseType: !2209, size: 64, offset: 256)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{null, !2185}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2193, file: !197, line: 97, baseType: !2213, size: 64, offset: 320)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2215)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !204, line: 286, size: 1472, elements: !2216)
!2216 = !{!2217, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2215, file: !204, line: 287, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!23, !2185}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2215, file: !204, line: 288, baseType: !2209, size: 64, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2215, file: !204, line: 289, baseType: !2218, size: 64, offset: 128)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2215, file: !204, line: 290, baseType: !2218, size: 64, offset: 192)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2215, file: !204, line: 291, baseType: !2218, size: 64, offset: 256)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2215, file: !204, line: 292, baseType: !2218, size: 64, offset: 320)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2215, file: !204, line: 293, baseType: !2218, size: 64, offset: 384)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2215, file: !204, line: 294, baseType: !2218, size: 64, offset: 448)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2215, file: !204, line: 295, baseType: !2218, size: 64, offset: 512)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2215, file: !204, line: 296, baseType: !2218, size: 64, offset: 576)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2215, file: !204, line: 297, baseType: !2218, size: 64, offset: 640)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2215, file: !204, line: 298, baseType: !2218, size: 64, offset: 704)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2215, file: !204, line: 299, baseType: !2218, size: 64, offset: 768)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2215, file: !204, line: 300, baseType: !2218, size: 64, offset: 832)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2215, file: !204, line: 301, baseType: !2218, size: 64, offset: 896)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2215, file: !204, line: 302, baseType: !2218, size: 64, offset: 960)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2215, file: !204, line: 303, baseType: !2218, size: 64, offset: 1024)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2215, file: !204, line: 304, baseType: !2218, size: 64, offset: 1088)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2215, file: !204, line: 305, baseType: !2218, size: 64, offset: 1152)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2215, file: !204, line: 306, baseType: !2218, size: 64, offset: 1216)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2215, file: !204, line: 307, baseType: !2218, size: 64, offset: 1280)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2215, file: !204, line: 308, baseType: !2218, size: 64, offset: 1344)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2215, file: !204, line: 309, baseType: !2218, size: 64, offset: 1408)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2181, file: !197, line: 714, baseType: !2244, size: 64, offset: 768)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2246)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2247, line: 80, size: 1344, elements: !2248)
!2247 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2248 = !{!2249, !2250, !2251, !2252, !2253, !2254, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2312}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2246, file: !2247, line: 81, baseType: !17, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2246, file: !2247, line: 82, baseType: !17, size: 64, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2246, file: !2247, line: 83, baseType: !1556, size: 64, offset: 128)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2246, file: !2247, line: 84, baseType: !1556, size: 64, offset: 192)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2246, file: !2247, line: 85, baseType: !1556, size: 64, offset: 256)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2246, file: !2247, line: 87, baseType: !2255, size: 64, offset: 320)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!23, !2185, !2258}
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !191, line: 96, size: 1152, elements: !2260)
!2260 = !{!2261, !2262, !2263, !2264, !2265, !2266, !2267, !2271, !2275, !2276, !2277, !2278, !2279, !2287, !2288, !2289, !2290, !2291, !2292}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2259, file: !191, line: 97, baseType: !17, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2259, file: !191, line: 98, baseType: !2244, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2259, file: !191, line: 100, baseType: !1463, size: 64, offset: 128)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2259, file: !191, line: 101, baseType: !17, size: 64, offset: 192)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2259, file: !191, line: 103, baseType: !859, size: 8, offset: 256)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2259, file: !191, line: 104, baseType: !190, size: 32, offset: 288)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2259, file: !191, line: 106, baseType: !2268, size: 64, offset: 320)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2270)
!2270 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !191, line: 106, flags: DIFlagFwdDecl)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2259, file: !191, line: 107, baseType: !2272, size: 64, offset: 384)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2274)
!2274 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !191, line: 107, flags: DIFlagFwdDecl)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2259, file: !191, line: 109, baseType: !2218, size: 64, offset: 448)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2259, file: !191, line: 110, baseType: !2209, size: 64, offset: 512)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2259, file: !191, line: 111, baseType: !2218, size: 64, offset: 576)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2259, file: !191, line: 112, baseType: !2209, size: 64, offset: 640)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2259, file: !191, line: 113, baseType: !2280, size: 64, offset: 704)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!23, !2185, !2283}
!2283 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !204, line: 60, baseType: !2284)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !204, line: 58, size: 32, elements: !2285)
!2285 = !{!2286}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2284, file: !204, line: 59, baseType: !23, size: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2259, file: !191, line: 114, baseType: !2218, size: 64, offset: 768)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2259, file: !191, line: 115, baseType: !1556, size: 64, offset: 832)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2259, file: !191, line: 116, baseType: !1556, size: 64, offset: 896)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2259, file: !191, line: 118, baseType: !2213, size: 64, offset: 960)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2259, file: !191, line: 119, baseType: !2209, size: 64, offset: 1024)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2259, file: !191, line: 121, baseType: !2293, size: 64, offset: 1088)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !191, line: 121, flags: DIFlagFwdDecl)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2246, file: !2247, line: 88, baseType: !2198, size: 64, offset: 384)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2246, file: !2247, line: 89, baseType: !2218, size: 64, offset: 448)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2246, file: !2247, line: 90, baseType: !2209, size: 64, offset: 512)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2246, file: !2247, line: 91, baseType: !2209, size: 64, offset: 576)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2246, file: !2247, line: 92, baseType: !2209, size: 64, offset: 640)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2246, file: !2247, line: 94, baseType: !2218, size: 64, offset: 704)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2246, file: !2247, line: 95, baseType: !2218, size: 64, offset: 768)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2246, file: !2247, line: 97, baseType: !2280, size: 64, offset: 832)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2246, file: !2247, line: 98, baseType: !2218, size: 64, offset: 896)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2246, file: !2247, line: 100, baseType: !2218, size: 64, offset: 960)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2246, file: !2247, line: 102, baseType: !2218, size: 64, offset: 1024)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2246, file: !2247, line: 103, baseType: !2209, size: 64, offset: 1088)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2246, file: !2247, line: 105, baseType: !2213, size: 64, offset: 1152)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2246, file: !2247, line: 107, baseType: !2309, size: 64, offset: 1216)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2311)
!2311 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2247, line: 107, flags: DIFlagFwdDecl)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2246, file: !2247, line: 109, baseType: !859, size: 8, offset: 1280)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2181, file: !197, line: 715, baseType: !2258, size: 64, offset: 832)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2181, file: !197, line: 717, baseType: !21, size: 64, offset: 896)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2181, file: !197, line: 719, baseType: !21, size: 64, offset: 960)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2181, file: !197, line: 721, baseType: !703, size: 256, offset: 1024)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2181, file: !197, line: 725, baseType: !2318, size: 448, offset: 1280)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !197, line: 517, size: 448, elements: !2319)
!2319 = !{!2320, !2321, !2322, !2323}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2318, file: !197, line: 518, baseType: !98, size: 128)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2318, file: !197, line: 519, baseType: !98, size: 128, offset: 128)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2318, file: !197, line: 520, baseType: !98, size: 128, offset: 256)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2318, file: !197, line: 521, baseType: !196, size: 32, offset: 384)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2181, file: !197, line: 726, baseType: !2325, size: 2496, offset: 1728)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !204, line: 663, size: 2496, elements: !2326)
!2326 = !{!2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2420, !2424}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2325, file: !204, line: 664, baseType: !2283, size: 32)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2325, file: !204, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2325, file: !204, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2325, file: !204, line: 667, baseType: !859, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2325, file: !204, line: 668, baseType: !859, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2325, file: !204, line: 669, baseType: !859, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2325, file: !204, line: 670, baseType: !859, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2325, file: !204, line: 671, baseType: !859, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2325, file: !204, line: 672, baseType: !859, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2325, file: !204, line: 673, baseType: !859, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2325, file: !204, line: 674, baseType: !859, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2325, file: !204, line: 675, baseType: !340, size: 32, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2325, file: !204, line: 676, baseType: !60, size: 32, offset: 96)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2325, file: !204, line: 678, baseType: !98, size: 128, offset: 128)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2325, file: !204, line: 679, baseType: !1024, size: 256, offset: 256)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2325, file: !204, line: 680, baseType: !2343, size: 64, offset: 512)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2345, line: 43, size: 1536, elements: !2346)
!2345 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2346 = !{!2347, !2348, !2349, !2350, !2351, !2354, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2344, file: !2345, line: 44, baseType: !17, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2344, file: !2345, line: 45, baseType: !23, size: 32, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2344, file: !2345, line: 46, baseType: !98, size: 128, offset: 128)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2344, file: !2345, line: 47, baseType: !60, size: 32, offset: 256)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2344, file: !2345, line: 48, baseType: !2352, size: 64, offset: 320)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !204, line: 629, flags: DIFlagFwdDecl)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2344, file: !2345, line: 49, baseType: !2355, size: 320, offset: 384)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2356, line: 11, size: 320, elements: !2357)
!2356 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2357 = !{!2358, !2359, !2360, !2365}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2355, file: !2356, line: 16, baseType: !755, size: 128)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2355, file: !2356, line: 17, baseType: !40, size: 64, offset: 128)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2355, file: !2356, line: 18, baseType: !2361, size: 64, offset: 192)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{null, !2364}
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2355, file: !2356, line: 19, baseType: !340, size: 32, offset: 256)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2344, file: !2345, line: 50, baseType: !40, size: 64, offset: 704)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2344, file: !2345, line: 51, baseType: !473, size: 64, offset: 768)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2344, file: !2345, line: 52, baseType: !473, size: 64, offset: 832)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2344, file: !2345, line: 53, baseType: !473, size: 64, offset: 896)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2344, file: !2345, line: 54, baseType: !473, size: 64, offset: 960)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2344, file: !2345, line: 55, baseType: !473, size: 64, offset: 1024)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2344, file: !2345, line: 56, baseType: !40, size: 64, offset: 1088)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2344, file: !2345, line: 57, baseType: !40, size: 64, offset: 1152)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2344, file: !2345, line: 58, baseType: !40, size: 64, offset: 1216)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2344, file: !2345, line: 59, baseType: !40, size: 64, offset: 1280)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2344, file: !2345, line: 60, baseType: !40, size: 64, offset: 1344)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2344, file: !2345, line: 61, baseType: !2185, size: 64, offset: 1408)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2344, file: !2345, line: 62, baseType: !859, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2344, file: !2345, line: 63, baseType: !859, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2325, file: !204, line: 681, baseType: !859, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2325, file: !204, line: 682, baseType: !859, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2325, file: !204, line: 683, baseType: !859, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2325, file: !204, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2325, file: !204, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2325, file: !204, line: 690, baseType: !465, size: 512, offset: 640)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2325, file: !204, line: 691, baseType: !398, size: 64, offset: 1152)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2325, file: !204, line: 692, baseType: !986, size: 256, offset: 1216)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2325, file: !204, line: 693, baseType: !55, size: 192, offset: 1472)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2325, file: !204, line: 694, baseType: !2352, size: 64, offset: 1664)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2325, file: !204, line: 695, baseType: !50, size: 32, offset: 1728)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2325, file: !204, line: 696, baseType: !50, size: 32, offset: 1760)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2325, file: !204, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2325, file: !204, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2325, file: !204, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2325, file: !204, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2325, file: !204, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2325, file: !204, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2325, file: !204, line: 703, baseType: !859, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2325, file: !204, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2325, file: !204, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2325, file: !204, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2325, file: !204, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2325, file: !204, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2325, file: !204, line: 709, baseType: !7, size: 32, offset: 1824)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2325, file: !204, line: 710, baseType: !203, size: 32, offset: 1856)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2325, file: !204, line: 711, baseType: !211, size: 32, offset: 1888)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2325, file: !204, line: 712, baseType: !211, size: 32, offset: 1920)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2325, file: !204, line: 713, baseType: !23, size: 32, offset: 1952)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2325, file: !204, line: 714, baseType: !23, size: 32, offset: 1984)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2325, file: !204, line: 715, baseType: !398, size: 64, offset: 2048)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2325, file: !204, line: 716, baseType: !398, size: 64, offset: 2112)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2325, file: !204, line: 717, baseType: !398, size: 64, offset: 2176)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2325, file: !204, line: 718, baseType: !398, size: 64, offset: 2240)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2325, file: !204, line: 720, baseType: !2415, size: 64, offset: 2304)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !204, line: 632, size: 64, elements: !2417)
!2417 = !{!2418, !2419}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2416, file: !204, line: 633, baseType: !60, size: 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2416, file: !204, line: 634, baseType: !7, size: 32, offset: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2325, file: !204, line: 721, baseType: !2421, size: 64, offset: 2368)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{null, !2185, !871}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2325, file: !204, line: 722, baseType: !2425, size: 64, offset: 2432)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !204, line: 722, flags: DIFlagFwdDecl)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2181, file: !197, line: 727, baseType: !2428, size: 64, offset: 4224)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !204, line: 742, size: 1792, elements: !2430)
!2430 = !{!2431, !2432, !2433, !2437, !2438, !2439}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2429, file: !204, line: 743, baseType: !2215, size: 1472)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2429, file: !204, line: 744, baseType: !2218, size: 64, offset: 1472)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2429, file: !204, line: 745, baseType: !2434, size: 64, offset: 1536)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{null, !2185, !859}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2429, file: !204, line: 746, baseType: !2218, size: 64, offset: 1600)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2429, file: !204, line: 747, baseType: !2209, size: 64, offset: 1664)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2429, file: !204, line: 748, baseType: !2209, size: 64, offset: 1728)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2181, file: !197, line: 736, baseType: !2441, size: 128, offset: 4288)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !197, line: 529, size: 128, elements: !2442)
!2442 = !{!2443, !2447}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2441, file: !197, line: 531, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2446, line: 13, flags: DIFlagFwdDecl)
!2446 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2441, file: !197, line: 532, baseType: !2448, size: 64, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !197, line: 49, flags: DIFlagFwdDecl)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2181, file: !197, line: 738, baseType: !2451, size: 64, offset: 4416)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2453)
!2453 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !197, line: 738, flags: DIFlagFwdDecl)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2181, file: !197, line: 740, baseType: !2455, size: 64, offset: 4480)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2181, file: !197, line: 741, baseType: !398, size: 64, offset: 4544)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2181, file: !197, line: 746, baseType: !398, size: 64, offset: 4608)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2181, file: !197, line: 747, baseType: !2459, size: 64, offset: 4672)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2461)
!2461 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !197, line: 747, flags: DIFlagFwdDecl)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2181, file: !197, line: 749, baseType: !2463, size: 64, offset: 4736)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !197, line: 428, size: 128, elements: !2465)
!2465 = !{!2466, !2467, !2468}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2464, file: !197, line: 433, baseType: !7, size: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2464, file: !197, line: 434, baseType: !7, size: 32, offset: 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2464, file: !197, line: 435, baseType: !40, size: 64, offset: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2181, file: !197, line: 751, baseType: !98, size: 128, offset: 4800)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2181, file: !197, line: 762, baseType: !2471, size: 64, offset: 4928)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !197, line: 762, flags: DIFlagFwdDecl)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2181, file: !197, line: 770, baseType: !2474, offset: 4992)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2475, line: 5, elements: !668)
!2475 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2181, file: !197, line: 772, baseType: !2477, size: 64, offset: 4992)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2479, line: 18, flags: DIFlagFwdDecl)
!2479 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2181, file: !197, line: 773, baseType: !2481, size: 64, offset: 5056)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2247, line: 22, flags: DIFlagFwdDecl)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2181, file: !197, line: 776, baseType: !23, size: 32, offset: 5120)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2181, file: !197, line: 778, baseType: !1302, size: 32, offset: 5152)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2181, file: !197, line: 779, baseType: !340, size: 32, offset: 5184)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2181, file: !197, line: 781, baseType: !60, size: 32, offset: 5216)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2181, file: !197, line: 782, baseType: !98, size: 128, offset: 5248)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2181, file: !197, line: 784, baseType: !2489, size: 64, offset: 5376)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2491)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2492, line: 52, size: 768, elements: !2493)
!2492 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2493 = !{!2494, !2495, !2496, !2497, !2498, !2502, !2506, !2507, !2508, !2535, !2539, !2543}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2491, file: !2492, line: 53, baseType: !17, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2491, file: !2492, line: 55, baseType: !1556, size: 64, offset: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2491, file: !2492, line: 56, baseType: !1556, size: 64, offset: 128)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2491, file: !2492, line: 58, baseType: !2198, size: 64, offset: 192)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2491, file: !2492, line: 59, baseType: !2499, size: 64, offset: 256)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!947, !2201, !2207}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2491, file: !2492, line: 61, baseType: !2503, size: 64, offset: 320)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{null, !2489}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2491, file: !2492, line: 62, baseType: !2209, size: 64, offset: 384)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2491, file: !2492, line: 64, baseType: !2218, size: 64, offset: 448)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2491, file: !2492, line: 66, baseType: !2509, size: 64, offset: 512)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2511)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !219, line: 39, size: 384, elements: !2512)
!2512 = !{!2513, !2514, !2518, !2522, !2530, !2534}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2511, file: !219, line: 40, baseType: !218, size: 32)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2511, file: !219, line: 41, baseType: !2515, size: 64, offset: 64)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!859}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2511, file: !219, line: 42, baseType: !2519, size: 64, offset: 128)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!21}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2511, file: !219, line: 43, baseType: !2523, size: 64, offset: 192)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!2526, !2528}
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !219, line: 19, flags: DIFlagFwdDecl)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2511, file: !219, line: 44, baseType: !2531, size: 64, offset: 256)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!2526}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2511, file: !219, line: 45, baseType: !1259, size: 64, offset: 320)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2491, file: !2492, line: 67, baseType: !2536, size: 64, offset: 576)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!2526, !2201}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2491, file: !2492, line: 69, baseType: !2540, size: 64, offset: 640)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{null, !2201, !1049, !1050}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2491, file: !2492, line: 71, baseType: !2213, size: 64, offset: 704)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2181, file: !197, line: 785, baseType: !1556, size: 64, offset: 5440)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2181, file: !197, line: 787, baseType: !2209, size: 64, offset: 5504)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2181, file: !197, line: 788, baseType: !2547, size: 64, offset: 5568)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !197, line: 46, flags: DIFlagFwdDecl)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2181, file: !197, line: 789, baseType: !2550, size: 64, offset: 5632)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !197, line: 48, flags: DIFlagFwdDecl)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2181, file: !197, line: 791, baseType: !2553, size: 64, offset: 5696)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !197, line: 597, size: 128, elements: !2555)
!2555 = !{!2556, !2557, !2558, !2559, !2560}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2554, file: !197, line: 598, baseType: !224, size: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2554, file: !197, line: 599, baseType: !233, size: 32, offset: 32)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2554, file: !197, line: 600, baseType: !238, size: 32, offset: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2554, file: !197, line: 601, baseType: !859, size: 8, offset: 96)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2554, file: !197, line: 602, baseType: !859, size: 8, offset: 104)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2181, file: !197, line: 793, baseType: !243, size: 32, offset: 5760)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2181, file: !197, line: 795, baseType: !859, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2181, file: !197, line: 796, baseType: !859, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2181, file: !197, line: 797, baseType: !859, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2181, file: !197, line: 798, baseType: !859, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2181, file: !197, line: 799, baseType: !859, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !2099, file: !2100, line: 302, baseType: !675, size: 64, offset: 1344)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !2099, file: !2100, line: 303, baseType: !7, size: 32, offset: 1408)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !2099, file: !2100, line: 304, baseType: !1024, size: 256, offset: 1472)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2099, file: !2100, line: 305, baseType: !60, size: 32, offset: 1728)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !2099, file: !2100, line: 318, baseType: !60, size: 32, offset: 1760)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !2099, file: !2100, line: 322, baseType: !986, size: 256, offset: 1792)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !2099, file: !2100, line: 323, baseType: !2119, size: 128, offset: 2048)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !2099, file: !2100, line: 324, baseType: !2575, offset: 2176)
!2575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, elements: !1090)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1594, file: !276, line: 444, baseType: !2578, size: 64, offset: 1152)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{null, !675}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1594, file: !276, line: 445, baseType: !2582, size: 64, offset: 1216)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!23, !2033, !2071}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1581, file: !276, line: 486, baseType: !40, size: 64, offset: 896)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1581, file: !276, line: 487, baseType: !879, size: 320, offset: 960)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1581, file: !276, line: 488, baseType: !2588, size: 32, offset: 1280)
!2588 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2589, line: 8, baseType: !340)
!2589 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1581, file: !276, line: 489, baseType: !60, size: 32, offset: 1312)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1581, file: !276, line: 490, baseType: !98, size: 128, offset: 1344)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1581, file: !276, line: 491, baseType: !21, size: 64, offset: 1472)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1571, file: !1540, line: 180, baseType: !2594, size: 64, offset: 320)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!1380, !675, !1482, !1570, !947, !42, !36}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1571, file: !1540, line: 182, baseType: !2594, size: 64, offset: 384)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1571, file: !1540, line: 184, baseType: !2599, size: 64, offset: 448)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!23, !675, !1482, !1570, !1710}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1559, file: !1540, line: 90, baseType: !2603, size: 64, offset: 192)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1559, file: !1540, line: 91, baseType: !2605, size: 64, offset: 256)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1530, file: !1477, line: 120, baseType: !2607, size: 64, offset: 192)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!2509, !1500}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1530, file: !1477, line: 121, baseType: !2611, size: 64, offset: 256)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!2526, !1500}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1530, file: !1477, line: 122, baseType: !2615, size: 64, offset: 320)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{null, !1500, !1049, !1050}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1476, file: !1477, line: 70, baseType: !2619, size: 64, offset: 384)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1449, line: 190, size: 1152, elements: !2621)
!2621 = !{!2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2752, !2753, !2754, !2755, !2756, !2759}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2620, file: !1449, line: 191, baseType: !50, size: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2620, file: !1449, line: 192, baseType: !50, size: 32, offset: 32)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2620, file: !1449, line: 202, baseType: !2619, size: 64, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2620, file: !1449, line: 203, baseType: !17, size: 64, offset: 128)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2620, file: !1449, line: 205, baseType: !390, size: 192, align: 64, offset: 192)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2620, file: !1449, line: 207, baseType: !2526, size: 64, offset: 384)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2620, file: !1449, line: 208, baseType: !7, size: 32, offset: 448)
!2629 = !DIDerivedType(tag: DW_TAG_member, scope: !2620, file: !1449, line: 209, baseType: !2630, size: 256, offset: 512)
!2630 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2620, file: !1449, line: 209, size: 256, elements: !2631)
!2631 = !{!2632, !2641, !2645}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2630, file: !1449, line: 210, baseType: !2633, size: 256)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1449, line: 153, size: 256, elements: !2634)
!2634 = !{!2635, !2636, !2637, !2640}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2633, file: !1449, line: 154, baseType: !40, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2633, file: !1449, line: 156, baseType: !533, size: 64, offset: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2633, file: !1449, line: 162, baseType: !2638, size: 64, offset: 128)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1449, line: 162, flags: DIFlagFwdDecl)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2633, file: !1449, line: 167, baseType: !40, size: 64, offset: 192)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2630, file: !1449, line: 211, baseType: !2642, size: 64)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1449, line: 170, size: 64, elements: !2643)
!2643 = !{!2644}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2642, file: !1449, line: 171, baseType: !2619, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2630, file: !1449, line: 212, baseType: !2646, size: 256)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1449, line: 174, size: 256, elements: !2647)
!2647 = !{!2648, !2747, !2750, !2751}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2646, file: !1449, line: 175, baseType: !2649, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2651)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1449, line: 271, size: 768, elements: !2652)
!2652 = !{!2653, !2711, !2715, !2716, !2717, !2718, !2719, !2723, !2724, !2725, !2726, !2743}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2651, file: !1449, line: 276, baseType: !2654, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!23, !2657}
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1449, line: 251, size: 1216, elements: !2659)
!2659 = !{!2660, !2661, !2662, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2658, file: !1449, line: 253, baseType: !2619, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2658, file: !1449, line: 254, baseType: !675, size: 64, offset: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2658, file: !1449, line: 255, baseType: !2663, size: 64, offset: 128)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2665, line: 17, size: 960, elements: !2666)
!2665 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2666 = !{!2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2696, !2697, !2700}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2664, file: !2665, line: 18, baseType: !947, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2664, file: !2665, line: 19, baseType: !36, size: 64, offset: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2664, file: !2665, line: 20, baseType: !36, size: 64, offset: 128)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2664, file: !2665, line: 21, baseType: !36, size: 64, offset: 192)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2664, file: !2665, line: 22, baseType: !36, size: 64, offset: 256)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2664, file: !2665, line: 23, baseType: !42, size: 64, offset: 320)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2664, file: !2665, line: 24, baseType: !42, size: 64, offset: 384)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2664, file: !2665, line: 25, baseType: !703, size: 256, offset: 448)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2664, file: !2665, line: 26, baseType: !2676, size: 64, offset: 704)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2678)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2665, line: 32, size: 256, elements: !2679)
!2679 = !{!2680, !2684, !2688, !2692}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2678, file: !2665, line: 33, baseType: !2681, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!21, !2663, !41}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2678, file: !2665, line: 34, baseType: !2685, size: 64, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{null, !2663, !21}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2678, file: !2665, line: 35, baseType: !2689, size: 64, offset: 128)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!21, !2663, !21, !41}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2678, file: !2665, line: 36, baseType: !2693, size: 64, offset: 192)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!23, !2663, !21}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2664, file: !2665, line: 27, baseType: !23, size: 32, offset: 768)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2664, file: !2665, line: 28, baseType: !2698, size: 64, offset: 832)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !676)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2664, file: !2665, line: 29, baseType: !21, size: 64, offset: 896)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2658, file: !1449, line: 256, baseType: !21, size: 64, offset: 192)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2658, file: !1449, line: 259, baseType: !703, size: 256, offset: 256)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2658, file: !1449, line: 260, baseType: !703, size: 256, offset: 512)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2658, file: !1449, line: 261, baseType: !23, size: 32, offset: 768)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2658, file: !1449, line: 262, baseType: !98, size: 128, offset: 832)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2658, file: !1449, line: 263, baseType: !947, size: 64, offset: 960)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2658, file: !1449, line: 265, baseType: !36, size: 64, offset: 1024)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2658, file: !1449, line: 266, baseType: !859, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2658, file: !1449, line: 267, baseType: !859, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2658, file: !1449, line: 268, baseType: !1755, size: 64, offset: 1152)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2651, file: !1449, line: 277, baseType: !2712, size: 64, offset: 64)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{null, !2657}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2651, file: !1449, line: 290, baseType: !2693, size: 64, offset: 128)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2651, file: !1449, line: 292, baseType: !2681, size: 64, offset: 192)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2651, file: !1449, line: 293, baseType: !2689, size: 64, offset: 256)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2651, file: !1449, line: 294, baseType: !2685, size: 64, offset: 320)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2651, file: !1449, line: 296, baseType: !2720, size: 64, offset: 384)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!1380, !2657, !947, !36, !42}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2651, file: !1449, line: 306, baseType: !36, size: 64, offset: 448)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2651, file: !1449, line: 313, baseType: !859, size: 8, offset: 512)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2651, file: !1449, line: 314, baseType: !2720, size: 64, offset: 576)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2651, file: !1449, line: 317, baseType: !2727, size: 64, offset: 640)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!2730, !2657, !2732}
!2730 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2731, line: 59, baseType: !7)
!2731 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2734, line: 37, size: 128, elements: !2735)
!2734 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2735 = !{!2736, !2742}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2733, file: !2734, line: 38, baseType: !2737, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2734, line: 31, baseType: !2738)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{null, !675, !2741, !2732}
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2733, file: !2734, line: 39, baseType: !2730, size: 32, offset: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2651, file: !1449, line: 320, baseType: !2744, size: 64, offset: 704)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!23, !2657, !1710}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2646, file: !1449, line: 176, baseType: !2748, size: 64, offset: 64)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1449, line: 35, flags: DIFlagFwdDecl)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2646, file: !1449, line: 177, baseType: !42, size: 64, offset: 128)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2646, file: !1449, line: 178, baseType: !2619, size: 64, offset: 192)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2620, file: !1449, line: 215, baseType: !21, size: 64, offset: 768)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2620, file: !1449, line: 221, baseType: !398, size: 64, offset: 832)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2620, file: !1449, line: 223, baseType: !27, size: 16, offset: 896)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2620, file: !1449, line: 224, baseType: !25, size: 16, offset: 912)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2620, file: !1449, line: 225, baseType: !2757, size: 64, offset: 960)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1449, line: 36, flags: DIFlagFwdDecl)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2620, file: !1449, line: 227, baseType: !683, size: 128, align: 64, offset: 1024)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1476, file: !1477, line: 71, baseType: !2761, size: 32, offset: 448)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2762, line: 19, size: 32, elements: !2763)
!2762 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2763 = !{!2764}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2761, file: !2762, line: 20, baseType: !346, size: 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1476, file: !1477, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1476, file: !1477, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1476, file: !1477, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1476, file: !1477, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1476, file: !1477, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1473, file: !148, line: 47, baseType: !1463, size: 64, offset: 512)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1473, file: !148, line: 48, baseType: !1482, size: 64, offset: 576)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1473, file: !148, line: 49, baseType: !2773, size: 64, offset: 640)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !148, line: 49, flags: DIFlagFwdDecl)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1473, file: !148, line: 50, baseType: !1023, size: 64, offset: 704)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1464, file: !148, line: 418, baseType: !2777, size: 64, offset: 1408)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !148, line: 53, size: 448, elements: !2779)
!2779 = !{!2780, !2781, !2786, !2790, !2794, !2798}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2778, file: !148, line: 54, baseType: !1547, size: 128)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2778, file: !148, line: 55, baseType: !2782, size: 64, offset: 128)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!1380, !2777, !2785, !947}
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2778, file: !148, line: 57, baseType: !2787, size: 64, offset: 192)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!1380, !2777, !2785, !17, !36}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2778, file: !148, line: 59, baseType: !2791, size: 64, offset: 256)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{null, !1463, !17}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2778, file: !148, line: 60, baseType: !2795, size: 64, offset: 320)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!23, !1463}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2778, file: !148, line: 61, baseType: !2799, size: 64, offset: 384)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{null, !1463}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1464, file: !148, line: 419, baseType: !17, size: 64, offset: 1472)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1464, file: !148, line: 420, baseType: !17, size: 64, offset: 1536)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1464, file: !148, line: 421, baseType: !1482, size: 64, offset: 1600)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1464, file: !148, line: 424, baseType: !2806, size: 64, offset: 1664)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2808)
!2808 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !148, line: 424, flags: DIFlagFwdDecl)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1464, file: !148, line: 425, baseType: !2810, size: 64, offset: 1728)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !871)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1464, file: !148, line: 426, baseType: !7, size: 32, offset: 1792)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1464, file: !148, line: 435, baseType: !703, size: 256, offset: 1856)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1464, file: !148, line: 437, baseType: !2815, size: 64, offset: 2112)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2817, line: 69, size: 320, elements: !2818)
!2817 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2818 = !{!2819, !2820, !2821, !2838, !2840, !2843, !2844}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2816, file: !2817, line: 70, baseType: !17, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2816, file: !2817, line: 71, baseType: !1463, size: 64, offset: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2816, file: !2817, line: 72, baseType: !2822, size: 64, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2824)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2817, line: 47, size: 256, elements: !2825)
!2825 = !{!2826, !2827, !2833, !2837}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2824, file: !2817, line: 49, baseType: !7, size: 32)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2824, file: !2817, line: 51, baseType: !2828, size: 64, offset: 64)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!23, !17, !2831}
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2816)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2824, file: !2817, line: 53, baseType: !2834, size: 64, offset: 128)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!23, !947, !2831}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2824, file: !2817, line: 55, baseType: !1259, size: 64, offset: 192)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2816, file: !2817, line: 73, baseType: !2839, size: 16, offset: 192)
!2839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2816, file: !2817, line: 74, baseType: !2841, size: 8, offset: 208)
!2841 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !85, line: 16, baseType: !2842)
!2842 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !87, line: 20, baseType: !2107)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2816, file: !2817, line: 75, baseType: !84, size: 8, offset: 216)
!2844 = !DIDerivedType(tag: DW_TAG_member, scope: !2816, file: !2817, line: 76, baseType: !2845, size: 64, offset: 256)
!2845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2816, file: !2817, line: 76, size: 64, elements: !2846)
!2846 = !{!2847, !2848, !2855}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2845, file: !2817, line: 77, baseType: !21, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2845, file: !2817, line: 78, baseType: !2849, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2851)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2817, line: 86, size: 128, elements: !2852)
!2852 = !{!2853, !2854}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2851, file: !2817, line: 87, baseType: !7, size: 32)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2851, file: !2817, line: 88, baseType: !947, size: 64, offset: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2845, file: !2817, line: 79, baseType: !2856, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2858)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2817, line: 92, size: 256, elements: !2859)
!2859 = !{!2860, !2861, !2862, !2863, !2864}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2858, file: !2817, line: 94, baseType: !7, size: 32)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2858, file: !2817, line: 95, baseType: !7, size: 32, offset: 32)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2858, file: !2817, line: 96, baseType: !2130, size: 64, offset: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2858, file: !2817, line: 97, baseType: !2822, size: 64, offset: 128)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2858, file: !2817, line: 98, baseType: !21, size: 64, offset: 192)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1464, file: !148, line: 438, baseType: !7, size: 32, offset: 2176)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1464, file: !148, line: 441, baseType: !7, size: 32, offset: 2208)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1464, file: !148, line: 442, baseType: !2806, size: 64, offset: 2240)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1464, file: !148, line: 443, baseType: !2810, size: 64, offset: 2304)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1464, file: !148, line: 444, baseType: !859, size: 8, offset: 2368)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1464, file: !148, line: 451, baseType: !859, size: 8, offset: 2376)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1464, file: !148, line: 454, baseType: !7, size: 32, offset: 2400)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1464, file: !148, line: 455, baseType: !2873, size: 64, offset: 2432)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2875, line: 23, size: 96, elements: !2876)
!2875 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2876 = !{!2877, !2878, !2879}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2874, file: !2875, line: 24, baseType: !23, size: 32)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2874, file: !2875, line: 24, baseType: !23, size: 32, offset: 32)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2874, file: !2875, line: 24, baseType: !23, size: 32, offset: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1464, file: !148, line: 458, baseType: !2881, size: 64, offset: 2496)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!23}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1464, file: !148, line: 460, baseType: !2885, size: 4032, align: 512, offset: 2560)
!2885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2886, size: 4032, elements: !2902)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !148, line: 362, size: 576, elements: !2887)
!2887 = !{!2888, !2889, !2890}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2886, file: !148, line: 363, baseType: !21, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2886, file: !148, line: 364, baseType: !7, size: 32, offset: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2886, file: !148, line: 367, baseType: !2891, size: 448, offset: 128)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !148, line: 319, size: 448, elements: !2892)
!2892 = !{!2893, !2894}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2891, file: !148, line: 320, baseType: !1463, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2891, file: !148, line: 321, baseType: !2895, size: 384, offset: 64)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2896, line: 40, size: 384, elements: !2897)
!2896 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2897 = !{!2898}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2895, file: !2896, line: 41, baseType: !2899, size: 384, align: 64)
!2899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 384, align: 64, elements: !2900)
!2900 = !{!2901}
!2901 = !DISubrange(count: 2)
!2902 = !{!2903}
!2903 = !DISubrange(count: 7)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1464, file: !148, line: 463, baseType: !2905, size: 192, offset: 6592)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2906, line: 8, size: 192, elements: !2907)
!2906 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2907 = !{!2908, !2909, !2911}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2905, file: !2906, line: 10, baseType: !7, size: 32)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2905, file: !2906, line: 11, baseType: !2910, size: 64, offset: 64)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2905, file: !2906, line: 12, baseType: !2912, size: 64, offset: 128)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2914, line: 59, size: 48, elements: !2915)
!2914 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2915 = !{!2916, !2919, !2920, !2921, !2922, !2923}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2913, file: !2914, line: 60, baseType: !2917, size: 16)
!2917 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !85, line: 18, baseType: !2918)
!2918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !87, line: 23, baseType: !907)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2913, file: !2914, line: 61, baseType: !2917, size: 16, offset: 16)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2913, file: !2914, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2913, file: !2914, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2913, file: !2914, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2913, file: !2914, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1464, file: !148, line: 465, baseType: !40, size: 64, offset: 6784)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1464, file: !148, line: 469, baseType: !7, size: 32, offset: 6848)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1464, file: !148, line: 470, baseType: !98, size: 128, offset: 6912)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1464, file: !148, line: 471, baseType: !2928, size: 64, offset: 7040)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2930, line: 33, size: 96, elements: !2931)
!2930 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2931 = !{!2932, !2933, !2934, !2935}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2929, file: !2930, line: 37, baseType: !23, size: 32)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2929, file: !2930, line: 43, baseType: !23, size: 32, offset: 32)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2929, file: !2930, line: 45, baseType: !27, size: 16, offset: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2929, file: !2930, line: 47, baseType: !27, size: 16, offset: 80)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1464, file: !148, line: 476, baseType: !2937, size: 64, offset: 7104)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !148, line: 378, size: 256, elements: !2939)
!2939 = !{!2940, !2956, !2957, !2958}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2938, file: !148, line: 379, baseType: !2941, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2943, line: 204, baseType: !2944)
!2943 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2943, line: 197, size: 192, elements: !2945)
!2945 = !{!2946, !2948, !2949, !2950, !2952, !2954}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2944, file: !2943, line: 198, baseType: !2947, size: 32)
!2947 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2943, line: 21, baseType: !341)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2944, file: !2943, line: 199, baseType: !88, size: 8, offset: 32)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2944, file: !2943, line: 200, baseType: !88, size: 8, offset: 40)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2944, file: !2943, line: 201, baseType: !2951, size: 16, offset: 48)
!2951 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2943, line: 17, baseType: !95)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2944, file: !2943, line: 202, baseType: !2953, size: 64, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2943, line: 16, baseType: !399)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2944, file: !2943, line: 203, baseType: !2955, size: 64, offset: 128)
!2955 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2943, line: 22, baseType: !399)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2938, file: !148, line: 380, baseType: !7, size: 32, offset: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2938, file: !148, line: 381, baseType: !947, size: 64, offset: 128)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2938, file: !148, line: 382, baseType: !947, size: 64, offset: 192)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1464, file: !148, line: 477, baseType: !2938, size: 256, offset: 7168)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1464, file: !148, line: 480, baseType: !2961, size: 64, offset: 7424)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !148, line: 480, flags: DIFlagFwdDecl)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1464, file: !148, line: 483, baseType: !2964, size: 64, offset: 7488)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !148, line: 483, flags: DIFlagFwdDecl)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1464, file: !148, line: 488, baseType: !947, size: 64, offset: 7552)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1464, file: !148, line: 492, baseType: !21, size: 64, offset: 7616)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1464, file: !148, line: 493, baseType: !7, size: 32, offset: 7680)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1464, file: !148, line: 495, baseType: !21, size: 64, offset: 7744)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1464, file: !148, line: 496, baseType: !7, size: 32, offset: 7808)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1464, file: !148, line: 499, baseType: !7, size: 32, offset: 7840)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1464, file: !148, line: 500, baseType: !2973, size: 64, offset: 7872)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2975, line: 45, baseType: !2976)
!2975 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1464, file: !148, line: 503, baseType: !7, size: 32, offset: 7936)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1464, file: !148, line: 504, baseType: !2979, size: 64, offset: 8000)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2982, line: 96, size: 192, elements: !2983)
!2982 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2983 = !{!2984, !2985, !3027, !3030}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2981, file: !2982, line: 97, baseType: !7, size: 32)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2981, file: !2982, line: 98, baseType: !2986, size: 64, offset: 64)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2982, line: 24, size: 3072, elements: !2988)
!2988 = !{!2989, !2991, !2992, !2993, !2994, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3024, !3025, !3026}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2987, file: !2982, line: 26, baseType: !2990, size: 128)
!2990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 128, elements: !2900)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2987, file: !2982, line: 27, baseType: !2990, size: 128, offset: 128)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2987, file: !2982, line: 28, baseType: !23, size: 32, offset: 256)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2987, file: !2982, line: 31, baseType: !60, size: 32, align: 512, offset: 512)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2987, file: !2982, line: 32, baseType: !2995, size: 960, offset: 576)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2996, line: 206, size: 960, elements: !2997)
!2996 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2997 = !{!2998, !2999, !3002, !3004, !3005, !3006}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2995, file: !2996, line: 207, baseType: !686, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2995, file: !2996, line: 208, baseType: !3000, size: 256, offset: 64)
!3000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3001, size: 256, elements: !760)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2995, file: !2996, line: 209, baseType: !3003, size: 256, offset: 320)
!3003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 256, elements: !760)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2995, file: !2996, line: 213, baseType: !1083, size: 64, offset: 576)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2995, file: !2996, line: 215, baseType: !1085, size: 256, offset: 640)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2995, file: !2996, line: 216, baseType: !84, size: 8, offset: 896)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2987, file: !2982, line: 33, baseType: !40, size: 64, offset: 1536)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2987, file: !2982, line: 34, baseType: !40, size: 64, offset: 1600)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2987, file: !2982, line: 35, baseType: !859, size: 8, offset: 1664)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2987, file: !2982, line: 36, baseType: !2355, size: 320, offset: 1728)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2987, file: !2982, line: 37, baseType: !986, size: 256, offset: 2048)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2987, file: !2982, line: 38, baseType: !683, size: 128, align: 64, offset: 2304)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2987, file: !2982, line: 39, baseType: !3014, size: 64, offset: 2432)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2982, line: 49, size: 768, elements: !3016)
!3016 = !{!3017, !3018, !3019, !3020, !3021, !3022, !3023}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3015, file: !2982, line: 50, baseType: !60, size: 32)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3015, file: !2982, line: 51, baseType: !3003, size: 256, offset: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3015, file: !2982, line: 53, baseType: !3003, size: 256, offset: 320)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3015, file: !2982, line: 54, baseType: !40, size: 64, offset: 576)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3015, file: !2982, line: 55, baseType: !3014, size: 64, offset: 640)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3015, file: !2982, line: 56, baseType: !23, size: 32, offset: 704)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3015, file: !2982, line: 57, baseType: !23, size: 32, offset: 736)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2987, file: !2982, line: 40, baseType: !40, size: 64, offset: 2496)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2987, file: !2982, line: 42, baseType: !23, size: 32, offset: 2560)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2987, file: !2982, line: 43, baseType: !2980, size: 64, offset: 2624)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2981, file: !2982, line: 99, baseType: !3028, offset: 128)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !3029, line: 211, elements: !668)
!3029 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2981, file: !2982, line: 100, baseType: !3031, size: 64, offset: 128)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2982, line: 63, size: 3008, elements: !3033)
!3033 = !{!3034, !3035, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3065}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3032, file: !2982, line: 64, baseType: !3014, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3032, file: !2982, line: 65, baseType: !3036, size: 192, offset: 64)
!3036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3014, size: 192, elements: !739)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3032, file: !2982, line: 67, baseType: !23, size: 32, offset: 256)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3032, file: !2982, line: 68, baseType: !703, size: 256, offset: 320)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3032, file: !2982, line: 69, baseType: !60, size: 32, offset: 576)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3032, file: !2982, line: 70, baseType: !703, size: 256, offset: 640)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3032, file: !2982, line: 71, baseType: !40, size: 64, offset: 896)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3032, file: !2982, line: 72, baseType: !40, size: 64, offset: 960)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3032, file: !2982, line: 73, baseType: !40, size: 64, offset: 1024)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3032, file: !2982, line: 74, baseType: !40, size: 64, offset: 1088)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3032, file: !2982, line: 75, baseType: !40, size: 64, offset: 1152)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3032, file: !2982, line: 76, baseType: !40, size: 64, offset: 1216)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3032, file: !2982, line: 77, baseType: !40, size: 64, offset: 1280)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3032, file: !2982, line: 78, baseType: !40, size: 64, offset: 1344)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3032, file: !2982, line: 79, baseType: !859, size: 8, offset: 1408)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3032, file: !2982, line: 80, baseType: !40, size: 64, offset: 1472)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3032, file: !2982, line: 81, baseType: !703, size: 256, offset: 1536)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3032, file: !2982, line: 82, baseType: !1024, size: 256, offset: 1792)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3032, file: !2982, line: 84, baseType: !50, size: 32, offset: 2048)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3032, file: !2982, line: 87, baseType: !40, size: 64, offset: 2112)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3032, file: !2982, line: 88, baseType: !40, size: 64, offset: 2176)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3032, file: !2982, line: 89, baseType: !3057, size: 704, offset: 2240)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !109, line: 111, size: 704, elements: !3058)
!3058 = !{!3059, !3060, !3061, !3064}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3057, file: !109, line: 112, baseType: !986, size: 256)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3057, file: !109, line: 113, baseType: !2355, size: 320, offset: 256)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3057, file: !109, line: 116, baseType: !3062, size: 64, offset: 576)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !109, line: 18, flags: DIFlagFwdDecl)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3057, file: !109, line: 117, baseType: !23, size: 32, offset: 640)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3032, file: !2982, line: 90, baseType: !2980, size: 64, offset: 2944)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1464, file: !148, line: 515, baseType: !3067, size: 64, offset: 8064)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3069, line: 117, size: 128, elements: !3070)
!3069 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3070 = !{!3071, !3072, !3073}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3068, file: !3069, line: 118, baseType: !871, size: 32)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3068, file: !3069, line: 119, baseType: !871, size: 32, offset: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3068, file: !3069, line: 120, baseType: !1083, size: 64, offset: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1464, file: !148, line: 516, baseType: !7, size: 32, offset: 8128)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1464, file: !148, line: 519, baseType: !7, size: 32, offset: 8160)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1464, file: !148, line: 520, baseType: !3077, size: 64, offset: 8192)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1464, file: !148, line: 523, baseType: !3079, size: 64, offset: 8256)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !250, line: 372, size: 1024, elements: !3082)
!3082 = !{!3083, !3084, !3124, !3184, !3265, !3266, !3269, !3274, !3275, !3276, !3277, !3279, !3282}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3081, file: !250, line: 373, baseType: !98, size: 128)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3081, file: !250, line: 374, baseType: !3085, size: 64, offset: 128)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !250, line: 291, size: 576, elements: !3087)
!3087 = !{!3088, !3089, !3090, !3091, !3095, !3118, !3122, !3123}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !3086, file: !250, line: 292, baseType: !17, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3086, file: !250, line: 293, baseType: !21, size: 64, offset: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !3086, file: !250, line: 295, baseType: !21, size: 64, offset: 128)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3086, file: !250, line: 297, baseType: !3092, size: 64, offset: 192)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!23, !3080, !249, !21}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !3086, file: !250, line: 299, baseType: !3096, size: 64, offset: 256)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !250, line: 275, size: 320, elements: !3098)
!3098 = !{!3099, !3100}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3097, file: !250, line: 276, baseType: !17, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, scope: !3097, file: !250, line: 277, baseType: !3101, size: 256, offset: 64)
!3101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3097, file: !250, line: 277, size: 256, elements: !3102)
!3102 = !{!3103, !3114}
!3103 = !DIDerivedType(tag: DW_TAG_member, scope: !3101, file: !250, line: 278, baseType: !3104, size: 256)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3101, file: !250, line: 278, size: 256, elements: !3105)
!3105 = !{!3106, !3107, !3108, !3109, !3111, !3112, !3113}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3104, file: !250, line: 279, baseType: !17, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3104, file: !250, line: 280, baseType: !2976, size: 32, offset: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3104, file: !250, line: 281, baseType: !2976, size: 32, offset: 96)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !3104, file: !250, line: 282, baseType: !3110, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !3104, file: !250, line: 283, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !3104, file: !250, line: 284, baseType: !2976, size: 32, offset: 160)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3104, file: !250, line: 285, baseType: !2976, size: 32, offset: 192)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !3101, file: !250, line: 287, baseType: !3115, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!23, !3080}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !3086, file: !250, line: 300, baseType: !3119, size: 64, offset: 320)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!101, !3080}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !3086, file: !250, line: 301, baseType: !98, size: 128, offset: 384)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !3086, file: !250, line: 302, baseType: !3115, size: 64, offset: 512)
!3124 = !DIDerivedType(tag: DW_TAG_member, scope: !3081, file: !250, line: 375, baseType: !3125, size: 64, offset: 192)
!3125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3081, file: !250, line: 375, size: 64, elements: !3126)
!3126 = !{!3127, !3128}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3125, file: !250, line: 376, baseType: !17, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !3125, file: !250, line: 378, baseType: !3129, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !2975, line: 32, size: 640, elements: !3131)
!3131 = !{!3132, !3133, !3145, !3169, !3170, !3171, !3172, !3173, !3177}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3130, file: !2975, line: 33, baseType: !17, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3130, file: !2975, line: 34, baseType: !3134, size: 128, offset: 64)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !3069, line: 85, size: 128, elements: !3135)
!3135 = !{!3136, !3137}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3134, file: !3069, line: 86, baseType: !50, size: 32)
!3137 = !DIDerivedType(tag: DW_TAG_member, scope: !3134, file: !3069, line: 101, baseType: !3138, size: 64, offset: 64)
!3138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3134, file: !3069, line: 101, size: 64, elements: !3139)
!3139 = !{!3140, !3141, !3142}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3138, file: !3069, line: 102, baseType: !40, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3138, file: !3069, line: 103, baseType: !3067, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3138, file: !3069, line: 104, baseType: !3143, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !3069, line: 104, flags: DIFlagFwdDecl)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !3130, file: !2975, line: 35, baseType: !3146, size: 64, offset: 192)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !3148, line: 61, size: 128, elements: !3149)
!3148 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3149 = !{!3150, !3151}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3147, file: !3148, line: 62, baseType: !21, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, scope: !3147, file: !3148, line: 63, baseType: !3152, size: 64, offset: 64)
!3152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3147, file: !3148, line: 63, size: 64, elements: !3153)
!3153 = !{!3154, !3155, !3168}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3152, file: !3148, line: 65, baseType: !40, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !3152, file: !3148, line: 66, baseType: !3156, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !3158, line: 169, size: 192, elements: !3159)
!3158 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!3159 = !{!3160, !3161, !3162}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3157, file: !3158, line: 170, baseType: !3156, size: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3157, file: !3158, line: 171, baseType: !1463, size: 64, offset: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !3157, file: !3158, line: 172, baseType: !3163, size: 64, offset: 128)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3148, line: 32, size: 64, elements: !3165)
!3165 = !{!3166, !3167}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3164, file: !3148, line: 33, baseType: !871, size: 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3164, file: !3148, line: 34, baseType: !871, size: 32, offset: 32)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !3152, file: !3148, line: 67, baseType: !3163, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !3130, file: !2975, line: 36, baseType: !21, size: 64, offset: 256)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !3130, file: !2975, line: 37, baseType: !21, size: 64, offset: 320)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !3130, file: !2975, line: 38, baseType: !21, size: 64, offset: 384)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !3130, file: !2975, line: 39, baseType: !2881, size: 64, offset: 448)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !3130, file: !2975, line: 40, baseType: !3174, size: 64, offset: 512)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{null}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !3130, file: !2975, line: 41, baseType: !3178, size: 64, offset: 576)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !2975, line: 26, size: 192, elements: !3180)
!3180 = !{!3181, !3182, !3183}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3179, file: !2975, line: 27, baseType: !21, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3179, file: !2975, line: 28, baseType: !21, size: 64, offset: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3179, file: !2975, line: 29, baseType: !23, size: 32, offset: 128)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3081, file: !250, line: 380, baseType: !3185, size: 256, offset: 256)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !250, line: 148, size: 256, elements: !3186)
!3186 = !{!3187, !3188, !3189}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3185, file: !250, line: 149, baseType: !755, size: 128)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3185, file: !250, line: 150, baseType: !23, size: 32, offset: 128)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !3185, file: !250, line: 151, baseType: !3190, size: 64, offset: 192)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !250, line: 141, size: 256, elements: !3192)
!3192 = !{!3193, !3262, !3263, !3264}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !3191, file: !250, line: 142, baseType: !3194, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !250, line: 138, baseType: !3195)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!260, !3198, !23, !3261}
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !250, line: 93, size: 67776, elements: !3200)
!3200 = !{!3201, !3204, !3207, !3210, !3211, !3212, !3213, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3241, !3244, !3245, !3246, !3254, !3255, !3256, !3257, !3258, !3259, !3260}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !3199, file: !250, line: 94, baseType: !3202, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !250, line: 13, flags: DIFlagFwdDecl)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !3199, file: !250, line: 95, baseType: !3205, size: 64, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !250, line: 15, flags: DIFlagFwdDecl)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !3199, file: !250, line: 96, baseType: !3208, size: 64, offset: 128)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !250, line: 14, flags: DIFlagFwdDecl)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3199, file: !250, line: 97, baseType: !21, size: 64, offset: 192)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !3199, file: !250, line: 98, baseType: !23, size: 32, offset: 256)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3199, file: !250, line: 99, baseType: !703, size: 256, offset: 320)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !3199, file: !250, line: 100, baseType: !3214, size: 64, offset: 576)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !3217, line: 10, flags: DIFlagFwdDecl)
!3217 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !3199, file: !250, line: 101, baseType: !40, size: 64, offset: 640)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !3199, file: !250, line: 102, baseType: !21, size: 64, offset: 704)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !3199, file: !250, line: 103, baseType: !7, size: 32, offset: 768)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !3199, file: !250, line: 104, baseType: !947, size: 64, offset: 832)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !3199, file: !250, line: 105, baseType: !7, size: 32, offset: 896)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !3199, file: !250, line: 106, baseType: !1083, size: 64, offset: 960)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !3199, file: !250, line: 109, baseType: !3225, size: 33088, offset: 1024)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !3226, line: 14, size: 33088, elements: !3227)
!3226 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!3227 = !{!3228, !3232, !3239, !3240}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3225, file: !3226, line: 15, baseType: !3229, size: 32768)
!3229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 32768, elements: !3230)
!3230 = !{!3231}
!3231 = !DISubrange(count: 4096)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3225, file: !3226, line: 16, baseType: !3233, size: 192, offset: 32768)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !3234, line: 18, size: 192, elements: !3235)
!3234 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!3235 = !{!3236, !3237, !3238}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3233, file: !3234, line: 19, baseType: !947, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3233, file: !3234, line: 20, baseType: !36, size: 64, offset: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3233, file: !3234, line: 21, baseType: !36, size: 64, offset: 128)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !3225, file: !3226, line: 17, baseType: !36, size: 64, offset: 32960)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3225, file: !3226, line: 18, baseType: !23, size: 32, offset: 33024)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !3199, file: !250, line: 111, baseType: !3242, size: 64, offset: 34112)
!3242 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !594, line: 913, baseType: !3243)
!3243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, size: 64, elements: !599)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !3199, file: !250, line: 114, baseType: !859, size: 8, offset: 34176)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3199, file: !250, line: 117, baseType: !3225, size: 33088, offset: 34240)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !3199, file: !250, line: 118, baseType: !3247, size: 64, offset: 67328)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !250, line: 79, size: 64, elements: !3249)
!3249 = !{!3250, !3251, !3252, !3253}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3248, file: !250, line: 80, baseType: !27, size: 16)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3248, file: !250, line: 81, baseType: !88, size: 8, offset: 16)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !3248, file: !250, line: 82, baseType: !88, size: 8, offset: 24)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3248, file: !250, line: 83, baseType: !23, size: 32, offset: 32)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !3199, file: !250, line: 119, baseType: !40, size: 64, offset: 67392)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !3199, file: !250, line: 120, baseType: !23, size: 32, offset: 67456)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !3199, file: !250, line: 121, baseType: !23, size: 32, offset: 67488)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3199, file: !250, line: 122, baseType: !23, size: 32, offset: 67520)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !3199, file: !250, line: 123, baseType: !398, size: 64, offset: 67584)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3199, file: !250, line: 125, baseType: !42, size: 64, offset: 67648)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3199, file: !250, line: 126, baseType: !1083, size: 64, offset: 67712)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3191, file: !250, line: 143, baseType: !3194, size: 64, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !3191, file: !250, line: 144, baseType: !3194, size: 64, offset: 128)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !3191, file: !250, line: 145, baseType: !3194, size: 64, offset: 192)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !3081, file: !250, line: 381, baseType: !947, size: 64, offset: 512)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3081, file: !250, line: 382, baseType: !3267, size: 64, offset: 576)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !267, line: 821, flags: DIFlagFwdDecl)
!3269 = !DIDerivedType(tag: DW_TAG_member, scope: !3081, file: !250, line: 387, baseType: !3270, size: 64, offset: 640)
!3270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3081, file: !250, line: 387, size: 64, elements: !3271)
!3271 = !{!3272, !3273}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3270, file: !250, line: 388, baseType: !21, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3270, file: !250, line: 389, baseType: !50, size: 32)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3081, file: !250, line: 391, baseType: !21, size: 64, offset: 704)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3081, file: !250, line: 394, baseType: !23, size: 32, offset: 768)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !3081, file: !250, line: 397, baseType: !23, size: 32, offset: 800)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !3081, file: !250, line: 398, baseType: !3278, size: 64, offset: 832)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !3081, file: !250, line: 399, baseType: !3280, size: 64, offset: 896)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !250, line: 399, flags: DIFlagFwdDecl)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !3081, file: !250, line: 401, baseType: !3283, size: 64, offset: 960)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!23, !3080, !3286}
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !267, line: 671, size: 8512, elements: !3288)
!3288 = !{!3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3472, !3473, !3474, !3475, !3481, !3482, !3483, !3484, !3485, !3569, !3570, !3571, !3572, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3692, !3693, !3694, !3695, !3696, !3697, !3712, !3713, !3714, !3715, !3716, !3722, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3739, !3910, !3911, !3912, !3913, !4183, !4184, !4185}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !3287, file: !267, line: 678, baseType: !98, size: 128)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !3287, file: !267, line: 684, baseType: !98, size: 128, offset: 128)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !3287, file: !267, line: 685, baseType: !98, size: 128, offset: 256)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3287, file: !267, line: 689, baseType: !390, size: 192, align: 64, offset: 384)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !3287, file: !267, line: 690, baseType: !398, size: 64, offset: 576)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !3287, file: !267, line: 696, baseType: !98, size: 128, offset: 640)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !3287, file: !267, line: 698, baseType: !755, size: 128, offset: 768)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !3287, file: !267, line: 699, baseType: !98, size: 128, offset: 896)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !3287, file: !267, line: 700, baseType: !23, size: 32, offset: 1024)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !3287, file: !267, line: 703, baseType: !23, size: 32, offset: 1056)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !3287, file: !267, line: 705, baseType: !23, size: 32, offset: 1088)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !3287, file: !267, line: 707, baseType: !7, size: 32, offset: 1120)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3287, file: !267, line: 708, baseType: !3286, size: 64, offset: 1152)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3287, file: !267, line: 714, baseType: !3303, size: 64, offset: 1216)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !267, line: 302, size: 2432, elements: !3305)
!3305 = !{!3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3382, !3383, !3384, !3385, !3386, !3390, !3391, !3395, !3399, !3400, !3404, !3408, !3409, !3410, !3414, !3418, !3422, !3423, !3424, !3428, !3429, !3433, !3437, !3438, !3458, !3462, !3463, !3464, !3468}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3304, file: !267, line: 303, baseType: !98, size: 128)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3304, file: !267, line: 305, baseType: !1463, size: 64, offset: 128)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3304, file: !267, line: 306, baseType: !2185, size: 64, offset: 192)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3304, file: !267, line: 307, baseType: !2185, size: 64, offset: 256)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !3304, file: !267, line: 308, baseType: !1556, size: 64, offset: 320)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !3304, file: !267, line: 309, baseType: !1556, size: 64, offset: 384)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3304, file: !267, line: 310, baseType: !17, size: 64, offset: 448)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3304, file: !267, line: 311, baseType: !23, size: 32, offset: 512)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3304, file: !267, line: 316, baseType: !23, size: 32, offset: 544)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !3304, file: !267, line: 318, baseType: !2910, size: 64, offset: 576)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !3304, file: !267, line: 319, baseType: !3317, size: 64, offset: 640)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !267, line: 977, size: 1856, elements: !3319)
!3319 = !{!3320, !3372, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3318, file: !267, line: 978, baseType: !3321, size: 896)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !267, line: 873, size: 896, elements: !3322)
!3322 = !{!3323, !3324, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3321, file: !267, line: 874, baseType: !3303, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3321, file: !267, line: 875, baseType: !3325, size: 64, offset: 64)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !267, line: 912, size: 1792, elements: !3327)
!3327 = !{!3328, !3329, !3330, !3331, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3326, file: !267, line: 917, baseType: !490, size: 32)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3326, file: !267, line: 923, baseType: !703, size: 256, offset: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3326, file: !267, line: 925, baseType: !98, size: 128, offset: 320)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3326, file: !267, line: 926, baseType: !3332, size: 128, offset: 448)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !267, line: 901, size: 128, elements: !3333)
!3333 = !{!3334, !3335}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3332, file: !267, line: 902, baseType: !533, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3332, file: !267, line: 903, baseType: !398, size: 64, offset: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3326, file: !267, line: 927, baseType: !3332, size: 128, offset: 576)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3326, file: !267, line: 928, baseType: !98, size: 128, offset: 704)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3326, file: !267, line: 930, baseType: !23, size: 32, offset: 832)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3326, file: !267, line: 931, baseType: !23, size: 32, offset: 864)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3326, file: !267, line: 932, baseType: !23, size: 32, offset: 896)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3326, file: !267, line: 934, baseType: !23, size: 32, offset: 928)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3326, file: !267, line: 935, baseType: !23, size: 32, offset: 960)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3326, file: !267, line: 936, baseType: !23, size: 32, offset: 992)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3326, file: !267, line: 937, baseType: !23, size: 32, offset: 1024)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3326, file: !267, line: 939, baseType: !346, size: 32, offset: 1056)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3326, file: !267, line: 940, baseType: !329, size: 64, offset: 1088)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3326, file: !267, line: 945, baseType: !398, size: 64, offset: 1152)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3326, file: !267, line: 946, baseType: !398, size: 64, offset: 1216)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3326, file: !267, line: 947, baseType: !398, size: 64, offset: 1280)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3326, file: !267, line: 953, baseType: !3325, size: 64, offset: 1344)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3326, file: !267, line: 954, baseType: !398, size: 64, offset: 1408)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3326, file: !267, line: 955, baseType: !398, size: 64, offset: 1472)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3326, file: !267, line: 956, baseType: !23, size: 32, offset: 1536)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3326, file: !267, line: 958, baseType: !23, size: 32, offset: 1568)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3326, file: !267, line: 960, baseType: !683, size: 128, align: 64, offset: 1600)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3326, file: !267, line: 968, baseType: !3357, size: 64, offset: 1728)
!3357 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3358, line: 12, baseType: !3359)
!3358 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3358, line: 10, size: 64, elements: !3360)
!3360 = !{!3361}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3359, file: !3358, line: 11, baseType: !696, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3321, file: !267, line: 877, baseType: !98, size: 128, offset: 128)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3321, file: !267, line: 879, baseType: !98, size: 128, offset: 256)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3321, file: !267, line: 880, baseType: !98, size: 128, offset: 384)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3321, file: !267, line: 883, baseType: !7, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3321, file: !267, line: 885, baseType: !7, size: 32, offset: 544)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3321, file: !267, line: 886, baseType: !7, size: 32, offset: 576)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3321, file: !267, line: 888, baseType: !50, size: 32, offset: 608)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3321, file: !267, line: 889, baseType: !683, size: 128, align: 64, offset: 640)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3321, file: !267, line: 891, baseType: !21, size: 64, offset: 768)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3321, file: !267, line: 898, baseType: !23, size: 32, offset: 832)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3318, file: !267, line: 979, baseType: !3373, size: 64, offset: 896)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3318, file: !267, line: 981, baseType: !98, size: 128, offset: 960)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3318, file: !267, line: 982, baseType: !23, size: 32, offset: 1088)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3318, file: !267, line: 984, baseType: !23, size: 32, offset: 1120)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3318, file: !267, line: 985, baseType: !23, size: 32, offset: 1152)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3318, file: !267, line: 987, baseType: !490, size: 32, offset: 1184)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3318, file: !267, line: 988, baseType: !465, size: 512, offset: 1216)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3318, file: !267, line: 989, baseType: !473, size: 64, offset: 1728)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3318, file: !267, line: 990, baseType: !7, size: 32, offset: 1792)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !3304, file: !267, line: 320, baseType: !50, size: 32, offset: 704)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !3304, file: !267, line: 321, baseType: !23, size: 32, offset: 736)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !3304, file: !267, line: 322, baseType: !23, size: 32, offset: 768)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !3304, file: !267, line: 325, baseType: !7, size: 32, offset: 800)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !3304, file: !267, line: 331, baseType: !3387, size: 64, offset: 832)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{null, !3303}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !3304, file: !267, line: 332, baseType: !3387, size: 64, offset: 896)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !3304, file: !267, line: 350, baseType: !3392, size: 64, offset: 960)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!23, !3286}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !3304, file: !267, line: 356, baseType: !3396, size: 64, offset: 1024)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{null, !3286, !647}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !3304, file: !267, line: 357, baseType: !3396, size: 64, offset: 1088)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !3304, file: !267, line: 385, baseType: !3401, size: 64, offset: 1152)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!23, !3286, !23}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !3304, file: !267, line: 386, baseType: !3405, size: 64, offset: 1216)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{null, !3286, !23}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3304, file: !267, line: 406, baseType: !3405, size: 64, offset: 1280)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3304, file: !267, line: 407, baseType: !3405, size: 64, offset: 1344)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3304, file: !267, line: 415, baseType: !3411, size: 64, offset: 1408)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{null, !3286}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !3304, file: !267, line: 427, baseType: !3415, size: 64, offset: 1472)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{null, !3303, !7}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !3304, file: !267, line: 436, baseType: !3419, size: 64, offset: 1536)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!23, !3303}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !3304, file: !267, line: 443, baseType: !3387, size: 64, offset: 1600)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !3304, file: !267, line: 450, baseType: !3392, size: 64, offset: 1664)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !3304, file: !267, line: 455, baseType: !3425, size: 64, offset: 1728)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{null, !3373, !859}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !3304, file: !267, line: 461, baseType: !792, size: 64, offset: 1792)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !3304, file: !267, line: 469, baseType: !3430, size: 64, offset: 1856)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{null, !3373, !3373}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !3304, file: !267, line: 476, baseType: !3434, size: 64, offset: 1920)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!21, !3286, !2007, !23, !859}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !3304, file: !267, line: 483, baseType: !1259, size: 64, offset: 1984)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !3304, file: !267, line: 494, baseType: !3439, size: 64, offset: 2048)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!1083, !3286, !3442, !40}
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !267, line: 1014, size: 448, elements: !3444)
!3444 = !{!3445, !3446, !3449, !3450, !3451, !3452, !3457}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3443, file: !267, line: 1015, baseType: !3286, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3443, file: !267, line: 1016, baseType: !3447, size: 64, offset: 64)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !267, line: 641, flags: DIFlagFwdDecl)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3443, file: !267, line: 1017, baseType: !40, size: 64, offset: 128)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3443, file: !267, line: 1018, baseType: !40, size: 64, offset: 192)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3443, file: !267, line: 1019, baseType: !398, size: 64, offset: 256)
!3452 = !DIDerivedType(tag: DW_TAG_member, scope: !3443, file: !267, line: 1020, baseType: !3453, size: 64, offset: 320)
!3453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3443, file: !267, line: 1020, size: 64, elements: !3454)
!3454 = !{!3455, !3456}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3453, file: !267, line: 1021, baseType: !21, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3453, file: !267, line: 1022, baseType: !40, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3443, file: !267, line: 1024, baseType: !23, size: 32, offset: 384)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !3304, file: !267, line: 506, baseType: !3459, size: 64, offset: 2112)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!23, !101}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !3304, file: !267, line: 520, baseType: !3411, size: 64, offset: 2176)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !3304, file: !267, line: 530, baseType: !3392, size: 64, offset: 2240)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3304, file: !267, line: 537, baseType: !3465, size: 64, offset: 2304)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!859, !3303, !23}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !3304, file: !267, line: 542, baseType: !3469, size: 64, offset: 2368)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!23, !3286, !398}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !3287, file: !267, line: 715, baseType: !21, size: 64, offset: 1280)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3287, file: !267, line: 717, baseType: !266, size: 32, offset: 1344)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !3287, file: !267, line: 718, baseType: !7, size: 32, offset: 1376)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3287, file: !267, line: 719, baseType: !3476, size: 64, offset: 1408)
!3476 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3477, line: 26, baseType: !3478)
!3477 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3477, line: 24, size: 64, elements: !3479)
!3479 = !{!3480}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3478, file: !3477, line: 25, baseType: !3357, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3287, file: !267, line: 720, baseType: !698, size: 64, offset: 1472)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !3287, file: !267, line: 728, baseType: !398, size: 64, offset: 1536)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !3287, file: !267, line: 729, baseType: !398, size: 64, offset: 1600)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !3287, file: !267, line: 730, baseType: !398, size: 64, offset: 1664)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3287, file: !267, line: 732, baseType: !3486, size: 1088, offset: 1728)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3487, line: 385, size: 1088, elements: !3488)
!3487 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3488 = !{!3489, !3490, !3491, !3492, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3542, !3543, !3550, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3486, file: !3487, line: 390, baseType: !341, size: 32)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3486, file: !3487, line: 395, baseType: !341, size: 32, offset: 32)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3486, file: !3487, line: 400, baseType: !399, size: 64, offset: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, scope: !3486, file: !3487, line: 402, baseType: !3493, size: 64, offset: 128)
!3493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3486, file: !3487, line: 402, size: 64, elements: !3494)
!3494 = !{!3495, !3496}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3493, file: !3487, line: 403, baseType: !399, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3493, file: !3487, line: 404, baseType: !399, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3486, file: !3487, line: 407, baseType: !399, size: 64, offset: 192)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3486, file: !3487, line: 408, baseType: !399, size: 64, offset: 256)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3486, file: !3487, line: 410, baseType: !399, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3486, file: !3487, line: 411, baseType: !399, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3486, file: !3487, line: 412, baseType: !399, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3486, file: !3487, line: 413, baseType: !399, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3486, file: !3487, line: 414, baseType: !399, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3486, file: !3487, line: 415, baseType: !399, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3486, file: !3487, line: 416, baseType: !399, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3486, file: !3487, line: 417, baseType: !399, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3486, file: !3487, line: 418, baseType: !399, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3486, file: !3487, line: 419, baseType: !399, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3486, file: !3487, line: 420, baseType: !399, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3486, file: !3487, line: 421, baseType: !399, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3486, file: !3487, line: 422, baseType: !399, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3486, file: !3487, line: 423, baseType: !399, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3486, file: !3487, line: 424, baseType: !399, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3486, file: !3487, line: 435, baseType: !399, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3486, file: !3487, line: 436, baseType: !399, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3486, file: !3487, line: 437, baseType: !399, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3486, file: !3487, line: 439, baseType: !399, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3486, file: !3487, line: 440, baseType: !399, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3486, file: !3487, line: 442, baseType: !399, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3486, file: !3487, line: 443, baseType: !399, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3486, file: !3487, line: 444, baseType: !399, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3486, file: !3487, line: 445, baseType: !399, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3486, file: !3487, line: 446, baseType: !399, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3486, file: !3487, line: 447, baseType: !399, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3486, file: !3487, line: 448, baseType: !399, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3486, file: !3487, line: 449, baseType: !399, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3486, file: !3487, line: 450, baseType: !399, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3486, file: !3487, line: 451, baseType: !399, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3486, file: !3487, line: 452, baseType: !399, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3486, file: !3487, line: 453, baseType: !399, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3486, file: !3487, line: 454, baseType: !399, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3486, file: !3487, line: 455, baseType: !399, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3486, file: !3487, line: 456, baseType: !399, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3486, file: !3487, line: 457, baseType: !399, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3486, file: !3487, line: 458, baseType: !399, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3486, file: !3487, line: 459, baseType: !399, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3537 = !DIDerivedType(tag: DW_TAG_member, scope: !3486, file: !3487, line: 461, baseType: !3538, size: 32, offset: 384)
!3538 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3486, file: !3487, line: 461, size: 32, elements: !3539)
!3539 = !{!3540, !3541}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3538, file: !3487, line: 462, baseType: !341, size: 32)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3538, file: !3487, line: 463, baseType: !341, size: 32)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3486, file: !3487, line: 466, baseType: !341, size: 32, offset: 416)
!3543 = !DIDerivedType(tag: DW_TAG_member, scope: !3486, file: !3487, line: 467, baseType: !3544, size: 64, offset: 448)
!3544 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3486, file: !3487, line: 467, size: 64, elements: !3545)
!3545 = !{!3546, !3547, !3548, !3549}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3544, file: !3487, line: 468, baseType: !399, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3544, file: !3487, line: 469, baseType: !399, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3544, file: !3487, line: 470, baseType: !399, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3544, file: !3487, line: 471, baseType: !399, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, scope: !3486, file: !3487, line: 473, baseType: !3551, size: 64, offset: 512)
!3551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3486, file: !3487, line: 473, size: 64, elements: !3552)
!3552 = !{!3553, !3554, !3555, !3556}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3551, file: !3487, line: 474, baseType: !399, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3551, file: !3487, line: 475, baseType: !399, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3551, file: !3487, line: 476, baseType: !399, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3551, file: !3487, line: 477, baseType: !399, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3486, file: !3487, line: 479, baseType: !399, size: 64, offset: 576)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3486, file: !3487, line: 485, baseType: !399, size: 64, offset: 640)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3486, file: !3487, line: 490, baseType: !341, size: 32, offset: 704)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3486, file: !3487, line: 492, baseType: !872, size: 32, offset: 736)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3486, file: !3487, line: 501, baseType: !399, size: 64, offset: 768)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3486, file: !3487, line: 506, baseType: !341, size: 32, offset: 832)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3486, file: !3487, line: 507, baseType: !95, size: 16, offset: 864)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3486, file: !3487, line: 508, baseType: !95, size: 16, offset: 880)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3486, file: !3487, line: 509, baseType: !341, size: 32, offset: 896)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3486, file: !3487, line: 510, baseType: !341, size: 32, offset: 928)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3486, file: !3487, line: 518, baseType: !399, size: 64, offset: 960)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3486, file: !3487, line: 520, baseType: !399, size: 64, offset: 1024)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !3287, file: !267, line: 733, baseType: !94, size: 16, offset: 2816)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !3287, file: !267, line: 734, baseType: !94, size: 16, offset: 2832)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !3287, file: !267, line: 735, baseType: !94, size: 16, offset: 2848)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !3287, file: !267, line: 736, baseType: !3573, size: 1536, offset: 2880)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !267, line: 155, size: 1536, elements: !3574)
!3574 = !{!3575, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3659, !3660, !3661, !3662}
!3575 = !DIDerivedType(tag: DW_TAG_member, scope: !3573, file: !267, line: 157, baseType: !3576, size: 768)
!3576 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3573, file: !267, line: 157, size: 768, elements: !3577)
!3577 = !{!3578, !3597, !3601, !3605, !3610, !3632}
!3578 = !DIDerivedType(tag: DW_TAG_member, scope: !3576, file: !267, line: 158, baseType: !3579, size: 768)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3576, file: !267, line: 158, size: 768, elements: !3580)
!3580 = !{!3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3596}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3579, file: !267, line: 159, baseType: !398, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3579, file: !267, line: 160, baseType: !398, size: 64, offset: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3579, file: !267, line: 161, baseType: !40, size: 64, offset: 128)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3579, file: !267, line: 162, baseType: !40, size: 64, offset: 192)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3579, file: !267, line: 163, baseType: !23, size: 32, offset: 256)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3579, file: !267, line: 164, baseType: !23, size: 32, offset: 288)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3579, file: !267, line: 165, baseType: !23, size: 32, offset: 320)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3579, file: !267, line: 166, baseType: !23, size: 32, offset: 352)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3579, file: !267, line: 168, baseType: !3590, size: 192, offset: 384)
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !267, line: 134, size: 192, elements: !3591)
!3591 = !{!3592, !3593, !3594, !3595}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3590, file: !267, line: 135, baseType: !398, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3590, file: !267, line: 136, baseType: !7, size: 32, offset: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3590, file: !267, line: 137, baseType: !23, size: 32, offset: 96)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3590, file: !267, line: 138, baseType: !23, size: 32, offset: 128)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3579, file: !267, line: 169, baseType: !3590, size: 192, offset: 576)
!3597 = !DIDerivedType(tag: DW_TAG_member, scope: !3576, file: !267, line: 171, baseType: !3598, size: 512)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3576, file: !267, line: 171, size: 512, elements: !3599)
!3599 = !{!3600}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3598, file: !267, line: 172, baseType: !465, size: 512)
!3601 = !DIDerivedType(tag: DW_TAG_member, scope: !3576, file: !267, line: 174, baseType: !3602, size: 128)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3576, file: !267, line: 174, size: 128, elements: !3603)
!3603 = !{!3604}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3602, file: !267, line: 176, baseType: !98, size: 128)
!3605 = !DIDerivedType(tag: DW_TAG_member, scope: !3576, file: !267, line: 178, baseType: !3606, size: 128)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3576, file: !267, line: 178, size: 128, elements: !3607)
!3607 = !{!3608, !3609}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3606, file: !267, line: 179, baseType: !398, size: 64)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3606, file: !267, line: 180, baseType: !398, size: 64, offset: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, scope: !3576, file: !267, line: 183, baseType: !3611, size: 320)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3576, file: !267, line: 183, size: 320, elements: !3612)
!3612 = !{!3613, !3621}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3611, file: !267, line: 189, baseType: !3614, size: 192)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3615, line: 14, size: 192, elements: !3616)
!3615 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3616 = !{!3617, !3618, !3619, !3620}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3614, file: !3615, line: 15, baseType: !40, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3614, file: !3615, line: 16, baseType: !40, size: 64, offset: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3614, file: !3615, line: 17, baseType: !84, size: 8, offset: 128)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3614, file: !3615, line: 18, baseType: !84, size: 8, offset: 136)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3611, file: !267, line: 190, baseType: !3622, size: 128, offset: 192)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3623, line: 21, size: 128, elements: !3624)
!3623 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3624 = !{!3625, !3630}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3622, file: !3623, line: 22, baseType: !3626, size: 64)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3623, line: 17, size: 64, elements: !3627)
!3627 = !{!3628}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3626, file: !3623, line: 18, baseType: !3629, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3622, file: !3623, line: 23, baseType: !3631, size: 64, offset: 64)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, scope: !3576, file: !267, line: 193, baseType: !3633, size: 192)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3576, file: !267, line: 193, size: 192, elements: !3634)
!3634 = !{!3635, !3636, !3637, !3638, !3639}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3633, file: !267, line: 194, baseType: !84, size: 8)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3633, file: !267, line: 195, baseType: !84, size: 8, offset: 8)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3633, file: !267, line: 196, baseType: !94, size: 16, offset: 16)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3633, file: !267, line: 197, baseType: !398, size: 64, offset: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3633, file: !267, line: 198, baseType: !398, size: 64, offset: 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3573, file: !267, line: 205, baseType: !329, size: 64, offset: 768)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3573, file: !267, line: 211, baseType: !21, size: 64, offset: 832)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3573, file: !267, line: 214, baseType: !40, size: 64, offset: 896)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3573, file: !267, line: 223, baseType: !23, size: 32, offset: 960)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3573, file: !267, line: 229, baseType: !3476, size: 64, offset: 1024)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3573, file: !267, line: 234, baseType: !398, size: 64, offset: 1088)
!3646 = !DIDerivedType(tag: DW_TAG_member, scope: !3573, file: !267, line: 236, baseType: !3647, size: 128, offset: 1152)
!3647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3573, file: !267, line: 236, size: 128, elements: !3648)
!3648 = !{!3649, !3654}
!3649 = !DIDerivedType(tag: DW_TAG_member, scope: !3647, file: !267, line: 237, baseType: !3650, size: 128)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3647, file: !267, line: 237, size: 128, elements: !3651)
!3651 = !{!3652, !3653}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3650, file: !267, line: 241, baseType: !398, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3650, file: !267, line: 249, baseType: !3476, size: 64, offset: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, scope: !3647, file: !267, line: 251, baseType: !3655, size: 128)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3647, file: !267, line: 251, size: 128, elements: !3656)
!3656 = !{!3657, !3658}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3655, file: !267, line: 252, baseType: !398, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3655, file: !267, line: 253, baseType: !398, size: 64, offset: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3573, file: !267, line: 261, baseType: !398, size: 64, offset: 1280)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3573, file: !267, line: 262, baseType: !398, size: 64, offset: 1344)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3573, file: !267, line: 268, baseType: !398, size: 64, offset: 1408)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3573, file: !267, line: 269, baseType: !398, size: 64, offset: 1472)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3287, file: !267, line: 738, baseType: !3325, size: 64, offset: 4416)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !3287, file: !267, line: 744, baseType: !3373, size: 64, offset: 4480)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3287, file: !267, line: 745, baseType: !696, size: 64, offset: 4544)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !3287, file: !267, line: 751, baseType: !698, size: 64, offset: 4608)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !3287, file: !267, line: 752, baseType: !698, size: 64, offset: 4672)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !3287, file: !267, line: 757, baseType: !703, size: 256, offset: 4736)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !3287, file: !267, line: 758, baseType: !98, size: 128, offset: 4992)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3287, file: !267, line: 759, baseType: !3286, size: 64, offset: 5120)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !3287, file: !267, line: 761, baseType: !23, size: 32, offset: 5184)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3287, file: !267, line: 762, baseType: !23, size: 32, offset: 5216)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !3287, file: !267, line: 764, baseType: !98, size: 128, offset: 5248)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3287, file: !267, line: 765, baseType: !329, size: 64, offset: 5376)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !3287, file: !267, line: 768, baseType: !703, size: 256, offset: 5440)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !3287, file: !267, line: 769, baseType: !50, size: 32, offset: 5696)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3287, file: !267, line: 771, baseType: !3447, size: 64, offset: 5760)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !3287, file: !267, line: 772, baseType: !98, size: 128, offset: 5824)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !3287, file: !267, line: 773, baseType: !40, size: 64, offset: 5952)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !3287, file: !267, line: 774, baseType: !23, size: 32, offset: 6016)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !3287, file: !267, line: 777, baseType: !55, size: 192, offset: 6080)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3287, file: !267, line: 778, baseType: !3683, size: 64, offset: 6272)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !276, line: 1083, size: 384, elements: !3685)
!3685 = !{!3686, !3687, !3688, !3689, !3690, !3691}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3684, file: !276, line: 1084, baseType: !720, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3684, file: !276, line: 1085, baseType: !23, size: 32, offset: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3684, file: !276, line: 1086, baseType: !23, size: 32, offset: 96)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3684, file: !276, line: 1087, baseType: !3683, size: 64, offset: 128)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3684, file: !276, line: 1088, baseType: !675, size: 64, offset: 192)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3684, file: !276, line: 1089, baseType: !683, size: 128, align: 64, offset: 256)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !3287, file: !267, line: 781, baseType: !7, size: 32, offset: 6336)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !3287, file: !267, line: 782, baseType: !7, size: 32, offset: 6368)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !3287, file: !267, line: 783, baseType: !7, size: 32, offset: 6400)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !3287, file: !267, line: 784, baseType: !7, size: 32, offset: 6432)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !3287, file: !267, line: 785, baseType: !40, size: 64, offset: 6464)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !3287, file: !267, line: 786, baseType: !3698, size: 256, offset: 6528)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !3699, line: 17, size: 256, elements: !3700)
!3699 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!3700 = !{!3701, !3702, !3707}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3698, file: !3699, line: 18, baseType: !355, size: 128)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3698, file: !3699, line: 19, baseType: !3703, size: 64, offset: 128)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{null, !3706}
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !3698, file: !3699, line: 20, baseType: !3708, size: 64, offset: 192)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3709, line: 16, size: 64, elements: !3710)
!3709 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3710 = !{!3711}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3708, file: !3709, line: 17, baseType: !329, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !3287, file: !267, line: 787, baseType: !683, size: 128, align: 64, offset: 6784)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !3287, file: !267, line: 788, baseType: !7, size: 32, offset: 6912)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !3287, file: !267, line: 789, baseType: !3708, size: 64, offset: 6976)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !3287, file: !267, line: 791, baseType: !50, size: 32, offset: 7040)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3287, file: !267, line: 794, baseType: !3717, size: 192, offset: 7104)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !267, line: 579, size: 192, elements: !3718)
!3718 = !{!3719, !3720, !3721}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3717, file: !267, line: 580, baseType: !98, size: 128)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3717, file: !267, line: 581, baseType: !490, size: 32, offset: 128)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3717, file: !267, line: 582, baseType: !7, size: 32, offset: 160)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !3287, file: !267, line: 796, baseType: !3723, size: 64, offset: 7296)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !267, line: 585, size: 128, elements: !3725)
!3725 = !{!3726, !3727}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3724, file: !267, line: 586, baseType: !40, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3724, file: !267, line: 587, baseType: !40, size: 64, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3287, file: !267, line: 797, baseType: !40, size: 64, offset: 7360)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !3287, file: !267, line: 800, baseType: !3286, size: 64, offset: 7424)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !3287, file: !267, line: 802, baseType: !3411, size: 64, offset: 7488)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3287, file: !267, line: 803, baseType: !683, size: 128, align: 64, offset: 7552)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3287, file: !267, line: 805, baseType: !771, size: 64, offset: 7680)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3287, file: !267, line: 806, baseType: !398, size: 64, offset: 7744)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !3287, file: !267, line: 808, baseType: !698, size: 64, offset: 7808)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !3287, file: !267, line: 810, baseType: !3736, size: 64, offset: 7872)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!398}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !3287, file: !267, line: 811, baseType: !3740, size: 64, offset: 7936)
!3740 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !267, line: 605, baseType: !3741)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{null, !3286, !3744, !3849}
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !267, line: 1148, size: 2048, align: 512, elements: !3746)
!3746 = !{!3747, !3748, !3749, !3750, !3751, !3756, !3757, !3758, !3763, !3764, !3771, !3792, !3814, !3824, !3842, !3843, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !3745, file: !267, line: 1153, baseType: !398, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3745, file: !267, line: 1154, baseType: !398, size: 64, offset: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !3745, file: !267, line: 1155, baseType: !398, size: 64, offset: 128)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3745, file: !267, line: 1161, baseType: !398, size: 64, offset: 192)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3745, file: !267, line: 1165, baseType: !3752, size: 64, offset: 256)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3745, file: !267, line: 1162, size: 64, elements: !3753)
!3753 = !{!3754, !3755}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3752, file: !267, line: 1163, baseType: !340, size: 32)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3752, file: !267, line: 1164, baseType: !340, size: 32, offset: 32)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3745, file: !267, line: 1166, baseType: !398, size: 64, offset: 320)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3745, file: !267, line: 1167, baseType: !398, size: 64, offset: 384)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3745, file: !267, line: 1171, baseType: !3759, size: 64, offset: 448)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3745, file: !267, line: 1168, size: 64, elements: !3760)
!3760 = !{!3761, !3762}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3759, file: !267, line: 1169, baseType: !340, size: 32)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3759, file: !267, line: 1170, baseType: !340, size: 32, offset: 32)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3745, file: !267, line: 1177, baseType: !398, size: 64, offset: 512)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3745, file: !267, line: 1178, baseType: !3765, size: 64, offset: 576)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !267, line: 67, size: 64, elements: !3767)
!3767 = !{!3768, !3769}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3766, file: !267, line: 68, baseType: !399, size: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3766, file: !267, line: 69, baseType: !3770, offset: 64)
!3770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, elements: !1090)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3745, file: !267, line: 1179, baseType: !3772, size: 64, offset: 640)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !267, line: 93, size: 256, elements: !3774)
!3774 = !{!3775, !3791}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3773, file: !267, line: 94, baseType: !3776, size: 224)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !267, line: 83, size: 224, elements: !3777)
!3777 = !{!3778, !3784, !3789, !3790}
!3778 = !DIDerivedType(tag: DW_TAG_member, scope: !3776, file: !267, line: 84, baseType: !3779, size: 64)
!3779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3776, file: !267, line: 84, size: 64, elements: !3780)
!3780 = !{!3781, !3783}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3779, file: !267, line: 85, baseType: !3782, size: 64)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3779, file: !267, line: 86, baseType: !40, size: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3776, file: !267, line: 88, baseType: !3785, size: 64, offset: 64)
!3785 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !267, line: 80, baseType: !3786)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!40, !21, !2526, !40, !40}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3776, file: !267, line: 89, baseType: !21, size: 64, offset: 128)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3776, file: !267, line: 90, baseType: !340, size: 32, offset: 192)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3773, file: !267, line: 95, baseType: !340, size: 32, offset: 224)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3745, file: !267, line: 1180, baseType: !3793, size: 64, offset: 704)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !267, line: 123, size: 128, elements: !3795)
!3795 = !{!3796, !3797, !3798}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3794, file: !267, line: 124, baseType: !399, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3794, file: !267, line: 125, baseType: !399, size: 64, offset: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3794, file: !267, line: 126, baseType: !3799, offset: 128)
!3799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3800, elements: !1090)
!3800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3487, line: 1415, size: 192, elements: !3801)
!3801 = !{!3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3800, file: !3487, line: 1416, baseType: !399, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3800, file: !3487, line: 1417, baseType: !399, size: 64, offset: 64)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3800, file: !3487, line: 1418, baseType: !399, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3800, file: !3487, line: 1419, baseType: !399, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3800, file: !3487, line: 1420, baseType: !399, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3800, file: !3487, line: 1421, baseType: !399, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3800, file: !3487, line: 1422, baseType: !399, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3800, file: !3487, line: 1423, baseType: !399, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !3800, file: !3487, line: 1424, baseType: !399, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !3800, file: !3487, line: 1425, baseType: !399, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3800, file: !3487, line: 1426, baseType: !399, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3800, file: !3487, line: 1427, baseType: !399, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3745, file: !267, line: 1181, baseType: !3815, size: 64, offset: 768)
!3815 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3487, line: 1430, size: 64, elements: !3816)
!3816 = !{!3817, !3818}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3815, file: !3487, line: 1431, baseType: !399, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, scope: !3815, file: !3487, line: 1433, baseType: !3819, size: 64)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3815, file: !3487, line: 1433, size: 64, elements: !3820)
!3820 = !{!3821, !3822, !3823}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !3819, file: !3487, line: 1434, baseType: !341, size: 32)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !3819, file: !3487, line: 1435, baseType: !95, size: 16, offset: 32)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !3819, file: !3487, line: 1436, baseType: !95, size: 16, offset: 48)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3745, file: !267, line: 1182, baseType: !3825, size: 64, offset: 832)
!3825 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3487, line: 1267, size: 64, elements: !3826)
!3826 = !{!3827, !3828}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3825, file: !3487, line: 1268, baseType: !399, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, scope: !3825, file: !3487, line: 1269, baseType: !3829, size: 64)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3825, file: !3487, line: 1269, size: 64, elements: !3830)
!3830 = !{!3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !3829, file: !3487, line: 1270, baseType: !399, size: 5, flags: DIFlagBitField, extraData: i64 0)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !3829, file: !3487, line: 1271, baseType: !399, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !3829, file: !3487, line: 1272, baseType: !399, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !3829, file: !3487, line: 1273, baseType: !399, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !3829, file: !3487, line: 1274, baseType: !399, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !3829, file: !3487, line: 1275, baseType: !399, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !3829, file: !3487, line: 1276, baseType: !399, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !3829, file: !3487, line: 1277, baseType: !399, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !3829, file: !3487, line: 1278, baseType: !399, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !3829, file: !3487, line: 1279, baseType: !399, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !3829, file: !3487, line: 1280, baseType: !399, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3745, file: !267, line: 1183, baseType: !398, size: 64, offset: 896)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3745, file: !267, line: 1185, baseType: !3844, size: 128, offset: 960)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !3845, line: 7, size: 128, elements: !3846)
!3845 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!3846 = !{!3847, !3848}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !3844, file: !3845, line: 8, baseType: !399, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3844, file: !3845, line: 9, baseType: !3849, size: 64, offset: 64)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3851, line: 103, size: 1344, elements: !3852)
!3851 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3852 = !{!3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3881, !3882, !3883}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3850, file: !3851, line: 109, baseType: !40, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3850, file: !3851, line: 110, baseType: !40, size: 64, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3850, file: !3851, line: 111, baseType: !40, size: 64, offset: 128)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3850, file: !3851, line: 112, baseType: !40, size: 64, offset: 192)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3850, file: !3851, line: 113, baseType: !40, size: 64, offset: 256)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3850, file: !3851, line: 114, baseType: !40, size: 64, offset: 320)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3850, file: !3851, line: 117, baseType: !40, size: 64, offset: 384)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3850, file: !3851, line: 118, baseType: !40, size: 64, offset: 448)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3850, file: !3851, line: 119, baseType: !40, size: 64, offset: 512)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3850, file: !3851, line: 120, baseType: !40, size: 64, offset: 576)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3850, file: !3851, line: 121, baseType: !40, size: 64, offset: 640)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3850, file: !3851, line: 122, baseType: !40, size: 64, offset: 704)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3850, file: !3851, line: 123, baseType: !40, size: 64, offset: 768)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3850, file: !3851, line: 124, baseType: !40, size: 64, offset: 832)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3850, file: !3851, line: 125, baseType: !40, size: 64, offset: 896)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3850, file: !3851, line: 139, baseType: !40, size: 64, offset: 960)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3850, file: !3851, line: 142, baseType: !40, size: 64, offset: 1024)
!3870 = !DIDerivedType(tag: DW_TAG_member, scope: !3850, file: !3851, line: 144, baseType: !3871, size: 64, offset: 1088)
!3871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3850, file: !3851, line: 144, size: 64, elements: !3872)
!3872 = !{!3873, !3874, !3875}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3871, file: !3851, line: 146, baseType: !94, size: 16)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3871, file: !3851, line: 148, baseType: !398, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3871, file: !3851, line: 150, baseType: !3876, size: 64)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3851, line: 59, size: 64, elements: !3877)
!3877 = !{!3878, !3879, !3880}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3876, file: !3851, line: 61, baseType: !398, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3876, file: !3851, line: 63, baseType: !398, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3876, file: !3851, line: 65, baseType: !398, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3850, file: !3851, line: 153, baseType: !40, size: 64, offset: 1152)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3850, file: !3851, line: 154, baseType: !40, size: 64, offset: 1216)
!3883 = !DIDerivedType(tag: DW_TAG_member, scope: !3850, file: !3851, line: 156, baseType: !3884, size: 64, offset: 1280)
!3884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3850, file: !3851, line: 156, size: 64, elements: !3885)
!3885 = !{!3886, !3887, !3888}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3884, file: !3851, line: 158, baseType: !94, size: 16)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3884, file: !3851, line: 160, baseType: !398, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3884, file: !3851, line: 162, baseType: !3889, size: 64)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3851, line: 69, size: 64, elements: !3890)
!3890 = !{!3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3889, file: !3851, line: 71, baseType: !398, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3889, file: !3851, line: 73, baseType: !398, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3889, file: !3851, line: 75, baseType: !398, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3889, file: !3851, line: 77, baseType: !398, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3889, file: !3851, line: 80, baseType: !398, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3889, file: !3851, line: 83, baseType: !398, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3889, file: !3851, line: 86, baseType: !398, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3889, file: !3851, line: 88, baseType: !398, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3889, file: !3851, line: 93, baseType: !398, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3889, file: !3851, line: 100, baseType: !398, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3745, file: !267, line: 1186, baseType: !3844, size: 128, offset: 1088)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3745, file: !267, line: 1187, baseType: !398, size: 64, offset: 1216)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3745, file: !267, line: 1189, baseType: !398, size: 64, offset: 1280)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3745, file: !267, line: 1190, baseType: !398, size: 64, offset: 1344)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3745, file: !267, line: 1191, baseType: !398, size: 64, offset: 1408)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3745, file: !267, line: 1192, baseType: !398, size: 64, offset: 1472)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !3745, file: !267, line: 1193, baseType: !398, size: 64, offset: 1536)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !3745, file: !267, line: 1194, baseType: !398, size: 64, offset: 1600)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3745, file: !267, line: 1195, baseType: !398, size: 64, offset: 1664)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !3287, file: !267, line: 812, baseType: !21, size: 64, offset: 8000)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !3287, file: !267, line: 820, baseType: !3080, size: 64, offset: 8064)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3287, file: !267, line: 821, baseType: !3267, size: 64, offset: 8128)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3287, file: !267, line: 828, baseType: !3914, size: 64, offset: 8192)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !267, line: 1046, size: 1664, elements: !3916)
!3916 = !{!3917, !4175}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !3915, file: !267, line: 1047, baseType: !3918, size: 1600)
!3918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3919, line: 152, size: 1600, elements: !3920)
!3919 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3920 = !{!3921, !4031, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4174}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3918, file: !3919, line: 154, baseType: !3922, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3919, line: 389, size: 7872, elements: !3924)
!3924 = !{!3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3944, !3945, !3949, !3950, !3951, !3952, !3953, !3958, !3974, !3975, !3977, !3978, !3979, !4001, !4002, !4003, !4004, !4010, !4011, !4012, !4013, !4014, !4018, !4021, !4022, !4029}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3923, file: !3919, line: 391, baseType: !3918, size: 1600)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3923, file: !3919, line: 393, baseType: !40, size: 64, offset: 1600)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3923, file: !3919, line: 401, baseType: !23, size: 32, offset: 1664)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3923, file: !3919, line: 404, baseType: !23, size: 32, offset: 1696)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3923, file: !3919, line: 417, baseType: !23, size: 32, offset: 1728)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3923, file: !3919, line: 418, baseType: !23, size: 32, offset: 1760)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3923, file: !3919, line: 419, baseType: !23, size: 32, offset: 1792)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3923, file: !3919, line: 432, baseType: !23, size: 32, offset: 1824)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3923, file: !3919, line: 433, baseType: !23, size: 32, offset: 1856)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3923, file: !3919, line: 434, baseType: !23, size: 32, offset: 1888)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3923, file: !3919, line: 436, baseType: !23, size: 32, offset: 1920)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3923, file: !3919, line: 439, baseType: !7, size: 32, offset: 1952)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3923, file: !3919, line: 441, baseType: !2619, size: 64, offset: 1984)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3923, file: !3919, line: 442, baseType: !3939, size: 448, offset: 2048)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3919, line: 138, size: 448, elements: !3940)
!3940 = !{!3941, !3942, !3943}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3939, file: !3919, line: 140, baseType: !2619, size: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3939, file: !3919, line: 141, baseType: !40, size: 64, offset: 64)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3939, file: !3919, line: 142, baseType: !2355, size: 320, offset: 128)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3923, file: !3919, line: 443, baseType: !3939, size: 448, offset: 2496)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3923, file: !3919, line: 446, baseType: !3946, offset: 2944)
!3946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3939, elements: !3947)
!3947 = !{!3948}
!3948 = !DISubrange(count: 0)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3923, file: !3919, line: 455, baseType: !94, size: 16, offset: 2944)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3923, file: !3919, line: 456, baseType: !94, size: 16, offset: 2960)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3923, file: !3919, line: 457, baseType: !94, size: 16, offset: 2976)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3923, file: !3919, line: 458, baseType: !94, size: 16, offset: 2992)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3923, file: !3919, line: 461, baseType: !3954, size: 896, offset: 3008)
!3954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3955, size: 896, elements: !3956)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3956 = !{!3957}
!3957 = !DISubrange(count: 14)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3923, file: !3919, line: 463, baseType: !3959, size: 64, offset: 3904)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3919, line: 537, size: 41664, elements: !3961)
!3961 = !{!3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3960, file: !3919, line: 538, baseType: !2638, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3960, file: !3919, line: 541, baseType: !7, size: 32, offset: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3960, file: !3919, line: 544, baseType: !23, size: 32, offset: 96)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3960, file: !3919, line: 547, baseType: !98, size: 128, offset: 128)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3960, file: !3919, line: 548, baseType: !683, size: 128, align: 64, offset: 256)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3960, file: !3919, line: 555, baseType: !3923, size: 7872, offset: 384)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3960, file: !3919, line: 558, baseType: !3922, size: 64, offset: 8256)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3960, file: !3919, line: 561, baseType: !50, size: 32, offset: 8320)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3960, file: !3919, line: 564, baseType: !7, size: 32, offset: 8352)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3960, file: !3919, line: 567, baseType: !3229, size: 32768, offset: 8384)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3960, file: !3919, line: 570, baseType: !3973, size: 512, offset: 41152)
!3973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 512, elements: !1519)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3923, file: !3919, line: 469, baseType: !98, size: 128, offset: 3968)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3923, file: !3919, line: 478, baseType: !3976, size: 1792, offset: 4096)
!3976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 1792, elements: !3956)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3923, file: !3919, line: 487, baseType: !3922, size: 64, offset: 5888)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3923, file: !3919, line: 488, baseType: !3922, size: 64, offset: 5952)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3923, file: !3919, line: 491, baseType: !3980, size: 64, offset: 6016)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3919, line: 327, size: 896, elements: !3982)
!3982 = !{!3983, !3986, !3996, !3997, !3998, !3999, !4000}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3981, file: !3919, line: 332, baseType: !3984)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3985, line: 64, elements: !668)
!3985 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3981, file: !3919, line: 333, baseType: !3987, size: 192)
!3987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3919, line: 299, size: 192, elements: !3988)
!3988 = !{!3989}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3987, file: !3919, line: 300, baseType: !3990, size: 192)
!3990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3991, line: 17, size: 192, elements: !3992)
!3991 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3992 = !{!3993, !3994, !3995}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3990, file: !3991, line: 18, baseType: !398, size: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3990, file: !3991, line: 19, baseType: !398, size: 64, offset: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3990, file: !3991, line: 20, baseType: !400, size: 64, offset: 128)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3981, file: !3919, line: 339, baseType: !3987, size: 192, offset: 192)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3981, file: !3919, line: 347, baseType: !3987, size: 192, offset: 384)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3981, file: !3919, line: 353, baseType: !3987, size: 192, offset: 576)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3981, file: !3919, line: 366, baseType: !3922, size: 64, offset: 768)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3981, file: !3919, line: 367, baseType: !3922, size: 64, offset: 832)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3923, file: !3919, line: 492, baseType: !98, size: 128, offset: 6080)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3923, file: !3919, line: 495, baseType: !3987, size: 192, offset: 6208)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3923, file: !3919, line: 496, baseType: !3987, size: 192, offset: 6400)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3923, file: !3919, line: 497, baseType: !4005, size: 192, offset: 6592)
!4005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !331, line: 324, size: 192, elements: !4006)
!4006 = !{!4007, !4008, !4009}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4005, file: !331, line: 326, baseType: !398, size: 64)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4005, file: !331, line: 327, baseType: !398, size: 64, offset: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4005, file: !331, line: 328, baseType: !490, size: 32, offset: 128)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3923, file: !3919, line: 503, baseType: !98, size: 128, offset: 6784)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3923, file: !3919, line: 504, baseType: !703, size: 256, offset: 6912)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3923, file: !3919, line: 507, baseType: !55, size: 192, offset: 7168)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3923, file: !3919, line: 510, baseType: !986, size: 256, offset: 7360)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3923, file: !3919, line: 513, baseType: !4015, size: 64, offset: 7616)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !4017, line: 214, elements: !668)
!4017 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3923, file: !3919, line: 516, baseType: !4019, offset: 7680)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !4020, line: 76, elements: !668)
!4020 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3923, file: !3919, line: 519, baseType: !50, size: 32, offset: 7680)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3923, file: !3919, line: 522, baseType: !4023, size: 128, offset: 7712)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3919, line: 370, size: 128, elements: !4024)
!4024 = !{!4025, !4026, !4027, !4028}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4023, file: !3919, line: 372, baseType: !859, size: 8)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !4023, file: !3919, line: 375, baseType: !23, size: 32, offset: 32)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !4023, file: !3919, line: 380, baseType: !23, size: 32, offset: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !4023, file: !3919, line: 386, baseType: !23, size: 32, offset: 96)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3923, file: !3919, line: 529, baseType: !4030, offset: 7872)
!4030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3922, elements: !1090)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3918, file: !3919, line: 157, baseType: !4032, size: 64, offset: 64)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3919, line: 669, size: 1984, elements: !4034)
!4034 = !{!4035, !4039, !4043, !4047, !4048, !4049, !4050, !4054, !4058, !4059, !4065, !4069, !4070, !4071, !4100, !4104, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4157, !4158}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !4033, file: !3919, line: 670, baseType: !4036, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!3955, !3955}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !4033, file: !3919, line: 671, baseType: !4040, size: 64, offset: 64)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!23, !3955}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !4033, file: !3919, line: 672, baseType: !4044, size: 64, offset: 128)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{null, !3955}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !4033, file: !3919, line: 673, baseType: !4044, size: 64, offset: 192)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !4033, file: !3919, line: 674, baseType: !4044, size: 64, offset: 256)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !4033, file: !3919, line: 675, baseType: !4044, size: 64, offset: 320)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !4033, file: !3919, line: 676, baseType: !4051, size: 64, offset: 384)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{null, !3955, !23}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !4033, file: !3919, line: 677, baseType: !4055, size: 64, offset: 448)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!23, !2663, !3955}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !4033, file: !3919, line: 679, baseType: !4055, size: 64, offset: 512)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !4033, file: !3919, line: 682, baseType: !4060, size: 64, offset: 576)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!23, !4063}
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3919, line: 30, flags: DIFlagFwdDecl)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !4033, file: !3919, line: 683, baseType: !4066, size: 64, offset: 640)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{null, !4063}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4033, file: !3919, line: 684, baseType: !4066, size: 64, offset: 704)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !4033, file: !3919, line: 685, baseType: !3174, size: 64, offset: 768)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !4033, file: !3919, line: 686, baseType: !4072, size: 64, offset: 832)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!23, !329, !4075}
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3919, line: 209, size: 4736, elements: !4077)
!4077 = !{!4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4076, file: !3919, line: 215, baseType: !3954, size: 896)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4076, file: !3919, line: 218, baseType: !346, size: 32, offset: 896)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !4076, file: !3919, line: 226, baseType: !4075, size: 64, offset: 960)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !4076, file: !3919, line: 229, baseType: !3922, size: 64, offset: 1024)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !4076, file: !3919, line: 232, baseType: !23, size: 32, offset: 1088)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !4076, file: !3919, line: 241, baseType: !98, size: 128, offset: 1152)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !4076, file: !3919, line: 242, baseType: !98, size: 128, offset: 1280)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !4076, file: !3919, line: 243, baseType: !98, size: 128, offset: 1408)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !4076, file: !3919, line: 246, baseType: !98, size: 128, offset: 1536)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !4076, file: !3919, line: 255, baseType: !3976, size: 1792, offset: 1664)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !4076, file: !3919, line: 258, baseType: !98, size: 128, offset: 3456)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !4076, file: !3919, line: 259, baseType: !98, size: 128, offset: 3584)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !4076, file: !3919, line: 265, baseType: !755, size: 128, offset: 3712)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !4076, file: !3919, line: 271, baseType: !98, size: 128, offset: 3840)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !4076, file: !3919, line: 277, baseType: !98, size: 128, offset: 3968)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !4076, file: !3919, line: 278, baseType: !98, size: 128, offset: 4096)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !4076, file: !3919, line: 279, baseType: !98, size: 128, offset: 4224)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !4076, file: !3919, line: 288, baseType: !3922, size: 64, offset: 4352)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !4076, file: !3919, line: 289, baseType: !3922, size: 64, offset: 4416)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !4076, file: !3919, line: 290, baseType: !4075, size: 64, offset: 4480)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4076, file: !3919, line: 293, baseType: !859, size: 8, offset: 4544)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4076, file: !3919, line: 296, baseType: !683, size: 128, align: 64, offset: 4608)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !4033, file: !3919, line: 688, baseType: !4101, size: 64, offset: 896)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{null, !329, !4075}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !4033, file: !3919, line: 689, baseType: !4105, size: 64, offset: 960)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{null, !329}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4033, file: !3919, line: 690, baseType: !4105, size: 64, offset: 1024)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4033, file: !3919, line: 691, baseType: !4105, size: 64, offset: 1088)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4033, file: !3919, line: 692, baseType: !4044, size: 64, offset: 1152)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4033, file: !3919, line: 694, baseType: !859, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !4033, file: !3919, line: 707, baseType: !859, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4033, file: !3919, line: 719, baseType: !859, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4033, file: !3919, line: 722, baseType: !23, size: 32, offset: 1248)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4033, file: !3919, line: 723, baseType: !17, size: 64, offset: 1280)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !4033, file: !3919, line: 726, baseType: !17, size: 64, offset: 1344)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4033, file: !3919, line: 729, baseType: !3959, size: 64, offset: 1408)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !4033, file: !3919, line: 732, baseType: !776, size: 192, offset: 1472)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !4033, file: !3919, line: 738, baseType: !98, size: 128, offset: 1664)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !4033, file: !3919, line: 744, baseType: !4121, size: 64, offset: 1792)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3919, line: 580, size: 1728, elements: !4123)
!4123 = !{!4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4133, !4134, !4135, !4139, !4143, !4144, !4145, !4146, !4147, !4151, !4155, !4156}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4122, file: !3919, line: 586, baseType: !3973, size: 512)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4122, file: !3919, line: 587, baseType: !40, size: 64, offset: 512)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4122, file: !3919, line: 593, baseType: !36, size: 64, offset: 576)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4122, file: !3919, line: 596, baseType: !7, size: 32, offset: 640)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4122, file: !3919, line: 604, baseType: !7, size: 32, offset: 672)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4122, file: !3919, line: 610, baseType: !4032, size: 64, offset: 704)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4122, file: !3919, line: 611, baseType: !98, size: 128, offset: 768)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4122, file: !3919, line: 612, baseType: !4132, size: 64, offset: 896)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4122, file: !3919, line: 614, baseType: !2654, size: 64, offset: 960)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4122, file: !3919, line: 615, baseType: !2712, size: 64, offset: 1024)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4122, file: !3919, line: 621, baseType: !4136, size: 64, offset: 1088)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!398, !3955, !4121}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4122, file: !3919, line: 625, baseType: !4140, size: 64, offset: 1152)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!409, !3955, !4121}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4122, file: !3919, line: 628, baseType: !2693, size: 64, offset: 1216)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4122, file: !3919, line: 631, baseType: !2681, size: 64, offset: 1280)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4122, file: !3919, line: 632, baseType: !2689, size: 64, offset: 1344)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4122, file: !3919, line: 633, baseType: !2685, size: 64, offset: 1408)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4122, file: !3919, line: 640, baseType: !4148, size: 64, offset: 1472)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!23, !3955, !4121, !398}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4122, file: !3919, line: 645, baseType: !4152, size: 64, offset: 1536)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!23, !3955, !4121, !409}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4122, file: !3919, line: 654, baseType: !2720, size: 64, offset: 1600)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4122, file: !3919, line: 657, baseType: !2727, size: 64, offset: 1664)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !4033, file: !3919, line: 745, baseType: !4121, size: 64, offset: 1856)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !4033, file: !3919, line: 754, baseType: !7, size: 32, offset: 1920)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3918, file: !3919, line: 160, baseType: !1664, size: 128, offset: 128)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3918, file: !3919, line: 163, baseType: !98, size: 128, offset: 256)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3918, file: !3919, line: 164, baseType: !98, size: 128, offset: 384)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3918, file: !3919, line: 167, baseType: !98, size: 128, offset: 512)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3918, file: !3919, line: 173, baseType: !23, size: 32, offset: 640)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3918, file: !3919, line: 175, baseType: !7, size: 32, offset: 672)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3918, file: !3919, line: 183, baseType: !398, size: 64, offset: 704)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3918, file: !3919, line: 189, baseType: !50, size: 32, offset: 768)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3918, file: !3919, line: 192, baseType: !986, size: 256, offset: 832)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3918, file: !3919, line: 193, baseType: !4169, size: 448, offset: 1088)
!4169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !109, line: 120, size: 448, elements: !4170)
!4170 = !{!4171, !4172, !4173}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4169, file: !109, line: 121, baseType: !986, size: 256)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4169, file: !109, line: 122, baseType: !683, size: 128, align: 64, offset: 256)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4169, file: !109, line: 125, baseType: !3062, size: 64, offset: 384)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3918, file: !3919, line: 199, baseType: !3955, size: 64, offset: 1536)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3915, file: !267, line: 1048, baseType: !4176, size: 64, offset: 1600)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !267, line: 1039, size: 256, elements: !4178)
!4178 = !{!4179, !4180, !4181, !4182}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4177, file: !267, line: 1040, baseType: !398, size: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4177, file: !267, line: 1041, baseType: !398, size: 64, offset: 64)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4177, file: !267, line: 1042, baseType: !398, size: 64, offset: 128)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4177, file: !267, line: 1043, baseType: !23, size: 32, offset: 192)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3287, file: !267, line: 832, baseType: !21, size: 64, offset: 8256)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !3287, file: !267, line: 834, baseType: !98, size: 128, offset: 8320)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !3287, file: !267, line: 842, baseType: !341, size: 32, offset: 8448)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1464, file: !148, line: 524, baseType: !7, size: 32, offset: 8320)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1464, file: !148, line: 525, baseType: !4188, size: 64, offset: 8384)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !4191, line: 28, size: 192, elements: !4192)
!4191 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!4192 = !{!4193, !4194, !4195}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4190, file: !4191, line: 29, baseType: !17, size: 64)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !4190, file: !4191, line: 30, baseType: !17, size: 64, offset: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !4190, file: !4191, line: 31, baseType: !40, size: 64, offset: 128)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1464, file: !148, line: 526, baseType: !7, size: 32, offset: 8448)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1464, file: !148, line: 533, baseType: !21, size: 64, offset: 8512)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1464, file: !148, line: 534, baseType: !7, size: 32, offset: 8576)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1464, file: !148, line: 535, baseType: !4200, size: 64, offset: 8640)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1464, file: !148, line: 536, baseType: !7, size: 32, offset: 8704)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1464, file: !148, line: 539, baseType: !23, size: 32, offset: 8736)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1464, file: !148, line: 540, baseType: !3163, size: 64, offset: 8768)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1464, file: !148, line: 563, baseType: !98, size: 128, offset: 8832)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1464, file: !148, line: 565, baseType: !98, size: 128, offset: 8960)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1464, file: !148, line: 568, baseType: !3174, size: 64, offset: 9088)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1464, file: !148, line: 570, baseType: !50, size: 32, offset: 9152)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1439, file: !276, line: 2382, baseType: !1438, size: 64, offset: 448)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1439, file: !276, line: 2383, baseType: !751, size: 64, offset: 512)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1439, file: !276, line: 2385, baseType: !4211, offset: 576)
!4211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !3029, line: 206, elements: !668)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1439, file: !276, line: 2386, baseType: !4211, offset: 576)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1439, file: !276, line: 2387, baseType: !4211, offset: 576)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1439, file: !276, line: 2388, baseType: !4215, offset: 576)
!4215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4211, elements: !739)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1439, file: !276, line: 2390, baseType: !4211, offset: 576)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1439, file: !276, line: 2391, baseType: !4211, offset: 576)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1439, file: !276, line: 2392, baseType: !4211, offset: 576)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1439, file: !276, line: 2393, baseType: !4211, offset: 576)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1430, file: !276, line: 1197, baseType: !4221, size: 64, offset: 384)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4223)
!4223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !276, line: 2057, size: 1664, elements: !4224)
!4224 = !{!4225, !4229, !4233, !4234, !4238, !4242, !4246, !4247, !4248, !4252, !4256, !4260, !4261, !4262, !4268, !4272, !4273, !4277, !4278, !4279, !4280, !4284, !4288, !4335, !4350, !4351}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !4223, file: !276, line: 2058, baseType: !4226, size: 64)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!1228, !1429}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !4223, file: !276, line: 2059, baseType: !4230, size: 64, offset: 64)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{null, !1228}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4223, file: !276, line: 2060, baseType: !4230, size: 64, offset: 128)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !4223, file: !276, line: 2062, baseType: !4235, size: 64, offset: 192)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{null, !1228, !23}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !4223, file: !276, line: 2063, baseType: !4239, size: 64, offset: 256)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!23, !1228, !1887}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !4223, file: !276, line: 2064, baseType: !4243, size: 64, offset: 320)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!23, !1228}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !4223, file: !276, line: 2065, baseType: !4230, size: 64, offset: 384)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !4223, file: !276, line: 2066, baseType: !1459, size: 64, offset: 448)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !4223, file: !276, line: 2067, baseType: !4249, size: 64, offset: 512)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!23, !1429, !23}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !4223, file: !276, line: 2068, baseType: !4253, size: 64, offset: 576)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!23, !1429, !275}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !4223, file: !276, line: 2069, baseType: !4257, size: 64, offset: 640)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!23, !1429}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !4223, file: !276, line: 2070, baseType: !4253, size: 64, offset: 704)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !4223, file: !276, line: 2071, baseType: !4257, size: 64, offset: 768)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !4223, file: !276, line: 2072, baseType: !4263, size: 64, offset: 832)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!23, !1193, !4266}
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !276, line: 62, flags: DIFlagFwdDecl)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !4223, file: !276, line: 2073, baseType: !4269, size: 64, offset: 896)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!23, !1429, !2910, !947}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !4223, file: !276, line: 2074, baseType: !1459, size: 64, offset: 960)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4223, file: !276, line: 2076, baseType: !4274, size: 64, offset: 1024)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!23, !2663, !1193}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !4223, file: !276, line: 2077, baseType: !4274, size: 64, offset: 1088)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4223, file: !276, line: 2078, baseType: !4274, size: 64, offset: 1152)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !4223, file: !276, line: 2079, baseType: !4274, size: 64, offset: 1216)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !4223, file: !276, line: 2081, baseType: !4281, size: 64, offset: 1280)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{!1380, !1429, !23, !947, !36, !42}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !4223, file: !276, line: 2082, baseType: !4285, size: 64, offset: 1344)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!1380, !1429, !23, !17, !36, !42}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !4223, file: !276, line: 2083, baseType: !4289, size: 64, offset: 1408)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{!4292, !1228}
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !281, line: 296, size: 1664, elements: !4295)
!4295 = !{!4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4320, !4321, !4322}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4294, file: !281, line: 297, baseType: !755, size: 128)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4294, file: !281, line: 298, baseType: !98, size: 128, offset: 128)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4294, file: !281, line: 299, baseType: !98, size: 128, offset: 256)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4294, file: !281, line: 300, baseType: !98, size: 128, offset: 384)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4294, file: !281, line: 301, baseType: !703, size: 256, offset: 512)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4294, file: !281, line: 302, baseType: !60, size: 32, offset: 768)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4294, file: !281, line: 303, baseType: !50, size: 32, offset: 800)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4294, file: !281, line: 304, baseType: !1429, size: 64, offset: 832)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4294, file: !281, line: 305, baseType: !4305, size: 64, offset: 896)
!4305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !281, line: 68, size: 64, elements: !4306)
!4306 = !{!4307, !4319}
!4307 = !DIDerivedType(tag: DW_TAG_member, scope: !4305, file: !281, line: 69, baseType: !4308, size: 32)
!4308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4305, file: !281, line: 69, size: 32, elements: !4309)
!4309 = !{!4310, !4311, !4312}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4308, file: !281, line: 70, baseType: !832, size: 32)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4308, file: !281, line: 71, baseType: !840, size: 32)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4308, file: !281, line: 72, baseType: !4313, size: 32)
!4313 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4314, line: 24, baseType: !4315)
!4314 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4315 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4314, line: 22, size: 32, elements: !4316)
!4316 = !{!4317}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4315, file: !4314, line: 23, baseType: !4318, size: 32)
!4318 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4314, line: 20, baseType: !838)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4305, file: !281, line: 74, baseType: !280, size: 32, offset: 32)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4294, file: !281, line: 306, baseType: !42, size: 64, offset: 960)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4294, file: !281, line: 307, baseType: !40, size: 64, offset: 1024)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4294, file: !281, line: 308, baseType: !4323, size: 576, offset: 1088)
!4323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !281, line: 205, size: 576, elements: !4324)
!4324 = !{!4325, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4323, file: !281, line: 206, baseType: !4326, size: 64)
!4326 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !281, line: 66, baseType: !44)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4323, file: !281, line: 207, baseType: !4326, size: 64, offset: 64)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4323, file: !281, line: 208, baseType: !4326, size: 64, offset: 128)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4323, file: !281, line: 209, baseType: !4326, size: 64, offset: 192)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4323, file: !281, line: 210, baseType: !4326, size: 64, offset: 256)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4323, file: !281, line: 211, baseType: !4326, size: 64, offset: 320)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4323, file: !281, line: 212, baseType: !4326, size: 64, offset: 384)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4323, file: !281, line: 213, baseType: !895, size: 64, offset: 448)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4323, file: !281, line: 214, baseType: !895, size: 64, offset: 512)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !4223, file: !276, line: 2085, baseType: !4336, size: 64, offset: 1472)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!1083, !1429, !4339}
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4341, line: 15, size: 256, elements: !4342)
!4341 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4342 = !{!4343, !4344, !4345, !4346, !4347}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4340, file: !4341, line: 16, baseType: !327, size: 32)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4340, file: !4341, line: 19, baseType: !23, size: 32, offset: 32)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4340, file: !4341, line: 26, baseType: !40, size: 64, offset: 64)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4340, file: !4341, line: 33, baseType: !40, size: 64, offset: 128)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4340, file: !4341, line: 36, baseType: !4348, size: 64, offset: 192)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !163, line: 33, flags: DIFlagFwdDecl)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !4223, file: !276, line: 2087, baseType: !4336, size: 64, offset: 1536)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4223, file: !276, line: 2089, baseType: !1459, size: 64, offset: 1600)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1430, file: !276, line: 1198, baseType: !4353, size: 64, offset: 448)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4354, size: 64)
!4354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4355)
!4355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !281, line: 324, size: 704, elements: !4356)
!4356 = !{!4357, !4361, !4365, !4369, !4370, !4371, !4372, !4373, !4378, !4383, !4387}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4355, file: !281, line: 325, baseType: !4358, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{!23, !4293}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4355, file: !281, line: 326, baseType: !4362, size: 64, offset: 64)
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{!4293, !1429, !23}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4355, file: !281, line: 327, baseType: !4366, size: 64, offset: 128)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{null, !4293}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4355, file: !281, line: 328, baseType: !4358, size: 64, offset: 192)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4355, file: !281, line: 329, baseType: !4358, size: 64, offset: 256)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4355, file: !281, line: 330, baseType: !4358, size: 64, offset: 320)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4355, file: !281, line: 331, baseType: !4249, size: 64, offset: 384)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4355, file: !281, line: 334, baseType: !4374, size: 64, offset: 448)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = !DISubroutineType(types: !4376)
!4376 = !{!4377, !1228}
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4355, file: !281, line: 335, baseType: !4379, size: 64, offset: 512)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DISubroutineType(types: !4381)
!4381 = !{!23, !1228, !4382}
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4355, file: !281, line: 337, baseType: !4384, size: 64, offset: 576)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = !DISubroutineType(types: !4386)
!4386 = !{!23, !1228, !4377}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4355, file: !281, line: 339, baseType: !4388, size: 64, offset: 640)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{!23, !1429, !4391}
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1430, file: !276, line: 1199, baseType: !4393, size: 64, offset: 512)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4395)
!4395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !281, line: 430, size: 704, elements: !4396)
!4396 = !{!4397, !4401, !4402, !4406, !4407, !4408, !4423, !4446, !4450, !4451, !4474}
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4395, file: !281, line: 431, baseType: !4398, size: 64)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = !DISubroutineType(types: !4400)
!4400 = !{!23, !1429, !23, !23, !1349}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4395, file: !281, line: 432, baseType: !4249, size: 64, offset: 64)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4395, file: !281, line: 433, baseType: !4403, size: 64, offset: 128)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{!23, !1429, !7}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4395, file: !281, line: 434, baseType: !4403, size: 64, offset: 192)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4395, file: !281, line: 435, baseType: !4249, size: 64, offset: 256)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4395, file: !281, line: 436, baseType: !4409, size: 64, offset: 320)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = !DISubroutineType(types: !4411)
!4411 = !{!23, !1429, !23, !4412}
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !281, line: 417, size: 256, elements: !4414)
!4414 = !{!4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4413, file: !281, line: 418, baseType: !23, size: 32)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4413, file: !281, line: 419, baseType: !7, size: 32, offset: 32)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4413, file: !281, line: 420, baseType: !7, size: 32, offset: 64)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4413, file: !281, line: 422, baseType: !7, size: 32, offset: 96)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4413, file: !281, line: 423, baseType: !7, size: 32, offset: 128)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4413, file: !281, line: 424, baseType: !7, size: 32, offset: 160)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4413, file: !281, line: 425, baseType: !7, size: 32, offset: 192)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4413, file: !281, line: 426, baseType: !7, size: 32, offset: 224)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4395, file: !281, line: 437, baseType: !4424, size: 64, offset: 384)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{!23, !1429, !4305, !4427}
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !281, line: 345, size: 960, elements: !4429)
!4429 = !{!4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4428, file: !281, line: 346, baseType: !23, size: 32)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4428, file: !281, line: 347, baseType: !398, size: 64, offset: 64)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4428, file: !281, line: 348, baseType: !398, size: 64, offset: 128)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4428, file: !281, line: 349, baseType: !398, size: 64, offset: 192)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4428, file: !281, line: 350, baseType: !398, size: 64, offset: 256)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4428, file: !281, line: 351, baseType: !398, size: 64, offset: 320)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4428, file: !281, line: 352, baseType: !398, size: 64, offset: 384)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4428, file: !281, line: 353, baseType: !409, size: 64, offset: 448)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4428, file: !281, line: 355, baseType: !409, size: 64, offset: 512)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4428, file: !281, line: 356, baseType: !23, size: 32, offset: 576)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4428, file: !281, line: 357, baseType: !23, size: 32, offset: 608)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4428, file: !281, line: 358, baseType: !398, size: 64, offset: 640)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4428, file: !281, line: 359, baseType: !398, size: 64, offset: 704)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4428, file: !281, line: 360, baseType: !398, size: 64, offset: 768)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4428, file: !281, line: 361, baseType: !409, size: 64, offset: 832)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4428, file: !281, line: 362, baseType: !23, size: 32, offset: 896)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4395, file: !281, line: 438, baseType: !4447, size: 64, offset: 448)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{!23, !1429, !4391, !4427}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4395, file: !281, line: 440, baseType: !4424, size: 64, offset: 512)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4395, file: !281, line: 441, baseType: !4452, size: 64, offset: 576)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!23, !1429, !4455}
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !281, line: 411, size: 1408, elements: !4457)
!4457 = !{!4458, !4459}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4456, file: !281, line: 412, baseType: !7, size: 32)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4456, file: !281, line: 413, baseType: !4460, size: 1344, offset: 64)
!4460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4461, size: 1344, elements: !739)
!4461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !281, line: 397, size: 448, elements: !4462)
!4462 = !{!4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4473}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4461, file: !281, line: 398, baseType: !7, size: 32)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4461, file: !281, line: 399, baseType: !7, size: 32, offset: 32)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4461, file: !281, line: 401, baseType: !7, size: 32, offset: 64)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4461, file: !281, line: 402, baseType: !7, size: 32, offset: 96)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4461, file: !281, line: 403, baseType: !7, size: 32, offset: 128)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4461, file: !281, line: 404, baseType: !7, size: 32, offset: 160)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4461, file: !281, line: 405, baseType: !7, size: 32, offset: 192)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4461, file: !281, line: 406, baseType: !400, size: 64, offset: 256)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4461, file: !281, line: 407, baseType: !4472, size: 64, offset: 320)
!4472 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !26, line: 132, baseType: !398)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4461, file: !281, line: 408, baseType: !4472, size: 64, offset: 384)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4395, file: !281, line: 442, baseType: !4403, size: 64, offset: 640)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1430, file: !276, line: 1200, baseType: !4476, size: 64, offset: 576)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4478)
!4478 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !276, line: 54, flags: DIFlagFwdDecl)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1430, file: !276, line: 1201, baseType: !40, size: 64, offset: 640)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1430, file: !276, line: 1202, baseType: !40, size: 64, offset: 704)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1430, file: !276, line: 1203, baseType: !40, size: 64, offset: 768)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1430, file: !276, line: 1204, baseType: !1193, size: 64, offset: 832)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1430, file: !276, line: 1205, baseType: !879, size: 320, offset: 896)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1430, file: !276, line: 1206, baseType: !23, size: 32, offset: 1216)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1430, file: !276, line: 1207, baseType: !50, size: 32, offset: 1248)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1430, file: !276, line: 1209, baseType: !21, size: 64, offset: 1280)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1430, file: !276, line: 1211, baseType: !4488, size: 64, offset: 1344)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4491)
!4491 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !276, line: 1211, flags: DIFlagFwdDecl)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1430, file: !276, line: 1223, baseType: !4493, size: 64, offset: 1408)
!4493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1205, line: 34, size: 64, elements: !4494)
!4494 = !{!4495}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4493, file: !1205, line: 35, baseType: !1208, size: 64)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1430, file: !276, line: 1224, baseType: !98, size: 128, offset: 1472)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1430, file: !276, line: 1225, baseType: !2139, size: 64, offset: 1600)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1430, file: !276, line: 1226, baseType: !4499, size: 64, offset: 1664)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !276, line: 1226, flags: DIFlagFwdDecl)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1430, file: !276, line: 1227, baseType: !4502, size: 64, offset: 1728)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !287, line: 163, size: 6848, elements: !4504)
!4504 = !{!4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4552, !4553, !4554, !4555, !4556, !4557, !4558}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4503, file: !287, line: 164, baseType: !398, size: 64)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !4503, file: !287, line: 165, baseType: !390, size: 192, align: 64, offset: 64)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !4503, file: !287, line: 166, baseType: !98, size: 128, offset: 256)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4503, file: !287, line: 167, baseType: !40, size: 64, offset: 384)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !4503, file: !287, line: 168, baseType: !40, size: 64, offset: 448)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4503, file: !287, line: 170, baseType: !2761, size: 32, offset: 512)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !4503, file: !287, line: 171, baseType: !7, size: 32, offset: 544)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !4503, file: !287, line: 172, baseType: !7, size: 32, offset: 576)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !4503, file: !287, line: 173, baseType: !7, size: 32, offset: 608)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !4503, file: !287, line: 173, baseType: !7, size: 32, offset: 640)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !4503, file: !287, line: 179, baseType: !696, size: 64, offset: 704)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !4503, file: !287, line: 184, baseType: !40, size: 64, offset: 768)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !4503, file: !287, line: 186, baseType: !4518, size: 4672, offset: 832)
!4518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !287, line: 105, size: 4672, elements: !4519)
!4519 = !{!4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4545, !4546, !4547, !4548, !4549, !4550, !4551}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !4518, file: !287, line: 106, baseType: !4502, size: 64)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4518, file: !287, line: 108, baseType: !40, size: 64, offset: 64)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !4518, file: !287, line: 109, baseType: !40, size: 64, offset: 128)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !4518, file: !287, line: 111, baseType: !98, size: 128, offset: 192)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !4518, file: !287, line: 112, baseType: !98, size: 128, offset: 320)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !4518, file: !287, line: 113, baseType: !98, size: 128, offset: 448)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !4518, file: !287, line: 114, baseType: !98, size: 128, offset: 576)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !4518, file: !287, line: 115, baseType: !60, size: 32, offset: 704)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !4518, file: !287, line: 117, baseType: !50, size: 32, offset: 736)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4518, file: !287, line: 118, baseType: !4530, size: 1280, offset: 768)
!4530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1135, size: 1280, elements: !760)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !4518, file: !287, line: 120, baseType: !40, size: 64, offset: 2048)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !4518, file: !287, line: 121, baseType: !40, size: 64, offset: 2112)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !4518, file: !287, line: 122, baseType: !40, size: 64, offset: 2176)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !4518, file: !287, line: 123, baseType: !40, size: 64, offset: 2240)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !4518, file: !287, line: 124, baseType: !40, size: 64, offset: 2304)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !4518, file: !287, line: 132, baseType: !40, size: 64, offset: 2368)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !4518, file: !287, line: 133, baseType: !40, size: 64, offset: 2432)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !4518, file: !287, line: 135, baseType: !4539, size: 384, offset: 2496)
!4539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !4540, line: 76, size: 384, elements: !4541)
!4540 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!4541 = !{!4542, !4543, !4544}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4539, file: !4540, line: 78, baseType: !1135, size: 320)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4539, file: !4540, line: 80, baseType: !7, size: 32, offset: 320)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4539, file: !4540, line: 81, baseType: !490, size: 32, offset: 352)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !4518, file: !287, line: 136, baseType: !23, size: 32, offset: 2880)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !4518, file: !287, line: 137, baseType: !286, size: 32, offset: 2912)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !4518, file: !287, line: 139, baseType: !60, size: 32, offset: 2944)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !4518, file: !287, line: 140, baseType: !98, size: 128, offset: 3008)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !4518, file: !287, line: 141, baseType: !3057, size: 704, offset: 3136)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !4518, file: !287, line: 142, baseType: !3057, size: 704, offset: 3840)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !4518, file: !287, line: 144, baseType: !98, size: 128, offset: 4544)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !4503, file: !287, line: 187, baseType: !98, size: 128, offset: 5504)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !4503, file: !287, line: 193, baseType: !55, size: 192, offset: 5632)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4503, file: !287, line: 195, baseType: !2185, size: 64, offset: 5824)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4503, file: !287, line: 196, baseType: !3973, size: 512, offset: 5888)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4503, file: !287, line: 197, baseType: !2185, size: 64, offset: 6400)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !4503, file: !287, line: 199, baseType: !2355, size: 320, offset: 6464)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !4503, file: !287, line: 202, baseType: !1193, size: 64, offset: 6784)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1430, file: !276, line: 1228, baseType: !4560, size: 64, offset: 1792)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !276, line: 1228, flags: DIFlagFwdDecl)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1430, file: !276, line: 1229, baseType: !755, size: 128, offset: 1856)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1430, file: !276, line: 1230, baseType: !7, size: 32, offset: 1984)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1430, file: !276, line: 1231, baseType: !4565, size: 2496, offset: 2048)
!4565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !281, line: 521, size: 2496, elements: !4566)
!4566 = !{!4567, !4568, !4569, !4571, !4603}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4565, file: !281, line: 522, baseType: !7, size: 32)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4565, file: !281, line: 523, baseType: !879, size: 320, offset: 64)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4565, file: !281, line: 524, baseType: !4570, size: 192, offset: 384)
!4570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1228, size: 192, elements: !739)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4565, file: !281, line: 525, baseType: !4572, size: 1728, offset: 576)
!4572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4573, size: 1728, elements: !739)
!4573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !281, line: 222, size: 576, elements: !4574)
!4574 = !{!4575, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4573, file: !281, line: 223, baseType: !4576, size: 64)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !281, line: 445, size: 256, elements: !4578)
!4578 = !{!4579, !4580, !4593, !4594}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4577, file: !281, line: 446, baseType: !23, size: 32)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4577, file: !281, line: 447, baseType: !4581, size: 64, offset: 64)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4583)
!4583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !281, line: 312, size: 512, elements: !4584)
!4584 = !{!4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4583, file: !281, line: 313, baseType: !4249, size: 64)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4583, file: !281, line: 314, baseType: !4249, size: 64, offset: 64)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4583, file: !281, line: 315, baseType: !4249, size: 64, offset: 128)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4583, file: !281, line: 316, baseType: !4249, size: 64, offset: 192)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4583, file: !281, line: 317, baseType: !4358, size: 64, offset: 256)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4583, file: !281, line: 318, baseType: !4358, size: 64, offset: 320)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4583, file: !281, line: 319, baseType: !4358, size: 64, offset: 384)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4583, file: !281, line: 320, baseType: !4388, size: 64, offset: 448)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4577, file: !281, line: 448, baseType: !1463, size: 64, offset: 128)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4577, file: !281, line: 449, baseType: !4576, size: 64, offset: 192)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4573, file: !281, line: 224, baseType: !23, size: 32, offset: 64)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4573, file: !281, line: 226, baseType: !98, size: 128, offset: 128)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4573, file: !281, line: 227, baseType: !40, size: 64, offset: 256)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4573, file: !281, line: 228, baseType: !7, size: 32, offset: 320)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4573, file: !281, line: 229, baseType: !7, size: 32, offset: 352)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4573, file: !281, line: 230, baseType: !4326, size: 64, offset: 384)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4573, file: !281, line: 231, baseType: !4326, size: 64, offset: 448)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4573, file: !281, line: 232, baseType: !21, size: 64, offset: 512)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4565, file: !281, line: 526, baseType: !4604, size: 192, offset: 2304)
!4604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4581, size: 192, elements: !739)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1430, file: !276, line: 1233, baseType: !4606, size: 2368, offset: 4544)
!4606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !276, line: 1184, size: 2368, elements: !4607)
!4607 = !{!4608, !4609, !4610}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4606, file: !276, line: 1185, baseType: !27, size: 16)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4606, file: !276, line: 1186, baseType: !27, size: 16, offset: 16)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4606, file: !276, line: 1187, baseType: !4611, size: 2304, offset: 64)
!4611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4612, size: 2304, elements: !739)
!4612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4613, line: 12, size: 768, elements: !4614)
!4613 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4614 = !{!4615, !4623, !4624, !4625, !4626}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4612, file: !4613, line: 13, baseType: !4616, size: 384)
!4616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4617, line: 17, size: 384, elements: !4618)
!4617 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4618 = !{!4619, !4620, !4621, !4622}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4616, file: !4617, line: 18, baseType: !23, size: 32)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4616, file: !4617, line: 19, baseType: !23, size: 32, offset: 32)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4616, file: !4617, line: 20, baseType: !55, size: 192, offset: 64)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4616, file: !4617, line: 22, baseType: !683, size: 128, align: 64, offset: 256)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4612, file: !4613, line: 14, baseType: !2130, size: 64, offset: 384)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4612, file: !4613, line: 15, baseType: !3708, size: 64, offset: 448)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4612, file: !4613, line: 16, baseType: !55, size: 192, offset: 512)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4612, file: !4613, line: 17, baseType: !50, size: 32, offset: 704)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1430, file: !276, line: 1240, baseType: !21, size: 64, offset: 6912)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1430, file: !276, line: 1243, baseType: !340, size: 32, offset: 6976)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1430, file: !276, line: 1245, baseType: !895, size: 64, offset: 7040)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1430, file: !276, line: 1246, baseType: !895, size: 64, offset: 7104)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1430, file: !276, line: 1248, baseType: !341, size: 32, offset: 7168)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1430, file: !276, line: 1249, baseType: !4633, size: 64, offset: 7232)
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !276, line: 634, flags: DIFlagFwdDecl)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1430, file: !276, line: 1252, baseType: !4636, size: 256, offset: 7296)
!4636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 256, elements: !4637)
!4637 = !{!4638}
!4638 = !DISubrange(count: 32)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1430, file: !276, line: 1253, baseType: !4640, size: 128, offset: 7552)
!4640 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4641, line: 21, baseType: !4642)
!4641 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4642 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4641, line: 19, size: 128, elements: !4643)
!4643 = !{!4644}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4642, file: !4641, line: 20, baseType: !4645, size: 128)
!4645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 128, elements: !4646)
!4646 = !{!4647}
!4647 = !DISubrange(count: 16)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1430, file: !276, line: 1255, baseType: !7, size: 32, offset: 7680)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1430, file: !276, line: 1261, baseType: !703, size: 256, offset: 7744)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1430, file: !276, line: 1267, baseType: !17, size: 64, offset: 8000)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1430, file: !276, line: 1269, baseType: !4652, size: 64, offset: 8064)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4654)
!4654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1195, line: 128, size: 1024, align: 512, elements: !4655)
!4655 = !{!4656, !4660, !4661, !4668, !4674, !4678, !4682, !4686, !4687, !4691, !4695, !4700, !4704}
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4654, file: !1195, line: 129, baseType: !4657, size: 64)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{!23, !1193, !7}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4654, file: !1195, line: 130, baseType: !4657, size: 64, offset: 64)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4654, file: !1195, line: 131, baseType: !4662, size: 64, offset: 128)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!23, !4665, !4667}
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1194)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4654, file: !1195, line: 132, baseType: !4669, size: 64, offset: 192)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{!23, !4665, !7, !17, !4672}
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1213)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4654, file: !1195, line: 134, baseType: !4675, size: 64, offset: 256)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!23, !4665}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4654, file: !1195, line: 135, baseType: !4679, size: 64, offset: 320)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{!23, !1193}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4654, file: !1195, line: 136, baseType: !4683, size: 64, offset: 384)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{null, !1193}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4654, file: !1195, line: 137, baseType: !4683, size: 64, offset: 448)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4654, file: !1195, line: 138, baseType: !4688, size: 64, offset: 512)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{null, !1193, !1228}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4654, file: !1195, line: 139, baseType: !4692, size: 64, offset: 576)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DISubroutineType(types: !4694)
!4694 = !{!947, !1193, !947, !23}
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4654, file: !1195, line: 140, baseType: !4696, size: 64, offset: 640)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!1188, !4699}
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4654, file: !1195, line: 141, baseType: !4701, size: 64, offset: 704)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!23, !1349, !859}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4654, file: !1195, line: 142, baseType: !4705, size: 64, offset: 768)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4706 = !DISubroutineType(types: !4707)
!4707 = !{!1193, !1193, !4708}
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1229)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1430, file: !276, line: 1271, baseType: !4711, size: 448, offset: 8128)
!4711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4341, line: 63, size: 448, elements: !4712)
!4712 = !{!4713, !4718, !4719, !4720, !4721, !4722, !4723}
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4711, file: !4341, line: 64, baseType: !4714, size: 64)
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4715 = !DISubroutineType(types: !4716)
!4716 = !{!40, !4717, !4339}
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 64)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4711, file: !4341, line: 66, baseType: !4714, size: 64, offset: 64)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4711, file: !4341, line: 69, baseType: !1083, size: 64, offset: 128)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4711, file: !4341, line: 70, baseType: !23, size: 32, offset: 192)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4711, file: !4341, line: 71, baseType: !7, size: 32, offset: 224)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4711, file: !4341, line: 74, baseType: !98, size: 128, offset: 256)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4711, file: !4341, line: 85, baseType: !4724, size: 64, offset: 384)
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1430, file: !276, line: 1274, baseType: !696, size: 64, offset: 8576)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1430, file: !276, line: 1280, baseType: !696, size: 64, offset: 8640)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1430, file: !276, line: 1283, baseType: !23, size: 32, offset: 8704)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1430, file: !276, line: 1286, baseType: !2588, size: 32, offset: 8736)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1430, file: !276, line: 1289, baseType: !3062, size: 64, offset: 8768)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1430, file: !276, line: 1290, baseType: !751, size: 64, offset: 8832)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1430, file: !276, line: 1297, baseType: !801, size: 64, offset: 8896)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1430, file: !276, line: 1304, baseType: !4733, size: 64, offset: 8960)
!4733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4734, line: 49, size: 64, elements: !4735)
!4734 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4735 = !{!4736}
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4733, file: !4734, line: 50, baseType: !4737, size: 64)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4734, line: 41, size: 512, align: 512, elements: !4739)
!4739 = !{!4740, !4741, !4746}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4738, file: !4734, line: 43, baseType: !60, size: 32)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4738, file: !4734, line: 45, baseType: !4742, size: 192, offset: 64)
!4742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4734, line: 29, size: 192, elements: !4743)
!4743 = !{!4744, !4745}
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4742, file: !4734, line: 30, baseType: !98, size: 128)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4742, file: !4734, line: 32, baseType: !1083, size: 64, offset: 128)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4738, file: !4734, line: 46, baseType: !1083, size: 64, offset: 256)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1430, file: !276, line: 1305, baseType: !4733, size: 64, offset: 9024)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1430, file: !276, line: 1306, baseType: !683, size: 128, align: 64, offset: 9088)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1430, file: !276, line: 1307, baseType: !986, size: 256, offset: 9216)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1430, file: !276, line: 1309, baseType: !703, size: 256, offset: 9472)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1430, file: !276, line: 1314, baseType: !23, size: 32, offset: 9728)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1430, file: !276, line: 1317, baseType: !60, size: 32, align: 512, offset: 10240)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1430, file: !276, line: 1318, baseType: !98, size: 128, offset: 10304)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1430, file: !276, line: 1320, baseType: !60, size: 32, offset: 10432)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1430, file: !276, line: 1321, baseType: !98, size: 128, offset: 10496)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1229, file: !276, line: 656, baseType: !1580, size: 64, offset: 512)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1229, file: !276, line: 659, baseType: !21, size: 64, offset: 576)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1229, file: !276, line: 663, baseType: !40, size: 64, offset: 640)
!4759 = !DIDerivedType(tag: DW_TAG_member, scope: !1229, file: !276, line: 671, baseType: !4760, size: 32, offset: 704)
!4760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1229, file: !276, line: 671, size: 32, elements: !4761)
!4761 = !{!4762, !4763}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4760, file: !276, line: 672, baseType: !3110, size: 32)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4760, file: !276, line: 673, baseType: !7, size: 32)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1229, file: !276, line: 675, baseType: !1302, size: 32, offset: 736)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1229, file: !276, line: 676, baseType: !42, size: 64, offset: 768)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1229, file: !276, line: 677, baseType: !1338, size: 128, offset: 832)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1229, file: !276, line: 678, baseType: !1338, size: 128, offset: 960)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1229, file: !276, line: 679, baseType: !1338, size: 128, offset: 1088)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1229, file: !276, line: 680, baseType: !60, size: 32, offset: 1216)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1229, file: !276, line: 681, baseType: !27, size: 16, offset: 1248)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1229, file: !276, line: 682, baseType: !84, size: 8, offset: 1264)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1229, file: !276, line: 683, baseType: !84, size: 8, offset: 1272)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1229, file: !276, line: 684, baseType: !4472, size: 64, offset: 1280)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1229, file: !276, line: 691, baseType: !40, size: 64, offset: 1344)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1229, file: !276, line: 692, baseType: !879, size: 320, offset: 1408)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1229, file: !276, line: 694, baseType: !40, size: 64, offset: 1728)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1229, file: !276, line: 695, baseType: !40, size: 64, offset: 1792)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1229, file: !276, line: 697, baseType: !755, size: 128, offset: 1856)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1229, file: !276, line: 698, baseType: !98, size: 128, offset: 1984)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1229, file: !276, line: 707, baseType: !98, size: 128, offset: 2112)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1229, file: !276, line: 708, baseType: !98, size: 128, offset: 2240)
!4782 = !DIDerivedType(tag: DW_TAG_member, scope: !1229, file: !276, line: 709, baseType: !4783, size: 128, offset: 2368)
!4783 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1229, file: !276, line: 709, size: 128, elements: !4784)
!4784 = !{!4785, !4786}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4783, file: !276, line: 710, baseType: !751, size: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4783, file: !276, line: 711, baseType: !683, size: 128, align: 64)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1229, file: !276, line: 713, baseType: !698, size: 64, offset: 2496)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1229, file: !276, line: 714, baseType: !698, size: 64, offset: 2560)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1229, file: !276, line: 715, baseType: !50, size: 32, offset: 2624)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1229, file: !276, line: 716, baseType: !50, size: 32, offset: 2656)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1229, file: !276, line: 717, baseType: !50, size: 32, offset: 2688)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1229, file: !276, line: 719, baseType: !50, size: 32, offset: 2720)
!4793 = !DIDerivedType(tag: DW_TAG_member, scope: !1229, file: !276, line: 721, baseType: !4794, size: 64, offset: 2752)
!4794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1229, file: !276, line: 721, size: 64, elements: !4795)
!4795 = !{!4796, !4922}
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4794, file: !276, line: 722, baseType: !4797, size: 64)
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4799)
!4799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !276, line: 1914, size: 2112, elements: !4800)
!4800 = !{!4801, !4802, !4806, !4810, !4814, !4815, !4816, !4822, !4835, !4839, !4843, !4844, !4848, !4849, !4853, !4858, !4859, !4863, !4867, !4873, !4874, !4878, !4879, !4885, !4889, !4890, !4895, !4899, !4903, !4907, !4911, !4912, !4918}
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4799, file: !276, line: 1915, baseType: !1463, size: 64)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4799, file: !276, line: 1916, baseType: !4803, size: 64, offset: 64)
!4803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4804, size: 64)
!4804 = !DISubroutineType(types: !4805)
!4805 = !{!42, !675, !42, !23}
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4799, file: !276, line: 1917, baseType: !4807, size: 64, offset: 128)
!4807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4808, size: 64)
!4808 = !DISubroutineType(types: !4809)
!4809 = !{!1380, !675, !947, !36, !41}
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4799, file: !276, line: 1918, baseType: !4811, size: 64, offset: 192)
!4811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4812, size: 64)
!4812 = !DISubroutineType(types: !4813)
!4813 = !{!1380, !675, !17, !36, !41}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4799, file: !276, line: 1919, baseType: !2030, size: 64, offset: 256)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4799, file: !276, line: 1920, baseType: !2030, size: 64, offset: 320)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4799, file: !276, line: 1921, baseType: !4817, size: 64, offset: 384)
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{!23, !2033, !4820, !7}
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4821, size: 64)
!4821 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !276, line: 53, flags: DIFlagFwdDecl)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4799, file: !276, line: 1923, baseType: !4823, size: 64, offset: 448)
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = !DISubroutineType(types: !4825)
!4825 = !{!23, !675, !4826}
!4826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4827, size: 64)
!4827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !276, line: 1858, size: 128, elements: !4828)
!4828 = !{!4829, !4834}
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4827, file: !276, line: 1859, baseType: !4830, size: 64)
!4830 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !276, line: 1855, baseType: !4831)
!4831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4832, size: 64)
!4832 = !DISubroutineType(types: !4833)
!4833 = !{!859, !4826, !17, !23, !42, !398, !7}
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4827, file: !276, line: 1860, baseType: !42, size: 64, offset: 64)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4799, file: !276, line: 1924, baseType: !4836, size: 64, offset: 512)
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = !DISubroutineType(types: !4838)
!4838 = !{!2730, !675, !2732}
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4799, file: !276, line: 1925, baseType: !4840, size: 64, offset: 576)
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4841, size: 64)
!4841 = !DISubroutineType(types: !4842)
!4842 = !{!1083, !675, !7, !40}
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4799, file: !276, line: 1926, baseType: !4840, size: 64, offset: 640)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4799, file: !276, line: 1927, baseType: !4845, size: 64, offset: 704)
!4845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4846, size: 64)
!4846 = !DISubroutineType(types: !4847)
!4847 = !{!23, !675, !1710}
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4799, file: !276, line: 1928, baseType: !40, size: 64, offset: 768)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4799, file: !276, line: 1929, baseType: !4850, size: 64, offset: 832)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64)
!4851 = !DISubroutineType(types: !4852)
!4852 = !{!23, !1228, !675}
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4799, file: !276, line: 1930, baseType: !4854, size: 64, offset: 896)
!4854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4855, size: 64)
!4855 = !DISubroutineType(types: !4856)
!4856 = !{!23, !675, !4857}
!4857 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !276, line: 1061, baseType: !21)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4799, file: !276, line: 1931, baseType: !4850, size: 64, offset: 960)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4799, file: !276, line: 1932, baseType: !4860, size: 64, offset: 1024)
!4860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4861, size: 64)
!4861 = !DISubroutineType(types: !4862)
!4862 = !{!23, !675, !42, !42, !23}
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4799, file: !276, line: 1933, baseType: !4864, size: 64, offset: 1088)
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = !DISubroutineType(types: !4866)
!4866 = !{!23, !23, !675, !23}
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4799, file: !276, line: 1934, baseType: !4868, size: 64, offset: 1152)
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{!23, !675, !23, !4871}
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4872 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !276, line: 1063, flags: DIFlagFwdDecl)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4799, file: !276, line: 1935, baseType: !672, size: 64, offset: 1216)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4799, file: !276, line: 1936, baseType: !4875, size: 64, offset: 1280)
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4876, size: 64)
!4876 = !DISubroutineType(types: !4877)
!4877 = !{!23, !23}
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4799, file: !276, line: 1937, baseType: !4868, size: 64, offset: 1344)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4799, file: !276, line: 1938, baseType: !4880, size: 64, offset: 1408)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = !DISubroutineType(types: !4882)
!4882 = !{!1380, !4883, !675, !41, !36, !7}
!4883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4884, size: 64)
!4884 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !331, line: 59, flags: DIFlagFwdDecl)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4799, file: !276, line: 1939, baseType: !4886, size: 64, offset: 1472)
!4886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4887, size: 64)
!4887 = !DISubroutineType(types: !4888)
!4888 = !{!1380, !675, !41, !4883, !36, !7}
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4799, file: !276, line: 1940, baseType: !2578, size: 64, offset: 1536)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4799, file: !276, line: 1941, baseType: !4891, size: 64, offset: 1600)
!4891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4892, size: 64)
!4892 = !DISubroutineType(types: !4893)
!4893 = !{!23, !675, !23, !4894, !2007}
!4894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4799, file: !276, line: 1942, baseType: !4896, size: 64, offset: 1664)
!4896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4897, size: 64)
!4897 = !DISubroutineType(types: !4898)
!4898 = !{!1083, !675, !23, !42, !42}
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4799, file: !276, line: 1944, baseType: !4900, size: 64, offset: 1728)
!4900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4901, size: 64)
!4901 = !DISubroutineType(types: !4902)
!4902 = !{null, !2663, !675}
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4799, file: !276, line: 1948, baseType: !4904, size: 64, offset: 1792)
!4904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4905, size: 64)
!4905 = !DISubroutineType(types: !4906)
!4906 = !{!1380, !675, !42, !675, !42, !36, !7}
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4799, file: !276, line: 1950, baseType: !4908, size: 64, offset: 1856)
!4908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4909, size: 64)
!4909 = !DISubroutineType(types: !4910)
!4910 = !{!42, !675, !42, !675, !42, !42, !7}
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4799, file: !276, line: 1953, baseType: !4860, size: 64, offset: 1920)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4799, file: !276, line: 1954, baseType: !4913, size: 64, offset: 1984)
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4914, size: 64)
!4914 = !DISubroutineType(types: !4915)
!4915 = !{!23, !4916, !7}
!4916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4917, size: 64)
!4917 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !276, line: 1911, flags: DIFlagFwdDecl)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4799, file: !276, line: 1955, baseType: !4919, size: 64, offset: 2048)
!4919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4920, size: 64)
!4920 = !DISubroutineType(types: !4921)
!4921 = !{!23, !4916, !4820, !7}
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4794, file: !276, line: 723, baseType: !4230, size: 64)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1229, file: !276, line: 725, baseType: !4924, size: 64, offset: 2816)
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4925 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !276, line: 725, flags: DIFlagFwdDecl)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1229, file: !276, line: 726, baseType: !1581, size: 1536, align: 64, offset: 2880)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1229, file: !276, line: 727, baseType: !98, size: 128, offset: 4416)
!4928 = !DIDerivedType(tag: DW_TAG_member, scope: !1229, file: !276, line: 728, baseType: !4929, size: 64, offset: 4544)
!4929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1229, file: !276, line: 728, size: 64, elements: !4930)
!4930 = !{!4931, !4932, !4935, !4936}
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4929, file: !276, line: 729, baseType: !4883, size: 64)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4929, file: !276, line: 730, baseType: !4933, size: 64)
!4933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4934, size: 64)
!4934 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !276, line: 730, flags: DIFlagFwdDecl)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4929, file: !276, line: 731, baseType: !947, size: 64)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4929, file: !276, line: 732, baseType: !7, size: 32)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1229, file: !276, line: 735, baseType: !341, size: 32, offset: 4608)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1229, file: !276, line: 738, baseType: !341, size: 32, offset: 4640)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1229, file: !276, line: 739, baseType: !4633, size: 64, offset: 4672)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1229, file: !276, line: 750, baseType: !21, size: 64, offset: 4736)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1194, file: !1195, line: 91, baseType: !4942, size: 256, offset: 448)
!4942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 256, elements: !4637)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1194, file: !1195, line: 94, baseType: !4944, size: 64, offset: 704)
!4944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4945, line: 25, size: 64, elements: !4946)
!4945 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4946 = !{!4947}
!4947 = !DIDerivedType(tag: DW_TAG_member, scope: !4944, file: !4945, line: 26, baseType: !4948, size: 64)
!4948 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4944, file: !4945, line: 26, size: 64, elements: !4949)
!4949 = !{!4950, !4951}
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4948, file: !4945, line: 28, baseType: !399, size: 64, align: 64)
!4951 = !DIDerivedType(tag: DW_TAG_member, scope: !4948, file: !4945, line: 30, baseType: !4952, size: 64)
!4952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4948, file: !4945, line: 30, size: 64, elements: !4953)
!4953 = !{!4954, !4955}
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4952, file: !4945, line: 31, baseType: !60, size: 32)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4952, file: !4945, line: 32, baseType: !23, size: 32, offset: 32)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1194, file: !1195, line: 95, baseType: !4652, size: 64, offset: 768)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1194, file: !1195, line: 96, baseType: !1429, size: 64, offset: 832)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1194, file: !1195, line: 97, baseType: !40, size: 64, offset: 896)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1194, file: !1195, line: 98, baseType: !21, size: 64, offset: 960)
!4960 = !DIDerivedType(tag: DW_TAG_member, scope: !1194, file: !1195, line: 100, baseType: !4961, size: 128, offset: 1024)
!4961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1194, file: !1195, line: 100, size: 128, elements: !4962)
!4962 = !{!4963, !4964}
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4961, file: !1195, line: 101, baseType: !98, size: 128)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4961, file: !1195, line: 102, baseType: !2741, size: 64)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1194, file: !1195, line: 104, baseType: !98, size: 128, offset: 1152)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1194, file: !1195, line: 105, baseType: !98, size: 128, offset: 1280)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1194, file: !1195, line: 113, baseType: !4968, size: 128, offset: 1408)
!4968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1194, file: !1195, line: 109, size: 128, elements: !4969)
!4969 = !{!4970, !4971, !4972}
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4968, file: !1195, line: 110, baseType: !755, size: 128)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4968, file: !1195, line: 111, baseType: !1204, size: 128)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4968, file: !1195, line: 112, baseType: !683, size: 128, align: 64)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1189, file: !1190, line: 72, baseType: !1429, size: 64, offset: 64)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1189, file: !1190, line: 73, baseType: !23, size: 32, offset: 128)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1189, file: !1190, line: 74, baseType: !1267, size: 64, offset: 192)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1184, file: !1185, line: 10, baseType: !1193, size: 64, offset: 64)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !676, file: !276, line: 1015, baseType: !1228, size: 64, offset: 1344)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !676, file: !276, line: 1016, baseType: !4797, size: 64, offset: 1408)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !676, file: !276, line: 1018, baseType: !398, size: 64, offset: 1472)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !676, file: !276, line: 1020, baseType: !21, size: 64, offset: 1536)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !676, file: !276, line: 1023, baseType: !21, size: 64, offset: 1600)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !676, file: !276, line: 1027, baseType: !3278, size: 64, offset: 1664)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !676, file: !276, line: 1029, baseType: !1580, size: 64, offset: 1728)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !676, file: !276, line: 1030, baseType: !2588, size: 32, offset: 1792)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !676, file: !276, line: 1031, baseType: !2588, size: 32, offset: 1824)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !651, file: !163, line: 756, baseType: !40, size: 64, offset: 704)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !651, file: !163, line: 757, baseType: !40, size: 64, offset: 768)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !651, file: !163, line: 760, baseType: !40, size: 64, offset: 832)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !651, file: !163, line: 761, baseType: !40, size: 64, offset: 896)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !651, file: !163, line: 763, baseType: !40, size: 64, offset: 960)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !651, file: !163, line: 764, baseType: !4992, size: 64, offset: 1024)
!4992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4993, size: 64)
!4993 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1725, line: 299, baseType: !4994)
!4994 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1725, line: 299, size: 64, elements: !4995)
!4995 = !{!4996}
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !4994, file: !1725, line: 299, baseType: !4997, size: 64)
!4997 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1730, line: 18, baseType: !40)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !651, file: !163, line: 773, baseType: !50, size: 32, offset: 1088)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !651, file: !163, line: 785, baseType: !50, size: 32, offset: 1120)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !651, file: !163, line: 795, baseType: !5001, size: 64, offset: 1152)
!5001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5002, size: 64)
!5002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !163, line: 726, size: 128, elements: !5003)
!5003 = !{!5004, !5005}
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5002, file: !163, line: 727, baseType: !398, size: 64)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !5002, file: !163, line: 728, baseType: !23, size: 32, offset: 64)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !651, file: !163, line: 801, baseType: !40, size: 64, offset: 1216)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !651, file: !163, line: 804, baseType: !696, size: 64, offset: 1280)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !651, file: !163, line: 806, baseType: !23, size: 32, offset: 1344)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !651, file: !163, line: 808, baseType: !60, size: 32, offset: 1376)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !651, file: !163, line: 823, baseType: !879, size: 320, offset: 1408)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !651, file: !163, line: 825, baseType: !98, size: 128, offset: 1728)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !651, file: !163, line: 845, baseType: !23, size: 32, offset: 1856)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !651, file: !163, line: 849, baseType: !40, size: 64, offset: 1920)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !651, file: !163, line: 850, baseType: !40, size: 64, offset: 1984)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !651, file: !163, line: 852, baseType: !40, size: 64, offset: 2048)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !651, file: !163, line: 853, baseType: !40, size: 64, offset: 2112)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !651, file: !163, line: 854, baseType: !698, size: 64, offset: 2176)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !651, file: !163, line: 855, baseType: !40, size: 64, offset: 2240)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !651, file: !163, line: 856, baseType: !40, size: 64, offset: 2304)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !651, file: !163, line: 857, baseType: !40, size: 64, offset: 2368)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !651, file: !163, line: 858, baseType: !40, size: 64, offset: 2432)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !651, file: !163, line: 865, baseType: !521, size: 32, offset: 2496)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !651, file: !163, line: 867, baseType: !60, size: 32, offset: 2528)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !651, file: !163, line: 869, baseType: !40, size: 64, offset: 2560)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !651, file: !163, line: 869, baseType: !40, size: 64, offset: 2624)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !651, file: !163, line: 869, baseType: !40, size: 64, offset: 2688)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !651, file: !163, line: 869, baseType: !40, size: 64, offset: 2752)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !651, file: !163, line: 870, baseType: !40, size: 64, offset: 2816)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !651, file: !163, line: 870, baseType: !40, size: 64, offset: 2880)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !651, file: !163, line: 870, baseType: !40, size: 64, offset: 2944)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !651, file: !163, line: 871, baseType: !40, size: 64, offset: 3008)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !651, file: !163, line: 871, baseType: !40, size: 64, offset: 3072)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !651, file: !163, line: 871, baseType: !40, size: 64, offset: 3136)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !651, file: !163, line: 871, baseType: !40, size: 64, offset: 3200)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !651, file: !163, line: 873, baseType: !5036, size: 3328, offset: 3264)
!5036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 3328, elements: !5037)
!5037 = !{!5038}
!5038 = !DISubrange(count: 52)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !651, file: !163, line: 875, baseType: !4530, size: 1280, offset: 6592)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !651, file: !163, line: 877, baseType: !5041, size: 64, offset: 7872)
!5041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5042, size: 64)
!5042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !5043, line: 84, size: 448, elements: !5044)
!5043 = !DIFile(filename: "./include/linux/binfmts.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c5e97d73c9e2b70108086968647f46d0")
!5044 = !{!5045, !5046, !5047, !5090, !5094, !5101}
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "lh", scope: !5042, file: !5043, line: 85, baseType: !98, size: 128)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !5042, file: !5043, line: 86, baseType: !1463, size: 64, offset: 128)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "load_binary", scope: !5042, file: !5043, line: 87, baseType: !5048, size: 64, offset: 192)
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = !DISubroutineType(types: !5050)
!5050 = !{!23, !5051}
!5051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5052, size: 64)
!5052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binprm", file: !5043, line: 18, size: 3328, elements: !5053)
!5053 = !{!5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066, !5067, !5069, !5070, !5071, !5072, !5073, !5074, !5075, !5076, !5077, !5078, !5079, !5080, !5086}
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !5052, file: !5043, line: 20, baseType: !1710, size: 64)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "vma_pages", scope: !5052, file: !5043, line: 21, baseType: !40, size: 64, offset: 64)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !5052, file: !5043, line: 26, baseType: !647, size: 64, offset: 128)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5052, file: !5043, line: 27, baseType: !40, size: 64, offset: 192)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "argmin", scope: !5052, file: !5043, line: 28, baseType: !40, size: 64, offset: 256)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "have_execfd", scope: !5052, file: !5043, line: 31, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "execfd_creds", scope: !5052, file: !5043, line: 34, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "secureexec", scope: !5052, file: !5043, line: 40, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "point_of_no_return", scope: !5052, file: !5043, line: 45, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "comm_from_dentry", scope: !5052, file: !5043, line: 47, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "executable", scope: !5052, file: !5043, line: 48, baseType: !675, size: 64, offset: 384)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "interpreter", scope: !5052, file: !5043, line: 49, baseType: !675, size: 64, offset: 448)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5052, file: !5043, line: 50, baseType: !675, size: 64, offset: 512)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !5052, file: !5043, line: 51, baseType: !5068, size: 64, offset: 576)
!5068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe", scope: !5052, file: !5043, line: 52, baseType: !23, size: 32, offset: 640)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "per_clear", scope: !5052, file: !5043, line: 53, baseType: !7, size: 32, offset: 672)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !5052, file: !5043, line: 54, baseType: !23, size: 32, offset: 704)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "envc", scope: !5052, file: !5043, line: 54, baseType: !23, size: 32, offset: 736)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !5052, file: !5043, line: 55, baseType: !17, size: 64, offset: 768)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !5052, file: !5043, line: 56, baseType: !17, size: 64, offset: 832)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "fdpath", scope: !5052, file: !5043, line: 59, baseType: !17, size: 64, offset: 896)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "interp_flags", scope: !5052, file: !5043, line: 60, baseType: !7, size: 32, offset: 960)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "execfd", scope: !5052, file: !5043, line: 61, baseType: !23, size: 32, offset: 992)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "loader", scope: !5052, file: !5043, line: 62, baseType: !40, size: 64, offset: 1024)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "exec", scope: !5052, file: !5043, line: 62, baseType: !40, size: 64, offset: 1088)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_stack", scope: !5052, file: !5043, line: 64, baseType: !5081, size: 128, offset: 1152)
!5081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5082, line: 43, size: 128, elements: !5083)
!5082 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5083 = !{!5084, !5085}
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5081, file: !5082, line: 44, baseType: !39, size: 64)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5081, file: !5082, line: 45, baseType: !39, size: 64, offset: 64)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !5052, file: !5043, line: 66, baseType: !5087, size: 2048, offset: 1280)
!5087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 2048, elements: !5088)
!5088 = !{!5089}
!5089 = !DISubrange(count: 256)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "load_shlib", scope: !5042, file: !5043, line: 88, baseType: !5091, size: 64, offset: 256)
!5091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5092, size: 64)
!5092 = !DISubroutineType(types: !5093)
!5093 = !{!23, !675}
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "core_dump", scope: !5042, file: !5043, line: 90, baseType: !5095, size: 64, offset: 320)
!5095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5096, size: 64)
!5096 = !DISubroutineType(types: !5097)
!5097 = !{!23, !5098}
!5098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5099, size: 64)
!5099 = !DICompositeType(tag: DW_TAG_structure_type, name: "coredump_params", file: !5100, line: 66, flags: DIFlagFwdDecl)
!5100 = !DIFile(filename: "./include/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1b1d3b970b1358b3a026c26044689afa")
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "min_coredump", scope: !5042, file: !5043, line: 91, baseType: !40, size: 64, offset: 384)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !651, file: !163, line: 880, baseType: !5103, size: 1088, offset: 7936)
!5103 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !5104, line: 72, baseType: !5105)
!5104 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!5105 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5104, line: 23, size: 1088, elements: !5106)
!5106 = !{!5107, !5108, !5109, !5110, !5111, !5114, !5115, !5116, !5117, !5142, !5143, !5144}
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !5105, file: !5104, line: 28, baseType: !398, size: 64)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !5105, file: !5104, line: 38, baseType: !698, size: 64, offset: 64)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !5105, file: !5104, line: 40, baseType: !40, size: 64, offset: 128)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !5105, file: !5104, line: 43, baseType: !879, size: 320, offset: 192)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !5105, file: !5104, line: 44, baseType: !5112, size: 64, offset: 512)
!5112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5113, size: 64)
!5113 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !5104, line: 44, flags: DIFlagFwdDecl)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5105, file: !5104, line: 48, baseType: !40, size: 64, offset: 576)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5105, file: !5104, line: 59, baseType: !703, size: 256, offset: 640)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !5105, file: !5104, line: 60, baseType: !21, size: 64, offset: 896)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !5105, file: !5104, line: 61, baseType: !5118, size: 64, offset: 960)
!5118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5119, size: 64)
!5119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5120)
!5120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !5121, line: 13, size: 1216, elements: !5122)
!5121 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!5122 = !{!5123, !5124, !5125, !5126, !5127, !5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5141}
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5120, file: !5121, line: 14, baseType: !21, size: 64)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5120, file: !5121, line: 15, baseType: !40, size: 64, offset: 64)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !5120, file: !5121, line: 17, baseType: !40, size: 64, offset: 128)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !5120, file: !5121, line: 17, baseType: !40, size: 64, offset: 192)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !5120, file: !5121, line: 18, baseType: !40, size: 64, offset: 256)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !5120, file: !5121, line: 18, baseType: !40, size: 64, offset: 320)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !5120, file: !5121, line: 19, baseType: !2526, size: 64, offset: 384)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !5120, file: !5121, line: 21, baseType: !1083, size: 64, offset: 448)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !5120, file: !5121, line: 23, baseType: !1083, size: 64, offset: 512)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !5120, file: !5121, line: 24, baseType: !1083, size: 64, offset: 576)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !5120, file: !5121, line: 25, baseType: !1083, size: 64, offset: 640)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !5120, file: !5121, line: 26, baseType: !1083, size: 64, offset: 704)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !5120, file: !5121, line: 27, baseType: !1083, size: 64, offset: 768)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !5120, file: !5121, line: 28, baseType: !1083, size: 64, offset: 832)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !5120, file: !5121, line: 29, baseType: !1083, size: 64, offset: 896)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !5120, file: !5121, line: 30, baseType: !1083, size: 64, offset: 960)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !5120, file: !5121, line: 31, baseType: !1083, size: 64, offset: 1024)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !5120, file: !5121, line: 32, baseType: !1083, size: 64, offset: 1088)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !5120, file: !5121, line: 33, baseType: !1083, size: 64, offset: 1152)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !5105, file: !5104, line: 63, baseType: !50, size: 32, offset: 1024)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !5105, file: !5104, line: 69, baseType: !94, size: 16, offset: 1056)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !5105, file: !5104, line: 70, baseType: !2917, size: 16, offset: 1072)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !651, file: !163, line: 882, baseType: !40, size: 64, offset: 9024)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !651, file: !163, line: 885, baseType: !60, size: 32, offset: 9088)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !651, file: !163, line: 886, baseType: !5148, size: 64, offset: 9152)
!5148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5149, size: 64)
!5149 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !163, line: 732, flags: DIFlagFwdDecl)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !651, file: !163, line: 901, baseType: !801, size: 64, offset: 9216)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !651, file: !163, line: 904, baseType: !675, size: 64, offset: 9280)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !651, file: !163, line: 906, baseType: !5153, size: 64, offset: 9344)
!5153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5154, size: 64)
!5154 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !163, line: 906, flags: DIFlagFwdDecl)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !651, file: !163, line: 930, baseType: !50, size: 32, offset: 9408)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !651, file: !163, line: 933, baseType: !50, size: 32, offset: 9440)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !651, file: !163, line: 935, baseType: !5158, size: 64, offset: 9472)
!5158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !305, line: 103, size: 64, elements: !5159)
!5159 = !{!5160}
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !5158, file: !305, line: 104, baseType: !5161, size: 64)
!5161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5162, size: 64)
!5162 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !305, line: 101, flags: DIFlagFwdDecl)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !651, file: !163, line: 940, baseType: !696, size: 64, offset: 9536)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !651, file: !163, line: 942, baseType: !986, size: 256, offset: 9600)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !648, file: !163, line: 986, baseType: !5166, offset: 10240)
!5166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, elements: !1090)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !330, file: !331, line: 882, baseType: !647, size: 64, offset: 9792)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !330, file: !331, line: 884, baseType: !23, size: 32, offset: 9856)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !330, file: !331, line: 885, baseType: !23, size: 32, offset: 9888)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !330, file: !331, line: 886, baseType: !23, size: 32, offset: 9920)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !330, file: !331, line: 888, baseType: !23, size: 32, offset: 9952)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !330, file: !331, line: 890, baseType: !40, size: 64, offset: 9984)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !330, file: !331, line: 893, baseType: !7, size: 32, offset: 10048)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !330, file: !331, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !330, file: !331, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !330, file: !331, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !330, file: !331, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !330, file: !331, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !330, file: !331, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !330, file: !331, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !330, file: !331, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !330, file: !331, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !330, file: !331, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !330, file: !331, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !330, file: !331, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !330, file: !331, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !330, file: !331, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !330, file: !331, line: 969, baseType: !40, size: 64, offset: 10176)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !330, file: !331, line: 971, baseType: !5190, size: 448, offset: 10240)
!5190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !299, line: 25, size: 448, elements: !5191)
!5191 = !{!5192, !5193, !5198}
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !5190, file: !299, line: 26, baseType: !40, size: 64)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !5190, file: !299, line: 27, baseType: !5194, size: 64, offset: 64)
!5194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5195, size: 64)
!5195 = !DISubroutineType(types: !5196)
!5196 = !{!1083, !5197}
!5197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5190, size: 64)
!5198 = !DIDerivedType(tag: DW_TAG_member, scope: !5190, file: !299, line: 28, baseType: !5199, size: 320, offset: 128)
!5199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5190, file: !299, line: 28, size: 320, elements: !5200)
!5200 = !{!5201, !5211, !5236}
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !5199, file: !299, line: 37, baseType: !5202, size: 320)
!5202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5199, file: !299, line: 30, size: 320, elements: !5203)
!5203 = !{!5204, !5206, !5207, !5208, !5209, !5210}
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !5202, file: !299, line: 31, baseType: !5205, size: 64)
!5205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5202, file: !299, line: 32, baseType: !340, size: 32, offset: 64)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5202, file: !299, line: 33, baseType: !340, size: 32, offset: 96)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !5202, file: !299, line: 34, baseType: !340, size: 32, offset: 128)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5202, file: !299, line: 35, baseType: !398, size: 64, offset: 192)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !5202, file: !299, line: 36, baseType: !5205, size: 64, offset: 256)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !5199, file: !299, line: 47, baseType: !5212, size: 192)
!5212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5199, file: !299, line: 39, size: 192, elements: !5213)
!5213 = !{!5214, !5215, !5216, !5235}
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !5212, file: !299, line: 40, baseType: !513, size: 32)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5212, file: !299, line: 41, baseType: !298, size: 32, offset: 32)
!5216 = !DIDerivedType(tag: DW_TAG_member, scope: !5212, file: !299, line: 42, baseType: !5217, size: 64, offset: 64)
!5217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5212, file: !299, line: 42, size: 64, elements: !5218)
!5218 = !{!5219, !5227}
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !5217, file: !299, line: 43, baseType: !5220, size: 64)
!5220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5221, size: 64)
!5221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !5222, line: 7, size: 128, elements: !5223)
!5222 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!5223 = !{!5224, !5226}
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5221, file: !5222, line: 8, baseType: !5225, size: 64)
!5225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !38, line: 93, baseType: !44)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5221, file: !5222, line: 9, baseType: !44, size: 64, offset: 64)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !5217, file: !299, line: 44, baseType: !5228, size: 64)
!5228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5229, size: 64)
!5229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !5230, line: 7, size: 64, elements: !5231)
!5230 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!5231 = !{!5232, !5234}
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5229, file: !5230, line: 8, baseType: !5233, size: 32)
!5233 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !5230, line: 5, baseType: !871)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5229, file: !5230, line: 9, baseType: !871, size: 32, offset: 32)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5212, file: !299, line: 46, baseType: !398, size: 64, offset: 128)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5199, file: !299, line: 55, baseType: !5237, size: 256)
!5237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5199, file: !299, line: 49, size: 256, elements: !5238)
!5238 = !{!5239, !5247, !5248, !5249, !5250}
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !5237, file: !299, line: 50, baseType: !5240, size: 64)
!5240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5241, size: 64)
!5241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !5242, line: 36, size: 64, elements: !5243)
!5242 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!5243 = !{!5244, !5245, !5246}
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !5241, file: !5242, line: 37, baseType: !23, size: 32)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !5241, file: !5242, line: 38, baseType: !907, size: 16, offset: 32)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !5241, file: !5242, line: 39, baseType: !907, size: 16, offset: 48)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !5237, file: !299, line: 51, baseType: !23, size: 32, offset: 64)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !5237, file: !299, line: 52, baseType: !23, size: 32, offset: 96)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5237, file: !299, line: 53, baseType: !40, size: 64, offset: 128)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5237, file: !299, line: 54, baseType: !40, size: 64, offset: 192)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !330, file: !331, line: 973, baseType: !5252, size: 32, offset: 10688)
!5252 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !26, line: 27, baseType: !5253)
!5253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !38, line: 28, baseType: !23)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !330, file: !331, line: 974, baseType: !5252, size: 32, offset: 10720)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !330, file: !331, line: 978, baseType: !40, size: 64, offset: 10752)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !330, file: !331, line: 987, baseType: !329, size: 64, offset: 10816)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !330, file: !331, line: 990, baseType: !329, size: 64, offset: 10880)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !330, file: !331, line: 995, baseType: !98, size: 128, offset: 10944)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !330, file: !331, line: 996, baseType: !98, size: 128, offset: 11072)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !330, file: !331, line: 997, baseType: !329, size: 64, offset: 11200)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !330, file: !331, line: 1005, baseType: !98, size: 128, offset: 11264)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !330, file: !331, line: 1006, baseType: !98, size: 128, offset: 11392)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !330, file: !331, line: 1009, baseType: !743, size: 64, offset: 11520)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !330, file: !331, line: 1010, baseType: !5265, size: 512, offset: 11584)
!5265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !755, size: 512, elements: !760)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !330, file: !331, line: 1011, baseType: !98, size: 128, offset: 12096)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !330, file: !331, line: 1012, baseType: !98, size: 128, offset: 12224)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !330, file: !331, line: 1014, baseType: !1023, size: 64, offset: 12352)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !330, file: !331, line: 1017, baseType: !2910, size: 64, offset: 12416)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !330, file: !331, line: 1020, baseType: !2910, size: 64, offset: 12480)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !330, file: !331, line: 1023, baseType: !21, size: 64, offset: 12544)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !330, file: !331, line: 1025, baseType: !398, size: 64, offset: 12608)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !330, file: !331, line: 1026, baseType: !398, size: 64, offset: 12672)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !330, file: !331, line: 1031, baseType: !398, size: 64, offset: 12736)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !330, file: !331, line: 1032, baseType: !4005, size: 192, offset: 12800)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !330, file: !331, line: 1041, baseType: !40, size: 64, offset: 12992)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !330, file: !331, line: 1042, baseType: !40, size: 64, offset: 13056)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !330, file: !331, line: 1045, baseType: !398, size: 64, offset: 13120)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !330, file: !331, line: 1048, baseType: !398, size: 64, offset: 13184)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !330, file: !331, line: 1051, baseType: !40, size: 64, offset: 13248)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !330, file: !331, line: 1052, baseType: !40, size: 64, offset: 13312)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !330, file: !331, line: 1055, baseType: !5283, size: 640, offset: 13376)
!5283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !5284, line: 132, size: 640, elements: !5285)
!5284 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!5285 = !{!5286, !5292, !5293}
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !5283, file: !5284, line: 133, baseType: !5287, size: 576)
!5287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5288, size: 576, elements: !739)
!5288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !5284, line: 117, size: 192, elements: !5289)
!5289 = !{!5290, !5291}
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !5288, file: !5284, line: 118, baseType: !398, size: 64)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !5288, file: !5284, line: 119, baseType: !527, size: 128, offset: 64)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !5283, file: !5284, line: 134, baseType: !7, size: 32, offset: 576)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !5283, file: !5284, line: 135, baseType: !7, size: 32, offset: 608)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !330, file: !331, line: 1058, baseType: !5295, size: 448, offset: 14016)
!5295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !5284, line: 144, size: 448, elements: !5296)
!5296 = !{!5297, !5298, !5299}
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5295, file: !5284, line: 145, baseType: !683, size: 128, align: 64)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5295, file: !5284, line: 146, baseType: !703, size: 256, offset: 128)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !5295, file: !5284, line: 147, baseType: !7, size: 32, offset: 384)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !330, file: !331, line: 1064, baseType: !1097, size: 64, offset: 14464)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !330, file: !331, line: 1067, baseType: !1097, size: 64, offset: 14528)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !330, file: !331, line: 1070, baseType: !1097, size: 64, offset: 14592)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !330, file: !331, line: 1074, baseType: !863, size: 64, offset: 14656)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !330, file: !331, line: 1084, baseType: !5305, size: 128, offset: 14720)
!5305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 128, elements: !4646)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !330, file: !331, line: 1086, baseType: !5307, size: 64, offset: 14848)
!5307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5308, size: 64)
!5308 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !331, line: 55, flags: DIFlagFwdDecl)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !330, file: !331, line: 1089, baseType: !5310, size: 64, offset: 14912)
!5310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !5311, line: 12, size: 64, elements: !5312)
!5311 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!5312 = !{!5313}
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !5310, file: !5311, line: 13, baseType: !5314, size: 64)
!5314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5315, size: 64)
!5315 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !5311, line: 8, flags: DIFlagFwdDecl)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !330, file: !331, line: 1090, baseType: !5317, size: 128, offset: 14976)
!5317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !5318, line: 13, size: 128, elements: !5319)
!5318 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!5319 = !{!5320}
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !5317, file: !5318, line: 14, baseType: !98, size: 128)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !330, file: !331, line: 1097, baseType: !5322, size: 64, offset: 15104)
!5322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5323, size: 64)
!5323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !5324, line: 9, size: 448, elements: !5325)
!5324 = !DIFile(filename: "./include/linux/fs_struct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "974310bb6a29a53024699f0fa1ab259a")
!5325 = !{!5326, !5327, !5328, !5329, !5330, !5331, !5332}
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !5323, file: !5324, line: 10, baseType: !23, size: 32)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5323, file: !5324, line: 11, baseType: !60, size: 32, offset: 32)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !5323, file: !5324, line: 12, baseType: !1199, size: 32, offset: 64)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "umask", scope: !5323, file: !5324, line: 13, baseType: !23, size: 32, offset: 96)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "in_exec", scope: !5323, file: !5324, line: 14, baseType: !23, size: 32, offset: 128)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !5323, file: !5324, line: 15, baseType: !1184, size: 128, offset: 192)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "pwd", scope: !5323, file: !5324, line: 15, baseType: !1184, size: 128, offset: 320)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !330, file: !331, line: 1100, baseType: !5334, size: 64, offset: 15168)
!5334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5335, size: 64)
!5335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !5336, line: 48, size: 5632, elements: !5337)
!5336 = !DIFile(filename: "./include/linux/fdtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "498516b1695965933173787db61c4521")
!5337 = !{!5338, !5339, !5340, !5341, !5352, !5353, !5354, !5355, !5356, !5357, !5358}
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5335, file: !5336, line: 52, baseType: !50, size: 32)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "resize_in_progress", scope: !5335, file: !5336, line: 53, baseType: !859, size: 8, offset: 32)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "resize_wait", scope: !5335, file: !5336, line: 54, baseType: !55, size: 192, offset: 64)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "fdt", scope: !5335, file: !5336, line: 56, baseType: !5342, size: 64, offset: 256)
!5342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5343, size: 64)
!5343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fdtable", file: !5336, line: 26, size: 448, elements: !5344)
!5344 = !{!5345, !5346, !5348, !5349, !5350, !5351}
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "max_fds", scope: !5343, file: !5336, line: 27, baseType: !7, size: 32)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !5343, file: !5336, line: 28, baseType: !5347, size: 64, offset: 64)
!5347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_exec", scope: !5343, file: !5336, line: 29, baseType: !4200, size: 64, offset: 128)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "open_fds", scope: !5343, file: !5336, line: 30, baseType: !4200, size: 64, offset: 192)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "full_fds_bits", scope: !5343, file: !5336, line: 31, baseType: !4200, size: 64, offset: 256)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5343, file: !5336, line: 32, baseType: !683, size: 128, align: 64, offset: 320)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "fdtab", scope: !5335, file: !5336, line: 57, baseType: !5343, size: 448, offset: 320)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "file_lock", scope: !5335, file: !5336, line: 61, baseType: !60, size: 32, align: 512, offset: 1024)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "next_fd", scope: !5335, file: !5336, line: 62, baseType: !7, size: 32, offset: 1056)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_exec_init", scope: !5335, file: !5336, line: 63, baseType: !598, size: 64, offset: 1088)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "open_fds_init", scope: !5335, file: !5336, line: 64, baseType: !598, size: 64, offset: 1152)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "full_fds_bits_init", scope: !5335, file: !5336, line: 65, baseType: !598, size: 64, offset: 1216)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "fd_array", scope: !5335, file: !5336, line: 66, baseType: !5359, size: 4096, offset: 1280)
!5359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 4096, elements: !1519)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !330, file: !331, line: 1103, baseType: !5361, size: 64, offset: 15232)
!5361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5362, size: 64)
!5362 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !331, line: 53, flags: DIFlagFwdDecl)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !330, file: !331, line: 1107, baseType: !5364, size: 64, offset: 15296)
!5364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5365, size: 64)
!5365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !5366, line: 31, size: 576, elements: !5367)
!5366 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!5367 = !{!5368, !5369, !5372, !5375, !5378, !5379, !5382, !5385, !5386}
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5365, file: !5366, line: 32, baseType: !346, size: 32)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !5365, file: !5366, line: 33, baseType: !5370, size: 64, offset: 64)
!5370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5371, size: 64)
!5371 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !5366, line: 9, flags: DIFlagFwdDecl)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !5365, file: !5366, line: 34, baseType: !5373, size: 64, offset: 128)
!5373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5374, size: 64)
!5374 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !5366, line: 10, flags: DIFlagFwdDecl)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !5365, file: !5366, line: 35, baseType: !5376, size: 64, offset: 192)
!5376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5377, size: 64)
!5377 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !5366, line: 8, flags: DIFlagFwdDecl)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !5365, file: !5366, line: 36, baseType: !771, size: 64, offset: 256)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !5365, file: !5366, line: 37, baseType: !5380, size: 64, offset: 320)
!5380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5381, size: 64)
!5381 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !865, line: 34, flags: DIFlagFwdDecl)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !5365, file: !5366, line: 38, baseType: !5383, size: 64, offset: 384)
!5383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5384, size: 64)
!5384 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !5366, line: 38, flags: DIFlagFwdDecl)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !5365, file: !5366, line: 39, baseType: !5383, size: 64, offset: 448)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !5365, file: !5366, line: 40, baseType: !5387, size: 64, offset: 512)
!5387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5388, size: 64)
!5388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !5389, line: 771, size: 384, elements: !5390)
!5389 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!5390 = !{!5391, !5392, !5393, !5394}
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5388, file: !5389, line: 772, baseType: !847, size: 192)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !5388, file: !5389, line: 773, baseType: !801, size: 64, offset: 192)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !5388, file: !5389, line: 774, baseType: !1068, size: 64, offset: 256)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !5388, file: !5389, line: 775, baseType: !4075, size: 64, offset: 320)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !330, file: !331, line: 1110, baseType: !5396, size: 64, offset: 15360)
!5396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5397, size: 64)
!5397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !5398, line: 93, size: 8768, elements: !5399)
!5398 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!5399 = !{!5400, !5401, !5402, !5403, !5404, !5405, !5406, !5407, !5418, !5419, !5420, !5421, !5422, !5423, !5424, !5436, !5437, !5438, !5439, !5440, !5441, !5442, !5448, !5457, !5458, !5460, !5461, !5462, !5465, !5471, !5472, !5473, !5474, !5475, !5476, !5477, !5478, !5479, !5480, !5481, !5482, !5483, !5484, !5485, !5486, !5487, !5488, !5489, !5490, !5491, !5492, !5503, !5504, !5506, !5516, !5578, !5579, !5582, !5583, !5584, !5585, !5586, !5587}
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !5397, file: !5398, line: 94, baseType: !346, size: 32)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !5397, file: !5398, line: 95, baseType: !50, size: 32, offset: 32)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5397, file: !5398, line: 96, baseType: !23, size: 32, offset: 64)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !5397, file: !5398, line: 97, baseType: !23, size: 32, offset: 96)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !5397, file: !5398, line: 98, baseType: !98, size: 128, offset: 128)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !5397, file: !5398, line: 100, baseType: !55, size: 192, offset: 256)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !5397, file: !5398, line: 103, baseType: !329, size: 64, offset: 448)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !5397, file: !5398, line: 106, baseType: !5408, size: 192, offset: 512)
!5408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !5409, line: 32, size: 192, elements: !5410)
!5409 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!5410 = !{!5411, !5412}
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5408, file: !5409, line: 33, baseType: !98, size: 128)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5408, file: !5409, line: 34, baseType: !5413, size: 64, offset: 128)
!5413 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !5414, line: 25, baseType: !5415)
!5414 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!5415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5414, line: 23, size: 64, elements: !5416)
!5416 = !{!5417}
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5415, file: !5414, line: 24, baseType: !598, size: 64)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !5397, file: !5398, line: 109, baseType: !751, size: 64, offset: 704)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !5397, file: !5398, line: 112, baseType: !23, size: 32, offset: 768)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !5397, file: !5398, line: 114, baseType: !23, size: 32, offset: 800)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !5397, file: !5398, line: 115, baseType: !329, size: 64, offset: 832)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !5397, file: !5398, line: 118, baseType: !23, size: 32, offset: 896)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5397, file: !5398, line: 119, baseType: !7, size: 32, offset: 928)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !5397, file: !5398, line: 121, baseType: !5425, size: 64, offset: 960)
!5425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5426, size: 64)
!5426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !5398, line: 80, size: 448, elements: !5427)
!5427 = !{!5428, !5429, !5435}
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5426, file: !5398, line: 81, baseType: !50, size: 32)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5426, file: !5398, line: 82, baseType: !5430, size: 128, offset: 64)
!5430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !5398, line: 75, size: 128, elements: !5431)
!5431 = !{!5432, !5433}
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5430, file: !5398, line: 76, baseType: !329, size: 64)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5430, file: !5398, line: 77, baseType: !5434, size: 64, offset: 64)
!5434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5430, size: 64)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5426, file: !5398, line: 83, baseType: !1024, size: 256, offset: 192)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !5397, file: !5398, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !5397, file: !5398, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !5397, file: !5398, line: 138, baseType: !7, size: 32, offset: 1056)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !5397, file: !5398, line: 139, baseType: !98, size: 128, offset: 1088)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !5397, file: !5398, line: 142, baseType: !465, size: 512, offset: 1216)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !5397, file: !5398, line: 143, baseType: !473, size: 64, offset: 1728)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !5397, file: !5398, line: 150, baseType: !5443, size: 256, offset: 1792)
!5443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5444, size: 256, elements: !2900)
!5444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !5398, line: 38, size: 128, elements: !5445)
!5445 = !{!5446, !5447}
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5444, file: !5398, line: 39, baseType: !398, size: 64)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5444, file: !5398, line: 40, baseType: !398, size: 64, offset: 64)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !5397, file: !5398, line: 156, baseType: !5449, size: 192, offset: 2048)
!5449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !5398, line: 66, size: 192, elements: !5450)
!5450 = !{!5451}
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5449, file: !5398, line: 67, baseType: !5452, size: 192)
!5452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !5398, line: 47, size: 192, elements: !5453)
!5453 = !{!5454, !5455, !5456}
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5452, file: !5398, line: 48, baseType: !698, size: 64)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5452, file: !5398, line: 49, baseType: !698, size: 64, offset: 64)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5452, file: !5398, line: 50, baseType: !698, size: 64, offset: 128)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !5397, file: !5398, line: 160, baseType: !5283, size: 640, offset: 2240)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5397, file: !5398, line: 163, baseType: !5459, size: 256, offset: 2880)
!5459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !743, size: 256, elements: !760)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !5397, file: !5398, line: 169, baseType: !743, size: 64, offset: 3136)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !5397, file: !5398, line: 172, baseType: !23, size: 32, offset: 3200)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5397, file: !5398, line: 174, baseType: !5463, size: 64, offset: 3264)
!5463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5464, size: 64)
!5464 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !5398, line: 174, flags: DIFlagFwdDecl)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !5397, file: !5398, line: 185, baseType: !5466, size: 64, offset: 3328)
!5466 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !517, line: 860, baseType: !5467)
!5467 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !517, line: 853, size: 64, elements: !5468)
!5468 = !{!5469, !5470}
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5467, file: !517, line: 858, baseType: !1199, size: 32)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5467, file: !517, line: 859, baseType: !60, size: 32, offset: 32)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5397, file: !5398, line: 186, baseType: !398, size: 64, offset: 3392)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5397, file: !5398, line: 186, baseType: !398, size: 64, offset: 3456)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !5397, file: !5398, line: 186, baseType: !398, size: 64, offset: 3520)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !5397, file: !5398, line: 186, baseType: !398, size: 64, offset: 3584)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !5397, file: !5398, line: 187, baseType: !398, size: 64, offset: 3648)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !5397, file: !5398, line: 188, baseType: !398, size: 64, offset: 3712)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !5397, file: !5398, line: 189, baseType: !4005, size: 192, offset: 3776)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5397, file: !5398, line: 190, baseType: !40, size: 64, offset: 3968)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5397, file: !5398, line: 190, baseType: !40, size: 64, offset: 4032)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !5397, file: !5398, line: 190, baseType: !40, size: 64, offset: 4096)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !5397, file: !5398, line: 190, baseType: !40, size: 64, offset: 4160)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !5397, file: !5398, line: 191, baseType: !40, size: 64, offset: 4224)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !5397, file: !5398, line: 191, baseType: !40, size: 64, offset: 4288)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !5397, file: !5398, line: 191, baseType: !40, size: 64, offset: 4352)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !5397, file: !5398, line: 191, baseType: !40, size: 64, offset: 4416)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !5397, file: !5398, line: 192, baseType: !40, size: 64, offset: 4480)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !5397, file: !5398, line: 192, baseType: !40, size: 64, offset: 4544)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !5397, file: !5398, line: 192, baseType: !40, size: 64, offset: 4608)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !5397, file: !5398, line: 192, baseType: !40, size: 64, offset: 4672)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !5397, file: !5398, line: 193, baseType: !40, size: 64, offset: 4736)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !5397, file: !5398, line: 193, baseType: !40, size: 64, offset: 4800)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !5397, file: !5398, line: 194, baseType: !5493, size: 448, offset: 4864)
!5493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5494, line: 12, size: 448, elements: !5495)
!5494 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5495 = !{!5496, !5497, !5498, !5499, !5500, !5501, !5502}
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5493, file: !5494, line: 15, baseType: !398, size: 64)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5493, file: !5494, line: 17, baseType: !398, size: 64, offset: 64)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5493, file: !5494, line: 19, baseType: !398, size: 64, offset: 128)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5493, file: !5494, line: 21, baseType: !398, size: 64, offset: 192)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5493, file: !5494, line: 29, baseType: !398, size: 64, offset: 256)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5493, file: !5494, line: 35, baseType: !398, size: 64, offset: 320)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5493, file: !5494, line: 44, baseType: !398, size: 64, offset: 384)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !5397, file: !5398, line: 202, baseType: !400, size: 64, offset: 5312)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !5397, file: !5398, line: 213, baseType: !5505, size: 2048, offset: 5376)
!5505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5081, size: 2048, elements: !4646)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !5397, file: !5398, line: 216, baseType: !5507, size: 448, offset: 7424)
!5507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !5398, line: 30, size: 448, elements: !5508)
!5508 = !{!5509, !5510, !5511, !5512, !5513, !5514, !5515}
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5507, file: !5398, line: 31, baseType: !23, size: 32)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5507, file: !5398, line: 32, baseType: !1083, size: 64, offset: 64)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5507, file: !5398, line: 33, baseType: !40, size: 64, offset: 128)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5507, file: !5398, line: 34, baseType: !398, size: 64, offset: 192)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5507, file: !5398, line: 34, baseType: !398, size: 64, offset: 256)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5507, file: !5398, line: 35, baseType: !40, size: 64, offset: 320)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5507, file: !5398, line: 35, baseType: !40, size: 64, offset: 384)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5397, file: !5398, line: 219, baseType: !5517, size: 64, offset: 7872)
!5517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5518, size: 64)
!5518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5519, line: 41, size: 3456, elements: !5520)
!5519 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5520 = !{!5521, !5522, !5523, !5524, !5525, !5526, !5527, !5528, !5529, !5530, !5531, !5532, !5533, !5534, !5535, !5537, !5538, !5539, !5540, !5541, !5542, !5543, !5544, !5545, !5546, !5547, !5548, !5549, !5550, !5551, !5552, !5553, !5554, !5555, !5556, !5557, !5558, !5559, !5560, !5561, !5562, !5563, !5564, !5565, !5566, !5567, !5568, !5569, !5570, !5571, !5572, !5573, !5574, !5575, !5576, !5577}
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5518, file: !5519, line: 47, baseType: !95, size: 16)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5518, file: !5519, line: 48, baseType: !341, size: 32, offset: 32)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5518, file: !5519, line: 54, baseType: !86, size: 8, offset: 64)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5518, file: !5519, line: 55, baseType: !86, size: 8, offset: 72)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5518, file: !5519, line: 73, baseType: !399, size: 64, align: 64, offset: 128)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5518, file: !5519, line: 74, baseType: !399, size: 64, offset: 192)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5518, file: !5519, line: 81, baseType: !399, size: 64, offset: 256)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5518, file: !5519, line: 82, baseType: !399, size: 64, offset: 320)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5518, file: !5519, line: 85, baseType: !399, size: 64, offset: 384)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5518, file: !5519, line: 86, baseType: !399, size: 64, offset: 448)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5518, file: !5519, line: 94, baseType: !399, size: 64, offset: 512)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5518, file: !5519, line: 102, baseType: !399, size: 64, offset: 576)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5518, file: !5519, line: 107, baseType: !4636, size: 256, offset: 640)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5518, file: !5519, line: 108, baseType: !86, size: 8, align: 64, offset: 896)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5518, file: !5519, line: 110, baseType: !5536, size: 24, offset: 904)
!5536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 24, elements: !739)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5518, file: !5519, line: 111, baseType: !341, size: 32, align: 64, offset: 960)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5518, file: !5519, line: 113, baseType: !341, size: 32, offset: 992)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5518, file: !5519, line: 114, baseType: !341, size: 32, offset: 1024)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5518, file: !5519, line: 115, baseType: !341, size: 32, offset: 1056)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5518, file: !5519, line: 117, baseType: !341, size: 32, offset: 1088)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5518, file: !5519, line: 118, baseType: !399, size: 64, align: 64, offset: 1152)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5518, file: !5519, line: 120, baseType: !399, size: 64, offset: 1216)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5518, file: !5519, line: 121, baseType: !399, size: 64, offset: 1280)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5518, file: !5519, line: 122, baseType: !399, size: 64, offset: 1344)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5518, file: !5519, line: 123, baseType: !399, size: 64, offset: 1408)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5518, file: !5519, line: 133, baseType: !399, size: 64, offset: 1472)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5518, file: !5519, line: 137, baseType: !399, size: 64, offset: 1536)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5518, file: !5519, line: 142, baseType: !399, size: 64, offset: 1600)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5518, file: !5519, line: 143, baseType: !399, size: 64, offset: 1664)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5518, file: !5519, line: 146, baseType: !399, size: 64, offset: 1728)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5518, file: !5519, line: 147, baseType: !399, size: 64, offset: 1792)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5518, file: !5519, line: 148, baseType: !399, size: 64, offset: 1856)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5518, file: !5519, line: 149, baseType: !399, size: 64, offset: 1920)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5518, file: !5519, line: 154, baseType: !399, size: 64, offset: 1984)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5518, file: !5519, line: 155, baseType: !399, size: 64, offset: 2048)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5518, file: !5519, line: 156, baseType: !399, size: 64, offset: 2112)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5518, file: !5519, line: 158, baseType: !399, size: 64, offset: 2176)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5518, file: !5519, line: 159, baseType: !399, size: 64, offset: 2240)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5518, file: !5519, line: 162, baseType: !399, size: 64, offset: 2304)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5518, file: !5519, line: 163, baseType: !399, size: 64, offset: 2368)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5518, file: !5519, line: 164, baseType: !399, size: 64, offset: 2432)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5518, file: !5519, line: 167, baseType: !399, size: 64, offset: 2496)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5518, file: !5519, line: 168, baseType: !399, size: 64, offset: 2560)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5518, file: !5519, line: 171, baseType: !399, size: 64, offset: 2624)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5518, file: !5519, line: 172, baseType: !399, size: 64, offset: 2688)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5518, file: !5519, line: 175, baseType: !399, size: 64, offset: 2752)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5518, file: !5519, line: 178, baseType: !399, size: 64, offset: 2816)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5518, file: !5519, line: 179, baseType: !399, size: 64, offset: 2880)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5518, file: !5519, line: 182, baseType: !341, size: 32, offset: 2944)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5518, file: !5519, line: 186, baseType: !399, size: 64, align: 64, offset: 3008)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5518, file: !5519, line: 194, baseType: !399, size: 64, offset: 3072)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5518, file: !5519, line: 195, baseType: !399, size: 64, offset: 3136)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5518, file: !5519, line: 199, baseType: !399, size: 64, offset: 3200)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5518, file: !5519, line: 200, baseType: !399, size: 64, offset: 3264)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5518, file: !5519, line: 203, baseType: !399, size: 64, offset: 3328)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5518, file: !5519, line: 204, baseType: !399, size: 64, offset: 3392)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !5397, file: !5398, line: 222, baseType: !7, size: 32, offset: 7936)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !5397, file: !5398, line: 223, baseType: !5580, size: 64, offset: 8000)
!5580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5581, size: 64)
!5581 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !5398, line: 223, flags: DIFlagFwdDecl)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !5397, file: !5398, line: 230, baseType: !859, size: 8, offset: 8064)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !5397, file: !5398, line: 231, baseType: !907, size: 16, offset: 8080)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !5397, file: !5398, line: 232, baseType: !907, size: 16, offset: 8096)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !5397, file: !5398, line: 234, baseType: !647, size: 64, offset: 8128)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !5397, file: !5398, line: 237, baseType: !703, size: 256, offset: 8192)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !5397, file: !5398, line: 243, baseType: !879, size: 320, offset: 8448)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !330, file: !331, line: 1111, baseType: !5589, size: 64, offset: 15424)
!5589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5590, size: 64)
!5590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !5398, line: 20, size: 16640, elements: !5591)
!5591 = !{!5592, !5593, !5594, !5595}
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5590, file: !5398, line: 21, baseType: !60, size: 32)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5590, file: !5398, line: 22, baseType: !346, size: 32, offset: 32)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5590, file: !5398, line: 23, baseType: !55, size: 192, offset: 64)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5590, file: !5398, line: 24, baseType: !5596, size: 16384, offset: 256)
!5596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5597, size: 16384, elements: !1519)
!5597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !5409, line: 51, size: 256, elements: !5598)
!5598 = !{!5599}
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5597, file: !5409, line: 52, baseType: !5600, size: 256)
!5600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !5409, line: 37, size: 256, elements: !5601)
!5601 = !{!5602, !5609, !5610, !5614}
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5600, file: !5409, line: 39, baseType: !5603, size: 64)
!5603 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5604, line: 83, baseType: !5605)
!5604 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5606, size: 64)
!5606 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5604, line: 82, baseType: !5607)
!5607 = !DISubroutineType(types: !5608)
!5608 = !{null, !23}
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5600, file: !5409, line: 40, baseType: !40, size: 64, offset: 64)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5600, file: !5409, line: 46, baseType: !5611, size: 64, offset: 128)
!5611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5604, line: 86, baseType: !5612)
!5612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5613, size: 64)
!5613 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5604, line: 85, baseType: !3175)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5600, file: !5409, line: 48, baseType: !5413, size: 64, offset: 192)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !330, file: !331, line: 1112, baseType: !5413, size: 64, offset: 15488)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !330, file: !331, line: 1113, baseType: !5413, size: 64, offset: 15552)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !330, file: !331, line: 1115, baseType: !5413, size: 64, offset: 15616)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !330, file: !331, line: 1116, baseType: !5408, size: 192, offset: 15680)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !330, file: !331, line: 1117, baseType: !40, size: 64, offset: 15872)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !330, file: !331, line: 1118, baseType: !36, size: 64, offset: 15936)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !330, file: !331, line: 1119, baseType: !7, size: 32, offset: 16000)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !330, file: !331, line: 1121, baseType: !686, size: 64, offset: 16064)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !330, file: !331, line: 1125, baseType: !5624, size: 64, offset: 16128)
!5624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5625, size: 64)
!5625 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !331, line: 43, flags: DIFlagFwdDecl)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !330, file: !331, line: 1127, baseType: !832, size: 32, offset: 16192)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !330, file: !331, line: 1128, baseType: !7, size: 32, offset: 16224)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !330, file: !331, line: 1130, baseType: !5629, size: 128, offset: 16256)
!5629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5630, line: 37, size: 128, elements: !5631)
!5630 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5631 = !{!5632, !5633, !5634}
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5629, file: !5630, line: 38, baseType: !23, size: 32)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5629, file: !5630, line: 39, baseType: !50, size: 32, offset: 32)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5629, file: !5630, line: 40, baseType: !5635, size: 64, offset: 64)
!5635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5636, size: 64)
!5636 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5630, line: 24, flags: DIFlagFwdDecl)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !330, file: !331, line: 1131, baseType: !5638, size: 256, offset: 16384)
!5638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5639, line: 12, size: 256, elements: !5640)
!5639 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5640 = !{!5641, !5642, !5643, !5644}
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5638, file: !5639, line: 13, baseType: !947, size: 64)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5638, file: !5639, line: 14, baseType: !40, size: 64, offset: 64)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5638, file: !5639, line: 15, baseType: !40, size: 64, offset: 128)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5638, file: !5639, line: 16, baseType: !859, size: 8, offset: 192)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !330, file: !331, line: 1134, baseType: !398, size: 64, offset: 16640)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !330, file: !331, line: 1135, baseType: !398, size: 64, offset: 16704)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !330, file: !331, line: 1138, baseType: !60, size: 32, offset: 16768)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !330, file: !331, line: 1141, baseType: !490, size: 32, offset: 16800)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !330, file: !331, line: 1143, baseType: !5650, size: 64, offset: 16832)
!5650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !331, line: 735, size: 64, elements: !5651)
!5651 = !{!5652}
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5650, file: !331, line: 736, baseType: !5653, size: 64)
!5653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5650, size: 64)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !330, file: !331, line: 1147, baseType: !530, size: 128, offset: 16896)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !330, file: !331, line: 1149, baseType: !329, size: 64, offset: 17024)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !330, file: !331, line: 1151, baseType: !5657, size: 64, offset: 17088)
!5657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5658, size: 64)
!5658 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !331, line: 1151, flags: DIFlagFwdDecl)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !330, file: !331, line: 1188, baseType: !21, size: 64, offset: 17152)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !330, file: !331, line: 1191, baseType: !5661, size: 64, offset: 17216)
!5661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5662, size: 64)
!5662 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !331, line: 44, flags: DIFlagFwdDecl)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !330, file: !331, line: 1194, baseType: !5664, size: 64, offset: 17280)
!5664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5665, size: 64)
!5665 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !331, line: 45, flags: DIFlagFwdDecl)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !330, file: !331, line: 1197, baseType: !5667, size: 64, offset: 17344)
!5667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5668, size: 64)
!5668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2100, line: 155, size: 64, elements: !5669)
!5669 = !{!5670}
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !5668, file: !2100, line: 157, baseType: !40, size: 64)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !330, file: !331, line: 1199, baseType: !5672, size: 64, offset: 17408)
!5672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5673, size: 64)
!5673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2151, line: 99, size: 128, elements: !5674)
!5674 = !{!5675, !5676, !5677}
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5673, file: !2151, line: 100, baseType: !696, size: 64)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5673, file: !2151, line: 101, baseType: !50, size: 32, offset: 64)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5673, file: !2151, line: 103, baseType: !27, size: 16, offset: 96)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !330, file: !331, line: 1202, baseType: !5679, size: 64, offset: 17472)
!5679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5680, size: 64)
!5680 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !331, line: 48, flags: DIFlagFwdDecl)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !330, file: !331, line: 1205, baseType: !40, size: 64, offset: 17536)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !330, file: !331, line: 1206, baseType: !5683, size: 64, offset: 17600)
!5683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5684, size: 64)
!5684 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !5409, line: 14, baseType: !5685)
!5685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !5409, line: 12, size: 384, elements: !5686)
!5686 = !{!5687}
!5687 = !DIDerivedType(tag: DW_TAG_member, scope: !5685, file: !5409, line: 13, baseType: !5688, size: 384)
!5688 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5685, file: !5409, line: 13, size: 384, elements: !5689)
!5689 = !{!5690, !5691, !5692, !5693}
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5688, file: !5409, line: 13, baseType: !23, size: 32)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5688, file: !5409, line: 13, baseType: !23, size: 32, offset: 32)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5688, file: !5409, line: 13, baseType: !23, size: 32, offset: 64)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5688, file: !5409, line: 13, baseType: !5694, size: 256, offset: 128)
!5694 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5695, line: 37, size: 256, elements: !5696)
!5695 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5696 = !{!5697, !5702, !5715, !5721, !5730, !5757, !5762}
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5694, file: !5695, line: 42, baseType: !5698, size: 64)
!5698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5694, file: !5695, line: 39, size: 64, elements: !5699)
!5699 = !{!5700, !5701}
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5698, file: !5695, line: 40, baseType: !5253, size: 32)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5698, file: !5695, line: 41, baseType: !838, size: 32, offset: 32)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5694, file: !5695, line: 50, baseType: !5703, size: 192)
!5703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5694, file: !5695, line: 45, size: 192, elements: !5704)
!5704 = !{!5705, !5707, !5708, !5714}
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5703, file: !5695, line: 46, baseType: !5706, size: 32)
!5706 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !38, line: 95, baseType: !23)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5703, file: !5695, line: 47, baseType: !23, size: 32, offset: 32)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5703, file: !5695, line: 48, baseType: !5709, size: 64, offset: 64)
!5709 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5695, line: 11, baseType: !5710)
!5710 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5695, line: 8, size: 64, elements: !5711)
!5711 = !{!5712, !5713}
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5710, file: !5695, line: 9, baseType: !23, size: 32)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5710, file: !5695, line: 10, baseType: !21, size: 64)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5703, file: !5695, line: 49, baseType: !23, size: 32, offset: 128)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5694, file: !5695, line: 57, baseType: !5716, size: 128)
!5716 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5694, file: !5695, line: 53, size: 128, elements: !5717)
!5717 = !{!5718, !5719, !5720}
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5716, file: !5695, line: 54, baseType: !5253, size: 32)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5716, file: !5695, line: 55, baseType: !838, size: 32, offset: 32)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5716, file: !5695, line: 56, baseType: !5709, size: 64, offset: 64)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5694, file: !5695, line: 66, baseType: !5722, size: 256)
!5722 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5694, file: !5695, line: 60, size: 256, elements: !5723)
!5723 = !{!5724, !5725, !5726, !5727, !5729}
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5722, file: !5695, line: 61, baseType: !5253, size: 32)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5722, file: !5695, line: 62, baseType: !838, size: 32, offset: 32)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5722, file: !5695, line: 63, baseType: !23, size: 32, offset: 64)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5722, file: !5695, line: 64, baseType: !5728, size: 64, offset: 128)
!5728 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !38, line: 94, baseType: !1382)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5722, file: !5695, line: 65, baseType: !5728, size: 64, offset: 192)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5694, file: !5695, line: 105, baseType: !5731, size: 256)
!5731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5694, file: !5695, line: 69, size: 256, elements: !5732)
!5732 = !{!5733, !5734}
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5731, file: !5695, line: 70, baseType: !21, size: 64)
!5734 = !DIDerivedType(tag: DW_TAG_member, scope: !5731, file: !5695, line: 79, baseType: !5735, size: 192, offset: 64)
!5735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5731, file: !5695, line: 79, size: 192, elements: !5736)
!5736 = !{!5737, !5738, !5739, !5746, !5751}
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5735, file: !5695, line: 81, baseType: !23, size: 32)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5735, file: !5695, line: 86, baseType: !907, size: 16)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5735, file: !5695, line: 92, baseType: !5740, size: 192)
!5740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5735, file: !5695, line: 88, size: 192, elements: !5741)
!5741 = !{!5742, !5744, !5745}
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5740, file: !5695, line: 89, baseType: !5743, size: 64)
!5743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 64, elements: !509)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5740, file: !5695, line: 90, baseType: !21, size: 64, offset: 64)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5740, file: !5695, line: 91, baseType: !21, size: 64, offset: 128)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5735, file: !5695, line: 97, baseType: !5747, size: 96)
!5747 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5735, file: !5695, line: 94, size: 96, elements: !5748)
!5748 = !{!5749, !5750}
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5747, file: !5695, line: 95, baseType: !5743, size: 64)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5747, file: !5695, line: 96, baseType: !341, size: 32, offset: 64)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5735, file: !5695, line: 103, baseType: !5752, size: 128)
!5752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5735, file: !5695, line: 99, size: 128, elements: !5753)
!5753 = !{!5754, !5755, !5756}
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5752, file: !5695, line: 100, baseType: !40, size: 64)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5752, file: !5695, line: 101, baseType: !341, size: 32, offset: 64)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5752, file: !5695, line: 102, baseType: !341, size: 32, offset: 96)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5694, file: !5695, line: 111, baseType: !5758, size: 128)
!5758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5694, file: !5695, line: 108, size: 128, elements: !5759)
!5759 = !{!5760, !5761}
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5758, file: !5695, line: 109, baseType: !1083, size: 64)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5758, file: !5695, line: 110, baseType: !23, size: 32, offset: 64)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5694, file: !5695, line: 118, baseType: !5763, size: 128)
!5763 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5694, file: !5695, line: 114, size: 128, elements: !5764)
!5764 = !{!5765, !5766, !5767}
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5763, file: !5695, line: 115, baseType: !21, size: 64)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5763, file: !5695, line: 116, baseType: !23, size: 32, offset: 64)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5763, file: !5695, line: 117, baseType: !7, size: 32, offset: 96)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !330, file: !331, line: 1208, baseType: !5493, size: 448, offset: 17664)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !330, file: !331, line: 1215, baseType: !398, size: 64, offset: 18112)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !330, file: !331, line: 1217, baseType: !398, size: 64, offset: 18176)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !330, file: !331, line: 1219, baseType: !398, size: 64, offset: 18240)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !330, file: !331, line: 1223, baseType: !5773, size: 64, offset: 18304)
!5773 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5774, line: 99, baseType: !5775)
!5774 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5775 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5774, line: 99, size: 64, elements: !5776)
!5776 = !{!5777}
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5775, file: !5774, line: 99, baseType: !598, size: 64)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !330, file: !331, line: 1225, baseType: !1199, size: 32, offset: 18368)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !330, file: !331, line: 1226, baseType: !23, size: 32, offset: 18400)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !330, file: !331, line: 1227, baseType: !23, size: 32, offset: 18432)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !330, file: !331, line: 1231, baseType: !4075, size: 64, offset: 18496)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !330, file: !331, line: 1233, baseType: !98, size: 128, offset: 18560)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !330, file: !331, line: 1240, baseType: !5784, size: 64, offset: 18688)
!5784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5785, size: 64)
!5785 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !331, line: 62, flags: DIFlagFwdDecl)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !330, file: !331, line: 1242, baseType: !5787, size: 64, offset: 18752)
!5787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5788, size: 64)
!5788 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !331, line: 1242, flags: DIFlagFwdDecl)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !330, file: !331, line: 1244, baseType: !98, size: 128, offset: 18816)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !330, file: !331, line: 1245, baseType: !5791, size: 64, offset: 18944)
!5791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5792, size: 64)
!5792 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !331, line: 51, flags: DIFlagFwdDecl)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !330, file: !331, line: 1246, baseType: !703, size: 256, offset: 19008)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !330, file: !331, line: 1247, baseType: !7, size: 32, offset: 19264)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !330, file: !331, line: 1250, baseType: !3325, size: 64, offset: 19328)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !330, file: !331, line: 1251, baseType: !703, size: 256, offset: 19392)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !330, file: !331, line: 1252, baseType: !98, size: 128, offset: 19648)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !330, file: !331, line: 1259, baseType: !1803, size: 64, offset: 19776)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !330, file: !331, line: 1260, baseType: !907, size: 16, offset: 19840)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !330, file: !331, line: 1261, baseType: !907, size: 16, offset: 19856)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !330, file: !331, line: 1314, baseType: !5802, size: 64, offset: 19904)
!5802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5803, size: 64)
!5803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5804, line: 62, size: 256, align: 256, elements: !5805)
!5804 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5805 = !{!5806, !5807, !5808, !5809, !5810, !5811, !5812}
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5803, file: !5804, line: 75, baseType: !341, size: 32)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5803, file: !5804, line: 90, baseType: !341, size: 32, offset: 32)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5803, file: !5804, line: 112, baseType: !399, size: 64, offset: 64)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5803, file: !5804, line: 132, baseType: !341, size: 32, offset: 128)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5803, file: !5804, line: 140, baseType: !341, size: 32, offset: 160)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5803, file: !5804, line: 149, baseType: !341, size: 32, offset: 192)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5803, file: !5804, line: 154, baseType: !5813, offset: 224)
!5813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !1090)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !330, file: !331, line: 1315, baseType: !340, size: 32, offset: 19968)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !330, file: !331, line: 1316, baseType: !340, size: 32, offset: 20000)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !330, file: !331, line: 1321, baseType: !40, size: 64, offset: 20032)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !330, file: !331, line: 1325, baseType: !23, size: 32, offset: 20096)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !330, file: !331, line: 1326, baseType: !23, size: 32, offset: 20128)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !330, file: !331, line: 1327, baseType: !23, size: 32, offset: 20160)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !330, file: !331, line: 1328, baseType: !23, size: 32, offset: 20192)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !330, file: !331, line: 1329, baseType: !683, size: 128, align: 64, offset: 20224)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !330, file: !331, line: 1332, baseType: !5823, size: 128, offset: 20352)
!5823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5824, line: 51, size: 128, elements: !5825)
!5824 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5825 = !{!5826, !5831, !5832}
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5823, file: !5824, line: 60, baseType: !5827, size: 64)
!5827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5828, line: 7, size: 64, elements: !5829)
!5828 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5829 = !{!5830}
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5827, file: !5828, line: 12, baseType: !595, size: 64)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5823, file: !5824, line: 63, baseType: !859, size: 8, offset: 64)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5823, file: !5824, line: 70, baseType: !859, size: 8, offset: 72)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !330, file: !331, line: 1335, baseType: !4883, size: 64, offset: 20480)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !330, file: !331, line: 1337, baseType: !5835, size: 128, offset: 20544)
!5835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5824, line: 39, size: 128, elements: !5836)
!5836 = !{!5837, !5838, !5839}
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5835, file: !5824, line: 40, baseType: !1600, size: 64)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5835, file: !5824, line: 42, baseType: !341, size: 32, offset: 64)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5835, file: !5824, line: 43, baseType: !341, size: 32, offset: 96)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !330, file: !331, line: 1340, baseType: !5841, size: 64, offset: 20672)
!5841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5842, size: 64)
!5842 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !331, line: 69, flags: DIFlagFwdDecl)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !330, file: !331, line: 1351, baseType: !23, size: 32, offset: 20736)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !330, file: !331, line: 1352, baseType: !23, size: 32, offset: 20768)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !330, file: !331, line: 1354, baseType: !40, size: 64, offset: 20800)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !330, file: !331, line: 1364, baseType: !398, size: 64, offset: 20864)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !330, file: !331, line: 1365, baseType: !398, size: 64, offset: 20928)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !330, file: !331, line: 1412, baseType: !40, size: 64, offset: 20992)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !330, file: !331, line: 1453, baseType: !2146, size: 64, offset: 21056)
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !330, file: !331, line: 1457, baseType: !5851, size: 64, offset: 21120)
!5851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5852, size: 64)
!5852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !305, line: 61, size: 576, elements: !5853)
!5853 = !{!5854, !5855, !5874, !5877, !5878, !5911, !5921}
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5852, file: !305, line: 62, baseType: !304, size: 32)
!5855 = !DIDerivedType(tag: DW_TAG_member, scope: !5852, file: !305, line: 64, baseType: !5856, size: 192, offset: 64)
!5856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5852, file: !305, line: 64, size: 192, elements: !5857)
!5857 = !{!5858, !5869}
!5858 = !DIDerivedType(tag: DW_TAG_member, scope: !5856, file: !305, line: 65, baseType: !5859, size: 192)
!5859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5856, file: !305, line: 65, size: 192, elements: !5860)
!5860 = !{!5861, !5868}
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5859, file: !305, line: 66, baseType: !5862, size: 128)
!5862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5863, line: 50, size: 128, elements: !5864)
!5863 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5864 = !{!5865, !5866, !5867}
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5862, file: !5863, line: 52, baseType: !40, size: 64)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5862, file: !5863, line: 54, baseType: !7, size: 32, offset: 64)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5862, file: !5863, line: 55, baseType: !7, size: 32, offset: 96)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5859, file: !305, line: 67, baseType: !40, size: 64, offset: 128)
!5869 = !DIDerivedType(tag: DW_TAG_member, scope: !5856, file: !305, line: 70, baseType: !5870, size: 192)
!5870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5856, file: !305, line: 70, size: 192, elements: !5871)
!5871 = !{!5872, !5873}
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5870, file: !305, line: 71, baseType: !683, size: 128, align: 64)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5870, file: !305, line: 72, baseType: !40, size: 64, offset: 128)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5852, file: !305, line: 76, baseType: !5875, size: 64, offset: 256)
!5875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5876, size: 64)
!5876 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !305, line: 76, flags: DIFlagFwdDecl)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5852, file: !305, line: 77, baseType: !40, size: 64, offset: 320)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5852, file: !305, line: 79, baseType: !5879, size: 64, offset: 384)
!5879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5880, size: 64)
!5880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5863, line: 25, size: 256, elements: !5881)
!5881 = !{!5882, !5888, !5892}
!5882 = !DIDerivedType(tag: DW_TAG_member, scope: !5880, file: !5863, line: 26, baseType: !5883, size: 128)
!5883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5880, file: !5863, line: 26, size: 128, elements: !5884)
!5884 = !{!5885, !5887}
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5883, file: !5863, line: 27, baseType: !5886, size: 128)
!5886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 128, elements: !4646)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5883, file: !5863, line: 28, baseType: !5886, size: 128)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5880, file: !5863, line: 31, baseType: !5889, size: 64, offset: 128)
!5889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5890, size: 64)
!5890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5891)
!5891 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5863, line: 23, flags: DIFlagFwdDecl)
!5892 = !DIDerivedType(tag: DW_TAG_member, scope: !5880, file: !5863, line: 33, baseType: !5893, size: 64, offset: 192)
!5893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5880, file: !5863, line: 33, size: 64, elements: !5894)
!5894 = !{!5895, !5901, !5906}
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5893, file: !5863, line: 38, baseType: !5896, size: 64)
!5896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5893, file: !5863, line: 34, size: 64, elements: !5897)
!5897 = !{!5898, !5899, !5900}
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5896, file: !5863, line: 35, baseType: !871, size: 32)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5896, file: !5863, line: 36, baseType: !84, size: 8, offset: 32)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5896, file: !5863, line: 37, baseType: !84, size: 8, offset: 40)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5893, file: !5863, line: 42, baseType: !5902, size: 16)
!5902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5893, file: !5863, line: 39, size: 16, elements: !5903)
!5903 = !{!5904, !5905}
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5902, file: !5863, line: 40, baseType: !84, size: 8)
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5902, file: !5863, line: 41, baseType: !84, size: 8, offset: 8)
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5893, file: !5863, line: 46, baseType: !5907, size: 16)
!5907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5893, file: !5863, line: 43, size: 16, elements: !5908)
!5908 = !{!5909, !5910}
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5907, file: !5863, line: 44, baseType: !84, size: 8)
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5907, file: !5863, line: 45, baseType: !84, size: 8, offset: 8)
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5852, file: !305, line: 81, baseType: !5912, size: 64, offset: 448)
!5912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5913, size: 64)
!5913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !305, line: 85, size: 384, elements: !5914)
!5914 = !{!5915, !5916, !5917, !5918, !5919, !5920}
!5915 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5913, file: !305, line: 86, baseType: !5875, size: 64)
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5913, file: !305, line: 87, baseType: !40, size: 64, offset: 64)
!5917 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5913, file: !305, line: 88, baseType: !40, size: 64, offset: 128)
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5913, file: !305, line: 89, baseType: !40, size: 64, offset: 192)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5913, file: !305, line: 90, baseType: !859, size: 8, offset: 256)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5913, file: !305, line: 92, baseType: !5912, size: 64, offset: 320)
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5852, file: !305, line: 82, baseType: !7, size: 32, offset: 512)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !330, file: !331, line: 1463, baseType: !5923, offset: 21184)
!5923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !331, line: 739, elements: !668)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !330, file: !331, line: 1470, baseType: !683, size: 128, align: 64, offset: 21184)
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !330, file: !331, line: 1471, baseType: !346, size: 32, offset: 21312)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !330, file: !331, line: 1472, baseType: !23, size: 32, offset: 21344)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !330, file: !331, line: 1474, baseType: !329, size: 64, offset: 21376)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !330, file: !331, line: 1475, baseType: !2355, size: 320, offset: 21440)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !330, file: !331, line: 1478, baseType: !5930, size: 64, offset: 21760)
!5930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5931, size: 64)
!5931 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !331, line: 1478, flags: DIFlagFwdDecl)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !330, file: !331, line: 1482, baseType: !346, size: 32, offset: 21824)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !330, file: !331, line: 1489, baseType: !21, size: 64, offset: 21888)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !330, file: !331, line: 1504, baseType: !21, size: 64, offset: 21952)
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !330, file: !331, line: 1505, baseType: !399, size: 64, offset: 22016)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !330, file: !331, line: 1506, baseType: !398, size: 64, offset: 22080)
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !330, file: !331, line: 1507, baseType: !399, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !330, file: !331, line: 1508, baseType: !399, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !330, file: !331, line: 1509, baseType: !399, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !330, file: !331, line: 1510, baseType: !683, size: 128, align: 64, offset: 22208)
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !330, file: !331, line: 1511, baseType: !23, size: 32, offset: 22336)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !330, file: !331, line: 1515, baseType: !5943, size: 64, offset: 22400)
!5943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !360, line: 56, size: 64, elements: !5944)
!5944 = !{!5945}
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5943, file: !360, line: 57, baseType: !363, size: 64)
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !330, file: !331, line: 1518, baseType: !5943, size: 64, offset: 22464)
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !330, file: !331, line: 1528, baseType: !683, size: 128, align: 64, offset: 22528)
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !330, file: !331, line: 1552, baseType: !5949, size: 35328, offset: 23040)
!5949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5950, line: 430, size: 35328, elements: !5951)
!5950 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5951 = !{!5952, !5970, !5971, !5972, !5973, !5974, !5975, !5976, !5977, !5979, !5980, !5981, !5982, !5983, !5984, !5987, !5988, !5989, !5990}
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5949, file: !5950, line: 432, baseType: !5953, size: 192)
!5953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5954, size: 192, elements: !739)
!5954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5955, line: 16, size: 64, elements: !5956)
!5955 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5956 = !{!5957, !5958, !5959, !5960, !5961, !5962, !5963, !5964, !5965, !5966, !5967, !5968, !5969}
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5954, file: !5955, line: 17, baseType: !94, size: 16)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5954, file: !5955, line: 18, baseType: !94, size: 16, offset: 16)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5954, file: !5955, line: 19, baseType: !94, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5954, file: !5955, line: 19, baseType: !94, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5961 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5954, file: !5955, line: 19, baseType: !94, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5954, file: !5955, line: 19, baseType: !94, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5954, file: !5955, line: 19, baseType: !94, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5954, file: !5955, line: 20, baseType: !94, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5954, file: !5955, line: 20, baseType: !94, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5966 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5954, file: !5955, line: 20, baseType: !94, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5954, file: !5955, line: 20, baseType: !94, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5954, file: !5955, line: 20, baseType: !94, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5954, file: !5955, line: 20, baseType: !94, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5949, file: !5950, line: 436, baseType: !40, size: 64, offset: 192)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5949, file: !5950, line: 440, baseType: !27, size: 16, offset: 256)
!5972 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5949, file: !5950, line: 441, baseType: !27, size: 16, offset: 272)
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5949, file: !5950, line: 442, baseType: !27, size: 16, offset: 288)
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5949, file: !5950, line: 443, baseType: !27, size: 16, offset: 304)
!5975 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5949, file: !5950, line: 447, baseType: !40, size: 64, offset: 320)
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5949, file: !5950, line: 448, baseType: !40, size: 64, offset: 384)
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5949, file: !5950, line: 459, baseType: !5978, size: 256, offset: 448)
!5978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3286, size: 256, elements: !760)
!5979 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5949, file: !5950, line: 461, baseType: !40, size: 64, offset: 704)
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5949, file: !5950, line: 463, baseType: !40, size: 64, offset: 768)
!5981 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5949, file: !5950, line: 465, baseType: !40, size: 64, offset: 832)
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5949, file: !5950, line: 466, baseType: !40, size: 64, offset: 896)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5949, file: !5950, line: 467, baseType: !40, size: 64, offset: 960)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5949, file: !5950, line: 473, baseType: !5985, size: 64, offset: 1024)
!5985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5986, size: 64)
!5986 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5950, line: 10, flags: DIFlagFwdDecl)
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5949, file: !5950, line: 480, baseType: !40, size: 64, offset: 1088)
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5949, file: !5950, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5949, file: !5950, line: 491, baseType: !340, size: 32, offset: 1184)
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5949, file: !5950, line: 501, baseType: !5991, size: 33792, offset: 1536)
!5991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5992, line: 448, size: 33792, elements: !5993)
!5992 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5993 = !{!5994, !5995, !5996, !6104, !6105, !6111, !6112}
!5994 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5991, file: !5992, line: 461, baseType: !7, size: 32)
!5995 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5991, file: !5992, line: 468, baseType: !40, size: 64, offset: 64)
!5996 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5991, file: !5992, line: 476, baseType: !5997, size: 64, offset: 128)
!5997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5998, size: 64)
!5998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5992, line: 356, size: 33280, align: 512, elements: !5999)
!5999 = !{!6000, !6001, !6002, !6003, !6004, !6005, !6006, !6007, !6008, !6009}
!6000 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5998, file: !5992, line: 358, baseType: !7, size: 32)
!6001 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5998, file: !5992, line: 361, baseType: !7, size: 32, offset: 32)
!6002 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5998, file: !5992, line: 364, baseType: !398, size: 64, offset: 64)
!6003 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5998, file: !5992, line: 367, baseType: !398, size: 64, offset: 128)
!6004 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5998, file: !5992, line: 370, baseType: !398, size: 64, offset: 192)
!6005 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5998, file: !5992, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!6006 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5998, file: !5992, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!6007 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5998, file: !5992, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5998, file: !5992, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!6009 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5998, file: !5992, line: 397, baseType: !6010, size: 32768, offset: 512)
!6010 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5992, line: 348, size: 32768, elements: !6011)
!6011 = !{!6012, !6027, !6064, !6089, !6102}
!6012 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !6010, file: !5992, line: 349, baseType: !6013, size: 896)
!6013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5992, line: 12, size: 896, elements: !6014)
!6014 = !{!6015, !6016, !6017, !6018, !6019, !6020, !6021, !6022, !6026}
!6015 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !6013, file: !5992, line: 13, baseType: !340, size: 32)
!6016 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !6013, file: !5992, line: 14, baseType: !340, size: 32, offset: 32)
!6017 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !6013, file: !5992, line: 15, baseType: !340, size: 32, offset: 64)
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !6013, file: !5992, line: 16, baseType: !340, size: 32, offset: 96)
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !6013, file: !5992, line: 17, baseType: !340, size: 32, offset: 128)
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !6013, file: !5992, line: 18, baseType: !340, size: 32, offset: 160)
!6021 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !6013, file: !5992, line: 19, baseType: !340, size: 32, offset: 192)
!6022 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !6013, file: !5992, line: 22, baseType: !6023, size: 640, offset: 224)
!6023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 640, elements: !6024)
!6024 = !{!6025}
!6025 = !DISubrange(count: 20)
!6026 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !6013, file: !5992, line: 25, baseType: !340, size: 32, offset: 864)
!6027 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !6010, file: !5992, line: 350, baseType: !6028, size: 4096, align: 128)
!6028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5992, line: 34, size: 4096, align: 128, elements: !6029)
!6029 = !{!6030, !6031, !6032, !6033, !6034, !6049, !6050, !6051, !6053, !6055, !6059}
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !6028, file: !5992, line: 35, baseType: !94, size: 16)
!6031 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !6028, file: !5992, line: 36, baseType: !94, size: 16, offset: 16)
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !6028, file: !5992, line: 37, baseType: !94, size: 16, offset: 32)
!6033 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !6028, file: !5992, line: 38, baseType: !94, size: 16, offset: 48)
!6034 = !DIDerivedType(tag: DW_TAG_member, scope: !6028, file: !5992, line: 39, baseType: !6035, size: 128, offset: 64)
!6035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6028, file: !5992, line: 39, size: 128, elements: !6036)
!6036 = !{!6037, !6042}
!6037 = !DIDerivedType(tag: DW_TAG_member, scope: !6035, file: !5992, line: 40, baseType: !6038, size: 128)
!6038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6035, file: !5992, line: 40, size: 128, elements: !6039)
!6039 = !{!6040, !6041}
!6040 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !6038, file: !5992, line: 41, baseType: !398, size: 64)
!6041 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !6038, file: !5992, line: 42, baseType: !398, size: 64, offset: 64)
!6042 = !DIDerivedType(tag: DW_TAG_member, scope: !6035, file: !5992, line: 44, baseType: !6043, size: 128)
!6043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6035, file: !5992, line: 44, size: 128, elements: !6044)
!6044 = !{!6045, !6046, !6047, !6048}
!6045 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !6043, file: !5992, line: 45, baseType: !340, size: 32)
!6046 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !6043, file: !5992, line: 46, baseType: !340, size: 32, offset: 32)
!6047 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !6043, file: !5992, line: 47, baseType: !340, size: 32, offset: 64)
!6048 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !6043, file: !5992, line: 48, baseType: !340, size: 32, offset: 96)
!6049 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !6028, file: !5992, line: 51, baseType: !340, size: 32, offset: 192)
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !6028, file: !5992, line: 52, baseType: !340, size: 32, offset: 224)
!6051 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !6028, file: !5992, line: 55, baseType: !6052, size: 1024, offset: 256)
!6052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 1024, elements: !4637)
!6053 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !6028, file: !5992, line: 58, baseType: !6054, size: 2048, offset: 1280)
!6054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 2048, elements: !1519)
!6055 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !6028, file: !5992, line: 60, baseType: !6056, size: 384, offset: 3328)
!6056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 384, elements: !6057)
!6057 = !{!6058}
!6058 = !DISubrange(count: 12)
!6059 = !DIDerivedType(tag: DW_TAG_member, scope: !6028, file: !5992, line: 62, baseType: !6060, size: 384, offset: 3712)
!6060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6028, file: !5992, line: 62, size: 384, elements: !6061)
!6061 = !{!6062, !6063}
!6062 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !6060, file: !5992, line: 63, baseType: !6056, size: 384)
!6063 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !6060, file: !5992, line: 64, baseType: !6056, size: 384)
!6064 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !6010, file: !5992, line: 351, baseType: !6065, size: 1088)
!6065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5992, line: 79, size: 1088, elements: !6066)
!6066 = !{!6067, !6068, !6069, !6070, !6071, !6072, !6073, !6074, !6075, !6076, !6077, !6078, !6079, !6080, !6081, !6088}
!6067 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !6065, file: !5992, line: 80, baseType: !340, size: 32)
!6068 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !6065, file: !5992, line: 81, baseType: !340, size: 32, offset: 32)
!6069 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !6065, file: !5992, line: 82, baseType: !340, size: 32, offset: 64)
!6070 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !6065, file: !5992, line: 83, baseType: !340, size: 32, offset: 96)
!6071 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !6065, file: !5992, line: 84, baseType: !340, size: 32, offset: 128)
!6072 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !6065, file: !5992, line: 85, baseType: !340, size: 32, offset: 160)
!6073 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !6065, file: !5992, line: 86, baseType: !340, size: 32, offset: 192)
!6074 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !6065, file: !5992, line: 88, baseType: !6023, size: 640, offset: 224)
!6075 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !6065, file: !5992, line: 89, baseType: !84, size: 8, offset: 864)
!6076 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !6065, file: !5992, line: 90, baseType: !84, size: 8, offset: 872)
!6077 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !6065, file: !5992, line: 91, baseType: !84, size: 8, offset: 880)
!6078 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !6065, file: !5992, line: 92, baseType: !84, size: 8, offset: 888)
!6079 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !6065, file: !5992, line: 93, baseType: !84, size: 8, offset: 896)
!6080 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !6065, file: !5992, line: 94, baseType: !84, size: 8, offset: 904)
!6081 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !6065, file: !5992, line: 95, baseType: !6082, size: 64, offset: 960)
!6082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6083, size: 64)
!6083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !6084, line: 11, size: 128, elements: !6085)
!6084 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!6085 = !{!6086, !6087}
!6086 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !6083, file: !6084, line: 12, baseType: !1083, size: 64)
!6087 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !6083, file: !6084, line: 13, baseType: !3849, size: 64, offset: 64)
!6088 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !6065, file: !5992, line: 96, baseType: !340, size: 32, offset: 1024)
!6089 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !6010, file: !5992, line: 352, baseType: !6090, size: 4608, align: 512)
!6090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5992, line: 333, size: 4608, align: 512, elements: !6091)
!6091 = !{!6092, !6093, !6100}
!6092 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !6090, file: !5992, line: 334, baseType: !6028, size: 4096, align: 128)
!6093 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !6090, file: !5992, line: 335, baseType: !6094, size: 512, offset: 4096)
!6094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5992, line: 312, size: 512, elements: !6095)
!6095 = !{!6096, !6097, !6098}
!6096 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !6094, file: !5992, line: 313, baseType: !398, size: 64)
!6097 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !6094, file: !5992, line: 314, baseType: !398, size: 64, offset: 64)
!6098 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6094, file: !5992, line: 315, baseType: !6099, size: 384, offset: 128)
!6099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 384, elements: !925)
!6100 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !6090, file: !5992, line: 336, baseType: !6101, offset: 4608)
!6101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, elements: !1090)
!6102 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !6010, file: !5992, line: 353, baseType: !6103, size: 32768)
!6103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 32768, elements: !3230)
!6104 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5991, file: !5992, line: 484, baseType: !5997, size: 64, offset: 192)
!6105 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5991, file: !5992, line: 491, baseType: !6106, size: 128, offset: 256)
!6106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5992, line: 404, size: 128, elements: !6107)
!6107 = !{!6108, !6109, !6110}
!6108 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !6106, file: !5992, line: 424, baseType: !398, size: 64)
!6109 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !6106, file: !5992, line: 432, baseType: !7, size: 32, offset: 64)
!6110 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !6106, file: !5992, line: 440, baseType: !7, size: 32, offset: 96)
!6111 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5991, file: !5992, line: 498, baseType: !6106, size: 128, offset: 384)
!6112 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5991, file: !5992, line: 508, baseType: !5998, size: 33280, align: 512, offset: 512)
!6113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6114, size: 64)
!6114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6115)
!6115 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !23)
!6116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6117, size: 64)
!6117 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !101)
!6118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6119, size: 64)
!6119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "subprocess_info", file: !6, line: 20, size: 768, elements: !6120)
!6120 = !{!6121, !6122, !6123, !6124, !6126, !6127, !6128, !6129, !6133, !6137}
!6121 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !6119, file: !6, line: 21, baseType: !986, size: 256)
!6122 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !6119, file: !6, line: 22, baseType: !1023, size: 64, offset: 256)
!6123 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !6119, file: !6, line: 23, baseType: !17, size: 64, offset: 320)
!6124 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !6119, file: !6, line: 24, baseType: !6125, size: 64, offset: 384)
!6125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !6119, file: !6, line: 25, baseType: !6125, size: 64, offset: 448)
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !6119, file: !6, line: 26, baseType: !23, size: 32, offset: 512)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !6119, file: !6, line: 27, baseType: !23, size: 32, offset: 544)
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !6119, file: !6, line: 28, baseType: !6130, size: 64, offset: 576)
!6130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6131, size: 64)
!6131 = !DISubroutineType(types: !6132)
!6132 = !{!23, !6118, !5068}
!6133 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !6119, file: !6, line: 29, baseType: !6134, size: 64, offset: 640)
!6134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6135, size: 64)
!6135 = !DISubroutineType(types: !6136)
!6136 = !{null, !6118}
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !6119, file: !6, line: 30, baseType: !21, size: 64, offset: 704)
!6138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6139, size: 64)
!6139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!6140 = !{!6141, !6143, !6145, !6147, !6162, !6164, !6166, !6168, !0, !6170, !6172, !6174, !6178, !6180, !6182, !6187, !6189, !6191, !6193, !6198, !6200, !6203, !6206}
!6141 = !DIGlobalVariableExpression(var: !6142, expr: !DIExpression())
!6142 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_usermodehelper_read_trylock395", scope: !2, file: !3, line: 238, type: !21, isLocal: true, isDefinition: true)
!6143 = !DIGlobalVariableExpression(var: !6144, expr: !DIExpression())
!6144 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_usermodehelper_read_lock_wait396", scope: !2, file: !3, line: 265, type: !21, isLocal: true, isDefinition: true)
!6145 = !DIGlobalVariableExpression(var: !6146, expr: !DIExpression())
!6146 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_usermodehelper_read_unlock397", scope: !2, file: !3, line: 271, type: !21, isLocal: true, isDefinition: true)
!6147 = !DIGlobalVariableExpression(var: !6148, expr: !DIExpression())
!6148 = distinct !DIGlobalVariable(name: "__key", scope: !6149, file: !3, line: 367, type: !4211, isLocal: true, isDefinition: true)
!6149 = distinct !DISubprogram(name: "call_usermodehelper_setup", scope: !3, file: !3, line: 356, type: !6150, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6152)
!6150 = !DISubroutineType(types: !6151)
!6151 = !{!6118, !17, !6125, !6125, !327, !6130, !6134, !21}
!6152 = !{!6153, !6154, !6155, !6156, !6157, !6158, !6159, !6160, !6161}
!6153 = !DILocalVariable(name: "path", arg: 1, scope: !6149, file: !3, line: 356, type: !17)
!6154 = !DILocalVariable(name: "argv", arg: 2, scope: !6149, file: !3, line: 356, type: !6125)
!6155 = !DILocalVariable(name: "envp", arg: 3, scope: !6149, file: !3, line: 357, type: !6125)
!6156 = !DILocalVariable(name: "gfp_mask", arg: 4, scope: !6149, file: !3, line: 357, type: !327)
!6157 = !DILocalVariable(name: "init", arg: 5, scope: !6149, file: !3, line: 358, type: !6130)
!6158 = !DILocalVariable(name: "cleanup", arg: 6, scope: !6149, file: !3, line: 359, type: !6134)
!6159 = !DILocalVariable(name: "data", arg: 7, scope: !6149, file: !3, line: 360, type: !21)
!6160 = !DILocalVariable(name: "sub_info", scope: !6149, file: !3, line: 362, type: !6118)
!6161 = !DILabel(scope: !6149, name: "out", file: !3, line: 380)
!6162 = !DIGlobalVariableExpression(var: !6163, expr: !DIExpression())
!6163 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_call_usermodehelper_setup398", scope: !2, file: !3, line: 383, type: !21, isLocal: true, isDefinition: true)
!6164 = !DIGlobalVariableExpression(var: !6165, expr: !DIExpression())
!6165 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_call_usermodehelper_exec399", scope: !2, file: !3, line: 468, type: !21, isLocal: true, isDefinition: true)
!6166 = !DIGlobalVariableExpression(var: !6167, expr: !DIExpression())
!6167 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_call_usermodehelper400", scope: !2, file: !3, line: 495, type: !21, isLocal: true, isDefinition: true)
!6168 = !DIGlobalVariableExpression(var: !6169, expr: !DIExpression())
!6169 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_umh__401_571_init_umh_sysctlsearly402", scope: !2, file: !3, line: 571, type: !21, isLocal: true, isDefinition: true)
!6170 = !DIGlobalVariableExpression(var: !6171, expr: !DIExpression())
!6171 = distinct !DIGlobalVariable(name: "usermodehelper_disabled_waitq", scope: !2, file: !3, line: 202, type: !57, isLocal: true, isDefinition: true)
!6172 = !DIGlobalVariableExpression(var: !6173, expr: !DIExpression())
!6173 = distinct !DIGlobalVariable(name: "usermodehelper_disabled", scope: !2, file: !3, line: 187, type: !5, isLocal: true, isDefinition: true)
!6174 = !DIGlobalVariableExpression(var: !6175, expr: !DIExpression())
!6175 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched29", scope: !6176, file: !6177, line: 112, type: !21, isLocal: true, isDefinition: true)
!6176 = distinct !DISubprogram(name: "might_resched", scope: !6177, file: !6177, line: 110, type: !3175, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6177 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!6178 = !DIGlobalVariableExpression(var: !6179, expr: !DIExpression())
!6179 = distinct !DIGlobalVariable(name: "running_helpers", scope: !2, file: !3, line: 190, type: !50, isLocal: true, isDefinition: true)
!6180 = !DIGlobalVariableExpression(var: !6181, expr: !DIExpression())
!6181 = distinct !DIGlobalVariable(name: "running_helpers_waitq", scope: !2, file: !3, line: 196, type: !57, isLocal: true, isDefinition: true)
!6182 = !DIGlobalVariableExpression(var: !6183, expr: !DIExpression())
!6183 = distinct !DIGlobalVariable(scope: null, file: !317, line: 480, type: !6184, isLocal: true, isDefinition: true)
!6184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 168, elements: !6185)
!6185 = !{!6186}
!6186 = !DISubrange(count: 21)
!6187 = !DIGlobalVariableExpression(var: !6188, expr: !DIExpression())
!6188 = distinct !DIGlobalVariable(name: "umh_sysctl_lock", scope: !2, file: !3, line: 37, type: !60, isLocal: true, isDefinition: true)
!6189 = !DIGlobalVariableExpression(var: !6190, expr: !DIExpression())
!6190 = distinct !DIGlobalVariable(name: "usermodehelper_bset", scope: !2, file: !3, line: 35, type: !1113, isLocal: true, isDefinition: true)
!6191 = !DIGlobalVariableExpression(var: !6192, expr: !DIExpression())
!6192 = distinct !DIGlobalVariable(name: "usermodehelper_inheritable", scope: !2, file: !3, line: 36, type: !1113, isLocal: true, isDefinition: true)
!6193 = !DIGlobalVariableExpression(var: !6194, expr: !DIExpression())
!6194 = distinct !DIGlobalVariable(scope: null, file: !3, line: 568, type: !6195, isLocal: true, isDefinition: true)
!6195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 176, elements: !6196)
!6196 = !{!6197}
!6197 = !DISubrange(count: 22)
!6198 = !DIGlobalVariableExpression(var: !6199, expr: !DIExpression())
!6199 = distinct !DIGlobalVariable(scope: null, file: !3, line: 568, type: !6184, isLocal: true, isDefinition: true)
!6200 = !DIGlobalVariableExpression(var: !6201, expr: !DIExpression())
!6201 = distinct !DIGlobalVariable(scope: null, file: !3, line: 550, type: !6202, isLocal: true, isDefinition: true)
!6202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 40, elements: !819)
!6203 = !DIGlobalVariableExpression(var: !6204, expr: !DIExpression())
!6204 = distinct !DIGlobalVariable(scope: null, file: !3, line: 557, type: !6205, isLocal: true, isDefinition: true)
!6205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 96, elements: !6057)
!6206 = !DIGlobalVariableExpression(var: !6207, expr: !DIExpression())
!6207 = distinct !DIGlobalVariable(name: "usermodehelper_table", scope: !2, file: !3, line: 548, type: !6208, isLocal: true, isDefinition: true)
!6208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1536, elements: !739)
!6209 = !{i32 7, !"Dwarf Version", i32 5}
!6210 = !{i32 2, !"Debug Info Version", i32 3}
!6211 = !{i32 1, !"wchar_size", i32 2}
!6212 = !{i32 8, !"cf-protection-branch", i32 1}
!6213 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6214 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6215 = !{i32 1, !"Code Model", i32 2}
!6216 = !{i32 1, !"override-stack-alignment", i32 8}
!6217 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6218 = distinct !DISubprogram(name: "usermodehelper_read_trylock", scope: !3, file: !3, line: 210, type: !2882, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6219)
!6219 = !{!6220, !6221}
!6220 = !DILocalVariable(name: "wait", scope: !6218, file: !3, line: 212, type: !2056)
!6221 = !DILocalVariable(name: "ret", scope: !6218, file: !3, line: 213, type: !23)
!6222 = !DILocation(line: 212, column: 2, scope: !6218)
!6223 = !DILocation(line: 213, column: 2, scope: !6218)
!6224 = !DILocation(line: 213, column: 6, scope: !6218)
!6225 = !DILocation(line: 215, column: 2, scope: !6218)
!6226 = !DILocation(line: 216, column: 2, scope: !6218)
!6227 = !DILocation(line: 217, column: 3, scope: !6228)
!6228 = distinct !DILexicalBlock(scope: !6229, file: !3, line: 216, column: 11)
!6229 = distinct !DILexicalBlock(scope: !6230, file: !3, line: 216, column: 2)
!6230 = distinct !DILexicalBlock(scope: !6218, file: !3, line: 216, column: 2)
!6231 = !DILocation(line: 219, column: 8, scope: !6232)
!6232 = distinct !DILexicalBlock(scope: !6228, file: !3, line: 219, column: 7)
!6233 = !DILocation(line: 219, column: 7, scope: !6228)
!6234 = !DILocation(line: 220, column: 4, scope: !6232)
!6235 = !DILocation(line: 222, column: 7, scope: !6236)
!6236 = distinct !DILexicalBlock(scope: !6228, file: !3, line: 222, column: 7)
!6237 = !DILocation(line: 222, column: 31, scope: !6236)
!6238 = !DILocation(line: 222, column: 7, scope: !6228)
!6239 = !DILocation(line: 223, column: 8, scope: !6236)
!6240 = !DILocation(line: 223, column: 4, scope: !6236)
!6241 = !DILocation(line: 225, column: 3, scope: !6228)
!6242 = !DILocation(line: 227, column: 7, scope: !6243)
!6243 = distinct !DILexicalBlock(scope: !6228, file: !3, line: 227, column: 7)
!6244 = !DILocation(line: 227, column: 7, scope: !6228)
!6245 = !DILocation(line: 228, column: 4, scope: !6243)
!6246 = !DILocation(line: 230, column: 3, scope: !6228)
!6247 = !DILocation(line: 231, column: 3, scope: !6228)
!6248 = !DILocation(line: 233, column: 3, scope: !6228)
!6249 = !DILocation(line: 216, column: 2, scope: !6229)
!6250 = distinct !{!6250, !6251, !6252, !6253}
!6251 = !DILocation(line: 216, column: 2, scope: !6230)
!6252 = !DILocation(line: 234, column: 2, scope: !6230)
!6253 = !{!"llvm.loop.unroll.disable"}
!6254 = !DILocation(line: 235, column: 2, scope: !6218)
!6255 = !DILocation(line: 236, column: 9, scope: !6218)
!6256 = !DILocation(line: 237, column: 1, scope: !6218)
!6257 = !DILocation(line: 236, column: 2, scope: !6218)
!6258 = distinct !DISubprogram(name: "get_current", scope: !6259, file: !6259, line: 39, type: !6260, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6262)
!6259 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6260 = !DISubroutineType(types: !6261)
!6261 = !{!329}
!6262 = !{!6263, !6265, !6267}
!6263 = !DILocalVariable(name: "pscr_ret__", scope: !6264, file: !6259, line: 41, type: !329)
!6264 = distinct !DILexicalBlock(scope: !6258, file: !6259, line: 41, column: 9)
!6265 = !DILocalVariable(name: "__vpp_verify", scope: !6266, file: !6259, line: 41, type: !2526)
!6266 = distinct !DILexicalBlock(scope: !6264, file: !6259, line: 41, column: 9)
!6267 = !DILocalVariable(name: "pfo_val__", scope: !6268, file: !6259, line: 41, type: !398)
!6268 = distinct !DILexicalBlock(scope: !6264, file: !6259, line: 41, column: 9)
!6269 = !DILocation(line: 41, column: 9, scope: !6264)
!6270 = !DILocation(line: 41, column: 9, scope: !6266)
!6271 = !DILocation(line: 41, column: 9, scope: !6268)
!6272 = !{i64 2148546499}
!6273 = !DILocation(line: 41, column: 9, scope: !6258)
!6274 = !DILocation(line: 41, column: 2, scope: !6258)
!6275 = !DISubprogram(name: "down_read", scope: !880, file: !880, line: 175, type: !6276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6276 = !DISubroutineType(types: !6277)
!6277 = !{null, !6278}
!6278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!6279 = !DISubprogram(name: "prepare_to_wait", scope: !56, file: !56, line: 1197, type: !6280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6280 = !DISubroutineType(types: !6281)
!6281 = !{null, !6282, !2065, !23}
!6282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!6283 = !DISubprogram(name: "up_read", scope: !880, file: !880, line: 198, type: !6276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6284 = !DISubprogram(name: "schedule", scope: !331, file: !331, line: 303, type: !3175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6285 = distinct !DISubprogram(name: "try_to_freeze", scope: !6286, file: !6286, line: 51, type: !2516, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6286 = !DIFile(filename: "./include/linux/freezer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "980eccc8e3c8a58000df4fcfa102b7a2")
!6287 = !DILocation(line: 53, column: 2, scope: !6285)
!6288 = !DILocation(line: 53, column: 2, scope: !6289)
!6289 = distinct !DILexicalBlock(scope: !6285, file: !6286, line: 53, column: 2)
!6290 = !DILocation(line: 54, column: 6, scope: !6291)
!6291 = distinct !DILexicalBlock(scope: !6285, file: !6286, line: 54, column: 6)
!6292 = !DILocation(line: 54, column: 6, scope: !6285)
!6293 = !DILocation(line: 55, column: 3, scope: !6291)
!6294 = !DILocation(line: 56, column: 8, scope: !6295)
!6295 = distinct !DILexicalBlock(scope: !6285, file: !6286, line: 56, column: 6)
!6296 = !DILocation(line: 56, column: 17, scope: !6295)
!6297 = !DILocation(line: 56, column: 23, scope: !6295)
!6298 = !DILocation(line: 56, column: 6, scope: !6285)
!6299 = !DILocation(line: 57, column: 3, scope: !6295)
!6300 = !DILocation(line: 58, column: 9, scope: !6285)
!6301 = !DILocation(line: 58, column: 2, scope: !6285)
!6302 = !DILocation(line: 59, column: 1, scope: !6285)
!6303 = !DISubprogram(name: "finish_wait", scope: !56, file: !56, line: 1200, type: !6304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6304 = !DISubroutineType(types: !6305)
!6305 = !{null, !6282, !2065}
!6306 = distinct !DISubprogram(name: "usermodehelper_read_lock_wait", scope: !3, file: !3, line: 240, type: !6307, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6309)
!6307 = !DISubroutineType(types: !6308)
!6308 = !{!1083, !1083}
!6309 = !{!6310, !6311}
!6310 = !DILocalVariable(name: "timeout", arg: 1, scope: !6306, file: !3, line: 240, type: !1083)
!6311 = !DILocalVariable(name: "wait", scope: !6306, file: !3, line: 242, type: !2056)
!6312 = !DILocation(line: 240, column: 41, scope: !6306)
!6313 = !DILocation(line: 242, column: 2, scope: !6306)
!6314 = !DILocation(line: 244, column: 6, scope: !6315)
!6315 = distinct !DILexicalBlock(scope: !6306, file: !3, line: 244, column: 6)
!6316 = !DILocation(line: 244, column: 14, scope: !6315)
!6317 = !DILocation(line: 244, column: 6, scope: !6306)
!6318 = !DILocation(line: 245, column: 3, scope: !6315)
!6319 = !DILocation(line: 247, column: 2, scope: !6306)
!6320 = !DILocation(line: 248, column: 2, scope: !6306)
!6321 = !DILocation(line: 249, column: 3, scope: !6322)
!6322 = distinct !DILexicalBlock(scope: !6323, file: !3, line: 248, column: 11)
!6323 = distinct !DILexicalBlock(scope: !6324, file: !3, line: 248, column: 2)
!6324 = distinct !DILexicalBlock(scope: !6306, file: !3, line: 248, column: 2)
!6325 = !DILocation(line: 251, column: 8, scope: !6326)
!6326 = distinct !DILexicalBlock(scope: !6322, file: !3, line: 251, column: 7)
!6327 = !DILocation(line: 251, column: 7, scope: !6322)
!6328 = !DILocation(line: 252, column: 4, scope: !6326)
!6329 = !DILocation(line: 254, column: 3, scope: !6322)
!6330 = !DILocation(line: 256, column: 30, scope: !6322)
!6331 = !DILocation(line: 256, column: 13, scope: !6322)
!6332 = !DILocation(line: 256, column: 11, scope: !6322)
!6333 = !DILocation(line: 257, column: 8, scope: !6334)
!6334 = distinct !DILexicalBlock(scope: !6322, file: !3, line: 257, column: 7)
!6335 = !DILocation(line: 257, column: 7, scope: !6322)
!6336 = !DILocation(line: 258, column: 4, scope: !6334)
!6337 = !DILocation(line: 260, column: 3, scope: !6322)
!6338 = !DILocation(line: 248, column: 2, scope: !6323)
!6339 = distinct !{!6339, !6340, !6341, !6253}
!6340 = !DILocation(line: 248, column: 2, scope: !6324)
!6341 = !DILocation(line: 261, column: 2, scope: !6324)
!6342 = !DILocation(line: 262, column: 2, scope: !6306)
!6343 = !DILocation(line: 263, column: 9, scope: !6306)
!6344 = !DILocation(line: 263, column: 2, scope: !6306)
!6345 = !DILocation(line: 264, column: 1, scope: !6306)
!6346 = !DISubprogram(name: "schedule_timeout", scope: !331, file: !331, line: 298, type: !6307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6347 = distinct !DISubprogram(name: "usermodehelper_read_unlock", scope: !3, file: !3, line: 267, type: !3175, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6348 = !DILocation(line: 269, column: 2, scope: !6347)
!6349 = !DILocation(line: 270, column: 1, scope: !6347)
!6350 = distinct !DISubprogram(name: "__usermodehelper_set_disable_depth", scope: !3, file: !3, line: 280, type: !6351, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6353)
!6351 = !DISubroutineType(types: !6352)
!6352 = !{null, !5}
!6353 = !{!6354}
!6354 = !DILocalVariable(name: "depth", arg: 1, scope: !6350, file: !3, line: 280, type: !5)
!6355 = !DILocation(line: 280, column: 64, scope: !6350)
!6356 = !DILocation(line: 282, column: 2, scope: !6350)
!6357 = !DILocation(line: 283, column: 28, scope: !6350)
!6358 = !DILocation(line: 283, column: 26, scope: !6350)
!6359 = !DILocation(line: 284, column: 2, scope: !6350)
!6360 = !DILocation(line: 285, column: 2, scope: !6350)
!6361 = !DILocation(line: 286, column: 1, scope: !6350)
!6362 = !DISubprogram(name: "down_write", scope: !880, file: !880, line: 187, type: !6276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6363 = !DISubprogram(name: "__wake_up", scope: !56, file: !56, line: 212, type: !6364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6364 = !DISubroutineType(types: !6365)
!6365 = !{!23, !6282, !7, !23, !21}
!6366 = !DISubprogram(name: "up_write", scope: !880, file: !880, line: 203, type: !6276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6367 = distinct !DISubprogram(name: "__usermodehelper_disable", scope: !3, file: !3, line: 294, type: !6368, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6370)
!6368 = !DISubroutineType(types: !6369)
!6369 = !{!23, !5}
!6370 = !{!6371, !6372, !6373, !6375, !6378, !6380, !6381, !6385, !6388}
!6371 = !DILocalVariable(name: "depth", arg: 1, scope: !6367, file: !3, line: 294, type: !5)
!6372 = !DILocalVariable(name: "retval", scope: !6367, file: !3, line: 296, type: !1083)
!6373 = !DILocalVariable(name: "__ret", scope: !6374, file: !3, line: 311, type: !1083)
!6374 = distinct !DILexicalBlock(scope: !6367, file: !3, line: 311, column: 11)
!6375 = !DILocalVariable(name: "__cond", scope: !6376, file: !3, line: 311, type: !859)
!6376 = distinct !DILexicalBlock(scope: !6377, file: !3, line: 311, column: 11)
!6377 = distinct !DILexicalBlock(scope: !6374, file: !3, line: 311, column: 11)
!6378 = !DILocalVariable(name: "__wq_entry", scope: !6379, file: !3, line: 311, type: !2056)
!6379 = distinct !DILexicalBlock(scope: !6377, file: !3, line: 311, column: 11)
!6380 = !DILocalVariable(name: "__ret", scope: !6379, file: !3, line: 311, type: !1083)
!6381 = !DILocalVariable(name: "__int", scope: !6382, file: !3, line: 311, type: !1083)
!6382 = distinct !DILexicalBlock(scope: !6383, file: !3, line: 311, column: 11)
!6383 = distinct !DILexicalBlock(scope: !6384, file: !3, line: 311, column: 11)
!6384 = distinct !DILexicalBlock(scope: !6379, file: !3, line: 311, column: 11)
!6385 = !DILocalVariable(name: "__cond", scope: !6386, file: !3, line: 311, type: !859)
!6386 = distinct !DILexicalBlock(scope: !6387, file: !3, line: 311, column: 11)
!6387 = distinct !DILexicalBlock(scope: !6382, file: !3, line: 311, column: 11)
!6388 = !DILabel(scope: !6379, name: "__out", file: !3, line: 311)
!6389 = !DILocation(line: 294, column: 53, scope: !6367)
!6390 = !DILocation(line: 296, column: 2, scope: !6367)
!6391 = !DILocation(line: 296, column: 7, scope: !6367)
!6392 = !DILocation(line: 298, column: 7, scope: !6393)
!6393 = distinct !DILexicalBlock(scope: !6367, file: !3, line: 298, column: 6)
!6394 = !DILocation(line: 298, column: 6, scope: !6367)
!6395 = !DILocation(line: 299, column: 3, scope: !6393)
!6396 = !DILocation(line: 301, column: 2, scope: !6367)
!6397 = !DILocation(line: 302, column: 28, scope: !6367)
!6398 = !DILocation(line: 302, column: 26, scope: !6367)
!6399 = !DILocation(line: 303, column: 2, scope: !6367)
!6400 = !DILocation(line: 311, column: 11, scope: !6374)
!6401 = !DILocation(line: 311, column: 11, scope: !6402)
!6402 = distinct !DILexicalBlock(scope: !6374, file: !3, line: 311, column: 11)
!6403 = !DILocation(line: 311, column: 11, scope: !6376)
!6404 = !DILocation(line: 311, column: 11, scope: !6405)
!6405 = distinct !DILexicalBlock(scope: !6376, file: !3, line: 311, column: 11)
!6406 = !{i8 0, i8 2}
!6407 = !DILocation(line: 311, column: 11, scope: !6377)
!6408 = !DILocation(line: 311, column: 11, scope: !6379)
!6409 = !DILocation(line: 311, column: 11, scope: !6382)
!6410 = !DILocation(line: 311, column: 11, scope: !6386)
!6411 = !DILocation(line: 311, column: 11, scope: !6412)
!6412 = distinct !DILexicalBlock(scope: !6386, file: !3, line: 311, column: 11)
!6413 = !DILocation(line: 311, column: 11, scope: !6387)
!6414 = !DILocation(line: 311, column: 11, scope: !6383)
!6415 = distinct !{!6415, !6416, !6416, !6253}
!6416 = !DILocation(line: 311, column: 11, scope: !6384)
!6417 = !DILocation(line: 311, column: 11, scope: !6367)
!6418 = !DILocation(line: 311, column: 9, scope: !6367)
!6419 = !DILocation(line: 314, column: 6, scope: !6420)
!6420 = distinct !DILexicalBlock(scope: !6367, file: !3, line: 314, column: 6)
!6421 = !DILocation(line: 314, column: 6, scope: !6367)
!6422 = !DILocation(line: 315, column: 3, scope: !6420)
!6423 = !DILocation(line: 317, column: 2, scope: !6367)
!6424 = !DILocation(line: 318, column: 2, scope: !6367)
!6425 = !DILocation(line: 319, column: 1, scope: !6367)
!6426 = !DILocation(line: 112, column: 2, scope: !6427)
!6427 = distinct !DILexicalBlock(scope: !6176, file: !6177, line: 112, column: 2)
!6428 = !DILocation(line: 112, column: 2, scope: !6176)
!6429 = !DILocation(line: 113, column: 1, scope: !6176)
!6430 = distinct !DISubprogram(name: "atomic_read", scope: !6431, file: !6431, line: 30, type: !6432, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6436)
!6431 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6432 = !DISubroutineType(types: !6433)
!6433 = !{!23, !6434}
!6434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6435, size: 64)
!6435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!6436 = !{!6437}
!6437 = !DILocalVariable(name: "v", arg: 1, scope: !6430, file: !6431, line: 30, type: !6434)
!6438 = !DILocation(line: 30, column: 29, scope: !6430)
!6439 = !DILocation(line: 32, column: 25, scope: !6430)
!6440 = !DILocation(line: 32, column: 2, scope: !6430)
!6441 = !DILocation(line: 33, column: 25, scope: !6430)
!6442 = !DILocation(line: 33, column: 9, scope: !6430)
!6443 = !DILocation(line: 33, column: 2, scope: !6430)
!6444 = !DISubprogram(name: "init_wait_entry", scope: !56, file: !56, line: 290, type: !6445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6445 = !DISubroutineType(types: !6446)
!6446 = !{null, !2065, !23}
!6447 = !DISubprogram(name: "prepare_to_wait_event", scope: !56, file: !56, line: 1199, type: !6448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6448 = !DISubroutineType(types: !6449)
!6449 = !{!1083, !6282, !2065, !23}
!6450 = !DILocation(line: 356, column: 63, scope: !6149)
!6451 = !DILocation(line: 356, column: 76, scope: !6149)
!6452 = !DILocation(line: 357, column: 10, scope: !6149)
!6453 = !DILocation(line: 357, column: 22, scope: !6149)
!6454 = !DILocation(line: 358, column: 9, scope: !6149)
!6455 = !DILocation(line: 359, column: 10, scope: !6149)
!6456 = !DILocation(line: 360, column: 9, scope: !6149)
!6457 = !DILocation(line: 362, column: 2, scope: !6149)
!6458 = !DILocation(line: 362, column: 26, scope: !6149)
!6459 = !DILocation(line: 363, column: 53, scope: !6149)
!6460 = !DILocation(line: 363, column: 13, scope: !6149)
!6461 = !DILocation(line: 363, column: 11, scope: !6149)
!6462 = !DILocation(line: 364, column: 7, scope: !6463)
!6463 = distinct !DILexicalBlock(scope: !6149, file: !3, line: 364, column: 6)
!6464 = !DILocation(line: 364, column: 6, scope: !6149)
!6465 = !DILocation(line: 365, column: 3, scope: !6463)
!6466 = !DILocation(line: 367, column: 2, scope: !6149)
!6467 = !DILocation(line: 367, column: 2, scope: !6468)
!6468 = distinct !DILexicalBlock(scope: !6149, file: !3, line: 367, column: 2)
!6469 = !DILocation(line: 367, column: 2, scope: !6470)
!6470 = distinct !DILexicalBlock(scope: !6468, file: !3, line: 367, column: 2)
!6471 = !DILocation(line: 372, column: 19, scope: !6149)
!6472 = !DILocation(line: 372, column: 2, scope: !6149)
!6473 = !DILocation(line: 372, column: 12, scope: !6149)
!6474 = !DILocation(line: 372, column: 17, scope: !6149)
!6475 = !DILocation(line: 374, column: 19, scope: !6149)
!6476 = !DILocation(line: 374, column: 2, scope: !6149)
!6477 = !DILocation(line: 374, column: 12, scope: !6149)
!6478 = !DILocation(line: 374, column: 17, scope: !6149)
!6479 = !DILocation(line: 375, column: 19, scope: !6149)
!6480 = !DILocation(line: 375, column: 2, scope: !6149)
!6481 = !DILocation(line: 375, column: 12, scope: !6149)
!6482 = !DILocation(line: 375, column: 17, scope: !6149)
!6483 = !DILocation(line: 377, column: 22, scope: !6149)
!6484 = !DILocation(line: 377, column: 2, scope: !6149)
!6485 = !DILocation(line: 377, column: 12, scope: !6149)
!6486 = !DILocation(line: 377, column: 20, scope: !6149)
!6487 = !DILocation(line: 378, column: 19, scope: !6149)
!6488 = !DILocation(line: 378, column: 2, scope: !6149)
!6489 = !DILocation(line: 378, column: 12, scope: !6149)
!6490 = !DILocation(line: 378, column: 17, scope: !6149)
!6491 = !DILocation(line: 379, column: 19, scope: !6149)
!6492 = !DILocation(line: 379, column: 2, scope: !6149)
!6493 = !DILocation(line: 379, column: 12, scope: !6149)
!6494 = !DILocation(line: 379, column: 17, scope: !6149)
!6495 = !DILocation(line: 380, column: 3, scope: !6149)
!6496 = !DILocation(line: 381, column: 9, scope: !6149)
!6497 = !DILocation(line: 382, column: 1, scope: !6149)
!6498 = !DILocation(line: 381, column: 2, scope: !6149)
!6499 = distinct !DISubprogram(name: "kzalloc", scope: !317, file: !317, line: 719, type: !6500, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6502)
!6500 = !DISubroutineType(types: !6501)
!6501 = !{!21, !36, !327}
!6502 = !{!6503, !6504}
!6503 = !DILocalVariable(name: "size", arg: 1, scope: !6499, file: !317, line: 719, type: !36)
!6504 = !DILocalVariable(name: "flags", arg: 2, scope: !6499, file: !317, line: 719, type: !327)
!6505 = !DILocation(line: 719, column: 52, scope: !6499)
!6506 = !DILocation(line: 719, column: 64, scope: !6499)
!6507 = !DILocation(line: 721, column: 17, scope: !6499)
!6508 = !DILocation(line: 721, column: 23, scope: !6499)
!6509 = !DILocation(line: 721, column: 29, scope: !6499)
!6510 = !DILocation(line: 721, column: 9, scope: !6499)
!6511 = !DILocation(line: 721, column: 2, scope: !6499)
!6512 = distinct !DISubprogram(name: "__init_work", scope: !109, file: !109, line: 263, type: !6513, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6515)
!6513 = !DISubroutineType(types: !6514)
!6514 = !{null, !995, !23}
!6515 = !{!6516, !6517}
!6516 = !DILocalVariable(name: "work", arg: 1, scope: !6512, file: !109, line: 263, type: !995)
!6517 = !DILocalVariable(name: "onstack", arg: 2, scope: !6512, file: !109, line: 263, type: !23)
!6518 = !DILocation(line: 263, column: 52, scope: !6512)
!6519 = !DILocation(line: 263, column: 62, scope: !6512)
!6520 = !DILocation(line: 263, column: 73, scope: !6512)
!6521 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !6522, file: !6522, line: 35, type: !6523, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6525)
!6522 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6523 = !DISubroutineType(types: !6524)
!6524 = !{null, !101}
!6525 = !{!6526}
!6526 = !DILocalVariable(name: "list", arg: 1, scope: !6521, file: !6522, line: 35, type: !101)
!6527 = !DILocation(line: 35, column: 53, scope: !6521)
!6528 = !DILocation(line: 37, column: 2, scope: !6521)
!6529 = !DILocation(line: 37, column: 2, scope: !6530)
!6530 = distinct !DILexicalBlock(scope: !6521, file: !6522, line: 37, column: 2)
!6531 = !DILocation(line: 37, column: 2, scope: !6532)
!6532 = distinct !DILexicalBlock(scope: !6530, file: !6522, line: 37, column: 2)
!6533 = !DILocation(line: 37, column: 2, scope: !6534)
!6534 = distinct !DILexicalBlock(scope: !6530, file: !6522, line: 37, column: 2)
!6535 = !DILocation(line: 38, column: 2, scope: !6521)
!6536 = !DILocation(line: 38, column: 2, scope: !6537)
!6537 = distinct !DILexicalBlock(scope: !6521, file: !6522, line: 38, column: 2)
!6538 = !DILocation(line: 38, column: 2, scope: !6539)
!6539 = distinct !DILexicalBlock(scope: !6537, file: !6522, line: 38, column: 2)
!6540 = !DILocation(line: 38, column: 2, scope: !6541)
!6541 = distinct !DILexicalBlock(scope: !6537, file: !6522, line: 38, column: 2)
!6542 = !DILocation(line: 39, column: 1, scope: !6521)
!6543 = distinct !DISubprogram(name: "call_usermodehelper_exec_work", scope: !3, file: !3, line: 158, type: !993, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6544)
!6544 = !{!6545, !6546, !6547, !6549}
!6545 = !DILocalVariable(name: "work", arg: 1, scope: !6543, file: !3, line: 158, type: !995)
!6546 = !DILocalVariable(name: "sub_info", scope: !6543, file: !3, line: 160, type: !6118)
!6547 = !DILocalVariable(name: "__mptr", scope: !6548, file: !3, line: 161, type: !21)
!6548 = distinct !DILexicalBlock(scope: !6543, file: !3, line: 161, column: 3)
!6549 = !DILocalVariable(name: "pid", scope: !6550, file: !3, line: 166, type: !5252)
!6550 = distinct !DILexicalBlock(scope: !6551, file: !3, line: 165, column: 9)
!6551 = distinct !DILexicalBlock(scope: !6543, file: !3, line: 163, column: 6)
!6552 = !DILocation(line: 158, column: 63, scope: !6543)
!6553 = !DILocation(line: 160, column: 2, scope: !6543)
!6554 = !DILocation(line: 160, column: 26, scope: !6543)
!6555 = !DILocation(line: 161, column: 3, scope: !6548)
!6556 = !DILocation(line: 161, column: 3, scope: !6543)
!6557 = !DILocation(line: 163, column: 6, scope: !6551)
!6558 = !DILocation(line: 163, column: 16, scope: !6551)
!6559 = !DILocation(line: 163, column: 21, scope: !6551)
!6560 = !DILocation(line: 163, column: 6, scope: !6543)
!6561 = !DILocation(line: 164, column: 33, scope: !6562)
!6562 = distinct !DILexicalBlock(scope: !6551, file: !3, line: 163, column: 38)
!6563 = !DILocation(line: 164, column: 3, scope: !6562)
!6564 = !DILocation(line: 165, column: 2, scope: !6562)
!6565 = !DILocation(line: 166, column: 3, scope: !6550)
!6566 = !DILocation(line: 166, column: 9, scope: !6550)
!6567 = !DILocation(line: 172, column: 58, scope: !6550)
!6568 = !DILocation(line: 172, column: 9, scope: !6550)
!6569 = !DILocation(line: 172, column: 7, scope: !6550)
!6570 = !DILocation(line: 174, column: 7, scope: !6571)
!6571 = distinct !DILexicalBlock(scope: !6550, file: !3, line: 174, column: 7)
!6572 = !DILocation(line: 174, column: 11, scope: !6571)
!6573 = !DILocation(line: 174, column: 7, scope: !6550)
!6574 = !DILocation(line: 175, column: 23, scope: !6575)
!6575 = distinct !DILexicalBlock(scope: !6571, file: !3, line: 174, column: 16)
!6576 = !DILocation(line: 175, column: 4, scope: !6575)
!6577 = !DILocation(line: 175, column: 14, scope: !6575)
!6578 = !DILocation(line: 175, column: 21, scope: !6575)
!6579 = !DILocation(line: 176, column: 17, scope: !6575)
!6580 = !DILocation(line: 176, column: 4, scope: !6575)
!6581 = !DILocation(line: 177, column: 3, scope: !6575)
!6582 = !DILocation(line: 178, column: 2, scope: !6551)
!6583 = !DILocation(line: 179, column: 1, scope: !6543)
!6584 = distinct !DISubprogram(name: "call_usermodehelper_exec", scope: !3, file: !3, line: 402, type: !6585, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6587)
!6585 = !DISubroutineType(types: !6586)
!6586 = !{!23, !6118, !23}
!6587 = !{!6588, !6589, !6590, !6591, !6592, !6593, !6599, !6601, !6602, !6603}
!6588 = !DILocalVariable(name: "sub_info", arg: 1, scope: !6584, file: !3, line: 402, type: !6118)
!6589 = !DILocalVariable(name: "wait", arg: 2, scope: !6584, file: !3, line: 402, type: !23)
!6590 = !DILocalVariable(name: "state", scope: !6584, file: !3, line: 404, type: !7)
!6591 = !DILocalVariable(name: "done", scope: !6584, file: !3, line: 405, type: !1024)
!6592 = !DILocalVariable(name: "retval", scope: !6584, file: !3, line: 406, type: !23)
!6593 = !DILocalVariable(name: "__ai_ptr", scope: !6594, file: !3, line: 447, type: !6598)
!6594 = distinct !DILexicalBlock(scope: !6595, file: !3, line: 447, column: 7)
!6595 = distinct !DILexicalBlock(scope: !6596, file: !3, line: 447, column: 7)
!6596 = distinct !DILexicalBlock(scope: !6597, file: !3, line: 441, column: 27)
!6597 = distinct !DILexicalBlock(scope: !6584, file: !3, line: 441, column: 6)
!6598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!6599 = !DILocalVariable(name: "__ret", scope: !6600, file: !3, line: 447, type: !1023)
!6600 = distinct !DILexicalBlock(scope: !6594, file: !3, line: 447, column: 7)
!6601 = !DILabel(scope: !6584, name: "wait_done", file: !3, line: 460)
!6602 = !DILabel(scope: !6584, name: "out", file: !3, line: 462)
!6603 = !DILabel(scope: !6584, name: "unlock", file: !3, line: 464)
!6604 = !DILocation(line: 402, column: 54, scope: !6584)
!6605 = !DILocation(line: 402, column: 68, scope: !6584)
!6606 = !DILocation(line: 404, column: 2, scope: !6584)
!6607 = !DILocation(line: 404, column: 15, scope: !6584)
!6608 = !DILocation(line: 405, column: 2, scope: !6584)
!6609 = !DILocation(line: 406, column: 2, scope: !6584)
!6610 = !DILocation(line: 406, column: 6, scope: !6584)
!6611 = !DILocation(line: 408, column: 7, scope: !6612)
!6612 = distinct !DILexicalBlock(scope: !6584, file: !3, line: 408, column: 6)
!6613 = !DILocation(line: 408, column: 17, scope: !6612)
!6614 = !DILocation(line: 408, column: 6, scope: !6584)
!6615 = !DILocation(line: 409, column: 32, scope: !6616)
!6616 = distinct !DILexicalBlock(scope: !6612, file: !3, line: 408, column: 23)
!6617 = !DILocation(line: 409, column: 3, scope: !6616)
!6618 = !DILocation(line: 410, column: 3, scope: !6616)
!6619 = !DILocation(line: 412, column: 2, scope: !6584)
!6620 = !DILocation(line: 413, column: 6, scope: !6621)
!6621 = distinct !DILexicalBlock(scope: !6584, file: !3, line: 413, column: 6)
!6622 = !DILocation(line: 413, column: 6, scope: !6584)
!6623 = !DILocation(line: 414, column: 10, scope: !6624)
!6624 = distinct !DILexicalBlock(scope: !6621, file: !3, line: 413, column: 31)
!6625 = !DILocation(line: 415, column: 3, scope: !6624)
!6626 = !DILocation(line: 423, column: 13, scope: !6627)
!6627 = distinct !DILexicalBlock(scope: !6584, file: !3, line: 423, column: 6)
!6628 = !DILocation(line: 423, column: 23, scope: !6627)
!6629 = !DILocation(line: 423, column: 6, scope: !6627)
!6630 = !DILocation(line: 423, column: 29, scope: !6627)
!6631 = !DILocation(line: 423, column: 6, scope: !6584)
!6632 = !DILocation(line: 424, column: 3, scope: !6627)
!6633 = !DILocation(line: 431, column: 24, scope: !6584)
!6634 = !DILocation(line: 431, column: 29, scope: !6584)
!6635 = !DILocation(line: 431, column: 23, scope: !6584)
!6636 = !DILocation(line: 431, column: 2, scope: !6584)
!6637 = !DILocation(line: 431, column: 12, scope: !6584)
!6638 = !DILocation(line: 431, column: 21, scope: !6584)
!6639 = !DILocation(line: 432, column: 19, scope: !6584)
!6640 = !DILocation(line: 432, column: 2, scope: !6584)
!6641 = !DILocation(line: 432, column: 12, scope: !6584)
!6642 = !DILocation(line: 432, column: 17, scope: !6584)
!6643 = !DILocation(line: 434, column: 13, scope: !6584)
!6644 = !DILocation(line: 434, column: 33, scope: !6584)
!6645 = !DILocation(line: 434, column: 43, scope: !6584)
!6646 = !DILocation(line: 434, column: 2, scope: !6584)
!6647 = !DILocation(line: 435, column: 6, scope: !6648)
!6648 = distinct !DILexicalBlock(scope: !6584, file: !3, line: 435, column: 6)
!6649 = !DILocation(line: 435, column: 11, scope: !6648)
!6650 = !DILocation(line: 435, column: 6, scope: !6584)
!6651 = !DILocation(line: 436, column: 3, scope: !6648)
!6652 = !DILocation(line: 438, column: 6, scope: !6653)
!6653 = distinct !DILexicalBlock(scope: !6584, file: !3, line: 438, column: 6)
!6654 = !DILocation(line: 438, column: 11, scope: !6653)
!6655 = !DILocation(line: 438, column: 6, scope: !6584)
!6656 = !DILocation(line: 439, column: 9, scope: !6653)
!6657 = !DILocation(line: 439, column: 3, scope: !6653)
!6658 = !DILocation(line: 441, column: 6, scope: !6597)
!6659 = !DILocation(line: 441, column: 11, scope: !6597)
!6660 = !DILocation(line: 441, column: 6, scope: !6584)
!6661 = !DILocation(line: 442, column: 45, scope: !6596)
!6662 = !DILocation(line: 442, column: 51, scope: !6596)
!6663 = !DILocation(line: 442, column: 12, scope: !6596)
!6664 = !DILocation(line: 442, column: 10, scope: !6596)
!6665 = !DILocation(line: 443, column: 8, scope: !6666)
!6666 = distinct !DILexicalBlock(scope: !6596, file: !3, line: 443, column: 7)
!6667 = !DILocation(line: 443, column: 7, scope: !6596)
!6668 = !DILocation(line: 444, column: 4, scope: !6666)
!6669 = !DILocation(line: 447, column: 7, scope: !6594)
!6670 = !DILocation(line: 447, column: 7, scope: !6671)
!6671 = distinct !DILexicalBlock(scope: !6594, file: !3, line: 447, column: 7)
!6672 = !DILocation(line: 447, column: 7, scope: !6600)
!6673 = !{i64 2156211480}
!6674 = !DILocation(line: 447, column: 7, scope: !6595)
!6675 = !DILocation(line: 447, column: 7, scope: !6596)
!6676 = !DILocation(line: 448, column: 4, scope: !6595)
!6677 = !DILocation(line: 457, column: 2, scope: !6596)
!6678 = !DILocation(line: 458, column: 35, scope: !6584)
!6679 = !DILocation(line: 458, column: 2, scope: !6584)
!6680 = !DILocation(line: 460, column: 1, scope: !6584)
!6681 = !DILocation(line: 461, column: 11, scope: !6584)
!6682 = !DILocation(line: 461, column: 21, scope: !6584)
!6683 = !DILocation(line: 461, column: 9, scope: !6584)
!6684 = !DILocation(line: 461, column: 2, scope: !6584)
!6685 = !DILocation(line: 462, column: 1, scope: !6584)
!6686 = !DILocation(line: 463, column: 31, scope: !6584)
!6687 = !DILocation(line: 463, column: 2, scope: !6584)
!6688 = !DILocation(line: 464, column: 1, scope: !6584)
!6689 = !DILocation(line: 465, column: 2, scope: !6584)
!6690 = !DILocation(line: 466, column: 9, scope: !6584)
!6691 = !DILocation(line: 466, column: 2, scope: !6584)
!6692 = !DILocation(line: 467, column: 1, scope: !6584)
!6693 = distinct !DISubprogram(name: "call_usermodehelper_freeinfo", scope: !3, file: !3, line: 40, type: !6135, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6694)
!6694 = !{!6695}
!6695 = !DILocalVariable(name: "info", arg: 1, scope: !6693, file: !3, line: 40, type: !6118)
!6696 = !DILocation(line: 40, column: 66, scope: !6693)
!6697 = !DILocation(line: 42, column: 6, scope: !6698)
!6698 = distinct !DILexicalBlock(scope: !6693, file: !3, line: 42, column: 6)
!6699 = !DILocation(line: 42, column: 12, scope: !6698)
!6700 = !DILocation(line: 42, column: 6, scope: !6693)
!6701 = !DILocation(line: 43, column: 5, scope: !6698)
!6702 = !DILocation(line: 43, column: 11, scope: !6698)
!6703 = !DILocation(line: 43, column: 20, scope: !6698)
!6704 = !DILocation(line: 43, column: 3, scope: !6698)
!6705 = !DILocation(line: 44, column: 8, scope: !6693)
!6706 = !DILocation(line: 44, column: 2, scope: !6693)
!6707 = !DILocation(line: 45, column: 1, scope: !6693)
!6708 = distinct !DISubprogram(name: "helper_lock", scope: !3, file: !3, line: 321, type: !3175, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6709 = !DILocation(line: 323, column: 2, scope: !6708)
!6710 = !DILocation(line: 324, column: 2, scope: !6708)
!6711 = !DILocation(line: 324, column: 2, scope: !6712)
!6712 = distinct !DILexicalBlock(scope: !6708, file: !3, line: 324, column: 2)
!6713 = !DILocation(line: 324, column: 2, scope: !6714)
!6714 = distinct !DILexicalBlock(scope: !6712, file: !3, line: 324, column: 2)
!6715 = !DILocation(line: 324, column: 2, scope: !6716)
!6716 = distinct !DILexicalBlock(scope: !6712, file: !3, line: 324, column: 2)
!6717 = !DILocation(line: 325, column: 1, scope: !6708)
!6718 = !DISubprogram(name: "strlen", scope: !6719, file: !6719, line: 128, type: !6720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6719 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6720 = !DISubroutineType(types: !6721)
!6721 = !{!40, !17}
!6722 = distinct !DISubprogram(name: "queue_work", scope: !109, file: !109, line: 559, type: !6723, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6725)
!6723 = !DISubroutineType(types: !6724)
!6724 = !{!859, !3062, !995}
!6725 = !{!6726, !6727}
!6726 = !DILocalVariable(name: "wq", arg: 1, scope: !6722, file: !109, line: 559, type: !3062)
!6727 = !DILocalVariable(name: "work", arg: 2, scope: !6722, file: !109, line: 560, type: !995)
!6728 = !DILocation(line: 559, column: 56, scope: !6722)
!6729 = !DILocation(line: 560, column: 30, scope: !6722)
!6730 = !DILocation(line: 562, column: 41, scope: !6722)
!6731 = !DILocation(line: 562, column: 45, scope: !6722)
!6732 = !DILocation(line: 562, column: 9, scope: !6722)
!6733 = !DILocation(line: 562, column: 2, scope: !6722)
!6734 = !DISubprogram(name: "wait_for_completion_state", scope: !1025, file: !1025, line: 106, type: !6735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6735 = !DISubroutineType(types: !6736)
!6736 = !{!23, !1023, !7}
!6737 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6738, file: !6738, line: 94, type: !6739, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6744)
!6738 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6739 = !DISubroutineType(types: !6740)
!6740 = !{null, !6741, !36}
!6741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6742, size: 64)
!6742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6743)
!6743 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6744 = !{!6745, !6746}
!6745 = !DILocalVariable(name: "v", arg: 1, scope: !6737, file: !6738, line: 94, type: !6741)
!6746 = !DILocalVariable(name: "size", arg: 2, scope: !6737, file: !6738, line: 94, type: !36)
!6747 = !DILocation(line: 94, column: 79, scope: !6737)
!6748 = !DILocation(line: 94, column: 89, scope: !6737)
!6749 = !DILocation(line: 96, column: 20, scope: !6737)
!6750 = !DILocation(line: 96, column: 23, scope: !6737)
!6751 = !DILocation(line: 96, column: 2, scope: !6737)
!6752 = !DILocation(line: 97, column: 2, scope: !6737)
!6753 = !DILocation(line: 98, column: 1, scope: !6737)
!6754 = distinct !DISubprogram(name: "helper_unlock", scope: !3, file: !3, line: 327, type: !3175, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6755 = !DILocation(line: 329, column: 6, scope: !6756)
!6756 = distinct !DILexicalBlock(scope: !6754, file: !3, line: 329, column: 6)
!6757 = !DILocation(line: 329, column: 6, scope: !6754)
!6758 = !DILocation(line: 330, column: 3, scope: !6756)
!6759 = !DILocation(line: 331, column: 1, scope: !6754)
!6760 = distinct !DISubprogram(name: "call_usermodehelper", scope: !3, file: !3, line: 483, type: !6761, scopeLine: 484, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6763)
!6761 = !DISubroutineType(types: !6762)
!6762 = !{!23, !17, !6125, !6125, !23}
!6763 = !{!6764, !6765, !6766, !6767, !6768, !6769}
!6764 = !DILocalVariable(name: "path", arg: 1, scope: !6760, file: !3, line: 483, type: !17)
!6765 = !DILocalVariable(name: "argv", arg: 2, scope: !6760, file: !3, line: 483, type: !6125)
!6766 = !DILocalVariable(name: "envp", arg: 3, scope: !6760, file: !3, line: 483, type: !6125)
!6767 = !DILocalVariable(name: "wait", arg: 4, scope: !6760, file: !3, line: 483, type: !23)
!6768 = !DILocalVariable(name: "info", scope: !6760, file: !3, line: 485, type: !6118)
!6769 = !DILocalVariable(name: "gfp_mask", scope: !6760, file: !3, line: 486, type: !327)
!6770 = !DILocation(line: 483, column: 37, scope: !6760)
!6771 = !DILocation(line: 483, column: 50, scope: !6760)
!6772 = !DILocation(line: 483, column: 63, scope: !6760)
!6773 = !DILocation(line: 483, column: 73, scope: !6760)
!6774 = !DILocation(line: 485, column: 2, scope: !6760)
!6775 = !DILocation(line: 485, column: 26, scope: !6760)
!6776 = !DILocation(line: 486, column: 2, scope: !6760)
!6777 = !DILocation(line: 486, column: 8, scope: !6760)
!6778 = !DILocation(line: 486, column: 20, scope: !6760)
!6779 = !DILocation(line: 486, column: 25, scope: !6760)
!6780 = !DILocation(line: 486, column: 19, scope: !6760)
!6781 = !DILocation(line: 488, column: 35, scope: !6760)
!6782 = !DILocation(line: 488, column: 41, scope: !6760)
!6783 = !DILocation(line: 488, column: 47, scope: !6760)
!6784 = !DILocation(line: 488, column: 53, scope: !6760)
!6785 = !DILocation(line: 488, column: 9, scope: !6760)
!6786 = !DILocation(line: 488, column: 7, scope: !6760)
!6787 = !DILocation(line: 490, column: 6, scope: !6788)
!6788 = distinct !DILexicalBlock(scope: !6760, file: !3, line: 490, column: 6)
!6789 = !DILocation(line: 490, column: 11, scope: !6788)
!6790 = !DILocation(line: 490, column: 6, scope: !6760)
!6791 = !DILocation(line: 491, column: 3, scope: !6788)
!6792 = !DILocation(line: 493, column: 34, scope: !6760)
!6793 = !DILocation(line: 493, column: 40, scope: !6760)
!6794 = !DILocation(line: 493, column: 9, scope: !6760)
!6795 = !DILocation(line: 493, column: 2, scope: !6760)
!6796 = !DILocation(line: 494, column: 1, scope: !6760)
!6797 = distinct !DISubprogram(name: "__initstub__kmod_umh__401_571_init_umh_sysctlsearly", scope: !3, file: !3, line: 571, type: !2882, scopeLine: 571, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6798 = !DILocation(line: 571, column: 1, scope: !6797)
!6799 = distinct !DISubprogram(name: "init_umh_sysctls", scope: !3, file: !3, line: 566, type: !2882, scopeLine: 567, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6800 = !DILocation(line: 568, column: 2, scope: !6799)
!6801 = !DILocation(line: 569, column: 2, scope: !6799)
!6802 = distinct !DISubprogram(name: "freezing", scope: !6286, file: !6286, line: 34, type: !6803, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6805)
!6803 = !DISubroutineType(types: !6804)
!6804 = !{!859, !329}
!6805 = !{!6806, !6807}
!6806 = !DILocalVariable(name: "p", arg: 1, scope: !6802, file: !6286, line: 34, type: !329)
!6807 = !DILocalVariable(name: "branch", scope: !6808, file: !6286, line: 36, type: !859)
!6808 = distinct !DILexicalBlock(scope: !6809, file: !6286, line: 36, column: 6)
!6809 = distinct !DILexicalBlock(scope: !6802, file: !6286, line: 36, column: 6)
!6810 = !DILocation(line: 34, column: 49, scope: !6802)
!6811 = !DILocation(line: 36, column: 6, scope: !6808)
!6812 = !DILocation(line: 36, column: 6, scope: !6813)
!6813 = distinct !DILexicalBlock(scope: !6814, file: !6286, line: 36, column: 6)
!6814 = distinct !DILexicalBlock(scope: !6808, file: !6286, line: 36, column: 6)
!6815 = !DILocation(line: 36, column: 6, scope: !6814)
!6816 = !DILocation(line: 36, column: 6, scope: !6809)
!6817 = !DILocation(line: 36, column: 6, scope: !6802)
!6818 = !DILocation(line: 37, column: 29, scope: !6809)
!6819 = !DILocation(line: 37, column: 10, scope: !6809)
!6820 = !DILocation(line: 37, column: 3, scope: !6809)
!6821 = !DILocation(line: 39, column: 2, scope: !6802)
!6822 = !DILocation(line: 40, column: 1, scope: !6802)
!6823 = distinct !DISubprogram(name: "debug_check_no_locks_held", scope: !6824, file: !6824, line: 70, type: !3175, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6824 = !DIFile(filename: "./include/linux/debug_locks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f2ca58272fdb5544dbc38c2c64cca117")
!6825 = !DILocation(line: 72, column: 1, scope: !6823)
!6826 = !DISubprogram(name: "__refrigerator", scope: !6286, file: !6286, line: 45, type: !6827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6827 = !DISubroutineType(types: !6828)
!6828 = !{!859, !859}
!6829 = distinct !DISubprogram(name: "arch_static_branch", scope: !6830, file: !6830, line: 25, type: !6831, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6834)
!6830 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!6831 = !DISubroutineType(types: !6832)
!6832 = !{!859, !6833, !859}
!6833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!6834 = !{!6835, !6836, !6837}
!6835 = !DILocalVariable(name: "key", arg: 1, scope: !6829, file: !6830, line: 25, type: !6833)
!6836 = !DILocalVariable(name: "branch", arg: 2, scope: !6829, file: !6830, line: 25, type: !859)
!6837 = !DILabel(scope: !6829, name: "l_yes", file: !6830, line: 33)
!6838 = !DILocation(line: 25, column: 67, scope: !6829)
!6839 = !DILocation(line: 25, column: 77, scope: !6829)
!6840 = !DILocation(line: 30, column: 13, scope: !6829)
!6841 = !DILocation(line: 30, column: 28, scope: !6829)
!6842 = !DILocation(line: 30, column: 26, scope: !6829)
!6843 = !DILocation(line: 27, column: 2, scope: !6829)
!6844 = !{i64 654063, i64 654107, i64 2148138790, i64 2148138811, i64 2148138837, i64 2148138870, i64 2148138904, i64 2148138928}
!6845 = !DILocation(line: 32, column: 2, scope: !6829)
!6846 = !DILocation(line: 33, column: 1, scope: !6829)
!6847 = !DILocation(line: 34, column: 2, scope: !6829)
!6848 = !DILocation(line: 35, column: 1, scope: !6829)
!6849 = !DISubprogram(name: "freezing_slow_path", scope: !6286, file: !6286, line: 29, type: !6803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6850 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6738, file: !6738, line: 66, type: !6739, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6851)
!6851 = !{!6852, !6853}
!6852 = !DILocalVariable(name: "v", arg: 1, scope: !6850, file: !6738, line: 66, type: !6741)
!6853 = !DILocalVariable(name: "size", arg: 2, scope: !6850, file: !6738, line: 66, type: !36)
!6854 = !DILocation(line: 66, column: 73, scope: !6850)
!6855 = !DILocation(line: 66, column: 83, scope: !6850)
!6856 = !DILocation(line: 68, column: 19, scope: !6850)
!6857 = !DILocation(line: 68, column: 22, scope: !6850)
!6858 = !DILocation(line: 68, column: 2, scope: !6850)
!6859 = !DILocation(line: 69, column: 2, scope: !6850)
!6860 = !DILocation(line: 70, column: 1, scope: !6850)
!6861 = distinct !DISubprogram(name: "raw_atomic_read", scope: !6862, file: !6862, line: 442, type: !6432, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6863)
!6862 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6863 = !{!6864}
!6864 = !DILocalVariable(name: "v", arg: 1, scope: !6861, file: !6862, line: 442, type: !6434)
!6865 = !DILocation(line: 442, column: 33, scope: !6861)
!6866 = !DILocation(line: 444, column: 26, scope: !6861)
!6867 = !DILocation(line: 444, column: 9, scope: !6861)
!6868 = !DILocation(line: 444, column: 2, scope: !6861)
!6869 = distinct !DISubprogram(name: "kasan_check_read", scope: !6870, file: !6870, line: 40, type: !6871, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6873)
!6870 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6871 = !DISubroutineType(types: !6872)
!6872 = !{!859, !6741, !7}
!6873 = !{!6874, !6875}
!6874 = !DILocalVariable(name: "p", arg: 1, scope: !6869, file: !6870, line: 40, type: !6741)
!6875 = !DILocalVariable(name: "size", arg: 2, scope: !6869, file: !6870, line: 40, type: !7)
!6876 = !DILocation(line: 40, column: 58, scope: !6869)
!6877 = !DILocation(line: 40, column: 74, scope: !6869)
!6878 = !DILocation(line: 42, column: 2, scope: !6869)
!6879 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6880, file: !6880, line: 229, type: !6881, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6883)
!6880 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6881 = !DISubroutineType(types: !6882)
!6882 = !{null, !6741, !36, !23}
!6883 = !{!6884, !6885, !6886}
!6884 = !DILocalVariable(name: "ptr", arg: 1, scope: !6879, file: !6880, line: 229, type: !6741)
!6885 = !DILocalVariable(name: "size", arg: 2, scope: !6879, file: !6880, line: 229, type: !36)
!6886 = !DILocalVariable(name: "type", arg: 3, scope: !6879, file: !6880, line: 230, type: !23)
!6887 = !DILocation(line: 229, column: 60, scope: !6879)
!6888 = !DILocation(line: 229, column: 72, scope: !6879)
!6889 = !DILocation(line: 230, column: 15, scope: !6879)
!6890 = !DILocation(line: 230, column: 23, scope: !6879)
!6891 = distinct !DISubprogram(name: "arch_atomic_read", scope: !6892, file: !6892, line: 17, type: !6432, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6893)
!6892 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6893 = !{!6894}
!6894 = !DILocalVariable(name: "v", arg: 1, scope: !6891, file: !6892, line: 17, type: !6434)
!6895 = !DILocation(line: 17, column: 61, scope: !6891)
!6896 = !DILocation(line: 23, column: 9, scope: !6891)
!6897 = !DILocation(line: 23, column: 2, scope: !6891)
!6898 = distinct !DISubprogram(name: "kmalloc", scope: !317, file: !317, line: 591, type: !6500, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6899)
!6899 = !{!6900, !6901, !6902}
!6900 = !DILocalVariable(name: "size", arg: 1, scope: !6898, file: !317, line: 591, type: !36)
!6901 = !DILocalVariable(name: "flags", arg: 2, scope: !6898, file: !317, line: 591, type: !327)
!6902 = !DILocalVariable(name: "index", scope: !6903, file: !317, line: 594, type: !7)
!6903 = distinct !DILexicalBlock(scope: !6904, file: !317, line: 593, column: 42)
!6904 = distinct !DILexicalBlock(scope: !6898, file: !317, line: 593, column: 6)
!6905 = !DILocation(line: 591, column: 61, scope: !6898)
!6906 = !DILocation(line: 591, column: 73, scope: !6898)
!6907 = !DILocation(line: 593, column: 27, scope: !6904)
!6908 = !DILocation(line: 593, column: 6, scope: !6904)
!6909 = !DILocation(line: 593, column: 33, scope: !6904)
!6910 = !DILocation(line: 593, column: 36, scope: !6904)
!6911 = !DILocation(line: 593, column: 6, scope: !6898)
!6912 = !DILocation(line: 594, column: 3, scope: !6903)
!6913 = !DILocation(line: 594, column: 16, scope: !6903)
!6914 = !DILocation(line: 596, column: 7, scope: !6915)
!6915 = distinct !DILexicalBlock(scope: !6903, file: !317, line: 596, column: 7)
!6916 = !DILocation(line: 596, column: 12, scope: !6915)
!6917 = !DILocation(line: 596, column: 7, scope: !6903)
!6918 = !DILocation(line: 597, column: 25, scope: !6915)
!6919 = !DILocation(line: 597, column: 31, scope: !6915)
!6920 = !DILocation(line: 597, column: 11, scope: !6915)
!6921 = !DILocation(line: 597, column: 4, scope: !6915)
!6922 = !DILocation(line: 599, column: 11, scope: !6903)
!6923 = !DILocation(line: 599, column: 9, scope: !6903)
!6924 = !DILocation(line: 601, column: 33, scope: !6903)
!6925 = !DILocation(line: 601, column: 40, scope: !6903)
!6926 = !DILocation(line: 601, column: 20, scope: !6903)
!6927 = !DILocation(line: 601, column: 5, scope: !6903)
!6928 = !DILocation(line: 601, column: 51, scope: !6903)
!6929 = !DILocation(line: 602, column: 5, scope: !6903)
!6930 = !DILocation(line: 602, column: 12, scope: !6903)
!6931 = !DILocation(line: 600, column: 10, scope: !6903)
!6932 = !DILocation(line: 600, column: 3, scope: !6903)
!6933 = !DILocation(line: 603, column: 2, scope: !6904)
!6934 = !DILocation(line: 604, column: 19, scope: !6898)
!6935 = !DILocation(line: 604, column: 25, scope: !6898)
!6936 = !DILocation(line: 604, column: 9, scope: !6898)
!6937 = !DILocation(line: 604, column: 2, scope: !6898)
!6938 = !DILocation(line: 605, column: 1, scope: !6898)
!6939 = !DISubprogram(name: "kmalloc_large", scope: !317, file: !317, line: 531, type: !6500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6940 = distinct !DISubprogram(name: "__kmalloc_index", scope: !317, file: !317, line: 444, type: !6941, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6943)
!6941 = !DISubroutineType(types: !6942)
!6942 = !{!7, !36, !859}
!6943 = !{!6944, !6945}
!6944 = !DILocalVariable(name: "size", arg: 1, scope: !6940, file: !317, line: 444, type: !36)
!6945 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6940, file: !317, line: 445, type: !859)
!6946 = !DILocation(line: 444, column: 60, scope: !6940)
!6947 = !DILocation(line: 445, column: 16, scope: !6940)
!6948 = !DILocation(line: 447, column: 7, scope: !6949)
!6949 = distinct !DILexicalBlock(scope: !6940, file: !317, line: 447, column: 6)
!6950 = !DILocation(line: 447, column: 6, scope: !6940)
!6951 = !DILocation(line: 448, column: 3, scope: !6949)
!6952 = !DILocation(line: 450, column: 6, scope: !6953)
!6953 = distinct !DILexicalBlock(scope: !6940, file: !317, line: 450, column: 6)
!6954 = !DILocation(line: 450, column: 11, scope: !6953)
!6955 = !DILocation(line: 450, column: 6, scope: !6940)
!6956 = !DILocation(line: 451, column: 3, scope: !6953)
!6957 = !DILocation(line: 453, column: 32, scope: !6958)
!6958 = distinct !DILexicalBlock(scope: !6940, file: !317, line: 453, column: 6)
!6959 = !DILocation(line: 453, column: 37, scope: !6958)
!6960 = !DILocation(line: 453, column: 42, scope: !6958)
!6961 = !DILocation(line: 453, column: 45, scope: !6958)
!6962 = !DILocation(line: 453, column: 50, scope: !6958)
!6963 = !DILocation(line: 453, column: 6, scope: !6940)
!6964 = !DILocation(line: 454, column: 3, scope: !6958)
!6965 = !DILocation(line: 455, column: 32, scope: !6966)
!6966 = distinct !DILexicalBlock(scope: !6940, file: !317, line: 455, column: 6)
!6967 = !DILocation(line: 455, column: 37, scope: !6966)
!6968 = !DILocation(line: 455, column: 43, scope: !6966)
!6969 = !DILocation(line: 455, column: 46, scope: !6966)
!6970 = !DILocation(line: 455, column: 51, scope: !6966)
!6971 = !DILocation(line: 455, column: 6, scope: !6940)
!6972 = !DILocation(line: 456, column: 3, scope: !6966)
!6973 = !DILocation(line: 457, column: 6, scope: !6974)
!6974 = distinct !DILexicalBlock(scope: !6940, file: !317, line: 457, column: 6)
!6975 = !DILocation(line: 457, column: 11, scope: !6974)
!6976 = !DILocation(line: 457, column: 6, scope: !6940)
!6977 = !DILocation(line: 457, column: 26, scope: !6974)
!6978 = !DILocation(line: 458, column: 6, scope: !6979)
!6979 = distinct !DILexicalBlock(scope: !6940, file: !317, line: 458, column: 6)
!6980 = !DILocation(line: 458, column: 11, scope: !6979)
!6981 = !DILocation(line: 458, column: 6, scope: !6940)
!6982 = !DILocation(line: 458, column: 26, scope: !6979)
!6983 = !DILocation(line: 459, column: 6, scope: !6984)
!6984 = distinct !DILexicalBlock(scope: !6940, file: !317, line: 459, column: 6)
!6985 = !DILocation(line: 459, column: 11, scope: !6984)
!6986 = !DILocation(line: 459, column: 6, scope: !6940)
!6987 = !DILocation(line: 459, column: 26, scope: !6984)
!6988 = !DILocation(line: 460, column: 6, scope: !6989)
!6989 = distinct !DILexicalBlock(scope: !6940, file: !317, line: 460, column: 6)
!6990 = !DILocation(line: 460, column: 11, scope: !6989)
!6991 = !DILocation(line: 460, column: 6, scope: !6940)
!6992 = !DILocation(line: 460, column: 26, scope: !6989)
!6993 = !DILocation(line: 461, column: 6, scope: !6994)
!6994 = distinct !DILexicalBlock(scope: !6940, file: !317, line: 461, column: 6)
!6995 = !DILocation(line: 461, column: 11, scope: !6994)
!6996 = !DILocation(line: 461, column: 6, scope: !6940)
!6997 = !DILocation(line: 461, column: 26, scope: !6994)
!6998 = !DILocation(line: 462, column: 6, scope: !6999)
!6999 = distinct !DILexicalBlock(scope: !6940, file: !317, line: 462, column: 6)
!7000 = !DILocation(line: 462, column: 11, scope: !6999)
!7001 = !DILocation(line: 462, column: 6, scope: !6940)
!7002 = !DILocation(line: 462, column: 26, scope: !6999)
!7003 = !DILocation(line: 463, column: 6, scope: !7004)
!7004 = distinct !DILexicalBlock(scope: !6940, file: !317, line: 463, column: 6)
!7005 = !DILocation(line: 463, column: 11, scope: !7004)
!7006 = !DILocation(line: 463, column: 6, scope: !6940)
!7007 = !DILocation(line: 463, column: 26, scope: !7004)
!7008 = !DILocation(line: 464, column: 6, scope: !7009)
!7009 = distinct !DILexicalBlock(scope: !6940, file: !317, line: 464, column: 6)
!7010 = !DILocation(line: 464, column: 11, scope: !7009)
!7011 = !DILocation(line: 464, column: 6, scope: !6940)
!7012 = !DILocation(line: 464, column: 26, scope: !7009)
!7013 = !DILocation(line: 465, column: 6, scope: !7014)
!7014 = distinct !DILexicalBlock(scope: !6940, file: !317, line: 465, column: 6)
!7015 = !DILocation(line: 465, column: 11, scope: !7014)
!7016 = !DILocation(line: 465, column: 6, scope: !6940)
!7017 = !DILocation(line: 465, column: 26, scope: !7014)
!7018 = !DILocation(line: 466, column: 6, scope: !7019)
!7019 = distinct !DILexicalBlock(scope: !6940, file: !317, line: 466, column: 6)
!7020 = !DILocation(line: 466, column: 11, scope: !7019)
!7021 = !DILocation(line: 466, column: 6, scope: !6940)
!7022 = !DILocation(line: 466, column: 26, scope: !7019)
!7023 = !DILocation(line: 467, column: 6, scope: !7024)
!7024 = distinct !DILexicalBlock(scope: !6940, file: !317, line: 467, column: 6)
!7025 = !DILocation(line: 467, column: 11, scope: !7024)
!7026 = !DILocation(line: 467, column: 6, scope: !6940)
!7027 = !DILocation(line: 467, column: 26, scope: !7024)
!7028 = !DILocation(line: 468, column: 6, scope: !7029)
!7029 = distinct !DILexicalBlock(scope: !6940, file: !317, line: 468, column: 6)
!7030 = !DILocation(line: 468, column: 11, scope: !7029)
!7031 = !DILocation(line: 468, column: 6, scope: !6940)
!7032 = !DILocation(line: 468, column: 26, scope: !7029)
!7033 = !DILocation(line: 469, column: 6, scope: !7034)
!7034 = distinct !DILexicalBlock(scope: !6940, file: !317, line: 469, column: 6)
!7035 = !DILocation(line: 469, column: 11, scope: !7034)
!7036 = !DILocation(line: 469, column: 6, scope: !6940)
!7037 = !DILocation(line: 469, column: 26, scope: !7034)
!7038 = !DILocation(line: 470, column: 6, scope: !7039)
!7039 = distinct !DILexicalBlock(scope: !6940, file: !317, line: 470, column: 6)
!7040 = !DILocation(line: 470, column: 11, scope: !7039)
!7041 = !DILocation(line: 470, column: 6, scope: !6940)
!7042 = !DILocation(line: 470, column: 26, scope: !7039)
!7043 = !DILocation(line: 471, column: 6, scope: !7044)
!7044 = distinct !DILexicalBlock(scope: !6940, file: !317, line: 471, column: 6)
!7045 = !DILocation(line: 471, column: 11, scope: !7044)
!7046 = !DILocation(line: 471, column: 6, scope: !6940)
!7047 = !DILocation(line: 471, column: 26, scope: !7044)
!7048 = !DILocation(line: 472, column: 6, scope: !7049)
!7049 = distinct !DILexicalBlock(scope: !6940, file: !317, line: 472, column: 6)
!7050 = !DILocation(line: 472, column: 11, scope: !7049)
!7051 = !DILocation(line: 472, column: 6, scope: !6940)
!7052 = !DILocation(line: 472, column: 26, scope: !7049)
!7053 = !DILocation(line: 473, column: 6, scope: !7054)
!7054 = distinct !DILexicalBlock(scope: !6940, file: !317, line: 473, column: 6)
!7055 = !DILocation(line: 473, column: 11, scope: !7054)
!7056 = !DILocation(line: 473, column: 6, scope: !6940)
!7057 = !DILocation(line: 473, column: 26, scope: !7054)
!7058 = !DILocation(line: 474, column: 6, scope: !7059)
!7059 = distinct !DILexicalBlock(scope: !6940, file: !317, line: 474, column: 6)
!7060 = !DILocation(line: 474, column: 11, scope: !7059)
!7061 = !DILocation(line: 474, column: 6, scope: !6940)
!7062 = !DILocation(line: 474, column: 27, scope: !7059)
!7063 = !DILocation(line: 475, column: 6, scope: !7064)
!7064 = distinct !DILexicalBlock(scope: !6940, file: !317, line: 475, column: 6)
!7065 = !DILocation(line: 475, column: 11, scope: !7064)
!7066 = !DILocation(line: 475, column: 6, scope: !6940)
!7067 = !DILocation(line: 475, column: 32, scope: !7064)
!7068 = !DILocation(line: 477, column: 50, scope: !7069)
!7069 = distinct !DILexicalBlock(scope: !6940, file: !317, line: 477, column: 6)
!7070 = !DILocation(line: 477, column: 6, scope: !6940)
!7071 = !DILocation(line: 478, column: 3, scope: !7069)
!7072 = !DILocation(line: 478, column: 3, scope: !7073)
!7073 = distinct !DILexicalBlock(scope: !7074, file: !317, line: 478, column: 3)
!7074 = distinct !DILexicalBlock(scope: !7069, file: !317, line: 478, column: 3)
!7075 = !{i32 -2141402184}
!7076 = !DILocation(line: 478, column: 3, scope: !7074)
!7077 = !DILocation(line: 480, column: 3, scope: !7069)
!7078 = !DILocation(line: 480, column: 3, scope: !7079)
!7079 = distinct !DILexicalBlock(scope: !7069, file: !317, line: 480, column: 3)
!7080 = !DILocation(line: 480, column: 3, scope: !7081)
!7081 = distinct !DILexicalBlock(scope: !7079, file: !317, line: 480, column: 3)
!7082 = !DILocation(line: 480, column: 3, scope: !7083)
!7083 = distinct !DILexicalBlock(scope: !7079, file: !317, line: 480, column: 3)
!7084 = !{i64 2153565315, i64 2153565344, i64 2153565390, i64 2153565448, i64 2153565502, i64 2153565556, i64 2153565611, i64 2153565642}
!7085 = !DILocation(line: 483, column: 2, scope: !6940)
!7086 = !DILocation(line: 484, column: 1, scope: !6940)
!7087 = !DISubprogram(name: "kmalloc_trace", scope: !317, file: !317, line: 525, type: !7088, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7088 = !DISubroutineType(types: !7089)
!7089 = !{!21, !792, !327, !36}
!7090 = distinct !DISubprogram(name: "kmalloc_type", scope: !317, file: !317, line: 401, type: !7091, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7093)
!7091 = !DISubroutineType(types: !7092)
!7092 = !{!316, !327, !40}
!7093 = !{!7094, !7095}
!7094 = !DILocalVariable(name: "flags", arg: 1, scope: !7090, file: !317, line: 401, type: !327)
!7095 = !DILocalVariable(name: "caller", arg: 2, scope: !7090, file: !317, line: 401, type: !40)
!7096 = !DILocation(line: 401, column: 67, scope: !7090)
!7097 = !DILocation(line: 401, column: 88, scope: !7090)
!7098 = !DILocation(line: 407, column: 6, scope: !7099)
!7099 = distinct !DILexicalBlock(scope: !7090, file: !317, line: 407, column: 6)
!7100 = !DILocation(line: 407, column: 6, scope: !7090)
!7101 = !DILocation(line: 413, column: 3, scope: !7099)
!7102 = !DILocation(line: 423, column: 38, scope: !7103)
!7103 = distinct !DILexicalBlock(scope: !7090, file: !317, line: 423, column: 6)
!7104 = !DILocation(line: 423, column: 44, scope: !7103)
!7105 = !DILocation(line: 423, column: 6, scope: !7090)
!7106 = !DILocation(line: 424, column: 3, scope: !7103)
!7107 = !DILocation(line: 426, column: 3, scope: !7108)
!7108 = distinct !DILexicalBlock(scope: !7090, file: !317, line: 425, column: 6)
!7109 = !DILocation(line: 429, column: 1, scope: !7090)
!7110 = !DISubprogram(name: "__kmalloc", scope: !317, file: !317, line: 488, type: !6500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7111 = !DISubprogram(name: "__compiletime_assert_255", scope: !317, file: !317, line: 478, type: !3175, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7112 = distinct !DISubprogram(name: "call_usermodehelper_exec_sync", scope: !3, file: !3, line: 127, type: !6135, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7113)
!7113 = !{!7114, !7115}
!7114 = !DILocalVariable(name: "sub_info", arg: 1, scope: !7112, file: !3, line: 127, type: !6118)
!7115 = !DILocalVariable(name: "pid", scope: !7112, file: !3, line: 129, type: !5252)
!7116 = !DILocation(line: 127, column: 67, scope: !7112)
!7117 = !DILocation(line: 129, column: 2, scope: !7112)
!7118 = !DILocation(line: 129, column: 8, scope: !7112)
!7119 = !DILocation(line: 132, column: 2, scope: !7112)
!7120 = !DILocation(line: 133, column: 57, scope: !7112)
!7121 = !DILocation(line: 133, column: 8, scope: !7112)
!7122 = !DILocation(line: 133, column: 6, scope: !7112)
!7123 = !DILocation(line: 134, column: 6, scope: !7124)
!7124 = distinct !DILexicalBlock(scope: !7112, file: !3, line: 134, column: 6)
!7125 = !DILocation(line: 134, column: 10, scope: !7124)
!7126 = !DILocation(line: 134, column: 6, scope: !7112)
!7127 = !DILocation(line: 135, column: 22, scope: !7124)
!7128 = !DILocation(line: 135, column: 3, scope: !7124)
!7129 = !DILocation(line: 135, column: 13, scope: !7124)
!7130 = !DILocation(line: 135, column: 20, scope: !7124)
!7131 = !DILocation(line: 137, column: 15, scope: !7124)
!7132 = !DILocation(line: 137, column: 21, scope: !7124)
!7133 = !DILocation(line: 137, column: 31, scope: !7124)
!7134 = !DILocation(line: 137, column: 3, scope: !7124)
!7135 = !DILocation(line: 140, column: 2, scope: !7112)
!7136 = !DILocation(line: 141, column: 15, scope: !7112)
!7137 = !DILocation(line: 141, column: 2, scope: !7112)
!7138 = !DILocation(line: 142, column: 1, scope: !7112)
!7139 = !DISubprogram(name: "user_mode_thread", scope: !7140, file: !7140, line: 102, type: !7141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7140 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef3d4d4bfe7d22703d2dead2224ab376")
!7141 = !DISubroutineType(types: !7142)
!7142 = !{!5252, !7143, !21, !40}
!7143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7144, size: 64)
!7144 = !DISubroutineType(types: !7145)
!7145 = !{!23, !21}
!7146 = distinct !DISubprogram(name: "call_usermodehelper_exec_async", scope: !3, file: !3, line: 64, type: !7144, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7147)
!7147 = !{!7148, !7149, !7150, !7151, !7152}
!7148 = !DILocalVariable(name: "data", arg: 1, scope: !7146, file: !3, line: 64, type: !21)
!7149 = !DILocalVariable(name: "sub_info", scope: !7146, file: !3, line: 66, type: !6118)
!7150 = !DILocalVariable(name: "new", scope: !7146, file: !3, line: 67, type: !5068)
!7151 = !DILocalVariable(name: "retval", scope: !7146, file: !3, line: 68, type: !23)
!7152 = !DILabel(scope: !7146, name: "out", file: !3, line: 113)
!7153 = !DILocation(line: 64, column: 49, scope: !7146)
!7154 = !DILocation(line: 66, column: 2, scope: !7146)
!7155 = !DILocation(line: 66, column: 26, scope: !7146)
!7156 = !DILocation(line: 66, column: 37, scope: !7146)
!7157 = !DILocation(line: 67, column: 2, scope: !7146)
!7158 = !DILocation(line: 67, column: 15, scope: !7146)
!7159 = !DILocation(line: 68, column: 2, scope: !7146)
!7160 = !DILocation(line: 68, column: 6, scope: !7146)
!7161 = !DILocation(line: 70, column: 17, scope: !7146)
!7162 = !DILocation(line: 70, column: 26, scope: !7146)
!7163 = !DILocation(line: 70, column: 35, scope: !7146)
!7164 = !DILocation(line: 70, column: 2, scope: !7146)
!7165 = !DILocation(line: 71, column: 24, scope: !7146)
!7166 = !DILocation(line: 71, column: 2, scope: !7146)
!7167 = !DILocation(line: 72, column: 19, scope: !7146)
!7168 = !DILocation(line: 72, column: 28, scope: !7146)
!7169 = !DILocation(line: 72, column: 37, scope: !7146)
!7170 = !DILocation(line: 72, column: 2, scope: !7146)
!7171 = !DILocation(line: 80, column: 2, scope: !7146)
!7172 = !DILocation(line: 80, column: 11, scope: !7146)
!7173 = !DILocation(line: 80, column: 15, scope: !7146)
!7174 = !DILocation(line: 80, column: 21, scope: !7146)
!7175 = !DILocation(line: 86, column: 16, scope: !7146)
!7176 = !DILocation(line: 86, column: 2, scope: !7146)
!7177 = !DILocation(line: 88, column: 9, scope: !7146)
!7178 = !DILocation(line: 89, column: 28, scope: !7146)
!7179 = !DILocation(line: 89, column: 8, scope: !7146)
!7180 = !DILocation(line: 89, column: 6, scope: !7146)
!7181 = !DILocation(line: 90, column: 7, scope: !7182)
!7182 = distinct !DILexicalBlock(scope: !7146, file: !3, line: 90, column: 6)
!7183 = !DILocation(line: 90, column: 6, scope: !7146)
!7184 = !DILocation(line: 91, column: 3, scope: !7182)
!7185 = !DILocation(line: 93, column: 2, scope: !7146)
!7186 = !DILocation(line: 94, column: 2, scope: !7146)
!7187 = !DILocation(line: 94, column: 7, scope: !7146)
!7188 = !DILocation(line: 94, column: 18, scope: !7146)
!7189 = !DILocation(line: 94, column: 53, scope: !7146)
!7190 = !DILocation(line: 94, column: 58, scope: !7146)
!7191 = !DILocation(line: 95, column: 2, scope: !7146)
!7192 = !DILocation(line: 95, column: 7, scope: !7146)
!7193 = !DILocation(line: 95, column: 25, scope: !7146)
!7194 = !DILocation(line: 96, column: 11, scope: !7146)
!7195 = !DILocation(line: 96, column: 16, scope: !7146)
!7196 = !DILocation(line: 97, column: 2, scope: !7146)
!7197 = !DILocation(line: 99, column: 6, scope: !7198)
!7198 = distinct !DILexicalBlock(scope: !7146, file: !3, line: 99, column: 6)
!7199 = !DILocation(line: 99, column: 16, scope: !7198)
!7200 = !DILocation(line: 99, column: 6, scope: !7146)
!7201 = !DILocation(line: 100, column: 12, scope: !7202)
!7202 = distinct !DILexicalBlock(scope: !7198, file: !3, line: 99, column: 22)
!7203 = !DILocation(line: 100, column: 22, scope: !7202)
!7204 = !DILocation(line: 100, column: 27, scope: !7202)
!7205 = !DILocation(line: 100, column: 37, scope: !7202)
!7206 = !DILocation(line: 100, column: 10, scope: !7202)
!7207 = !DILocation(line: 101, column: 7, scope: !7208)
!7208 = distinct !DILexicalBlock(scope: !7202, file: !3, line: 101, column: 7)
!7209 = !DILocation(line: 101, column: 7, scope: !7202)
!7210 = !DILocation(line: 102, column: 16, scope: !7211)
!7211 = distinct !DILexicalBlock(scope: !7208, file: !3, line: 101, column: 15)
!7212 = !DILocation(line: 102, column: 4, scope: !7211)
!7213 = !DILocation(line: 103, column: 4, scope: !7211)
!7214 = !DILocation(line: 105, column: 2, scope: !7202)
!7215 = !DILocation(line: 107, column: 15, scope: !7146)
!7216 = !DILocation(line: 107, column: 2, scope: !7146)
!7217 = !DILocation(line: 109, column: 2, scope: !7146)
!7218 = !DILocation(line: 110, column: 25, scope: !7146)
!7219 = !DILocation(line: 110, column: 35, scope: !7146)
!7220 = !DILocation(line: 111, column: 32, scope: !7146)
!7221 = !DILocation(line: 111, column: 42, scope: !7146)
!7222 = !DILocation(line: 112, column: 32, scope: !7146)
!7223 = !DILocation(line: 112, column: 42, scope: !7146)
!7224 = !DILocation(line: 110, column: 11, scope: !7146)
!7225 = !DILocation(line: 110, column: 9, scope: !7146)
!7226 = !DILocation(line: 110, column: 2, scope: !7146)
!7227 = !DILocation(line: 113, column: 1, scope: !7146)
!7228 = !DILocation(line: 114, column: 21, scope: !7146)
!7229 = !DILocation(line: 114, column: 2, scope: !7146)
!7230 = !DILocation(line: 114, column: 12, scope: !7146)
!7231 = !DILocation(line: 114, column: 19, scope: !7146)
!7232 = !DILocation(line: 119, column: 8, scope: !7233)
!7233 = distinct !DILexicalBlock(scope: !7146, file: !3, line: 119, column: 6)
!7234 = !DILocation(line: 119, column: 18, scope: !7233)
!7235 = !DILocation(line: 119, column: 23, scope: !7233)
!7236 = !DILocation(line: 119, column: 6, scope: !7146)
!7237 = !DILocation(line: 120, column: 16, scope: !7233)
!7238 = !DILocation(line: 120, column: 3, scope: !7233)
!7239 = !DILocation(line: 121, column: 7, scope: !7240)
!7240 = distinct !DILexicalBlock(scope: !7146, file: !3, line: 121, column: 6)
!7241 = !DILocation(line: 121, column: 6, scope: !7146)
!7242 = !DILocation(line: 124, column: 1, scope: !7146)
!7243 = !DILocation(line: 122, column: 3, scope: !7240)
!7244 = !DILocation(line: 123, column: 2, scope: !7146)
!7245 = distinct !DISubprogram(name: "umh_complete", scope: !3, file: !3, line: 47, type: !6135, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7246)
!7246 = !{!7247, !7248, !7249, !7251}
!7247 = !DILocalVariable(name: "sub_info", arg: 1, scope: !7245, file: !3, line: 47, type: !6118)
!7248 = !DILocalVariable(name: "comp", scope: !7245, file: !3, line: 49, type: !1023)
!7249 = !DILocalVariable(name: "__ai_ptr", scope: !7250, file: !3, line: 49, type: !6598)
!7250 = distinct !DILexicalBlock(scope: !7245, file: !3, line: 49, column: 28)
!7251 = !DILocalVariable(name: "__ret", scope: !7252, file: !3, line: 49, type: !1023)
!7252 = distinct !DILexicalBlock(scope: !7250, file: !3, line: 49, column: 28)
!7253 = !DILocation(line: 47, column: 50, scope: !7245)
!7254 = !DILocation(line: 49, column: 2, scope: !7245)
!7255 = !DILocation(line: 49, column: 21, scope: !7245)
!7256 = !DILocation(line: 49, column: 28, scope: !7250)
!7257 = !DILocation(line: 49, column: 28, scope: !7258)
!7258 = distinct !DILexicalBlock(scope: !7250, file: !3, line: 49, column: 28)
!7259 = !DILocation(line: 49, column: 28, scope: !7252)
!7260 = !{i64 2156190499}
!7261 = !DILocation(line: 49, column: 28, scope: !7245)
!7262 = !DILocation(line: 55, column: 6, scope: !7263)
!7263 = distinct !DILexicalBlock(scope: !7245, file: !3, line: 55, column: 6)
!7264 = !DILocation(line: 55, column: 6, scope: !7245)
!7265 = !DILocation(line: 56, column: 12, scope: !7263)
!7266 = !DILocation(line: 56, column: 3, scope: !7263)
!7267 = !DILocation(line: 58, column: 32, scope: !7263)
!7268 = !DILocation(line: 58, column: 3, scope: !7263)
!7269 = !DILocation(line: 59, column: 1, scope: !7245)
!7270 = !DISubprogram(name: "kernel_sigaction", scope: !794, file: !794, line: 295, type: !7271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7271 = !DISubroutineType(types: !7272)
!7272 = !{null, !23, !5603}
!7273 = !DISubprogram(name: "kernel_wait", scope: !7140, file: !7140, line: 104, type: !7274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7274 = !DISubroutineType(types: !7275)
!7275 = !{!23, !5252, !2910}
!7276 = distinct !DISubprogram(name: "spin_lock_irq", scope: !7277, file: !7277, line: 374, type: !7278, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7280)
!7277 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!7278 = !DISubroutineType(types: !7279)
!7279 = !{null, !1854}
!7280 = !{!7281}
!7281 = !DILocalVariable(name: "lock", arg: 1, scope: !7276, file: !7277, line: 374, type: !1854)
!7282 = !DILocation(line: 374, column: 55, scope: !7276)
!7283 = !DILocation(line: 376, column: 2, scope: !7276)
!7284 = !DILocation(line: 377, column: 1, scope: !7276)
!7285 = !DISubprogram(name: "flush_signal_handlers", scope: !5398, file: !5398, line: 277, type: !7286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7286 = !DISubroutineType(types: !7287)
!7287 = !{null, !329, !23}
!7288 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !7277, file: !7277, line: 399, type: !7278, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7289)
!7289 = !{!7290}
!7290 = !DILocalVariable(name: "lock", arg: 1, scope: !7288, file: !7277, line: 399, type: !1854)
!7291 = !DILocation(line: 399, column: 57, scope: !7288)
!7292 = !DILocation(line: 401, column: 2, scope: !7288)
!7293 = !DILocation(line: 402, column: 1, scope: !7288)
!7294 = !DISubprogram(name: "set_user_nice", scope: !331, file: !331, line: 1913, type: !7295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7295 = !DISubroutineType(types: !7296)
!7296 = !{null, !329, !1083}
!7297 = !DISubprogram(name: "prepare_kernel_cred", scope: !1100, file: !1100, line: 159, type: !7298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7298 = !DISubroutineType(types: !7299)
!7299 = !{!5068, !329}
!7300 = distinct !DISubprogram(name: "spin_lock", scope: !7277, file: !7277, line: 349, type: !7278, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7301)
!7301 = !{!7302}
!7302 = !DILocalVariable(name: "lock", arg: 1, scope: !7300, file: !7277, line: 349, type: !1854)
!7303 = !DILocation(line: 349, column: 51, scope: !7300)
!7304 = !DILocation(line: 351, column: 2, scope: !7300)
!7305 = !DILocation(line: 352, column: 1, scope: !7300)
!7306 = distinct !DISubprogram(name: "cap_intersect", scope: !1114, file: !1114, line: 83, type: !7307, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7310)
!7307 = !DISubroutineType(types: !7308)
!7308 = !{!1113, !7309, !7309}
!7309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1113)
!7310 = !{!7311, !7312}
!7311 = !DILocalVariable(name: "a", arg: 1, scope: !7306, file: !1114, line: 83, type: !7309)
!7312 = !DILocalVariable(name: "b", arg: 2, scope: !7306, file: !1114, line: 84, type: !7309)
!7313 = !DILocation(line: 83, column: 61, scope: !7306)
!7314 = !DILocation(line: 84, column: 26, scope: !7306)
!7315 = !DILocation(line: 86, column: 24, scope: !7306)
!7316 = !DILocation(line: 86, column: 28, scope: !7306)
!7317 = !DILocation(line: 86, column: 36, scope: !7306)
!7318 = !DILocation(line: 86, column: 32, scope: !7306)
!7319 = !DILocation(line: 86, column: 2, scope: !7306)
!7320 = distinct !DISubprogram(name: "spin_unlock", scope: !7277, file: !7277, line: 389, type: !7278, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7321)
!7321 = !{!7322}
!7322 = !DILocalVariable(name: "lock", arg: 1, scope: !7320, file: !7277, line: 389, type: !1854)
!7323 = !DILocation(line: 389, column: 53, scope: !7320)
!7324 = !DILocation(line: 391, column: 2, scope: !7320)
!7325 = !DILocation(line: 392, column: 1, scope: !7320)
!7326 = !DISubprogram(name: "abort_creds", scope: !1100, file: !1100, line: 156, type: !7327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7327 = !DISubroutineType(types: !7328)
!7328 = !{null, !5068}
!7329 = !DISubprogram(name: "commit_creds", scope: !1100, file: !1100, line: 155, type: !7330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7330 = !DISubroutineType(types: !7331)
!7331 = !{!23, !5068}
!7332 = !DISubprogram(name: "wait_for_initramfs", scope: !7333, file: !7333, line: 23, type: !3175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7333 = !DIFile(filename: "./include/linux/initrd.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "445f4457d3f494083de3e7e5b8cf8893")
!7334 = !DISubprogram(name: "kernel_execve", scope: !5043, file: !5043, line: 133, type: !7335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7335 = !DISubroutineType(types: !7336)
!7336 = !{!23, !17, !6138, !6138}
!7337 = !DISubprogram(name: "do_exit", scope: !6177, file: !6177, line: 205, type: !7338, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7338 = !DISubroutineType(types: !7339)
!7339 = !{null, !1083}
!7340 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !7341, file: !7341, line: 29, type: !7342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7341 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!7342 = !DISubroutineType(types: !7343)
!7343 = !{null, !7344}
!7344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!7345 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !7341, file: !7341, line: 41, type: !7342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7346 = !DISubprogram(name: "_raw_spin_lock", scope: !7341, file: !7341, line: 22, type: !7342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7347 = !DISubprogram(name: "_raw_spin_unlock", scope: !7341, file: !7341, line: 39, type: !7342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7348 = !DISubprogram(name: "complete", scope: !1025, file: !1025, line: 118, type: !7349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7349 = !DISubroutineType(types: !7350)
!7350 = !{null, !1023}
!7351 = !DISubprogram(name: "kfree", scope: !317, file: !317, line: 227, type: !7352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7352 = !DISubroutineType(types: !7353)
!7353 = !{null, !2526}
!7354 = distinct !DISubprogram(name: "atomic_inc", scope: !6431, file: !6431, line: 433, type: !7355, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7358)
!7355 = !DISubroutineType(types: !7356)
!7356 = !{null, !7357}
!7357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!7358 = !{!7359}
!7359 = !DILocalVariable(name: "v", arg: 1, scope: !7354, file: !6431, line: 433, type: !7357)
!7360 = !DILocation(line: 433, column: 22, scope: !7354)
!7361 = !DILocation(line: 435, column: 31, scope: !7354)
!7362 = !DILocation(line: 435, column: 2, scope: !7354)
!7363 = !DILocation(line: 436, column: 17, scope: !7354)
!7364 = !DILocation(line: 436, column: 2, scope: !7354)
!7365 = !DILocation(line: 437, column: 1, scope: !7354)
!7366 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !6862, file: !6862, line: 976, type: !7355, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7367)
!7367 = !{!7368}
!7368 = !DILocalVariable(name: "v", arg: 1, scope: !7366, file: !6862, line: 976, type: !7357)
!7369 = !DILocation(line: 976, column: 26, scope: !7366)
!7370 = !DILocation(line: 979, column: 18, scope: !7366)
!7371 = !DILocation(line: 979, column: 2, scope: !7366)
!7372 = !DILocation(line: 983, column: 1, scope: !7366)
!7373 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !6892, file: !6892, line: 51, type: !7355, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7374)
!7374 = !{!7375}
!7375 = !DILocalVariable(name: "v", arg: 1, scope: !7373, file: !6892, line: 51, type: !7357)
!7376 = !DILocation(line: 51, column: 55, scope: !7373)
!7377 = !DILocation(line: 54, column: 16, scope: !7373)
!7378 = !DILocation(line: 54, column: 19, scope: !7373)
!7379 = !DILocation(line: 53, column: 2, scope: !7373)
!7380 = !{i64 2148795804, i64 2148795843, i64 2148795864, i64 2148795901, i64 2148795924, i64 2148795794}
!7381 = !DILocation(line: 55, column: 1, scope: !7373)
!7382 = !DISubprogram(name: "queue_work_on", scope: !109, file: !109, line: 496, type: !7383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7383 = !DISubroutineType(types: !7384)
!7384 = !{!859, !23, !3062, !995}
!7385 = distinct !DISubprogram(name: "kasan_check_write", scope: !6870, file: !6870, line: 44, type: !6871, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7386)
!7386 = !{!7387, !7388}
!7387 = !DILocalVariable(name: "p", arg: 1, scope: !7385, file: !6870, line: 44, type: !6741)
!7388 = !DILocalVariable(name: "size", arg: 2, scope: !7385, file: !6870, line: 44, type: !7)
!7389 = !DILocation(line: 44, column: 59, scope: !7385)
!7390 = !DILocation(line: 44, column: 75, scope: !7385)
!7391 = !DILocation(line: 46, column: 2, scope: !7385)
!7392 = distinct !DISubprogram(name: "atomic_dec_and_test", scope: !6431, file: !6431, line: 1372, type: !7393, scopeLine: 1373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7395)
!7393 = !DISubroutineType(types: !7394)
!7394 = !{!859, !7357}
!7395 = !{!7396}
!7396 = !DILocalVariable(name: "v", arg: 1, scope: !7392, file: !6431, line: 1372, type: !7357)
!7397 = !DILocation(line: 1372, column: 31, scope: !7392)
!7398 = !DILocation(line: 1374, column: 2, scope: !7392)
!7399 = !DILocation(line: 1374, column: 2, scope: !7400)
!7400 = distinct !DILexicalBlock(scope: !7392, file: !6431, line: 1374, column: 2)
!7401 = !DILocation(line: 1375, column: 31, scope: !7392)
!7402 = !DILocation(line: 1375, column: 2, scope: !7392)
!7403 = !DILocation(line: 1376, column: 33, scope: !7392)
!7404 = !DILocation(line: 1376, column: 9, scope: !7392)
!7405 = !DILocation(line: 1376, column: 2, scope: !7392)
!7406 = distinct !DISubprogram(name: "raw_atomic_dec_and_test", scope: !6862, file: !6862, line: 2254, type: !7393, scopeLine: 2255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7407)
!7407 = !{!7408}
!7408 = !DILocalVariable(name: "v", arg: 1, scope: !7406, file: !6862, line: 2254, type: !7357)
!7409 = !DILocation(line: 2254, column: 35, scope: !7406)
!7410 = !DILocation(line: 2257, column: 34, scope: !7406)
!7411 = !DILocation(line: 2257, column: 9, scope: !7406)
!7412 = !DILocation(line: 2257, column: 2, scope: !7406)
!7413 = distinct !DISubprogram(name: "arch_atomic_dec_and_test", scope: !6892, file: !6892, line: 65, type: !7393, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7414)
!7414 = !{!7415, !7416}
!7415 = !DILocalVariable(name: "v", arg: 1, scope: !7413, file: !6892, line: 65, type: !7357)
!7416 = !DILocalVariable(name: "c", scope: !7417, file: !6892, line: 67, type: !859)
!7417 = distinct !DILexicalBlock(scope: !7413, file: !6892, line: 67, column: 9)
!7418 = !DILocation(line: 65, column: 64, scope: !7413)
!7419 = !DILocation(line: 67, column: 9, scope: !7417)
!7420 = !{i64 2148797916, i64 2148797955, i64 2148797976, i64 2148798013, i64 2148798036, i64 2148798045, i64 2148798119}
!7421 = !DILocation(line: 67, column: 9, scope: !7413)
!7422 = !DILocation(line: 67, column: 2, scope: !7413)
!7423 = !DISubprogram(name: "__register_sysctl_init", scope: !13, file: !13, line: 237, type: !7424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7424 = !DISubroutineType(types: !7425)
!7425 = !{null, !17, !34, !17, !36}
!7426 = distinct !DISubprogram(name: "proc_cap_handler", scope: !3, file: !3, line: 498, type: !32, scopeLine: 500, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7427)
!7427 = !{!7428, !7429, !7430, !7431, !7432, !7433, !7434, !7436, !7437, !7439}
!7428 = !DILocalVariable(name: "table", arg: 1, scope: !7426, file: !3, line: 498, type: !34)
!7429 = !DILocalVariable(name: "write", arg: 2, scope: !7426, file: !3, line: 498, type: !23)
!7430 = !DILocalVariable(name: "buffer", arg: 3, scope: !7426, file: !3, line: 499, type: !21)
!7431 = !DILocalVariable(name: "lenp", arg: 4, scope: !7426, file: !3, line: 499, type: !35)
!7432 = !DILocalVariable(name: "ppos", arg: 5, scope: !7426, file: !3, line: 499, type: !41)
!7433 = !DILocalVariable(name: "t", scope: !7426, file: !3, line: 501, type: !14)
!7434 = !DILocalVariable(name: "cap_array", scope: !7426, file: !3, line: 502, type: !7435)
!7435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 128, elements: !2900)
!7436 = !DILocalVariable(name: "new_cap", scope: !7426, file: !3, line: 503, type: !1113)
!7437 = !DILocalVariable(name: "cap", scope: !7426, file: !3, line: 503, type: !7438)
!7438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!7439 = !DILocalVariable(name: "err", scope: !7426, file: !3, line: 504, type: !23)
!7440 = !DILocation(line: 498, column: 47, scope: !7426)
!7441 = !DILocation(line: 498, column: 58, scope: !7426)
!7442 = !DILocation(line: 499, column: 11, scope: !7426)
!7443 = !DILocation(line: 499, column: 27, scope: !7426)
!7444 = !DILocation(line: 499, column: 41, scope: !7426)
!7445 = !DILocation(line: 501, column: 2, scope: !7426)
!7446 = !DILocation(line: 501, column: 19, scope: !7426)
!7447 = !DILocation(line: 502, column: 2, scope: !7426)
!7448 = !DILocation(line: 502, column: 16, scope: !7426)
!7449 = !DILocation(line: 503, column: 2, scope: !7426)
!7450 = !DILocation(line: 503, column: 15, scope: !7426)
!7451 = !DILocation(line: 503, column: 25, scope: !7426)
!7452 = !DILocation(line: 504, column: 2, scope: !7426)
!7453 = !DILocation(line: 504, column: 6, scope: !7426)
!7454 = !DILocation(line: 506, column: 6, scope: !7455)
!7455 = distinct !DILexicalBlock(scope: !7426, file: !3, line: 506, column: 6)
!7456 = !DILocation(line: 506, column: 12, scope: !7455)
!7457 = !DILocation(line: 506, column: 17, scope: !7455)
!7458 = !DILocation(line: 506, column: 38, scope: !7455)
!7459 = !DILocation(line: 507, column: 10, scope: !7455)
!7460 = !DILocation(line: 506, column: 6, scope: !7426)
!7461 = !DILocation(line: 508, column: 3, scope: !7455)
!7462 = !DILocation(line: 516, column: 8, scope: !7426)
!7463 = !DILocation(line: 516, column: 15, scope: !7426)
!7464 = !DILocation(line: 516, column: 6, scope: !7426)
!7465 = !DILocation(line: 517, column: 2, scope: !7426)
!7466 = !DILocation(line: 518, column: 23, scope: !7426)
!7467 = !DILocation(line: 518, column: 28, scope: !7426)
!7468 = !DILocation(line: 518, column: 17, scope: !7426)
!7469 = !DILocation(line: 518, column: 2, scope: !7426)
!7470 = !DILocation(line: 518, column: 15, scope: !7426)
!7471 = !DILocation(line: 519, column: 17, scope: !7426)
!7472 = !DILocation(line: 519, column: 22, scope: !7426)
!7473 = !DILocation(line: 519, column: 26, scope: !7426)
!7474 = !DILocation(line: 519, column: 2, scope: !7426)
!7475 = !DILocation(line: 519, column: 15, scope: !7426)
!7476 = !DILocation(line: 520, column: 2, scope: !7426)
!7477 = !DILocation(line: 522, column: 7, scope: !7426)
!7478 = !DILocation(line: 522, column: 6, scope: !7426)
!7479 = !DILocation(line: 523, column: 4, scope: !7426)
!7480 = !DILocation(line: 523, column: 9, scope: !7426)
!7481 = !DILocation(line: 529, column: 35, scope: !7426)
!7482 = !DILocation(line: 529, column: 42, scope: !7426)
!7483 = !DILocation(line: 529, column: 50, scope: !7426)
!7484 = !DILocation(line: 529, column: 56, scope: !7426)
!7485 = !DILocation(line: 529, column: 8, scope: !7426)
!7486 = !DILocation(line: 529, column: 6, scope: !7426)
!7487 = !DILocation(line: 530, column: 6, scope: !7488)
!7488 = distinct !DILexicalBlock(scope: !7426, file: !3, line: 530, column: 6)
!7489 = !DILocation(line: 530, column: 10, scope: !7488)
!7490 = !DILocation(line: 530, column: 6, scope: !7426)
!7491 = !DILocation(line: 531, column: 10, scope: !7488)
!7492 = !DILocation(line: 531, column: 3, scope: !7488)
!7493 = !DILocation(line: 533, column: 21, scope: !7426)
!7494 = !DILocation(line: 533, column: 16, scope: !7426)
!7495 = !DILocation(line: 533, column: 10, scope: !7426)
!7496 = !DILocation(line: 533, column: 14, scope: !7426)
!7497 = !DILocation(line: 534, column: 22, scope: !7426)
!7498 = !DILocation(line: 534, column: 35, scope: !7426)
!7499 = !DILocation(line: 534, column: 10, scope: !7426)
!7500 = !DILocation(line: 534, column: 14, scope: !7426)
!7501 = !DILocation(line: 539, column: 6, scope: !7502)
!7502 = distinct !DILexicalBlock(scope: !7426, file: !3, line: 539, column: 6)
!7503 = !DILocation(line: 539, column: 6, scope: !7426)
!7504 = !DILocation(line: 540, column: 3, scope: !7505)
!7505 = distinct !DILexicalBlock(scope: !7502, file: !3, line: 539, column: 13)
!7506 = !DILocation(line: 541, column: 4, scope: !7505)
!7507 = !DILocation(line: 541, column: 10, scope: !7505)
!7508 = !DILocation(line: 541, column: 25, scope: !7505)
!7509 = !DILocation(line: 542, column: 3, scope: !7505)
!7510 = !DILocation(line: 543, column: 2, scope: !7505)
!7511 = !DILocation(line: 545, column: 2, scope: !7426)
!7512 = !DILocation(line: 546, column: 1, scope: !7426)
!7513 = !DISubprogram(name: "capable", scope: !1114, file: !1114, line: 148, type: !7514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7514 = !DISubroutineType(types: !7515)
!7515 = !{!859, !23}
!7516 = !DISubprogram(name: "proc_doulongvec_minmax", scope: !13, file: !13, line: 84, type: !32, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
