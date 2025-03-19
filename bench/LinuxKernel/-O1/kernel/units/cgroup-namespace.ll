; ModuleID = 'kernel/cgroup/namespace.c'
source_filename = "kernel/cgroup/namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_free_cgroup_ns: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad free_cgroup_ns ; .previous"

%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.proc_ns_operations = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.pcpu_hot = type { %union.anon.15 }
%union.anon.15 = type { %struct.anon.16, [16 x i8] }
%struct.anon.16 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [10 x i64], [4 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.17 }
%union.anon.17 = type { %struct.anon.18, [48 x i8] }
%struct.anon.18 = type { ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic64_t, ptr, i32, %struct.refcount_struct }
%struct.atomic64_t = type { i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.cgroup_namespace = type { %struct.ns_common, ptr, ptr, ptr }
%struct.css_set = type { [14 x ptr], %struct.refcount_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, [14 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i8, %struct.callback_head }
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
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
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.posix_cputimers_work = type { %struct.callback_head, %struct.mutex, i32 }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
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
%struct.llist_head = type { ptr }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x ptr], i64, i64, i64, i64, i64, ptr, i64, i8, i32, [40 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.fpu = type { i32, i64, ptr, ptr, %struct.fpu_state_perm, %struct.fpu_state_perm, %struct.fpstate }
%struct.fpu_state_perm = type { i64, i32, i32 }
%struct.fpstate = type { i32, i32, i64, i64, i64, i8, [31 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.10, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.13 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { i64, i64 }
%union.anon.13 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.cred = type { %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.14 }
%struct.kernel_cap_t = type { i64 }
%union.anon.14 = type { %struct.callback_head }
%struct.nsproxy = type { %struct.refcount_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nsset = type { i32, ptr, ptr, ptr }

@__UNIQUE_ID___addressable_free_cgroup_ns294 = internal global ptr @free_cgroup_ns, section ".discard.addressable", align 8, !dbg !0
@.str = private unnamed_addr constant [26 x i8] c"kernel/cgroup/namespace.c\00", align 1, !dbg !4221
@css_set_lock = external dso_local global %struct.spinlock, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"cgroup\00", align 1, !dbg !4226
@cgroupns_operations = hidden constant %struct.proc_ns_operations { ptr @.str.1, ptr null, i32 33554432, ptr @cgroupns_get, ptr @cgroupns_put, ptr @cgroupns_install, ptr @cgroupns_owner, ptr null }, align 8, !dbg !4231
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4233
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_free_cgroup_ns294], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @free_cgroup_ns(ptr noundef %ns) #0 align 16 !dbg !4247 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4251, metadata !DIExpression()), !dbg !4252
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !4253
  %root_cset = getelementptr inbounds %struct.cgroup_namespace, ptr %0, i32 0, i32 3, !dbg !4254
  %1 = load ptr, ptr %root_cset, align 8, !dbg !4254
  call void @put_css_set(ptr noundef %1) #14, !dbg !4255
  %2 = load ptr, ptr %ns.addr, align 8, !dbg !4256
  %ucounts = getelementptr inbounds %struct.cgroup_namespace, ptr %2, i32 0, i32 2, !dbg !4257
  %3 = load ptr, ptr %ucounts, align 8, !dbg !4257
  call void @dec_cgroup_namespaces(ptr noundef %3) #14, !dbg !4258
  %4 = load ptr, ptr %ns.addr, align 8, !dbg !4259
  %user_ns = getelementptr inbounds %struct.cgroup_namespace, ptr %4, i32 0, i32 1, !dbg !4260
  %5 = load ptr, ptr %user_ns, align 8, !dbg !4260
  call void @put_user_ns(ptr noundef %5) #14, !dbg !4261
  %6 = load ptr, ptr %ns.addr, align 8, !dbg !4262
  %ns1 = getelementptr inbounds %struct.cgroup_namespace, ptr %6, i32 0, i32 0, !dbg !4262
  %inum = getelementptr inbounds %struct.ns_common, ptr %ns1, i32 0, i32 2, !dbg !4262
  %7 = load i32, ptr %inum, align 8, !dbg !4262
  call void @proc_free_inum(i32 noundef %7) #14, !dbg !4262
  %8 = load ptr, ptr %ns.addr, align 8, !dbg !4263
  call void @kfree(ptr noundef %8) #14, !dbg !4264
  ret void, !dbg !4265
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_css_set(ptr noundef %cset) #2 align 16 !dbg !4266 {
entry:
  %cset.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %cset, ptr %cset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cset.addr, metadata !4270, metadata !DIExpression()), !dbg !4277
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !4278
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4271, metadata !DIExpression()), !dbg !4279
  %0 = load ptr, ptr %cset.addr, align 8, !dbg !4280
  %refcount = getelementptr inbounds %struct.css_set, ptr %0, i32 0, i32 1, !dbg !4282
  %call = call zeroext i1 @refcount_dec_not_one(ptr noundef %refcount) #14, !dbg !4283
  br i1 %call, label %if.then, label %if.end, !dbg !4284

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4285

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4286

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !4287

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !4288
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4272, metadata !DIExpression()), !dbg !4288
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !4288
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4276, metadata !DIExpression()), !dbg !4288
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4288
  %conv = zext i1 %cmp to i32, !dbg !4288
  store i32 1, ptr %tmp, align 4, !dbg !4288
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !4289
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !4289
  %1 = load i32, ptr %tmp, align 4, !dbg !4288
  %call2 = call ptr @spinlock_check(ptr noundef @css_set_lock) #14, !dbg !4289
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call2) #14, !dbg !4289
  store i64 %call3, ptr %flags, align 8, !dbg !4289
  br label %do.cond, !dbg !4289

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !4289

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !4287

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !4287

do.end5:                                          ; preds = %do.cond4
  %2 = load ptr, ptr %cset.addr, align 8, !dbg !4290
  call void @put_css_set_locked(ptr noundef %2) #14, !dbg !4291
  %3 = load i64, ptr %flags, align 8, !dbg !4292
  call void @spin_unlock_irqrestore(ptr noundef @css_set_lock, i64 noundef %3) #14, !dbg !4293
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4294
  br label %cleanup, !dbg !4294

cleanup:                                          ; preds = %do.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !4294
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4294

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dec_cgroup_namespaces(ptr noundef %ucounts) #0 align 16 !dbg !4295 {
entry:
  %ucounts.addr = alloca ptr, align 8
  store ptr %ucounts, ptr %ucounts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ucounts.addr, metadata !4299, metadata !DIExpression()), !dbg !4300
  %0 = load ptr, ptr %ucounts.addr, align 8, !dbg !4301
  call void @dec_ucount(ptr noundef %0, i32 noundef 6) #14, !dbg !4302
  ret void, !dbg !4303
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_user_ns(ptr noundef %ns) #2 align 16 !dbg !4304 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4308, metadata !DIExpression()), !dbg !4309
  ret void, !dbg !4310
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4311 dso_local void @proc_free_inum(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4314 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @copy_cgroup_ns(i64 noundef %flags, ptr noundef %user_ns, ptr noundef %old_ns) #0 align 16 !dbg !4317 {
entry:
  %retval = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %user_ns.addr = alloca ptr, align 8
  %old_ns.addr = alloca ptr, align 8
  %new_ns = alloca ptr, align 8
  %ucounts = alloca ptr, align 8
  %cset = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4321, metadata !DIExpression()), !dbg !4327
  store ptr %user_ns, ptr %user_ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_ns.addr, metadata !4322, metadata !DIExpression()), !dbg !4328
  store ptr %old_ns, ptr %old_ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_ns.addr, metadata !4323, metadata !DIExpression()), !dbg !4329
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_ns) #15, !dbg !4330
  call void @llvm.dbg.declare(metadata ptr %new_ns, metadata !4324, metadata !DIExpression()), !dbg !4331
  call void @llvm.lifetime.start.p0(i64 8, ptr %ucounts) #15, !dbg !4332
  call void @llvm.dbg.declare(metadata ptr %ucounts, metadata !4325, metadata !DIExpression()), !dbg !4333
  call void @llvm.lifetime.start.p0(i64 8, ptr %cset) #15, !dbg !4334
  call void @llvm.dbg.declare(metadata ptr %cset, metadata !4326, metadata !DIExpression()), !dbg !4335
  br label %do.body, !dbg !4336

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %old_ns.addr, align 8, !dbg !4337
  %tobool = icmp ne ptr %0, null, !dbg !4337
  %lnot = xor i1 %tobool, true, !dbg !4337
  %lnot1 = xor i1 %lnot, true, !dbg !4337
  %lnot2 = xor i1 %lnot1, true, !dbg !4337
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4337
  %conv = sext i32 %lnot.ext to i64, !dbg !4337
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4337
  %tobool3 = icmp ne i64 %expval, 0, !dbg !4337
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4340

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !4337

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !4341

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !4343

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !4343

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !4341

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 58, i32 0, i64 12) #15, !dbg !4345, !srcloc !4347
  br label %do.cond7, !dbg !4345

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !4345

do.end8:                                          ; preds = %do.cond7
  unreachable, !dbg !4341

do.cond9:                                         ; No predecessors!
  br label %do.end10, !dbg !4341

do.end10:                                         ; preds = %do.cond9
  br label %if.end, !dbg !4341

if.end:                                           ; preds = %do.end10, %do.body
  br label %do.cond11, !dbg !4340

do.cond11:                                        ; preds = %if.end
  br label %do.end12, !dbg !4340

do.end12:                                         ; preds = %do.cond11
  %1 = load i64, ptr %flags.addr, align 8, !dbg !4348
  %and = and i64 %1, 33554432, !dbg !4350
  %tobool13 = icmp ne i64 %and, 0, !dbg !4350
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !4351

if.then14:                                        ; preds = %do.end12
  %2 = load ptr, ptr %old_ns.addr, align 8, !dbg !4352
  call void @get_cgroup_ns(ptr noundef %2) #14, !dbg !4354
  %3 = load ptr, ptr %old_ns.addr, align 8, !dbg !4355
  store ptr %3, ptr %retval, align 8, !dbg !4356
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4356

if.end15:                                         ; preds = %do.end12
  %4 = load ptr, ptr %user_ns.addr, align 8, !dbg !4357
  %call = call zeroext i1 @ns_capable(ptr noundef %4, i32 noundef 21) #14, !dbg !4359
  br i1 %call, label %if.end18, label %if.then16, !dbg !4360

if.then16:                                        ; preds = %if.end15
  %call17 = call ptr @ERR_PTR(i64 noundef -1) #14, !dbg !4361
  store ptr %call17, ptr %retval, align 8, !dbg !4362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4362

if.end18:                                         ; preds = %if.end15
  %5 = load ptr, ptr %user_ns.addr, align 8, !dbg !4363
  %call19 = call ptr @inc_cgroup_namespaces(ptr noundef %5) #14, !dbg !4364
  store ptr %call19, ptr %ucounts, align 8, !dbg !4365
  %6 = load ptr, ptr %ucounts, align 8, !dbg !4366
  %tobool20 = icmp ne ptr %6, null, !dbg !4366
  br i1 %tobool20, label %if.end23, label %if.then21, !dbg !4368

if.then21:                                        ; preds = %if.end18
  %call22 = call ptr @ERR_PTR(i64 noundef -28) #14, !dbg !4369
  store ptr %call22, ptr %retval, align 8, !dbg !4370
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4370

if.end23:                                         ; preds = %if.end18
  call void @spin_lock_irq(ptr noundef @css_set_lock) #14, !dbg !4371
  %call24 = call ptr @get_current() #14, !dbg !4372
  %call25 = call ptr @task_css_set(ptr noundef %call24) #14, !dbg !4373
  store ptr %call25, ptr %cset, align 8, !dbg !4374
  %7 = load ptr, ptr %cset, align 8, !dbg !4375
  call void @get_css_set(ptr noundef %7) #14, !dbg !4376
  call void @spin_unlock_irq(ptr noundef @css_set_lock) #14, !dbg !4377
  %call26 = call ptr @alloc_cgroup_ns() #14, !dbg !4378
  store ptr %call26, ptr %new_ns, align 8, !dbg !4379
  %8 = load ptr, ptr %new_ns, align 8, !dbg !4380
  %call27 = call zeroext i1 @IS_ERR(ptr noundef %8) #14, !dbg !4382
  br i1 %call27, label %if.then28, label %if.end29, !dbg !4383

if.then28:                                        ; preds = %if.end23
  %9 = load ptr, ptr %cset, align 8, !dbg !4384
  call void @put_css_set(ptr noundef %9) #14, !dbg !4386
  %10 = load ptr, ptr %ucounts, align 8, !dbg !4387
  call void @dec_cgroup_namespaces(ptr noundef %10) #14, !dbg !4388
  %11 = load ptr, ptr %new_ns, align 8, !dbg !4389
  store ptr %11, ptr %retval, align 8, !dbg !4390
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4390

if.end29:                                         ; preds = %if.end23
  %12 = load ptr, ptr %user_ns.addr, align 8, !dbg !4391
  %call30 = call ptr @get_user_ns(ptr noundef %12) #14, !dbg !4392
  %13 = load ptr, ptr %new_ns, align 8, !dbg !4393
  %user_ns31 = getelementptr inbounds %struct.cgroup_namespace, ptr %13, i32 0, i32 1, !dbg !4394
  store ptr %call30, ptr %user_ns31, align 8, !dbg !4395
  %14 = load ptr, ptr %ucounts, align 8, !dbg !4396
  %15 = load ptr, ptr %new_ns, align 8, !dbg !4397
  %ucounts32 = getelementptr inbounds %struct.cgroup_namespace, ptr %15, i32 0, i32 2, !dbg !4398
  store ptr %14, ptr %ucounts32, align 8, !dbg !4399
  %16 = load ptr, ptr %cset, align 8, !dbg !4400
  %17 = load ptr, ptr %new_ns, align 8, !dbg !4401
  %root_cset = getelementptr inbounds %struct.cgroup_namespace, ptr %17, i32 0, i32 3, !dbg !4402
  store ptr %16, ptr %root_cset, align 8, !dbg !4403
  %18 = load ptr, ptr %new_ns, align 8, !dbg !4404
  store ptr %18, ptr %retval, align 8, !dbg !4405
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4405

cleanup:                                          ; preds = %if.end29, %if.then28, %if.then21, %if.then16, %if.then14
  call void @llvm.lifetime.end.p0(i64 8, ptr %cset) #15, !dbg !4406
  call void @llvm.lifetime.end.p0(i64 8, ptr %ucounts) #15, !dbg !4406
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_ns) #15, !dbg !4406
  %19 = load ptr, ptr %retval, align 8, !dbg !4406
  ret ptr %19, !dbg !4406
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @get_cgroup_ns(ptr noundef %ns) #2 align 16 !dbg !4407 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4409, metadata !DIExpression()), !dbg !4410
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !4411
  %tobool = icmp ne ptr %0, null, !dbg !4411
  br i1 %tobool, label %if.then, label %if.end, !dbg !4413

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ns.addr, align 8, !dbg !4414
  %ns1 = getelementptr inbounds %struct.cgroup_namespace, ptr %1, i32 0, i32 0, !dbg !4415
  %count = getelementptr inbounds %struct.ns_common, ptr %ns1, i32 0, i32 3, !dbg !4416
  call void @refcount_inc(ptr noundef %count) #14, !dbg !4417
  br label %if.end, !dbg !4417

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4418
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4419 dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #2 align 16 !dbg !4422 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !4427, metadata !DIExpression()), !dbg !4428
  %0 = load i64, ptr %error.addr, align 8, !dbg !4429
  %1 = inttoptr i64 %0 to ptr, !dbg !4430
  ret ptr %1, !dbg !4431
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @inc_cgroup_namespaces(ptr noundef %ns) #0 align 16 !dbg !4432 {
entry:
  %ns.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.kuid_t, align 4
  %tmp = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4436, metadata !DIExpression()), !dbg !4437
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !4438
  br label %do.body, !dbg !4439

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4442

do.end:                                           ; preds = %do.body
  %call = call ptr @get_current() #14, !dbg !4439
  %cred = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 94, !dbg !4439
  %1 = load ptr, ptr %cred, align 32, !dbg !4439
  store ptr %1, ptr %tmp, align 8, !dbg !4442
  %2 = load ptr, ptr %tmp, align 8, !dbg !4439
  %euid = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 5, !dbg !4444
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %agg.tmp, ptr align 8 %euid, i64 4, i1 false), !dbg !4444
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !4445
  %3 = load i32, ptr %coerce.dive, align 4, !dbg !4445
  %call1 = call ptr @inc_ucount(ptr noundef %0, i32 %3, i32 noundef 6) #14, !dbg !4445
  ret ptr %call1, !dbg !4446
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #6 align 16 !dbg !4447 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4452, metadata !DIExpression()), !dbg !4453
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4454
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4454
  call void @_raw_spin_lock_irq(ptr noundef %1) #14, !dbg !4454
  ret void, !dbg !4455
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @task_css_set(ptr noundef %task) #2 align 16 !dbg !4456 {
entry:
  %task.addr = alloca ptr, align 8
  %__UNIQUE_ID_rcu258 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4460, metadata !DIExpression()), !dbg !4463
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu258) #15, !dbg !4464
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu258, metadata !4461, metadata !DIExpression()), !dbg !4464
  br label %do.body, !dbg !4465

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4467

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4467

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %task.addr, align 8, !dbg !4465
  %cgroups = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 143, !dbg !4465
  %1 = load volatile ptr, ptr %cgroups, align 8, !dbg !4465
  store ptr %1, ptr %tmp, align 8, !dbg !4467
  %2 = load ptr, ptr %tmp, align 8, !dbg !4465
  store ptr %2, ptr %__UNIQUE_ID_rcu258, align 8, !dbg !4464
  br label %do.body1, !dbg !4464

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !4469

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !4469

do.end3:                                          ; preds = %do.cond2
  %3 = load ptr, ptr %__UNIQUE_ID_rcu258, align 8, !dbg !4464
  store ptr %3, ptr %tmp4, align 8, !dbg !4469
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu258) #15, !dbg !4471
  %4 = load ptr, ptr %tmp4, align 8, !dbg !4464
  ret ptr %4, !dbg !4472
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #6 align 16 !dbg !4473 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #15, !dbg !4484
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4478, metadata !DIExpression()), !dbg !4484
  br label %do.body, !dbg !4484

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4485
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4480, metadata !DIExpression()), !dbg !4485
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4485
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4485
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4484
  br label %do.cond, !dbg !4485

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4485

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #15, !dbg !4486
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4482, metadata !DIExpression()), !dbg !4486
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #16, !dbg !4486, !srcloc !4487
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4486
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4486
  %3 = inttoptr i64 %2 to ptr, !dbg !4486
  store ptr %3, ptr %tmp, align 8, !dbg !4486
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #15, !dbg !4484
  %4 = load ptr, ptr %tmp, align 8, !dbg !4486
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4484
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4484
  store ptr %5, ptr %tmp1, align 8, !dbg !4484
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #15, !dbg !4488
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4484
  ret ptr %6, !dbg !4489
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @get_css_set(ptr noundef %cset) #2 align 16 !dbg !4490 {
entry:
  %cset.addr = alloca ptr, align 8
  store ptr %cset, ptr %cset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cset.addr, metadata !4492, metadata !DIExpression()), !dbg !4493
  %0 = load ptr, ptr %cset.addr, align 8, !dbg !4494
  %refcount = getelementptr inbounds %struct.css_set, ptr %0, i32 0, i32 1, !dbg !4495
  call void @refcount_inc(ptr noundef %refcount) #14, !dbg !4496
  ret void, !dbg !4497
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #6 align 16 !dbg !4498 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4500, metadata !DIExpression()), !dbg !4501
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4502
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4502
  call void @_raw_spin_unlock_irq(ptr noundef %1) #14, !dbg !4502
  ret void, !dbg !4503
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_cgroup_ns() #0 align 16 !dbg !4504 {
entry:
  %retval = alloca ptr, align 8
  %new_ns = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_ns) #15, !dbg !4510
  call void @llvm.dbg.declare(metadata ptr %new_ns, metadata !4508, metadata !DIExpression()), !dbg !4511
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !4512
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4509, metadata !DIExpression()), !dbg !4513
  %call = call noalias ptr @kzalloc(i64 noundef 48, i32 noundef 4197568) #17, !dbg !4514
  store ptr %call, ptr %new_ns, align 8, !dbg !4515
  %0 = load ptr, ptr %new_ns, align 8, !dbg !4516
  %tobool = icmp ne ptr %0, null, !dbg !4516
  br i1 %tobool, label %if.end, label %if.then, !dbg !4518

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -12) #14, !dbg !4519
  store ptr %call1, ptr %retval, align 8, !dbg !4520
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4520

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %new_ns, align 8, !dbg !4521
  %ns = getelementptr inbounds %struct.cgroup_namespace, ptr %1, i32 0, i32 0, !dbg !4522
  %call2 = call i32 @ns_alloc_inum(ptr noundef %ns) #14, !dbg !4523
  store i32 %call2, ptr %ret, align 4, !dbg !4524
  %2 = load i32, ptr %ret, align 4, !dbg !4525
  %tobool3 = icmp ne i32 %2, 0, !dbg !4525
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !4527

if.then4:                                         ; preds = %if.end
  %3 = load ptr, ptr %new_ns, align 8, !dbg !4528
  call void @kfree(ptr noundef %3) #14, !dbg !4530
  %4 = load i32, ptr %ret, align 4, !dbg !4531
  %conv = sext i32 %4 to i64, !dbg !4531
  %call5 = call ptr @ERR_PTR(i64 noundef %conv) #14, !dbg !4532
  store ptr %call5, ptr %retval, align 8, !dbg !4533
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4533

if.end6:                                          ; preds = %if.end
  %5 = load ptr, ptr %new_ns, align 8, !dbg !4534
  %ns7 = getelementptr inbounds %struct.cgroup_namespace, ptr %5, i32 0, i32 0, !dbg !4535
  %count = getelementptr inbounds %struct.ns_common, ptr %ns7, i32 0, i32 3, !dbg !4536
  call void @refcount_set(ptr noundef %count, i32 noundef 1) #14, !dbg !4537
  %6 = load ptr, ptr %new_ns, align 8, !dbg !4538
  %ns8 = getelementptr inbounds %struct.cgroup_namespace, ptr %6, i32 0, i32 0, !dbg !4539
  %ops = getelementptr inbounds %struct.ns_common, ptr %ns8, i32 0, i32 1, !dbg !4540
  store ptr @cgroupns_operations, ptr %ops, align 8, !dbg !4541
  %7 = load ptr, ptr %new_ns, align 8, !dbg !4542
  store ptr %7, ptr %retval, align 8, !dbg !4543
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4543

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !4544
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_ns) #15, !dbg !4544
  %8 = load ptr, ptr %retval, align 8, !dbg !4544
  ret ptr %8, !dbg !4544
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #2 align 16 !dbg !4545 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4549, metadata !DIExpression()), !dbg !4550
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4551
  %1 = ptrtoint ptr %0 to i64, !dbg !4551
  %2 = inttoptr i64 %1 to ptr, !dbg !4551
  %3 = ptrtoint ptr %2 to i64, !dbg !4551
  %cmp = icmp uge i64 %3, -4095, !dbg !4551
  %lnot = xor i1 %cmp, true, !dbg !4551
  %lnot1 = xor i1 %lnot, true, !dbg !4551
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4551
  %conv = sext i32 %lnot.ext to i64, !dbg !4551
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4551
  %tobool = icmp ne i64 %expval, 0, !dbg !4551
  ret i1 %tobool, !dbg !4552
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_user_ns(ptr noundef %ns) #2 align 16 !dbg !4553 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4557, metadata !DIExpression()), !dbg !4558
  ret ptr @init_user_ns, !dbg !4559
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @cgroupns_get(ptr noundef %task) #0 align 16 !dbg !4560 {
entry:
  %task.addr = alloca ptr, align 8
  %ns = alloca ptr, align 8
  %nsproxy = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4562, metadata !DIExpression()), !dbg !4565
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #15, !dbg !4566
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !4563, metadata !DIExpression()), !dbg !4567
  store ptr null, ptr %ns, align 8, !dbg !4567
  call void @llvm.lifetime.start.p0(i64 8, ptr %nsproxy) #15, !dbg !4568
  call void @llvm.dbg.declare(metadata ptr %nsproxy, metadata !4564, metadata !DIExpression()), !dbg !4569
  %0 = load ptr, ptr %task.addr, align 8, !dbg !4570
  call void @task_lock(ptr noundef %0) #14, !dbg !4571
  %1 = load ptr, ptr %task.addr, align 8, !dbg !4572
  %nsproxy1 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 103, !dbg !4573
  %2 = load ptr, ptr %nsproxy1, align 8, !dbg !4573
  store ptr %2, ptr %nsproxy, align 8, !dbg !4574
  %3 = load ptr, ptr %nsproxy, align 8, !dbg !4575
  %tobool = icmp ne ptr %3, null, !dbg !4575
  br i1 %tobool, label %if.then, label %if.end, !dbg !4577

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %nsproxy, align 8, !dbg !4578
  %cgroup_ns = getelementptr inbounds %struct.nsproxy, ptr %4, i32 0, i32 8, !dbg !4580
  %5 = load ptr, ptr %cgroup_ns, align 8, !dbg !4580
  store ptr %5, ptr %ns, align 8, !dbg !4581
  %6 = load ptr, ptr %ns, align 8, !dbg !4582
  call void @get_cgroup_ns(ptr noundef %6) #14, !dbg !4583
  br label %if.end, !dbg !4584

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %task.addr, align 8, !dbg !4585
  call void @task_unlock(ptr noundef %7) #14, !dbg !4586
  %8 = load ptr, ptr %ns, align 8, !dbg !4587
  %tobool2 = icmp ne ptr %8, null, !dbg !4587
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !4587

cond.true:                                        ; preds = %if.end
  %9 = load ptr, ptr %ns, align 8, !dbg !4588
  %ns3 = getelementptr inbounds %struct.cgroup_namespace, ptr %9, i32 0, i32 0, !dbg !4589
  br label %cond.end, !dbg !4587

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !4587

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %ns3, %cond.true ], [ null, %cond.false ], !dbg !4587
  call void @llvm.lifetime.end.p0(i64 8, ptr %nsproxy) #15, !dbg !4590
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #15, !dbg !4590
  ret ptr %cond, !dbg !4591
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cgroupns_put(ptr noundef %ns) #0 align 16 !dbg !4592 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4594, metadata !DIExpression()), !dbg !4595
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !4596
  %call = call ptr @to_cg_ns(ptr noundef %0) #14, !dbg !4597
  call void @put_cgroup_ns(ptr noundef %call) #14, !dbg !4598
  ret void, !dbg !4599
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cgroupns_install(ptr noundef %nsset, ptr noundef %ns) #0 align 16 !dbg !4600 {
entry:
  %retval = alloca i32, align 4
  %nsset.addr = alloca ptr, align 8
  %ns.addr = alloca ptr, align 8
  %nsproxy = alloca ptr, align 8
  %cgroup_ns = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %nsset, ptr %nsset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nsset.addr, metadata !4602, metadata !DIExpression()), !dbg !4606
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4603, metadata !DIExpression()), !dbg !4607
  call void @llvm.lifetime.start.p0(i64 8, ptr %nsproxy) #15, !dbg !4608
  call void @llvm.dbg.declare(metadata ptr %nsproxy, metadata !4604, metadata !DIExpression()), !dbg !4609
  %0 = load ptr, ptr %nsset.addr, align 8, !dbg !4610
  %nsproxy1 = getelementptr inbounds %struct.nsset, ptr %0, i32 0, i32 1, !dbg !4611
  %1 = load ptr, ptr %nsproxy1, align 8, !dbg !4611
  store ptr %1, ptr %nsproxy, align 8, !dbg !4609
  call void @llvm.lifetime.start.p0(i64 8, ptr %cgroup_ns) #15, !dbg !4612
  call void @llvm.dbg.declare(metadata ptr %cgroup_ns, metadata !4605, metadata !DIExpression()), !dbg !4613
  %2 = load ptr, ptr %ns.addr, align 8, !dbg !4614
  %call = call ptr @to_cg_ns(ptr noundef %2) #14, !dbg !4615
  store ptr %call, ptr %cgroup_ns, align 8, !dbg !4613
  %3 = load ptr, ptr %nsset.addr, align 8, !dbg !4616
  %cred = getelementptr inbounds %struct.nsset, ptr %3, i32 0, i32 3, !dbg !4618
  %4 = load ptr, ptr %cred, align 8, !dbg !4618
  %user_ns = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 22, !dbg !4619
  %5 = load ptr, ptr %user_ns, align 8, !dbg !4619
  %call2 = call zeroext i1 @ns_capable(ptr noundef %5, i32 noundef 21) #14, !dbg !4620
  br i1 %call2, label %lor.lhs.false, label %if.then, !dbg !4621

lor.lhs.false:                                    ; preds = %entry
  %6 = load ptr, ptr %cgroup_ns, align 8, !dbg !4622
  %user_ns3 = getelementptr inbounds %struct.cgroup_namespace, ptr %6, i32 0, i32 1, !dbg !4623
  %7 = load ptr, ptr %user_ns3, align 8, !dbg !4623
  %call4 = call zeroext i1 @ns_capable(ptr noundef %7, i32 noundef 21) #14, !dbg !4624
  br i1 %call4, label %if.end, label %if.then, !dbg !4625

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4, !dbg !4626
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4626

if.end:                                           ; preds = %lor.lhs.false
  %8 = load ptr, ptr %cgroup_ns, align 8, !dbg !4627
  %9 = load ptr, ptr %nsproxy, align 8, !dbg !4629
  %cgroup_ns5 = getelementptr inbounds %struct.nsproxy, ptr %9, i32 0, i32 8, !dbg !4630
  %10 = load ptr, ptr %cgroup_ns5, align 8, !dbg !4630
  %cmp = icmp eq ptr %8, %10, !dbg !4631
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !4632

if.then6:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !4633
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4633

if.end7:                                          ; preds = %if.end
  %11 = load ptr, ptr %cgroup_ns, align 8, !dbg !4634
  call void @get_cgroup_ns(ptr noundef %11) #14, !dbg !4635
  %12 = load ptr, ptr %nsproxy, align 8, !dbg !4636
  %cgroup_ns8 = getelementptr inbounds %struct.nsproxy, ptr %12, i32 0, i32 8, !dbg !4637
  %13 = load ptr, ptr %cgroup_ns8, align 8, !dbg !4637
  call void @put_cgroup_ns(ptr noundef %13) #14, !dbg !4638
  %14 = load ptr, ptr %cgroup_ns, align 8, !dbg !4639
  %15 = load ptr, ptr %nsproxy, align 8, !dbg !4640
  %cgroup_ns9 = getelementptr inbounds %struct.nsproxy, ptr %15, i32 0, i32 8, !dbg !4641
  store ptr %14, ptr %cgroup_ns9, align 8, !dbg !4642
  store i32 0, ptr %retval, align 4, !dbg !4643
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4643

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cgroup_ns) #15, !dbg !4644
  call void @llvm.lifetime.end.p0(i64 8, ptr %nsproxy) #15, !dbg !4644
  %16 = load i32, ptr %retval, align 4, !dbg !4644
  ret i32 %16, !dbg !4644
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @cgroupns_owner(ptr noundef %ns) #0 align 16 !dbg !4645 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4647, metadata !DIExpression()), !dbg !4648
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !4649
  %call = call ptr @to_cg_ns(ptr noundef %0) #14, !dbg !4650
  %user_ns = getelementptr inbounds %struct.cgroup_namespace, ptr %call, i32 0, i32 1, !dbg !4651
  %1 = load ptr, ptr %user_ns, align 8, !dbg !4651
  ret ptr %1, !dbg !4652
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4653 dso_local zeroext i1 @refcount_dec_not_one(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4657 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #6 align 16 !dbg !4662 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4666, metadata !DIExpression()), !dbg !4667
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4668
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4669
  ret ptr %1, !dbg !4670
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4671 dso_local void @put_css_set_locked(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #6 align 16 !dbg !4672 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4676, metadata !DIExpression()), !dbg !4682
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4677, metadata !DIExpression()), !dbg !4683
  br label %do.body, !dbg !4684

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !4685
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4678, metadata !DIExpression()), !dbg !4685
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !4685
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4681, metadata !DIExpression()), !dbg !4685
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4685
  %conv = zext i1 %cmp to i32, !dbg !4685
  store i32 1, ptr %tmp, align 4, !dbg !4685
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !4686
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !4686
  %0 = load i32, ptr %tmp, align 4, !dbg !4685
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !4686
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !4686
  %3 = load i64, ptr %flags.addr, align 8, !dbg !4686
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #14, !dbg !4686
  br label %do.end, !dbg !4686

do.end:                                           ; preds = %do.body
  ret void, !dbg !4687
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4688 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4691 dso_local void @dec_ucount(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #2 align 16 !dbg !4694 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4698, metadata !DIExpression()), !dbg !4699
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4700
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #14, !dbg !4701
  ret void, !dbg !4702
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !4703 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4707, metadata !DIExpression()), !dbg !4709
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4708, metadata !DIExpression()), !dbg !4710
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4711
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !4712
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #14, !dbg !4713
  ret void, !dbg !4714
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !4715 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4719, metadata !DIExpression()), !dbg !4723
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4720, metadata !DIExpression()), !dbg !4724
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4721, metadata !DIExpression()), !dbg !4725
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #15, !dbg !4726
  call void @llvm.dbg.declare(metadata ptr %old, metadata !4722, metadata !DIExpression()), !dbg !4727
  %0 = load i32, ptr %i.addr, align 4, !dbg !4728
  %1 = load ptr, ptr %r.addr, align 8, !dbg !4729
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !4730
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #14, !dbg !4731
  store i32 %call, ptr %old, align 4, !dbg !4727
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !4732
  %tobool = icmp ne ptr %2, null, !dbg !4732
  br i1 %tobool, label %if.then, label %if.end, !dbg !4734

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !4735
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !4736
  store i32 %3, ptr %4, align 4, !dbg !4737
  br label %if.end, !dbg !4738

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !4739
  %tobool1 = icmp ne i32 %5, 0, !dbg !4739
  %lnot = xor i1 %tobool1, true, !dbg !4739
  %lnot2 = xor i1 %lnot, true, !dbg !4739
  %lnot3 = xor i1 %lnot2, true, !dbg !4739
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4739
  %conv = sext i32 %lnot.ext to i64, !dbg !4739
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4739
  %tobool4 = icmp ne i64 %expval, 0, !dbg !4739
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !4741

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !4742
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #14, !dbg !4743
  br label %if.end18, !dbg !4743

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !4744
  %cmp = icmp slt i32 %7, 0, !dbg !4744
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !4744

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !4744
  %9 = load i32, ptr %i.addr, align 4, !dbg !4744
  %add = add i32 %8, %9, !dbg !4744
  %cmp7 = icmp slt i32 %add, 0, !dbg !4744
  br label %lor.end, !dbg !4744

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !4744
  %lnot11 = xor i1 %lnot9, true, !dbg !4744
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !4744
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !4744
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !4744
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !4744
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !4746

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !4747
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #14, !dbg !4748
  br label %if.end17, !dbg !4748

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #15, !dbg !4749
  ret void, !dbg !4749
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !4750 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4756, metadata !DIExpression()), !dbg !4758
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4757, metadata !DIExpression()), !dbg !4759
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4760
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !4761
  %1 = load i32, ptr %i.addr, align 4, !dbg !4762
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4763
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #14, !dbg !4764
  ret i32 %call, !dbg !4765
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4766 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !4769 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4777, metadata !DIExpression()), !dbg !4779
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4778, metadata !DIExpression()), !dbg !4780
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4781
  %1 = load i64, ptr %size.addr, align 8, !dbg !4782
  %conv = trunc i64 %1 to i32, !dbg !4782
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !4783
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4784
  %3 = load i64, ptr %size.addr, align 8, !dbg !4784
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #14, !dbg !4784
  ret void, !dbg !4785
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !4786 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4789, metadata !DIExpression()), !dbg !4791
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4790, metadata !DIExpression()), !dbg !4792
  %0 = load i32, ptr %i.addr, align 4, !dbg !4793
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4794
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #14, !dbg !4795
  ret i32 %call, !dbg !4796
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !4797 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4802, metadata !DIExpression()), !dbg !4804
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4803, metadata !DIExpression()), !dbg !4805
  ret i1 true, !dbg !4806
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #2 align 16 !dbg !4807 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4812, metadata !DIExpression()), !dbg !4815
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4813, metadata !DIExpression()), !dbg !4816
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4814, metadata !DIExpression()), !dbg !4817
  ret void, !dbg !4818
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !4819 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4822, metadata !DIExpression()), !dbg !4826
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4823, metadata !DIExpression()), !dbg !4827
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #15, !dbg !4828
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4824, metadata !DIExpression()), !dbg !4828
  %0 = load i32, ptr %i.addr, align 4, !dbg !4828
  store i32 %0, ptr %__ret, align 4, !dbg !4828
  %1 = load i32, ptr %__ret, align 4, !dbg !4828
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4828
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !4828
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #15, !dbg !4828, !srcloc !4829
  store i32 %3, ptr %__ret, align 4, !dbg !4828
  %4 = load i32, ptr %__ret, align 4, !dbg !4828
  store i32 %4, ptr %tmp, align 4, !dbg !4828
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #15, !dbg !4830
  %5 = load i32, ptr %tmp, align 4, !dbg !4828
  ret i32 %5, !dbg !4831
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4832 dso_local ptr @inc_ucount(ptr noundef, i32, i32 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4835 dso_local void @_raw_spin_lock_irq(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4838 dso_local void @_raw_spin_unlock_irq(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !4839 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4843, metadata !DIExpression()), !dbg !4845
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4844, metadata !DIExpression()), !dbg !4846
  %0 = load i64, ptr %size.addr, align 8, !dbg !4847
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4848
  %or = or i32 %1, 256, !dbg !4849
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !4850
  ret ptr %call, !dbg !4851
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ns_alloc_inum(ptr noundef %ns) #2 align 16 !dbg !4852 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4856, metadata !DIExpression()), !dbg !4857
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !4858
  %stashed = getelementptr inbounds %struct.ns_common, ptr %0, i32 0, i32 0, !dbg !4859
  call void @atomic_long_set(ptr noundef %stashed, i64 noundef 0) #14, !dbg !4860
  %1 = load ptr, ptr %ns.addr, align 8, !dbg !4861
  %inum = getelementptr inbounds %struct.ns_common, ptr %1, i32 0, i32 2, !dbg !4862
  %call = call i32 @proc_alloc_inum(ptr noundef %inum) #14, !dbg !4863
  ret i32 %call, !dbg !4864
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_set(ptr noundef %r, i32 noundef %n) #2 align 16 !dbg !4865 {
entry:
  %r.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4869, metadata !DIExpression()), !dbg !4871
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4870, metadata !DIExpression()), !dbg !4872
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4873
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !4874
  %1 = load i32, ptr %n.addr, align 4, !dbg !4875
  call void @atomic_set(ptr noundef %refs, i32 noundef %1) #14, !dbg !4876
  ret void, !dbg !4877
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !4878 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4880, metadata !DIExpression()), !dbg !4885
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4881, metadata !DIExpression()), !dbg !4886
  %0 = load i64, ptr %size.addr, align 8, !dbg !4887
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4888
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4889

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4890
  %tobool = icmp ne i64 %2, 0, !dbg !4890
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4891

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !4892
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4882, metadata !DIExpression()), !dbg !4893
  %3 = load i64, ptr %size.addr, align 8, !dbg !4894
  %cmp = icmp ugt i64 %3, 8192, !dbg !4896
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4897

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4898
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4899
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !4900
  store ptr %call, ptr %retval, align 8, !dbg !4901
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4901

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4902
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !4902
  store i32 %call2, ptr %index, align 4, !dbg !4903
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4904
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4905
  %9 = ptrtoint ptr %8 to i64, !dbg !4905
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !4906
  %idxprom = zext i32 %call3 to i64, !dbg !4907
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4907
  %10 = load i32, ptr %index, align 4, !dbg !4908
  %idxprom4 = zext i32 %10 to i64, !dbg !4907
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4907
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4907
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4909
  %13 = load i64, ptr %size.addr, align 8, !dbg !4910
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !4911
  store ptr %call6, ptr %retval, align 8, !dbg !4912
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4912

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !4913
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4914
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4915
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !4916
  store ptr %call8, ptr %retval, align 8, !dbg !4917
  br label %return, !dbg !4917

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4918
  ret ptr %16, !dbg !4918
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4919 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !4920 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4924, metadata !DIExpression()), !dbg !4926
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !4925, metadata !DIExpression()), !dbg !4927
  %0 = load i64, ptr %size.addr, align 8, !dbg !4928
  %tobool = icmp ne i64 %0, 0, !dbg !4928
  br i1 %tobool, label %if.end, label %if.then, !dbg !4930

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4931
  br label %return, !dbg !4931

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4932
  %cmp = icmp ule i64 %1, 8, !dbg !4934
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4935

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4936
  br label %return, !dbg !4936

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4937
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4939
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4940

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4941
  %cmp4 = icmp ule i64 %3, 96, !dbg !4942
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4943

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4944
  br label %return, !dbg !4944

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4945
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4947
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4948

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4949
  %cmp9 = icmp ule i64 %5, 192, !dbg !4950
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4951

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4952
  br label %return, !dbg !4952

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4953
  %cmp12 = icmp ule i64 %6, 8, !dbg !4955
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4956

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4957
  br label %return, !dbg !4957

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !4958
  %cmp15 = icmp ule i64 %7, 16, !dbg !4960
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4961

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !4962
  br label %return, !dbg !4962

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !4963
  %cmp18 = icmp ule i64 %8, 32, !dbg !4965
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4966

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !4967
  br label %return, !dbg !4967

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !4968
  %cmp21 = icmp ule i64 %9, 64, !dbg !4970
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4971

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !4972
  br label %return, !dbg !4972

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !4973
  %cmp24 = icmp ule i64 %10, 128, !dbg !4975
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4976

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !4977
  br label %return, !dbg !4977

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !4978
  %cmp27 = icmp ule i64 %11, 256, !dbg !4980
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4981

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !4982
  br label %return, !dbg !4982

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !4983
  %cmp30 = icmp ule i64 %12, 512, !dbg !4985
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !4986

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !4987
  br label %return, !dbg !4987

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !4988
  %cmp33 = icmp ule i64 %13, 1024, !dbg !4990
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !4991

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !4992
  br label %return, !dbg !4992

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !4993
  %cmp36 = icmp ule i64 %14, 2048, !dbg !4995
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4996

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !4997
  br label %return, !dbg !4997

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !4998
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5000
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5001

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5002
  br label %return, !dbg !5002

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5003
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5005
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5006

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5007
  br label %return, !dbg !5007

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5008
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5010
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5011

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5012
  br label %return, !dbg !5012

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5013
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5015
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5016

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5017
  br label %return, !dbg !5017

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5018
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5020
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5021

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5022
  br label %return, !dbg !5022

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5023
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5025
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5026

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5027
  br label %return, !dbg !5027

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5028
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5030
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5031

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5032
  br label %return, !dbg !5032

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5033
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5035
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5036

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5037
  br label %return, !dbg !5037

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5038
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5040
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5041

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5042
  br label %return, !dbg !5042

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5043
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5045
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5046

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5047
  br label %return, !dbg !5047

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5048, !range !5050, !noundef !844
  %tobool69 = trunc i8 %25 to i1, !dbg !5048
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5051

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5052

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #19, !dbg !5053, !srcloc !5056
  unreachable, !dbg !5053

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5057

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5058

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5059

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5061

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5059

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #15, !dbg !5063, !srcloc !5065
  br label %do.end75, !dbg !5063

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5059

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5066
  br label %return, !dbg !5066

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5067
  ret i32 %26, !dbg !5067
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5068 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !5074 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5078, metadata !DIExpression()), !dbg !5080
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5079, metadata !DIExpression()), !dbg !5081
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5082
  %and = and i32 %0, 17, !dbg !5082
  %cmp = icmp eq i32 %and, 0, !dbg !5082
  %lnot = xor i1 %cmp, true, !dbg !5082
  %lnot1 = xor i1 %lnot, true, !dbg !5082
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5082
  %conv = sext i32 %lnot.ext to i64, !dbg !5082
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5082
  %tobool = icmp ne i64 %expval, 0, !dbg !5082
  br i1 %tobool, label %if.then, label %if.end, !dbg !5084

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5085
  br label %return, !dbg !5085

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5086
  %and2 = and i32 %1, 1, !dbg !5088
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5088
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5089

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5090
  br label %return, !dbg !5090

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5091
  br label %return, !dbg !5091

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5093
  ret i32 %2, !dbg !5093
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5094 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5095 dso_local void @__compiletime_assert_245() #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_set(ptr noundef %v, i64 noundef %i) #6 align 16 !dbg !5096 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5100, metadata !DIExpression()), !dbg !5102
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5101, metadata !DIExpression()), !dbg !5103
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5104
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 8) #14, !dbg !5105
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5106
  %2 = load i64, ptr %i.addr, align 8, !dbg !5107
  call void @raw_atomic_long_set(ptr noundef %1, i64 noundef %2) #14, !dbg !5108
  ret void, !dbg !5109
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5110 dso_local i32 @proc_alloc_inum(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !5113 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5115, metadata !DIExpression()), !dbg !5117
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5116, metadata !DIExpression()), !dbg !5118
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5119
  %1 = load i64, ptr %size.addr, align 8, !dbg !5120
  %conv = trunc i64 %1 to i32, !dbg !5120
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !5121
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5122
  %3 = load i64, ptr %size.addr, align 8, !dbg !5122
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #14, !dbg !5122
  ret void, !dbg !5123
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_set(ptr noundef %v, i64 noundef %i) #6 align 16 !dbg !5124 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5126, metadata !DIExpression()), !dbg !5128
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5127, metadata !DIExpression()), !dbg !5129
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5130
  %1 = load i64, ptr %i.addr, align 8, !dbg !5131
  call void @raw_atomic64_set(ptr noundef %0, i64 noundef %1) #14, !dbg !5132
  ret void, !dbg !5133
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_set(ptr noundef %v, i64 noundef %i) #6 align 16 !dbg !5134 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5139, metadata !DIExpression()), !dbg !5141
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5140, metadata !DIExpression()), !dbg !5142
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5143
  %1 = load i64, ptr %i.addr, align 8, !dbg !5144
  call void @arch_atomic64_set(ptr noundef %0, i64 noundef %1) #14, !dbg !5145
  ret void, !dbg !5146
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_set(ptr noundef %v, i64 noundef %i) #6 align 16 !dbg !5147 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5150, metadata !DIExpression()), !dbg !5152
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5151, metadata !DIExpression()), !dbg !5153
  br label %do.body, !dbg !5154

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %i.addr, align 8, !dbg !5155
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5155
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %1, i32 0, i32 0, !dbg !5155
  store volatile i64 %0, ptr %counter, align 8, !dbg !5155
  br label %do.end, !dbg !5155

do.end:                                           ; preds = %do.body
  ret void, !dbg !5157
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #6 align 16 !dbg !5158 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5162, metadata !DIExpression()), !dbg !5164
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5163, metadata !DIExpression()), !dbg !5165
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5166
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #14, !dbg !5167
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5168
  %2 = load i32, ptr %i.addr, align 4, !dbg !5169
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #14, !dbg !5170
  ret void, !dbg !5171
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #6 align 16 !dbg !5172 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5174, metadata !DIExpression()), !dbg !5176
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5175, metadata !DIExpression()), !dbg !5177
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5178
  %1 = load i32, ptr %i.addr, align 4, !dbg !5179
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #14, !dbg !5180
  ret void, !dbg !5181
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #6 align 16 !dbg !5182 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5184, metadata !DIExpression()), !dbg !5186
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5185, metadata !DIExpression()), !dbg !5187
  br label %do.body, !dbg !5188

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !5189
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5189
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !5189
  store volatile i32 %0, ptr %counter, align 4, !dbg !5189
  br label %do.end, !dbg !5189

do.end:                                           ; preds = %do.body
  ret void, !dbg !5191
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @task_lock(ptr noundef %p) #2 align 16 !dbg !5192 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5195, metadata !DIExpression()), !dbg !5196
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5197
  %alloc_lock = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 121, !dbg !5198
  call void @spin_lock(ptr noundef %alloc_lock) #14, !dbg !5199
  ret void, !dbg !5200
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @task_unlock(ptr noundef %p) #2 align 16 !dbg !5201 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5203, metadata !DIExpression()), !dbg !5204
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5205
  %alloc_lock = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 121, !dbg !5206
  call void @spin_unlock(ptr noundef %alloc_lock) #14, !dbg !5207
  ret void, !dbg !5208
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #6 align 16 !dbg !5209 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5211, metadata !DIExpression()), !dbg !5212
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5213
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5213
  call void @_raw_spin_lock(ptr noundef %1) #14, !dbg !5213
  ret void, !dbg !5214
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5215 dso_local void @_raw_spin_lock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #6 align 16 !dbg !5216 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5218, metadata !DIExpression()), !dbg !5219
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5220
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5220
  call void @_raw_spin_unlock(ptr noundef %1) #14, !dbg !5220
  ret void, !dbg !5221
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5222 dso_local void @_raw_spin_unlock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_cgroup_ns(ptr noundef %ns) #2 align 16 !dbg !5223 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !5225, metadata !DIExpression()), !dbg !5226
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !5227
  %tobool = icmp ne ptr %0, null, !dbg !5227
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5229

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %ns.addr, align 8, !dbg !5230
  %ns1 = getelementptr inbounds %struct.cgroup_namespace, ptr %1, i32 0, i32 0, !dbg !5231
  %count = getelementptr inbounds %struct.ns_common, ptr %ns1, i32 0, i32 3, !dbg !5232
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %count) #14, !dbg !5233
  br i1 %call, label %if.then, label %if.end, !dbg !5234

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr %ns.addr, align 8, !dbg !5235
  call void @free_cgroup_ns(ptr noundef %2) #14, !dbg !5236
  br label %if.end, !dbg !5236

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !5237
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_cg_ns(ptr noundef %ns) #2 align 16 !dbg !5238 {
entry:
  %ns.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !5242, metadata !DIExpression()), !dbg !5245
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5246
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5243, metadata !DIExpression()), !dbg !5246
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !5246
  store ptr %0, ptr %__mptr, align 8, !dbg !5246
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5246
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5246
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5246
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5247
  %2 = load ptr, ptr %tmp, align 8, !dbg !5246
  ret ptr %2, !dbg !5248
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #2 align 16 !dbg !5249 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5251, metadata !DIExpression()), !dbg !5252
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5253
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #14, !dbg !5254
  ret i1 %call, !dbg !5255
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !5256 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5260, metadata !DIExpression()), !dbg !5262
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5261, metadata !DIExpression()), !dbg !5263
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5264
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !5265
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #14, !dbg !5266
  ret i1 %call, !dbg !5267
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !5268 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5272, metadata !DIExpression()), !dbg !5276
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5273, metadata !DIExpression()), !dbg !5277
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5274, metadata !DIExpression()), !dbg !5278
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #15, !dbg !5279
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5275, metadata !DIExpression()), !dbg !5280
  %0 = load i32, ptr %i.addr, align 4, !dbg !5281
  %1 = load ptr, ptr %r.addr, align 8, !dbg !5282
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !5283
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #14, !dbg !5284
  store i32 %call, ptr %old, align 4, !dbg !5280
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !5285
  %tobool = icmp ne ptr %2, null, !dbg !5285
  br i1 %tobool, label %if.then, label %if.end, !dbg !5287

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !5288
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !5289
  store i32 %3, ptr %4, align 4, !dbg !5290
  br label %if.end, !dbg !5291

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !5292
  %6 = load i32, ptr %i.addr, align 4, !dbg !5294
  %cmp = icmp eq i32 %5, %6, !dbg !5295
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !5296

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !5297

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !5299

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !5301

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5301

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !5299

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !5303

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !5305

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5305

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5303, !srcloc !5307
  br label %do.cond7, !dbg !5303

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !5303

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !5299

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !5299

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !5308
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5308

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !5309
  %cmp12 = icmp slt i32 %7, 0, !dbg !5309
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !5309

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !5309
  %9 = load i32, ptr %i.addr, align 4, !dbg !5309
  %sub = sub i32 %8, %9, !dbg !5309
  %cmp13 = icmp slt i32 %sub, 0, !dbg !5309
  br label %lor.end, !dbg !5309

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !5309
  %lnot14 = xor i1 %lnot, true, !dbg !5309
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !5309
  %conv = sext i32 %lnot.ext to i64, !dbg !5309
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5309
  %tobool15 = icmp ne i64 %expval, 0, !dbg !5309
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5311

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !5312
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #14, !dbg !5313
  br label %if.end17, !dbg !5313

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !5314
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5314

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #15, !dbg !5315
  %12 = load i1, ptr %retval, align 1, !dbg !5315
  ret i1 %12, !dbg !5315
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !5316 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5318, metadata !DIExpression()), !dbg !5320
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5319, metadata !DIExpression()), !dbg !5321
  br label %do.body, !dbg !5322

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5323

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5325
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !5326
  %1 = load i32, ptr %i.addr, align 4, !dbg !5327
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5328
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #14, !dbg !5329
  ret i32 %call, !dbg !5330
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !5331 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5333, metadata !DIExpression()), !dbg !5335
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5334, metadata !DIExpression()), !dbg !5336
  %0 = load i32, ptr %i.addr, align 4, !dbg !5337
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5338
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #14, !dbg !5339
  ret i32 %call, !dbg !5340
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !5341 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5343, metadata !DIExpression()), !dbg !5347
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5344, metadata !DIExpression()), !dbg !5348
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #15, !dbg !5349
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5345, metadata !DIExpression()), !dbg !5349
  %0 = load i32, ptr %i.addr, align 4, !dbg !5349
  %sub = sub i32 0, %0, !dbg !5349
  store i32 %sub, ptr %__ret, align 4, !dbg !5349
  %1 = load i32, ptr %__ret, align 4, !dbg !5349
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5349
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !5349
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #15, !dbg !5349, !srcloc !5350
  store i32 %3, ptr %__ret, align 4, !dbg !5349
  %4 = load i32, ptr %__ret, align 4, !dbg !5349
  store i32 %4, ptr %tmp, align 4, !dbg !5349
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #15, !dbg !5351
  %5 = load i32, ptr %tmp, align 4, !dbg !5349
  ret i32 %5, !dbg !5352
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone }
attributes #15 = { nounwind }
attributes #16 = { nounwind memory(none) }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245}
!llvm.ident = !{!4246}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_free_cgroup_ns294", scope: !2, file: !3, line: 48, type: !28, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/cgroup/.namespace.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/cgroup/namespace\22 -D KBUILD_BASENAME=\22namespace\22 -D KBUILD_MODNAME=\22namespace\22 -D __KBUILD_MODNAME=kmod_namespace -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/cgroup/namespace.ll kernel/cgroup/namespace.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !230, globals: !4220, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/cgroup/namespace.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1fdbbf5ccb45b60feb593c468737fa0c")
!4 = !{!5, !11, !19, !115, !124, !129, !138, !143, !149, !157, !173, !180, !186, !193, !207, !215, !220}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !12, line: 9, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!13 = !{!14, !15, !16, !17, !18}
!14 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!15 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!16 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!17 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!18 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !21, file: !20, line: 147, baseType: !7, size: 32, elements: !112)
!20 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !20, line: 135, size: 512, elements: !22)
!22 = !{!23, !27, !29, !31, !35, !36, !52, !110, !111}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !21, file: !20, line: 136, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !21, file: !20, line: 137, baseType: !28, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !21, file: !20, line: 138, baseType: !30, size: 32, offset: 128)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !21, file: !20, line: 139, baseType: !32, size: 16, offset: 160)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !33, line: 24, baseType: !34)
!33 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!34 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !21, file: !20, line: 150, baseType: !19, size: 32, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !21, file: !20, line: 151, baseType: !37, size: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !20, line: 64, baseType: !39)
!39 = !DISubroutineType(types: !40)
!40 = !{!30, !41, !30, !28, !42, !48}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 61, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !45, line: 72, baseType: !46)
!45 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !45, line: 16, baseType: !47)
!47 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !33, line: 52, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !45, line: 88, baseType: !51)
!51 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !21, file: !20, line: 152, baseType: !53, size: 64, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !20, line: 117, size: 256, elements: !55)
!55 = !{!56, !61}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !54, file: !20, line: 118, baseType: !57, size: 32)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !33, line: 174, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 172, size: 32, elements: !59)
!59 = !{!60}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !58, file: !33, line: 173, baseType: !30, size: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !54, file: !20, line: 119, baseType: !62, size: 192, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !63, line: 41, baseType: !64)
!63 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !63, line: 37, size: 192, elements: !65)
!65 = !{!66, !104}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !64, file: !63, line: 38, baseType: !67, size: 32)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !68, line: 29, baseType: !69)
!68 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !68, line: 17, size: 32, elements: !70)
!70 = !{!71}
!71 = !DIDerivedType(tag: DW_TAG_member, scope: !69, file: !68, line: 18, baseType: !72, size: 32)
!72 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !69, file: !68, line: 18, size: 32, elements: !73)
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !72, file: !68, line: 19, baseType: !75, size: 32)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !76, line: 14, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !75, file: !76, line: 15, baseType: !79, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !80, line: 44, baseType: !81)
!80 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !80, line: 14, size: 32, elements: !82)
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !80, line: 15, baseType: !84, size: 32)
!84 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !81, file: !80, line: 15, size: 32, elements: !85)
!85 = !{!86, !87, !97}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !84, file: !80, line: 16, baseType: !57, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, scope: !84, file: !80, line: 24, baseType: !88, size: 16)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !80, line: 24, size: 16, elements: !89)
!89 = !{!90, !96}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !88, file: !80, line: 25, baseType: !91, size: 8)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !92, line: 17, baseType: !93)
!92 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !94, line: 21, baseType: !95)
!94 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!95 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !88, file: !80, line: 26, baseType: !91, size: 8, offset: 8)
!97 = !DIDerivedType(tag: DW_TAG_member, scope: !84, file: !80, line: 28, baseType: !98, size: 32)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !80, line: 28, size: 32, elements: !99)
!99 = !{!100, !103}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !98, file: !80, line: 29, baseType: !101, size: 16)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !92, line: 19, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !94, line: 24, baseType: !34)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !98, file: !80, line: 30, baseType: !101, size: 16, offset: 16)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !64, file: !63, line: 39, baseType: !105, size: 128, offset: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !33, line: 190, size: 128, elements: !106)
!106 = !{!107, !109}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !105, file: !33, line: 191, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !105, file: !33, line: 191, baseType: !108, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !21, file: !20, line: 153, baseType: !28, size: 64, offset: 384)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !21, file: !20, line: 154, baseType: !28, size: 64, offset: 448)
!112 = !{!113, !114}
!113 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!114 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_value_type", file: !116, line: 51, baseType: !7, size: 32, elements: !117)
!116 = !DIFile(filename: "./include/linux/fs_context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "58f4e15024eca636c2bdb50c4534d2c5")
!117 = !{!118, !119, !120, !121, !122, !123}
!118 = !DIEnumerator(name: "fs_value_is_undefined", value: 0)
!119 = !DIEnumerator(name: "fs_value_is_flag", value: 1)
!120 = !DIEnumerator(name: "fs_value_is_string", value: 2)
!121 = !DIEnumerator(name: "fs_value_is_blob", value: 3)
!122 = !DIEnumerator(name: "fs_value_is_filename", value: 4)
!123 = !DIEnumerator(name: "fs_value_is_file", value: 5)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_purpose", file: !116, line: 29, baseType: !7, size: 32, elements: !125)
!125 = !{!126, !127, !128}
!126 = !DIEnumerator(name: "FS_CONTEXT_FOR_MOUNT", value: 0)
!127 = !DIEnumerator(name: "FS_CONTEXT_FOR_SUBMOUNT", value: 1)
!128 = !DIEnumerator(name: "FS_CONTEXT_FOR_RECONFIGURE", value: 2)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_phase", file: !116, line: 38, baseType: !7, size: 32, elements: !130)
!130 = !{!131, !132, !133, !134, !135, !136, !137}
!131 = !DIEnumerator(name: "FS_CONTEXT_CREATE_PARAMS", value: 0)
!132 = !DIEnumerator(name: "FS_CONTEXT_CREATING", value: 1)
!133 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_MOUNT", value: 2)
!134 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_RECONF", value: 3)
!135 = !DIEnumerator(name: "FS_CONTEXT_RECONF_PARAMS", value: 4)
!136 = !DIEnumerator(name: "FS_CONTEXT_RECONFIGURING", value: 5)
!137 = !DIEnumerator(name: "FS_CONTEXT_FAILED", value: 6)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !139, line: 2052, baseType: !7, size: 32, elements: !140)
!139 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!140 = !{!141, !142}
!141 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!142 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !144, line: 54, baseType: !7, size: 32, elements: !145)
!144 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!145 = !{!146, !147, !148}
!146 = !DIEnumerator(name: "USRQUOTA", value: 0)
!147 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!148 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !150, line: 68, baseType: !7, size: 32, elements: !151)
!150 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!151 = !{!152, !153, !154, !155, !156}
!152 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!153 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!154 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!155 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!156 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !158, line: 1325, baseType: !7, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172}
!160 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!161 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!162 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!163 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!164 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!165 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!166 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!167 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!168 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!169 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!170 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!171 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!172 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !174, line: 15, baseType: !7, size: 32, elements: !175)
!174 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!175 = !{!176, !177, !178, !179}
!176 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!177 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!178 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!179 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !181, line: 16, baseType: !7, size: 32, elements: !182)
!181 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!182 = !{!183, !184, !185}
!183 = !DIEnumerator(name: "TT_NONE", value: 0)
!184 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!185 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !187, line: 51, baseType: !7, size: 32, elements: !188)
!187 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!188 = !{!189, !190, !191, !192}
!189 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!190 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!191 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!192 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ucount_type", file: !194, line: 40, baseType: !7, size: 32, elements: !195)
!194 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!195 = !{!196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206}
!196 = !DIEnumerator(name: "UCOUNT_USER_NAMESPACES", value: 0)
!197 = !DIEnumerator(name: "UCOUNT_PID_NAMESPACES", value: 1)
!198 = !DIEnumerator(name: "UCOUNT_UTS_NAMESPACES", value: 2)
!199 = !DIEnumerator(name: "UCOUNT_IPC_NAMESPACES", value: 3)
!200 = !DIEnumerator(name: "UCOUNT_NET_NAMESPACES", value: 4)
!201 = !DIEnumerator(name: "UCOUNT_MNT_NAMESPACES", value: 5)
!202 = !DIEnumerator(name: "UCOUNT_CGROUP_NAMESPACES", value: 6)
!203 = !DIEnumerator(name: "UCOUNT_TIME_NAMESPACES", value: 7)
!204 = !DIEnumerator(name: "UCOUNT_INOTIFY_INSTANCES", value: 8)
!205 = !DIEnumerator(name: "UCOUNT_INOTIFY_WATCHES", value: 9)
!206 = !DIEnumerator(name: "UCOUNT_COUNTS", value: 10)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !208, line: 119, baseType: !7, size: 32, elements: !209)
!208 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!209 = !{!210, !211, !212, !213, !214}
!210 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!211 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!212 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!213 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!214 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !216, line: 10, baseType: !7, size: 32, elements: !217)
!216 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!217 = !{!218, !219}
!218 = !DIEnumerator(name: "false", value: 0)
!219 = !DIEnumerator(name: "true", value: 1)
!220 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !221, line: 364, baseType: !7, size: 32, elements: !222)
!221 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!222 = !{!223, !224, !225, !226, !227, !228, !229}
!223 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!224 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!225 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!226 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!227 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!228 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!229 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!230 = !{!28, !231, !2943, !4212, !4215, !525, !47, !1189, !4216, !4218, !2922}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !234, line: 110, size: 1472, elements: !235)
!234 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!235 = !{!236, !245, !253, !260, !261, !262, !263, !264, !265, !266, !267, !276, !277, !278, !279, !280, !281, !433, !434, !435, !436, !437, !474, !4198, !4199, !4207}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !233, file: !234, line: 111, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !238, line: 13, baseType: !239)
!238 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !33, line: 181, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 179, size: 64, elements: !241)
!241 = !{!242}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !240, file: !33, line: 180, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !92, line: 22, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !94, line: 30, baseType: !51)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !233, file: !234, line: 112, baseType: !246, size: 32, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !247, line: 23, baseType: !248)
!247 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !247, line: 21, size: 32, elements: !249)
!249 = !{!250}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !248, file: !247, line: 22, baseType: !251, size: 32)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !33, line: 37, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !45, line: 49, baseType: !7)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !233, file: !234, line: 113, baseType: !254, size: 32, offset: 96)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !247, line: 28, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !247, line: 26, size: 32, elements: !256)
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !255, file: !247, line: 27, baseType: !258, size: 32)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !33, line: 38, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !45, line: 50, baseType: !7)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !233, file: !234, line: 114, baseType: !246, size: 32, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !233, file: !234, line: 115, baseType: !254, size: 32, offset: 160)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !233, file: !234, line: 116, baseType: !246, size: 32, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !233, file: !234, line: 117, baseType: !254, size: 32, offset: 224)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !233, file: !234, line: 118, baseType: !246, size: 32, offset: 256)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !233, file: !234, line: 119, baseType: !254, size: 32, offset: 288)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !233, file: !234, line: 120, baseType: !7, size: 32, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !233, file: !234, line: 121, baseType: !268, size: 64, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !269, line: 24, baseType: !270)
!269 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !269, line: 24, size: 64, elements: !271)
!271 = !{!272}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !270, file: !269, line: 24, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !92, line: 23, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !94, line: 31, baseType: !275)
!275 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !233, file: !234, line: 122, baseType: !268, size: 64, offset: 448)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !233, file: !234, line: 123, baseType: !268, size: 64, offset: 512)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !233, file: !234, line: 124, baseType: !268, size: 64, offset: 576)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !233, file: !234, line: 125, baseType: !268, size: 64, offset: 640)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !233, file: !234, line: 127, baseType: !95, size: 8, offset: 704)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !233, file: !234, line: 129, baseType: !282, size: 64, offset: 768)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !284, line: 195, size: 1728, elements: !285)
!284 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!285 = !{!286, !291, !296, !308, !322, !325, !326, !333, !334, !335, !336, !341, !342, !343, !345, !346, !395, !418}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !283, file: !284, line: 196, baseType: !287, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !208, line: 113, baseType: !288)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !208, line: 111, size: 32, elements: !289)
!289 = !{!290}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !288, file: !208, line: 112, baseType: !57, size: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !283, file: !284, line: 197, baseType: !292, size: 32, offset: 32)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !284, line: 28, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !33, line: 104, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !92, line: 20, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !94, line: 26, baseType: !30)
!296 = !DIDerivedType(tag: DW_TAG_member, scope: !283, file: !284, line: 198, baseType: !297, size: 192, offset: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !283, file: !284, line: 198, size: 192, elements: !298)
!298 = !{!299, !300}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !297, file: !284, line: 199, baseType: !105, size: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !297, file: !284, line: 200, baseType: !301, size: 192, align: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !302, line: 5, size: 192, align: 64, elements: !303)
!302 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!303 = !{!304, !305, !307}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !301, file: !302, line: 6, baseType: !47, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !301, file: !302, line: 7, baseType: !306, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !301, file: !302, line: 8, baseType: !306, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !283, file: !284, line: 205, baseType: !309, size: 320, offset: 256)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !310, line: 48, size: 320, elements: !311)
!310 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!311 = !{!312, !313, !314, !319, !321}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !309, file: !310, line: 49, baseType: !237, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !309, file: !310, line: 55, baseType: !237, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !309, file: !310, line: 57, baseType: !315, size: 32, offset: 128)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !316, line: 15, size: 32, elements: !317)
!316 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !315, file: !316, line: 20, baseType: !57, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !309, file: !310, line: 59, baseType: !320, size: 32, offset: 160)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !76, line: 23, baseType: !75)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !309, file: !310, line: 60, baseType: !105, size: 128, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !283, file: !284, line: 206, baseType: !323, size: 64, offset: 576)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !284, line: 206, flags: DIFlagFwdDecl)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !283, file: !284, line: 207, baseType: !28, size: 64, offset: 640)
!326 = !DIDerivedType(tag: DW_TAG_member, scope: !283, file: !284, line: 208, baseType: !327, size: 64, offset: 704)
!327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !283, file: !284, line: 208, size: 64, elements: !328)
!328 = !{!329, !332}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !327, file: !284, line: 209, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !331, line: 8, baseType: !244)
!331 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!332 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !327, file: !284, line: 210, baseType: !330, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !283, file: !284, line: 212, baseType: !330, size: 64, offset: 768)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !283, file: !284, line: 213, baseType: !246, size: 32, offset: 832)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !283, file: !284, line: 214, baseType: !254, size: 32, offset: 864)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !283, file: !284, line: 215, baseType: !337, size: 32, offset: 896)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !284, line: 31, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !33, line: 110, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !92, line: 21, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !94, line: 27, baseType: !7)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !283, file: !284, line: 216, baseType: !34, size: 16, offset: 928)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !283, file: !284, line: 217, baseType: !34, size: 16, offset: 944)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !283, file: !284, line: 221, baseType: !344, size: 16, offset: 960)
!344 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !283, file: !284, line: 228, baseType: !47, size: 64, offset: 1024)
!346 = !DIDerivedType(tag: DW_TAG_member, scope: !283, file: !284, line: 245, baseType: !347, size: 320, offset: 1088)
!347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !283, file: !284, line: 245, size: 320, elements: !348)
!348 = !{!349, !386}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !347, file: !284, line: 246, baseType: !350, size: 320)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !284, line: 114, size: 320, elements: !351)
!351 = !{!352, !353, !365, !368, !385}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !350, file: !284, line: 116, baseType: !47, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, scope: !350, file: !284, line: 117, baseType: !354, size: 64, offset: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !350, file: !284, line: 117, size: 64, elements: !355)
!355 = !{!356, !364}
!356 = !DIDerivedType(tag: DW_TAG_member, scope: !354, file: !284, line: 118, baseType: !357, size: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !354, file: !284, line: 118, size: 64, elements: !358)
!358 = !{!359, !360}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !357, file: !284, line: 120, baseType: !101, size: 16)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !357, file: !284, line: 121, baseType: !361, size: 48, offset: 16)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 48, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 6)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !354, file: !284, line: 127, baseType: !47, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !350, file: !284, line: 129, baseType: !366, size: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !284, line: 102, flags: DIFlagFwdDecl)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !350, file: !284, line: 130, baseType: !369, size: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !284, line: 108, size: 192, elements: !371)
!371 = !{!372, !381, !382}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !370, file: !284, line: 109, baseType: !373, size: 128, align: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !33, line: 232, size: 128, align: 64, elements: !374)
!374 = !{!375, !377}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !373, file: !33, line: 233, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !373, file: !33, line: 234, baseType: !378, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !376}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !370, file: !284, line: 110, baseType: !287, size: 32, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !370, file: !284, line: 111, baseType: !383, size: 8, offset: 160)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !33, line: 35, baseType: !384)
!384 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !350, file: !284, line: 131, baseType: !24, size: 64, offset: 256)
!386 = !DIDerivedType(tag: DW_TAG_member, scope: !347, file: !284, line: 247, baseType: !387, size: 320)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !347, file: !284, line: 247, size: 320, elements: !388)
!388 = !{!389, !390, !391, !392, !393}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !387, file: !284, line: 248, baseType: !47, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !387, file: !284, line: 249, baseType: !47, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !387, file: !284, line: 250, baseType: !366, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !387, file: !284, line: 251, baseType: !369, size: 64, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !387, file: !284, line: 252, baseType: !394, size: 64, offset: 256)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, scope: !283, file: !284, line: 260, baseType: !396, size: 256, offset: 1408)
!396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !283, file: !284, line: 260, size: 256, elements: !397)
!397 = !{!398, !406}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !396, file: !284, line: 261, baseType: !399, size: 256)
!399 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !284, line: 134, size: 256, elements: !400)
!400 = !{!401, !402}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !399, file: !284, line: 135, baseType: !28, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !399, file: !284, line: 136, baseType: !403, size: 256)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 256, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 4)
!406 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !284, line: 262, baseType: !407, size: 256)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !396, file: !284, line: 262, size: 256, elements: !408)
!408 = !{!409, !410}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !407, file: !284, line: 264, baseType: !105, size: 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !407, file: !284, line: 265, baseType: !411, size: 128, offset: 128)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !412, line: 22, size: 128, elements: !413)
!412 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!413 = !{!414, !417}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !411, file: !412, line: 23, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !412, line: 23, flags: DIFlagFwdDecl)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !411, file: !412, line: 24, baseType: !47, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !283, file: !284, line: 280, baseType: !419, size: 64, offset: 1664)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !284, line: 176, size: 192, elements: !421)
!421 = !{!422, !431, !432}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !420, file: !284, line: 177, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !284, line: 171, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!30, !282, !427, !429, !282}
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !420, file: !284, line: 178, baseType: !282, size: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !420, file: !284, line: 179, baseType: !366, size: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !233, file: !234, line: 130, baseType: !282, size: 64, offset: 832)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !233, file: !234, line: 131, baseType: !282, size: 64, offset: 896)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !233, file: !234, line: 132, baseType: !282, size: 64, offset: 960)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !233, file: !234, line: 135, baseType: !28, size: 64, offset: 1024)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !233, file: !234, line: 137, baseType: !438, size: 64, offset: 1088)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !440, line: 14, size: 1088, elements: !441)
!440 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!441 = !{!442, !443, !452, !453, !454, !461, !462, !463}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !439, file: !440, line: 15, baseType: !287, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !439, file: !440, line: 17, baseType: !444, size: 320, offset: 64)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !445, line: 22, size: 320, elements: !446)
!445 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!446 = !{!447, !448, !449, !450}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !444, file: !445, line: 23, baseType: !320, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !444, file: !445, line: 24, baseType: !243, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !444, file: !445, line: 26, baseType: !105, size: 128, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !444, file: !445, line: 28, baseType: !451, size: 64, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !439, file: !440, line: 19, baseType: !47, size: 64, offset: 384)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !439, file: !440, line: 20, baseType: !237, size: 64, offset: 448)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !439, file: !440, line: 23, baseType: !455, size: 128, offset: 512)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !33, line: 198, size: 128, elements: !456)
!456 = !{!457, !459}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !455, file: !33, line: 199, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !455, file: !33, line: 199, baseType: !460, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !439, file: !440, line: 24, baseType: !246, size: 32, offset: 640)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !439, file: !440, line: 29, baseType: !237, size: 64, offset: 704)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !439, file: !440, line: 36, baseType: !464, size: 320, offset: 768)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !465, line: 15, size: 320, elements: !466)
!465 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!466 = !{!467, !468, !469, !470, !471, !472, !473}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !464, file: !465, line: 16, baseType: !320, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !464, file: !465, line: 18, baseType: !30, size: 32, offset: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !464, file: !465, line: 19, baseType: !30, size: 32, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !464, file: !465, line: 20, baseType: !30, size: 32, offset: 96)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !464, file: !465, line: 21, baseType: !30, size: 32, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !464, file: !465, line: 22, baseType: !47, size: 64, offset: 192)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !464, file: !465, line: 23, baseType: !47, size: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !233, file: !234, line: 138, baseType: !475, size: 64, offset: 1152)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !194, line: 68, size: 4800, elements: !477)
!477 = !{!478, !500, !501, !502, !503, !504, !505, !506, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4192, !4193, !4194, !4196}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !476, file: !194, line: 69, baseType: !479, size: 576)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !194, line: 23, size: 576, elements: !480)
!480 = !{!481, !482}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !479, file: !194, line: 24, baseType: !339, size: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, scope: !479, file: !194, line: 25, baseType: !483, size: 512, offset: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !479, file: !194, line: 25, size: 512, elements: !484)
!484 = !{!485, !494}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !483, file: !194, line: 26, baseType: !486, size: 480)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 480, elements: !492)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !194, line: 17, size: 96, elements: !488)
!488 = !{!489, !490, !491}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !487, file: !194, line: 18, baseType: !339, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !487, file: !194, line: 19, baseType: !339, size: 32, offset: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !487, file: !194, line: 20, baseType: !339, size: 32, offset: 64)
!492 = !{!493}
!493 = !DISubrange(count: 5)
!494 = !DIDerivedType(tag: DW_TAG_member, scope: !483, file: !194, line: 27, baseType: !495, size: 128)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !483, file: !194, line: 27, size: 128, elements: !496)
!496 = !{!497, !499}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !495, file: !194, line: 28, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !495, file: !194, line: 29, baseType: !498, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !476, file: !194, line: 70, baseType: !479, size: 576, offset: 576)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !476, file: !194, line: 71, baseType: !479, size: 576, offset: 1152)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !476, file: !194, line: 72, baseType: !475, size: 64, offset: 1728)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !476, file: !194, line: 73, baseType: !30, size: 32, offset: 1792)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !476, file: !194, line: 74, baseType: !246, size: 32, offset: 1824)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !476, file: !194, line: 75, baseType: !254, size: 32, offset: 1856)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !476, file: !194, line: 76, baseType: !507, size: 192, offset: 1920)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !508, line: 9, size: 192, elements: !509)
!508 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!509 = !{!510, !511, !4125, !4126}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !507, file: !508, line: 10, baseType: !237, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !507, file: !508, line: 11, baseType: !512, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !515, line: 16, size: 512, elements: !516)
!515 = !DIFile(filename: "./include/linux/proc_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10d8d049c3f8fd93040e0b5385a478ba")
!516 = !{!517, !518, !519, !520, !4102, !4106, !4117, !4121}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !514, file: !515, line: 17, baseType: !24, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "real_ns_name", scope: !514, file: !515, line: 18, baseType: !24, size: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !514, file: !515, line: 19, baseType: !30, size: 32, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !514, file: !515, line: 20, baseType: !521, size: 64, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!524, !525}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !527, line: 746, size: 58368, elements: !528)
!527 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!528 = !{!529, !537, !538, !539, !540, !541, !542, !543, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !614, !625, !725, !729, !732, !763, !764, !765, !766, !777, !779, !780, !781, !782, !783, !784, !795, !796, !799, !800, !801, !802, !803, !804, !805, !806, !813, !814, !821, !822, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2815, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2830, !2831, !2832, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2864, !2870, !2871, !2872, !2873, !2874, !2876, !2879, !2886, !2891, !2894, !2897, !2900, !3320, !3520, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3558, !3559, !3560, !3569, !3577, !3578, !3579, !3580, !3581, !3586, !3587, !3588, !3591, !3592, !3595, !3598, !3601, !3609, !3612, !3613, !3699, !3700, !3701, !3702, !3703, !3709, !3710, !3711, !3712, !3713, !3714, !3717, !3720, !3721, !3724, !3725, !3726, !3729, !3730, !3731, !3732, !3733, !3734, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3766, !3767, !3773, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3785, !3857, !3859, !3860, !3861, !3862, !3863, !3864, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3881, !3882, !3883}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !526, file: !527, line: 752, baseType: !530, size: 192)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !531, line: 56, size: 192, elements: !532)
!531 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!532 = !{!533, !534, !535, !536}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !530, file: !531, line: 57, baseType: !47, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !530, file: !531, line: 58, baseType: !47, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !530, file: !531, line: 59, baseType: !339, size: 32, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !530, file: !531, line: 61, baseType: !339, size: 32, offset: 160)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !526, file: !527, line: 754, baseType: !7, size: 32, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !526, file: !527, line: 767, baseType: !28, size: 64, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !526, file: !527, line: 768, baseType: !287, size: 32, offset: 320)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !526, file: !527, line: 770, baseType: !7, size: 32, offset: 352)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !526, file: !527, line: 771, baseType: !7, size: 32, offset: 384)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !526, file: !527, line: 774, baseType: !30, size: 32, offset: 416)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !526, file: !527, line: 775, baseType: !544, size: 128, offset: 448)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !545, line: 58, size: 128, elements: !546)
!545 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!546 = !{!547, !553, !558, !559}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !544, file: !545, line: 59, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !549, line: 60, size: 64, elements: !550)
!549 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!550 = !{!551}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !548, file: !549, line: 61, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, scope: !544, file: !545, line: 60, baseType: !554, size: 32, offset: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !544, file: !545, line: 60, size: 32, elements: !555)
!555 = !{!556, !557}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !554, file: !545, line: 61, baseType: !7, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !554, file: !545, line: 62, baseType: !57, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !544, file: !545, line: 65, baseType: !101, size: 16, offset: 96)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !544, file: !545, line: 65, baseType: !101, size: 16, offset: 112)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !526, file: !527, line: 776, baseType: !7, size: 32, offset: 576)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !526, file: !527, line: 777, baseType: !47, size: 64, offset: 640)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !526, file: !527, line: 778, baseType: !525, size: 64, offset: 704)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !526, file: !527, line: 787, baseType: !30, size: 32, offset: 768)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !526, file: !527, line: 788, baseType: !30, size: 32, offset: 800)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !526, file: !527, line: 790, baseType: !30, size: 32, offset: 832)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !526, file: !527, line: 792, baseType: !30, size: 32, offset: 864)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !526, file: !527, line: 793, baseType: !30, size: 32, offset: 896)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !526, file: !527, line: 794, baseType: !30, size: 32, offset: 928)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !526, file: !527, line: 795, baseType: !7, size: 32, offset: 960)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !526, file: !527, line: 797, baseType: !571, size: 2048, offset: 1024)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !527, line: 551, size: 2048, elements: !572)
!572 = !{!573, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !593, !596, !597, !598}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !571, file: !527, line: 553, baseType: !574, size: 128)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !527, line: 411, size: 128, elements: !575)
!575 = !{!576, !577}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !574, file: !527, line: 412, baseType: !47, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !574, file: !527, line: 413, baseType: !339, size: 32, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !571, file: !527, line: 554, baseType: !301, size: 192, align: 64, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !571, file: !527, line: 555, baseType: !273, size: 64, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !571, file: !527, line: 556, baseType: !273, size: 64, offset: 384)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !571, file: !527, line: 558, baseType: !105, size: 128, offset: 448)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !571, file: !527, line: 559, baseType: !7, size: 32, offset: 576)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !571, file: !527, line: 561, baseType: !273, size: 64, offset: 640)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !571, file: !527, line: 562, baseType: !273, size: 64, offset: 704)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !571, file: !527, line: 563, baseType: !273, size: 64, offset: 768)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !571, file: !527, line: 564, baseType: !273, size: 64, offset: 832)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !571, file: !527, line: 565, baseType: !243, size: 64, offset: 896)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !571, file: !527, line: 566, baseType: !273, size: 64, offset: 960)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !571, file: !527, line: 568, baseType: !273, size: 64, offset: 1024)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !571, file: !527, line: 571, baseType: !30, size: 32, offset: 1088)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !571, file: !527, line: 572, baseType: !592, size: 64, offset: 1152)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !571, file: !527, line: 574, baseType: !594, size: 64, offset: 1216)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !527, line: 49, flags: DIFlagFwdDecl)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !571, file: !527, line: 576, baseType: !594, size: 64, offset: 1280)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !571, file: !527, line: 578, baseType: !47, size: 64, offset: 1344)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !571, file: !527, line: 588, baseType: !599, size: 512, align: 512, offset: 1536)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !527, line: 497, size: 512, align: 512, elements: !600)
!600 = !{!601, !602, !603, !604, !605, !606, !607, !608, !609}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !599, file: !527, line: 498, baseType: !273, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !599, file: !527, line: 499, baseType: !273, size: 64, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !599, file: !527, line: 500, baseType: !273, size: 64, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !599, file: !527, line: 501, baseType: !339, size: 32, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !599, file: !527, line: 502, baseType: !339, size: 32, offset: 224)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !599, file: !527, line: 503, baseType: !47, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !599, file: !527, line: 504, baseType: !47, size: 64, offset: 320)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !599, file: !527, line: 505, baseType: !47, size: 64, offset: 384)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !599, file: !527, line: 506, baseType: !610, size: 64, align: 64, offset: 448)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !527, line: 445, size: 64, align: 64, elements: !611)
!611 = !{!612, !613}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !610, file: !527, line: 446, baseType: !7, size: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !610, file: !527, line: 447, baseType: !7, size: 32, offset: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !526, file: !527, line: 798, baseType: !615, size: 384, offset: 3072)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !527, line: 592, size: 384, elements: !616)
!616 = !{!617, !618, !619, !620, !621, !622, !623}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !615, file: !527, line: 593, baseType: !105, size: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !615, file: !527, line: 594, baseType: !47, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !615, file: !527, line: 595, baseType: !47, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !615, file: !527, line: 596, baseType: !7, size: 32, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !615, file: !527, line: 597, baseType: !34, size: 16, offset: 288)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !615, file: !527, line: 598, baseType: !34, size: 16, offset: 304)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !615, file: !527, line: 600, baseType: !624, size: 64, offset: 320)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !526, file: !527, line: 799, baseType: !626, size: 1792, offset: 3456)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !527, line: 610, size: 1792, elements: !627)
!627 = !{!628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !722, !723}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !626, file: !527, line: 611, baseType: !301, size: 192, align: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !626, file: !527, line: 618, baseType: !273, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !626, file: !527, line: 619, baseType: !273, size: 64, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !626, file: !527, line: 620, baseType: !273, size: 64, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !626, file: !527, line: 621, baseType: !273, size: 64, offset: 384)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !626, file: !527, line: 622, baseType: !273, size: 64, offset: 448)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !626, file: !527, line: 629, baseType: !243, size: 64, offset: 512)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !626, file: !527, line: 630, baseType: !273, size: 64, offset: 576)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !626, file: !527, line: 631, baseType: !7, size: 32, offset: 640)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !626, file: !527, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !626, file: !527, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !626, file: !527, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !626, file: !527, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !626, file: !527, line: 662, baseType: !642, size: 512, offset: 704)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !643)
!643 = !{!644, !652, !653, !658, !718, !719, !720, !721}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !642, file: !6, line: 119, baseType: !645, size: 256)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !646, line: 9, size: 256, elements: !647)
!646 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!647 = !{!648, !649}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !645, file: !646, line: 10, baseType: !301, size: 192, align: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !645, file: !646, line: 11, baseType: !650, size: 64, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !651, line: 29, baseType: !243)
!651 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!652 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !642, file: !6, line: 120, baseType: !650, size: 64, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !642, file: !6, line: 121, baseType: !654, size: 64, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!5, !657}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !642, file: !6, line: 122, baseType: !659, size: 64, offset: 384)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !661)
!661 = !{!662, !687, !688, !691, !701, !702, !713, !717}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !660, file: !6, line: 160, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !665)
!665 = !{!666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !664, file: !6, line: 216, baseType: !320, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !664, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !664, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !664, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !664, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !664, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !664, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !664, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !664, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !664, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !664, file: !6, line: 227, baseType: !34, size: 16, offset: 192)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !664, file: !6, line: 228, baseType: !34, size: 16, offset: 208)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !664, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !664, file: !6, line: 235, baseType: !650, size: 64, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !664, file: !6, line: 236, baseType: !657, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !664, file: !6, line: 237, baseType: !650, size: 64, offset: 384)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !664, file: !6, line: 238, baseType: !657, size: 64, offset: 448)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !664, file: !6, line: 239, baseType: !684, size: 4096, align: 512, offset: 512)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !660, size: 4096, align: 512, elements: !685)
!685 = !{!686}
!686 = !DISubrange(count: 8)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !660, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !660, file: !6, line: 162, baseType: !689, size: 32, offset: 96)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !33, line: 32, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !45, line: 96, baseType: !30)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !660, file: !6, line: 163, baseType: !692, size: 32, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !693, line: 274, baseType: !694)
!693 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !693, line: 274, size: 32, elements: !695)
!695 = !{!696}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !694, file: !693, line: 274, baseType: !697, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !693, line: 69, baseType: !698)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !693, line: 64, size: 32, elements: !699)
!699 = !{!700}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !698, file: !693, line: 65, baseType: !7, size: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !660, file: !6, line: 164, baseType: !657, size: 64, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !660, file: !6, line: 165, baseType: !703, size: 128, offset: 256)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !646, line: 14, size: 128, elements: !704)
!704 = !{!705}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !703, file: !646, line: 15, baseType: !706, size: 128)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !302, line: 26, size: 128, elements: !707)
!707 = !{!708, !712}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !706, file: !302, line: 27, baseType: !709, size: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !302, line: 12, size: 64, elements: !710)
!710 = !{!711}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !709, file: !302, line: 13, baseType: !306, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !706, file: !302, line: 28, baseType: !306, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !660, file: !6, line: 166, baseType: !714, size: 64, offset: 384)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!650}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !660, file: !6, line: 167, baseType: !650, size: 64, offset: 448)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !642, file: !6, line: 123, baseType: !91, size: 8, offset: 448)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !642, file: !6, line: 124, baseType: !91, size: 8, offset: 456)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !642, file: !6, line: 125, baseType: !91, size: 8, offset: 464)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !642, file: !6, line: 126, baseType: !91, size: 8, offset: 472)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !626, file: !527, line: 671, baseType: !642, size: 512, offset: 1216)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !626, file: !527, line: 679, baseType: !724, size: 64, offset: 1728)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !526, file: !527, line: 800, baseType: !726, size: 64, offset: 5248)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !728)
!728 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !527, line: 800, flags: DIFlagFwdDecl)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !526, file: !527, line: 809, baseType: !730, size: 64, offset: 5312)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !527, line: 70, flags: DIFlagFwdDecl)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !526, file: !527, line: 825, baseType: !733, size: 2048, align: 512, offset: 5632)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !527, line: 509, size: 2048, align: 512, elements: !734)
!734 = !{!735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !733, file: !527, line: 511, baseType: !273, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !733, file: !527, line: 512, baseType: !273, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !733, file: !527, line: 513, baseType: !273, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !733, file: !527, line: 514, baseType: !273, size: 64, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !733, file: !527, line: 515, baseType: !273, size: 64, offset: 256)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !733, file: !527, line: 516, baseType: !273, size: 64, offset: 320)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !733, file: !527, line: 518, baseType: !273, size: 64, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !733, file: !527, line: 519, baseType: !273, size: 64, offset: 448)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !733, file: !527, line: 520, baseType: !243, size: 64, offset: 512)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !733, file: !527, line: 522, baseType: !273, size: 64, offset: 576)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !733, file: !527, line: 523, baseType: !273, size: 64, offset: 640)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !733, file: !527, line: 524, baseType: !243, size: 64, offset: 704)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !733, file: !527, line: 526, baseType: !243, size: 64, offset: 768)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !733, file: !527, line: 527, baseType: !273, size: 64, offset: 832)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !733, file: !527, line: 529, baseType: !273, size: 64, offset: 896)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !733, file: !527, line: 530, baseType: !273, size: 64, offset: 960)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !733, file: !527, line: 531, baseType: !273, size: 64, offset: 1024)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !733, file: !527, line: 532, baseType: !273, size: 64, offset: 1088)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !733, file: !527, line: 533, baseType: !273, size: 64, offset: 1152)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !733, file: !527, line: 535, baseType: !273, size: 64, offset: 1216)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !733, file: !527, line: 536, baseType: !273, size: 64, offset: 1280)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !733, file: !527, line: 537, baseType: !273, size: 64, offset: 1344)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !733, file: !527, line: 538, baseType: !273, size: 64, offset: 1408)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !733, file: !527, line: 539, baseType: !273, size: 64, offset: 1472)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !733, file: !527, line: 540, baseType: !273, size: 64, offset: 1536)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !733, file: !527, line: 541, baseType: !273, size: 64, offset: 1600)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !733, file: !527, line: 542, baseType: !273, size: 64, offset: 1664)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !733, file: !527, line: 543, baseType: !273, size: 64, offset: 1728)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !526, file: !527, line: 833, baseType: !7, size: 32, offset: 7680)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !526, file: !527, line: 836, baseType: !7, size: 32, offset: 7712)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !526, file: !527, line: 837, baseType: !30, size: 32, offset: 7744)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !526, file: !527, line: 838, baseType: !767, size: 64, offset: 7808)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !769)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !770, line: 19, baseType: !771)
!770 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !770, line: 19, size: 64, elements: !772)
!772 = !{!773}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !771, file: !770, line: 19, baseType: !774, size: 64)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 64, elements: !775)
!775 = !{!776}
!776 = !DISubrange(count: 1)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !526, file: !527, line: 839, baseType: !778, size: 64, offset: 7872)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !526, file: !527, line: 840, baseType: !769, size: 64, offset: 7936)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !526, file: !527, line: 841, baseType: !28, size: 64, offset: 8000)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !526, file: !527, line: 843, baseType: !34, size: 16, offset: 8064)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !526, file: !527, line: 845, baseType: !34, size: 16, offset: 8080)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !526, file: !527, line: 848, baseType: !30, size: 32, offset: 8096)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !526, file: !527, line: 849, baseType: !785, size: 32, offset: 8128)
!785 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !527, line: 718, size: 32, elements: !786)
!786 = !{!787, !794}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !785, file: !527, line: 724, baseType: !788, size: 32)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !785, file: !527, line: 719, size: 32, elements: !789)
!789 = !{!790, !791, !792, !793}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !788, file: !527, line: 720, baseType: !91, size: 8)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !788, file: !527, line: 721, baseType: !91, size: 8, offset: 8)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !788, file: !527, line: 722, baseType: !91, size: 8, offset: 16)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !788, file: !527, line: 723, baseType: !91, size: 8, offset: 24)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !785, file: !527, line: 725, baseType: !339, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !526, file: !527, line: 850, baseType: !105, size: 128, offset: 8192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !526, file: !527, line: 851, baseType: !797, size: 64, offset: 8320)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !527, line: 60, flags: DIFlagFwdDecl)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !526, file: !527, line: 855, baseType: !47, size: 64, offset: 8384)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !526, file: !527, line: 856, baseType: !91, size: 8, offset: 8448)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !526, file: !527, line: 857, baseType: !91, size: 8, offset: 8456)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !526, file: !527, line: 858, baseType: !30, size: 32, offset: 8480)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !526, file: !527, line: 859, baseType: !105, size: 128, offset: 8512)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !526, file: !527, line: 860, baseType: !30, size: 32, offset: 8640)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !526, file: !527, line: 861, baseType: !105, size: 128, offset: 8704)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !526, file: !527, line: 873, baseType: !807, size: 256, offset: 8832)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !527, line: 376, size: 256, elements: !808)
!808 = !{!809, !810, !811, !812}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !807, file: !527, line: 381, baseType: !47, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !807, file: !527, line: 384, baseType: !275, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !807, file: !527, line: 389, baseType: !275, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !807, file: !527, line: 392, baseType: !275, size: 64, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !526, file: !527, line: 875, baseType: !105, size: 128, offset: 9088)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !526, file: !527, line: 877, baseType: !815, size: 320, offset: 9216)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !816, line: 86, size: 320, elements: !817)
!816 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!817 = !{!818, !819, !820}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !815, file: !816, line: 87, baseType: !30, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !815, file: !816, line: 88, baseType: !105, size: 128, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !815, file: !816, line: 89, baseType: !105, size: 128, offset: 192)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !526, file: !527, line: 878, baseType: !301, size: 192, align: 64, offset: 9536)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !526, file: !527, line: 881, baseType: !823, size: 64, offset: 9728)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !158, line: 733, size: 10240, elements: !825)
!825 = !{!826, !2734}
!826 = !DIDerivedType(tag: DW_TAG_member, scope: !824, file: !158, line: 734, baseType: !827, size: 10240)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !824, file: !158, line: 734, size: 10240, elements: !828)
!828 = !{!829, !833, !847, !2632, !2633, !2634, !2635, !2636, !2637, !2644, !2645, !2646, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2685, !2687, !2690, !2714, !2715, !2716, !2719, !2720, !2721, !2724, !2725, !2726, !2732, !2733}
!829 = !DIDerivedType(tag: DW_TAG_member, scope: !827, file: !158, line: 739, baseType: !830, size: 512, align: 512)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !827, file: !158, line: 739, size: 512, align: 512, elements: !831)
!831 = !{!832}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !830, file: !158, line: 747, baseType: !57, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !827, file: !158, line: 750, baseType: !834, size: 128, offset: 512)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !835, line: 218, size: 128, elements: !836)
!835 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!836 = !{!837, !845, !846}
!837 = !DIDerivedType(tag: DW_TAG_member, scope: !834, file: !835, line: 219, baseType: !838, size: 32)
!838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !834, file: !835, line: 219, size: 32, elements: !839)
!839 = !{!840, !841}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !838, file: !835, line: 220, baseType: !67, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !838, file: !835, line: 221, baseType: !842)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !835, line: 197, baseType: !843)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !835, line: 197, elements: !844)
!844 = !{}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !834, file: !835, line: 223, baseType: !7, size: 32, offset: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !834, file: !835, line: 224, baseType: !28, size: 64, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !827, file: !158, line: 752, baseType: !848, size: 64, offset: 640)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!47, !851, !47, !47, !47, !47}
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !139, line: 994, size: 1856, align: 64, elements: !853)
!853 = !{!854, !860, !861, !863, !864, !872, !873, !874, !929, !930, !939, !2622, !2623, !2624, !2625, !2626, !2627, !2629, !2630, !2631}
!854 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !139, line: 995, baseType: !855, size: 128)
!855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !852, file: !139, line: 995, size: 128, elements: !856)
!856 = !{!857, !858, !859}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !855, file: !139, line: 996, baseType: !548, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !855, file: !139, line: 997, baseType: !373, size: 128, align: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !855, file: !139, line: 998, baseType: !7, size: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !852, file: !139, line: 1005, baseType: !67, size: 32, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !852, file: !139, line: 1006, baseType: !862, size: 32, offset: 160)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !33, line: 156, baseType: !7)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !852, file: !139, line: 1007, baseType: !237, size: 64, offset: 192)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !852, file: !139, line: 1008, baseType: !865, size: 256, offset: 256)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !866, line: 66, size: 256, elements: !867)
!866 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!867 = !{!868, !869, !870, !871}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !865, file: !866, line: 67, baseType: !237, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !865, file: !866, line: 68, baseType: !320, size: 32, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !865, file: !866, line: 70, baseType: !315, size: 32, offset: 96)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !865, file: !866, line: 72, baseType: !105, size: 128, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !852, file: !139, line: 1009, baseType: !49, size: 64, offset: 512)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !852, file: !139, line: 1010, baseType: !7, size: 32, offset: 576)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !852, file: !139, line: 1011, baseType: !875, size: 256, offset: 640)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !139, line: 948, size: 256, elements: !876)
!876 = !{!877, !900, !925, !926, !927, !928}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !875, file: !139, line: 949, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !879, line: 34, baseType: !880)
!879 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !879, line: 25, size: 64, elements: !881)
!881 = !{!882}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !880, file: !879, line: 26, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !884, line: 27, baseType: !885)
!884 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !884, line: 13, size: 64, elements: !886)
!886 = !{!887, !899}
!887 = !DIDerivedType(tag: DW_TAG_member, scope: !885, file: !884, line: 14, baseType: !888, size: 32)
!888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !885, file: !884, line: 14, size: 32, elements: !889)
!889 = !{!890, !891}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !888, file: !884, line: 15, baseType: !57, size: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, scope: !888, file: !884, line: 16, baseType: !892, size: 32)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !884, line: 16, size: 32, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !892, file: !884, line: 18, baseType: !91, size: 8)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !892, file: !884, line: 19, baseType: !896, size: 24, offset: 8)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 24, elements: !897)
!897 = !{!898}
!898 = !DISubrange(count: 3)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !885, file: !884, line: 26, baseType: !79, size: 32, offset: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !875, file: !139, line: 950, baseType: !901, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !12, line: 59, size: 768, elements: !903)
!903 = !{!904, !905, !906, !907, !912, !913, !914, !915}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !902, file: !12, line: 61, baseType: !287, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !902, file: !12, line: 62, baseType: !7, size: 32, offset: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !902, file: !12, line: 63, baseType: !67, size: 32, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !902, file: !12, line: 65, baseType: !908, size: 256, offset: 128)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !909, size: 256, elements: !404)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !33, line: 194, size: 64, elements: !910)
!910 = !{!911}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !909, file: !33, line: 195, baseType: !458, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !902, file: !12, line: 66, baseType: !909, size: 64, offset: 384)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !902, file: !12, line: 68, baseType: !62, size: 192, offset: 448)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !902, file: !12, line: 69, baseType: !373, size: 128, align: 64, offset: 640)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !902, file: !12, line: 70, baseType: !916, offset: 768)
!916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !917, elements: !923)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !12, line: 54, size: 128, elements: !918)
!918 = !{!919, !920}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !917, file: !12, line: 55, baseType: !30, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !917, file: !12, line: 56, baseType: !921, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !12, line: 56, flags: DIFlagFwdDecl)
!923 = !{!924}
!924 = !DISubrange(count: -1)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !875, file: !139, line: 951, baseType: !11, size: 32, offset: 128)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !875, file: !139, line: 952, baseType: !246, size: 32, offset: 160)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !875, file: !139, line: 952, baseType: !246, size: 32, offset: 192)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !875, file: !139, line: 953, baseType: !30, size: 32, offset: 224)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !852, file: !139, line: 1012, baseType: !231, size: 64, offset: 896)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !852, file: !139, line: 1013, baseType: !931, size: 256, offset: 960)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !139, line: 970, size: 256, elements: !932)
!932 = !{!933, !934, !935, !936, !937, !938}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !931, file: !139, line: 971, baseType: !47, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !931, file: !139, line: 972, baseType: !7, size: 32, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !931, file: !139, line: 973, baseType: !7, size: 32, offset: 96)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !931, file: !139, line: 974, baseType: !7, size: 32, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !931, file: !139, line: 975, baseType: !7, size: 32, offset: 160)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !931, file: !139, line: 976, baseType: !49, size: 64, offset: 192)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !852, file: !139, line: 1014, baseType: !940, size: 128, offset: 1216)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !941, line: 8, size: 128, elements: !942)
!941 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!942 = !{!943, !2621}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !940, file: !941, line: 9, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !946, line: 70, size: 256, elements: !947)
!946 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!947 = !{!948, !2618, !2619, !2620}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !945, file: !946, line: 71, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !951, line: 82, size: 1536, elements: !952)
!951 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!952 = !{!953, !954, !959, !967, !968, !983, !2585, !2587, !2600, !2601, !2602, !2603, !2604, !2610, !2611, !2612}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !950, file: !951, line: 84, baseType: !7, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !950, file: !951, line: 85, baseType: !955, size: 32, offset: 32)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !693, line: 275, baseType: !956)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !693, line: 275, size: 32, elements: !957)
!957 = !{!958}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !956, file: !693, line: 275, baseType: !697, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !950, file: !951, line: 86, baseType: !960, size: 128, offset: 64)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !961, line: 38, size: 128, elements: !962)
!961 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!962 = !{!963, !965}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !960, file: !961, line: 39, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !960, file: !961, line: 39, baseType: !966, size: 64, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !950, file: !951, line: 87, baseType: !949, size: 64, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !950, file: !951, line: 88, baseType: !969, size: 128, offset: 256)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !951, line: 49, size: 128, elements: !970)
!970 = !{!971, !980}
!971 = !DIDerivedType(tag: DW_TAG_member, scope: !969, file: !951, line: 50, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !969, file: !951, line: 50, size: 64, elements: !973)
!973 = !{!974, !979}
!974 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !951, line: 51, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !972, file: !951, line: 51, size: 64, elements: !976)
!976 = !{!977, !978}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !975, file: !951, line: 52, baseType: !339, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !975, file: !951, line: 52, baseType: !339, size: 32, offset: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !972, file: !951, line: 54, baseType: !273, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !969, file: !951, line: 56, baseType: !981, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !950, file: !951, line: 89, baseType: !984, size: 64, offset: 384)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !139, line: 641, size: 4800, elements: !986)
!986 = !{!987, !988, !989, !990, !991, !992, !993, !996, !997, !1192, !1897, !2396, !2397, !2398, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2567, !2570, !2571, !2572, !2581, !2582, !2583, !2584}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !985, file: !139, line: 642, baseType: !32, size: 16)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !985, file: !139, line: 643, baseType: !34, size: 16, offset: 16)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !985, file: !139, line: 644, baseType: !246, size: 32, offset: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !985, file: !139, line: 645, baseType: !105, size: 128, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !985, file: !139, line: 646, baseType: !254, size: 32, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !985, file: !139, line: 647, baseType: !7, size: 32, offset: 224)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !985, file: !139, line: 650, baseType: !994, size: 64, offset: 256)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !139, line: 607, flags: DIFlagFwdDecl)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !985, file: !139, line: 651, baseType: !994, size: 64, offset: 320)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !985, file: !139, line: 654, baseType: !998, size: 64, offset: 384)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1000)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !139, line: 1966, size: 2048, align: 512, elements: !1001)
!1001 = !{!1002, !1006, !1019, !1025, !1029, !1033, !1037, !1041, !1045, !1049, !1053, !1054, !1060, !1064, !1102, !1133, !1140, !1146, !1150, !1154, !1158, !1162, !1166, !1172, !1176}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1000, file: !139, line: 1967, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!949, !984, !949, !7}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1000, file: !139, line: 1968, baseType: !1007, size: 64, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!24, !949, !984, !1010}
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1012, line: 10, size: 128, elements: !1013)
!1012 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1013 = !{!1014, !1018}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1011, file: !1012, line: 11, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !28}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1011, file: !1012, line: 12, baseType: !28, size: 64, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1000, file: !139, line: 1969, baseType: !1020, size: 64, offset: 128)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!30, !1023, !984, !30}
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !269, line: 42, flags: DIFlagFwdDecl)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1000, file: !139, line: 1970, baseType: !1026, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!994, !984, !30, !383}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1000, file: !139, line: 1972, baseType: !1030, size: 64, offset: 256)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!30, !949, !394, !30}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1000, file: !139, line: 1974, baseType: !1034, size: 64, offset: 320)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!30, !1023, !984, !949, !32, !383}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1000, file: !139, line: 1976, baseType: !1038, size: 64, offset: 384)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!30, !949, !984, !949}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1000, file: !139, line: 1977, baseType: !1042, size: 64, offset: 448)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!30, !984, !949}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1000, file: !139, line: 1978, baseType: !1046, size: 64, offset: 512)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!30, !1023, !984, !949, !24}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1000, file: !139, line: 1980, baseType: !1050, size: 64, offset: 576)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!30, !1023, !984, !949, !32}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1000, file: !139, line: 1982, baseType: !1042, size: 64, offset: 640)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1000, file: !139, line: 1983, baseType: !1055, size: 64, offset: 704)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!30, !1023, !984, !949, !32, !1058}
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !33, line: 21, baseType: !1059)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !33, line: 18, baseType: !339)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1000, file: !139, line: 1985, baseType: !1061, size: 64, offset: 768)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!30, !1023, !984, !949, !984, !949, !7}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1000, file: !139, line: 1987, baseType: !1065, size: 64, offset: 832)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!30, !1023, !949, !1068}
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !139, line: 226, size: 640, elements: !1070)
!1070 = !{!1071, !1072, !1073, !1083, !1092, !1093, !1099, !1100, !1101}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1069, file: !139, line: 227, baseType: !7, size: 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1069, file: !139, line: 228, baseType: !32, size: 16, offset: 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !139, line: 241, baseType: !1074, size: 32, offset: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1069, file: !139, line: 241, size: 32, elements: !1075)
!1075 = !{!1076, !1077}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1074, file: !139, line: 242, baseType: !246, size: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1074, file: !139, line: 243, baseType: !1078, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1079, line: 16, baseType: !1080)
!1079 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1079, line: 14, size: 32, elements: !1081)
!1081 = !{!1082}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1080, file: !1079, line: 15, baseType: !251, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !139, line: 245, baseType: !1084, size: 32, offset: 96)
!1084 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1069, file: !139, line: 245, size: 32, elements: !1085)
!1085 = !{!1086, !1087}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1084, file: !139, line: 246, baseType: !254, size: 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1084, file: !139, line: 247, baseType: !1088, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1079, line: 20, baseType: !1089)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1079, line: 18, size: 32, elements: !1090)
!1090 = !{!1091}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1089, file: !1079, line: 19, baseType: !258, size: 32)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1069, file: !139, line: 249, baseType: !49, size: 64, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1069, file: !139, line: 250, baseType: !1094, size: 128, offset: 192)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !331, line: 13, size: 128, elements: !1095)
!1095 = !{!1096, !1097}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1094, file: !331, line: 14, baseType: !330, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1094, file: !331, line: 15, baseType: !1098, size: 64, offset: 64)
!1098 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1069, file: !139, line: 251, baseType: !1094, size: 128, offset: 320)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1069, file: !139, line: 252, baseType: !1094, size: 128, offset: 448)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1069, file: !139, line: 259, baseType: !851, size: 64, offset: 576)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1000, file: !139, line: 1988, baseType: !1103, size: 64, offset: 896)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!30, !1023, !1106, !1108, !339, !7}
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !940)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1110, line: 22, size: 1280, elements: !1111)
!1110 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1111 = !{!1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1109, file: !1110, line: 23, baseType: !339, size: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1109, file: !1110, line: 24, baseType: !32, size: 16, offset: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1109, file: !1110, line: 25, baseType: !7, size: 32, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1109, file: !1110, line: 26, baseType: !338, size: 32, offset: 96)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1109, file: !1110, line: 27, baseType: !273, size: 64, offset: 128)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1109, file: !1110, line: 28, baseType: !273, size: 64, offset: 192)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1109, file: !1110, line: 41, baseType: !273, size: 64, offset: 256)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1109, file: !1110, line: 42, baseType: !1058, size: 32, offset: 320)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1109, file: !1110, line: 43, baseType: !1058, size: 32, offset: 352)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1109, file: !1110, line: 44, baseType: !246, size: 32, offset: 384)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1109, file: !1110, line: 45, baseType: !254, size: 32, offset: 416)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1109, file: !1110, line: 46, baseType: !49, size: 64, offset: 448)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1109, file: !1110, line: 47, baseType: !1094, size: 128, offset: 512)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1109, file: !1110, line: 48, baseType: !1094, size: 128, offset: 640)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1109, file: !1110, line: 49, baseType: !1094, size: 128, offset: 768)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1109, file: !1110, line: 50, baseType: !1094, size: 128, offset: 896)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1109, file: !1110, line: 51, baseType: !273, size: 64, offset: 1024)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1109, file: !1110, line: 52, baseType: !273, size: 64, offset: 1088)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1109, file: !1110, line: 53, baseType: !339, size: 32, offset: 1152)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1109, file: !1110, line: 54, baseType: !339, size: 32, offset: 1184)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1109, file: !1110, line: 55, baseType: !273, size: 64, offset: 1216)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1000, file: !139, line: 1990, baseType: !1134, size: 64, offset: 960)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!1137, !949, !394, !43}
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !33, line: 66, baseType: !1138)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !45, line: 73, baseType: !1139)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !45, line: 15, baseType: !1098)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1000, file: !139, line: 1991, baseType: !1141, size: 64, offset: 1024)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!30, !984, !1144, !273, !273}
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !139, line: 55, flags: DIFlagFwdDecl)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1000, file: !139, line: 1993, baseType: !1147, size: 64, offset: 1088)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!30, !984, !30}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1000, file: !139, line: 1994, baseType: !1151, size: 64, offset: 1152)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!30, !984, !949, !851, !7, !32}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1000, file: !139, line: 1997, baseType: !1155, size: 64, offset: 1216)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!30, !1023, !984, !851, !32}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1000, file: !139, line: 1999, baseType: !1159, size: 64, offset: 1280)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!994, !1023, !949, !30}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1000, file: !139, line: 2001, baseType: !1163, size: 64, offset: 1344)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!30, !1023, !949, !994, !30}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1000, file: !139, line: 2003, baseType: !1167, size: 64, offset: 1408)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!30, !1023, !949, !1170}
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !139, line: 76, flags: DIFlagFwdDecl)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1000, file: !139, line: 2005, baseType: !1173, size: 64, offset: 1472)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!30, !949, !1170}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1000, file: !139, line: 2006, baseType: !1177, size: 64, offset: 1536)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!1180, !984}
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !139, line: 3192, size: 192, elements: !1182)
!1182 = !{!1183, !1191}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1181, file: !139, line: 3193, baseType: !1184, size: 128)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1185, line: 296, size: 128, elements: !1186)
!1185 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1186 = !{!1187, !1188, !1190}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1184, file: !1185, line: 297, baseType: !67, size: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1184, file: !1185, line: 299, baseType: !1189, size: 32, offset: 32)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !33, line: 154, baseType: !7)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1184, file: !1185, line: 300, baseType: !28, size: 64, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1181, file: !139, line: 3194, baseType: !339, size: 32, offset: 128)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !985, file: !139, line: 655, baseType: !1193, size: 64, offset: 448)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !139, line: 1190, size: 10752, elements: !1195)
!1195 = !{!1196, !1197, !1198, !1199, !1200, !1201, !1353, !1526, !1566, !1649, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1666, !1670, !1671, !1674, !1677, !1680, !1683, !1684, !1685, !1726, !1753, !1754, !1755, !1756, !1757, !1758, !1761, !1765, !1774, !1775, !1776, !1777, !1836, !1851, !1852, !1853, !1854, !1857, !1861, !1862, !1863, !1878, !1879, !1880, !1891, !1892, !1893, !1894, !1895, !1896}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1194, file: !139, line: 1191, baseType: !105, size: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1194, file: !139, line: 1192, baseType: !1058, size: 32, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1194, file: !139, line: 1193, baseType: !95, size: 8, offset: 160)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1194, file: !139, line: 1194, baseType: !47, size: 64, offset: 192)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1194, file: !139, line: 1195, baseType: !49, size: 64, offset: 256)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1194, file: !139, line: 1196, baseType: !1202, size: 64, offset: 320)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !139, line: 2366, size: 576, elements: !1204)
!1204 = !{!1205, !1206, !1207, !1302, !1331, !1335, !1339, !1340, !1341, !1342, !1345, !1346, !1347, !1349, !1350, !1351, !1352}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1203, file: !139, line: 2367, baseType: !24, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1203, file: !139, line: 2368, baseType: !30, size: 32, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1203, file: !139, line: 2376, baseType: !1208, size: 64, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!30, !1211}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !116, line: 90, size: 1216, elements: !1213)
!1213 = !{!1214, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1271, !1272, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1212, file: !116, line: 91, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1217)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context_operations", file: !116, line: 115, size: 384, elements: !1218)
!1218 = !{!1219, !1223, !1227, !1256, !1260, !1261}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1217, file: !116, line: 116, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{null, !1211}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !1217, file: !116, line: 117, baseType: !1224, size: 64, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!30, !1211, !1211}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "parse_param", scope: !1217, file: !116, line: 118, baseType: !1228, size: 64, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!30, !1211, !1231}
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter", file: !116, line: 63, size: 320, elements: !1233)
!1233 = !{!1234, !1235, !1236, !1254, !1255}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1232, file: !116, line: 64, baseType: !24, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1232, file: !116, line: 65, baseType: !115, size: 8, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, scope: !1232, file: !116, line: 66, baseType: !1237, size: 64, offset: 128)
!1237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1232, file: !116, line: 66, size: 64, elements: !1238)
!1238 = !{!1239, !1240, !1241, !1253}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1237, file: !116, line: 67, baseType: !394, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !1237, file: !116, line: 68, baseType: !28, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1237, file: !116, line: 69, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "filename", file: !139, line: 2470, size: 256, elements: !1244)
!1244 = !{!1245, !1246, !1247, !1248, !1251}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1243, file: !139, line: 2471, baseType: !24, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "uptr", scope: !1243, file: !139, line: 2472, baseType: !24, size: 64, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1243, file: !139, line: 2473, baseType: !57, size: 32, offset: 128)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "aname", scope: !1243, file: !139, line: 2474, baseType: !1249, size: 64, offset: 192)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_names", file: !139, line: 2469, flags: DIFlagFwdDecl)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !1243, file: !139, line: 2475, baseType: !1252, offset: 256)
!1252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, elements: !923)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1237, file: !116, line: 70, baseType: !851, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1232, file: !116, line: 72, baseType: !43, size: 64, offset: 192)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "dirfd", scope: !1232, file: !116, line: 73, baseType: !30, size: 32, offset: 256)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "parse_monolithic", scope: !1217, file: !116, line: 119, baseType: !1257, size: 64, offset: 192)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!30, !1211, !28}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "get_tree", scope: !1217, file: !116, line: 120, baseType: !1208, size: 64, offset: 256)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "reconfigure", scope: !1217, file: !116, line: 121, baseType: !1208, size: 64, offset: 320)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "uapi_mutex", scope: !1212, file: !116, line: 92, baseType: !865, size: 256, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "fs_type", scope: !1212, file: !116, line: 93, baseType: !1202, size: 64, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "fs_private", scope: !1212, file: !116, line: 94, baseType: !28, size: 64, offset: 384)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "sget_key", scope: !1212, file: !116, line: 95, baseType: !28, size: 64, offset: 448)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1212, file: !116, line: 96, baseType: !949, size: 64, offset: 512)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1212, file: !116, line: 97, baseType: !475, size: 64, offset: 576)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1212, file: !116, line: 98, baseType: !1269, size: 64, offset: 640)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !284, line: 34, flags: DIFlagFwdDecl)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1212, file: !116, line: 99, baseType: !231, size: 64, offset: 704)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1212, file: !116, line: 100, baseType: !1273, size: 128, offset: 768)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p_log", file: !116, line: 76, size: 128, elements: !1274)
!1274 = !{!1275, !1276}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !1273, file: !116, line: 77, baseType: !24, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1273, file: !116, line: 78, baseType: !1277, size: 64, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fc_log", file: !116, line: 173, size: 640, elements: !1279)
!1279 = !{!1280, !1281, !1282, !1283, !1284, !1288}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1278, file: !116, line: 174, baseType: !287, size: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1278, file: !116, line: 175, baseType: !91, size: 8, offset: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1278, file: !116, line: 176, baseType: !91, size: 8, offset: 40)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !1278, file: !116, line: 177, baseType: !91, size: 8, offset: 48)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1278, file: !116, line: 178, baseType: !1285, size: 64, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1287, line: 103, flags: DIFlagFwdDecl)
!1287 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1278, file: !116, line: 179, baseType: !1289, size: 512, offset: 128)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 512, elements: !685)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !1212, file: !116, line: 101, baseType: !24, size: 64, offset: 896)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1212, file: !116, line: 102, baseType: !28, size: 64, offset: 960)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1212, file: !116, line: 103, baseType: !28, size: 64, offset: 1024)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags", scope: !1212, file: !116, line: 104, baseType: !7, size: 32, offset: 1088)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags_mask", scope: !1212, file: !116, line: 105, baseType: !7, size: 32, offset: 1120)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1212, file: !116, line: 106, baseType: !7, size: 32, offset: 1152)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1212, file: !116, line: 107, baseType: !124, size: 8, offset: 1184, flags: DIFlagBitField, extraData: i64 1184)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !1212, file: !116, line: 108, baseType: !129, size: 8, offset: 1192, flags: DIFlagBitField, extraData: i64 1184)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !1212, file: !116, line: 109, baseType: !383, size: 1, offset: 1200, flags: DIFlagBitField, extraData: i64 1184)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !1212, file: !116, line: 110, baseType: !383, size: 1, offset: 1201, flags: DIFlagBitField, extraData: i64 1184)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "oldapi", scope: !1212, file: !116, line: 111, baseType: !383, size: 1, offset: 1202, flags: DIFlagBitField, extraData: i64 1184)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !1212, file: !116, line: 112, baseType: !383, size: 1, offset: 1203, flags: DIFlagBitField, extraData: i64 1184)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1203, file: !139, line: 2377, baseType: !1303, size: 64, offset: 192)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1305)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !1306, line: 39, size: 256, elements: !1307)
!1306 = !DIFile(filename: "./include/linux/fs_parser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a7e6f8b2e05f10a6300994e1bfb8d6d3")
!1307 = !{!1308, !1309, !1326, !1327, !1328}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1305, file: !1306, line: 40, baseType: !24, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1305, file: !1306, line: 41, baseType: !1310, size: 64, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "fs_param_type", file: !1306, line: 22, baseType: !1312)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!30, !1314, !1303, !1231, !1315}
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parse_result", file: !1306, line: 53, size: 128, elements: !1317)
!1317 = !{!1318, !1319}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "negated", scope: !1316, file: !1306, line: 54, baseType: !383, size: 8)
!1319 = !DIDerivedType(tag: DW_TAG_member, scope: !1316, file: !1306, line: 55, baseType: !1320, size: 64, offset: 64)
!1320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1316, file: !1306, line: 55, size: 64, elements: !1321)
!1321 = !{!1322, !1323, !1324, !1325}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !1320, file: !1306, line: 56, baseType: !383, size: 8)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "int_32", scope: !1320, file: !1306, line: 57, baseType: !30, size: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "uint_32", scope: !1320, file: !1306, line: 58, baseType: !7, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "uint_64", scope: !1320, file: !1306, line: 59, baseType: !273, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !1305, file: !1306, line: 42, baseType: !91, size: 8, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1305, file: !1306, line: 43, baseType: !34, size: 16, offset: 144)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1305, file: !1306, line: 47, baseType: !1329, size: 64, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1203, file: !139, line: 2378, baseType: !1332, size: 64, offset: 256)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!949, !1202, !30, !24, !28}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1203, file: !139, line: 2380, baseType: !1336, size: 64, offset: 320)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{null, !1193}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1203, file: !139, line: 2381, baseType: !1285, size: 64, offset: 384)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1203, file: !139, line: 2382, baseType: !1202, size: 64, offset: 448)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1203, file: !139, line: 2383, baseType: !909, size: 64, offset: 512)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1203, file: !139, line: 2385, baseType: !1343, offset: 576)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1344, line: 206, elements: !844)
!1344 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1203, file: !139, line: 2386, baseType: !1343, offset: 576)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1203, file: !139, line: 2387, baseType: !1343, offset: 576)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1203, file: !139, line: 2388, baseType: !1348, offset: 576)
!1348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1343, elements: !897)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1203, file: !139, line: 2390, baseType: !1343, offset: 576)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1203, file: !139, line: 2391, baseType: !1343, offset: 576)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1203, file: !139, line: 2392, baseType: !1343, offset: 576)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1203, file: !139, line: 2393, baseType: !1343, offset: 576)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1194, file: !139, line: 1197, baseType: !1354, size: 64, offset: 384)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1356)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !139, line: 2057, size: 1664, elements: !1357)
!1357 = !{!1358, !1362, !1366, !1367, !1371, !1377, !1381, !1382, !1383, !1387, !1391, !1395, !1396, !1397, !1403, !1408, !1409, !1451, !1452, !1453, !1454, !1458, !1462, !1509, !1524, !1525}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1356, file: !139, line: 2058, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!984, !1193}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1356, file: !139, line: 2059, baseType: !1363, size: 64, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{null, !984}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1356, file: !139, line: 2060, baseType: !1363, size: 64, offset: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1356, file: !139, line: 2062, baseType: !1368, size: 64, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{null, !984, !30}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1356, file: !139, line: 2063, baseType: !1372, size: 64, offset: 256)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!30, !984, !1375}
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !139, line: 309, flags: DIFlagFwdDecl)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1356, file: !139, line: 2064, baseType: !1378, size: 64, offset: 320)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!30, !984}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1356, file: !139, line: 2065, baseType: !1363, size: 64, offset: 384)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1356, file: !139, line: 2066, baseType: !1336, size: 64, offset: 448)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1356, file: !139, line: 2067, baseType: !1384, size: 64, offset: 512)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!30, !1193, !30}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1356, file: !139, line: 2068, baseType: !1388, size: 64, offset: 576)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!30, !1193, !138}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1356, file: !139, line: 2069, baseType: !1392, size: 64, offset: 640)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!30, !1193}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1356, file: !139, line: 2070, baseType: !1388, size: 64, offset: 704)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1356, file: !139, line: 2071, baseType: !1392, size: 64, offset: 768)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1356, file: !139, line: 2072, baseType: !1398, size: 64, offset: 832)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!30, !949, !1401}
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !139, line: 62, flags: DIFlagFwdDecl)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1356, file: !139, line: 2073, baseType: !1404, size: 64, offset: 896)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!30, !1193, !1407, !394}
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1356, file: !139, line: 2074, baseType: !1336, size: 64, offset: 960)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1356, file: !139, line: 2076, baseType: !1410, size: 64, offset: 1024)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!30, !1413, !949}
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1415, line: 17, size: 960, elements: !1416)
!1415 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1416 = !{!1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1446, !1447, !1450}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1414, file: !1415, line: 18, baseType: !394, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1414, file: !1415, line: 19, baseType: !43, size: 64, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1414, file: !1415, line: 20, baseType: !43, size: 64, offset: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1414, file: !1415, line: 21, baseType: !43, size: 64, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1414, file: !1415, line: 22, baseType: !43, size: 64, offset: 256)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1414, file: !1415, line: 23, baseType: !49, size: 64, offset: 320)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1414, file: !1415, line: 24, baseType: !49, size: 64, offset: 384)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1414, file: !1415, line: 25, baseType: !865, size: 256, offset: 448)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1414, file: !1415, line: 26, baseType: !1426, size: 64, offset: 704)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1428)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1415, line: 32, size: 256, elements: !1429)
!1429 = !{!1430, !1434, !1438, !1442}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1428, file: !1415, line: 33, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!28, !1413, !48}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1428, file: !1415, line: 34, baseType: !1435, size: 64, offset: 64)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{null, !1413, !28}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1428, file: !1415, line: 35, baseType: !1439, size: 64, offset: 128)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!28, !1413, !28, !48}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1428, file: !1415, line: 36, baseType: !1443, size: 64, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!30, !1413, !28}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1414, file: !1415, line: 27, baseType: !30, size: 32, offset: 768)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1414, file: !1415, line: 28, baseType: !1448, size: 64, offset: 832)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !852)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1414, file: !1415, line: 29, baseType: !28, size: 64, offset: 896)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1356, file: !139, line: 2077, baseType: !1410, size: 64, offset: 1088)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1356, file: !139, line: 2078, baseType: !1410, size: 64, offset: 1152)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1356, file: !139, line: 2079, baseType: !1410, size: 64, offset: 1216)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1356, file: !139, line: 2081, baseType: !1455, size: 64, offset: 1280)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!1137, !1193, !30, !394, !43, !49}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1356, file: !139, line: 2082, baseType: !1459, size: 64, offset: 1344)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!1137, !1193, !30, !24, !43, !49}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1356, file: !139, line: 2083, baseType: !1463, size: 64, offset: 1408)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!1466, !984}
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !144, line: 296, size: 1664, elements: !1469)
!1469 = !{!1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1494, !1495, !1496}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1468, file: !144, line: 297, baseType: !455, size: 128)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1468, file: !144, line: 298, baseType: !105, size: 128, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1468, file: !144, line: 299, baseType: !105, size: 128, offset: 256)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1468, file: !144, line: 300, baseType: !105, size: 128, offset: 384)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1468, file: !144, line: 301, baseType: !865, size: 256, offset: 512)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1468, file: !144, line: 302, baseType: !67, size: 32, offset: 768)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1468, file: !144, line: 303, baseType: !57, size: 32, offset: 800)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1468, file: !144, line: 304, baseType: !1193, size: 64, offset: 832)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1468, file: !144, line: 305, baseType: !1479, size: 64, offset: 896)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !144, line: 68, size: 64, elements: !1480)
!1480 = !{!1481, !1493}
!1481 = !DIDerivedType(tag: DW_TAG_member, scope: !1479, file: !144, line: 69, baseType: !1482, size: 32)
!1482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1479, file: !144, line: 69, size: 32, elements: !1483)
!1483 = !{!1484, !1485, !1486}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1482, file: !144, line: 70, baseType: !246, size: 32)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1482, file: !144, line: 71, baseType: !254, size: 32)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1482, file: !144, line: 72, baseType: !1487, size: 32)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1488, line: 24, baseType: !1489)
!1488 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1488, line: 22, size: 32, elements: !1490)
!1490 = !{!1491}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1489, file: !1488, line: 23, baseType: !1492, size: 32)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1488, line: 20, baseType: !252)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1479, file: !144, line: 74, baseType: !143, size: 32, offset: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1468, file: !144, line: 306, baseType: !49, size: 64, offset: 960)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1468, file: !144, line: 307, baseType: !47, size: 64, offset: 1024)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1468, file: !144, line: 308, baseType: !1497, size: 576, offset: 1088)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !144, line: 205, size: 576, elements: !1498)
!1498 = !{!1499, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1497, file: !144, line: 206, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !144, line: 66, baseType: !51)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1497, file: !144, line: 207, baseType: !1500, size: 64, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1497, file: !144, line: 208, baseType: !1500, size: 64, offset: 128)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1497, file: !144, line: 209, baseType: !1500, size: 64, offset: 192)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1497, file: !144, line: 210, baseType: !1500, size: 64, offset: 256)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1497, file: !144, line: 211, baseType: !1500, size: 64, offset: 320)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1497, file: !144, line: 212, baseType: !1500, size: 64, offset: 384)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1497, file: !144, line: 213, baseType: !330, size: 64, offset: 448)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1497, file: !144, line: 214, baseType: !330, size: 64, offset: 512)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1356, file: !139, line: 2085, baseType: !1510, size: 64, offset: 1472)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!1098, !1193, !1513}
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1515, line: 15, size: 256, elements: !1516)
!1515 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1516 = !{!1517, !1518, !1519, !1520, !1521}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1514, file: !1515, line: 16, baseType: !1189, size: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1514, file: !1515, line: 19, baseType: !30, size: 32, offset: 32)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1514, file: !1515, line: 26, baseType: !47, size: 64, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1514, file: !1515, line: 33, baseType: !47, size: 64, offset: 128)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1514, file: !1515, line: 36, baseType: !1522, size: 64, offset: 192)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1515, line: 36, flags: DIFlagFwdDecl)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1356, file: !139, line: 2087, baseType: !1510, size: 64, offset: 1536)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1356, file: !139, line: 2089, baseType: !1336, size: 64, offset: 1600)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1194, file: !139, line: 1198, baseType: !1527, size: 64, offset: 448)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1529)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !144, line: 324, size: 704, elements: !1530)
!1530 = !{!1531, !1535, !1539, !1543, !1544, !1545, !1546, !1547, !1552, !1557, !1561}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1529, file: !144, line: 325, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!30, !1467}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1529, file: !144, line: 326, baseType: !1536, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!1467, !1193, !30}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1529, file: !144, line: 327, baseType: !1540, size: 64, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{null, !1467}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1529, file: !144, line: 328, baseType: !1532, size: 64, offset: 192)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1529, file: !144, line: 329, baseType: !1532, size: 64, offset: 256)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1529, file: !144, line: 330, baseType: !1532, size: 64, offset: 320)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1529, file: !144, line: 331, baseType: !1384, size: 64, offset: 384)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1529, file: !144, line: 334, baseType: !1548, size: 64, offset: 448)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!1551, !984}
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1529, file: !144, line: 335, baseType: !1553, size: 64, offset: 512)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!30, !984, !1556}
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1529, file: !144, line: 337, baseType: !1558, size: 64, offset: 576)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!30, !984, !1551}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1529, file: !144, line: 339, baseType: !1562, size: 64, offset: 640)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!30, !1193, !1565}
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1194, file: !139, line: 1199, baseType: !1567, size: 64, offset: 512)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1569)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !144, line: 430, size: 704, elements: !1570)
!1570 = !{!1571, !1575, !1576, !1580, !1581, !1582, !1597, !1620, !1624, !1625, !1648}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1569, file: !144, line: 431, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!30, !1193, !30, !30, !1106}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1569, file: !144, line: 432, baseType: !1384, size: 64, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1569, file: !144, line: 433, baseType: !1577, size: 64, offset: 128)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!30, !1193, !7}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1569, file: !144, line: 434, baseType: !1577, size: 64, offset: 192)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1569, file: !144, line: 435, baseType: !1384, size: 64, offset: 256)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1569, file: !144, line: 436, baseType: !1583, size: 64, offset: 320)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!30, !1193, !30, !1586}
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !144, line: 417, size: 256, elements: !1588)
!1588 = !{!1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1587, file: !144, line: 418, baseType: !30, size: 32)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1587, file: !144, line: 419, baseType: !7, size: 32, offset: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1587, file: !144, line: 420, baseType: !7, size: 32, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1587, file: !144, line: 422, baseType: !7, size: 32, offset: 96)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1587, file: !144, line: 423, baseType: !7, size: 32, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1587, file: !144, line: 424, baseType: !7, size: 32, offset: 160)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1587, file: !144, line: 425, baseType: !7, size: 32, offset: 192)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1587, file: !144, line: 426, baseType: !7, size: 32, offset: 224)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1569, file: !144, line: 437, baseType: !1598, size: 64, offset: 384)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!30, !1193, !1479, !1601}
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !144, line: 345, size: 960, elements: !1603)
!1603 = !{!1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1602, file: !144, line: 346, baseType: !30, size: 32)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1602, file: !144, line: 347, baseType: !273, size: 64, offset: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1602, file: !144, line: 348, baseType: !273, size: 64, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1602, file: !144, line: 349, baseType: !273, size: 64, offset: 192)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1602, file: !144, line: 350, baseType: !273, size: 64, offset: 256)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1602, file: !144, line: 351, baseType: !273, size: 64, offset: 320)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1602, file: !144, line: 352, baseType: !273, size: 64, offset: 384)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1602, file: !144, line: 353, baseType: !243, size: 64, offset: 448)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1602, file: !144, line: 355, baseType: !243, size: 64, offset: 512)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1602, file: !144, line: 356, baseType: !30, size: 32, offset: 576)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1602, file: !144, line: 357, baseType: !30, size: 32, offset: 608)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1602, file: !144, line: 358, baseType: !273, size: 64, offset: 640)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1602, file: !144, line: 359, baseType: !273, size: 64, offset: 704)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1602, file: !144, line: 360, baseType: !273, size: 64, offset: 768)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1602, file: !144, line: 361, baseType: !243, size: 64, offset: 832)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1602, file: !144, line: 362, baseType: !30, size: 32, offset: 896)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1569, file: !144, line: 438, baseType: !1621, size: 64, offset: 448)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!30, !1193, !1565, !1601}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1569, file: !144, line: 440, baseType: !1598, size: 64, offset: 512)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1569, file: !144, line: 441, baseType: !1626, size: 64, offset: 576)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!30, !1193, !1629}
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !144, line: 411, size: 1408, elements: !1631)
!1631 = !{!1632, !1633}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1630, file: !144, line: 412, baseType: !7, size: 32)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1630, file: !144, line: 413, baseType: !1634, size: 1344, offset: 64)
!1634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1635, size: 1344, elements: !897)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !144, line: 397, size: 448, elements: !1636)
!1636 = !{!1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1647}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1635, file: !144, line: 398, baseType: !7, size: 32)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1635, file: !144, line: 399, baseType: !7, size: 32, offset: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1635, file: !144, line: 401, baseType: !7, size: 32, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1635, file: !144, line: 402, baseType: !7, size: 32, offset: 96)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1635, file: !144, line: 403, baseType: !7, size: 32, offset: 128)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1635, file: !144, line: 404, baseType: !7, size: 32, offset: 160)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1635, file: !144, line: 405, baseType: !7, size: 32, offset: 192)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1635, file: !144, line: 406, baseType: !275, size: 64, offset: 256)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1635, file: !144, line: 407, baseType: !1646, size: 64, offset: 320)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !33, line: 132, baseType: !273)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1635, file: !144, line: 408, baseType: !1646, size: 64, offset: 384)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1569, file: !144, line: 442, baseType: !1577, size: 64, offset: 640)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1194, file: !139, line: 1200, baseType: !1650, size: 64, offset: 576)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1652)
!1652 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !139, line: 54, flags: DIFlagFwdDecl)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1194, file: !139, line: 1201, baseType: !47, size: 64, offset: 640)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1194, file: !139, line: 1202, baseType: !47, size: 64, offset: 704)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1194, file: !139, line: 1203, baseType: !47, size: 64, offset: 768)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1194, file: !139, line: 1204, baseType: !949, size: 64, offset: 832)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1194, file: !139, line: 1205, baseType: !309, size: 320, offset: 896)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1194, file: !139, line: 1206, baseType: !30, size: 32, offset: 1216)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1194, file: !139, line: 1207, baseType: !57, size: 32, offset: 1248)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1194, file: !139, line: 1209, baseType: !28, size: 64, offset: 1280)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1194, file: !139, line: 1211, baseType: !1662, size: 64, offset: 1344)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1665)
!1665 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !139, line: 1211, flags: DIFlagFwdDecl)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1194, file: !139, line: 1223, baseType: !1667, size: 64, offset: 1408)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !961, line: 34, size: 64, elements: !1668)
!1668 = !{!1669}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1667, file: !961, line: 35, baseType: !964, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1194, file: !139, line: 1224, baseType: !105, size: 128, offset: 1472)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1194, file: !139, line: 1225, baseType: !1672, size: 64, offset: 1600)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !139, line: 1225, flags: DIFlagFwdDecl)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1194, file: !139, line: 1226, baseType: !1675, size: 64, offset: 1664)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !139, line: 1226, flags: DIFlagFwdDecl)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1194, file: !139, line: 1227, baseType: !1678, size: 64, offset: 1728)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !139, line: 50, flags: DIFlagFwdDecl)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1194, file: !139, line: 1228, baseType: !1681, size: 64, offset: 1792)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !139, line: 1228, flags: DIFlagFwdDecl)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1194, file: !139, line: 1229, baseType: !455, size: 128, offset: 1856)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1194, file: !139, line: 1230, baseType: !7, size: 32, offset: 1984)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1194, file: !139, line: 1231, baseType: !1686, size: 2496, offset: 2048)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !144, line: 521, size: 2496, elements: !1687)
!1687 = !{!1688, !1689, !1690, !1692, !1724}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1686, file: !144, line: 522, baseType: !7, size: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1686, file: !144, line: 523, baseType: !309, size: 320, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1686, file: !144, line: 524, baseType: !1691, size: 192, offset: 384)
!1691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !984, size: 192, elements: !897)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1686, file: !144, line: 525, baseType: !1693, size: 1728, offset: 576)
!1693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1694, size: 1728, elements: !897)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !144, line: 222, size: 576, elements: !1695)
!1695 = !{!1696, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1694, file: !144, line: 223, baseType: !1697, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !144, line: 445, size: 256, elements: !1699)
!1699 = !{!1700, !1701, !1714, !1715}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1698, file: !144, line: 446, baseType: !30, size: 32)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1698, file: !144, line: 447, baseType: !1702, size: 64, offset: 64)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1704)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !144, line: 312, size: 512, elements: !1705)
!1705 = !{!1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1704, file: !144, line: 313, baseType: !1384, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1704, file: !144, line: 314, baseType: !1384, size: 64, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1704, file: !144, line: 315, baseType: !1384, size: 64, offset: 128)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1704, file: !144, line: 316, baseType: !1384, size: 64, offset: 192)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1704, file: !144, line: 317, baseType: !1532, size: 64, offset: 256)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1704, file: !144, line: 318, baseType: !1532, size: 64, offset: 320)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1704, file: !144, line: 319, baseType: !1532, size: 64, offset: 384)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1704, file: !144, line: 320, baseType: !1562, size: 64, offset: 448)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1698, file: !144, line: 448, baseType: !1285, size: 64, offset: 128)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1698, file: !144, line: 449, baseType: !1697, size: 64, offset: 192)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1694, file: !144, line: 224, baseType: !30, size: 32, offset: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1694, file: !144, line: 226, baseType: !105, size: 128, offset: 128)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1694, file: !144, line: 227, baseType: !47, size: 64, offset: 256)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1694, file: !144, line: 228, baseType: !7, size: 32, offset: 320)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1694, file: !144, line: 229, baseType: !7, size: 32, offset: 352)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1694, file: !144, line: 230, baseType: !1500, size: 64, offset: 384)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1694, file: !144, line: 231, baseType: !1500, size: 64, offset: 448)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1694, file: !144, line: 232, baseType: !28, size: 64, offset: 512)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1686, file: !144, line: 526, baseType: !1725, size: 192, offset: 2304)
!1725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1702, size: 192, elements: !897)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1194, file: !139, line: 1233, baseType: !1727, size: 2368, offset: 4544)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !139, line: 1184, size: 2368, elements: !1728)
!1728 = !{!1729, !1730, !1731}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1727, file: !139, line: 1185, baseType: !34, size: 16)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1727, file: !139, line: 1186, baseType: !34, size: 16, offset: 16)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1727, file: !139, line: 1187, baseType: !1732, size: 2304, offset: 64)
!1732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1733, size: 2304, elements: !897)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1734, line: 12, size: 768, elements: !1735)
!1734 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1735 = !{!1736, !1744, !1746, !1751, !1752}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1733, file: !1734, line: 13, baseType: !1737, size: 384)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1738, line: 17, size: 384, elements: !1739)
!1738 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1739 = !{!1740, !1741, !1742, !1743}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1737, file: !1738, line: 18, baseType: !30, size: 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1737, file: !1738, line: 19, baseType: !30, size: 32, offset: 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1737, file: !1738, line: 20, baseType: !62, size: 192, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1737, file: !1738, line: 22, baseType: !373, size: 128, align: 64, offset: 256)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1733, file: !1734, line: 14, baseType: !1745, size: 64, offset: 384)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1733, file: !1734, line: 15, baseType: !1747, size: 64, offset: 448)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1748, line: 16, size: 64, elements: !1749)
!1748 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1749 = !{!1750}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1747, file: !1748, line: 17, baseType: !525, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1733, file: !1734, line: 16, baseType: !62, size: 192, offset: 512)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1733, file: !1734, line: 17, baseType: !57, size: 32, offset: 704)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1194, file: !139, line: 1240, baseType: !28, size: 64, offset: 6912)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1194, file: !139, line: 1243, baseType: !339, size: 32, offset: 6976)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1194, file: !139, line: 1245, baseType: !330, size: 64, offset: 7040)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1194, file: !139, line: 1246, baseType: !330, size: 64, offset: 7104)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1194, file: !139, line: 1248, baseType: !340, size: 32, offset: 7168)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1194, file: !139, line: 1249, baseType: !1759, size: 64, offset: 7232)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !139, line: 634, flags: DIFlagFwdDecl)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1194, file: !139, line: 1252, baseType: !1762, size: 256, offset: 7296)
!1762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 256, elements: !1763)
!1763 = !{!1764}
!1764 = !DISubrange(count: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1194, file: !139, line: 1253, baseType: !1766, size: 128, offset: 7552)
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1767, line: 21, baseType: !1768)
!1767 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1767, line: 19, size: 128, elements: !1769)
!1769 = !{!1770}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1768, file: !1767, line: 20, baseType: !1771, size: 128)
!1771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 128, elements: !1772)
!1772 = !{!1773}
!1773 = !DISubrange(count: 16)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1194, file: !139, line: 1255, baseType: !7, size: 32, offset: 7680)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1194, file: !139, line: 1261, baseType: !865, size: 256, offset: 7744)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1194, file: !139, line: 1267, baseType: !24, size: 64, offset: 8000)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1194, file: !139, line: 1269, baseType: !1778, size: 64, offset: 8064)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1780)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !951, line: 128, size: 1024, align: 512, elements: !1781)
!1781 = !{!1782, !1786, !1787, !1794, !1800, !1804, !1808, !1812, !1813, !1817, !1821, !1826, !1830}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1780, file: !951, line: 129, baseType: !1783, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!30, !949, !7}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1780, file: !951, line: 130, baseType: !1783, size: 64, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1780, file: !951, line: 131, baseType: !1788, size: 64, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!30, !1791, !1793}
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !950)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1780, file: !951, line: 132, baseType: !1795, size: 64, offset: 192)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!30, !1791, !7, !24, !1798}
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !969)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1780, file: !951, line: 134, baseType: !1801, size: 64, offset: 256)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!30, !1791}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1780, file: !951, line: 135, baseType: !1805, size: 64, offset: 320)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!30, !949}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1780, file: !951, line: 136, baseType: !1809, size: 64, offset: 384)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{null, !949}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1780, file: !951, line: 137, baseType: !1809, size: 64, offset: 448)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1780, file: !951, line: 138, baseType: !1814, size: 64, offset: 512)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{null, !949, !984}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1780, file: !951, line: 139, baseType: !1818, size: 64, offset: 576)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!394, !949, !394, !30}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1780, file: !951, line: 140, baseType: !1822, size: 64, offset: 640)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!944, !1825}
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1780, file: !951, line: 141, baseType: !1827, size: 64, offset: 704)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!30, !1106, !383}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1780, file: !951, line: 142, baseType: !1831, size: 64, offset: 768)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!949, !949, !1834}
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !985)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1194, file: !139, line: 1271, baseType: !1837, size: 448, offset: 8128)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1515, line: 63, size: 448, elements: !1838)
!1838 = !{!1839, !1844, !1845, !1846, !1847, !1848, !1849}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1837, file: !1515, line: 64, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!47, !1843, !1513}
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1837, file: !1515, line: 66, baseType: !1840, size: 64, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1837, file: !1515, line: 69, baseType: !1098, size: 64, offset: 128)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1837, file: !1515, line: 70, baseType: !30, size: 32, offset: 192)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1837, file: !1515, line: 71, baseType: !7, size: 32, offset: 224)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1837, file: !1515, line: 74, baseType: !105, size: 128, offset: 256)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1837, file: !1515, line: 85, baseType: !1850, size: 64, offset: 384)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1194, file: !139, line: 1274, baseType: !237, size: 64, offset: 8576)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1194, file: !139, line: 1280, baseType: !237, size: 64, offset: 8640)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1194, file: !139, line: 1283, baseType: !30, size: 32, offset: 8704)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1194, file: !139, line: 1286, baseType: !1855, size: 32, offset: 8736)
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1856, line: 8, baseType: !339)
!1856 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1194, file: !139, line: 1289, baseType: !1858, size: 64, offset: 8768)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1860, line: 18, flags: DIFlagFwdDecl)
!1860 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1194, file: !139, line: 1290, baseType: !909, size: 64, offset: 8832)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1194, file: !139, line: 1297, baseType: !475, size: 64, offset: 8896)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1194, file: !139, line: 1304, baseType: !1864, size: 64, offset: 8960)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1865, line: 49, size: 64, elements: !1866)
!1865 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!1866 = !{!1867}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1864, file: !1865, line: 50, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1865, line: 41, size: 512, align: 512, elements: !1870)
!1870 = !{!1871, !1872, !1877}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1869, file: !1865, line: 43, baseType: !67, size: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1869, file: !1865, line: 45, baseType: !1873, size: 192, offset: 64)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1865, line: 29, size: 192, elements: !1874)
!1874 = !{!1875, !1876}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1873, file: !1865, line: 30, baseType: !105, size: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1873, file: !1865, line: 32, baseType: !1098, size: 64, offset: 128)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1869, file: !1865, line: 46, baseType: !1098, size: 64, offset: 256)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1194, file: !139, line: 1305, baseType: !1864, size: 64, offset: 9024)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1194, file: !139, line: 1306, baseType: !373, size: 128, align: 64, offset: 9088)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1194, file: !139, line: 1307, baseType: !1881, size: 256, offset: 9216)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1860, line: 98, size: 256, elements: !1882)
!1882 = !{!1883, !1884, !1885}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1881, file: !1860, line: 99, baseType: !237, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1881, file: !1860, line: 100, baseType: !105, size: 128, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1881, file: !1860, line: 101, baseType: !1886, size: 64, offset: 192)
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1860, line: 21, baseType: !1887)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{null, !1890}
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1194, file: !139, line: 1309, baseType: !865, size: 256, offset: 9472)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1194, file: !139, line: 1314, baseType: !30, size: 32, offset: 9728)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1194, file: !139, line: 1317, baseType: !67, size: 32, align: 512, offset: 10240)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1194, file: !139, line: 1318, baseType: !105, size: 128, offset: 10304)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1194, file: !139, line: 1320, baseType: !67, size: 32, offset: 10432)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1194, file: !139, line: 1321, baseType: !105, size: 128, offset: 10496)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !985, file: !139, line: 656, baseType: !1898, size: 64, offset: 512)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !139, line: 472, size: 1536, align: 64, elements: !1900)
!1900 = !{!1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !2390, !2391, !2392, !2393, !2394, !2395}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1899, file: !139, line: 473, baseType: !984, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1899, file: !139, line: 474, baseType: !1184, size: 128, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1899, file: !139, line: 475, baseType: !309, size: 320, offset: 192)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1899, file: !139, line: 476, baseType: !1189, size: 32, offset: 512)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1899, file: !139, line: 477, baseType: !57, size: 32, offset: 544)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1899, file: !139, line: 482, baseType: !706, size: 128, offset: 576)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1899, file: !139, line: 483, baseType: !47, size: 64, offset: 704)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1899, file: !139, line: 484, baseType: !47, size: 64, offset: 768)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1899, file: !139, line: 485, baseType: !1910, size: 64, offset: 832)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1912)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !139, line: 404, size: 1280, elements: !1913)
!1913 = !{!1914, !2215, !2285, !2289, !2293, !2299, !2305, !2309, !2314, !2318, !2322, !2326, !2354, !2358, !2362, !2366, !2371, !2375, !2382, !2386}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1912, file: !139, line: 405, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!30, !1918, !1375}
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !158, line: 74, size: 512, align: 128, elements: !1920)
!1920 = !{!1921, !1922, !2209, !2214}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1919, file: !158, line: 75, baseType: !47, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, scope: !1919, file: !158, line: 83, baseType: !1923, size: 320, offset: 64)
!1923 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1919, file: !158, line: 83, size: 320, elements: !1924)
!1924 = !{!1925, !1946, !1960, !1964, !2208}
!1925 = !DIDerivedType(tag: DW_TAG_member, scope: !1923, file: !158, line: 84, baseType: !1926, size: 320)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1923, file: !158, line: 84, size: 320, elements: !1927)
!1927 = !{!1928, !1939, !1940, !1945}
!1928 = !DIDerivedType(tag: DW_TAG_member, scope: !1926, file: !158, line: 90, baseType: !1929, size: 128)
!1929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1926, file: !158, line: 90, size: 128, elements: !1930)
!1930 = !{!1931, !1932, !1937, !1938}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1929, file: !158, line: 91, baseType: !105, size: 128)
!1932 = !DIDerivedType(tag: DW_TAG_member, scope: !1929, file: !158, line: 94, baseType: !1933, size: 128)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1929, file: !158, line: 94, size: 128, elements: !1934)
!1934 = !{!1935, !1936}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1933, file: !158, line: 96, baseType: !28, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1933, file: !158, line: 98, baseType: !7, size: 32, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1929, file: !158, line: 102, baseType: !105, size: 128)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1929, file: !158, line: 103, baseType: !105, size: 128)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1926, file: !158, line: 106, baseType: !1898, size: 64, offset: 128)
!1940 = !DIDerivedType(tag: DW_TAG_member, scope: !1926, file: !158, line: 107, baseType: !1941, size: 64, offset: 192)
!1941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1926, file: !158, line: 107, size: 64, elements: !1942)
!1942 = !{!1943, !1944}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1941, file: !158, line: 108, baseType: !47, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1941, file: !158, line: 109, baseType: !47, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1926, file: !158, line: 117, baseType: !47, size: 64, offset: 256)
!1946 = !DIDerivedType(tag: DW_TAG_member, scope: !1923, file: !158, line: 119, baseType: !1947, size: 320)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1923, file: !158, line: 119, size: 320, elements: !1948)
!1948 = !{!1949, !1950, !1953, !1954, !1955}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1947, file: !158, line: 124, baseType: !47, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1947, file: !158, line: 125, baseType: !1951, size: 64, offset: 64)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !158, line: 125, flags: DIFlagFwdDecl)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1947, file: !158, line: 126, baseType: !47, size: 64, offset: 128)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1947, file: !158, line: 127, baseType: !47, size: 64, offset: 192)
!1955 = !DIDerivedType(tag: DW_TAG_member, scope: !1947, file: !158, line: 128, baseType: !1956, size: 64, offset: 256)
!1956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1947, file: !158, line: 128, size: 64, elements: !1957)
!1957 = !{!1958, !1959}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1956, file: !158, line: 133, baseType: !47, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1956, file: !158, line: 138, baseType: !237, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, scope: !1923, file: !158, line: 141, baseType: !1961, size: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1923, file: !158, line: 141, size: 64, elements: !1962)
!1962 = !{!1963}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1961, file: !158, line: 142, baseType: !47, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, scope: !1923, file: !158, line: 144, baseType: !1965, size: 128)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1923, file: !158, line: 144, size: 128, elements: !1966)
!1966 = !{!1967, !2207}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1965, file: !158, line: 146, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !150, line: 126, size: 1216, elements: !1970)
!1970 = !{!1971, !1981, !2002, !2013, !2014, !2015, !2016, !2189, !2190, !2191}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1969, file: !150, line: 127, baseType: !1972, size: 384)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !150, line: 21, size: 384, elements: !1973)
!1973 = !{!1974, !1975, !1977, !1978, !1979, !1980}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1972, file: !150, line: 22, baseType: !47, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1972, file: !150, line: 23, baseType: !1976, size: 64, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1972, file: !150, line: 24, baseType: !1976, size: 64, offset: 128)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1972, file: !150, line: 25, baseType: !47, size: 64, offset: 192)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1972, file: !150, line: 26, baseType: !47, size: 64, offset: 256)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1972, file: !150, line: 27, baseType: !47, size: 64, offset: 320)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1969, file: !150, line: 128, baseType: !1982, size: 128, offset: 384)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1983, line: 105, size: 128, elements: !1984)
!1983 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1984 = !{!1985, !1986}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1982, file: !1983, line: 110, baseType: !47, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1982, file: !1983, line: 118, baseType: !1987, size: 64, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1983, line: 95, size: 448, elements: !1989)
!1989 = !{!1990, !1991, !1997, !1998, !1999, !2000, !2001}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1988, file: !1983, line: 96, baseType: !237, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1988, file: !1983, line: 97, baseType: !1992, size: 64, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1983, line: 60, baseType: !1994)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{null, !1996}
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1988, file: !1983, line: 98, baseType: !1992, size: 64, offset: 128)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1988, file: !1983, line: 99, baseType: !383, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1988, file: !1983, line: 100, baseType: !383, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1988, file: !1983, line: 101, baseType: !373, size: 128, align: 64, offset: 256)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1988, file: !1983, line: 102, baseType: !1996, size: 64, offset: 384)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1969, file: !150, line: 129, baseType: !2003, size: 256, offset: 512)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2004, line: 26, size: 256, elements: !2005)
!2004 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!2005 = !{!2006, !2007}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2003, file: !2004, line: 27, baseType: !7, size: 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2003, file: !2004, line: 28, baseType: !2008, size: 192, offset: 64)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2009, line: 43, size: 192, elements: !2010)
!2009 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!2010 = !{!2011, !2012}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2008, file: !2009, line: 44, baseType: !320, size: 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2008, file: !2009, line: 45, baseType: !105, size: 128, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1969, file: !150, line: 130, baseType: !149, size: 32, offset: 768)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1969, file: !150, line: 131, baseType: !7, size: 32, offset: 800)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1969, file: !150, line: 132, baseType: !47, size: 64, offset: 832)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1969, file: !150, line: 133, baseType: !2017, size: 64, offset: 896)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2019)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !150, line: 77, size: 192, elements: !2020)
!2020 = !{!2021, !2025, !2185}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2019, file: !150, line: 83, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{null, !1918}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2019, file: !150, line: 89, baseType: !2026, size: 64, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!2029, !2030}
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !158, line: 1184, baseType: !7)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2032, line: 512, size: 896, elements: !2033)
!2032 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2033 = !{!2034, !2152, !2153, !2160, !2167, !2177, !2178, !2179, !2181, !2183}
!2034 = !DIDerivedType(tag: DW_TAG_member, scope: !2031, file: !2032, line: 513, baseType: !2035, size: 320)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2031, file: !2032, line: 513, size: 320, elements: !2036)
!2036 = !{!2037, !2148, !2149, !2150, !2151}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2035, file: !2032, line: 514, baseType: !2038, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !158, line: 625, size: 1344, elements: !2040)
!2040 = !{!2041, !2050, !2051, !2059, !2066, !2067, !2072, !2073, !2078, !2079, !2082, !2141, !2142, !2143, !2144, !2145, !2146}
!2041 = !DIDerivedType(tag: DW_TAG_member, scope: !2039, file: !158, line: 628, baseType: !2042, size: 128)
!2042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2039, file: !158, line: 628, size: 128, elements: !2043)
!2043 = !{!2044, !2049}
!2044 = !DIDerivedType(tag: DW_TAG_member, scope: !2042, file: !158, line: 629, baseType: !2045, size: 128)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2042, file: !158, line: 629, size: 128, elements: !2046)
!2046 = !{!2047, !2048}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2045, file: !158, line: 631, baseType: !47, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2045, file: !158, line: 632, baseType: !47, size: 64, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2042, file: !158, line: 635, baseType: !373, size: 128, align: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2039, file: !158, line: 639, baseType: !823, size: 64, offset: 128)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2039, file: !158, line: 640, baseType: !2052, size: 64, offset: 192)
!2052 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2053, line: 297, baseType: !2054)
!2053 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2053, line: 297, size: 64, elements: !2055)
!2055 = !{!2056}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2054, file: !2053, line: 297, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2058, line: 19, baseType: !47)
!2058 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2059 = !DIDerivedType(tag: DW_TAG_member, scope: !2039, file: !158, line: 646, baseType: !2060, size: 64, offset: 256)
!2060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2039, file: !158, line: 646, size: 64, elements: !2061)
!2061 = !{!2062, !2065}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2060, file: !158, line: 647, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2064)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !158, line: 542, baseType: !47)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2060, file: !158, line: 648, baseType: !2064, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2039, file: !158, line: 666, baseType: !30, size: 32, offset: 320)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2039, file: !158, line: 667, baseType: !2068, size: 64, offset: 384)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !158, line: 579, size: 320, elements: !2070)
!2070 = !{!2071}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2069, file: !158, line: 580, baseType: !309, size: 320)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2039, file: !158, line: 670, baseType: !383, size: 8, offset: 448)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2039, file: !158, line: 681, baseType: !2074, size: 256, offset: 512)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2039, file: !158, line: 678, size: 256, elements: !2075)
!2075 = !{!2076, !2077}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2074, file: !158, line: 679, baseType: !301, size: 192, align: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2074, file: !158, line: 680, baseType: !47, size: 64, offset: 192)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2039, file: !158, line: 689, baseType: !105, size: 128, offset: 768)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2039, file: !158, line: 691, baseType: !2080, size: 64, offset: 896)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !158, line: 691, flags: DIFlagFwdDecl)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2039, file: !158, line: 694, baseType: !2083, size: 64, offset: 960)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2085)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2032, line: 563, size: 1024, elements: !2086)
!2086 = !{!2087, !2091, !2092, !2096, !2100, !2104, !2105, !2109, !2113, !2117, !2118, !2119, !2123, !2127, !2133, !2137}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2085, file: !2032, line: 564, baseType: !2088, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{null, !2038}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2085, file: !2032, line: 569, baseType: !2088, size: 64, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2085, file: !2032, line: 571, baseType: !2093, size: 64, offset: 128)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!30, !2038, !47}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2085, file: !2032, line: 572, baseType: !2097, size: 64, offset: 192)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!30, !2038}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2085, file: !2032, line: 578, baseType: !2101, size: 64, offset: 256)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!30, !2038, !47, !47, !47}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2085, file: !2032, line: 580, baseType: !2026, size: 64, offset: 320)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2085, file: !2032, line: 581, baseType: !2106, size: 64, offset: 384)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!2029, !2030, !7}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2085, file: !2032, line: 582, baseType: !2110, size: 64, offset: 448)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!2029, !2030, !47, !47}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2085, file: !2032, line: 584, baseType: !2114, size: 64, offset: 512)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!47, !2038}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2085, file: !2032, line: 588, baseType: !2026, size: 64, offset: 576)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2085, file: !2032, line: 591, baseType: !2026, size: 64, offset: 640)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2085, file: !2032, line: 597, baseType: !2120, size: 64, offset: 704)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!30, !2038, !47, !28, !30, !30}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2085, file: !2032, line: 603, baseType: !2124, size: 64, offset: 768)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!24, !2038}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2085, file: !2032, line: 613, baseType: !2128, size: 64, offset: 832)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!30, !2038, !2131}
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !527, line: 54, flags: DIFlagFwdDecl)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2085, file: !2032, line: 625, baseType: !2134, size: 64, offset: 896)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!2131, !2038, !47}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2085, file: !2032, line: 633, baseType: !2138, size: 64, offset: 960)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!1918, !2038, !47}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2039, file: !158, line: 697, baseType: !47, size: 64, offset: 1024)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2039, file: !158, line: 699, baseType: !851, size: 64, offset: 1088)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2039, file: !158, line: 700, baseType: !28, size: 64, offset: 1152)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2039, file: !158, line: 711, baseType: !237, size: 64, offset: 1216)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2039, file: !158, line: 717, baseType: !2131, size: 64, offset: 1280)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2039, file: !158, line: 722, baseType: !2147, offset: 1344)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !158, line: 570, elements: !844)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2035, file: !2032, line: 515, baseType: !1189, size: 32, offset: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2035, file: !2032, line: 516, baseType: !47, size: 64, offset: 128)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2035, file: !2032, line: 517, baseType: !47, size: 64, offset: 192)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2035, file: !2032, line: 518, baseType: !47, size: 64, offset: 256)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2031, file: !2032, line: 520, baseType: !157, size: 32, offset: 320)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2031, file: !2032, line: 522, baseType: !2154, size: 64, offset: 384)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2058, line: 22, baseType: !2156)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2058, line: 22, size: 64, elements: !2157)
!2157 = !{!2158}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2156, file: !2058, line: 22, baseType: !2159, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2058, line: 15, baseType: !47)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2031, file: !2032, line: 524, baseType: !2161, size: 64, offset: 448)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2053, line: 372, baseType: !2163)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2053, line: 372, size: 64, elements: !2164)
!2164 = !{!2165}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2163, file: !2053, line: 372, baseType: !2166, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2058, line: 16, baseType: !47)
!2167 = !DIDerivedType(tag: DW_TAG_member, scope: !2031, file: !2032, line: 527, baseType: !2168, size: 64, offset: 512)
!2168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2031, file: !2032, line: 527, size: 64, elements: !2169)
!2169 = !{!2170, !2176}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2168, file: !2032, line: 528, baseType: !2171, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2058, line: 21, baseType: !2172)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2058, line: 21, size: 64, elements: !2173)
!2173 = !{!2174}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2172, file: !2058, line: 21, baseType: !2175, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2058, line: 14, baseType: !47)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2168, file: !2032, line: 529, baseType: !2155, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2031, file: !2032, line: 534, baseType: !1918, size: 64, offset: 576)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2031, file: !2032, line: 535, baseType: !1918, size: 64, offset: 640)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2031, file: !2032, line: 541, baseType: !2180, size: 64, offset: 704)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2031, file: !2032, line: 545, baseType: !2182, size: 64, offset: 768)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2031, file: !2032, line: 549, baseType: !2184, size: 64, offset: 832)
!2184 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2053, line: 520, baseType: !1918)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2019, file: !150, line: 100, baseType: !2186, size: 64, offset: 128)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!30, !1968, !47, !47, !30}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1969, file: !150, line: 134, baseType: !28, size: 64, offset: 960)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1969, file: !150, line: 135, baseType: !30, size: 32, offset: 1024)
!2191 = !DIDerivedType(tag: DW_TAG_member, scope: !1969, file: !150, line: 136, baseType: !2192, size: 128, offset: 1088)
!2192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1969, file: !150, line: 136, size: 128, elements: !2193)
!2193 = !{!2194, !2200}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2192, file: !150, line: 137, baseType: !2195, size: 128)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2196, line: 6, size: 128, elements: !2197)
!2196 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2197 = !{!2198, !2199}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2195, file: !2196, line: 7, baseType: !273, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2195, file: !2196, line: 8, baseType: !273, size: 64, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, scope: !2192, file: !150, line: 138, baseType: !2201)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2192, file: !150, line: 138, elements: !2202)
!2202 = !{!2203, !2205}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2201, file: !150, line: 138, baseType: !2204)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2201, file: !150, line: 138, elements: !844)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2201, file: !150, line: 138, baseType: !2206)
!2206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2195, elements: !923)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1965, file: !158, line: 147, baseType: !28, size: 64, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1923, file: !158, line: 161, baseType: !373, size: 128, align: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, scope: !1919, file: !158, line: 164, baseType: !2210, size: 32, offset: 384)
!2210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1919, file: !158, line: 164, size: 32, elements: !2211)
!2211 = !{!2212, !2213}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2210, file: !158, line: 169, baseType: !57, size: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2210, file: !158, line: 177, baseType: !7, size: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1919, file: !158, line: 181, baseType: !57, size: 32, offset: 416)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1912, file: !139, line: 406, baseType: !2216, size: 64, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!30, !851, !2219}
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !158, line: 293, size: 1536, elements: !2221)
!2221 = !{!2222, !2252, !2266}
!2222 = !DIDerivedType(tag: DW_TAG_member, scope: !2220, file: !158, line: 295, baseType: !2223, size: 512)
!2223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2220, file: !158, line: 295, size: 512, elements: !2224)
!2224 = !{!2225, !2251}
!2225 = !DIDerivedType(tag: DW_TAG_member, scope: !2223, file: !158, line: 296, baseType: !2226, size: 448)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2223, file: !158, line: 296, size: 448, elements: !2227)
!2227 = !{!2228, !2229, !2238, !2239, !2240, !2249, !2250}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2226, file: !158, line: 298, baseType: !47, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, scope: !2226, file: !158, line: 299, baseType: !2230, size: 128, offset: 64)
!2230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2226, file: !158, line: 299, size: 128, elements: !2231)
!2231 = !{!2232, !2233}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2230, file: !158, line: 300, baseType: !105, size: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, scope: !2230, file: !158, line: 302, baseType: !2234, size: 128)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2230, file: !158, line: 302, size: 128, elements: !2235)
!2235 = !{!2236, !2237}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2234, file: !158, line: 303, baseType: !28, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2234, file: !158, line: 305, baseType: !7, size: 32, offset: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2226, file: !158, line: 310, baseType: !1898, size: 64, offset: 192)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2226, file: !158, line: 311, baseType: !47, size: 64, offset: 256)
!2240 = !DIDerivedType(tag: DW_TAG_member, scope: !2226, file: !158, line: 312, baseType: !2241, size: 64, offset: 320)
!2241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2226, file: !158, line: 312, size: 64, elements: !2242)
!2242 = !{!2243, !2244}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2241, file: !158, line: 313, baseType: !28, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2241, file: !158, line: 314, baseType: !2245, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !158, line: 257, baseType: !2246)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 255, size: 64, elements: !2247)
!2247 = !{!2248}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2246, file: !158, line: 256, baseType: !47, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2226, file: !158, line: 316, baseType: !57, size: 32, offset: 384)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2226, file: !158, line: 317, baseType: !57, size: 32, offset: 416)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2223, file: !158, line: 323, baseType: !1919, size: 512, align: 128)
!2252 = !DIDerivedType(tag: DW_TAG_member, scope: !2220, file: !158, line: 325, baseType: !2253, size: 512, offset: 512)
!2253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2220, file: !158, line: 325, size: 512, elements: !2254)
!2254 = !{!2255, !2265}
!2255 = !DIDerivedType(tag: DW_TAG_member, scope: !2253, file: !158, line: 326, baseType: !2256, size: 320)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2253, file: !158, line: 326, size: 320, elements: !2257)
!2257 = !{!2258, !2259, !2260, !2261, !2262, !2263, !2264}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2256, file: !158, line: 327, baseType: !47, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2256, file: !158, line: 328, baseType: !47, size: 64, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2256, file: !158, line: 329, baseType: !47, size: 64, offset: 128)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2256, file: !158, line: 331, baseType: !57, size: 32, offset: 192)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2256, file: !158, line: 332, baseType: !57, size: 32, offset: 224)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2256, file: !158, line: 333, baseType: !57, size: 32, offset: 256)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2256, file: !158, line: 335, baseType: !7, size: 32, offset: 288)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2253, file: !158, line: 339, baseType: !1919, size: 512, align: 128)
!2266 = !DIDerivedType(tag: DW_TAG_member, scope: !2220, file: !158, line: 341, baseType: !2267, size: 512, offset: 1024)
!2267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2220, file: !158, line: 341, size: 512, elements: !2268)
!2268 = !{!2269, !2278, !2284}
!2269 = !DIDerivedType(tag: DW_TAG_member, scope: !2267, file: !158, line: 342, baseType: !2270, size: 384)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2267, file: !158, line: 342, size: 384, elements: !2271)
!2271 = !{!2272, !2273, !2274, !2275, !2276, !2277}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2270, file: !158, line: 343, baseType: !47, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2270, file: !158, line: 344, baseType: !47, size: 64, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2270, file: !158, line: 346, baseType: !28, size: 64, offset: 128)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2270, file: !158, line: 347, baseType: !28, size: 64, offset: 192)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2270, file: !158, line: 348, baseType: !28, size: 64, offset: 256)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2270, file: !158, line: 349, baseType: !28, size: 64, offset: 320)
!2278 = !DIDerivedType(tag: DW_TAG_member, scope: !2267, file: !158, line: 352, baseType: !2279, size: 256)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2267, file: !158, line: 352, size: 256, elements: !2280)
!2280 = !{!2281, !2282, !2283}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2279, file: !158, line: 353, baseType: !47, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2279, file: !158, line: 354, baseType: !47, size: 64, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2279, file: !158, line: 356, baseType: !105, size: 128, offset: 128)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2267, file: !158, line: 359, baseType: !1919, size: 512, align: 128)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1912, file: !139, line: 409, baseType: !2286, size: 64, offset: 128)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!30, !1898, !1375}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1912, file: !139, line: 412, baseType: !2290, size: 64, offset: 192)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!383, !1898, !2219}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1912, file: !139, line: 414, baseType: !2294, size: 64, offset: 256)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{null, !2297}
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !139, line: 310, flags: DIFlagFwdDecl)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1912, file: !139, line: 416, baseType: !2300, size: 64, offset: 320)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!30, !851, !1898, !49, !7, !2303, !2304}
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1912, file: !139, line: 419, baseType: !2306, size: 64, offset: 384)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!30, !851, !1898, !49, !7, !7, !1918, !28}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1912, file: !139, line: 424, baseType: !2310, size: 64, offset: 448)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!2313, !1898, !2313}
!2313 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !33, line: 131, baseType: !273)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1912, file: !139, line: 425, baseType: !2315, size: 64, offset: 512)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{null, !2219, !43, !43}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1912, file: !139, line: 426, baseType: !2319, size: 64, offset: 576)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!383, !2219, !1189}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1912, file: !139, line: 427, baseType: !2323, size: 64, offset: 640)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{null, !2219}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1912, file: !139, line: 428, baseType: !2327, size: 64, offset: 704)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!1137, !2330, !2352}
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !139, line: 373, size: 384, elements: !2332)
!2332 = !{!2333, !2334, !2335, !2339, !2340, !2341, !2342}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2331, file: !139, line: 374, baseType: !851, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2331, file: !139, line: 375, baseType: !49, size: 64, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2331, file: !139, line: 376, baseType: !2336, size: 64, offset: 128)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{null, !2330, !1098}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2331, file: !139, line: 377, baseType: !28, size: 64, offset: 192)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2331, file: !139, line: 378, baseType: !30, size: 32, offset: 256)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2331, file: !139, line: 379, baseType: !101, size: 16, offset: 288)
!2342 = !DIDerivedType(tag: DW_TAG_member, scope: !2331, file: !139, line: 380, baseType: !2343, size: 64, offset: 320)
!2343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2331, file: !139, line: 380, size: 64, elements: !2344)
!2344 = !{!2345, !2348}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2343, file: !139, line: 386, baseType: !2346, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !139, line: 386, flags: DIFlagFwdDecl)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2343, file: !139, line: 395, baseType: !2349, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!1137, !28}
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !139, line: 69, flags: DIFlagFwdDecl)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1912, file: !139, line: 433, baseType: !2355, size: 64, offset: 768)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!30, !1898, !2219, !2219, !173}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1912, file: !139, line: 435, baseType: !2359, size: 64, offset: 832)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!30, !2219}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1912, file: !139, line: 436, baseType: !2363, size: 64, offset: 896)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!383, !2219, !43, !43}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1912, file: !139, line: 438, baseType: !2367, size: 64, offset: 960)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{null, !2219, !2370, !2370}
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1912, file: !139, line: 439, baseType: !2372, size: 64, offset: 1024)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!30, !1898, !1918}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1912, file: !139, line: 442, baseType: !2376, size: 64, offset: 1088)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!30, !2379, !851, !2381}
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !139, line: 66, flags: DIFlagFwdDecl)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1912, file: !139, line: 444, baseType: !2383, size: 64, offset: 1152)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{null, !851}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1912, file: !139, line: 445, baseType: !2387, size: 64, offset: 1216)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!30, !2330, !2352}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1899, file: !139, line: 486, baseType: !47, size: 64, offset: 896)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1899, file: !139, line: 487, baseType: !309, size: 320, offset: 960)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1899, file: !139, line: 488, baseType: !1855, size: 32, offset: 1280)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1899, file: !139, line: 489, baseType: !67, size: 32, offset: 1312)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1899, file: !139, line: 490, baseType: !105, size: 128, offset: 1344)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1899, file: !139, line: 491, baseType: !28, size: 64, offset: 1472)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !985, file: !139, line: 659, baseType: !28, size: 64, offset: 576)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !985, file: !139, line: 663, baseType: !47, size: 64, offset: 640)
!2398 = !DIDerivedType(tag: DW_TAG_member, scope: !985, file: !139, line: 671, baseType: !2399, size: 32, offset: 704)
!2399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !985, file: !139, line: 671, size: 32, elements: !2400)
!2400 = !{!2401, !2403}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2399, file: !139, line: 672, baseType: !2402, size: 32)
!2402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2399, file: !139, line: 673, baseType: !7, size: 32)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !985, file: !139, line: 675, baseType: !1058, size: 32, offset: 736)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !985, file: !139, line: 676, baseType: !49, size: 64, offset: 768)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !985, file: !139, line: 677, baseType: !1094, size: 128, offset: 832)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !985, file: !139, line: 678, baseType: !1094, size: 128, offset: 960)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !985, file: !139, line: 679, baseType: !1094, size: 128, offset: 1088)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !985, file: !139, line: 680, baseType: !67, size: 32, offset: 1216)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !985, file: !139, line: 681, baseType: !34, size: 16, offset: 1248)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !985, file: !139, line: 682, baseType: !91, size: 8, offset: 1264)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !985, file: !139, line: 683, baseType: !91, size: 8, offset: 1272)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !985, file: !139, line: 684, baseType: !1646, size: 64, offset: 1280)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !985, file: !139, line: 691, baseType: !47, size: 64, offset: 1344)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !985, file: !139, line: 692, baseType: !309, size: 320, offset: 1408)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !985, file: !139, line: 694, baseType: !47, size: 64, offset: 1728)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !985, file: !139, line: 695, baseType: !47, size: 64, offset: 1792)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !985, file: !139, line: 697, baseType: !455, size: 128, offset: 1856)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !985, file: !139, line: 698, baseType: !105, size: 128, offset: 1984)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !985, file: !139, line: 707, baseType: !105, size: 128, offset: 2112)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !985, file: !139, line: 708, baseType: !105, size: 128, offset: 2240)
!2422 = !DIDerivedType(tag: DW_TAG_member, scope: !985, file: !139, line: 709, baseType: !2423, size: 128, offset: 2368)
!2423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !985, file: !139, line: 709, size: 128, elements: !2424)
!2424 = !{!2425, !2426}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2423, file: !139, line: 710, baseType: !909, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2423, file: !139, line: 711, baseType: !373, size: 128, align: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !985, file: !139, line: 713, baseType: !239, size: 64, offset: 2496)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !985, file: !139, line: 714, baseType: !239, size: 64, offset: 2560)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !985, file: !139, line: 715, baseType: !57, size: 32, offset: 2624)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !985, file: !139, line: 716, baseType: !57, size: 32, offset: 2656)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !985, file: !139, line: 717, baseType: !57, size: 32, offset: 2688)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !985, file: !139, line: 719, baseType: !57, size: 32, offset: 2720)
!2433 = !DIDerivedType(tag: DW_TAG_member, scope: !985, file: !139, line: 721, baseType: !2434, size: 64, offset: 2752)
!2434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !985, file: !139, line: 721, size: 64, elements: !2435)
!2435 = !{!2436, !2566}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2434, file: !139, line: 722, baseType: !2437, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2439)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !139, line: 1914, size: 2112, elements: !2440)
!2440 = !{!2441, !2442, !2446, !2450, !2454, !2455, !2456, !2462, !2475, !2483, !2487, !2488, !2492, !2493, !2497, !2502, !2503, !2507, !2511, !2517, !2518, !2522, !2523, !2529, !2533, !2534, !2539, !2543, !2547, !2551, !2555, !2556, !2562}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2439, file: !139, line: 1915, baseType: !1285, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2439, file: !139, line: 1916, baseType: !2443, size: 64, offset: 64)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!49, !851, !49, !30}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2439, file: !139, line: 1917, baseType: !2447, size: 64, offset: 128)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!1137, !851, !394, !43, !48}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2439, file: !139, line: 1918, baseType: !2451, size: 64, offset: 192)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!1137, !851, !24, !43, !48}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2439, file: !139, line: 1919, baseType: !2327, size: 64, offset: 256)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2439, file: !139, line: 1920, baseType: !2327, size: 64, offset: 320)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2439, file: !139, line: 1921, baseType: !2457, size: 64, offset: 384)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!30, !2330, !2460, !7}
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !139, line: 53, flags: DIFlagFwdDecl)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2439, file: !139, line: 1923, baseType: !2463, size: 64, offset: 448)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!30, !851, !2466}
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !139, line: 1858, size: 128, elements: !2468)
!2468 = !{!2469, !2474}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2467, file: !139, line: 1859, baseType: !2470, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !139, line: 1855, baseType: !2471)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!383, !2466, !24, !30, !49, !273, !7}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2467, file: !139, line: 1860, baseType: !49, size: 64, offset: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2439, file: !139, line: 1924, baseType: !2476, size: 64, offset: 512)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!2479, !851, !2481}
!2479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2480, line: 59, baseType: !7)
!2480 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !139, line: 61, flags: DIFlagFwdDecl)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2439, file: !139, line: 1925, baseType: !2484, size: 64, offset: 576)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!1098, !851, !7, !47}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2439, file: !139, line: 1926, baseType: !2484, size: 64, offset: 640)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2439, file: !139, line: 1927, baseType: !2489, size: 64, offset: 704)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!30, !851, !2038}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2439, file: !139, line: 1928, baseType: !47, size: 64, offset: 768)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2439, file: !139, line: 1929, baseType: !2494, size: 64, offset: 832)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!30, !984, !851}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2439, file: !139, line: 1930, baseType: !2498, size: 64, offset: 896)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!30, !851, !2501}
!2501 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !139, line: 1061, baseType: !28)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2439, file: !139, line: 1931, baseType: !2494, size: 64, offset: 960)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2439, file: !139, line: 1932, baseType: !2504, size: 64, offset: 1024)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!30, !851, !49, !49, !30}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2439, file: !139, line: 1933, baseType: !2508, size: 64, offset: 1088)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!30, !30, !851, !30}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2439, file: !139, line: 1934, baseType: !2512, size: 64, offset: 1152)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!30, !851, !30, !2515}
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !139, line: 1063, flags: DIFlagFwdDecl)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2439, file: !139, line: 1935, baseType: !848, size: 64, offset: 1216)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2439, file: !139, line: 1936, baseType: !2519, size: 64, offset: 1280)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!30, !30}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2439, file: !139, line: 1937, baseType: !2512, size: 64, offset: 1344)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2439, file: !139, line: 1938, baseType: !2524, size: 64, offset: 1408)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!1137, !2527, !851, !48, !43, !7}
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !527, line: 59, flags: DIFlagFwdDecl)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2439, file: !139, line: 1939, baseType: !2530, size: 64, offset: 1472)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!1137, !851, !48, !2527, !43, !7}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2439, file: !139, line: 1940, baseType: !2383, size: 64, offset: 1536)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2439, file: !139, line: 1941, baseType: !2535, size: 64, offset: 1600)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!30, !851, !30, !2538, !2304}
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2439, file: !139, line: 1942, baseType: !2540, size: 64, offset: 1664)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!1098, !851, !30, !49, !49}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2439, file: !139, line: 1944, baseType: !2544, size: 64, offset: 1728)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{null, !1413, !851}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2439, file: !139, line: 1948, baseType: !2548, size: 64, offset: 1792)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!1137, !851, !49, !851, !49, !43, !7}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2439, file: !139, line: 1950, baseType: !2552, size: 64, offset: 1856)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!49, !851, !49, !851, !49, !49, !7}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2439, file: !139, line: 1953, baseType: !2504, size: 64, offset: 1920)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2439, file: !139, line: 1954, baseType: !2557, size: 64, offset: 1984)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!30, !2560, !7}
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !139, line: 1911, flags: DIFlagFwdDecl)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2439, file: !139, line: 1955, baseType: !2563, size: 64, offset: 2048)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!30, !2560, !2460, !7}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2434, file: !139, line: 723, baseType: !1363, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !985, file: !139, line: 725, baseType: !2568, size: 64, offset: 2816)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !139, line: 725, flags: DIFlagFwdDecl)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !985, file: !139, line: 726, baseType: !1899, size: 1536, align: 64, offset: 2880)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !985, file: !139, line: 727, baseType: !105, size: 128, offset: 4416)
!2572 = !DIDerivedType(tag: DW_TAG_member, scope: !985, file: !139, line: 728, baseType: !2573, size: 64, offset: 4544)
!2573 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !985, file: !139, line: 728, size: 64, elements: !2574)
!2574 = !{!2575, !2576, !2579, !2580}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2573, file: !139, line: 729, baseType: !2527, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2573, file: !139, line: 730, baseType: !2577, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !139, line: 730, flags: DIFlagFwdDecl)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2573, file: !139, line: 731, baseType: !394, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2573, file: !139, line: 732, baseType: !7, size: 32)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !985, file: !139, line: 735, baseType: !340, size: 32, offset: 4608)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !985, file: !139, line: 738, baseType: !340, size: 32, offset: 4640)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !985, file: !139, line: 739, baseType: !1759, size: 64, offset: 4672)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !985, file: !139, line: 750, baseType: !28, size: 64, offset: 4736)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !950, file: !951, line: 91, baseType: !2586, size: 256, offset: 448)
!2586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 256, elements: !1763)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !950, file: !951, line: 94, baseType: !2588, size: 64, offset: 704)
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2589, line: 25, size: 64, elements: !2590)
!2589 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!2590 = !{!2591}
!2591 = !DIDerivedType(tag: DW_TAG_member, scope: !2588, file: !2589, line: 26, baseType: !2592, size: 64)
!2592 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2588, file: !2589, line: 26, size: 64, elements: !2593)
!2593 = !{!2594, !2595}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !2592, file: !2589, line: 28, baseType: !274, size: 64, align: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, scope: !2592, file: !2589, line: 30, baseType: !2596, size: 64)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2592, file: !2589, line: 30, size: 64, elements: !2597)
!2597 = !{!2598, !2599}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2596, file: !2589, line: 31, baseType: !67, size: 32)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2596, file: !2589, line: 32, baseType: !30, size: 32, offset: 32)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !950, file: !951, line: 95, baseType: !1778, size: 64, offset: 768)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !950, file: !951, line: 96, baseType: !1193, size: 64, offset: 832)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !950, file: !951, line: 97, baseType: !47, size: 64, offset: 896)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !950, file: !951, line: 98, baseType: !28, size: 64, offset: 960)
!2604 = !DIDerivedType(tag: DW_TAG_member, scope: !950, file: !951, line: 100, baseType: !2605, size: 128, offset: 1024)
!2605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !950, file: !951, line: 100, size: 128, elements: !2606)
!2606 = !{!2607, !2608}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2605, file: !951, line: 101, baseType: !105, size: 128)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2605, file: !951, line: 102, baseType: !2609, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !950, file: !951, line: 104, baseType: !105, size: 128, offset: 1152)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !950, file: !951, line: 105, baseType: !105, size: 128, offset: 1280)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !950, file: !951, line: 113, baseType: !2613, size: 128, offset: 1408)
!2613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !950, file: !951, line: 109, size: 128, elements: !2614)
!2614 = !{!2615, !2616, !2617}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2613, file: !951, line: 110, baseType: !455, size: 128)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2613, file: !951, line: 111, baseType: !960, size: 128)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2613, file: !951, line: 112, baseType: !373, size: 128, align: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !945, file: !946, line: 72, baseType: !1193, size: 64, offset: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !945, file: !946, line: 73, baseType: !30, size: 32, offset: 128)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !945, file: !946, line: 74, baseType: !1023, size: 64, offset: 192)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !940, file: !941, line: 10, baseType: !949, size: 64, offset: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !852, file: !139, line: 1015, baseType: !984, size: 64, offset: 1344)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !852, file: !139, line: 1016, baseType: !2437, size: 64, offset: 1408)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !852, file: !139, line: 1018, baseType: !273, size: 64, offset: 1472)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !852, file: !139, line: 1020, baseType: !28, size: 64, offset: 1536)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !852, file: !139, line: 1023, baseType: !28, size: 64, offset: 1600)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !852, file: !139, line: 1027, baseType: !2628, size: 64, offset: 1664)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !852, file: !139, line: 1029, baseType: !1898, size: 64, offset: 1728)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !852, file: !139, line: 1030, baseType: !1855, size: 32, offset: 1792)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !852, file: !139, line: 1031, baseType: !1855, size: 32, offset: 1824)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !827, file: !158, line: 756, baseType: !47, size: 64, offset: 704)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !827, file: !158, line: 757, baseType: !47, size: 64, offset: 768)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !827, file: !158, line: 760, baseType: !47, size: 64, offset: 832)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !827, file: !158, line: 761, baseType: !47, size: 64, offset: 896)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !827, file: !158, line: 763, baseType: !47, size: 64, offset: 960)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !827, file: !158, line: 764, baseType: !2638, size: 64, offset: 1024)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2053, line: 299, baseType: !2640)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2053, line: 299, size: 64, elements: !2641)
!2641 = !{!2642}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2640, file: !2053, line: 299, baseType: !2643, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2058, line: 18, baseType: !47)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !827, file: !158, line: 773, baseType: !57, size: 32, offset: 1088)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !827, file: !158, line: 785, baseType: !57, size: 32, offset: 1120)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !827, file: !158, line: 795, baseType: !2647, size: 64, offset: 1152)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !158, line: 726, size: 128, elements: !2649)
!2649 = !{!2650, !2651}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2648, file: !158, line: 727, baseType: !273, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2648, file: !158, line: 728, baseType: !30, size: 32, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !827, file: !158, line: 801, baseType: !47, size: 64, offset: 1216)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !827, file: !158, line: 804, baseType: !237, size: 64, offset: 1280)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !827, file: !158, line: 806, baseType: !30, size: 32, offset: 1344)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !827, file: !158, line: 808, baseType: !67, size: 32, offset: 1376)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !827, file: !158, line: 823, baseType: !309, size: 320, offset: 1408)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !827, file: !158, line: 825, baseType: !105, size: 128, offset: 1728)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !827, file: !158, line: 845, baseType: !30, size: 32, offset: 1856)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !827, file: !158, line: 849, baseType: !47, size: 64, offset: 1920)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !827, file: !158, line: 850, baseType: !47, size: 64, offset: 1984)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !827, file: !158, line: 852, baseType: !47, size: 64, offset: 2048)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !827, file: !158, line: 853, baseType: !47, size: 64, offset: 2112)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !827, file: !158, line: 854, baseType: !239, size: 64, offset: 2176)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !827, file: !158, line: 855, baseType: !47, size: 64, offset: 2240)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !827, file: !158, line: 856, baseType: !47, size: 64, offset: 2304)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !827, file: !158, line: 857, baseType: !47, size: 64, offset: 2368)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !827, file: !158, line: 858, baseType: !47, size: 64, offset: 2432)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !827, file: !158, line: 865, baseType: !697, size: 32, offset: 2496)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !827, file: !158, line: 867, baseType: !67, size: 32, offset: 2528)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !827, file: !158, line: 869, baseType: !47, size: 64, offset: 2560)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !827, file: !158, line: 869, baseType: !47, size: 64, offset: 2624)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !827, file: !158, line: 869, baseType: !47, size: 64, offset: 2688)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !827, file: !158, line: 869, baseType: !47, size: 64, offset: 2752)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !827, file: !158, line: 870, baseType: !47, size: 64, offset: 2816)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !827, file: !158, line: 870, baseType: !47, size: 64, offset: 2880)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !827, file: !158, line: 870, baseType: !47, size: 64, offset: 2944)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !827, file: !158, line: 871, baseType: !47, size: 64, offset: 3008)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !827, file: !158, line: 871, baseType: !47, size: 64, offset: 3072)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !827, file: !158, line: 871, baseType: !47, size: 64, offset: 3136)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !827, file: !158, line: 871, baseType: !47, size: 64, offset: 3200)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !827, file: !158, line: 873, baseType: !2682, size: 3328, offset: 3264)
!2682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 3328, elements: !2683)
!2683 = !{!2684}
!2684 = !DISubrange(count: 52)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !827, file: !158, line: 875, baseType: !2686, size: 1280, offset: 6592)
!2686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 1280, elements: !404)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !827, file: !158, line: 877, baseType: !2688, size: 64, offset: 7872)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !158, line: 877, flags: DIFlagFwdDecl)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !827, file: !158, line: 880, baseType: !2691, size: 1088, offset: 7936)
!2691 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2692, line: 72, baseType: !2693)
!2692 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2692, line: 23, size: 1088, elements: !2694)
!2694 = !{!2695, !2696, !2697, !2698, !2699, !2702, !2703, !2704, !2705, !2709, !2710, !2711}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2693, file: !2692, line: 28, baseType: !273, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2693, file: !2692, line: 38, baseType: !239, size: 64, offset: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2693, file: !2692, line: 40, baseType: !47, size: 64, offset: 128)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2693, file: !2692, line: 43, baseType: !309, size: 320, offset: 192)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2693, file: !2692, line: 44, baseType: !2700, size: 64, offset: 512)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2692, line: 44, flags: DIFlagFwdDecl)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2693, file: !2692, line: 48, baseType: !47, size: 64, offset: 576)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2693, file: !2692, line: 59, baseType: !865, size: 256, offset: 640)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2693, file: !2692, line: 60, baseType: !28, size: 64, offset: 896)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2693, file: !2692, line: 61, baseType: !2706, size: 64, offset: 960)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2708)
!2708 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2692, line: 61, flags: DIFlagFwdDecl)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2693, file: !2692, line: 63, baseType: !57, size: 32, offset: 1024)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2693, file: !2692, line: 69, baseType: !101, size: 16, offset: 1056)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2693, file: !2692, line: 70, baseType: !2712, size: 16, offset: 1072)
!2712 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !92, line: 18, baseType: !2713)
!2713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !94, line: 23, baseType: !344)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !827, file: !158, line: 882, baseType: !47, size: 64, offset: 9024)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !827, file: !158, line: 885, baseType: !67, size: 32, offset: 9088)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !827, file: !158, line: 886, baseType: !2717, size: 64, offset: 9152)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !158, line: 732, flags: DIFlagFwdDecl)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !827, file: !158, line: 901, baseType: !475, size: 64, offset: 9216)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !827, file: !158, line: 904, baseType: !851, size: 64, offset: 9280)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !827, file: !158, line: 906, baseType: !2722, size: 64, offset: 9344)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !158, line: 906, flags: DIFlagFwdDecl)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !827, file: !158, line: 930, baseType: !57, size: 32, offset: 9408)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !827, file: !158, line: 933, baseType: !57, size: 32, offset: 9440)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !827, file: !158, line: 935, baseType: !2727, size: 64, offset: 9472)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !187, line: 103, size: 64, elements: !2728)
!2728 = !{!2729}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2727, file: !187, line: 104, baseType: !2730, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !187, line: 101, flags: DIFlagFwdDecl)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !827, file: !158, line: 940, baseType: !237, size: 64, offset: 9536)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !827, file: !158, line: 942, baseType: !1881, size: 256, offset: 9600)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !824, file: !158, line: 986, baseType: !2735, offset: 10240)
!2735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, elements: !923)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !526, file: !527, line: 882, baseType: !823, size: 64, offset: 9792)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !526, file: !527, line: 884, baseType: !30, size: 32, offset: 9856)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !526, file: !527, line: 885, baseType: !30, size: 32, offset: 9888)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !526, file: !527, line: 886, baseType: !30, size: 32, offset: 9920)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !526, file: !527, line: 888, baseType: !30, size: 32, offset: 9952)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !526, file: !527, line: 890, baseType: !47, size: 64, offset: 9984)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !526, file: !527, line: 893, baseType: !7, size: 32, offset: 10048)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !526, file: !527, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !526, file: !527, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !526, file: !527, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !526, file: !527, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !526, file: !527, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !526, file: !527, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !526, file: !527, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !526, file: !527, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !526, file: !527, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !526, file: !527, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !526, file: !527, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !526, file: !527, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !526, file: !527, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !526, file: !527, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !526, file: !527, line: 969, baseType: !47, size: 64, offset: 10176)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !526, file: !527, line: 971, baseType: !2759, size: 448, offset: 10240)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !181, line: 25, size: 448, elements: !2760)
!2760 = !{!2761, !2762, !2767}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2759, file: !181, line: 26, baseType: !47, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2759, file: !181, line: 27, baseType: !2763, size: 64, offset: 64)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!1098, !2766}
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, scope: !2759, file: !181, line: 28, baseType: !2768, size: 320, offset: 128)
!2768 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2759, file: !181, line: 28, size: 320, elements: !2769)
!2769 = !{!2770, !2780, !2805}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2768, file: !181, line: 37, baseType: !2771, size: 320)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2768, file: !181, line: 30, size: 320, elements: !2772)
!2772 = !{!2773, !2775, !2776, !2777, !2778, !2779}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2771, file: !181, line: 31, baseType: !2774, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2771, file: !181, line: 32, baseType: !339, size: 32, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2771, file: !181, line: 33, baseType: !339, size: 32, offset: 96)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2771, file: !181, line: 34, baseType: !339, size: 32, offset: 128)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2771, file: !181, line: 35, baseType: !273, size: 64, offset: 192)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2771, file: !181, line: 36, baseType: !2774, size: 64, offset: 256)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2768, file: !181, line: 47, baseType: !2781, size: 192)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2768, file: !181, line: 39, size: 192, elements: !2782)
!2782 = !{!2783, !2784, !2785, !2804}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2781, file: !181, line: 40, baseType: !689, size: 32)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2781, file: !181, line: 41, baseType: !180, size: 32, offset: 32)
!2785 = !DIDerivedType(tag: DW_TAG_member, scope: !2781, file: !181, line: 42, baseType: !2786, size: 64, offset: 64)
!2786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2781, file: !181, line: 42, size: 64, elements: !2787)
!2787 = !{!2788, !2796}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2786, file: !181, line: 43, baseType: !2789, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2791, line: 7, size: 128, elements: !2792)
!2791 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2792 = !{!2793, !2795}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2790, file: !2791, line: 8, baseType: !2794, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !45, line: 93, baseType: !51)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2790, file: !2791, line: 9, baseType: !51, size: 64, offset: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2786, file: !181, line: 44, baseType: !2797, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2799, line: 7, size: 64, elements: !2800)
!2799 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2800 = !{!2801, !2803}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2798, file: !2799, line: 8, baseType: !2802, size: 32)
!2802 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2799, line: 5, baseType: !294)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2798, file: !2799, line: 9, baseType: !294, size: 32, offset: 32)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2781, file: !181, line: 46, baseType: !273, size: 64, offset: 128)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2768, file: !181, line: 55, baseType: !2806, size: 256)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2768, file: !181, line: 49, size: 256, elements: !2807)
!2807 = !{!2808, !2811, !2812, !2813, !2814}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2806, file: !181, line: 50, baseType: !2809, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !181, line: 14, flags: DIFlagFwdDecl)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2806, file: !181, line: 51, baseType: !30, size: 32, offset: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2806, file: !181, line: 52, baseType: !30, size: 32, offset: 96)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2806, file: !181, line: 53, baseType: !47, size: 64, offset: 128)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2806, file: !181, line: 54, baseType: !47, size: 64, offset: 192)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !526, file: !527, line: 973, baseType: !2816, size: 32, offset: 10688)
!2816 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !33, line: 27, baseType: !2817)
!2817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !45, line: 28, baseType: !30)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !526, file: !527, line: 974, baseType: !2816, size: 32, offset: 10720)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !526, file: !527, line: 978, baseType: !47, size: 64, offset: 10752)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !526, file: !527, line: 987, baseType: !525, size: 64, offset: 10816)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !526, file: !527, line: 990, baseType: !525, size: 64, offset: 10880)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !526, file: !527, line: 995, baseType: !105, size: 128, offset: 10944)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !526, file: !527, line: 996, baseType: !105, size: 128, offset: 11072)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !526, file: !527, line: 997, baseType: !525, size: 64, offset: 11200)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !526, file: !527, line: 1005, baseType: !105, size: 128, offset: 11264)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !526, file: !527, line: 1006, baseType: !105, size: 128, offset: 11392)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !526, file: !527, line: 1009, baseType: !901, size: 64, offset: 11520)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !526, file: !527, line: 1010, baseType: !2829, size: 512, offset: 11584)
!2829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 512, elements: !404)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !526, file: !527, line: 1011, baseType: !105, size: 128, offset: 12096)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !526, file: !527, line: 1012, baseType: !105, size: 128, offset: 12224)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !526, file: !527, line: 1014, baseType: !2833, size: 64, offset: 12352)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !526, file: !527, line: 1017, baseType: !1407, size: 64, offset: 12416)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !526, file: !527, line: 1020, baseType: !1407, size: 64, offset: 12480)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !526, file: !527, line: 1023, baseType: !28, size: 64, offset: 12544)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !526, file: !527, line: 1025, baseType: !273, size: 64, offset: 12608)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !526, file: !527, line: 1026, baseType: !273, size: 64, offset: 12672)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !526, file: !527, line: 1031, baseType: !273, size: 64, offset: 12736)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !526, file: !527, line: 1032, baseType: !2841, size: 192, offset: 12800)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !527, line: 324, size: 192, elements: !2842)
!2842 = !{!2843, !2844, !2845}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2841, file: !527, line: 326, baseType: !273, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2841, file: !527, line: 327, baseType: !273, size: 64, offset: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2841, file: !527, line: 328, baseType: !320, size: 32, offset: 128)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !526, file: !527, line: 1041, baseType: !47, size: 64, offset: 12992)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !526, file: !527, line: 1042, baseType: !47, size: 64, offset: 13056)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !526, file: !527, line: 1045, baseType: !273, size: 64, offset: 13120)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !526, file: !527, line: 1048, baseType: !273, size: 64, offset: 13184)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !526, file: !527, line: 1051, baseType: !47, size: 64, offset: 13248)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !526, file: !527, line: 1052, baseType: !47, size: 64, offset: 13312)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !526, file: !527, line: 1055, baseType: !2853, size: 640, offset: 13376)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2854, line: 132, size: 640, elements: !2855)
!2854 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2855 = !{!2856, !2862, !2863}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2853, file: !2854, line: 133, baseType: !2857, size: 576)
!2857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2858, size: 576, elements: !897)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2854, line: 117, size: 192, elements: !2859)
!2859 = !{!2860, !2861}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2858, file: !2854, line: 118, baseType: !273, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2858, file: !2854, line: 119, baseType: !703, size: 128, offset: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2853, file: !2854, line: 134, baseType: !7, size: 32, offset: 576)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2853, file: !2854, line: 135, baseType: !7, size: 32, offset: 608)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !526, file: !527, line: 1058, baseType: !2865, size: 448, offset: 14016)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2854, line: 144, size: 448, elements: !2866)
!2866 = !{!2867, !2868, !2869}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2865, file: !2854, line: 145, baseType: !373, size: 128, align: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2865, file: !2854, line: 146, baseType: !865, size: 256, offset: 128)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2865, file: !2854, line: 147, baseType: !7, size: 32, offset: 384)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !526, file: !527, line: 1064, baseType: !231, size: 64, offset: 14464)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !526, file: !527, line: 1067, baseType: !231, size: 64, offset: 14528)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !526, file: !527, line: 1070, baseType: !231, size: 64, offset: 14592)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !526, file: !527, line: 1074, baseType: !282, size: 64, offset: 14656)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !526, file: !527, line: 1084, baseType: !2875, size: 128, offset: 14720)
!2875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 128, elements: !1772)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !526, file: !527, line: 1086, baseType: !2877, size: 64, offset: 14848)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !527, line: 55, flags: DIFlagFwdDecl)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !526, file: !527, line: 1089, baseType: !2880, size: 64, offset: 14912)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2881, line: 12, size: 64, elements: !2882)
!2881 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2882 = !{!2883}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2880, file: !2881, line: 13, baseType: !2884, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2881, line: 8, flags: DIFlagFwdDecl)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !526, file: !527, line: 1090, baseType: !2887, size: 128, offset: 14976)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2888, line: 13, size: 128, elements: !2889)
!2888 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2889 = !{!2890}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2887, file: !2888, line: 14, baseType: !105, size: 128)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !526, file: !527, line: 1097, baseType: !2892, size: 64, offset: 15104)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !527, line: 50, flags: DIFlagFwdDecl)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !526, file: !527, line: 1100, baseType: !2895, size: 64, offset: 15168)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !527, line: 1100, flags: DIFlagFwdDecl)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !526, file: !527, line: 1103, baseType: !2898, size: 64, offset: 15232)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !527, line: 53, flags: DIFlagFwdDecl)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !526, file: !527, line: 1107, baseType: !2901, size: 64, offset: 15296)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2903, line: 31, size: 576, elements: !2904)
!2903 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2904 = !{!2905, !2906, !2909, !2912, !2915, !2916, !2917, !2920, !2921}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2902, file: !2903, line: 32, baseType: !287, size: 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2902, file: !2903, line: 33, baseType: !2907, size: 64, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2903, line: 9, flags: DIFlagFwdDecl)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2902, file: !2903, line: 34, baseType: !2910, size: 64, offset: 128)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2903, line: 10, flags: DIFlagFwdDecl)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2902, file: !2903, line: 35, baseType: !2913, size: 64, offset: 192)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2903, line: 8, flags: DIFlagFwdDecl)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2902, file: !2903, line: 36, baseType: !921, size: 64, offset: 256)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2902, file: !2903, line: 37, baseType: !1269, size: 64, offset: 320)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2902, file: !2903, line: 38, baseType: !2918, size: 64, offset: 384)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2903, line: 38, flags: DIFlagFwdDecl)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2902, file: !2903, line: 39, baseType: !2918, size: 64, offset: 448)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2902, file: !2903, line: 40, baseType: !2922, size: 64, offset: 512)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2924, line: 771, size: 384, elements: !2925)
!2924 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!2925 = !{!2926, !2927, !2928, !2942}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2923, file: !2924, line: 772, baseType: !507, size: 192)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2923, file: !2924, line: 773, baseType: !475, size: 64, offset: 192)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2923, file: !2924, line: 774, baseType: !2929, size: 64, offset: 256)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !194, line: 107, size: 1152, elements: !2931)
!2931 = !{!2932, !2933, !2934, !2935, !2936, !2940}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2930, file: !194, line: 108, baseType: !455, size: 128)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2930, file: !194, line: 109, baseType: !475, size: 64, offset: 128)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2930, file: !194, line: 110, baseType: !246, size: 32, offset: 192)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2930, file: !194, line: 111, baseType: !57, size: 32, offset: 224)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !2930, file: !194, line: 112, baseType: !2937, size: 640, offset: 256)
!2937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 640, elements: !2938)
!2938 = !{!2939}
!2939 = !DISubrange(count: 10)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !2930, file: !194, line: 113, baseType: !2941, size: 256, offset: 896)
!2941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 256, elements: !404)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !2923, file: !2924, line: 775, baseType: !2943, size: 64, offset: 320)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2945, line: 209, size: 4736, elements: !2946)
!2945 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!2946 = !{!2947, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !2944, file: !2945, line: 215, baseType: !2948, size: 896)
!2948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2949, size: 896, elements: !3111)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !2945, line: 152, size: 1600, elements: !2951)
!2951 = !{!2952, !3162, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3298}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !2950, file: !2945, line: 154, baseType: !2953, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !2945, line: 389, size: 7872, elements: !2955)
!2955 = !{!2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !3060, !3077, !3078, !3082, !3083, !3084, !3085, !3086, !3087, !3108, !3109, !3113, !3114, !3115, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3149, !3152, !3153, !3160}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2954, file: !2945, line: 391, baseType: !2950, size: 1600)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2954, file: !2945, line: 393, baseType: !47, size: 64, offset: 1600)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2954, file: !2945, line: 401, baseType: !30, size: 32, offset: 1664)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !2954, file: !2945, line: 404, baseType: !30, size: 32, offset: 1696)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !2954, file: !2945, line: 417, baseType: !30, size: 32, offset: 1728)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !2954, file: !2945, line: 418, baseType: !30, size: 32, offset: 1760)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !2954, file: !2945, line: 419, baseType: !30, size: 32, offset: 1792)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !2954, file: !2945, line: 432, baseType: !30, size: 32, offset: 1824)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !2954, file: !2945, line: 433, baseType: !30, size: 32, offset: 1856)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !2954, file: !2945, line: 434, baseType: !30, size: 32, offset: 1888)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !2954, file: !2945, line: 436, baseType: !30, size: 32, offset: 1920)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !2954, file: !2945, line: 439, baseType: !7, size: 32, offset: 1952)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2954, file: !2945, line: 441, baseType: !2969, size: 64, offset: 1984)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2971, line: 190, size: 1152, elements: !2972)
!2971 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2972 = !{!2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !3052, !3053, !3054, !3055, !3056, !3059}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2970, file: !2971, line: 191, baseType: !57, size: 32)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2970, file: !2971, line: 192, baseType: !57, size: 32, offset: 32)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2970, file: !2971, line: 202, baseType: !2969, size: 64, offset: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2970, file: !2971, line: 203, baseType: !24, size: 64, offset: 128)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2970, file: !2971, line: 205, baseType: !301, size: 192, align: 64, offset: 192)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2970, file: !2971, line: 207, baseType: !1329, size: 64, offset: 384)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2970, file: !2971, line: 208, baseType: !7, size: 32, offset: 448)
!2980 = !DIDerivedType(tag: DW_TAG_member, scope: !2970, file: !2971, line: 209, baseType: !2981, size: 256, offset: 512)
!2981 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2970, file: !2971, line: 209, size: 256, elements: !2982)
!2982 = !{!2983, !2992, !2996}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2981, file: !2971, line: 210, baseType: !2984, size: 256)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2971, line: 153, size: 256, elements: !2985)
!2985 = !{!2986, !2987, !2988, !2991}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2984, file: !2971, line: 154, baseType: !47, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2984, file: !2971, line: 156, baseType: !709, size: 64, offset: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2984, file: !2971, line: 162, baseType: !2989, size: 64, offset: 128)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2971, line: 162, flags: DIFlagFwdDecl)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2984, file: !2971, line: 167, baseType: !47, size: 64, offset: 192)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2981, file: !2971, line: 211, baseType: !2993, size: 64)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2971, line: 170, size: 64, elements: !2994)
!2994 = !{!2995}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2993, file: !2971, line: 171, baseType: !2969, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2981, file: !2971, line: 212, baseType: !2997, size: 256)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2971, line: 174, size: 256, elements: !2998)
!2998 = !{!2999, !3047, !3050, !3051}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2997, file: !2971, line: 175, baseType: !3000, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3002)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2971, line: 271, size: 768, elements: !3003)
!3003 = !{!3004, !3024, !3028, !3029, !3030, !3031, !3032, !3036, !3037, !3038, !3039, !3043}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3002, file: !2971, line: 276, baseType: !3005, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!30, !3008}
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2971, line: 251, size: 1216, elements: !3010)
!3010 = !{!3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3009, file: !2971, line: 253, baseType: !2969, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3009, file: !2971, line: 254, baseType: !851, size: 64, offset: 64)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3009, file: !2971, line: 255, baseType: !1413, size: 64, offset: 128)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3009, file: !2971, line: 256, baseType: !28, size: 64, offset: 192)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3009, file: !2971, line: 259, baseType: !865, size: 256, offset: 256)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3009, file: !2971, line: 260, baseType: !865, size: 256, offset: 512)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3009, file: !2971, line: 261, baseType: !30, size: 32, offset: 768)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3009, file: !2971, line: 262, baseType: !105, size: 128, offset: 832)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3009, file: !2971, line: 263, baseType: !394, size: 64, offset: 960)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3009, file: !2971, line: 265, baseType: !43, size: 64, offset: 1024)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3009, file: !2971, line: 266, baseType: !383, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3009, file: !2971, line: 267, baseType: !383, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3009, file: !2971, line: 268, baseType: !2083, size: 64, offset: 1152)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3002, file: !2971, line: 277, baseType: !3025, size: 64, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{null, !3008}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3002, file: !2971, line: 290, baseType: !1443, size: 64, offset: 128)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3002, file: !2971, line: 292, baseType: !1431, size: 64, offset: 192)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3002, file: !2971, line: 293, baseType: !1439, size: 64, offset: 256)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3002, file: !2971, line: 294, baseType: !1435, size: 64, offset: 320)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3002, file: !2971, line: 296, baseType: !3033, size: 64, offset: 384)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!1137, !3008, !394, !43, !49}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3002, file: !2971, line: 306, baseType: !43, size: 64, offset: 448)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3002, file: !2971, line: 313, baseType: !383, size: 8, offset: 512)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3002, file: !2971, line: 314, baseType: !3033, size: 64, offset: 576)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3002, file: !2971, line: 317, baseType: !3040, size: 64, offset: 640)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!2479, !3008, !2481}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3002, file: !2971, line: 320, baseType: !3044, size: 64, offset: 704)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!30, !3008, !2038}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2997, file: !2971, line: 176, baseType: !3048, size: 64, offset: 64)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2971, line: 35, flags: DIFlagFwdDecl)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2997, file: !2971, line: 177, baseType: !49, size: 64, offset: 128)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2997, file: !2971, line: 178, baseType: !2969, size: 64, offset: 192)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2970, file: !2971, line: 215, baseType: !28, size: 64, offset: 768)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2970, file: !2971, line: 221, baseType: !273, size: 64, offset: 832)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2970, file: !2971, line: 223, baseType: !34, size: 16, offset: 896)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2970, file: !2971, line: 224, baseType: !32, size: 16, offset: 912)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2970, file: !2971, line: 225, baseType: !3057, size: 64, offset: 960)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2971, line: 36, flags: DIFlagFwdDecl)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2970, file: !2971, line: 227, baseType: !373, size: 128, align: 64, offset: 1024)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !2954, file: !2945, line: 442, baseType: !3061, size: 448, offset: 2048)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !2945, line: 138, size: 448, elements: !3062)
!3062 = !{!3063, !3064, !3065}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3061, file: !2945, line: 140, baseType: !2969, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3061, file: !2945, line: 141, baseType: !47, size: 64, offset: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3061, file: !2945, line: 142, baseType: !3066, size: 320, offset: 128)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3067, line: 11, size: 320, elements: !3068)
!3067 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!3068 = !{!3069, !3070, !3071, !3076}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3066, file: !3067, line: 16, baseType: !455, size: 128)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3066, file: !3067, line: 17, baseType: !47, size: 64, offset: 128)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3066, file: !3067, line: 18, baseType: !3072, size: 64, offset: 192)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{null, !3075}
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3066, file: !3067, line: 19, baseType: !339, size: 32, offset: 256)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !2954, file: !2945, line: 443, baseType: !3061, size: 448, offset: 2496)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !2954, file: !2945, line: 446, baseType: !3079, offset: 2944)
!3079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3061, elements: !3080)
!3080 = !{!3081}
!3081 = !DISubrange(count: 0)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !2954, file: !2945, line: 455, baseType: !101, size: 16, offset: 2944)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !2954, file: !2945, line: 456, baseType: !101, size: 16, offset: 2960)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !2954, file: !2945, line: 457, baseType: !101, size: 16, offset: 2976)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !2954, file: !2945, line: 458, baseType: !101, size: 16, offset: 2992)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !2954, file: !2945, line: 461, baseType: !2948, size: 896, offset: 3008)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2954, file: !2945, line: 463, baseType: !3088, size: 64, offset: 3904)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !2945, line: 537, size: 41664, elements: !3090)
!3090 = !{!3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3104}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3089, file: !2945, line: 538, baseType: !2989, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3089, file: !2945, line: 541, baseType: !7, size: 32, offset: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3089, file: !2945, line: 544, baseType: !30, size: 32, offset: 96)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3089, file: !2945, line: 547, baseType: !105, size: 128, offset: 128)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3089, file: !2945, line: 548, baseType: !373, size: 128, align: 64, offset: 256)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3089, file: !2945, line: 555, baseType: !2954, size: 7872, offset: 384)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3089, file: !2945, line: 558, baseType: !2953, size: 64, offset: 8256)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3089, file: !2945, line: 561, baseType: !57, size: 32, offset: 8320)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3089, file: !2945, line: 564, baseType: !7, size: 32, offset: 8352)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3089, file: !2945, line: 567, baseType: !3101, size: 32768, offset: 8384)
!3101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32768, elements: !3102)
!3102 = !{!3103}
!3103 = !DISubrange(count: 4096)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3089, file: !2945, line: 570, baseType: !3105, size: 512, offset: 41152)
!3105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 512, elements: !3106)
!3106 = !{!3107}
!3107 = !DISubrange(count: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !2954, file: !2945, line: 469, baseType: !105, size: 128, offset: 3968)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !2954, file: !2945, line: 478, baseType: !3110, size: 1792, offset: 4096)
!3110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 1792, elements: !3111)
!3111 = !{!3112}
!3112 = !DISubrange(count: 14)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !2954, file: !2945, line: 487, baseType: !2953, size: 64, offset: 5888)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !2954, file: !2945, line: 488, baseType: !2953, size: 64, offset: 5952)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !2954, file: !2945, line: 491, baseType: !3116, size: 64, offset: 6016)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !2945, line: 327, size: 896, elements: !3118)
!3118 = !{!3119, !3122, !3132, !3133, !3134, !3135, !3136}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3117, file: !2945, line: 332, baseType: !3120)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3121, line: 64, elements: !844)
!3121 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3117, file: !2945, line: 333, baseType: !3123, size: 192)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !2945, line: 299, size: 192, elements: !3124)
!3124 = !{!3125}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3123, file: !2945, line: 300, baseType: !3126, size: 192)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3127, line: 17, size: 192, elements: !3128)
!3127 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3128 = !{!3129, !3130, !3131}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3126, file: !3127, line: 18, baseType: !273, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3126, file: !3127, line: 19, baseType: !273, size: 64, offset: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3126, file: !3127, line: 20, baseType: !275, size: 64, offset: 128)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3117, file: !2945, line: 339, baseType: !3123, size: 192, offset: 192)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3117, file: !2945, line: 347, baseType: !3123, size: 192, offset: 384)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3117, file: !2945, line: 353, baseType: !3123, size: 192, offset: 576)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3117, file: !2945, line: 366, baseType: !2953, size: 64, offset: 768)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3117, file: !2945, line: 367, baseType: !2953, size: 64, offset: 832)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !2954, file: !2945, line: 492, baseType: !105, size: 128, offset: 6080)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !2954, file: !2945, line: 495, baseType: !3123, size: 192, offset: 6208)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !2954, file: !2945, line: 496, baseType: !3123, size: 192, offset: 6400)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2954, file: !2945, line: 497, baseType: !2841, size: 192, offset: 6592)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !2954, file: !2945, line: 503, baseType: !105, size: 128, offset: 6784)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !2954, file: !2945, line: 504, baseType: !865, size: 256, offset: 6912)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !2954, file: !2945, line: 507, baseType: !62, size: 192, offset: 7168)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !2954, file: !2945, line: 510, baseType: !1881, size: 256, offset: 7360)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !2954, file: !2945, line: 513, baseType: !3146, size: 64, offset: 7616)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3148, line: 214, elements: !844)
!3148 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !2954, file: !2945, line: 516, baseType: !3150, offset: 7680)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3151, line: 76, elements: !844)
!3151 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !2954, file: !2945, line: 519, baseType: !57, size: 32, offset: 7680)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !2954, file: !2945, line: 522, baseType: !3154, size: 128, offset: 7712)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !2945, line: 370, size: 128, elements: !3155)
!3155 = !{!3156, !3157, !3158, !3159}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3154, file: !2945, line: 372, baseType: !383, size: 8)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3154, file: !2945, line: 375, baseType: !30, size: 32, offset: 32)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3154, file: !2945, line: 380, baseType: !30, size: 32, offset: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3154, file: !2945, line: 386, baseType: !30, size: 32, offset: 96)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !2954, file: !2945, line: 529, baseType: !3161, offset: 7872)
!3161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2953, elements: !923)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2950, file: !2945, line: 157, baseType: !3163, size: 64, offset: 64)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !2945, line: 669, size: 1984, elements: !3165)
!3165 = !{!3166, !3170, !3174, !3178, !3179, !3180, !3181, !3185, !3189, !3190, !3205, !3209, !3210, !3214, !3218, !3222, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3243, !3244, !3281, !3282}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3164, file: !2945, line: 670, baseType: !3167, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!2949, !2949}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3164, file: !2945, line: 671, baseType: !3171, size: 64, offset: 64)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!30, !2949}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3164, file: !2945, line: 672, baseType: !3175, size: 64, offset: 128)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{null, !2949}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3164, file: !2945, line: 673, baseType: !3175, size: 64, offset: 192)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3164, file: !2945, line: 674, baseType: !3175, size: 64, offset: 256)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3164, file: !2945, line: 675, baseType: !3175, size: 64, offset: 320)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3164, file: !2945, line: 676, baseType: !3182, size: 64, offset: 384)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{null, !2949, !30}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3164, file: !2945, line: 677, baseType: !3186, size: 64, offset: 448)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!30, !1413, !2949}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3164, file: !2945, line: 679, baseType: !3186, size: 64, offset: 512)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3164, file: !2945, line: 682, baseType: !3191, size: 64, offset: 576)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!30, !3194}
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3196, line: 107, size: 512, elements: !3197)
!3196 = !DIFile(filename: "kernel/cgroup/cgroup-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5755a84507a6826ba0951aadf2c370ce")
!3197 = !{!3198, !3199, !3200, !3201, !3202, !3203, !3204}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "src_csets", scope: !3195, file: !3196, line: 109, baseType: !105, size: 128)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "dst_csets", scope: !3195, file: !3196, line: 110, baseType: !105, size: 128, offset: 128)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3195, file: !3196, line: 113, baseType: !30, size: 32, offset: 256)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "ssid", scope: !3195, file: !3196, line: 116, baseType: !30, size: 32, offset: 288)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "csets", scope: !3195, file: !3196, line: 129, baseType: !108, size: 64, offset: 320)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "cur_cset", scope: !3195, file: !3196, line: 130, baseType: !2943, size: 64, offset: 384)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "cur_task", scope: !3195, file: !3196, line: 131, baseType: !525, size: 64, offset: 448)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3164, file: !2945, line: 683, baseType: !3206, size: 64, offset: 640)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{null, !3194}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3164, file: !2945, line: 684, baseType: !3206, size: 64, offset: 704)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3164, file: !2945, line: 685, baseType: !3211, size: 64, offset: 768)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{null}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3164, file: !2945, line: 686, baseType: !3215, size: 64, offset: 832)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!30, !525, !2943}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3164, file: !2945, line: 688, baseType: !3219, size: 64, offset: 896)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{null, !525, !2943}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3164, file: !2945, line: 689, baseType: !3223, size: 64, offset: 960)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{null, !525}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3164, file: !2945, line: 690, baseType: !3223, size: 64, offset: 1024)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3164, file: !2945, line: 691, baseType: !3223, size: 64, offset: 1088)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3164, file: !2945, line: 692, baseType: !3175, size: 64, offset: 1152)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3164, file: !2945, line: 694, baseType: !383, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3164, file: !2945, line: 707, baseType: !383, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3164, file: !2945, line: 719, baseType: !383, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3164, file: !2945, line: 722, baseType: !30, size: 32, offset: 1248)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3164, file: !2945, line: 723, baseType: !24, size: 64, offset: 1280)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3164, file: !2945, line: 726, baseType: !24, size: 64, offset: 1344)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3164, file: !2945, line: 729, baseType: !3088, size: 64, offset: 1408)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3164, file: !2945, line: 732, baseType: !3237, size: 192, offset: 1472)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3238, line: 19, size: 192, elements: !3239)
!3238 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!3239 = !{!3240, !3241, !3242}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3237, file: !3238, line: 20, baseType: !1184, size: 128)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3237, file: !3238, line: 21, baseType: !7, size: 32, offset: 128)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3237, file: !3238, line: 22, baseType: !7, size: 32, offset: 160)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3164, file: !2945, line: 738, baseType: !105, size: 128, offset: 1664)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3164, file: !2945, line: 744, baseType: !3245, size: 64, offset: 1792)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !2945, line: 580, size: 1728, elements: !3247)
!3247 = !{!3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3257, !3258, !3259, !3263, !3267, !3268, !3269, !3270, !3271, !3275, !3279, !3280}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3246, file: !2945, line: 586, baseType: !3105, size: 512)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3246, file: !2945, line: 587, baseType: !47, size: 64, offset: 512)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !3246, file: !2945, line: 593, baseType: !43, size: 64, offset: 576)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3246, file: !2945, line: 596, baseType: !7, size: 32, offset: 640)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !3246, file: !2945, line: 604, baseType: !7, size: 32, offset: 672)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3246, file: !2945, line: 610, baseType: !3163, size: 64, offset: 704)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3246, file: !2945, line: 611, baseType: !105, size: 128, offset: 768)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !3246, file: !2945, line: 612, baseType: !3256, size: 64, offset: 896)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3246, file: !2945, line: 614, baseType: !3005, size: 64, offset: 960)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3246, file: !2945, line: 615, baseType: !3025, size: 64, offset: 1024)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !3246, file: !2945, line: 621, baseType: !3260, size: 64, offset: 1088)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!273, !2949, !3245}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !3246, file: !2945, line: 625, baseType: !3264, size: 64, offset: 1152)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!243, !2949, !3245}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3246, file: !2945, line: 628, baseType: !1443, size: 64, offset: 1216)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3246, file: !2945, line: 631, baseType: !1431, size: 64, offset: 1280)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3246, file: !2945, line: 632, baseType: !1439, size: 64, offset: 1344)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3246, file: !2945, line: 633, baseType: !1435, size: 64, offset: 1408)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !3246, file: !2945, line: 640, baseType: !3272, size: 64, offset: 1472)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!30, !2949, !3245, !273}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !3246, file: !2945, line: 645, baseType: !3276, size: 64, offset: 1536)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!30, !2949, !3245, !243}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3246, file: !2945, line: 654, baseType: !3033, size: 64, offset: 1600)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3246, file: !2945, line: 657, baseType: !3040, size: 64, offset: 1664)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3164, file: !2945, line: 745, baseType: !3245, size: 64, offset: 1856)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3164, file: !2945, line: 754, baseType: !7, size: 32, offset: 1920)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2950, file: !2945, line: 160, baseType: !1982, size: 128, offset: 128)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2950, file: !2945, line: 163, baseType: !105, size: 128, offset: 256)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2950, file: !2945, line: 164, baseType: !105, size: 128, offset: 384)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !2950, file: !2945, line: 167, baseType: !105, size: 128, offset: 512)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2950, file: !2945, line: 173, baseType: !30, size: 32, offset: 640)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2950, file: !2945, line: 175, baseType: !7, size: 32, offset: 672)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !2950, file: !2945, line: 183, baseType: !273, size: 64, offset: 704)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !2950, file: !2945, line: 189, baseType: !57, size: 32, offset: 768)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !2950, file: !2945, line: 192, baseType: !1881, size: 256, offset: 832)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !2950, file: !2945, line: 193, baseType: !3293, size: 448, offset: 1088)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1860, line: 120, size: 448, elements: !3294)
!3294 = !{!3295, !3296, !3297}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3293, file: !1860, line: 121, baseType: !1881, size: 256)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3293, file: !1860, line: 122, baseType: !373, size: 128, align: 64, offset: 256)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3293, file: !1860, line: 125, baseType: !1858, size: 64, offset: 384)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2950, file: !2945, line: 199, baseType: !2949, size: 64, offset: 1536)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2944, file: !2945, line: 218, baseType: !287, size: 32, offset: 896)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !2944, file: !2945, line: 226, baseType: !2943, size: 64, offset: 960)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !2944, file: !2945, line: 229, baseType: !2953, size: 64, offset: 1024)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2944, file: !2945, line: 232, baseType: !30, size: 32, offset: 1088)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2944, file: !2945, line: 241, baseType: !105, size: 128, offset: 1152)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !2944, file: !2945, line: 242, baseType: !105, size: 128, offset: 1280)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !2944, file: !2945, line: 243, baseType: !105, size: 128, offset: 1408)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !2944, file: !2945, line: 246, baseType: !105, size: 128, offset: 1536)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !2944, file: !2945, line: 255, baseType: !3110, size: 1792, offset: 1664)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !2944, file: !2945, line: 258, baseType: !105, size: 128, offset: 3456)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !2944, file: !2945, line: 259, baseType: !105, size: 128, offset: 3584)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !2944, file: !2945, line: 265, baseType: !455, size: 128, offset: 3712)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !2944, file: !2945, line: 271, baseType: !105, size: 128, offset: 3840)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !2944, file: !2945, line: 277, baseType: !105, size: 128, offset: 3968)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !2944, file: !2945, line: 278, baseType: !105, size: 128, offset: 4096)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !2944, file: !2945, line: 279, baseType: !105, size: 128, offset: 4224)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !2944, file: !2945, line: 288, baseType: !2953, size: 64, offset: 4352)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !2944, file: !2945, line: 289, baseType: !2953, size: 64, offset: 4416)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !2944, file: !2945, line: 290, baseType: !2943, size: 64, offset: 4480)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !2944, file: !2945, line: 293, baseType: !383, size: 8, offset: 4544)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2944, file: !2945, line: 296, baseType: !373, size: 128, align: 64, offset: 4608)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !526, file: !527, line: 1110, baseType: !3321, size: 64, offset: 15360)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3323, line: 93, size: 8768, elements: !3324)
!3323 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3324 = !{!3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3375, !3384, !3385, !3387, !3388, !3389, !3392, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3430, !3431, !3438, !3448, !3510, !3511, !3514, !3515, !3516, !3517, !3518, !3519}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3322, file: !3323, line: 94, baseType: !287, size: 32)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3322, file: !3323, line: 95, baseType: !57, size: 32, offset: 32)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3322, file: !3323, line: 96, baseType: !30, size: 32, offset: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3322, file: !3323, line: 97, baseType: !30, size: 32, offset: 96)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3322, file: !3323, line: 98, baseType: !105, size: 128, offset: 128)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3322, file: !3323, line: 100, baseType: !62, size: 192, offset: 256)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3322, file: !3323, line: 103, baseType: !525, size: 64, offset: 448)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3322, file: !3323, line: 106, baseType: !3333, size: 192, offset: 512)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3334, line: 32, size: 192, elements: !3335)
!3334 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!3335 = !{!3336, !3337}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3333, file: !3334, line: 33, baseType: !105, size: 128)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3333, file: !3334, line: 34, baseType: !3338, size: 64, offset: 128)
!3338 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3339, line: 25, baseType: !3340)
!3339 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3339, line: 23, size: 64, elements: !3341)
!3341 = !{!3342}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3340, file: !3339, line: 24, baseType: !774, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3322, file: !3323, line: 109, baseType: !909, size: 64, offset: 704)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3322, file: !3323, line: 112, baseType: !30, size: 32, offset: 768)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3322, file: !3323, line: 114, baseType: !30, size: 32, offset: 800)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3322, file: !3323, line: 115, baseType: !525, size: 64, offset: 832)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3322, file: !3323, line: 118, baseType: !30, size: 32, offset: 896)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3322, file: !3323, line: 119, baseType: !7, size: 32, offset: 928)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3322, file: !3323, line: 121, baseType: !3350, size: 64, offset: 960)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3323, line: 80, size: 448, elements: !3352)
!3352 = !{!3353, !3354, !3360}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3351, file: !3323, line: 81, baseType: !57, size: 32)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3351, file: !3323, line: 82, baseType: !3355, size: 128, offset: 64)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3323, line: 75, size: 128, elements: !3356)
!3356 = !{!3357, !3358}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3355, file: !3323, line: 76, baseType: !525, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3355, file: !3323, line: 77, baseType: !3359, size: 64, offset: 64)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3351, file: !3323, line: 83, baseType: !2003, size: 256, offset: 192)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3322, file: !3323, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3322, file: !3323, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3322, file: !3323, line: 138, baseType: !7, size: 32, offset: 1056)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3322, file: !3323, line: 139, baseType: !105, size: 128, offset: 1088)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3322, file: !3323, line: 142, baseType: !642, size: 512, offset: 1216)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3322, file: !3323, line: 143, baseType: !650, size: 64, offset: 1728)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3322, file: !3323, line: 150, baseType: !3368, size: 256, offset: 1792)
!3368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3369, size: 256, elements: !3373)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3323, line: 38, size: 128, elements: !3370)
!3370 = !{!3371, !3372}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3369, file: !3323, line: 39, baseType: !273, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3369, file: !3323, line: 40, baseType: !273, size: 64, offset: 64)
!3373 = !{!3374}
!3374 = !DISubrange(count: 2)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3322, file: !3323, line: 156, baseType: !3376, size: 192, offset: 2048)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3323, line: 66, size: 192, elements: !3377)
!3377 = !{!3378}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3376, file: !3323, line: 67, baseType: !3379, size: 192)
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3323, line: 47, size: 192, elements: !3380)
!3380 = !{!3381, !3382, !3383}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3379, file: !3323, line: 48, baseType: !239, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3379, file: !3323, line: 49, baseType: !239, size: 64, offset: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3379, file: !3323, line: 50, baseType: !239, size: 64, offset: 128)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3322, file: !3323, line: 160, baseType: !2853, size: 640, offset: 2240)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3322, file: !3323, line: 163, baseType: !3386, size: 256, offset: 2880)
!3386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !901, size: 256, elements: !404)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3322, file: !3323, line: 169, baseType: !901, size: 64, offset: 3136)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3322, file: !3323, line: 172, baseType: !30, size: 32, offset: 3200)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3322, file: !3323, line: 174, baseType: !3390, size: 64, offset: 3264)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3323, line: 174, flags: DIFlagFwdDecl)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3322, file: !3323, line: 185, baseType: !3393, size: 64, offset: 3328)
!3393 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !693, line: 860, baseType: !3394)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !693, line: 853, size: 64, elements: !3395)
!3395 = !{!3396, !3397}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3394, file: !693, line: 858, baseType: !955, size: 32)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3394, file: !693, line: 859, baseType: !67, size: 32, offset: 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3322, file: !3323, line: 186, baseType: !273, size: 64, offset: 3392)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3322, file: !3323, line: 186, baseType: !273, size: 64, offset: 3456)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3322, file: !3323, line: 186, baseType: !273, size: 64, offset: 3520)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3322, file: !3323, line: 186, baseType: !273, size: 64, offset: 3584)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3322, file: !3323, line: 187, baseType: !273, size: 64, offset: 3648)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3322, file: !3323, line: 188, baseType: !273, size: 64, offset: 3712)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3322, file: !3323, line: 189, baseType: !2841, size: 192, offset: 3776)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3322, file: !3323, line: 190, baseType: !47, size: 64, offset: 3968)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3322, file: !3323, line: 190, baseType: !47, size: 64, offset: 4032)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3322, file: !3323, line: 190, baseType: !47, size: 64, offset: 4096)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3322, file: !3323, line: 190, baseType: !47, size: 64, offset: 4160)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3322, file: !3323, line: 191, baseType: !47, size: 64, offset: 4224)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3322, file: !3323, line: 191, baseType: !47, size: 64, offset: 4288)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3322, file: !3323, line: 191, baseType: !47, size: 64, offset: 4352)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3322, file: !3323, line: 191, baseType: !47, size: 64, offset: 4416)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3322, file: !3323, line: 192, baseType: !47, size: 64, offset: 4480)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3322, file: !3323, line: 192, baseType: !47, size: 64, offset: 4544)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3322, file: !3323, line: 192, baseType: !47, size: 64, offset: 4608)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3322, file: !3323, line: 192, baseType: !47, size: 64, offset: 4672)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3322, file: !3323, line: 193, baseType: !47, size: 64, offset: 4736)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3322, file: !3323, line: 193, baseType: !47, size: 64, offset: 4800)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3322, file: !3323, line: 194, baseType: !3420, size: 448, offset: 4864)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3421, line: 12, size: 448, elements: !3422)
!3421 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3422 = !{!3423, !3424, !3425, !3426, !3427, !3428, !3429}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3420, file: !3421, line: 15, baseType: !273, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3420, file: !3421, line: 17, baseType: !273, size: 64, offset: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3420, file: !3421, line: 19, baseType: !273, size: 64, offset: 128)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3420, file: !3421, line: 21, baseType: !273, size: 64, offset: 192)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3420, file: !3421, line: 29, baseType: !273, size: 64, offset: 256)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3420, file: !3421, line: 35, baseType: !273, size: 64, offset: 320)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3420, file: !3421, line: 44, baseType: !273, size: 64, offset: 384)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3322, file: !3323, line: 202, baseType: !275, size: 64, offset: 5312)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3322, file: !3323, line: 213, baseType: !3432, size: 2048, offset: 5376)
!3432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3433, size: 2048, elements: !1772)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3434, line: 43, size: 128, elements: !3435)
!3434 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3435 = !{!3436, !3437}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3433, file: !3434, line: 44, baseType: !46, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3433, file: !3434, line: 45, baseType: !46, size: 64, offset: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3322, file: !3323, line: 216, baseType: !3439, size: 448, offset: 7424)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3323, line: 30, size: 448, elements: !3440)
!3440 = !{!3441, !3442, !3443, !3444, !3445, !3446, !3447}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3439, file: !3323, line: 31, baseType: !30, size: 32)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3439, file: !3323, line: 32, baseType: !1098, size: 64, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3439, file: !3323, line: 33, baseType: !47, size: 64, offset: 128)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3439, file: !3323, line: 34, baseType: !273, size: 64, offset: 192)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3439, file: !3323, line: 34, baseType: !273, size: 64, offset: 256)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3439, file: !3323, line: 35, baseType: !47, size: 64, offset: 320)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3439, file: !3323, line: 35, baseType: !47, size: 64, offset: 384)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3322, file: !3323, line: 219, baseType: !3449, size: 64, offset: 7872)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3451, line: 41, size: 3456, elements: !3452)
!3451 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!3452 = !{!3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3450, file: !3451, line: 47, baseType: !102, size: 16)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3450, file: !3451, line: 48, baseType: !340, size: 32, offset: 32)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3450, file: !3451, line: 54, baseType: !93, size: 8, offset: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !3450, file: !3451, line: 55, baseType: !93, size: 8, offset: 72)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !3450, file: !3451, line: 73, baseType: !274, size: 64, align: 64, offset: 128)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !3450, file: !3451, line: 74, baseType: !274, size: 64, offset: 192)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !3450, file: !3451, line: 81, baseType: !274, size: 64, offset: 256)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !3450, file: !3451, line: 82, baseType: !274, size: 64, offset: 320)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !3450, file: !3451, line: 85, baseType: !274, size: 64, offset: 384)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !3450, file: !3451, line: 86, baseType: !274, size: 64, offset: 448)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !3450, file: !3451, line: 94, baseType: !274, size: 64, offset: 512)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !3450, file: !3451, line: 102, baseType: !274, size: 64, offset: 576)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !3450, file: !3451, line: 107, baseType: !1762, size: 256, offset: 640)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !3450, file: !3451, line: 108, baseType: !93, size: 8, align: 64, offset: 896)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !3450, file: !3451, line: 110, baseType: !3468, size: 24, offset: 904)
!3468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 24, elements: !897)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !3450, file: !3451, line: 111, baseType: !340, size: 32, align: 64, offset: 960)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !3450, file: !3451, line: 113, baseType: !340, size: 32, offset: 992)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !3450, file: !3451, line: 114, baseType: !340, size: 32, offset: 1024)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !3450, file: !3451, line: 115, baseType: !340, size: 32, offset: 1056)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !3450, file: !3451, line: 117, baseType: !340, size: 32, offset: 1088)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !3450, file: !3451, line: 118, baseType: !274, size: 64, align: 64, offset: 1152)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3450, file: !3451, line: 120, baseType: !274, size: 64, offset: 1216)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3450, file: !3451, line: 121, baseType: !274, size: 64, offset: 1280)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3450, file: !3451, line: 122, baseType: !274, size: 64, offset: 1344)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3450, file: !3451, line: 123, baseType: !274, size: 64, offset: 1408)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !3450, file: !3451, line: 133, baseType: !274, size: 64, offset: 1472)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !3450, file: !3451, line: 137, baseType: !274, size: 64, offset: 1536)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !3450, file: !3451, line: 142, baseType: !274, size: 64, offset: 1600)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !3450, file: !3451, line: 143, baseType: !274, size: 64, offset: 1664)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !3450, file: !3451, line: 146, baseType: !274, size: 64, offset: 1728)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !3450, file: !3451, line: 147, baseType: !274, size: 64, offset: 1792)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !3450, file: !3451, line: 148, baseType: !274, size: 64, offset: 1856)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !3450, file: !3451, line: 149, baseType: !274, size: 64, offset: 1920)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3450, file: !3451, line: 154, baseType: !274, size: 64, offset: 1984)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3450, file: !3451, line: 155, baseType: !274, size: 64, offset: 2048)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3450, file: !3451, line: 156, baseType: !274, size: 64, offset: 2112)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3450, file: !3451, line: 158, baseType: !274, size: 64, offset: 2176)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3450, file: !3451, line: 159, baseType: !274, size: 64, offset: 2240)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !3450, file: !3451, line: 162, baseType: !274, size: 64, offset: 2304)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !3450, file: !3451, line: 163, baseType: !274, size: 64, offset: 2368)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !3450, file: !3451, line: 164, baseType: !274, size: 64, offset: 2432)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !3450, file: !3451, line: 167, baseType: !274, size: 64, offset: 2496)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !3450, file: !3451, line: 168, baseType: !274, size: 64, offset: 2560)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !3450, file: !3451, line: 171, baseType: !274, size: 64, offset: 2624)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !3450, file: !3451, line: 172, baseType: !274, size: 64, offset: 2688)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !3450, file: !3451, line: 175, baseType: !274, size: 64, offset: 2752)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !3450, file: !3451, line: 178, baseType: !274, size: 64, offset: 2816)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !3450, file: !3451, line: 179, baseType: !274, size: 64, offset: 2880)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !3450, file: !3451, line: 182, baseType: !340, size: 32, offset: 2944)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !3450, file: !3451, line: 186, baseType: !274, size: 64, align: 64, offset: 3008)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !3450, file: !3451, line: 194, baseType: !274, size: 64, offset: 3072)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !3450, file: !3451, line: 195, baseType: !274, size: 64, offset: 3136)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !3450, file: !3451, line: 199, baseType: !274, size: 64, offset: 3200)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !3450, file: !3451, line: 200, baseType: !274, size: 64, offset: 3264)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !3450, file: !3451, line: 203, baseType: !274, size: 64, offset: 3328)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !3450, file: !3451, line: 204, baseType: !274, size: 64, offset: 3392)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3322, file: !3323, line: 222, baseType: !7, size: 32, offset: 7936)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3322, file: !3323, line: 223, baseType: !3512, size: 64, offset: 8000)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3323, line: 223, flags: DIFlagFwdDecl)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3322, file: !3323, line: 230, baseType: !383, size: 8, offset: 8064)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3322, file: !3323, line: 231, baseType: !344, size: 16, offset: 8080)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3322, file: !3323, line: 232, baseType: !344, size: 16, offset: 8096)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3322, file: !3323, line: 234, baseType: !823, size: 64, offset: 8128)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3322, file: !3323, line: 237, baseType: !865, size: 256, offset: 8192)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3322, file: !3323, line: 243, baseType: !309, size: 320, offset: 8448)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !526, file: !527, line: 1111, baseType: !3521, size: 64, offset: 15424)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3323, line: 20, size: 16640, elements: !3523)
!3523 = !{!3524, !3525, !3526, !3527}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3522, file: !3323, line: 21, baseType: !67, size: 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3522, file: !3323, line: 22, baseType: !287, size: 32, offset: 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3522, file: !3323, line: 23, baseType: !62, size: 192, offset: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3522, file: !3323, line: 24, baseType: !3528, size: 16384, offset: 256)
!3528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3529, size: 16384, elements: !3106)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3334, line: 51, size: 256, elements: !3530)
!3530 = !{!3531}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3529, file: !3334, line: 52, baseType: !3532, size: 256)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3334, line: 37, size: 256, elements: !3533)
!3533 = !{!3534, !3541, !3542, !3546}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3532, file: !3334, line: 39, baseType: !3535, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3536, line: 83, baseType: !3537)
!3536 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3536, line: 82, baseType: !3539)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{null, !30}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3532, file: !3334, line: 40, baseType: !47, size: 64, offset: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3532, file: !3334, line: 46, baseType: !3543, size: 64, offset: 128)
!3543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3536, line: 86, baseType: !3544)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3536, line: 85, baseType: !3212)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3532, file: !3334, line: 48, baseType: !3338, size: 64, offset: 192)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !526, file: !527, line: 1112, baseType: !3338, size: 64, offset: 15488)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !526, file: !527, line: 1113, baseType: !3338, size: 64, offset: 15552)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !526, file: !527, line: 1115, baseType: !3338, size: 64, offset: 15616)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !526, file: !527, line: 1116, baseType: !3333, size: 192, offset: 15680)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !526, file: !527, line: 1117, baseType: !47, size: 64, offset: 15872)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !526, file: !527, line: 1118, baseType: !43, size: 64, offset: 15936)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !526, file: !527, line: 1119, baseType: !7, size: 32, offset: 16000)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !526, file: !527, line: 1121, baseType: !376, size: 64, offset: 16064)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !526, file: !527, line: 1125, baseType: !3556, size: 64, offset: 16128)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !527, line: 43, flags: DIFlagFwdDecl)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !526, file: !527, line: 1127, baseType: !246, size: 32, offset: 16192)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !526, file: !527, line: 1128, baseType: !7, size: 32, offset: 16224)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !526, file: !527, line: 1130, baseType: !3561, size: 128, offset: 16256)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3562, line: 37, size: 128, elements: !3563)
!3562 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3563 = !{!3564, !3565, !3566}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3561, file: !3562, line: 38, baseType: !30, size: 32)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3561, file: !3562, line: 39, baseType: !57, size: 32, offset: 32)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3561, file: !3562, line: 40, baseType: !3567, size: 64, offset: 64)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3562, line: 24, flags: DIFlagFwdDecl)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !526, file: !527, line: 1131, baseType: !3570, size: 256, offset: 16384)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3571, line: 12, size: 256, elements: !3572)
!3571 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3572 = !{!3573, !3574, !3575, !3576}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3570, file: !3571, line: 13, baseType: !394, size: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3570, file: !3571, line: 14, baseType: !47, size: 64, offset: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3570, file: !3571, line: 15, baseType: !47, size: 64, offset: 128)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3570, file: !3571, line: 16, baseType: !383, size: 8, offset: 192)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !526, file: !527, line: 1134, baseType: !273, size: 64, offset: 16640)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !526, file: !527, line: 1135, baseType: !273, size: 64, offset: 16704)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !526, file: !527, line: 1138, baseType: !67, size: 32, offset: 16768)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !526, file: !527, line: 1141, baseType: !320, size: 32, offset: 16800)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !526, file: !527, line: 1143, baseType: !3582, size: 64, offset: 16832)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !527, line: 735, size: 64, elements: !3583)
!3583 = !{!3584}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3582, file: !527, line: 736, baseType: !3585, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !526, file: !527, line: 1147, baseType: !706, size: 128, offset: 16896)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !526, file: !527, line: 1149, baseType: !525, size: 64, offset: 17024)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !526, file: !527, line: 1151, baseType: !3589, size: 64, offset: 17088)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !527, line: 1151, flags: DIFlagFwdDecl)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !526, file: !527, line: 1188, baseType: !28, size: 64, offset: 17152)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !526, file: !527, line: 1191, baseType: !3593, size: 64, offset: 17216)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !527, line: 44, flags: DIFlagFwdDecl)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !526, file: !527, line: 1194, baseType: !3596, size: 64, offset: 17280)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !527, line: 45, flags: DIFlagFwdDecl)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !526, file: !527, line: 1197, baseType: !3599, size: 64, offset: 17344)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !527, line: 61, flags: DIFlagFwdDecl)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !526, file: !527, line: 1199, baseType: !3602, size: 64, offset: 17408)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3604, line: 99, size: 128, elements: !3605)
!3604 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3605 = !{!3606, !3607, !3608}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3603, file: !3604, line: 100, baseType: !237, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3603, file: !3604, line: 101, baseType: !57, size: 32, offset: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3603, file: !3604, line: 103, baseType: !34, size: 16, offset: 96)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !526, file: !527, line: 1202, baseType: !3610, size: 64, offset: 17472)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !527, line: 48, flags: DIFlagFwdDecl)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !526, file: !527, line: 1205, baseType: !47, size: 64, offset: 17536)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !526, file: !527, line: 1206, baseType: !3614, size: 64, offset: 17600)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3334, line: 14, baseType: !3616)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3334, line: 12, size: 384, elements: !3617)
!3617 = !{!3618}
!3618 = !DIDerivedType(tag: DW_TAG_member, scope: !3616, file: !3334, line: 13, baseType: !3619, size: 384)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3616, file: !3334, line: 13, size: 384, elements: !3620)
!3620 = !{!3621, !3622, !3623, !3624}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3619, file: !3334, line: 13, baseType: !30, size: 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3619, file: !3334, line: 13, baseType: !30, size: 32, offset: 32)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3619, file: !3334, line: 13, baseType: !30, size: 32, offset: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3619, file: !3334, line: 13, baseType: !3625, size: 256, offset: 128)
!3625 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3626, line: 37, size: 256, elements: !3627)
!3626 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3627 = !{!3628, !3633, !3646, !3652, !3661, !3688, !3693}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3625, file: !3626, line: 42, baseType: !3629, size: 64)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3625, file: !3626, line: 39, size: 64, elements: !3630)
!3630 = !{!3631, !3632}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3629, file: !3626, line: 40, baseType: !2817, size: 32)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3629, file: !3626, line: 41, baseType: !252, size: 32, offset: 32)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3625, file: !3626, line: 50, baseType: !3634, size: 192)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3625, file: !3626, line: 45, size: 192, elements: !3635)
!3635 = !{!3636, !3638, !3639, !3645}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3634, file: !3626, line: 46, baseType: !3637, size: 32)
!3637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !45, line: 95, baseType: !30)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3634, file: !3626, line: 47, baseType: !30, size: 32, offset: 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3634, file: !3626, line: 48, baseType: !3640, size: 64, offset: 64)
!3640 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3626, line: 11, baseType: !3641)
!3641 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3626, line: 8, size: 64, elements: !3642)
!3642 = !{!3643, !3644}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3641, file: !3626, line: 9, baseType: !30, size: 32)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3641, file: !3626, line: 10, baseType: !28, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3634, file: !3626, line: 49, baseType: !30, size: 32, offset: 128)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3625, file: !3626, line: 57, baseType: !3647, size: 128)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3625, file: !3626, line: 53, size: 128, elements: !3648)
!3648 = !{!3649, !3650, !3651}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3647, file: !3626, line: 54, baseType: !2817, size: 32)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3647, file: !3626, line: 55, baseType: !252, size: 32, offset: 32)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3647, file: !3626, line: 56, baseType: !3640, size: 64, offset: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3625, file: !3626, line: 66, baseType: !3653, size: 256)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3625, file: !3626, line: 60, size: 256, elements: !3654)
!3654 = !{!3655, !3656, !3657, !3658, !3660}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3653, file: !3626, line: 61, baseType: !2817, size: 32)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3653, file: !3626, line: 62, baseType: !252, size: 32, offset: 32)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3653, file: !3626, line: 63, baseType: !30, size: 32, offset: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3653, file: !3626, line: 64, baseType: !3659, size: 64, offset: 128)
!3659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !45, line: 94, baseType: !1139)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3653, file: !3626, line: 65, baseType: !3659, size: 64, offset: 192)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3625, file: !3626, line: 105, baseType: !3662, size: 256)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3625, file: !3626, line: 69, size: 256, elements: !3663)
!3663 = !{!3664, !3665}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3662, file: !3626, line: 70, baseType: !28, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, scope: !3662, file: !3626, line: 79, baseType: !3666, size: 192, offset: 64)
!3666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3662, file: !3626, line: 79, size: 192, elements: !3667)
!3667 = !{!3668, !3669, !3670, !3677, !3682}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3666, file: !3626, line: 81, baseType: !30, size: 32)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3666, file: !3626, line: 86, baseType: !344, size: 16)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3666, file: !3626, line: 92, baseType: !3671, size: 192)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3666, file: !3626, line: 88, size: 192, elements: !3672)
!3672 = !{!3673, !3675, !3676}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3671, file: !3626, line: 89, baseType: !3674, size: 64)
!3674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 64, elements: !685)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3671, file: !3626, line: 90, baseType: !28, size: 64, offset: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3671, file: !3626, line: 91, baseType: !28, size: 64, offset: 128)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3666, file: !3626, line: 97, baseType: !3678, size: 96)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3666, file: !3626, line: 94, size: 96, elements: !3679)
!3679 = !{!3680, !3681}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3678, file: !3626, line: 95, baseType: !3674, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3678, file: !3626, line: 96, baseType: !340, size: 32, offset: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3666, file: !3626, line: 103, baseType: !3683, size: 128)
!3683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3666, file: !3626, line: 99, size: 128, elements: !3684)
!3684 = !{!3685, !3686, !3687}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3683, file: !3626, line: 100, baseType: !47, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3683, file: !3626, line: 101, baseType: !340, size: 32, offset: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3683, file: !3626, line: 102, baseType: !340, size: 32, offset: 96)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3625, file: !3626, line: 111, baseType: !3689, size: 128)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3625, file: !3626, line: 108, size: 128, elements: !3690)
!3690 = !{!3691, !3692}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3689, file: !3626, line: 109, baseType: !1098, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3689, file: !3626, line: 110, baseType: !30, size: 32, offset: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3625, file: !3626, line: 118, baseType: !3694, size: 128)
!3694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3625, file: !3626, line: 114, size: 128, elements: !3695)
!3695 = !{!3696, !3697, !3698}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3694, file: !3626, line: 115, baseType: !28, size: 64)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3694, file: !3626, line: 116, baseType: !30, size: 32, offset: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3694, file: !3626, line: 117, baseType: !7, size: 32, offset: 96)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !526, file: !527, line: 1208, baseType: !3420, size: 448, offset: 17664)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !526, file: !527, line: 1215, baseType: !273, size: 64, offset: 18112)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !526, file: !527, line: 1217, baseType: !273, size: 64, offset: 18176)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !526, file: !527, line: 1219, baseType: !273, size: 64, offset: 18240)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !526, file: !527, line: 1223, baseType: !3704, size: 64, offset: 18304)
!3704 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3705, line: 99, baseType: !3706)
!3705 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3705, line: 99, size: 64, elements: !3707)
!3707 = !{!3708}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3706, file: !3705, line: 99, baseType: !774, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !526, file: !527, line: 1225, baseType: !955, size: 32, offset: 18368)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !526, file: !527, line: 1226, baseType: !30, size: 32, offset: 18400)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !526, file: !527, line: 1227, baseType: !30, size: 32, offset: 18432)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !526, file: !527, line: 1231, baseType: !2943, size: 64, offset: 18496)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !526, file: !527, line: 1233, baseType: !105, size: 128, offset: 18560)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !526, file: !527, line: 1240, baseType: !3715, size: 64, offset: 18688)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !527, line: 62, flags: DIFlagFwdDecl)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !526, file: !527, line: 1242, baseType: !3718, size: 64, offset: 18752)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !527, line: 1242, flags: DIFlagFwdDecl)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !526, file: !527, line: 1244, baseType: !105, size: 128, offset: 18816)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !526, file: !527, line: 1245, baseType: !3722, size: 64, offset: 18944)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !527, line: 51, flags: DIFlagFwdDecl)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !526, file: !527, line: 1246, baseType: !865, size: 256, offset: 19008)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !526, file: !527, line: 1247, baseType: !7, size: 32, offset: 19264)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !526, file: !527, line: 1250, baseType: !3727, size: 64, offset: 19328)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !527, line: 57, flags: DIFlagFwdDecl)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !526, file: !527, line: 1251, baseType: !865, size: 256, offset: 19392)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !526, file: !527, line: 1252, baseType: !105, size: 128, offset: 19648)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !526, file: !527, line: 1259, baseType: !2131, size: 64, offset: 19776)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !526, file: !527, line: 1260, baseType: !344, size: 16, offset: 19840)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !526, file: !527, line: 1261, baseType: !344, size: 16, offset: 19856)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !526, file: !527, line: 1314, baseType: !3735, size: 64, offset: 19904)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3737, line: 62, size: 256, align: 256, elements: !3738)
!3737 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3738 = !{!3739, !3740, !3741, !3742, !3743, !3744, !3745}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3736, file: !3737, line: 75, baseType: !340, size: 32)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3736, file: !3737, line: 90, baseType: !340, size: 32, offset: 32)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3736, file: !3737, line: 112, baseType: !274, size: 64, offset: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3736, file: !3737, line: 132, baseType: !340, size: 32, offset: 128)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3736, file: !3737, line: 140, baseType: !340, size: 32, offset: 160)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3736, file: !3737, line: 149, baseType: !340, size: 32, offset: 192)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3736, file: !3737, line: 154, baseType: !3746, offset: 224)
!3746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, elements: !923)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !526, file: !527, line: 1315, baseType: !339, size: 32, offset: 19968)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !526, file: !527, line: 1316, baseType: !339, size: 32, offset: 20000)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !526, file: !527, line: 1321, baseType: !47, size: 64, offset: 20032)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !526, file: !527, line: 1325, baseType: !30, size: 32, offset: 20096)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !526, file: !527, line: 1326, baseType: !30, size: 32, offset: 20128)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !526, file: !527, line: 1327, baseType: !30, size: 32, offset: 20160)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !526, file: !527, line: 1328, baseType: !30, size: 32, offset: 20192)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !526, file: !527, line: 1329, baseType: !373, size: 128, align: 64, offset: 20224)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !526, file: !527, line: 1332, baseType: !3756, size: 128, offset: 20352)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3757, line: 51, size: 128, elements: !3758)
!3757 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3758 = !{!3759, !3764, !3765}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3756, file: !3757, line: 60, baseType: !3760, size: 64)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3761, line: 7, size: 64, elements: !3762)
!3761 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3762 = !{!3763}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3760, file: !3761, line: 12, baseType: !771, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3756, file: !3757, line: 63, baseType: !383, size: 8, offset: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3756, file: !3757, line: 70, baseType: !383, size: 8, offset: 72)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !526, file: !527, line: 1335, baseType: !2527, size: 64, offset: 20480)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !526, file: !527, line: 1337, baseType: !3768, size: 128, offset: 20544)
!3768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3757, line: 39, size: 128, elements: !3769)
!3769 = !{!3770, !3771, !3772}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3768, file: !3757, line: 40, baseType: !1918, size: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3768, file: !3757, line: 42, baseType: !340, size: 32, offset: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3768, file: !3757, line: 43, baseType: !340, size: 32, offset: 96)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !526, file: !527, line: 1340, baseType: !3774, size: 64, offset: 20672)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !527, line: 69, flags: DIFlagFwdDecl)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !526, file: !527, line: 1351, baseType: !30, size: 32, offset: 20736)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !526, file: !527, line: 1352, baseType: !30, size: 32, offset: 20768)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !526, file: !527, line: 1354, baseType: !47, size: 64, offset: 20800)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !526, file: !527, line: 1364, baseType: !273, size: 64, offset: 20864)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !526, file: !527, line: 1365, baseType: !273, size: 64, offset: 20928)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !526, file: !527, line: 1412, baseType: !47, size: 64, offset: 20992)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !526, file: !527, line: 1453, baseType: !3783, size: 64, offset: 21056)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !527, line: 1453, flags: DIFlagFwdDecl)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !526, file: !527, line: 1457, baseType: !3786, size: 64, offset: 21120)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !187, line: 61, size: 576, elements: !3788)
!3788 = !{!3789, !3790, !3809, !3812, !3813, !3846, !3856}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3787, file: !187, line: 62, baseType: !186, size: 32)
!3790 = !DIDerivedType(tag: DW_TAG_member, scope: !3787, file: !187, line: 64, baseType: !3791, size: 192, offset: 64)
!3791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3787, file: !187, line: 64, size: 192, elements: !3792)
!3792 = !{!3793, !3804}
!3793 = !DIDerivedType(tag: DW_TAG_member, scope: !3791, file: !187, line: 65, baseType: !3794, size: 192)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3791, file: !187, line: 65, size: 192, elements: !3795)
!3795 = !{!3796, !3803}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3794, file: !187, line: 66, baseType: !3797, size: 128)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3798, line: 50, size: 128, elements: !3799)
!3798 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3799 = !{!3800, !3801, !3802}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3797, file: !3798, line: 52, baseType: !47, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3797, file: !3798, line: 54, baseType: !7, size: 32, offset: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3797, file: !3798, line: 55, baseType: !7, size: 32, offset: 96)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3794, file: !187, line: 67, baseType: !47, size: 64, offset: 128)
!3804 = !DIDerivedType(tag: DW_TAG_member, scope: !3791, file: !187, line: 70, baseType: !3805, size: 192)
!3805 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3791, file: !187, line: 70, size: 192, elements: !3806)
!3806 = !{!3807, !3808}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3805, file: !187, line: 71, baseType: !373, size: 128, align: 64)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3805, file: !187, line: 72, baseType: !47, size: 64, offset: 128)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3787, file: !187, line: 76, baseType: !3810, size: 64, offset: 256)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !187, line: 76, flags: DIFlagFwdDecl)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3787, file: !187, line: 77, baseType: !47, size: 64, offset: 320)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3787, file: !187, line: 79, baseType: !3814, size: 64, offset: 384)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3798, line: 25, size: 256, elements: !3816)
!3816 = !{!3817, !3823, !3827}
!3817 = !DIDerivedType(tag: DW_TAG_member, scope: !3815, file: !3798, line: 26, baseType: !3818, size: 128)
!3818 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3815, file: !3798, line: 26, size: 128, elements: !3819)
!3819 = !{!3820, !3822}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3818, file: !3798, line: 27, baseType: !3821, size: 128)
!3821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 128, elements: !1772)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3818, file: !3798, line: 28, baseType: !3821, size: 128)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3815, file: !3798, line: 31, baseType: !3824, size: 64, offset: 128)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3826)
!3826 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3798, line: 23, flags: DIFlagFwdDecl)
!3827 = !DIDerivedType(tag: DW_TAG_member, scope: !3815, file: !3798, line: 33, baseType: !3828, size: 64, offset: 192)
!3828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3815, file: !3798, line: 33, size: 64, elements: !3829)
!3829 = !{!3830, !3836, !3841}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3828, file: !3798, line: 38, baseType: !3831, size: 64)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3828, file: !3798, line: 34, size: 64, elements: !3832)
!3832 = !{!3833, !3834, !3835}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3831, file: !3798, line: 35, baseType: !294, size: 32)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3831, file: !3798, line: 36, baseType: !91, size: 8, offset: 32)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3831, file: !3798, line: 37, baseType: !91, size: 8, offset: 40)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3828, file: !3798, line: 42, baseType: !3837, size: 16)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3828, file: !3798, line: 39, size: 16, elements: !3838)
!3838 = !{!3839, !3840}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3837, file: !3798, line: 40, baseType: !91, size: 8)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3837, file: !3798, line: 41, baseType: !91, size: 8, offset: 8)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3828, file: !3798, line: 46, baseType: !3842, size: 16)
!3842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3828, file: !3798, line: 43, size: 16, elements: !3843)
!3843 = !{!3844, !3845}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3842, file: !3798, line: 44, baseType: !91, size: 8)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3842, file: !3798, line: 45, baseType: !91, size: 8, offset: 8)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3787, file: !187, line: 81, baseType: !3847, size: 64, offset: 448)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !187, line: 85, size: 384, elements: !3849)
!3849 = !{!3850, !3851, !3852, !3853, !3854, !3855}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3848, file: !187, line: 86, baseType: !3810, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3848, file: !187, line: 87, baseType: !47, size: 64, offset: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3848, file: !187, line: 88, baseType: !47, size: 64, offset: 128)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3848, file: !187, line: 89, baseType: !47, size: 64, offset: 192)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3848, file: !187, line: 90, baseType: !383, size: 8, offset: 256)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3848, file: !187, line: 92, baseType: !3847, size: 64, offset: 320)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3787, file: !187, line: 82, baseType: !7, size: 32, offset: 512)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !526, file: !527, line: 1463, baseType: !3858, offset: 21184)
!3858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !527, line: 739, elements: !844)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !526, file: !527, line: 1470, baseType: !373, size: 128, align: 64, offset: 21184)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !526, file: !527, line: 1471, baseType: !287, size: 32, offset: 21312)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !526, file: !527, line: 1472, baseType: !30, size: 32, offset: 21344)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !526, file: !527, line: 1474, baseType: !525, size: 64, offset: 21376)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !526, file: !527, line: 1475, baseType: !3066, size: 320, offset: 21440)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !526, file: !527, line: 1478, baseType: !3865, size: 64, offset: 21760)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !527, line: 1478, flags: DIFlagFwdDecl)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !526, file: !527, line: 1482, baseType: !287, size: 32, offset: 21824)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !526, file: !527, line: 1489, baseType: !28, size: 64, offset: 21888)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !526, file: !527, line: 1504, baseType: !28, size: 64, offset: 21952)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !526, file: !527, line: 1505, baseType: !274, size: 64, offset: 22016)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !526, file: !527, line: 1506, baseType: !273, size: 64, offset: 22080)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !526, file: !527, line: 1507, baseType: !274, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !526, file: !527, line: 1508, baseType: !274, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !526, file: !527, line: 1509, baseType: !274, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !526, file: !527, line: 1510, baseType: !373, size: 128, align: 64, offset: 22208)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !526, file: !527, line: 1511, baseType: !30, size: 32, offset: 22336)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !526, file: !527, line: 1515, baseType: !3878, size: 64, offset: 22400)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !549, line: 56, size: 64, elements: !3879)
!3879 = !{!3880}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3878, file: !549, line: 57, baseType: !552, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !526, file: !527, line: 1518, baseType: !3878, size: 64, offset: 22464)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !526, file: !527, line: 1528, baseType: !373, size: 128, align: 64, offset: 22528)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !526, file: !527, line: 1552, baseType: !3884, size: 35328, offset: 23040)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3885, line: 430, size: 35328, elements: !3886)
!3885 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3886 = !{!3887, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3916, !3917, !3918, !3919, !3920, !3921, !3924, !3925, !3926, !3927}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3884, file: !3885, line: 432, baseType: !3888, size: 192)
!3888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3889, size: 192, elements: !897)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3890, line: 16, size: 64, elements: !3891)
!3890 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3891 = !{!3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3889, file: !3890, line: 17, baseType: !101, size: 16)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3889, file: !3890, line: 18, baseType: !101, size: 16, offset: 16)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3889, file: !3890, line: 19, baseType: !101, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3889, file: !3890, line: 19, baseType: !101, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3889, file: !3890, line: 19, baseType: !101, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3889, file: !3890, line: 19, baseType: !101, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3889, file: !3890, line: 19, baseType: !101, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3889, file: !3890, line: 20, baseType: !101, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3889, file: !3890, line: 20, baseType: !101, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3889, file: !3890, line: 20, baseType: !101, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3889, file: !3890, line: 20, baseType: !101, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3889, file: !3890, line: 20, baseType: !101, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3889, file: !3890, line: 20, baseType: !101, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3884, file: !3885, line: 436, baseType: !47, size: 64, offset: 192)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3884, file: !3885, line: 440, baseType: !34, size: 16, offset: 256)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3884, file: !3885, line: 441, baseType: !34, size: 16, offset: 272)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3884, file: !3885, line: 442, baseType: !34, size: 16, offset: 288)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3884, file: !3885, line: 443, baseType: !34, size: 16, offset: 304)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3884, file: !3885, line: 447, baseType: !47, size: 64, offset: 320)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3884, file: !3885, line: 448, baseType: !47, size: 64, offset: 384)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3884, file: !3885, line: 459, baseType: !3913, size: 256, offset: 448)
!3913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3914, size: 256, elements: !404)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3885, line: 428, flags: DIFlagFwdDecl)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3884, file: !3885, line: 461, baseType: !47, size: 64, offset: 704)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3884, file: !3885, line: 463, baseType: !47, size: 64, offset: 768)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3884, file: !3885, line: 465, baseType: !47, size: 64, offset: 832)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3884, file: !3885, line: 466, baseType: !47, size: 64, offset: 896)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3884, file: !3885, line: 467, baseType: !47, size: 64, offset: 960)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3884, file: !3885, line: 473, baseType: !3922, size: 64, offset: 1024)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3885, line: 10, flags: DIFlagFwdDecl)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3884, file: !3885, line: 480, baseType: !47, size: 64, offset: 1088)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3884, file: !3885, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3884, file: !3885, line: 491, baseType: !339, size: 32, offset: 1184)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3884, file: !3885, line: 501, baseType: !3928, size: 33792, offset: 1536)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3929, line: 448, size: 33792, elements: !3930)
!3929 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3930 = !{!3931, !3932, !3933, !4093, !4094, !4100, !4101}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3928, file: !3929, line: 461, baseType: !7, size: 32)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3928, file: !3929, line: 468, baseType: !47, size: 64, offset: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3928, file: !3929, line: 476, baseType: !3934, size: 64, offset: 128)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3929, line: 356, size: 33280, align: 512, elements: !3936)
!3936 = !{!3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3935, file: !3929, line: 358, baseType: !7, size: 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3935, file: !3929, line: 361, baseType: !7, size: 32, offset: 32)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3935, file: !3929, line: 364, baseType: !273, size: 64, offset: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3935, file: !3929, line: 367, baseType: !273, size: 64, offset: 128)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3935, file: !3929, line: 370, baseType: !273, size: 64, offset: 192)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3935, file: !3929, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3935, file: !3929, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3935, file: !3929, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3935, file: !3929, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3935, file: !3929, line: 397, baseType: !3947, size: 32768, offset: 512)
!3947 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3929, line: 348, size: 32768, elements: !3948)
!3948 = !{!3949, !3964, !4001, !4078, !4091}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3947, file: !3929, line: 349, baseType: !3950, size: 896)
!3950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3929, line: 12, size: 896, elements: !3951)
!3951 = !{!3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3963}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3950, file: !3929, line: 13, baseType: !339, size: 32)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3950, file: !3929, line: 14, baseType: !339, size: 32, offset: 32)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3950, file: !3929, line: 15, baseType: !339, size: 32, offset: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3950, file: !3929, line: 16, baseType: !339, size: 32, offset: 96)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3950, file: !3929, line: 17, baseType: !339, size: 32, offset: 128)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3950, file: !3929, line: 18, baseType: !339, size: 32, offset: 160)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3950, file: !3929, line: 19, baseType: !339, size: 32, offset: 192)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3950, file: !3929, line: 22, baseType: !3960, size: 640, offset: 224)
!3960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 640, elements: !3961)
!3961 = !{!3962}
!3962 = !DISubrange(count: 20)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3950, file: !3929, line: 25, baseType: !339, size: 32, offset: 864)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3947, file: !3929, line: 350, baseType: !3965, size: 4096, align: 128)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3929, line: 34, size: 4096, align: 128, elements: !3966)
!3966 = !{!3967, !3968, !3969, !3970, !3971, !3986, !3987, !3988, !3990, !3992, !3996}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3965, file: !3929, line: 35, baseType: !101, size: 16)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3965, file: !3929, line: 36, baseType: !101, size: 16, offset: 16)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3965, file: !3929, line: 37, baseType: !101, size: 16, offset: 32)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3965, file: !3929, line: 38, baseType: !101, size: 16, offset: 48)
!3971 = !DIDerivedType(tag: DW_TAG_member, scope: !3965, file: !3929, line: 39, baseType: !3972, size: 128, offset: 64)
!3972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3965, file: !3929, line: 39, size: 128, elements: !3973)
!3973 = !{!3974, !3979}
!3974 = !DIDerivedType(tag: DW_TAG_member, scope: !3972, file: !3929, line: 40, baseType: !3975, size: 128)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3972, file: !3929, line: 40, size: 128, elements: !3976)
!3976 = !{!3977, !3978}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3975, file: !3929, line: 41, baseType: !273, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3975, file: !3929, line: 42, baseType: !273, size: 64, offset: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, scope: !3972, file: !3929, line: 44, baseType: !3980, size: 128)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3972, file: !3929, line: 44, size: 128, elements: !3981)
!3981 = !{!3982, !3983, !3984, !3985}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3980, file: !3929, line: 45, baseType: !339, size: 32)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3980, file: !3929, line: 46, baseType: !339, size: 32, offset: 32)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3980, file: !3929, line: 47, baseType: !339, size: 32, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3980, file: !3929, line: 48, baseType: !339, size: 32, offset: 96)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3965, file: !3929, line: 51, baseType: !339, size: 32, offset: 192)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3965, file: !3929, line: 52, baseType: !339, size: 32, offset: 224)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3965, file: !3929, line: 55, baseType: !3989, size: 1024, offset: 256)
!3989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 1024, elements: !1763)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3965, file: !3929, line: 58, baseType: !3991, size: 2048, offset: 1280)
!3991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 2048, elements: !3106)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3965, file: !3929, line: 60, baseType: !3993, size: 384, offset: 3328)
!3993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 384, elements: !3994)
!3994 = !{!3995}
!3995 = !DISubrange(count: 12)
!3996 = !DIDerivedType(tag: DW_TAG_member, scope: !3965, file: !3929, line: 62, baseType: !3997, size: 384, offset: 3712)
!3997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3965, file: !3929, line: 62, size: 384, elements: !3998)
!3998 = !{!3999, !4000}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3997, file: !3929, line: 63, baseType: !3993, size: 384)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3997, file: !3929, line: 64, baseType: !3993, size: 384)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3947, file: !3929, line: 351, baseType: !4002, size: 1088)
!4002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3929, line: 79, size: 1088, elements: !4003)
!4003 = !{!4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4077}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4002, file: !3929, line: 80, baseType: !339, size: 32)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4002, file: !3929, line: 81, baseType: !339, size: 32, offset: 32)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4002, file: !3929, line: 82, baseType: !339, size: 32, offset: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4002, file: !3929, line: 83, baseType: !339, size: 32, offset: 96)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4002, file: !3929, line: 84, baseType: !339, size: 32, offset: 128)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4002, file: !3929, line: 85, baseType: !339, size: 32, offset: 160)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4002, file: !3929, line: 86, baseType: !339, size: 32, offset: 192)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4002, file: !3929, line: 88, baseType: !3960, size: 640, offset: 224)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4002, file: !3929, line: 89, baseType: !91, size: 8, offset: 864)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4002, file: !3929, line: 90, baseType: !91, size: 8, offset: 872)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4002, file: !3929, line: 91, baseType: !91, size: 8, offset: 880)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4002, file: !3929, line: 92, baseType: !91, size: 8, offset: 888)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4002, file: !3929, line: 93, baseType: !91, size: 8, offset: 896)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4002, file: !3929, line: 94, baseType: !91, size: 8, offset: 904)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4002, file: !3929, line: 95, baseType: !4019, size: 64, offset: 960)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4021, line: 11, size: 128, elements: !4022)
!4021 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4022 = !{!4023, !4024}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4020, file: !4021, line: 12, baseType: !1098, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4020, file: !4021, line: 13, baseType: !4025, size: 64, offset: 64)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4027, line: 103, size: 1344, elements: !4028)
!4027 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4028 = !{!4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4057, !4058, !4059}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4026, file: !4027, line: 109, baseType: !47, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4026, file: !4027, line: 110, baseType: !47, size: 64, offset: 64)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4026, file: !4027, line: 111, baseType: !47, size: 64, offset: 128)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4026, file: !4027, line: 112, baseType: !47, size: 64, offset: 192)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4026, file: !4027, line: 113, baseType: !47, size: 64, offset: 256)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4026, file: !4027, line: 114, baseType: !47, size: 64, offset: 320)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4026, file: !4027, line: 117, baseType: !47, size: 64, offset: 384)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4026, file: !4027, line: 118, baseType: !47, size: 64, offset: 448)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4026, file: !4027, line: 119, baseType: !47, size: 64, offset: 512)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4026, file: !4027, line: 120, baseType: !47, size: 64, offset: 576)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4026, file: !4027, line: 121, baseType: !47, size: 64, offset: 640)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4026, file: !4027, line: 122, baseType: !47, size: 64, offset: 704)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4026, file: !4027, line: 123, baseType: !47, size: 64, offset: 768)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4026, file: !4027, line: 124, baseType: !47, size: 64, offset: 832)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4026, file: !4027, line: 125, baseType: !47, size: 64, offset: 896)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4026, file: !4027, line: 139, baseType: !47, size: 64, offset: 960)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4026, file: !4027, line: 142, baseType: !47, size: 64, offset: 1024)
!4046 = !DIDerivedType(tag: DW_TAG_member, scope: !4026, file: !4027, line: 144, baseType: !4047, size: 64, offset: 1088)
!4047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4026, file: !4027, line: 144, size: 64, elements: !4048)
!4048 = !{!4049, !4050, !4051}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4047, file: !4027, line: 146, baseType: !101, size: 16)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4047, file: !4027, line: 148, baseType: !273, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4047, file: !4027, line: 150, baseType: !4052, size: 64)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4027, line: 59, size: 64, elements: !4053)
!4053 = !{!4054, !4055, !4056}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4052, file: !4027, line: 61, baseType: !273, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4052, file: !4027, line: 63, baseType: !273, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4052, file: !4027, line: 65, baseType: !273, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4026, file: !4027, line: 153, baseType: !47, size: 64, offset: 1152)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4026, file: !4027, line: 154, baseType: !47, size: 64, offset: 1216)
!4059 = !DIDerivedType(tag: DW_TAG_member, scope: !4026, file: !4027, line: 156, baseType: !4060, size: 64, offset: 1280)
!4060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4026, file: !4027, line: 156, size: 64, elements: !4061)
!4061 = !{!4062, !4063, !4064}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4060, file: !4027, line: 158, baseType: !101, size: 16)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4060, file: !4027, line: 160, baseType: !273, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4060, file: !4027, line: 162, baseType: !4065, size: 64)
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4027, line: 69, size: 64, elements: !4066)
!4066 = !{!4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4065, file: !4027, line: 71, baseType: !273, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4065, file: !4027, line: 73, baseType: !273, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4065, file: !4027, line: 75, baseType: !273, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4065, file: !4027, line: 77, baseType: !273, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4065, file: !4027, line: 80, baseType: !273, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4065, file: !4027, line: 83, baseType: !273, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4065, file: !4027, line: 86, baseType: !273, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4065, file: !4027, line: 88, baseType: !273, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4065, file: !4027, line: 93, baseType: !273, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4065, file: !4027, line: 100, baseType: !273, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4002, file: !3929, line: 96, baseType: !339, size: 32, offset: 1024)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3947, file: !3929, line: 352, baseType: !4079, size: 4608, align: 512)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3929, line: 333, size: 4608, align: 512, elements: !4080)
!4080 = !{!4081, !4082, !4089}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4079, file: !3929, line: 334, baseType: !3965, size: 4096, align: 128)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4079, file: !3929, line: 335, baseType: !4083, size: 512, offset: 4096)
!4083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3929, line: 312, size: 512, elements: !4084)
!4084 = !{!4085, !4086, !4087}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4083, file: !3929, line: 313, baseType: !273, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4083, file: !3929, line: 314, baseType: !273, size: 64, offset: 64)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4083, file: !3929, line: 315, baseType: !4088, size: 384, offset: 128)
!4088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 384, elements: !362)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4079, file: !3929, line: 336, baseType: !4090, offset: 4608)
!4090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, elements: !923)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3947, file: !3929, line: 353, baseType: !4092, size: 32768)
!4092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 32768, elements: !3102)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3928, file: !3929, line: 484, baseType: !3934, size: 64, offset: 192)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3928, file: !3929, line: 491, baseType: !4095, size: 128, offset: 256)
!4095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3929, line: 404, size: 128, elements: !4096)
!4096 = !{!4097, !4098, !4099}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4095, file: !3929, line: 424, baseType: !273, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4095, file: !3929, line: 432, baseType: !7, size: 32, offset: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4095, file: !3929, line: 440, baseType: !7, size: 32, offset: 96)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3928, file: !3929, line: 498, baseType: !4095, size: 128, offset: 384)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3928, file: !3929, line: 508, baseType: !3935, size: 33280, align: 512, offset: 512)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !514, file: !515, line: 21, baseType: !4103, size: 64, offset: 256)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{null, !524}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !514, file: !515, line: 22, baseType: !4107, size: 64, offset: 320)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!30, !4110, !524}
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsset", file: !2903, line: 53, size: 256, elements: !4112)
!4112 = !{!4113, !4114, !4115, !4116}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4111, file: !2903, line: 54, baseType: !7, size: 32)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !4111, file: !2903, line: 55, baseType: !2901, size: 64, offset: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !4111, file: !2903, line: 56, baseType: !2892, size: 64, offset: 128)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !4111, file: !2903, line: 57, baseType: !231, size: 64, offset: 192)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !514, file: !515, line: 23, baseType: !4118, size: 64, offset: 384)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!475, !524}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !514, file: !515, line: 24, baseType: !4122, size: 64, offset: 448)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!524, !524}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !507, file: !508, line: 12, baseType: !7, size: 32, offset: 128)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !507, file: !508, line: 13, baseType: !287, size: 32, offset: 160)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !476, file: !194, line: 77, baseType: !47, size: 64, offset: 2112)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !476, file: !194, line: 80, baseType: !383, size: 8, offset: 2176)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !476, file: !194, line: 88, baseType: !105, size: 128, offset: 2240)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !476, file: !194, line: 89, baseType: !282, size: 64, offset: 2368)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !476, file: !194, line: 90, baseType: !309, size: 320, offset: 2432)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !476, file: !194, line: 97, baseType: !1881, size: 256, offset: 2752)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !476, file: !194, line: 99, baseType: !4134, size: 768, offset: 3008)
!4134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !20, line: 199, size: 768, elements: !4135)
!4135 = !{!4136, !4141}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !4134, file: !20, line: 200, baseType: !4137, size: 64)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!30, !4140}
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4134, file: !20, line: 201, baseType: !4142, size: 704, offset: 64)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !20, line: 193, size: 704, elements: !4143)
!4143 = !{!4144, !4191}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4142, file: !20, line: 195, baseType: !4145, size: 640)
!4145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !20, line: 173, size: 640, elements: !4146)
!4146 = !{!4147, !4159, !4160, !4161, !4181, !4182, !4184, !4190}
!4147 = !DIDerivedType(tag: DW_TAG_member, scope: !4145, file: !20, line: 174, baseType: !4148, size: 192)
!4148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4145, file: !20, line: 174, size: 192, elements: !4149)
!4149 = !{!4150, !4158}
!4150 = !DIDerivedType(tag: DW_TAG_member, scope: !4148, file: !20, line: 175, baseType: !4151, size: 192)
!4151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4148, file: !20, line: 175, size: 192, elements: !4152)
!4152 = !{!4153, !4154, !4155, !4156, !4157}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !4151, file: !20, line: 176, baseType: !41, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !4151, file: !20, line: 177, baseType: !30, size: 32, offset: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !4151, file: !20, line: 178, baseType: !30, size: 32, offset: 96)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4151, file: !20, line: 179, baseType: !30, size: 32, offset: 128)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !4151, file: !20, line: 180, baseType: !30, size: 32, offset: 160)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4148, file: !20, line: 182, baseType: !373, size: 128, align: 64)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !4145, file: !20, line: 184, baseType: !2833, size: 64, offset: 192)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !4145, file: !20, line: 185, baseType: !41, size: 64, offset: 256)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4145, file: !20, line: 186, baseType: !4162, size: 64, offset: 320)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !20, line: 204, size: 960, elements: !4164)
!4164 = !{!4165, !4166, !4170, !4177}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !4163, file: !20, line: 205, baseType: !4134, size: 768)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !4163, file: !20, line: 206, baseType: !4167, size: 64, offset: 768)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!4140, !4162}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !4163, file: !20, line: 207, baseType: !4171, size: 64, offset: 832)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{null, !4174, !4175, !4176}
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !4163, file: !20, line: 209, baseType: !4178, size: 64, offset: 896)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!30, !4174, !41}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4145, file: !20, line: 187, baseType: !4140, size: 64, offset: 384)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4145, file: !20, line: 188, baseType: !4183, size: 64, offset: 448)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4145, file: !20, line: 189, baseType: !4185, size: 64, offset: 512)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !20, line: 157, size: 256, elements: !4187)
!4187 = !{!4188, !4189}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4186, file: !20, line: 158, baseType: !301, size: 192, align: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4186, file: !20, line: 159, baseType: !4174, size: 64, offset: 192)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !4145, file: !20, line: 190, baseType: !909, size: 64, offset: 576)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4142, file: !20, line: 196, baseType: !709, size: 64, offset: 640)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !476, file: !194, line: 100, baseType: !4174, size: 64, offset: 3776)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !476, file: !194, line: 102, baseType: !2929, size: 64, offset: 3840)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !476, file: !194, line: 103, baseType: !4195, size: 640, offset: 3904)
!4195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1098, size: 640, elements: !2938)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !476, file: !194, line: 104, baseType: !4197, size: 256, offset: 4544)
!4197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1098, size: 256, elements: !404)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !233, file: !234, line: 139, baseType: !2929, size: 64, offset: 1216)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !233, file: !234, line: 140, baseType: !4200, size: 64, offset: 1280)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !234, line: 25, size: 64, elements: !4202)
!4202 = !{!4203, !4204, !4205}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !4201, file: !234, line: 26, baseType: !57, size: 32)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !4201, file: !234, line: 27, baseType: !30, size: 32, offset: 32)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4201, file: !234, line: 28, baseType: !4206, offset: 64)
!4206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, elements: !923)
!4207 = !DIDerivedType(tag: DW_TAG_member, scope: !233, file: !234, line: 142, baseType: !4208, size: 128, offset: 1344)
!4208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !233, file: !234, line: 142, size: 128, elements: !4209)
!4209 = !{!4210, !4211}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !4208, file: !234, line: 143, baseType: !30, size: 32)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4208, file: !234, line: 144, baseType: !373, size: 128, align: 64)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4214)
!4214 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2943)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !243)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !30)
!4220 = !{!0, !4221, !4226, !4231, !4233}
!4221 = !DIGlobalVariableExpression(var: !4222, expr: !DIExpression())
!4222 = distinct !DIGlobalVariable(scope: null, file: !3, line: 58, type: !4223, isLocal: true, isDefinition: true)
!4223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 208, elements: !4224)
!4224 = !{!4225}
!4225 = !DISubrange(count: 26)
!4226 = !DIGlobalVariableExpression(var: !4227, expr: !DIExpression())
!4227 = distinct !DIGlobalVariable(scope: null, file: !3, line: 145, type: !4228, isLocal: true, isDefinition: true)
!4228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 56, elements: !4229)
!4229 = !{!4230}
!4230 = !DISubrange(count: 7)
!4231 = !DIGlobalVariableExpression(var: !4232, expr: !DIExpression())
!4232 = distinct !DIGlobalVariable(name: "cgroupns_operations", scope: !2, file: !3, line: 144, type: !513, isLocal: false, isDefinition: true)
!4233 = !DIGlobalVariableExpression(var: !4234, expr: !DIExpression())
!4234 = distinct !DIGlobalVariable(scope: null, file: !221, line: 480, type: !4235, isLocal: true, isDefinition: true)
!4235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 168, elements: !4236)
!4236 = !{!4237}
!4237 = !DISubrange(count: 21)
!4238 = !{i32 7, !"Dwarf Version", i32 5}
!4239 = !{i32 2, !"Debug Info Version", i32 3}
!4240 = !{i32 1, !"wchar_size", i32 2}
!4241 = !{i32 8, !"cf-protection-branch", i32 1}
!4242 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4243 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4244 = !{i32 1, !"Code Model", i32 2}
!4245 = !{i32 1, !"override-stack-alignment", i32 8}
!4246 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4247 = distinct !DISubprogram(name: "free_cgroup_ns", scope: !3, file: !3, line: 40, type: !4248, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4250)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{null, !2922}
!4250 = !{!4251}
!4251 = !DILocalVariable(name: "ns", arg: 1, scope: !4247, file: !3, line: 40, type: !2922)
!4252 = !DILocation(line: 40, column: 46, scope: !4247)
!4253 = !DILocation(line: 42, column: 14, scope: !4247)
!4254 = !DILocation(line: 42, column: 18, scope: !4247)
!4255 = !DILocation(line: 42, column: 2, scope: !4247)
!4256 = !DILocation(line: 43, column: 24, scope: !4247)
!4257 = !DILocation(line: 43, column: 28, scope: !4247)
!4258 = !DILocation(line: 43, column: 2, scope: !4247)
!4259 = !DILocation(line: 44, column: 14, scope: !4247)
!4260 = !DILocation(line: 44, column: 18, scope: !4247)
!4261 = !DILocation(line: 44, column: 2, scope: !4247)
!4262 = !DILocation(line: 45, column: 2, scope: !4247)
!4263 = !DILocation(line: 46, column: 8, scope: !4247)
!4264 = !DILocation(line: 46, column: 2, scope: !4247)
!4265 = !DILocation(line: 47, column: 1, scope: !4247)
!4266 = distinct !DISubprogram(name: "put_css_set", scope: !3196, file: !3196, line: 197, type: !4267, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4269)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{null, !2943}
!4269 = !{!4270, !4271, !4272, !4276}
!4270 = !DILocalVariable(name: "cset", arg: 1, scope: !4266, file: !3196, line: 197, type: !2943)
!4271 = !DILocalVariable(name: "flags", scope: !4266, file: !3196, line: 199, type: !47)
!4272 = !DILocalVariable(name: "__dummy", scope: !4273, file: !3196, line: 209, type: !47)
!4273 = distinct !DILexicalBlock(scope: !4274, file: !3196, line: 209, column: 2)
!4274 = distinct !DILexicalBlock(scope: !4275, file: !3196, line: 209, column: 2)
!4275 = distinct !DILexicalBlock(scope: !4266, file: !3196, line: 209, column: 2)
!4276 = !DILocalVariable(name: "__dummy2", scope: !4273, file: !3196, line: 209, type: !47)
!4277 = !DILocation(line: 197, column: 48, scope: !4266)
!4278 = !DILocation(line: 199, column: 2, scope: !4266)
!4279 = !DILocation(line: 199, column: 16, scope: !4266)
!4280 = !DILocation(line: 206, column: 28, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4266, file: !3196, line: 206, column: 6)
!4282 = !DILocation(line: 206, column: 34, scope: !4281)
!4283 = !DILocation(line: 206, column: 6, scope: !4281)
!4284 = !DILocation(line: 206, column: 6, scope: !4266)
!4285 = !DILocation(line: 207, column: 3, scope: !4281)
!4286 = !DILocation(line: 209, column: 2, scope: !4266)
!4287 = !DILocation(line: 209, column: 2, scope: !4275)
!4288 = !DILocation(line: 209, column: 2, scope: !4273)
!4289 = !DILocation(line: 209, column: 2, scope: !4274)
!4290 = !DILocation(line: 210, column: 21, scope: !4266)
!4291 = !DILocation(line: 210, column: 2, scope: !4266)
!4292 = !DILocation(line: 211, column: 40, scope: !4266)
!4293 = !DILocation(line: 211, column: 2, scope: !4266)
!4294 = !DILocation(line: 212, column: 1, scope: !4266)
!4295 = distinct !DISubprogram(name: "dec_cgroup_namespaces", scope: !3, file: !3, line: 17, type: !4296, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4298)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{null, !2929}
!4298 = !{!4299}
!4299 = !DILocalVariable(name: "ucounts", arg: 1, scope: !4295, file: !3, line: 17, type: !2929)
!4300 = !DILocation(line: 17, column: 51, scope: !4295)
!4301 = !DILocation(line: 19, column: 13, scope: !4295)
!4302 = !DILocation(line: 19, column: 2, scope: !4295)
!4303 = !DILocation(line: 20, column: 1, scope: !4295)
!4304 = distinct !DISubprogram(name: "put_user_ns", scope: !194, file: !194, line: 203, type: !4305, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4307)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{null, !475}
!4307 = !{!4308}
!4308 = !DILocalVariable(name: "ns", arg: 1, scope: !4304, file: !194, line: 203, type: !475)
!4309 = !DILocation(line: 203, column: 55, scope: !4304)
!4310 = !DILocation(line: 205, column: 1, scope: !4304)
!4311 = !DISubprogram(name: "proc_free_inum", scope: !515, file: !515, line: 54, type: !4312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4312 = !DISubroutineType(types: !4313)
!4313 = !{null, !7}
!4314 = !DISubprogram(name: "kfree", scope: !221, file: !221, line: 227, type: !4315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{null, !1329}
!4317 = distinct !DISubprogram(name: "copy_cgroup_ns", scope: !3, file: !3, line: 50, type: !4318, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4320)
!4318 = !DISubroutineType(types: !4319)
!4319 = !{!2922, !47, !475, !2922}
!4320 = !{!4321, !4322, !4323, !4324, !4325, !4326}
!4321 = !DILocalVariable(name: "flags", arg: 1, scope: !4317, file: !3, line: 50, type: !47)
!4322 = !DILocalVariable(name: "user_ns", arg: 2, scope: !4317, file: !3, line: 51, type: !475)
!4323 = !DILocalVariable(name: "old_ns", arg: 3, scope: !4317, file: !3, line: 52, type: !2922)
!4324 = !DILocalVariable(name: "new_ns", scope: !4317, file: !3, line: 54, type: !2922)
!4325 = !DILocalVariable(name: "ucounts", scope: !4317, file: !3, line: 55, type: !2929)
!4326 = !DILocalVariable(name: "cset", scope: !4317, file: !3, line: 56, type: !2943)
!4327 = !DILocation(line: 50, column: 55, scope: !4317)
!4328 = !DILocation(line: 51, column: 29, scope: !4317)
!4329 = !DILocation(line: 52, column: 31, scope: !4317)
!4330 = !DILocation(line: 54, column: 2, scope: !4317)
!4331 = !DILocation(line: 54, column: 27, scope: !4317)
!4332 = !DILocation(line: 55, column: 2, scope: !4317)
!4333 = !DILocation(line: 55, column: 18, scope: !4317)
!4334 = !DILocation(line: 56, column: 2, scope: !4317)
!4335 = !DILocation(line: 56, column: 18, scope: !4317)
!4336 = !DILocation(line: 58, column: 2, scope: !4317)
!4337 = !DILocation(line: 58, column: 2, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4339, file: !3, line: 58, column: 2)
!4339 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 58, column: 2)
!4340 = !DILocation(line: 58, column: 2, scope: !4339)
!4341 = !DILocation(line: 58, column: 2, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4338, file: !3, line: 58, column: 2)
!4343 = !DILocation(line: 58, column: 2, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4342, file: !3, line: 58, column: 2)
!4345 = !DILocation(line: 58, column: 2, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4342, file: !3, line: 58, column: 2)
!4347 = !{i64 2154380240, i64 2154380269, i64 2154380315, i64 2154380373, i64 2154380427, i64 2154380481, i64 2154380536, i64 2154380567}
!4348 = !DILocation(line: 60, column: 8, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 60, column: 6)
!4350 = !DILocation(line: 60, column: 14, scope: !4349)
!4351 = !DILocation(line: 60, column: 6, scope: !4317)
!4352 = !DILocation(line: 61, column: 17, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4349, file: !3, line: 60, column: 34)
!4354 = !DILocation(line: 61, column: 3, scope: !4353)
!4355 = !DILocation(line: 62, column: 10, scope: !4353)
!4356 = !DILocation(line: 62, column: 3, scope: !4353)
!4357 = !DILocation(line: 66, column: 18, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 66, column: 6)
!4359 = !DILocation(line: 66, column: 7, scope: !4358)
!4360 = !DILocation(line: 66, column: 6, scope: !4317)
!4361 = !DILocation(line: 67, column: 10, scope: !4358)
!4362 = !DILocation(line: 67, column: 3, scope: !4358)
!4363 = !DILocation(line: 69, column: 34, scope: !4317)
!4364 = !DILocation(line: 69, column: 12, scope: !4317)
!4365 = !DILocation(line: 69, column: 10, scope: !4317)
!4366 = !DILocation(line: 70, column: 7, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 70, column: 6)
!4368 = !DILocation(line: 70, column: 6, scope: !4317)
!4369 = !DILocation(line: 71, column: 10, scope: !4367)
!4370 = !DILocation(line: 71, column: 3, scope: !4367)
!4371 = !DILocation(line: 74, column: 2, scope: !4317)
!4372 = !DILocation(line: 75, column: 22, scope: !4317)
!4373 = !DILocation(line: 75, column: 9, scope: !4317)
!4374 = !DILocation(line: 75, column: 7, scope: !4317)
!4375 = !DILocation(line: 76, column: 14, scope: !4317)
!4376 = !DILocation(line: 76, column: 2, scope: !4317)
!4377 = !DILocation(line: 77, column: 2, scope: !4317)
!4378 = !DILocation(line: 79, column: 11, scope: !4317)
!4379 = !DILocation(line: 79, column: 9, scope: !4317)
!4380 = !DILocation(line: 80, column: 13, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 80, column: 6)
!4382 = !DILocation(line: 80, column: 6, scope: !4381)
!4383 = !DILocation(line: 80, column: 6, scope: !4317)
!4384 = !DILocation(line: 81, column: 15, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4381, file: !3, line: 80, column: 22)
!4386 = !DILocation(line: 81, column: 3, scope: !4385)
!4387 = !DILocation(line: 82, column: 25, scope: !4385)
!4388 = !DILocation(line: 82, column: 3, scope: !4385)
!4389 = !DILocation(line: 83, column: 10, scope: !4385)
!4390 = !DILocation(line: 83, column: 3, scope: !4385)
!4391 = !DILocation(line: 86, column: 32, scope: !4317)
!4392 = !DILocation(line: 86, column: 20, scope: !4317)
!4393 = !DILocation(line: 86, column: 2, scope: !4317)
!4394 = !DILocation(line: 86, column: 10, scope: !4317)
!4395 = !DILocation(line: 86, column: 18, scope: !4317)
!4396 = !DILocation(line: 87, column: 20, scope: !4317)
!4397 = !DILocation(line: 87, column: 2, scope: !4317)
!4398 = !DILocation(line: 87, column: 10, scope: !4317)
!4399 = !DILocation(line: 87, column: 18, scope: !4317)
!4400 = !DILocation(line: 88, column: 22, scope: !4317)
!4401 = !DILocation(line: 88, column: 2, scope: !4317)
!4402 = !DILocation(line: 88, column: 10, scope: !4317)
!4403 = !DILocation(line: 88, column: 20, scope: !4317)
!4404 = !DILocation(line: 90, column: 9, scope: !4317)
!4405 = !DILocation(line: 90, column: 2, scope: !4317)
!4406 = !DILocation(line: 91, column: 1, scope: !4317)
!4407 = distinct !DISubprogram(name: "get_cgroup_ns", scope: !2924, file: !2924, line: 803, type: !4248, scopeLine: 804, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4408)
!4408 = !{!4409}
!4409 = !DILocalVariable(name: "ns", arg: 1, scope: !4407, file: !2924, line: 803, type: !2922)
!4410 = !DILocation(line: 803, column: 59, scope: !4407)
!4411 = !DILocation(line: 805, column: 6, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4407, file: !2924, line: 805, column: 6)
!4413 = !DILocation(line: 805, column: 6, scope: !4407)
!4414 = !DILocation(line: 806, column: 17, scope: !4412)
!4415 = !DILocation(line: 806, column: 21, scope: !4412)
!4416 = !DILocation(line: 806, column: 24, scope: !4412)
!4417 = !DILocation(line: 806, column: 3, scope: !4412)
!4418 = !DILocation(line: 807, column: 1, scope: !4407)
!4419 = !DISubprogram(name: "ns_capable", scope: !269, file: !269, line: 149, type: !4420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4420 = !DISubroutineType(types: !4421)
!4421 = !{!383, !475, !30}
!4422 = distinct !DISubprogram(name: "ERR_PTR", scope: !4423, file: !4423, line: 39, type: !4424, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4426)
!4423 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4424 = !DISubroutineType(types: !4425)
!4425 = !{!28, !1098}
!4426 = !{!4427}
!4427 = !DILocalVariable(name: "error", arg: 1, scope: !4422, file: !4423, line: 39, type: !1098)
!4428 = !DILocation(line: 39, column: 48, scope: !4422)
!4429 = !DILocation(line: 41, column: 18, scope: !4422)
!4430 = !DILocation(line: 41, column: 9, scope: !4422)
!4431 = !DILocation(line: 41, column: 2, scope: !4422)
!4432 = distinct !DISubprogram(name: "inc_cgroup_namespaces", scope: !3, file: !3, line: 12, type: !4433, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4435)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{!2929, !475}
!4435 = !{!4436}
!4436 = !DILocalVariable(name: "ns", arg: 1, scope: !4432, file: !3, line: 12, type: !475)
!4437 = !DILocation(line: 12, column: 69, scope: !4432)
!4438 = !DILocation(line: 14, column: 20, scope: !4432)
!4439 = !DILocation(line: 14, column: 24, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4441, file: !3, line: 14, column: 24)
!4441 = distinct !DILexicalBlock(scope: !4432, file: !3, line: 14, column: 24)
!4442 = !DILocation(line: 14, column: 24, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 14, column: 24)
!4444 = !DILocation(line: 14, column: 24, scope: !4441)
!4445 = !DILocation(line: 14, column: 9, scope: !4432)
!4446 = !DILocation(line: 14, column: 2, scope: !4432)
!4447 = distinct !DISubprogram(name: "spin_lock_irq", scope: !4448, file: !4448, line: 374, type: !4449, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4451)
!4448 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!4449 = !DISubroutineType(types: !4450)
!4450 = !{null, !2182}
!4451 = !{!4452}
!4452 = !DILocalVariable(name: "lock", arg: 1, scope: !4447, file: !4448, line: 374, type: !2182)
!4453 = !DILocation(line: 374, column: 55, scope: !4447)
!4454 = !DILocation(line: 376, column: 2, scope: !4447)
!4455 = !DILocation(line: 377, column: 1, scope: !4447)
!4456 = distinct !DISubprogram(name: "task_css_set", scope: !2924, file: !2924, line: 421, type: !4457, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4459)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!2943, !525}
!4459 = !{!4460, !4461}
!4460 = !DILocalVariable(name: "task", arg: 1, scope: !4456, file: !2924, line: 421, type: !525)
!4461 = !DILocalVariable(name: "__UNIQUE_ID_rcu258", scope: !4462, file: !2924, line: 423, type: !2943)
!4462 = distinct !DILexicalBlock(scope: !4456, file: !2924, line: 423, column: 9)
!4463 = !DILocation(line: 421, column: 64, scope: !4456)
!4464 = !DILocation(line: 423, column: 9, scope: !4462)
!4465 = !DILocation(line: 423, column: 9, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4462, file: !2924, line: 423, column: 9)
!4467 = !DILocation(line: 423, column: 9, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4466, file: !2924, line: 423, column: 9)
!4469 = !DILocation(line: 423, column: 9, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4462, file: !2924, line: 423, column: 9)
!4471 = !DILocation(line: 423, column: 9, scope: !4456)
!4472 = !DILocation(line: 423, column: 2, scope: !4456)
!4473 = distinct !DISubprogram(name: "get_current", scope: !4474, file: !4474, line: 39, type: !4475, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4477)
!4474 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!4475 = !DISubroutineType(types: !4476)
!4476 = !{!525}
!4477 = !{!4478, !4480, !4482}
!4478 = !DILocalVariable(name: "pscr_ret__", scope: !4479, file: !4474, line: 41, type: !525)
!4479 = distinct !DILexicalBlock(scope: !4473, file: !4474, line: 41, column: 9)
!4480 = !DILocalVariable(name: "__vpp_verify", scope: !4481, file: !4474, line: 41, type: !1329)
!4481 = distinct !DILexicalBlock(scope: !4479, file: !4474, line: 41, column: 9)
!4482 = !DILocalVariable(name: "pfo_val__", scope: !4483, file: !4474, line: 41, type: !273)
!4483 = distinct !DILexicalBlock(scope: !4479, file: !4474, line: 41, column: 9)
!4484 = !DILocation(line: 41, column: 9, scope: !4479)
!4485 = !DILocation(line: 41, column: 9, scope: !4481)
!4486 = !DILocation(line: 41, column: 9, scope: !4483)
!4487 = !{i64 2148228483}
!4488 = !DILocation(line: 41, column: 9, scope: !4473)
!4489 = !DILocation(line: 41, column: 2, scope: !4473)
!4490 = distinct !DISubprogram(name: "get_css_set", scope: !3196, file: !3196, line: 217, type: !4267, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4491)
!4491 = !{!4492}
!4492 = !DILocalVariable(name: "cset", arg: 1, scope: !4490, file: !3196, line: 217, type: !2943)
!4493 = !DILocation(line: 217, column: 48, scope: !4490)
!4494 = !DILocation(line: 219, column: 16, scope: !4490)
!4495 = !DILocation(line: 219, column: 22, scope: !4490)
!4496 = !DILocation(line: 219, column: 2, scope: !4490)
!4497 = !DILocation(line: 220, column: 1, scope: !4490)
!4498 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !4448, file: !4448, line: 399, type: !4449, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4499)
!4499 = !{!4500}
!4500 = !DILocalVariable(name: "lock", arg: 1, scope: !4498, file: !4448, line: 399, type: !2182)
!4501 = !DILocation(line: 399, column: 57, scope: !4498)
!4502 = !DILocation(line: 401, column: 2, scope: !4498)
!4503 = !DILocation(line: 402, column: 1, scope: !4498)
!4504 = distinct !DISubprogram(name: "alloc_cgroup_ns", scope: !3, file: !3, line: 22, type: !4505, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4507)
!4505 = !DISubroutineType(types: !4506)
!4506 = !{!2922}
!4507 = !{!4508, !4509}
!4508 = !DILocalVariable(name: "new_ns", scope: !4504, file: !3, line: 24, type: !2922)
!4509 = !DILocalVariable(name: "ret", scope: !4504, file: !3, line: 25, type: !30)
!4510 = !DILocation(line: 24, column: 2, scope: !4504)
!4511 = !DILocation(line: 24, column: 27, scope: !4504)
!4512 = !DILocation(line: 25, column: 2, scope: !4504)
!4513 = !DILocation(line: 25, column: 6, scope: !4504)
!4514 = !DILocation(line: 27, column: 11, scope: !4504)
!4515 = !DILocation(line: 27, column: 9, scope: !4504)
!4516 = !DILocation(line: 28, column: 7, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4504, file: !3, line: 28, column: 6)
!4518 = !DILocation(line: 28, column: 6, scope: !4504)
!4519 = !DILocation(line: 29, column: 10, scope: !4517)
!4520 = !DILocation(line: 29, column: 3, scope: !4517)
!4521 = !DILocation(line: 30, column: 23, scope: !4504)
!4522 = !DILocation(line: 30, column: 31, scope: !4504)
!4523 = !DILocation(line: 30, column: 8, scope: !4504)
!4524 = !DILocation(line: 30, column: 6, scope: !4504)
!4525 = !DILocation(line: 31, column: 6, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4504, file: !3, line: 31, column: 6)
!4527 = !DILocation(line: 31, column: 6, scope: !4504)
!4528 = !DILocation(line: 32, column: 9, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 31, column: 11)
!4530 = !DILocation(line: 32, column: 3, scope: !4529)
!4531 = !DILocation(line: 33, column: 18, scope: !4529)
!4532 = !DILocation(line: 33, column: 10, scope: !4529)
!4533 = !DILocation(line: 33, column: 3, scope: !4529)
!4534 = !DILocation(line: 35, column: 16, scope: !4504)
!4535 = !DILocation(line: 35, column: 24, scope: !4504)
!4536 = !DILocation(line: 35, column: 27, scope: !4504)
!4537 = !DILocation(line: 35, column: 2, scope: !4504)
!4538 = !DILocation(line: 36, column: 2, scope: !4504)
!4539 = !DILocation(line: 36, column: 10, scope: !4504)
!4540 = !DILocation(line: 36, column: 13, scope: !4504)
!4541 = !DILocation(line: 36, column: 17, scope: !4504)
!4542 = !DILocation(line: 37, column: 9, scope: !4504)
!4543 = !DILocation(line: 37, column: 2, scope: !4504)
!4544 = !DILocation(line: 38, column: 1, scope: !4504)
!4545 = distinct !DISubprogram(name: "IS_ERR", scope: !4423, file: !4423, line: 59, type: !4546, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4548)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{!383, !1329}
!4548 = !{!4549}
!4549 = !DILocalVariable(name: "ptr", arg: 1, scope: !4545, file: !4423, line: 59, type: !1329)
!4550 = !DILocation(line: 59, column: 60, scope: !4545)
!4551 = !DILocation(line: 61, column: 9, scope: !4545)
!4552 = !DILocation(line: 61, column: 2, scope: !4545)
!4553 = distinct !DISubprogram(name: "get_user_ns", scope: !194, file: !194, line: 185, type: !4554, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4556)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{!475, !475}
!4556 = !{!4557}
!4557 = !DILocalVariable(name: "ns", arg: 1, scope: !4553, file: !194, line: 185, type: !475)
!4558 = !DILocation(line: 185, column: 73, scope: !4553)
!4559 = !DILocation(line: 187, column: 2, scope: !4553)
!4560 = distinct !DISubprogram(name: "cgroupns_get", scope: !3, file: !3, line: 118, type: !522, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4561)
!4561 = !{!4562, !4563, !4564}
!4562 = !DILocalVariable(name: "task", arg: 1, scope: !4560, file: !3, line: 118, type: !525)
!4563 = !DILocalVariable(name: "ns", scope: !4560, file: !3, line: 120, type: !2922)
!4564 = !DILocalVariable(name: "nsproxy", scope: !4560, file: !3, line: 121, type: !2901)
!4565 = !DILocation(line: 118, column: 59, scope: !4560)
!4566 = !DILocation(line: 120, column: 2, scope: !4560)
!4567 = !DILocation(line: 120, column: 27, scope: !4560)
!4568 = !DILocation(line: 121, column: 2, scope: !4560)
!4569 = !DILocation(line: 121, column: 18, scope: !4560)
!4570 = !DILocation(line: 123, column: 12, scope: !4560)
!4571 = !DILocation(line: 123, column: 2, scope: !4560)
!4572 = !DILocation(line: 124, column: 12, scope: !4560)
!4573 = !DILocation(line: 124, column: 18, scope: !4560)
!4574 = !DILocation(line: 124, column: 10, scope: !4560)
!4575 = !DILocation(line: 125, column: 6, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4560, file: !3, line: 125, column: 6)
!4577 = !DILocation(line: 125, column: 6, scope: !4560)
!4578 = !DILocation(line: 126, column: 8, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4576, file: !3, line: 125, column: 15)
!4580 = !DILocation(line: 126, column: 17, scope: !4579)
!4581 = !DILocation(line: 126, column: 6, scope: !4579)
!4582 = !DILocation(line: 127, column: 17, scope: !4579)
!4583 = !DILocation(line: 127, column: 3, scope: !4579)
!4584 = !DILocation(line: 128, column: 2, scope: !4579)
!4585 = !DILocation(line: 129, column: 14, scope: !4560)
!4586 = !DILocation(line: 129, column: 2, scope: !4560)
!4587 = !DILocation(line: 131, column: 9, scope: !4560)
!4588 = !DILocation(line: 131, column: 15, scope: !4560)
!4589 = !DILocation(line: 131, column: 19, scope: !4560)
!4590 = !DILocation(line: 132, column: 1, scope: !4560)
!4591 = !DILocation(line: 131, column: 2, scope: !4560)
!4592 = distinct !DISubprogram(name: "cgroupns_put", scope: !3, file: !3, line: 134, type: !4104, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4593)
!4593 = !{!4594}
!4594 = !DILocalVariable(name: "ns", arg: 1, scope: !4592, file: !3, line: 134, type: !524)
!4595 = !DILocation(line: 134, column: 44, scope: !4592)
!4596 = !DILocation(line: 136, column: 25, scope: !4592)
!4597 = !DILocation(line: 136, column: 16, scope: !4592)
!4598 = !DILocation(line: 136, column: 2, scope: !4592)
!4599 = !DILocation(line: 137, column: 1, scope: !4592)
!4600 = distinct !DISubprogram(name: "cgroupns_install", scope: !3, file: !3, line: 98, type: !4108, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4601)
!4601 = !{!4602, !4603, !4604, !4605}
!4602 = !DILocalVariable(name: "nsset", arg: 1, scope: !4600, file: !3, line: 98, type: !4110)
!4603 = !DILocalVariable(name: "ns", arg: 2, scope: !4600, file: !3, line: 98, type: !524)
!4604 = !DILocalVariable(name: "nsproxy", scope: !4600, file: !3, line: 100, type: !2901)
!4605 = !DILocalVariable(name: "cgroup_ns", scope: !4600, file: !3, line: 101, type: !2922)
!4606 = !DILocation(line: 98, column: 43, scope: !4600)
!4607 = !DILocation(line: 98, column: 68, scope: !4600)
!4608 = !DILocation(line: 100, column: 2, scope: !4600)
!4609 = !DILocation(line: 100, column: 18, scope: !4600)
!4610 = !DILocation(line: 100, column: 28, scope: !4600)
!4611 = !DILocation(line: 100, column: 35, scope: !4600)
!4612 = !DILocation(line: 101, column: 2, scope: !4600)
!4613 = !DILocation(line: 101, column: 27, scope: !4600)
!4614 = !DILocation(line: 101, column: 48, scope: !4600)
!4615 = !DILocation(line: 101, column: 39, scope: !4600)
!4616 = !DILocation(line: 103, column: 18, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4600, file: !3, line: 103, column: 6)
!4618 = !DILocation(line: 103, column: 25, scope: !4617)
!4619 = !DILocation(line: 103, column: 31, scope: !4617)
!4620 = !DILocation(line: 103, column: 7, scope: !4617)
!4621 = !DILocation(line: 103, column: 55, scope: !4617)
!4622 = !DILocation(line: 104, column: 18, scope: !4617)
!4623 = !DILocation(line: 104, column: 29, scope: !4617)
!4624 = !DILocation(line: 104, column: 7, scope: !4617)
!4625 = !DILocation(line: 103, column: 6, scope: !4600)
!4626 = !DILocation(line: 105, column: 3, scope: !4617)
!4627 = !DILocation(line: 108, column: 6, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4600, file: !3, line: 108, column: 6)
!4629 = !DILocation(line: 108, column: 19, scope: !4628)
!4630 = !DILocation(line: 108, column: 28, scope: !4628)
!4631 = !DILocation(line: 108, column: 16, scope: !4628)
!4632 = !DILocation(line: 108, column: 6, scope: !4600)
!4633 = !DILocation(line: 109, column: 3, scope: !4628)
!4634 = !DILocation(line: 111, column: 16, scope: !4600)
!4635 = !DILocation(line: 111, column: 2, scope: !4600)
!4636 = !DILocation(line: 112, column: 16, scope: !4600)
!4637 = !DILocation(line: 112, column: 25, scope: !4600)
!4638 = !DILocation(line: 112, column: 2, scope: !4600)
!4639 = !DILocation(line: 113, column: 23, scope: !4600)
!4640 = !DILocation(line: 113, column: 2, scope: !4600)
!4641 = !DILocation(line: 113, column: 11, scope: !4600)
!4642 = !DILocation(line: 113, column: 21, scope: !4600)
!4643 = !DILocation(line: 115, column: 2, scope: !4600)
!4644 = !DILocation(line: 116, column: 1, scope: !4600)
!4645 = distinct !DISubprogram(name: "cgroupns_owner", scope: !3, file: !3, line: 139, type: !4119, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4646)
!4646 = !{!4647}
!4647 = !DILocalVariable(name: "ns", arg: 1, scope: !4645, file: !3, line: 139, type: !524)
!4648 = !DILocation(line: 139, column: 64, scope: !4645)
!4649 = !DILocation(line: 141, column: 18, scope: !4645)
!4650 = !DILocation(line: 141, column: 9, scope: !4645)
!4651 = !DILocation(line: 141, column: 23, scope: !4645)
!4652 = !DILocation(line: 141, column: 2, scope: !4645)
!4653 = !DISubprogram(name: "refcount_dec_not_one", scope: !208, file: !208, line: 363, type: !4654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{!383, !4656}
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!4657 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !4658, file: !4658, line: 32, type: !4659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4658 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!4659 = !DISubroutineType(types: !4660)
!4660 = !{!47, !4661}
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!4662 = distinct !DISubprogram(name: "spinlock_check", scope: !4448, file: !4448, line: 324, type: !4663, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4665)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!4661, !2182}
!4665 = !{!4666}
!4666 = !DILocalVariable(name: "lock", arg: 1, scope: !4662, file: !4448, line: 324, type: !2182)
!4667 = !DILocation(line: 324, column: 67, scope: !4662)
!4668 = !DILocation(line: 326, column: 10, scope: !4662)
!4669 = !DILocation(line: 326, column: 16, scope: !4662)
!4670 = !DILocation(line: 326, column: 2, scope: !4662)
!4671 = !DISubprogram(name: "put_css_set_locked", scope: !3196, file: !3196, line: 195, type: !4267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4672 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4448, file: !4448, line: 404, type: !4673, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4675)
!4673 = !DISubroutineType(types: !4674)
!4674 = !{null, !2182, !47}
!4675 = !{!4676, !4677, !4678, !4681}
!4676 = !DILocalVariable(name: "lock", arg: 1, scope: !4672, file: !4448, line: 404, type: !2182)
!4677 = !DILocalVariable(name: "flags", arg: 2, scope: !4672, file: !4448, line: 404, type: !47)
!4678 = !DILocalVariable(name: "__dummy", scope: !4679, file: !4448, line: 406, type: !47)
!4679 = distinct !DILexicalBlock(scope: !4680, file: !4448, line: 406, column: 2)
!4680 = distinct !DILexicalBlock(scope: !4672, file: !4448, line: 406, column: 2)
!4681 = !DILocalVariable(name: "__dummy2", scope: !4679, file: !4448, line: 406, type: !47)
!4682 = !DILocation(line: 404, column: 64, scope: !4672)
!4683 = !DILocation(line: 404, column: 84, scope: !4672)
!4684 = !DILocation(line: 406, column: 2, scope: !4672)
!4685 = !DILocation(line: 406, column: 2, scope: !4679)
!4686 = !DILocation(line: 406, column: 2, scope: !4680)
!4687 = !DILocation(line: 407, column: 1, scope: !4672)
!4688 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !4658, file: !4658, line: 43, type: !4689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{null, !4661, !47}
!4691 = !DISubprogram(name: "dec_ucount", scope: !194, file: !194, line: 122, type: !4692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{null, !2929, !193}
!4694 = distinct !DISubprogram(name: "refcount_inc", scope: !208, file: !208, line: 265, type: !4695, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4697)
!4695 = !DISubroutineType(types: !4696)
!4696 = !{null, !4656}
!4697 = !{!4698}
!4698 = !DILocalVariable(name: "r", arg: 1, scope: !4694, file: !208, line: 265, type: !4656)
!4699 = !DILocation(line: 265, column: 45, scope: !4694)
!4700 = !DILocation(line: 267, column: 17, scope: !4694)
!4701 = !DILocation(line: 267, column: 2, scope: !4694)
!4702 = !DILocation(line: 268, column: 1, scope: !4694)
!4703 = distinct !DISubprogram(name: "__refcount_inc", scope: !208, file: !208, line: 248, type: !4704, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4706)
!4704 = !DISubroutineType(types: !4705)
!4705 = !{null, !4656, !1407}
!4706 = !{!4707, !4708}
!4707 = !DILocalVariable(name: "r", arg: 1, scope: !4703, file: !208, line: 248, type: !4656)
!4708 = !DILocalVariable(name: "oldp", arg: 2, scope: !4703, file: !208, line: 248, type: !1407)
!4709 = !DILocation(line: 248, column: 47, scope: !4703)
!4710 = !DILocation(line: 248, column: 55, scope: !4703)
!4711 = !DILocation(line: 250, column: 20, scope: !4703)
!4712 = !DILocation(line: 250, column: 23, scope: !4703)
!4713 = !DILocation(line: 250, column: 2, scope: !4703)
!4714 = !DILocation(line: 251, column: 1, scope: !4703)
!4715 = distinct !DISubprogram(name: "__refcount_add", scope: !208, file: !208, line: 191, type: !4716, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4718)
!4716 = !DISubroutineType(types: !4717)
!4717 = !{null, !30, !4656, !1407}
!4718 = !{!4719, !4720, !4721, !4722}
!4719 = !DILocalVariable(name: "i", arg: 1, scope: !4715, file: !208, line: 191, type: !30)
!4720 = !DILocalVariable(name: "r", arg: 2, scope: !4715, file: !208, line: 191, type: !4656)
!4721 = !DILocalVariable(name: "oldp", arg: 3, scope: !4715, file: !208, line: 191, type: !1407)
!4722 = !DILocalVariable(name: "old", scope: !4715, file: !208, line: 193, type: !30)
!4723 = !DILocation(line: 191, column: 39, scope: !4715)
!4724 = !DILocation(line: 191, column: 54, scope: !4715)
!4725 = !DILocation(line: 191, column: 62, scope: !4715)
!4726 = !DILocation(line: 193, column: 2, scope: !4715)
!4727 = !DILocation(line: 193, column: 6, scope: !4715)
!4728 = !DILocation(line: 193, column: 37, scope: !4715)
!4729 = !DILocation(line: 193, column: 41, scope: !4715)
!4730 = !DILocation(line: 193, column: 44, scope: !4715)
!4731 = !DILocation(line: 193, column: 12, scope: !4715)
!4732 = !DILocation(line: 195, column: 6, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4715, file: !208, line: 195, column: 6)
!4734 = !DILocation(line: 195, column: 6, scope: !4715)
!4735 = !DILocation(line: 196, column: 11, scope: !4733)
!4736 = !DILocation(line: 196, column: 4, scope: !4733)
!4737 = !DILocation(line: 196, column: 9, scope: !4733)
!4738 = !DILocation(line: 196, column: 3, scope: !4733)
!4739 = !DILocation(line: 198, column: 6, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4715, file: !208, line: 198, column: 6)
!4741 = !DILocation(line: 198, column: 6, scope: !4715)
!4742 = !DILocation(line: 199, column: 26, scope: !4740)
!4743 = !DILocation(line: 199, column: 3, scope: !4740)
!4744 = !DILocation(line: 200, column: 11, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4740, file: !208, line: 200, column: 11)
!4746 = !DILocation(line: 200, column: 11, scope: !4740)
!4747 = !DILocation(line: 201, column: 26, scope: !4745)
!4748 = !DILocation(line: 201, column: 3, scope: !4745)
!4749 = !DILocation(line: 202, column: 1, scope: !4715)
!4750 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !4751, file: !4751, line: 250, type: !4752, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4755)
!4751 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!4752 = !DISubroutineType(types: !4753)
!4753 = !{!30, !30, !4754}
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!4755 = !{!4756, !4757}
!4756 = !DILocalVariable(name: "i", arg: 1, scope: !4750, file: !4751, line: 250, type: !30)
!4757 = !DILocalVariable(name: "v", arg: 2, scope: !4750, file: !4751, line: 250, type: !4754)
!4758 = !DILocation(line: 250, column: 30, scope: !4750)
!4759 = !DILocation(line: 250, column: 43, scope: !4750)
!4760 = !DILocation(line: 252, column: 31, scope: !4750)
!4761 = !DILocation(line: 252, column: 2, scope: !4750)
!4762 = !DILocation(line: 253, column: 38, scope: !4750)
!4763 = !DILocation(line: 253, column: 41, scope: !4750)
!4764 = !DILocation(line: 253, column: 9, scope: !4750)
!4765 = !DILocation(line: 253, column: 2, scope: !4750)
!4766 = !DISubprogram(name: "refcount_warn_saturate", scope: !208, file: !208, line: 127, type: !4767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4767 = !DISubroutineType(types: !4768)
!4768 = !{null, !4656, !207}
!4769 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4770, file: !4770, line: 94, type: !4771, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4776)
!4770 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4771 = !DISubroutineType(types: !4772)
!4772 = !{null, !4773, !43}
!4773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4774, size: 64)
!4774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4775)
!4775 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4776 = !{!4777, !4778}
!4777 = !DILocalVariable(name: "v", arg: 1, scope: !4769, file: !4770, line: 94, type: !4773)
!4778 = !DILocalVariable(name: "size", arg: 2, scope: !4769, file: !4770, line: 94, type: !43)
!4779 = !DILocation(line: 94, column: 79, scope: !4769)
!4780 = !DILocation(line: 94, column: 89, scope: !4769)
!4781 = !DILocation(line: 96, column: 20, scope: !4769)
!4782 = !DILocation(line: 96, column: 23, scope: !4769)
!4783 = !DILocation(line: 96, column: 2, scope: !4769)
!4784 = !DILocation(line: 97, column: 2, scope: !4769)
!4785 = !DILocation(line: 98, column: 1, scope: !4769)
!4786 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !4787, file: !4787, line: 731, type: !4752, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4788)
!4787 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!4788 = !{!4789, !4790}
!4789 = !DILocalVariable(name: "i", arg: 1, scope: !4786, file: !4787, line: 731, type: !30)
!4790 = !DILocalVariable(name: "v", arg: 2, scope: !4786, file: !4787, line: 731, type: !4754)
!4791 = !DILocation(line: 731, column: 34, scope: !4786)
!4792 = !DILocation(line: 731, column: 47, scope: !4786)
!4793 = !DILocation(line: 736, column: 31, scope: !4786)
!4794 = !DILocation(line: 736, column: 34, scope: !4786)
!4795 = !DILocation(line: 736, column: 9, scope: !4786)
!4796 = !DILocation(line: 736, column: 2, scope: !4786)
!4797 = distinct !DISubprogram(name: "kasan_check_write", scope: !4798, file: !4798, line: 44, type: !4799, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4801)
!4798 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4799 = !DISubroutineType(types: !4800)
!4800 = !{!383, !4773, !7}
!4801 = !{!4802, !4803}
!4802 = !DILocalVariable(name: "p", arg: 1, scope: !4797, file: !4798, line: 44, type: !4773)
!4803 = !DILocalVariable(name: "size", arg: 2, scope: !4797, file: !4798, line: 44, type: !7)
!4804 = !DILocation(line: 44, column: 59, scope: !4797)
!4805 = !DILocation(line: 44, column: 75, scope: !4797)
!4806 = !DILocation(line: 46, column: 2, scope: !4797)
!4807 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4808, file: !4808, line: 229, type: !4809, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4811)
!4808 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4809 = !DISubroutineType(types: !4810)
!4810 = !{null, !4773, !43, !30}
!4811 = !{!4812, !4813, !4814}
!4812 = !DILocalVariable(name: "ptr", arg: 1, scope: !4807, file: !4808, line: 229, type: !4773)
!4813 = !DILocalVariable(name: "size", arg: 2, scope: !4807, file: !4808, line: 229, type: !43)
!4814 = !DILocalVariable(name: "type", arg: 3, scope: !4807, file: !4808, line: 230, type: !30)
!4815 = !DILocation(line: 229, column: 60, scope: !4807)
!4816 = !DILocation(line: 229, column: 72, scope: !4807)
!4817 = !DILocation(line: 230, column: 15, scope: !4807)
!4818 = !DILocation(line: 230, column: 23, scope: !4807)
!4819 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !4820, file: !4820, line: 95, type: !4752, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4821)
!4820 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!4821 = !{!4822, !4823, !4824}
!4822 = !DILocalVariable(name: "i", arg: 1, scope: !4819, file: !4820, line: 95, type: !30)
!4823 = !DILocalVariable(name: "v", arg: 2, scope: !4819, file: !4820, line: 95, type: !4754)
!4824 = !DILocalVariable(name: "__ret", scope: !4825, file: !4820, line: 97, type: !30)
!4825 = distinct !DILexicalBlock(scope: !4819, file: !4820, line: 97, column: 9)
!4826 = !DILocation(line: 95, column: 54, scope: !4819)
!4827 = !DILocation(line: 95, column: 67, scope: !4819)
!4828 = !DILocation(line: 97, column: 9, scope: !4825)
!4829 = !{i64 2148445987, i64 2148446026, i64 2148446047, i64 2148446084, i64 2148446107, i64 2148446116}
!4830 = !DILocation(line: 97, column: 9, scope: !4819)
!4831 = !DILocation(line: 97, column: 2, scope: !4819)
!4832 = !DISubprogram(name: "inc_ucount", scope: !194, file: !194, line: 121, type: !4833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4833 = !DISubroutineType(types: !4834)
!4834 = !{!2929, !475, !246, !193}
!4835 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !4658, file: !4658, line: 29, type: !4836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4836 = !DISubroutineType(types: !4837)
!4837 = !{null, !4661}
!4838 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !4658, file: !4658, line: 41, type: !4836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4839 = distinct !DISubprogram(name: "kzalloc", scope: !221, file: !221, line: 719, type: !4840, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4842)
!4840 = !DISubroutineType(types: !4841)
!4841 = !{!28, !43, !1189}
!4842 = !{!4843, !4844}
!4843 = !DILocalVariable(name: "size", arg: 1, scope: !4839, file: !221, line: 719, type: !43)
!4844 = !DILocalVariable(name: "flags", arg: 2, scope: !4839, file: !221, line: 719, type: !1189)
!4845 = !DILocation(line: 719, column: 52, scope: !4839)
!4846 = !DILocation(line: 719, column: 64, scope: !4839)
!4847 = !DILocation(line: 721, column: 17, scope: !4839)
!4848 = !DILocation(line: 721, column: 23, scope: !4839)
!4849 = !DILocation(line: 721, column: 29, scope: !4839)
!4850 = !DILocation(line: 721, column: 9, scope: !4839)
!4851 = !DILocation(line: 721, column: 2, scope: !4839)
!4852 = distinct !DISubprogram(name: "ns_alloc_inum", scope: !515, file: !515, line: 67, type: !4853, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4855)
!4853 = !DISubroutineType(types: !4854)
!4854 = !{!30, !524}
!4855 = !{!4856}
!4856 = !DILocalVariable(name: "ns", arg: 1, scope: !4852, file: !515, line: 67, type: !524)
!4857 = !DILocation(line: 67, column: 51, scope: !4852)
!4858 = !DILocation(line: 69, column: 19, scope: !4852)
!4859 = !DILocation(line: 69, column: 23, scope: !4852)
!4860 = !DILocation(line: 69, column: 2, scope: !4852)
!4861 = !DILocation(line: 70, column: 26, scope: !4852)
!4862 = !DILocation(line: 70, column: 30, scope: !4852)
!4863 = !DILocation(line: 70, column: 9, scope: !4852)
!4864 = !DILocation(line: 70, column: 2, scope: !4852)
!4865 = distinct !DISubprogram(name: "refcount_set", scope: !208, file: !208, line: 134, type: !4866, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4868)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{null, !4656, !30}
!4868 = !{!4869, !4870}
!4869 = !DILocalVariable(name: "r", arg: 1, scope: !4865, file: !208, line: 134, type: !4656)
!4870 = !DILocalVariable(name: "n", arg: 2, scope: !4865, file: !208, line: 134, type: !30)
!4871 = !DILocation(line: 134, column: 45, scope: !4865)
!4872 = !DILocation(line: 134, column: 52, scope: !4865)
!4873 = !DILocation(line: 136, column: 14, scope: !4865)
!4874 = !DILocation(line: 136, column: 17, scope: !4865)
!4875 = !DILocation(line: 136, column: 23, scope: !4865)
!4876 = !DILocation(line: 136, column: 2, scope: !4865)
!4877 = !DILocation(line: 137, column: 1, scope: !4865)
!4878 = distinct !DISubprogram(name: "kmalloc", scope: !221, file: !221, line: 591, type: !4840, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4879)
!4879 = !{!4880, !4881, !4882}
!4880 = !DILocalVariable(name: "size", arg: 1, scope: !4878, file: !221, line: 591, type: !43)
!4881 = !DILocalVariable(name: "flags", arg: 2, scope: !4878, file: !221, line: 591, type: !1189)
!4882 = !DILocalVariable(name: "index", scope: !4883, file: !221, line: 594, type: !7)
!4883 = distinct !DILexicalBlock(scope: !4884, file: !221, line: 593, column: 42)
!4884 = distinct !DILexicalBlock(scope: !4878, file: !221, line: 593, column: 6)
!4885 = !DILocation(line: 591, column: 61, scope: !4878)
!4886 = !DILocation(line: 591, column: 73, scope: !4878)
!4887 = !DILocation(line: 593, column: 27, scope: !4884)
!4888 = !DILocation(line: 593, column: 6, scope: !4884)
!4889 = !DILocation(line: 593, column: 33, scope: !4884)
!4890 = !DILocation(line: 593, column: 36, scope: !4884)
!4891 = !DILocation(line: 593, column: 6, scope: !4878)
!4892 = !DILocation(line: 594, column: 3, scope: !4883)
!4893 = !DILocation(line: 594, column: 16, scope: !4883)
!4894 = !DILocation(line: 596, column: 7, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4883, file: !221, line: 596, column: 7)
!4896 = !DILocation(line: 596, column: 12, scope: !4895)
!4897 = !DILocation(line: 596, column: 7, scope: !4883)
!4898 = !DILocation(line: 597, column: 25, scope: !4895)
!4899 = !DILocation(line: 597, column: 31, scope: !4895)
!4900 = !DILocation(line: 597, column: 11, scope: !4895)
!4901 = !DILocation(line: 597, column: 4, scope: !4895)
!4902 = !DILocation(line: 599, column: 11, scope: !4883)
!4903 = !DILocation(line: 599, column: 9, scope: !4883)
!4904 = !DILocation(line: 601, column: 33, scope: !4883)
!4905 = !DILocation(line: 601, column: 40, scope: !4883)
!4906 = !DILocation(line: 601, column: 20, scope: !4883)
!4907 = !DILocation(line: 601, column: 5, scope: !4883)
!4908 = !DILocation(line: 601, column: 51, scope: !4883)
!4909 = !DILocation(line: 602, column: 5, scope: !4883)
!4910 = !DILocation(line: 602, column: 12, scope: !4883)
!4911 = !DILocation(line: 600, column: 10, scope: !4883)
!4912 = !DILocation(line: 600, column: 3, scope: !4883)
!4913 = !DILocation(line: 603, column: 2, scope: !4884)
!4914 = !DILocation(line: 604, column: 19, scope: !4878)
!4915 = !DILocation(line: 604, column: 25, scope: !4878)
!4916 = !DILocation(line: 604, column: 9, scope: !4878)
!4917 = !DILocation(line: 604, column: 2, scope: !4878)
!4918 = !DILocation(line: 605, column: 1, scope: !4878)
!4919 = !DISubprogram(name: "kmalloc_large", scope: !221, file: !221, line: 531, type: !4840, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4920 = distinct !DISubprogram(name: "__kmalloc_index", scope: !221, file: !221, line: 444, type: !4921, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4923)
!4921 = !DISubroutineType(types: !4922)
!4922 = !{!7, !43, !383}
!4923 = !{!4924, !4925}
!4924 = !DILocalVariable(name: "size", arg: 1, scope: !4920, file: !221, line: 444, type: !43)
!4925 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !4920, file: !221, line: 445, type: !383)
!4926 = !DILocation(line: 444, column: 60, scope: !4920)
!4927 = !DILocation(line: 445, column: 16, scope: !4920)
!4928 = !DILocation(line: 447, column: 7, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4920, file: !221, line: 447, column: 6)
!4930 = !DILocation(line: 447, column: 6, scope: !4920)
!4931 = !DILocation(line: 448, column: 3, scope: !4929)
!4932 = !DILocation(line: 450, column: 6, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4920, file: !221, line: 450, column: 6)
!4934 = !DILocation(line: 450, column: 11, scope: !4933)
!4935 = !DILocation(line: 450, column: 6, scope: !4920)
!4936 = !DILocation(line: 451, column: 3, scope: !4933)
!4937 = !DILocation(line: 453, column: 32, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4920, file: !221, line: 453, column: 6)
!4939 = !DILocation(line: 453, column: 37, scope: !4938)
!4940 = !DILocation(line: 453, column: 42, scope: !4938)
!4941 = !DILocation(line: 453, column: 45, scope: !4938)
!4942 = !DILocation(line: 453, column: 50, scope: !4938)
!4943 = !DILocation(line: 453, column: 6, scope: !4920)
!4944 = !DILocation(line: 454, column: 3, scope: !4938)
!4945 = !DILocation(line: 455, column: 32, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4920, file: !221, line: 455, column: 6)
!4947 = !DILocation(line: 455, column: 37, scope: !4946)
!4948 = !DILocation(line: 455, column: 43, scope: !4946)
!4949 = !DILocation(line: 455, column: 46, scope: !4946)
!4950 = !DILocation(line: 455, column: 51, scope: !4946)
!4951 = !DILocation(line: 455, column: 6, scope: !4920)
!4952 = !DILocation(line: 456, column: 3, scope: !4946)
!4953 = !DILocation(line: 457, column: 6, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4920, file: !221, line: 457, column: 6)
!4955 = !DILocation(line: 457, column: 11, scope: !4954)
!4956 = !DILocation(line: 457, column: 6, scope: !4920)
!4957 = !DILocation(line: 457, column: 26, scope: !4954)
!4958 = !DILocation(line: 458, column: 6, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !4920, file: !221, line: 458, column: 6)
!4960 = !DILocation(line: 458, column: 11, scope: !4959)
!4961 = !DILocation(line: 458, column: 6, scope: !4920)
!4962 = !DILocation(line: 458, column: 26, scope: !4959)
!4963 = !DILocation(line: 459, column: 6, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4920, file: !221, line: 459, column: 6)
!4965 = !DILocation(line: 459, column: 11, scope: !4964)
!4966 = !DILocation(line: 459, column: 6, scope: !4920)
!4967 = !DILocation(line: 459, column: 26, scope: !4964)
!4968 = !DILocation(line: 460, column: 6, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4920, file: !221, line: 460, column: 6)
!4970 = !DILocation(line: 460, column: 11, scope: !4969)
!4971 = !DILocation(line: 460, column: 6, scope: !4920)
!4972 = !DILocation(line: 460, column: 26, scope: !4969)
!4973 = !DILocation(line: 461, column: 6, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4920, file: !221, line: 461, column: 6)
!4975 = !DILocation(line: 461, column: 11, scope: !4974)
!4976 = !DILocation(line: 461, column: 6, scope: !4920)
!4977 = !DILocation(line: 461, column: 26, scope: !4974)
!4978 = !DILocation(line: 462, column: 6, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4920, file: !221, line: 462, column: 6)
!4980 = !DILocation(line: 462, column: 11, scope: !4979)
!4981 = !DILocation(line: 462, column: 6, scope: !4920)
!4982 = !DILocation(line: 462, column: 26, scope: !4979)
!4983 = !DILocation(line: 463, column: 6, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4920, file: !221, line: 463, column: 6)
!4985 = !DILocation(line: 463, column: 11, scope: !4984)
!4986 = !DILocation(line: 463, column: 6, scope: !4920)
!4987 = !DILocation(line: 463, column: 26, scope: !4984)
!4988 = !DILocation(line: 464, column: 6, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4920, file: !221, line: 464, column: 6)
!4990 = !DILocation(line: 464, column: 11, scope: !4989)
!4991 = !DILocation(line: 464, column: 6, scope: !4920)
!4992 = !DILocation(line: 464, column: 26, scope: !4989)
!4993 = !DILocation(line: 465, column: 6, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4920, file: !221, line: 465, column: 6)
!4995 = !DILocation(line: 465, column: 11, scope: !4994)
!4996 = !DILocation(line: 465, column: 6, scope: !4920)
!4997 = !DILocation(line: 465, column: 26, scope: !4994)
!4998 = !DILocation(line: 466, column: 6, scope: !4999)
!4999 = distinct !DILexicalBlock(scope: !4920, file: !221, line: 466, column: 6)
!5000 = !DILocation(line: 466, column: 11, scope: !4999)
!5001 = !DILocation(line: 466, column: 6, scope: !4920)
!5002 = !DILocation(line: 466, column: 26, scope: !4999)
!5003 = !DILocation(line: 467, column: 6, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !4920, file: !221, line: 467, column: 6)
!5005 = !DILocation(line: 467, column: 11, scope: !5004)
!5006 = !DILocation(line: 467, column: 6, scope: !4920)
!5007 = !DILocation(line: 467, column: 26, scope: !5004)
!5008 = !DILocation(line: 468, column: 6, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !4920, file: !221, line: 468, column: 6)
!5010 = !DILocation(line: 468, column: 11, scope: !5009)
!5011 = !DILocation(line: 468, column: 6, scope: !4920)
!5012 = !DILocation(line: 468, column: 26, scope: !5009)
!5013 = !DILocation(line: 469, column: 6, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !4920, file: !221, line: 469, column: 6)
!5015 = !DILocation(line: 469, column: 11, scope: !5014)
!5016 = !DILocation(line: 469, column: 6, scope: !4920)
!5017 = !DILocation(line: 469, column: 26, scope: !5014)
!5018 = !DILocation(line: 470, column: 6, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !4920, file: !221, line: 470, column: 6)
!5020 = !DILocation(line: 470, column: 11, scope: !5019)
!5021 = !DILocation(line: 470, column: 6, scope: !4920)
!5022 = !DILocation(line: 470, column: 26, scope: !5019)
!5023 = !DILocation(line: 471, column: 6, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !4920, file: !221, line: 471, column: 6)
!5025 = !DILocation(line: 471, column: 11, scope: !5024)
!5026 = !DILocation(line: 471, column: 6, scope: !4920)
!5027 = !DILocation(line: 471, column: 26, scope: !5024)
!5028 = !DILocation(line: 472, column: 6, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !4920, file: !221, line: 472, column: 6)
!5030 = !DILocation(line: 472, column: 11, scope: !5029)
!5031 = !DILocation(line: 472, column: 6, scope: !4920)
!5032 = !DILocation(line: 472, column: 26, scope: !5029)
!5033 = !DILocation(line: 473, column: 6, scope: !5034)
!5034 = distinct !DILexicalBlock(scope: !4920, file: !221, line: 473, column: 6)
!5035 = !DILocation(line: 473, column: 11, scope: !5034)
!5036 = !DILocation(line: 473, column: 6, scope: !4920)
!5037 = !DILocation(line: 473, column: 26, scope: !5034)
!5038 = !DILocation(line: 474, column: 6, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !4920, file: !221, line: 474, column: 6)
!5040 = !DILocation(line: 474, column: 11, scope: !5039)
!5041 = !DILocation(line: 474, column: 6, scope: !4920)
!5042 = !DILocation(line: 474, column: 27, scope: !5039)
!5043 = !DILocation(line: 475, column: 6, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !4920, file: !221, line: 475, column: 6)
!5045 = !DILocation(line: 475, column: 11, scope: !5044)
!5046 = !DILocation(line: 475, column: 6, scope: !4920)
!5047 = !DILocation(line: 475, column: 32, scope: !5044)
!5048 = !DILocation(line: 477, column: 50, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !4920, file: !221, line: 477, column: 6)
!5050 = !{i8 0, i8 2}
!5051 = !DILocation(line: 477, column: 6, scope: !4920)
!5052 = !DILocation(line: 478, column: 3, scope: !5049)
!5053 = !DILocation(line: 478, column: 3, scope: !5054)
!5054 = distinct !DILexicalBlock(scope: !5055, file: !221, line: 478, column: 3)
!5055 = distinct !DILexicalBlock(scope: !5049, file: !221, line: 478, column: 3)
!5056 = !{i32 -2141675436}
!5057 = !DILocation(line: 478, column: 3, scope: !5055)
!5058 = !DILocation(line: 480, column: 3, scope: !5049)
!5059 = !DILocation(line: 480, column: 3, scope: !5060)
!5060 = distinct !DILexicalBlock(scope: !5049, file: !221, line: 480, column: 3)
!5061 = !DILocation(line: 480, column: 3, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5060, file: !221, line: 480, column: 3)
!5063 = !DILocation(line: 480, column: 3, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5060, file: !221, line: 480, column: 3)
!5065 = !{i64 2153292063, i64 2153292092, i64 2153292138, i64 2153292196, i64 2153292250, i64 2153292304, i64 2153292359, i64 2153292390}
!5066 = !DILocation(line: 483, column: 2, scope: !4920)
!5067 = !DILocation(line: 484, column: 1, scope: !4920)
!5068 = !DISubprogram(name: "kmalloc_trace", scope: !221, file: !221, line: 525, type: !5069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5069 = !DISubroutineType(types: !5070)
!5070 = !{!28, !5071, !1189, !43}
!5071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5072 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5073, line: 325, flags: DIFlagFwdDecl)
!5073 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5074 = distinct !DISubprogram(name: "kmalloc_type", scope: !221, file: !221, line: 401, type: !5075, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5077)
!5075 = !DISubroutineType(types: !5076)
!5076 = !{!220, !1189, !47}
!5077 = !{!5078, !5079}
!5078 = !DILocalVariable(name: "flags", arg: 1, scope: !5074, file: !221, line: 401, type: !1189)
!5079 = !DILocalVariable(name: "caller", arg: 2, scope: !5074, file: !221, line: 401, type: !47)
!5080 = !DILocation(line: 401, column: 67, scope: !5074)
!5081 = !DILocation(line: 401, column: 88, scope: !5074)
!5082 = !DILocation(line: 407, column: 6, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5074, file: !221, line: 407, column: 6)
!5084 = !DILocation(line: 407, column: 6, scope: !5074)
!5085 = !DILocation(line: 413, column: 3, scope: !5083)
!5086 = !DILocation(line: 423, column: 38, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !5074, file: !221, line: 423, column: 6)
!5088 = !DILocation(line: 423, column: 44, scope: !5087)
!5089 = !DILocation(line: 423, column: 6, scope: !5074)
!5090 = !DILocation(line: 424, column: 3, scope: !5087)
!5091 = !DILocation(line: 426, column: 3, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5074, file: !221, line: 425, column: 6)
!5093 = !DILocation(line: 429, column: 1, scope: !5074)
!5094 = !DISubprogram(name: "__kmalloc", scope: !221, file: !221, line: 488, type: !4840, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5095 = !DISubprogram(name: "__compiletime_assert_245", scope: !221, file: !221, line: 478, type: !3212, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5096 = distinct !DISubprogram(name: "atomic_long_set", scope: !4751, file: !4751, line: 3193, type: !5097, scopeLine: 3194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5099)
!5097 = !DISubroutineType(types: !5098)
!5098 = !{null, !1850, !1098}
!5099 = !{!5100, !5101}
!5100 = !DILocalVariable(name: "v", arg: 1, scope: !5096, file: !4751, line: 3193, type: !1850)
!5101 = !DILocalVariable(name: "i", arg: 2, scope: !5096, file: !4751, line: 3193, type: !1098)
!5102 = !DILocation(line: 3193, column: 32, scope: !5096)
!5103 = !DILocation(line: 3193, column: 40, scope: !5096)
!5104 = !DILocation(line: 3195, column: 26, scope: !5096)
!5105 = !DILocation(line: 3195, column: 2, scope: !5096)
!5106 = !DILocation(line: 3196, column: 22, scope: !5096)
!5107 = !DILocation(line: 3196, column: 25, scope: !5096)
!5108 = !DILocation(line: 3196, column: 2, scope: !5096)
!5109 = !DILocation(line: 3197, column: 1, scope: !5096)
!5110 = !DISubprogram(name: "proc_alloc_inum", scope: !515, file: !515, line: 53, type: !5111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5111 = !DISubroutineType(types: !5112)
!5112 = !{!30, !1745}
!5113 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4770, file: !4770, line: 80, type: !4771, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5114)
!5114 = !{!5115, !5116}
!5115 = !DILocalVariable(name: "v", arg: 1, scope: !5113, file: !4770, line: 80, type: !4773)
!5116 = !DILocalVariable(name: "size", arg: 2, scope: !5113, file: !4770, line: 80, type: !43)
!5117 = !DILocation(line: 80, column: 74, scope: !5113)
!5118 = !DILocation(line: 80, column: 84, scope: !5113)
!5119 = !DILocation(line: 82, column: 20, scope: !5113)
!5120 = !DILocation(line: 82, column: 23, scope: !5113)
!5121 = !DILocation(line: 82, column: 2, scope: !5113)
!5122 = !DILocation(line: 83, column: 2, scope: !5113)
!5123 = !DILocation(line: 84, column: 1, scope: !5113)
!5124 = distinct !DISubprogram(name: "raw_atomic_long_set", scope: !238, file: !238, line: 76, type: !5097, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5125)
!5125 = !{!5126, !5127}
!5126 = !DILocalVariable(name: "v", arg: 1, scope: !5124, file: !238, line: 76, type: !1850)
!5127 = !DILocalVariable(name: "i", arg: 2, scope: !5124, file: !238, line: 76, type: !1098)
!5128 = !DILocation(line: 76, column: 36, scope: !5124)
!5129 = !DILocation(line: 76, column: 44, scope: !5124)
!5130 = !DILocation(line: 79, column: 19, scope: !5124)
!5131 = !DILocation(line: 79, column: 22, scope: !5124)
!5132 = !DILocation(line: 79, column: 2, scope: !5124)
!5133 = !DILocation(line: 83, column: 1, scope: !5124)
!5134 = distinct !DISubprogram(name: "raw_atomic64_set", scope: !4787, file: !4787, line: 2600, type: !5135, scopeLine: 2601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5138)
!5135 = !DISubroutineType(types: !5136)
!5136 = !{null, !5137, !243}
!5137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!5138 = !{!5139, !5140}
!5139 = !DILocalVariable(name: "v", arg: 1, scope: !5134, file: !4787, line: 2600, type: !5137)
!5140 = !DILocalVariable(name: "i", arg: 2, scope: !5134, file: !4787, line: 2600, type: !243)
!5141 = !DILocation(line: 2600, column: 30, scope: !5134)
!5142 = !DILocation(line: 2600, column: 37, scope: !5134)
!5143 = !DILocation(line: 2602, column: 20, scope: !5134)
!5144 = !DILocation(line: 2602, column: 23, scope: !5134)
!5145 = !DILocation(line: 2602, column: 2, scope: !5134)
!5146 = !DILocation(line: 2603, column: 1, scope: !5134)
!5147 = distinct !DISubprogram(name: "arch_atomic64_set", scope: !5148, file: !5148, line: 18, type: !5135, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5149)
!5148 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!5149 = !{!5150, !5151}
!5150 = !DILocalVariable(name: "v", arg: 1, scope: !5147, file: !5148, line: 18, type: !5137)
!5151 = !DILocalVariable(name: "i", arg: 2, scope: !5147, file: !5148, line: 18, type: !243)
!5152 = !DILocation(line: 18, column: 59, scope: !5147)
!5153 = !DILocation(line: 18, column: 66, scope: !5147)
!5154 = !DILocation(line: 20, column: 2, scope: !5147)
!5155 = !DILocation(line: 20, column: 2, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5147, file: !5148, line: 20, column: 2)
!5157 = !DILocation(line: 21, column: 1, scope: !5147)
!5158 = distinct !DISubprogram(name: "atomic_set", scope: !4751, file: !4751, line: 65, type: !5159, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5161)
!5159 = !DISubroutineType(types: !5160)
!5160 = !{null, !4754, !30}
!5161 = !{!5162, !5163}
!5162 = !DILocalVariable(name: "v", arg: 1, scope: !5158, file: !4751, line: 65, type: !4754)
!5163 = !DILocalVariable(name: "i", arg: 2, scope: !5158, file: !4751, line: 65, type: !30)
!5164 = !DILocation(line: 65, column: 22, scope: !5158)
!5165 = !DILocation(line: 65, column: 29, scope: !5158)
!5166 = !DILocation(line: 67, column: 26, scope: !5158)
!5167 = !DILocation(line: 67, column: 2, scope: !5158)
!5168 = !DILocation(line: 68, column: 17, scope: !5158)
!5169 = !DILocation(line: 68, column: 20, scope: !5158)
!5170 = !DILocation(line: 68, column: 2, scope: !5158)
!5171 = !DILocation(line: 69, column: 1, scope: !5158)
!5172 = distinct !DISubprogram(name: "raw_atomic_set", scope: !4787, file: !4787, line: 488, type: !5159, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5173)
!5173 = !{!5174, !5175}
!5174 = !DILocalVariable(name: "v", arg: 1, scope: !5172, file: !4787, line: 488, type: !4754)
!5175 = !DILocalVariable(name: "i", arg: 2, scope: !5172, file: !4787, line: 488, type: !30)
!5176 = !DILocation(line: 488, column: 26, scope: !5172)
!5177 = !DILocation(line: 488, column: 33, scope: !5172)
!5178 = !DILocation(line: 490, column: 18, scope: !5172)
!5179 = !DILocation(line: 490, column: 21, scope: !5172)
!5180 = !DILocation(line: 490, column: 2, scope: !5172)
!5181 = !DILocation(line: 491, column: 1, scope: !5172)
!5182 = distinct !DISubprogram(name: "arch_atomic_set", scope: !4820, file: !4820, line: 26, type: !5159, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5183)
!5183 = !{!5184, !5185}
!5184 = !DILocalVariable(name: "v", arg: 1, scope: !5182, file: !4820, line: 26, type: !4754)
!5185 = !DILocalVariable(name: "i", arg: 2, scope: !5182, file: !4820, line: 26, type: !30)
!5186 = !DILocation(line: 26, column: 55, scope: !5182)
!5187 = !DILocation(line: 26, column: 62, scope: !5182)
!5188 = !DILocation(line: 28, column: 2, scope: !5182)
!5189 = !DILocation(line: 28, column: 2, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5182, file: !4820, line: 28, column: 2)
!5191 = !DILocation(line: 29, column: 1, scope: !5182)
!5192 = distinct !DISubprogram(name: "task_lock", scope: !5193, file: !5193, line: 220, type: !3224, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5194)
!5193 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef3d4d4bfe7d22703d2dead2224ab376")
!5194 = !{!5195}
!5195 = !DILocalVariable(name: "p", arg: 1, scope: !5192, file: !5193, line: 220, type: !525)
!5196 = !DILocation(line: 220, column: 50, scope: !5192)
!5197 = !DILocation(line: 222, column: 13, scope: !5192)
!5198 = !DILocation(line: 222, column: 16, scope: !5192)
!5199 = !DILocation(line: 222, column: 2, scope: !5192)
!5200 = !DILocation(line: 223, column: 1, scope: !5192)
!5201 = distinct !DISubprogram(name: "task_unlock", scope: !5193, file: !5193, line: 225, type: !3224, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5202)
!5202 = !{!5203}
!5203 = !DILocalVariable(name: "p", arg: 1, scope: !5201, file: !5193, line: 225, type: !525)
!5204 = !DILocation(line: 225, column: 52, scope: !5201)
!5205 = !DILocation(line: 227, column: 15, scope: !5201)
!5206 = !DILocation(line: 227, column: 18, scope: !5201)
!5207 = !DILocation(line: 227, column: 2, scope: !5201)
!5208 = !DILocation(line: 228, column: 1, scope: !5201)
!5209 = distinct !DISubprogram(name: "spin_lock", scope: !4448, file: !4448, line: 349, type: !4449, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5210)
!5210 = !{!5211}
!5211 = !DILocalVariable(name: "lock", arg: 1, scope: !5209, file: !4448, line: 349, type: !2182)
!5212 = !DILocation(line: 349, column: 51, scope: !5209)
!5213 = !DILocation(line: 351, column: 2, scope: !5209)
!5214 = !DILocation(line: 352, column: 1, scope: !5209)
!5215 = !DISubprogram(name: "_raw_spin_lock", scope: !4658, file: !4658, line: 22, type: !4836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5216 = distinct !DISubprogram(name: "spin_unlock", scope: !4448, file: !4448, line: 389, type: !4449, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5217)
!5217 = !{!5218}
!5218 = !DILocalVariable(name: "lock", arg: 1, scope: !5216, file: !4448, line: 389, type: !2182)
!5219 = !DILocation(line: 389, column: 53, scope: !5216)
!5220 = !DILocation(line: 391, column: 2, scope: !5216)
!5221 = !DILocation(line: 392, column: 1, scope: !5216)
!5222 = !DISubprogram(name: "_raw_spin_unlock", scope: !4658, file: !4658, line: 39, type: !4836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5223 = distinct !DISubprogram(name: "put_cgroup_ns", scope: !2924, file: !2924, line: 809, type: !4248, scopeLine: 810, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5224)
!5224 = !{!5225}
!5225 = !DILocalVariable(name: "ns", arg: 1, scope: !5223, file: !2924, line: 809, type: !2922)
!5226 = !DILocation(line: 809, column: 59, scope: !5223)
!5227 = !DILocation(line: 811, column: 6, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5223, file: !2924, line: 811, column: 6)
!5229 = !DILocation(line: 811, column: 9, scope: !5228)
!5230 = !DILocation(line: 811, column: 35, scope: !5228)
!5231 = !DILocation(line: 811, column: 39, scope: !5228)
!5232 = !DILocation(line: 811, column: 42, scope: !5228)
!5233 = !DILocation(line: 811, column: 12, scope: !5228)
!5234 = !DILocation(line: 811, column: 6, scope: !5223)
!5235 = !DILocation(line: 812, column: 18, scope: !5228)
!5236 = !DILocation(line: 812, column: 3, scope: !5228)
!5237 = !DILocation(line: 813, column: 1, scope: !5223)
!5238 = distinct !DISubprogram(name: "to_cg_ns", scope: !3, file: !3, line: 93, type: !5239, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5241)
!5239 = !DISubroutineType(types: !5240)
!5240 = !{!2922, !524}
!5241 = !{!5242, !5243}
!5242 = !DILocalVariable(name: "ns", arg: 1, scope: !5238, file: !3, line: 93, type: !524)
!5243 = !DILocalVariable(name: "__mptr", scope: !5244, file: !3, line: 95, type: !28)
!5244 = distinct !DILexicalBlock(scope: !5238, file: !3, line: 95, column: 9)
!5245 = !DILocation(line: 93, column: 67, scope: !5238)
!5246 = !DILocation(line: 95, column: 9, scope: !5244)
!5247 = !DILocation(line: 95, column: 9, scope: !5238)
!5248 = !DILocation(line: 95, column: 2, scope: !5238)
!5249 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !208, file: !208, line: 331, type: !4654, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5250)
!5250 = !{!5251}
!5251 = !DILocalVariable(name: "r", arg: 1, scope: !5249, file: !208, line: 331, type: !4656)
!5252 = !DILocation(line: 331, column: 67, scope: !5249)
!5253 = !DILocation(line: 333, column: 33, scope: !5249)
!5254 = !DILocation(line: 333, column: 9, scope: !5249)
!5255 = !DILocation(line: 333, column: 2, scope: !5249)
!5256 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !208, file: !208, line: 313, type: !5257, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5259)
!5257 = !DISubroutineType(types: !5258)
!5258 = !{!383, !4656, !1407}
!5259 = !{!5260, !5261}
!5260 = !DILocalVariable(name: "r", arg: 1, scope: !5256, file: !208, line: 313, type: !4656)
!5261 = !DILocalVariable(name: "oldp", arg: 2, scope: !5256, file: !208, line: 313, type: !1407)
!5262 = !DILocation(line: 313, column: 69, scope: !5256)
!5263 = !DILocation(line: 313, column: 77, scope: !5256)
!5264 = !DILocation(line: 315, column: 36, scope: !5256)
!5265 = !DILocation(line: 315, column: 39, scope: !5256)
!5266 = !DILocation(line: 315, column: 9, scope: !5256)
!5267 = !DILocation(line: 315, column: 2, scope: !5256)
!5268 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !208, file: !208, line: 270, type: !5269, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5271)
!5269 = !DISubroutineType(types: !5270)
!5270 = !{!383, !30, !4656, !1407}
!5271 = !{!5272, !5273, !5274, !5275}
!5272 = !DILocalVariable(name: "i", arg: 1, scope: !5268, file: !208, line: 270, type: !30)
!5273 = !DILocalVariable(name: "r", arg: 2, scope: !5268, file: !208, line: 270, type: !4656)
!5274 = !DILocalVariable(name: "oldp", arg: 3, scope: !5268, file: !208, line: 270, type: !1407)
!5275 = !DILocalVariable(name: "old", scope: !5268, file: !208, line: 272, type: !30)
!5276 = !DILocation(line: 270, column: 61, scope: !5268)
!5277 = !DILocation(line: 270, column: 76, scope: !5268)
!5278 = !DILocation(line: 270, column: 84, scope: !5268)
!5279 = !DILocation(line: 272, column: 2, scope: !5268)
!5280 = !DILocation(line: 272, column: 6, scope: !5268)
!5281 = !DILocation(line: 272, column: 37, scope: !5268)
!5282 = !DILocation(line: 272, column: 41, scope: !5268)
!5283 = !DILocation(line: 272, column: 44, scope: !5268)
!5284 = !DILocation(line: 272, column: 12, scope: !5268)
!5285 = !DILocation(line: 274, column: 6, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5268, file: !208, line: 274, column: 6)
!5287 = !DILocation(line: 274, column: 6, scope: !5268)
!5288 = !DILocation(line: 275, column: 11, scope: !5286)
!5289 = !DILocation(line: 275, column: 4, scope: !5286)
!5290 = !DILocation(line: 275, column: 9, scope: !5286)
!5291 = !DILocation(line: 275, column: 3, scope: !5286)
!5292 = !DILocation(line: 277, column: 6, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5268, file: !208, line: 277, column: 6)
!5294 = !DILocation(line: 277, column: 13, scope: !5293)
!5295 = !DILocation(line: 277, column: 10, scope: !5293)
!5296 = !DILocation(line: 277, column: 6, scope: !5268)
!5297 = !DILocation(line: 278, column: 3, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5293, file: !208, line: 277, column: 16)
!5299 = !DILocation(line: 278, column: 3, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5298, file: !208, line: 278, column: 3)
!5301 = !DILocation(line: 278, column: 3, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5300, file: !208, line: 278, column: 3)
!5303 = !DILocation(line: 278, column: 3, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5300, file: !208, line: 278, column: 3)
!5305 = !DILocation(line: 278, column: 3, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5304, file: !208, line: 278, column: 3)
!5307 = !{i64 2150153201}
!5308 = !DILocation(line: 279, column: 3, scope: !5298)
!5309 = !DILocation(line: 282, column: 6, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5268, file: !208, line: 282, column: 6)
!5311 = !DILocation(line: 282, column: 6, scope: !5268)
!5312 = !DILocation(line: 283, column: 26, scope: !5310)
!5313 = !DILocation(line: 283, column: 3, scope: !5310)
!5314 = !DILocation(line: 285, column: 2, scope: !5268)
!5315 = !DILocation(line: 286, column: 1, scope: !5268)
!5316 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !4751, file: !4751, line: 397, type: !4752, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5317)
!5317 = !{!5318, !5319}
!5318 = !DILocalVariable(name: "i", arg: 1, scope: !5316, file: !4751, line: 397, type: !30)
!5319 = !DILocalVariable(name: "v", arg: 2, scope: !5316, file: !4751, line: 397, type: !4754)
!5320 = !DILocation(line: 397, column: 30, scope: !5316)
!5321 = !DILocation(line: 397, column: 43, scope: !5316)
!5322 = !DILocation(line: 399, column: 2, scope: !5316)
!5323 = !DILocation(line: 399, column: 2, scope: !5324)
!5324 = distinct !DILexicalBlock(scope: !5316, file: !4751, line: 399, column: 2)
!5325 = !DILocation(line: 400, column: 31, scope: !5316)
!5326 = !DILocation(line: 400, column: 2, scope: !5316)
!5327 = !DILocation(line: 401, column: 38, scope: !5316)
!5328 = !DILocation(line: 401, column: 41, scope: !5316)
!5329 = !DILocation(line: 401, column: 9, scope: !5316)
!5330 = !DILocation(line: 401, column: 2, scope: !5316)
!5331 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !4787, file: !4787, line: 928, type: !4752, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5332)
!5332 = !{!5333, !5334}
!5333 = !DILocalVariable(name: "i", arg: 1, scope: !5331, file: !4787, line: 928, type: !30)
!5334 = !DILocalVariable(name: "v", arg: 2, scope: !5331, file: !4787, line: 928, type: !4754)
!5335 = !DILocation(line: 928, column: 34, scope: !5331)
!5336 = !DILocation(line: 928, column: 47, scope: !5331)
!5337 = !DILocation(line: 936, column: 31, scope: !5331)
!5338 = !DILocation(line: 936, column: 34, scope: !5331)
!5339 = !DILocation(line: 936, column: 9, scope: !5331)
!5340 = !DILocation(line: 936, column: 2, scope: !5331)
!5341 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !4820, file: !4820, line: 101, type: !4752, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5342)
!5342 = !{!5343, !5344, !5345}
!5343 = !DILocalVariable(name: "i", arg: 1, scope: !5341, file: !4820, line: 101, type: !30)
!5344 = !DILocalVariable(name: "v", arg: 2, scope: !5341, file: !4820, line: 101, type: !4754)
!5345 = !DILocalVariable(name: "__ret", scope: !5346, file: !4820, line: 103, type: !30)
!5346 = distinct !DILexicalBlock(scope: !5341, file: !4820, line: 103, column: 9)
!5347 = !DILocation(line: 101, column: 54, scope: !5341)
!5348 = !DILocation(line: 101, column: 67, scope: !5341)
!5349 = !DILocation(line: 103, column: 9, scope: !5346)
!5350 = !{i64 2148448172, i64 2148448211, i64 2148448232, i64 2148448269, i64 2148448292, i64 2148448301}
!5351 = !DILocation(line: 103, column: 9, scope: !5341)
!5352 = !DILocation(line: 103, column: 2, scope: !5341)
