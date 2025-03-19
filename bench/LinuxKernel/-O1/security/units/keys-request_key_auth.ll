; ModuleID = 'security/keys/request_key_auth.c'
source_filename = "security/keys/request_key_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_type = type { ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.pcpu_hot = type { %union.anon.23 }
%union.anon.23 = type { %struct.anon.24, [16 x i8] }
%struct.anon.24 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.key_preparsed_payload = type { ptr, ptr, %union.key_payload, ptr, i64, i64, i64 }
%union.key_payload = type { [4 x ptr] }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.15, %struct.rw_semaphore, ptr, ptr, %union.anon.16, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.17, %union.anon.21, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.15 = type { %struct.rb_node }
%struct.rb_node = type { i64, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%union.anon.16 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.17 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.18, ptr, ptr, ptr }
%union.anon.18 = type { i64 }
%union.anon.21 = type { %union.key_payload }
%struct.request_key_auth = type { %struct.callback_head, ptr, ptr, ptr, ptr, i64, i32, [8 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.anon.20 = type { i64, i64, ptr, ptr, ptr }
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
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
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
%struct.cred = type { %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.14 }
%struct.kernel_cap_t = type { i64 }
%union.anon.14 = type { %struct.callback_head }
%struct.keyring_search_context = type { %struct.keyring_index_key, ptr, %struct.key_match_data, i32, ptr, i32, i8, ptr, i64 }
%struct.key_match_data = type { ptr, ptr, ptr, i32 }
%struct.anon.19 = type { i16, [6 x i8] }

@.str = private unnamed_addr constant [18 x i8] c".request_key_auth\00", align 1, !dbg !0
@key_type_request_key_auth = hidden global %struct.key_type { ptr @.str, i64 72, i32 0, ptr null, ptr @request_key_auth_preparse, ptr @request_key_auth_free_preparse, ptr @request_key_auth_instantiate, ptr null, ptr null, ptr null, ptr @request_key_auth_revoke, ptr @request_key_auth_destroy, ptr @request_key_auth_describe, ptr @request_key_auth_read, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, align 8, !dbg !7
@.str.1 = private unnamed_addr constant [3 x i8] c"%x\00", align 1, !dbg !3680
@.str.2 = private unnamed_addr constant [5 x i8] c"key:\00", align 1, !dbg !3683
@.str.3 = private unnamed_addr constant [15 x i8] c" pid:%d ci:%zu\00", align 1, !dbg !3688
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !3693

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @request_key_auth_preparse(ptr noundef %prep) #0 align 16 !dbg !3707 {
entry:
  %prep.addr = alloca ptr, align 8
  store ptr %prep, ptr %prep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prep.addr, metadata !3709, metadata !DIExpression()), !dbg !3710
  ret i32 0, !dbg !3711
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @request_key_auth_free_preparse(ptr noundef %prep) #0 align 16 !dbg !3712 {
entry:
  %prep.addr = alloca ptr, align 8
  store ptr %prep, ptr %prep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prep.addr, metadata !3714, metadata !DIExpression()), !dbg !3715
  ret void, !dbg !3716
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @request_key_auth_instantiate(ptr noundef %key, ptr noundef %prep) #0 align 16 !dbg !3717 {
entry:
  %key.addr = alloca ptr, align 8
  %prep.addr = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !3719, metadata !DIExpression()), !dbg !3724
  store ptr %prep, ptr %prep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prep.addr, metadata !3720, metadata !DIExpression()), !dbg !3725
  br label %do.body, !dbg !3726

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3727

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #17, !dbg !3728
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !3721, metadata !DIExpression()), !dbg !3728
  %0 = load ptr, ptr %prep.addr, align 8, !dbg !3728
  %data = getelementptr inbounds %struct.key_preparsed_payload, ptr %0, i32 0, i32 3, !dbg !3728
  %1 = load ptr, ptr %data, align 8, !dbg !3728
  %2 = ptrtoint ptr %1 to i64, !dbg !3728
  store i64 %2, ptr %_r_a_p__v, align 8, !dbg !3728
  br i1 false, label %land.lhs.true, label %if.else, !dbg !3729

land.lhs.true:                                    ; preds = %do.body1
  %3 = load i64, ptr %_r_a_p__v, align 8, !dbg !3729
  %cmp = icmp eq i64 %3, 0, !dbg !3729
  br i1 %cmp, label %if.then, label %if.else, !dbg !3728

if.then:                                          ; preds = %land.lhs.true
  br label %do.body2, !dbg !3729

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !3731

do.body3:                                         ; preds = %do.body2
  br label %do.cond, !dbg !3733

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !3733

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !3731

do.body4:                                         ; preds = %do.end
  %4 = load i64, ptr %_r_a_p__v, align 8, !dbg !3735
  %5 = inttoptr i64 %4 to ptr, !dbg !3735
  %6 = load ptr, ptr %key.addr, align 8, !dbg !3735
  %7 = getelementptr inbounds %struct.key, ptr %6, i32 0, i32 16, !dbg !3735
  store volatile ptr %5, ptr %7, align 8, !dbg !3735
  br label %do.cond5, !dbg !3735

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !3735

do.end6:                                          ; preds = %do.cond5
  br label %do.cond7, !dbg !3731

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !3731

do.end8:                                          ; preds = %do.cond7
  br label %if.end, !dbg !3731

if.else:                                          ; preds = %land.lhs.true, %do.body1
  br label %do.body9, !dbg !3729

do.body9:                                         ; preds = %if.else
  br label %do.body10, !dbg !3737

do.body10:                                        ; preds = %do.body9
  br label %do.cond11, !dbg !3739

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !3739

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !3737

do.body13:                                        ; preds = %do.end12
  br label %do.body14, !dbg !3741

do.body14:                                        ; preds = %do.body13
  br label %do.cond15, !dbg !3743

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !3743

do.end16:                                         ; preds = %do.cond15
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !3741, !srcloc !3745
  br label %do.body17, !dbg !3741

do.body17:                                        ; preds = %do.end16
  br label %do.body18, !dbg !3746

do.body18:                                        ; preds = %do.body17
  br label %do.cond19, !dbg !3748

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !3748

do.end20:                                         ; preds = %do.cond19
  br label %do.body21, !dbg !3746

do.body21:                                        ; preds = %do.end20
  %8 = load i64, ptr %_r_a_p__v, align 8, !dbg !3750
  %9 = inttoptr i64 %8 to ptr, !dbg !3750
  %10 = load ptr, ptr %key.addr, align 8, !dbg !3750
  %11 = getelementptr inbounds %struct.key, ptr %10, i32 0, i32 16, !dbg !3750
  store volatile ptr %9, ptr %11, align 8, !dbg !3750
  br label %do.cond22, !dbg !3750

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !3750

do.end23:                                         ; preds = %do.cond22
  br label %do.cond24, !dbg !3746

do.cond24:                                        ; preds = %do.end23
  br label %do.end25, !dbg !3746

do.end25:                                         ; preds = %do.cond24
  br label %do.cond26, !dbg !3741

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !3741

do.end27:                                         ; preds = %do.cond26
  br label %do.cond28, !dbg !3737

do.cond28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !3737

do.end29:                                         ; preds = %do.cond28
  br label %if.end

if.end:                                           ; preds = %do.end29, %do.end8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #17, !dbg !3727
  br label %do.end31, !dbg !3728

do.end31:                                         ; preds = %if.end
  br label %do.end33, !dbg !3727

do.end33:                                         ; preds = %do.end31
  ret i32 0, !dbg !3752
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @request_key_auth_revoke(ptr noundef %key) #0 align 16 !dbg !3753 {
entry:
  %key.addr = alloca ptr, align 8
  %rka = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca i32, align 4
  %_r_a_p__v = alloca i64, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !3755, metadata !DIExpression()), !dbg !3760
  call void @llvm.lifetime.start.p0(i64 8, ptr %rka) #17, !dbg !3761
  call void @llvm.dbg.declare(metadata ptr %rka, metadata !3756, metadata !DIExpression()), !dbg !3762
  br label %do.body, !dbg !3763

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3765

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3765

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %key.addr, align 8, !dbg !3763
  %1 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16, !dbg !3763
  %2 = load ptr, ptr %1, align 8, !dbg !3763
  store ptr %2, ptr %tmp, align 8, !dbg !3765
  %3 = load ptr, ptr %tmp, align 8, !dbg !3763
  store ptr %3, ptr %rka, align 8, !dbg !3762
  store i32 0, ptr %tmp1, align 4, !dbg !3767
  %4 = load i32, ptr %tmp1, align 4, !dbg !3770
  br label %do.body2, !dbg !3771

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !3772

do.body3:                                         ; preds = %do.body2
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #17, !dbg !3773
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !3757, metadata !DIExpression()), !dbg !3773
  store i64 0, ptr %_r_a_p__v, align 8, !dbg !3773
  %5 = load i64, ptr %_r_a_p__v, align 8, !dbg !3774
  %cmp = icmp eq i64 %5, 0, !dbg !3774
  br i1 %cmp, label %if.then, label %if.else, !dbg !3773

if.then:                                          ; preds = %do.body3
  br label %do.body4, !dbg !3774

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !3776

do.body5:                                         ; preds = %do.body4
  br label %do.cond6, !dbg !3778

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !3778

do.end7:                                          ; preds = %do.cond6
  br label %do.body8, !dbg !3776

do.body8:                                         ; preds = %do.end7
  %6 = load i64, ptr %_r_a_p__v, align 8, !dbg !3780
  %7 = inttoptr i64 %6 to ptr, !dbg !3780
  %8 = load ptr, ptr %key.addr, align 8, !dbg !3780
  %9 = getelementptr inbounds %struct.key, ptr %8, i32 0, i32 16, !dbg !3780
  store volatile ptr %7, ptr %9, align 8, !dbg !3780
  br label %do.cond9, !dbg !3780

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !3780

do.end10:                                         ; preds = %do.cond9
  br label %do.cond11, !dbg !3776

do.cond11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !3776

do.end12:                                         ; preds = %do.cond11
  br label %if.end, !dbg !3776

if.else:                                          ; preds = %do.body3
  br label %do.body13, !dbg !3774

do.body13:                                        ; preds = %if.else
  br label %do.body14, !dbg !3782

do.body14:                                        ; preds = %do.body13
  br label %do.cond15, !dbg !3784

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !3784

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !3782

do.body17:                                        ; preds = %do.end16
  br label %do.body18, !dbg !3786

do.body18:                                        ; preds = %do.body17
  br label %do.cond19, !dbg !3788

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !3788

do.end20:                                         ; preds = %do.cond19
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !3786, !srcloc !3790
  br label %do.body21, !dbg !3786

do.body21:                                        ; preds = %do.end20
  br label %do.body22, !dbg !3791

do.body22:                                        ; preds = %do.body21
  br label %do.cond23, !dbg !3793

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !3793

do.end24:                                         ; preds = %do.cond23
  br label %do.body25, !dbg !3791

do.body25:                                        ; preds = %do.end24
  %10 = load i64, ptr %_r_a_p__v, align 8, !dbg !3795
  %11 = inttoptr i64 %10 to ptr, !dbg !3795
  %12 = load ptr, ptr %key.addr, align 8, !dbg !3795
  %13 = getelementptr inbounds %struct.key, ptr %12, i32 0, i32 16, !dbg !3795
  store volatile ptr %11, ptr %13, align 8, !dbg !3795
  br label %do.cond26, !dbg !3795

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !3795

do.end27:                                         ; preds = %do.cond26
  br label %do.cond28, !dbg !3791

do.cond28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !3791

do.end29:                                         ; preds = %do.cond28
  br label %do.cond30, !dbg !3786

do.cond30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !3786

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !3782

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !3782

do.end33:                                         ; preds = %do.cond32
  br label %if.end

if.end:                                           ; preds = %do.end33, %do.end12
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #17, !dbg !3772
  br label %do.cond34, !dbg !3773

do.cond34:                                        ; preds = %if.end
  br label %do.end35, !dbg !3773

do.end35:                                         ; preds = %do.cond34
  br label %do.cond36, !dbg !3772

do.cond36:                                        ; preds = %do.end35
  br label %do.end37, !dbg !3772

do.end37:                                         ; preds = %do.cond36
  %14 = load ptr, ptr %rka, align 8, !dbg !3797
  %rcu = getelementptr inbounds %struct.request_key_auth, ptr %14, i32 0, i32 0, !dbg !3798
  call void @call_rcu(ptr noundef %rcu, ptr noundef @request_key_auth_rcu_disposal) #18, !dbg !3799
  call void @llvm.lifetime.end.p0(i64 8, ptr %rka) #17, !dbg !3800
  ret void, !dbg !3800
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @request_key_auth_destroy(ptr noundef %key) #0 align 16 !dbg !3801 {
entry:
  %key.addr = alloca ptr, align 8
  %rka = alloca ptr, align 8
  %__UNIQUE_ID_rcu286 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %tmp2 = alloca i32, align 4
  %_r_a_p__v = alloca i64, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !3803, metadata !DIExpression()), !dbg !3812
  call void @llvm.lifetime.start.p0(i64 8, ptr %rka) #17, !dbg !3813
  call void @llvm.dbg.declare(metadata ptr %rka, metadata !3804, metadata !DIExpression()), !dbg !3814
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu286) #17, !dbg !3815
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu286, metadata !3805, metadata !DIExpression()), !dbg !3815
  br label %do.body, !dbg !3816

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3818

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3818

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %key.addr, align 8, !dbg !3816
  %1 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16, !dbg !3816
  %2 = load volatile ptr, ptr %1, align 8, !dbg !3816
  store ptr %2, ptr %tmp, align 8, !dbg !3818
  %3 = load ptr, ptr %tmp, align 8, !dbg !3816
  store ptr %3, ptr %__UNIQUE_ID_rcu286, align 8, !dbg !3815
  %4 = load ptr, ptr %__UNIQUE_ID_rcu286, align 8, !dbg !3815
  store ptr %4, ptr %tmp1, align 8, !dbg !3815
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu286) #17, !dbg !3820
  %5 = load ptr, ptr %tmp1, align 8, !dbg !3815
  store ptr %5, ptr %rka, align 8, !dbg !3814
  store i32 0, ptr %tmp2, align 4, !dbg !3821
  %6 = load i32, ptr %tmp2, align 4, !dbg !3824
  %7 = load ptr, ptr %rka, align 8, !dbg !3825
  %tobool = icmp ne ptr %7, null, !dbg !3825
  br i1 %tobool, label %if.then, label %if.end40, !dbg !3826

if.then:                                          ; preds = %do.end
  br label %do.body3, !dbg !3827

do.body3:                                         ; preds = %if.then
  br label %do.body4, !dbg !3828

do.body4:                                         ; preds = %do.body3
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #17, !dbg !3829
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !3807, metadata !DIExpression()), !dbg !3829
  store i64 0, ptr %_r_a_p__v, align 8, !dbg !3829
  %8 = load i64, ptr %_r_a_p__v, align 8, !dbg !3830
  %cmp = icmp eq i64 %8, 0, !dbg !3830
  br i1 %cmp, label %if.then5, label %if.else, !dbg !3829

if.then5:                                         ; preds = %do.body4
  br label %do.body6, !dbg !3830

do.body6:                                         ; preds = %if.then5
  br label %do.body7, !dbg !3832

do.body7:                                         ; preds = %do.body6
  br label %do.cond8, !dbg !3834

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !3834

do.end9:                                          ; preds = %do.cond8
  br label %do.body10, !dbg !3832

do.body10:                                        ; preds = %do.end9
  %9 = load i64, ptr %_r_a_p__v, align 8, !dbg !3836
  %10 = inttoptr i64 %9 to ptr, !dbg !3836
  %11 = load ptr, ptr %key.addr, align 8, !dbg !3836
  %12 = getelementptr inbounds %struct.key, ptr %11, i32 0, i32 16, !dbg !3836
  store volatile ptr %10, ptr %12, align 8, !dbg !3836
  br label %do.cond11, !dbg !3836

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !3836

do.end12:                                         ; preds = %do.cond11
  br label %do.cond13, !dbg !3832

do.cond13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !3832

do.end14:                                         ; preds = %do.cond13
  br label %if.end, !dbg !3832

if.else:                                          ; preds = %do.body4
  br label %do.body15, !dbg !3830

do.body15:                                        ; preds = %if.else
  br label %do.body16, !dbg !3838

do.body16:                                        ; preds = %do.body15
  br label %do.cond17, !dbg !3840

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !3840

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !3838

do.body19:                                        ; preds = %do.end18
  br label %do.body20, !dbg !3842

do.body20:                                        ; preds = %do.body19
  br label %do.cond21, !dbg !3844

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !3844

do.end22:                                         ; preds = %do.cond21
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !3842, !srcloc !3846
  br label %do.body23, !dbg !3842

do.body23:                                        ; preds = %do.end22
  br label %do.body24, !dbg !3847

do.body24:                                        ; preds = %do.body23
  br label %do.cond25, !dbg !3849

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !3849

do.end26:                                         ; preds = %do.cond25
  br label %do.body27, !dbg !3847

do.body27:                                        ; preds = %do.end26
  %13 = load i64, ptr %_r_a_p__v, align 8, !dbg !3851
  %14 = inttoptr i64 %13 to ptr, !dbg !3851
  %15 = load ptr, ptr %key.addr, align 8, !dbg !3851
  %16 = getelementptr inbounds %struct.key, ptr %15, i32 0, i32 16, !dbg !3851
  store volatile ptr %14, ptr %16, align 8, !dbg !3851
  br label %do.cond28, !dbg !3851

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !3851

do.end29:                                         ; preds = %do.cond28
  br label %do.cond30, !dbg !3847

do.cond30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !3847

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !3842

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !3842

do.end33:                                         ; preds = %do.cond32
  br label %do.cond34, !dbg !3838

do.cond34:                                        ; preds = %do.end33
  br label %do.end35, !dbg !3838

do.end35:                                         ; preds = %do.cond34
  br label %if.end

if.end:                                           ; preds = %do.end35, %do.end14
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #17, !dbg !3828
  br label %do.cond36, !dbg !3829

do.cond36:                                        ; preds = %if.end
  br label %do.end37, !dbg !3829

do.end37:                                         ; preds = %do.cond36
  br label %do.cond38, !dbg !3828

do.cond38:                                        ; preds = %do.end37
  br label %do.end39, !dbg !3828

do.end39:                                         ; preds = %do.cond38
  %17 = load ptr, ptr %rka, align 8, !dbg !3853
  %rcu = getelementptr inbounds %struct.request_key_auth, ptr %17, i32 0, i32 0, !dbg !3854
  call void @call_rcu(ptr noundef %rcu, ptr noundef @request_key_auth_rcu_disposal) #18, !dbg !3855
  br label %if.end40, !dbg !3856

if.end40:                                         ; preds = %do.end39, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %rka) #17, !dbg !3857
  ret void, !dbg !3857
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @request_key_auth_describe(ptr noundef %key, ptr noundef %m) #0 align 16 !dbg !3858 {
entry:
  %key.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %rka = alloca ptr, align 8
  %__UNIQUE_ID_rcu281 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !3860, metadata !DIExpression()), !dbg !3865
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !3861, metadata !DIExpression()), !dbg !3866
  call void @llvm.lifetime.start.p0(i64 8, ptr %rka) #17, !dbg !3867
  call void @llvm.dbg.declare(metadata ptr %rka, metadata !3862, metadata !DIExpression()), !dbg !3868
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu281) #17, !dbg !3869
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu281, metadata !3863, metadata !DIExpression()), !dbg !3869
  br label %do.body, !dbg !3870

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3872

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3872

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %key.addr, align 8, !dbg !3870
  %1 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16, !dbg !3870
  %2 = load volatile ptr, ptr %1, align 8, !dbg !3870
  store ptr %2, ptr %tmp, align 8, !dbg !3872
  %3 = load ptr, ptr %tmp, align 8, !dbg !3870
  store ptr %3, ptr %__UNIQUE_ID_rcu281, align 8, !dbg !3869
  br label %do.body1, !dbg !3869

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !3874

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !3874

do.end3:                                          ; preds = %do.cond2
  %4 = load ptr, ptr %__UNIQUE_ID_rcu281, align 8, !dbg !3869
  store ptr %4, ptr %tmp4, align 8, !dbg !3874
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu281) #17, !dbg !3876
  %5 = load ptr, ptr %tmp4, align 8, !dbg !3869
  store ptr %5, ptr %rka, align 8, !dbg !3868
  %6 = load ptr, ptr %rka, align 8, !dbg !3877
  %tobool = icmp ne ptr %6, null, !dbg !3877
  br i1 %tobool, label %if.end, label %if.then, !dbg !3879

if.then:                                          ; preds = %do.end3
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3880

if.end:                                           ; preds = %do.end3
  %7 = load ptr, ptr %m.addr, align 8, !dbg !3881
  call void @seq_puts(ptr noundef %7, ptr noundef @.str.2) #18, !dbg !3882
  %8 = load ptr, ptr %m.addr, align 8, !dbg !3883
  %9 = load ptr, ptr %key.addr, align 8, !dbg !3884
  %10 = getelementptr inbounds %struct.key, ptr %9, i32 0, i32 15, !dbg !3885
  %description = getelementptr inbounds %struct.anon.20, ptr %10, i32 0, i32 4, !dbg !3885
  %11 = load ptr, ptr %description, align 8, !dbg !3885
  call void @seq_puts(ptr noundef %8, ptr noundef %11) #18, !dbg !3886
  %12 = load ptr, ptr %key.addr, align 8, !dbg !3887
  %call = call zeroext i1 @key_is_positive(ptr noundef %12) #18, !dbg !3889
  br i1 %call, label %if.then5, label %if.end6, !dbg !3890

if.then5:                                         ; preds = %if.end
  %13 = load ptr, ptr %m.addr, align 8, !dbg !3891
  %14 = load ptr, ptr %rka, align 8, !dbg !3892
  %pid = getelementptr inbounds %struct.request_key_auth, ptr %14, i32 0, i32 6, !dbg !3893
  %15 = load i32, ptr %pid, align 8, !dbg !3893
  %16 = load ptr, ptr %rka, align 8, !dbg !3894
  %callout_len = getelementptr inbounds %struct.request_key_auth, ptr %16, i32 0, i32 5, !dbg !3895
  %17 = load i64, ptr %callout_len, align 8, !dbg !3895
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef @.str.3, i32 noundef %15, i64 noundef %17) #18, !dbg !3896
  br label %if.end6, !dbg !3896

if.end6:                                          ; preds = %if.then5, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3897
  br label %cleanup, !dbg !3897

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rka) #17, !dbg !3897
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3897

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @request_key_auth_read(ptr noundef %key, ptr noundef %buffer, i64 noundef %buflen) #0 align 16 !dbg !3898 {
entry:
  %retval = alloca i64, align 8
  %key.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %buflen.addr = alloca i64, align 8
  %rka = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %datalen = alloca i64, align 8
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !3900, metadata !DIExpression()), !dbg !3906
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !3901, metadata !DIExpression()), !dbg !3907
  store i64 %buflen, ptr %buflen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buflen.addr, metadata !3902, metadata !DIExpression()), !dbg !3908
  call void @llvm.lifetime.start.p0(i64 8, ptr %rka) #17, !dbg !3909
  call void @llvm.dbg.declare(metadata ptr %rka, metadata !3903, metadata !DIExpression()), !dbg !3910
  br label %do.body, !dbg !3911

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3913

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3913

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %key.addr, align 8, !dbg !3911
  %1 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16, !dbg !3911
  %2 = load ptr, ptr %1, align 8, !dbg !3911
  store ptr %2, ptr %tmp, align 8, !dbg !3913
  %3 = load ptr, ptr %tmp, align 8, !dbg !3911
  store ptr %3, ptr %rka, align 8, !dbg !3910
  call void @llvm.lifetime.start.p0(i64 8, ptr %datalen) #17, !dbg !3915
  call void @llvm.dbg.declare(metadata ptr %datalen, metadata !3904, metadata !DIExpression()), !dbg !3916
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #17, !dbg !3917
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3905, metadata !DIExpression()), !dbg !3918
  %4 = load ptr, ptr %rka, align 8, !dbg !3919
  %tobool = icmp ne ptr %4, null, !dbg !3919
  br i1 %tobool, label %if.end, label %if.then, !dbg !3921

if.then:                                          ; preds = %do.end
  store i64 -128, ptr %retval, align 8, !dbg !3922
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3922

if.end:                                           ; preds = %do.end
  %5 = load ptr, ptr %rka, align 8, !dbg !3923
  %callout_len = getelementptr inbounds %struct.request_key_auth, ptr %5, i32 0, i32 5, !dbg !3924
  %6 = load i64, ptr %callout_len, align 8, !dbg !3924
  store i64 %6, ptr %datalen, align 8, !dbg !3925
  %7 = load i64, ptr %datalen, align 8, !dbg !3926
  store i64 %7, ptr %ret, align 8, !dbg !3927
  %8 = load ptr, ptr %buffer.addr, align 8, !dbg !3928
  %tobool1 = icmp ne ptr %8, null, !dbg !3928
  br i1 %tobool1, label %land.lhs.true, label %if.end6, !dbg !3930

land.lhs.true:                                    ; preds = %if.end
  %9 = load i64, ptr %buflen.addr, align 8, !dbg !3931
  %cmp = icmp ugt i64 %9, 0, !dbg !3932
  br i1 %cmp, label %if.then2, label %if.end6, !dbg !3933

if.then2:                                         ; preds = %land.lhs.true
  %10 = load i64, ptr %buflen.addr, align 8, !dbg !3934
  %11 = load i64, ptr %datalen, align 8, !dbg !3937
  %cmp3 = icmp ugt i64 %10, %11, !dbg !3938
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !3939

if.then4:                                         ; preds = %if.then2
  %12 = load i64, ptr %datalen, align 8, !dbg !3940
  store i64 %12, ptr %buflen.addr, align 8, !dbg !3941
  br label %if.end5, !dbg !3942

if.end5:                                          ; preds = %if.then4, %if.then2
  %13 = load ptr, ptr %buffer.addr, align 8, !dbg !3943
  %14 = load ptr, ptr %rka, align 8, !dbg !3944
  %callout_info = getelementptr inbounds %struct.request_key_auth, ptr %14, i32 0, i32 4, !dbg !3945
  %15 = load ptr, ptr %callout_info, align 8, !dbg !3945
  %16 = load i64, ptr %buflen.addr, align 8, !dbg !3946
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr align 1 %15, i64 %16, i1 false), !dbg !3947
  br label %if.end6, !dbg !3948

if.end6:                                          ; preds = %if.end5, %land.lhs.true, %if.end
  %17 = load i64, ptr %ret, align 8, !dbg !3949
  store i64 %17, ptr %retval, align 8, !dbg !3950
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3950

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #17, !dbg !3951
  call void @llvm.lifetime.end.p0(i64 8, ptr %datalen) #17, !dbg !3951
  call void @llvm.lifetime.end.p0(i64 8, ptr %rka) #17, !dbg !3951
  %18 = load i64, ptr %retval, align 8, !dbg !3951
  ret i64 %18, !dbg !3951
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @request_key_auth_new(ptr noundef %target, ptr noundef %op, ptr noundef %callout_info, i64 noundef %callout_len, ptr noundef %dest_keyring) #0 align 16 !dbg !3952 {
entry:
  %retval = alloca ptr, align 8
  %target.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %callout_info.addr = alloca ptr, align 8
  %callout_len.addr = alloca i64, align 8
  %dest_keyring.addr = alloca ptr, align 8
  %rka = alloca ptr, align 8
  %irka = alloca ptr, align 8
  %cred = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %authkey = alloca ptr, align 8
  %desc = alloca [20 x i8], align 16
  %ret = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %tmp67 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp68 = alloca i32, align 4
  store ptr %target, ptr %target.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !3956, metadata !DIExpression()), !dbg !3971
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !3957, metadata !DIExpression()), !dbg !3972
  store ptr %callout_info, ptr %callout_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %callout_info.addr, metadata !3958, metadata !DIExpression()), !dbg !3973
  store i64 %callout_len, ptr %callout_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %callout_len.addr, metadata !3959, metadata !DIExpression()), !dbg !3974
  store ptr %dest_keyring, ptr %dest_keyring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest_keyring.addr, metadata !3960, metadata !DIExpression()), !dbg !3975
  call void @llvm.lifetime.start.p0(i64 8, ptr %rka) #17, !dbg !3976
  call void @llvm.dbg.declare(metadata ptr %rka, metadata !3961, metadata !DIExpression()), !dbg !3977
  call void @llvm.lifetime.start.p0(i64 8, ptr %irka) #17, !dbg !3976
  call void @llvm.dbg.declare(metadata ptr %irka, metadata !3962, metadata !DIExpression()), !dbg !3978
  call void @llvm.lifetime.start.p0(i64 8, ptr %cred) #17, !dbg !3979
  call void @llvm.dbg.declare(metadata ptr %cred, metadata !3963, metadata !DIExpression()), !dbg !3980
  br label %do.body, !dbg !3981

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3983

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3983

do.end:                                           ; preds = %do.cond
  %call = call ptr @get_current() #18, !dbg !3981
  %cred1 = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 94, !dbg !3981
  %0 = load ptr, ptr %cred1, align 32, !dbg !3981
  store ptr %0, ptr %tmp, align 8, !dbg !3983
  %1 = load ptr, ptr %tmp, align 8, !dbg !3981
  store ptr %1, ptr %cred, align 8, !dbg !3980
  call void @llvm.lifetime.start.p0(i64 8, ptr %authkey) #17, !dbg !3985
  call void @llvm.dbg.declare(metadata ptr %authkey, metadata !3964, metadata !DIExpression()), !dbg !3986
  store ptr null, ptr %authkey, align 8, !dbg !3986
  call void @llvm.lifetime.start.p0(i64 20, ptr %desc) #17, !dbg !3987
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !3965, metadata !DIExpression()), !dbg !3988
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !3989
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3967, metadata !DIExpression()), !dbg !3990
  store i32 -12, ptr %ret, align 4, !dbg !3990
  store i32 0, ptr %tmp2, align 4, !dbg !3991
  %2 = load i32, ptr %tmp2, align 4, !dbg !3994
  %call3 = call noalias ptr @kzalloc(i64 noundef 72, i32 noundef 3264) #19, !dbg !3995
  store ptr %call3, ptr %rka, align 8, !dbg !3996
  %3 = load ptr, ptr %rka, align 8, !dbg !3997
  %tobool = icmp ne ptr %3, null, !dbg !3997
  br i1 %tobool, label %if.end, label %if.then, !dbg !3999

if.then:                                          ; preds = %do.end
  br label %error, !dbg !4000

if.end:                                           ; preds = %do.end
  %4 = load ptr, ptr %callout_info.addr, align 8, !dbg !4001
  %5 = load i64, ptr %callout_len.addr, align 8, !dbg !4002
  %call4 = call ptr @kmemdup(ptr noundef %4, i64 noundef %5, i32 noundef 3264) #20, !dbg !4003
  %6 = load ptr, ptr %rka, align 8, !dbg !4004
  %callout_info5 = getelementptr inbounds %struct.request_key_auth, ptr %6, i32 0, i32 4, !dbg !4005
  store ptr %call4, ptr %callout_info5, align 8, !dbg !4006
  %7 = load ptr, ptr %rka, align 8, !dbg !4007
  %callout_info6 = getelementptr inbounds %struct.request_key_auth, ptr %7, i32 0, i32 4, !dbg !4009
  %8 = load ptr, ptr %callout_info6, align 8, !dbg !4009
  %tobool7 = icmp ne ptr %8, null, !dbg !4007
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !4010

if.then8:                                         ; preds = %if.end
  br label %error_free_rka, !dbg !4011

if.end9:                                          ; preds = %if.end
  %9 = load i64, ptr %callout_len.addr, align 8, !dbg !4012
  %10 = load ptr, ptr %rka, align 8, !dbg !4013
  %callout_len10 = getelementptr inbounds %struct.request_key_auth, ptr %10, i32 0, i32 5, !dbg !4014
  store i64 %9, ptr %callout_len10, align 8, !dbg !4015
  %11 = load ptr, ptr %rka, align 8, !dbg !4016
  %op11 = getelementptr inbounds %struct.request_key_auth, ptr %11, i32 0, i32 7, !dbg !4017
  %arraydecay = getelementptr inbounds [8 x i8], ptr %op11, i64 0, i64 0, !dbg !4016
  %12 = load ptr, ptr %op.addr, align 8, !dbg !4018
  %call12 = call i64 @strscpy(ptr noundef %arraydecay, ptr noundef %12, i64 noundef 8) #18, !dbg !4019
  %13 = load ptr, ptr %cred, align 8, !dbg !4020
  %request_key_auth = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 19, !dbg !4022
  %14 = load ptr, ptr %request_key_auth, align 8, !dbg !4022
  %tobool13 = icmp ne ptr %14, null, !dbg !4020
  br i1 %tobool13, label %if.then14, label %if.else, !dbg !4023

if.then14:                                        ; preds = %if.end9
  %15 = load ptr, ptr %cred, align 8, !dbg !4024
  %request_key_auth15 = getelementptr inbounds %struct.cred, ptr %15, i32 0, i32 19, !dbg !4026
  %16 = load ptr, ptr %request_key_auth15, align 8, !dbg !4026
  %sem = getelementptr inbounds %struct.key, ptr %16, i32 0, i32 3, !dbg !4027
  call void @down_read(ptr noundef %sem) #18, !dbg !4028
  %17 = load ptr, ptr %cred, align 8, !dbg !4029
  %request_key_auth16 = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 19, !dbg !4029
  %18 = load ptr, ptr %request_key_auth16, align 8, !dbg !4029
  %flags = getelementptr inbounds %struct.key, ptr %18, i32 0, i32 14, !dbg !4029
  %19 = ptrtoint ptr %flags to i64, !dbg !4029
  %cmp = icmp ne i64 %19, 0, !dbg !4029
  %conv = zext i1 %cmp to i32, !dbg !4029
  %20 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !4029
  br i1 %20, label %land.lhs.true, label %cond.false, !dbg !4029

land.lhs.true:                                    ; preds = %if.then14
  %21 = load ptr, ptr %cred, align 8, !dbg !4029
  %request_key_auth17 = getelementptr inbounds %struct.cred, ptr %21, i32 0, i32 19, !dbg !4029
  %22 = load ptr, ptr %request_key_auth17, align 8, !dbg !4029
  %flags18 = getelementptr inbounds %struct.key, ptr %22, i32 0, i32 14, !dbg !4029
  %23 = ptrtoint ptr %flags18 to i64, !dbg !4029
  %cmp19 = icmp ne i64 %23, 0, !dbg !4029
  br i1 %cmp19, label %land.lhs.true21, label %cond.false, !dbg !4029

land.lhs.true21:                                  ; preds = %land.lhs.true
  %24 = load ptr, ptr %cred, align 8, !dbg !4029
  %request_key_auth22 = getelementptr inbounds %struct.cred, ptr %24, i32 0, i32 19, !dbg !4029
  %25 = load ptr, ptr %request_key_auth22, align 8, !dbg !4029
  %flags23 = getelementptr inbounds %struct.key, ptr %25, i32 0, i32 14, !dbg !4029
  %26 = load i64, ptr %flags23, align 8, !dbg !4029
  %27 = call i1 @llvm.is.constant.i64(i64 %26), !dbg !4029
  br i1 %27, label %cond.true, label %cond.false, !dbg !4031

cond.true:                                        ; preds = %land.lhs.true21
  %28 = load ptr, ptr %cred, align 8, !dbg !4029
  %request_key_auth24 = getelementptr inbounds %struct.cred, ptr %28, i32 0, i32 19, !dbg !4029
  %29 = load ptr, ptr %request_key_auth24, align 8, !dbg !4029
  %flags25 = getelementptr inbounds %struct.key, ptr %29, i32 0, i32 14, !dbg !4029
  %call26 = call zeroext i1 @const_test_bit(i64 noundef 1, ptr noundef %flags25) #18, !dbg !4029
  br i1 %call26, label %if.then32, label %if.end35, !dbg !4029

cond.false:                                       ; preds = %land.lhs.true21, %land.lhs.true, %if.then14
  %30 = load ptr, ptr %cred, align 8, !dbg !4029
  %request_key_auth28 = getelementptr inbounds %struct.cred, ptr %30, i32 0, i32 19, !dbg !4029
  %31 = load ptr, ptr %request_key_auth28, align 8, !dbg !4029
  %flags29 = getelementptr inbounds %struct.key, ptr %31, i32 0, i32 14, !dbg !4029
  %call30 = call zeroext i1 @_test_bit(i64 noundef 1, ptr noundef %flags29) #18, !dbg !4029
  br i1 %call30, label %if.then32, label %if.end35, !dbg !4031

if.then32:                                        ; preds = %cond.false, %cond.true
  %32 = load ptr, ptr %cred, align 8, !dbg !4032
  %request_key_auth33 = getelementptr inbounds %struct.cred, ptr %32, i32 0, i32 19, !dbg !4034
  %33 = load ptr, ptr %request_key_auth33, align 8, !dbg !4034
  %sem34 = getelementptr inbounds %struct.key, ptr %33, i32 0, i32 3, !dbg !4035
  call void @up_read(ptr noundef %sem34) #18, !dbg !4036
  store i32 -128, ptr %ret, align 4, !dbg !4037
  br label %error_free_rka, !dbg !4038

if.end35:                                         ; preds = %cond.false, %cond.true
  %34 = load ptr, ptr %cred, align 8, !dbg !4039
  %request_key_auth36 = getelementptr inbounds %struct.cred, ptr %34, i32 0, i32 19, !dbg !4040
  %35 = load ptr, ptr %request_key_auth36, align 8, !dbg !4040
  %36 = getelementptr inbounds %struct.key, ptr %35, i32 0, i32 16, !dbg !4041
  %arrayidx = getelementptr [4 x ptr], ptr %36, i64 0, i64 0, !dbg !4039
  %37 = load ptr, ptr %arrayidx, align 8, !dbg !4039
  store ptr %37, ptr %irka, align 8, !dbg !4042
  %38 = load ptr, ptr %irka, align 8, !dbg !4043
  %cred37 = getelementptr inbounds %struct.request_key_auth, ptr %38, i32 0, i32 3, !dbg !4044
  %39 = load ptr, ptr %cred37, align 8, !dbg !4044
  %call38 = call ptr @get_cred(ptr noundef %39) #18, !dbg !4045
  %40 = load ptr, ptr %rka, align 8, !dbg !4046
  %cred39 = getelementptr inbounds %struct.request_key_auth, ptr %40, i32 0, i32 3, !dbg !4047
  store ptr %call38, ptr %cred39, align 8, !dbg !4048
  %41 = load ptr, ptr %irka, align 8, !dbg !4049
  %pid = getelementptr inbounds %struct.request_key_auth, ptr %41, i32 0, i32 6, !dbg !4050
  %42 = load i32, ptr %pid, align 8, !dbg !4050
  %43 = load ptr, ptr %rka, align 8, !dbg !4051
  %pid40 = getelementptr inbounds %struct.request_key_auth, ptr %43, i32 0, i32 6, !dbg !4052
  store i32 %42, ptr %pid40, align 8, !dbg !4053
  %44 = load ptr, ptr %cred, align 8, !dbg !4054
  %request_key_auth41 = getelementptr inbounds %struct.cred, ptr %44, i32 0, i32 19, !dbg !4055
  %45 = load ptr, ptr %request_key_auth41, align 8, !dbg !4055
  %sem42 = getelementptr inbounds %struct.key, ptr %45, i32 0, i32 3, !dbg !4056
  call void @up_read(ptr noundef %sem42) #18, !dbg !4057
  br label %if.end48, !dbg !4058

if.else:                                          ; preds = %if.end9
  %46 = load ptr, ptr %cred, align 8, !dbg !4059
  %call43 = call ptr @get_cred(ptr noundef %46) #18, !dbg !4061
  %47 = load ptr, ptr %rka, align 8, !dbg !4062
  %cred44 = getelementptr inbounds %struct.request_key_auth, ptr %47, i32 0, i32 3, !dbg !4063
  store ptr %call43, ptr %cred44, align 8, !dbg !4064
  %call45 = call ptr @get_current() #18, !dbg !4065
  %pid46 = getelementptr inbounds %struct.task_struct, ptr %call45, i32 0, i32 62, !dbg !4066
  %48 = load i32, ptr %pid46, align 8, !dbg !4066
  %49 = load ptr, ptr %rka, align 8, !dbg !4067
  %pid47 = getelementptr inbounds %struct.request_key_auth, ptr %49, i32 0, i32 6, !dbg !4068
  store i32 %48, ptr %pid47, align 8, !dbg !4069
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.end35
  %50 = load ptr, ptr %target.addr, align 8, !dbg !4070
  %call49 = call ptr @key_get(ptr noundef %50) #18, !dbg !4071
  %51 = load ptr, ptr %rka, align 8, !dbg !4072
  %target_key = getelementptr inbounds %struct.request_key_auth, ptr %51, i32 0, i32 1, !dbg !4073
  store ptr %call49, ptr %target_key, align 8, !dbg !4074
  %52 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !4075
  %call50 = call ptr @key_get(ptr noundef %52) #18, !dbg !4076
  %53 = load ptr, ptr %rka, align 8, !dbg !4077
  %dest_keyring51 = getelementptr inbounds %struct.request_key_auth, ptr %53, i32 0, i32 2, !dbg !4078
  store ptr %call50, ptr %dest_keyring51, align 8, !dbg !4079
  %arraydecay52 = getelementptr inbounds [20 x i8], ptr %desc, i64 0, i64 0, !dbg !4080
  %54 = load ptr, ptr %target.addr, align 8, !dbg !4081
  %serial = getelementptr inbounds %struct.key, ptr %54, i32 0, i32 1, !dbg !4082
  %55 = load i32, ptr %serial, align 4, !dbg !4082
  %call53 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay52, ptr noundef @.str.1, i32 noundef %55) #18, !dbg !4083
  %arraydecay54 = getelementptr inbounds [20 x i8], ptr %desc, i64 0, i64 0, !dbg !4084
  %56 = load ptr, ptr %cred, align 8, !dbg !4085
  %fsuid = getelementptr inbounds %struct.cred, ptr %56, i32 0, i32 7, !dbg !4086
  %57 = load ptr, ptr %cred, align 8, !dbg !4087
  %fsgid = getelementptr inbounds %struct.cred, ptr %57, i32 0, i32 8, !dbg !4088
  %58 = load ptr, ptr %cred, align 8, !dbg !4089
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %fsuid, i32 0, i32 0, !dbg !4090
  %59 = load i32, ptr %coerce.dive, align 8, !dbg !4090
  %coerce.dive55 = getelementptr inbounds %struct.kgid_t, ptr %fsgid, i32 0, i32 0, !dbg !4090
  %60 = load i32, ptr %coerce.dive55, align 4, !dbg !4090
  %call56 = call ptr @key_alloc(ptr noundef @key_type_request_key_auth, ptr noundef %arraydecay54, i32 %59, i32 %60, ptr noundef %58, i32 noundef 453050368, i64 noundef 2, ptr noundef null) #18, !dbg !4090
  store ptr %call56, ptr %authkey, align 8, !dbg !4091
  %61 = load ptr, ptr %authkey, align 8, !dbg !4092
  %call57 = call zeroext i1 @IS_ERR(ptr noundef %61) #18, !dbg !4094
  br i1 %call57, label %if.then58, label %if.end61, !dbg !4095

if.then58:                                        ; preds = %if.end48
  %62 = load ptr, ptr %authkey, align 8, !dbg !4096
  %call59 = call i64 @PTR_ERR(ptr noundef %62) #18, !dbg !4098
  %conv60 = trunc i64 %call59 to i32, !dbg !4098
  store i32 %conv60, ptr %ret, align 4, !dbg !4099
  br label %error_free_rka, !dbg !4100

if.end61:                                         ; preds = %if.end48
  %63 = load ptr, ptr %authkey, align 8, !dbg !4101
  %64 = load ptr, ptr %rka, align 8, !dbg !4102
  %call62 = call i32 @key_instantiate_and_link(ptr noundef %63, ptr noundef %64, i64 noundef 0, ptr noundef null, ptr noundef null) #18, !dbg !4103
  store i32 %call62, ptr %ret, align 4, !dbg !4104
  %65 = load i32, ptr %ret, align 4, !dbg !4105
  %cmp63 = icmp slt i32 %65, 0, !dbg !4107
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !4108

if.then65:                                        ; preds = %if.end61
  br label %error_put_authkey, !dbg !4109

if.end66:                                         ; preds = %if.end61
  store i32 0, ptr %tmp67, align 4, !dbg !4110
  %66 = load i32, ptr %tmp67, align 4, !dbg !4113
  %67 = load ptr, ptr %authkey, align 8, !dbg !4114
  store ptr %67, ptr %retval, align 8, !dbg !4115
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4115

error_put_authkey:                                ; preds = %if.then65
  call void @llvm.dbg.label(metadata !3968), !dbg !4116
  %68 = load ptr, ptr %authkey, align 8, !dbg !4117
  call void @key_put(ptr noundef %68) #18, !dbg !4118
  br label %error_free_rka, !dbg !4118

error_free_rka:                                   ; preds = %error_put_authkey, %if.then58, %if.then32, %if.then8
  call void @llvm.dbg.label(metadata !3969), !dbg !4119
  %69 = load ptr, ptr %rka, align 8, !dbg !4120
  call void @free_request_key_auth(ptr noundef %69) #18, !dbg !4121
  br label %error, !dbg !4121

error:                                            ; preds = %error_free_rka, %if.then
  call void @llvm.dbg.label(metadata !3970), !dbg !4122
  store i32 0, ptr %tmp68, align 4, !dbg !4123
  %70 = load i32, ptr %tmp68, align 4, !dbg !4126
  %71 = load i32, ptr %ret, align 4, !dbg !4127
  %conv69 = sext i32 %71 to i64, !dbg !4127
  %call70 = call ptr @ERR_PTR(i64 noundef %conv69) #18, !dbg !4128
  store ptr %call70, ptr %retval, align 8, !dbg !4129
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4129

cleanup:                                          ; preds = %error, %if.end66
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !4130
  call void @llvm.lifetime.end.p0(i64 20, ptr %desc) #17, !dbg !4130
  call void @llvm.lifetime.end.p0(i64 8, ptr %authkey) #17, !dbg !4130
  call void @llvm.lifetime.end.p0(i64 8, ptr %cred) #17, !dbg !4130
  call void @llvm.lifetime.end.p0(i64 8, ptr %irka) #17, !dbg !4130
  call void @llvm.lifetime.end.p0(i64 8, ptr %rka) #17, !dbg !4130
  %72 = load ptr, ptr %retval, align 8, !dbg !4130
  ret ptr %72, !dbg !4130
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #3 align 16 !dbg !4131 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #17, !dbg !4142
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4136, metadata !DIExpression()), !dbg !4142
  br label %do.body, !dbg !4142

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !4143
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4138, metadata !DIExpression()), !dbg !4143
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4143
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4143
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !4142
  br label %do.cond, !dbg !4143

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4143

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #17, !dbg !4144
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4140, metadata !DIExpression()), !dbg !4144
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #21, !dbg !4144, !srcloc !4145
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4144
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4144
  %3 = inttoptr i64 %2 to ptr, !dbg !4144
  store ptr %3, ptr %tmp, align 8, !dbg !4144
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #17, !dbg !4142
  %4 = load ptr, ptr %tmp, align 8, !dbg !4144
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4142
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4142
  store ptr %5, ptr %tmp1, align 8, !dbg !4142
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #17, !dbg !4146
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4142
  ret ptr %6, !dbg !4147
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !4148 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4152, metadata !DIExpression()), !dbg !4154
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4153, metadata !DIExpression()), !dbg !4155
  %0 = load i64, ptr %size.addr, align 8, !dbg !4156
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4157
  %or = or i32 %1, 256, !dbg !4158
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !4159
  ret ptr %call, !dbg !4160
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare !dbg !4161 dso_local ptr @kmemdup(ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4165 dso_local i64 @strscpy(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4168 dso_local void @down_read(ptr noundef) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4172 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4180, metadata !DIExpression()), !dbg !4185
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4181, metadata !DIExpression()), !dbg !4186
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !4187
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4182, metadata !DIExpression()), !dbg !4188
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4189
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4190
  %div = udiv i64 %1, 64, !dbg !4190
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4191
  store ptr %add.ptr, ptr %p, align 8, !dbg !4188
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #17, !dbg !4192
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4183, metadata !DIExpression()), !dbg !4193
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4194
  %rem = urem i64 %2, 64, !dbg !4194
  %shl = shl i64 1, %rem, !dbg !4194
  store i64 %shl, ptr %mask, align 8, !dbg !4193
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #17, !dbg !4195
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4184, metadata !DIExpression()), !dbg !4196
  %3 = load ptr, ptr %p, align 8, !dbg !4197
  %4 = load i64, ptr %3, align 8, !dbg !4198
  store i64 %4, ptr %val, align 8, !dbg !4196
  %5 = load i64, ptr %val, align 8, !dbg !4199
  %6 = load i64, ptr %mask, align 8, !dbg !4200
  %and = and i64 %5, %6, !dbg !4201
  %tobool = icmp ne i64 %and, 0, !dbg !4202
  %lnot = xor i1 %tobool, true, !dbg !4202
  %lnot1 = xor i1 %lnot, true, !dbg !4203
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #17, !dbg !4204
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #17, !dbg !4204
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !4204
  ret i1 %lnot1, !dbg !4205
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4206 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4209, metadata !DIExpression()), !dbg !4211
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4210, metadata !DIExpression()), !dbg !4212
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4213
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4214
  %div = udiv i64 %1, 64, !dbg !4214
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4215
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !4216
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4217
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4218
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !4219
  ret i1 %call, !dbg !4220
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4221 dso_local void @up_read(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_cred(ptr noundef %cred) #8 align 16 !dbg !4222 {
entry:
  %retval = alloca ptr, align 8
  %cred.addr = alloca ptr, align 8
  %nonconst_cred = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cred, ptr %cred.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cred.addr, metadata !4226, metadata !DIExpression()), !dbg !4228
  call void @llvm.lifetime.start.p0(i64 8, ptr %nonconst_cred) #17, !dbg !4229
  call void @llvm.dbg.declare(metadata ptr %nonconst_cred, metadata !4227, metadata !DIExpression()), !dbg !4230
  %0 = load ptr, ptr %cred.addr, align 8, !dbg !4231
  store ptr %0, ptr %nonconst_cred, align 8, !dbg !4230
  %1 = load ptr, ptr %cred.addr, align 8, !dbg !4232
  %tobool = icmp ne ptr %1, null, !dbg !4232
  br i1 %tobool, label %if.end, label %if.then, !dbg !4234

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cred.addr, align 8, !dbg !4235
  store ptr %2, ptr %retval, align 8, !dbg !4236
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4236

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %nonconst_cred, align 8, !dbg !4237
  %4 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 25, !dbg !4238
  store i32 0, ptr %4, align 8, !dbg !4239
  %5 = load ptr, ptr %nonconst_cred, align 8, !dbg !4240
  %call = call ptr @get_new_cred(ptr noundef %5) #18, !dbg !4241
  store ptr %call, ptr %retval, align 8, !dbg !4242
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4242

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %nonconst_cred) #17, !dbg !4243
  %6 = load ptr, ptr %retval, align 8, !dbg !4243
  ret ptr %6, !dbg !4243
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @key_get(ptr noundef %key) #8 align 16 !dbg !4244 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4248, metadata !DIExpression()), !dbg !4249
  %0 = load ptr, ptr %key.addr, align 8, !dbg !4250
  %tobool = icmp ne ptr %0, null, !dbg !4250
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4250

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %key.addr, align 8, !dbg !4251
  %call = call ptr @__key_get(ptr noundef %1) #18, !dbg !4252
  br label %cond.end, !dbg !4250

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr %key.addr, align 8, !dbg !4253
  br label %cond.end, !dbg !4250

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call, %cond.true ], [ %2, %cond.false ], !dbg !4250
  ret ptr %cond, !dbg !4254
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4255 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4259 dso_local ptr @key_alloc(ptr noundef, ptr noundef, i32, i32, ptr noundef, i32 noundef, i64 noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #8 align 16 !dbg !4262 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4267, metadata !DIExpression()), !dbg !4268
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4269
  %1 = ptrtoint ptr %0 to i64, !dbg !4269
  %2 = inttoptr i64 %1 to ptr, !dbg !4269
  %3 = ptrtoint ptr %2 to i64, !dbg !4269
  %cmp = icmp uge i64 %3, -4095, !dbg !4269
  %lnot = xor i1 %cmp, true, !dbg !4269
  %lnot1 = xor i1 %lnot, true, !dbg !4269
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4269
  %conv = sext i32 %lnot.ext to i64, !dbg !4269
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4269
  %tobool = icmp ne i64 %expval, 0, !dbg !4269
  ret i1 %tobool, !dbg !4270
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #8 align 16 !dbg !4271 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4275, metadata !DIExpression()), !dbg !4276
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4277
  %1 = ptrtoint ptr %0 to i64, !dbg !4278
  ret i64 %1, !dbg !4279
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4280 dso_local i32 @key_instantiate_and_link(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4283 dso_local void @key_put(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_request_key_auth(ptr noundef %rka) #0 align 16 !dbg !4284 {
entry:
  %rka.addr = alloca ptr, align 8
  store ptr %rka, ptr %rka.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rka.addr, metadata !4288, metadata !DIExpression()), !dbg !4289
  %0 = load ptr, ptr %rka.addr, align 8, !dbg !4290
  %tobool = icmp ne ptr %0, null, !dbg !4290
  br i1 %tobool, label %if.end, label %if.then, !dbg !4292

if.then:                                          ; preds = %entry
  br label %return, !dbg !4293

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %rka.addr, align 8, !dbg !4294
  %target_key = getelementptr inbounds %struct.request_key_auth, ptr %1, i32 0, i32 1, !dbg !4295
  %2 = load ptr, ptr %target_key, align 8, !dbg !4295
  call void @key_put(ptr noundef %2) #18, !dbg !4296
  %3 = load ptr, ptr %rka.addr, align 8, !dbg !4297
  %dest_keyring = getelementptr inbounds %struct.request_key_auth, ptr %3, i32 0, i32 2, !dbg !4298
  %4 = load ptr, ptr %dest_keyring, align 8, !dbg !4298
  call void @key_put(ptr noundef %4) #18, !dbg !4299
  %5 = load ptr, ptr %rka.addr, align 8, !dbg !4300
  %cred = getelementptr inbounds %struct.request_key_auth, ptr %5, i32 0, i32 3, !dbg !4302
  %6 = load ptr, ptr %cred, align 8, !dbg !4302
  %tobool1 = icmp ne ptr %6, null, !dbg !4300
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !4303

if.then2:                                         ; preds = %if.end
  %7 = load ptr, ptr %rka.addr, align 8, !dbg !4304
  %cred3 = getelementptr inbounds %struct.request_key_auth, ptr %7, i32 0, i32 3, !dbg !4305
  %8 = load ptr, ptr %cred3, align 8, !dbg !4305
  call void @put_cred(ptr noundef %8) #18, !dbg !4306
  br label %if.end4, !dbg !4306

if.end4:                                          ; preds = %if.then2, %if.end
  %9 = load ptr, ptr %rka.addr, align 8, !dbg !4307
  %callout_info = getelementptr inbounds %struct.request_key_auth, ptr %9, i32 0, i32 4, !dbg !4308
  %10 = load ptr, ptr %callout_info, align 8, !dbg !4308
  call void @kfree(ptr noundef %10) #18, !dbg !4309
  %11 = load ptr, ptr %rka.addr, align 8, !dbg !4310
  call void @kfree(ptr noundef %11) #18, !dbg !4311
  br label %return, !dbg !4312

return:                                           ; preds = %if.end4, %if.then
  ret void, !dbg !4312
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #8 align 16 !dbg !4313 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !4317, metadata !DIExpression()), !dbg !4318
  %0 = load i64, ptr %error.addr, align 8, !dbg !4319
  %1 = inttoptr i64 %0 to ptr, !dbg !4320
  ret ptr %1, !dbg !4321
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @key_get_instantiation_authkey(i32 noundef %target_id) #0 align 16 !dbg !4322 {
entry:
  %target_id.addr = alloca i32, align 4
  %description = alloca [16 x i8], align 16
  %ctx = alloca %struct.keyring_search_context, align 8
  %tmp = alloca ptr, align 8
  %authkey = alloca ptr, align 8
  %authkey_ref = alloca ptr, align 8
  store i32 %target_id, ptr %target_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %target_id.addr, metadata !4326, metadata !DIExpression()), !dbg !4349
  call void @llvm.lifetime.start.p0(i64 16, ptr %description) #17, !dbg !4350
  call void @llvm.dbg.declare(metadata ptr %description, metadata !4327, metadata !DIExpression()), !dbg !4351
  call void @llvm.lifetime.start.p0(i64 120, ptr %ctx) #17, !dbg !4352
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !4328, metadata !DIExpression()), !dbg !4353
  %index_key = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 0, !dbg !4354
  %hash = getelementptr inbounds %struct.keyring_index_key, ptr %index_key, i32 0, i32 0, !dbg !4355
  store i64 0, ptr %hash, align 8, !dbg !4355
  %0 = getelementptr inbounds %struct.keyring_index_key, ptr %index_key, i32 0, i32 1, !dbg !4355
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 8, i1 false), !dbg !4355
  %type = getelementptr inbounds %struct.keyring_index_key, ptr %index_key, i32 0, i32 2, !dbg !4355
  store ptr @key_type_request_key_auth, ptr %type, align 8, !dbg !4355
  %domain_tag = getelementptr inbounds %struct.keyring_index_key, ptr %index_key, i32 0, i32 3, !dbg !4355
  store ptr null, ptr %domain_tag, align 8, !dbg !4355
  %description1 = getelementptr inbounds %struct.keyring_index_key, ptr %index_key, i32 0, i32 4, !dbg !4355
  %arraydecay = getelementptr inbounds [16 x i8], ptr %description, i64 0, i64 0, !dbg !4356
  store ptr %arraydecay, ptr %description1, align 8, !dbg !4355
  %cred = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 1, !dbg !4354
  br label %do.body, !dbg !4357

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4359

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4359

do.end:                                           ; preds = %do.cond
  %call = call ptr @get_current() #18, !dbg !4357
  %cred2 = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 94, !dbg !4357
  %1 = load ptr, ptr %cred2, align 32, !dbg !4357
  store ptr %1, ptr %tmp, align 8, !dbg !4359
  %2 = load ptr, ptr %tmp, align 8, !dbg !4357
  store ptr %2, ptr %cred, align 8, !dbg !4354
  %match_data = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 2, !dbg !4354
  %cmp = getelementptr inbounds %struct.key_match_data, ptr %match_data, i32 0, i32 0, !dbg !4361
  store ptr @key_default_cmp, ptr %cmp, align 8, !dbg !4361
  %raw_data = getelementptr inbounds %struct.key_match_data, ptr %match_data, i32 0, i32 1, !dbg !4361
  %arraydecay3 = getelementptr inbounds [16 x i8], ptr %description, i64 0, i64 0, !dbg !4362
  store ptr %arraydecay3, ptr %raw_data, align 8, !dbg !4361
  %preparsed = getelementptr inbounds %struct.key_match_data, ptr %match_data, i32 0, i32 2, !dbg !4361
  store ptr null, ptr %preparsed, align 8, !dbg !4361
  %lookup_type = getelementptr inbounds %struct.key_match_data, ptr %match_data, i32 0, i32 3, !dbg !4361
  store i32 0, ptr %lookup_type, align 8, !dbg !4361
  %flags = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 3, !dbg !4354
  store i32 66, ptr %flags, align 8, !dbg !4354
  %iterator = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 4, !dbg !4354
  store ptr null, ptr %iterator, align 8, !dbg !4354
  %skipped_ret = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 5, !dbg !4354
  store i32 0, ptr %skipped_ret, align 8, !dbg !4354
  %possessed = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 6, !dbg !4354
  store i8 0, ptr %possessed, align 4, !dbg !4354
  %result = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 7, !dbg !4354
  store ptr null, ptr %result, align 8, !dbg !4354
  %now = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 8, !dbg !4354
  store i64 0, ptr %now, align 8, !dbg !4354
  call void @llvm.lifetime.start.p0(i64 8, ptr %authkey) #17, !dbg !4363
  call void @llvm.dbg.declare(metadata ptr %authkey, metadata !4346, metadata !DIExpression()), !dbg !4364
  call void @llvm.lifetime.start.p0(i64 8, ptr %authkey_ref) #17, !dbg !4365
  call void @llvm.dbg.declare(metadata ptr %authkey_ref, metadata !4347, metadata !DIExpression()), !dbg !4366
  %arraydecay4 = getelementptr inbounds [16 x i8], ptr %description, i64 0, i64 0, !dbg !4367
  %3 = load i32, ptr %target_id.addr, align 4, !dbg !4368
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay4, ptr noundef @.str.1, i32 noundef %3) #18, !dbg !4369
  %conv = trunc i32 %call5 to i16, !dbg !4369
  %index_key6 = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 0, !dbg !4370
  %4 = getelementptr inbounds %struct.keyring_index_key, ptr %index_key6, i32 0, i32 1, !dbg !4371
  %desc_len = getelementptr inbounds %struct.anon.19, ptr %4, i32 0, i32 0, !dbg !4371
  store i16 %conv, ptr %desc_len, align 8, !dbg !4372
  call void @rcu_read_lock() #18, !dbg !4373
  %call7 = call ptr @search_process_keyrings_rcu(ptr noundef %ctx) #18, !dbg !4374
  store ptr %call7, ptr %authkey_ref, align 8, !dbg !4375
  call void @rcu_read_unlock() #18, !dbg !4376
  %5 = load ptr, ptr %authkey_ref, align 8, !dbg !4377
  %call8 = call zeroext i1 @IS_ERR(ptr noundef %5) #18, !dbg !4379
  br i1 %call8, label %if.then, label %if.end15, !dbg !4380

if.then:                                          ; preds = %do.end
  %6 = load ptr, ptr %authkey_ref, align 8, !dbg !4381
  %call9 = call ptr @ERR_CAST(ptr noundef %6) #18, !dbg !4383
  store ptr %call9, ptr %authkey, align 8, !dbg !4384
  %7 = load ptr, ptr %authkey, align 8, !dbg !4385
  %call10 = call ptr @ERR_PTR(i64 noundef -11) #18, !dbg !4387
  %cmp11 = icmp eq ptr %7, %call10, !dbg !4388
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !4389

if.then13:                                        ; preds = %if.then
  %call14 = call ptr @ERR_PTR(i64 noundef -126) #18, !dbg !4390
  store ptr %call14, ptr %authkey, align 8, !dbg !4391
  br label %if.end, !dbg !4392

if.end:                                           ; preds = %if.then13, %if.then
  br label %error, !dbg !4393

if.end15:                                         ; preds = %do.end
  %8 = load ptr, ptr %authkey_ref, align 8, !dbg !4394
  %call16 = call ptr @key_ref_to_ptr(ptr noundef %8) #18, !dbg !4395
  store ptr %call16, ptr %authkey, align 8, !dbg !4396
  %9 = load ptr, ptr %authkey, align 8, !dbg !4397
  %flags17 = getelementptr inbounds %struct.key, ptr %9, i32 0, i32 14, !dbg !4397
  %10 = ptrtoint ptr %flags17 to i64, !dbg !4397
  %cmp18 = icmp ne i64 %10, 0, !dbg !4397
  %conv19 = zext i1 %cmp18 to i32, !dbg !4397
  %11 = call i1 @llvm.is.constant.i32(i32 %conv19), !dbg !4397
  br i1 %11, label %land.lhs.true, label %cond.false, !dbg !4397

land.lhs.true:                                    ; preds = %if.end15
  %12 = load ptr, ptr %authkey, align 8, !dbg !4397
  %flags20 = getelementptr inbounds %struct.key, ptr %12, i32 0, i32 14, !dbg !4397
  %13 = ptrtoint ptr %flags20 to i64, !dbg !4397
  %cmp21 = icmp ne i64 %13, 0, !dbg !4397
  br i1 %cmp21, label %land.lhs.true23, label %cond.false, !dbg !4397

land.lhs.true23:                                  ; preds = %land.lhs.true
  %14 = load ptr, ptr %authkey, align 8, !dbg !4397
  %flags24 = getelementptr inbounds %struct.key, ptr %14, i32 0, i32 14, !dbg !4397
  %15 = load i64, ptr %flags24, align 8, !dbg !4397
  %16 = call i1 @llvm.is.constant.i64(i64 %15), !dbg !4397
  br i1 %16, label %cond.true, label %cond.false, !dbg !4399

cond.true:                                        ; preds = %land.lhs.true23
  %17 = load ptr, ptr %authkey, align 8, !dbg !4397
  %flags25 = getelementptr inbounds %struct.key, ptr %17, i32 0, i32 14, !dbg !4397
  %call26 = call zeroext i1 @const_test_bit(i64 noundef 1, ptr noundef %flags25) #18, !dbg !4397
  br i1 %call26, label %if.then31, label %if.end33, !dbg !4397

cond.false:                                       ; preds = %land.lhs.true23, %land.lhs.true, %if.end15
  %18 = load ptr, ptr %authkey, align 8, !dbg !4397
  %flags28 = getelementptr inbounds %struct.key, ptr %18, i32 0, i32 14, !dbg !4397
  %call29 = call zeroext i1 @_test_bit(i64 noundef 1, ptr noundef %flags28) #18, !dbg !4397
  br i1 %call29, label %if.then31, label %if.end33, !dbg !4399

if.then31:                                        ; preds = %cond.false, %cond.true
  %19 = load ptr, ptr %authkey, align 8, !dbg !4400
  call void @key_put(ptr noundef %19) #18, !dbg !4402
  %call32 = call ptr @ERR_PTR(i64 noundef -128) #18, !dbg !4403
  store ptr %call32, ptr %authkey, align 8, !dbg !4404
  br label %if.end33, !dbg !4405

if.end33:                                         ; preds = %if.then31, %cond.false, %cond.true
  br label %error, !dbg !4397

error:                                            ; preds = %if.end33, %if.end
  call void @llvm.dbg.label(metadata !4348), !dbg !4406
  %20 = load ptr, ptr %authkey, align 8, !dbg !4407
  call void @llvm.lifetime.end.p0(i64 8, ptr %authkey_ref) #17, !dbg !4408
  call void @llvm.lifetime.end.p0(i64 8, ptr %authkey) #17, !dbg !4408
  call void @llvm.lifetime.end.p0(i64 120, ptr %ctx) #17, !dbg !4408
  call void @llvm.lifetime.end.p0(i64 16, ptr %description) #17, !dbg !4408
  ret ptr %20, !dbg !4409
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @key_default_cmp(ptr noundef, ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #3 align 16 !dbg !4410 {
entry:
  call void @__rcu_read_lock() #18, !dbg !4412
  br label %do.body, !dbg !4413

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4414

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !4416

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4417

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !4419
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4420 dso_local ptr @search_process_keyrings_rcu(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #8 align 16 !dbg !4424 {
entry:
  br label %do.body, !dbg !4425

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4426

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #18, !dbg !4428
  br label %do.body1, !dbg !4429

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4430

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !4432
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_CAST(ptr noundef %ptr) #8 align 16 !dbg !4433 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4437, metadata !DIExpression()), !dbg !4438
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4439
  ret ptr %0, !dbg !4440
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @key_ref_to_ptr(ptr noundef %key_ref) #8 align 16 !dbg !4441 {
entry:
  %key_ref.addr = alloca ptr, align 8
  store ptr %key_ref, ptr %key_ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key_ref.addr, metadata !4446, metadata !DIExpression()), !dbg !4447
  %0 = load ptr, ptr %key_ref.addr, align 8, !dbg !4448
  %1 = ptrtoint ptr %0 to i64, !dbg !4449
  %and = and i64 %1, -2, !dbg !4450
  %2 = inttoptr i64 %and to ptr, !dbg !4451
  ret ptr %2, !dbg !4452
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4453 dso_local void @seq_puts(ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @key_is_positive(ptr noundef %key) #8 align 16 !dbg !4456 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4460, metadata !DIExpression()), !dbg !4461
  %0 = load ptr, ptr %key.addr, align 8, !dbg !4462
  %call = call signext i16 @key_read_state(ptr noundef %0) #18, !dbg !4463
  %conv = sext i16 %call to i32, !dbg !4463
  %cmp = icmp eq i32 %conv, 1, !dbg !4464
  ret i1 %cmp, !dbg !4465
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4466 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal signext i16 @key_read_state(ptr noundef %key) #8 align 16 !dbg !4469 {
entry:
  %key.addr = alloca ptr, align 8
  %___p1 = alloca i16, align 2
  %tmp = alloca i16, align 2
  %tmp4 = alloca i16, align 2
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4473, metadata !DIExpression()), !dbg !4477
  call void @llvm.lifetime.start.p0(i64 2, ptr %___p1) #17, !dbg !4478
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !4474, metadata !DIExpression()), !dbg !4478
  br label %do.body, !dbg !4479

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4481

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4481

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %key.addr, align 8, !dbg !4479
  %state = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 13, !dbg !4479
  %1 = load volatile i16, ptr %state, align 8, !dbg !4479
  store i16 %1, ptr %tmp, align 2, !dbg !4481
  %2 = load i16, ptr %tmp, align 2, !dbg !4479
  store i16 %2, ptr %___p1, align 2, !dbg !4478
  br label %do.body1, !dbg !4478

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !4483

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !4483

do.end3:                                          ; preds = %do.cond2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !4478, !srcloc !4485
  %3 = load i16, ptr %___p1, align 2, !dbg !4478
  store i16 %3, ptr %tmp4, align 2, !dbg !4478
  call void @llvm.lifetime.end.p0(i64 2, ptr %___p1) #17, !dbg !4486
  %4 = load i16, ptr %tmp4, align 2, !dbg !4478
  ret i16 %4, !dbg !4487
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4488 dso_local void @call_rcu(ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @request_key_auth_rcu_disposal(ptr noundef %rcu) #0 align 16 !dbg !4492 {
entry:
  %rcu.addr = alloca ptr, align 8
  %rka = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %rcu, ptr %rcu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rcu.addr, metadata !4494, metadata !DIExpression()), !dbg !4498
  call void @llvm.lifetime.start.p0(i64 8, ptr %rka) #17, !dbg !4499
  call void @llvm.dbg.declare(metadata ptr %rka, metadata !4495, metadata !DIExpression()), !dbg !4500
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !4501
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4496, metadata !DIExpression()), !dbg !4501
  %0 = load ptr, ptr %rcu.addr, align 8, !dbg !4501
  store ptr %0, ptr %__mptr, align 8, !dbg !4501
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4501
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4501
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4501
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !4502
  %2 = load ptr, ptr %tmp, align 8, !dbg !4501
  store ptr %2, ptr %rka, align 8, !dbg !4500
  %3 = load ptr, ptr %rka, align 8, !dbg !4503
  call void @free_request_key_auth(ptr noundef %3) #18, !dbg !4504
  call void @llvm.lifetime.end.p0(i64 8, ptr %rka) #17, !dbg !4505
  ret void, !dbg !4505
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !4506 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4508, metadata !DIExpression()), !dbg !4513
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4509, metadata !DIExpression()), !dbg !4514
  %0 = load i64, ptr %size.addr, align 8, !dbg !4515
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4516
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4517

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4518
  %tobool = icmp ne i64 %2, 0, !dbg !4518
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4519

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !4520
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4510, metadata !DIExpression()), !dbg !4521
  %3 = load i64, ptr %size.addr, align 8, !dbg !4522
  %cmp = icmp ugt i64 %3, 8192, !dbg !4524
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4525

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4526
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4527
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !4528
  store ptr %call, ptr %retval, align 8, !dbg !4529
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4529

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4530
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !4530
  store i32 %call2, ptr %index, align 4, !dbg !4531
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4532
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4533
  %9 = ptrtoint ptr %8 to i64, !dbg !4533
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !4534
  %idxprom = zext i32 %call3 to i64, !dbg !4535
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4535
  %10 = load i32, ptr %index, align 4, !dbg !4536
  %idxprom4 = zext i32 %10 to i64, !dbg !4535
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4535
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4535
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4537
  %13 = load i64, ptr %size.addr, align 8, !dbg !4538
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #22, !dbg !4539
  store ptr %call6, ptr %retval, align 8, !dbg !4540
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4540

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !4541
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4542
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4543
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !4544
  store ptr %call8, ptr %retval, align 8, !dbg !4545
  br label %return, !dbg !4545

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4546
  ret ptr %16, !dbg !4546
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4547 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #3 align 16 !dbg !4548 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4552, metadata !DIExpression()), !dbg !4554
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !4553, metadata !DIExpression()), !dbg !4555
  %0 = load i64, ptr %size.addr, align 8, !dbg !4556
  %tobool = icmp ne i64 %0, 0, !dbg !4556
  br i1 %tobool, label %if.end, label %if.then, !dbg !4558

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4559
  br label %return, !dbg !4559

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4560
  %cmp = icmp ule i64 %1, 8, !dbg !4562
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4563

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4564
  br label %return, !dbg !4564

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4565
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4567
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4568

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4569
  %cmp4 = icmp ule i64 %3, 96, !dbg !4570
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4571

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4572
  br label %return, !dbg !4572

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4573
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4575
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4576

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4577
  %cmp9 = icmp ule i64 %5, 192, !dbg !4578
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4579

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4580
  br label %return, !dbg !4580

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4581
  %cmp12 = icmp ule i64 %6, 8, !dbg !4583
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4584

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4585
  br label %return, !dbg !4585

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !4586
  %cmp15 = icmp ule i64 %7, 16, !dbg !4588
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4589

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !4590
  br label %return, !dbg !4590

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !4591
  %cmp18 = icmp ule i64 %8, 32, !dbg !4593
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4594

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !4595
  br label %return, !dbg !4595

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !4596
  %cmp21 = icmp ule i64 %9, 64, !dbg !4598
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4599

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !4600
  br label %return, !dbg !4600

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !4601
  %cmp24 = icmp ule i64 %10, 128, !dbg !4603
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4604

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !4605
  br label %return, !dbg !4605

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !4606
  %cmp27 = icmp ule i64 %11, 256, !dbg !4608
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4609

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !4610
  br label %return, !dbg !4610

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !4611
  %cmp30 = icmp ule i64 %12, 512, !dbg !4613
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !4614

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !4615
  br label %return, !dbg !4615

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !4616
  %cmp33 = icmp ule i64 %13, 1024, !dbg !4618
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !4619

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !4620
  br label %return, !dbg !4620

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !4621
  %cmp36 = icmp ule i64 %14, 2048, !dbg !4623
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4624

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !4625
  br label %return, !dbg !4625

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !4626
  %cmp39 = icmp ule i64 %15, 4096, !dbg !4628
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !4629

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !4630
  br label %return, !dbg !4630

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !4631
  %cmp42 = icmp ule i64 %16, 8192, !dbg !4633
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !4634

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !4635
  br label %return, !dbg !4635

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !4636
  %cmp45 = icmp ule i64 %17, 16384, !dbg !4638
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !4639

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !4640
  br label %return, !dbg !4640

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !4641
  %cmp48 = icmp ule i64 %18, 32768, !dbg !4643
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !4644

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !4645
  br label %return, !dbg !4645

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !4646
  %cmp51 = icmp ule i64 %19, 65536, !dbg !4648
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4649

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4650
  br label %return, !dbg !4650

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4651
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4653
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4654

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4655
  br label %return, !dbg !4655

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4656
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4658
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4659

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4660
  br label %return, !dbg !4660

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4661
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4663
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4664

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4665
  br label %return, !dbg !4665

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4666
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4668
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4669

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !4670
  br label %return, !dbg !4670

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !4671
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !4673
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !4674

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !4675
  br label %return, !dbg !4675

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !4676, !range !4678, !noundef !850
  %tobool69 = trunc i8 %25 to i1, !dbg !4676
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !4679

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !4680

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #23, !dbg !4681, !srcloc !4684
  unreachable, !dbg !4681

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !4685

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !4686

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !4687

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4689

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4687

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 480, i32 0, i64 12) #17, !dbg !4691, !srcloc !4693
  br label %do.end75, !dbg !4691

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !4687

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !4694
  br label %return, !dbg !4694

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4695
  ret i32 %26, !dbg !4695
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4696 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #3 align 16 !dbg !4702 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4706, metadata !DIExpression()), !dbg !4708
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !4707, metadata !DIExpression()), !dbg !4709
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4710
  %and = and i32 %0, 17, !dbg !4710
  %cmp = icmp eq i32 %and, 0, !dbg !4710
  %lnot = xor i1 %cmp, true, !dbg !4710
  %lnot1 = xor i1 %lnot, true, !dbg !4710
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4710
  %conv = sext i32 %lnot.ext to i64, !dbg !4710
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4710
  %tobool = icmp ne i64 %expval, 0, !dbg !4710
  br i1 %tobool, label %if.then, label %if.end, !dbg !4712

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4713
  br label %return, !dbg !4713

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4714
  %and2 = and i32 %1, 1, !dbg !4716
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4716
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4717

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !4718
  br label %return, !dbg !4718

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4719
  br label %return, !dbg !4719

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4721
  ret i32 %2, !dbg !4721
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4722 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4723 dso_local void @__compiletime_assert_245() #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !4724 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4732, metadata !DIExpression()), !dbg !4734
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4733, metadata !DIExpression()), !dbg !4735
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4736
  %1 = load i64, ptr %size.addr, align 8, !dbg !4737
  %conv = trunc i64 %1 to i32, !dbg !4737
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #18, !dbg !4738
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4739
  %3 = load i64, ptr %size.addr, align 8, !dbg !4739
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #18, !dbg !4739
  ret void, !dbg !4740
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4741 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4744, metadata !DIExpression()), !dbg !4746
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4745, metadata !DIExpression()), !dbg !4747
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4748
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4749
  br i1 %1, label %cond.true, label %cond.false, !dbg !4749

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4750
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4751
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !4752
  %conv = zext i1 %call to i32, !dbg !4752
  br label %cond.end, !dbg !4749

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4753
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4754
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #18, !dbg !4755
  %conv2 = zext i1 %call1 to i32, !dbg !4755
  br label %cond.end, !dbg !4749

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4749
  %tobool = icmp ne i32 %cond, 0, !dbg !4749
  ret i1 %tobool, !dbg !4756
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #8 align 16 !dbg !4757 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4762, metadata !DIExpression()), !dbg !4764
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4763, metadata !DIExpression()), !dbg !4765
  ret i1 true, !dbg !4766
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #8 align 16 !dbg !4767 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4772, metadata !DIExpression()), !dbg !4775
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4773, metadata !DIExpression()), !dbg !4776
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4774, metadata !DIExpression()), !dbg !4777
  ret void, !dbg !4778
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4779 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4783, metadata !DIExpression()), !dbg !4785
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4784, metadata !DIExpression()), !dbg !4786
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4787
  %and = and i64 %0, 63, !dbg !4788
  %shl = shl i64 1, %and, !dbg !4789
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !4790
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4791
  %shr = ashr i64 %2, 6, !dbg !4792
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !4790
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !4790
  %and1 = and i64 %shl, %3, !dbg !4793
  %cmp = icmp ne i64 %and1, 0, !dbg !4794
  ret i1 %cmp, !dbg !4795
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4796 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4798, metadata !DIExpression()), !dbg !4801
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4799, metadata !DIExpression()), !dbg !4802
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #17, !dbg !4803
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !4800, metadata !DIExpression()), !dbg !4804
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4805
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4806
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #17, !dbg !4807, !srcloc !4808
  %3 = icmp ult i8 %2, 2, !dbg !4807
  call void @llvm.assume(i1 %3), !dbg !4807
  store i8 %2, ptr %oldbit, align 1, !dbg !4807
  %4 = load i8, ptr %oldbit, align 1, !dbg !4809, !range !4678, !noundef !850
  %tobool = trunc i8 %4 to i1, !dbg !4809
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #17, !dbg !4810
  ret i1 %tobool, !dbg !4811
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_new_cred(ptr noundef %cred) #8 align 16 !dbg !4812 {
entry:
  %cred.addr = alloca ptr, align 8
  store ptr %cred, ptr %cred.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cred.addr, metadata !4816, metadata !DIExpression()), !dbg !4817
  %0 = load ptr, ptr %cred.addr, align 8, !dbg !4818
  %usage = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 0, !dbg !4819
  call void @atomic_long_inc(ptr noundef %usage) #18, !dbg !4820
  %1 = load ptr, ptr %cred.addr, align 8, !dbg !4821
  ret ptr %1, !dbg !4822
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_inc(ptr noundef %v) #3 align 16 !dbg !4823 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4828, metadata !DIExpression()), !dbg !4829
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4830
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #18, !dbg !4831
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4832
  call void @raw_atomic_long_inc(ptr noundef %1) #18, !dbg !4833
  ret void, !dbg !4834
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !4835 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4837, metadata !DIExpression()), !dbg !4839
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4838, metadata !DIExpression()), !dbg !4840
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4841
  %1 = load i64, ptr %size.addr, align 8, !dbg !4842
  %conv = trunc i64 %1 to i32, !dbg !4842
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !4843
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4844
  %3 = load i64, ptr %size.addr, align 8, !dbg !4844
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #18, !dbg !4844
  ret void, !dbg !4845
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_inc(ptr noundef %v) #3 align 16 !dbg !4846 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4848, metadata !DIExpression()), !dbg !4849
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4850
  call void @raw_atomic64_inc(ptr noundef %0) #18, !dbg !4851
  ret void, !dbg !4852
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #8 align 16 !dbg !4853 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4855, metadata !DIExpression()), !dbg !4857
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4856, metadata !DIExpression()), !dbg !4858
  ret i1 true, !dbg !4859
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_inc(ptr noundef %v) #3 align 16 !dbg !4860 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4866, metadata !DIExpression()), !dbg !4867
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4868
  call void @arch_atomic64_inc(ptr noundef %0) #18, !dbg !4869
  ret void, !dbg !4870
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_inc(ptr noundef %v) #3 align 16 !dbg !4871 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4874, metadata !DIExpression()), !dbg !4875
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4876
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !4877
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4878
  %counter1 = getelementptr inbounds %struct.atomic64_t, ptr %1, i32 0, i32 0, !dbg !4879
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, ptr elementtype(i64) %counter1) #17, !dbg !4880, !srcloc !4881
  ret void, !dbg !4882
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__key_get(ptr noundef %key) #8 align 16 !dbg !4883 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4885, metadata !DIExpression()), !dbg !4886
  %0 = load ptr, ptr %key.addr, align 8, !dbg !4887
  %usage = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 0, !dbg !4888
  call void @refcount_inc(ptr noundef %usage) #18, !dbg !4889
  %1 = load ptr, ptr %key.addr, align 8, !dbg !4890
  ret ptr %1, !dbg !4891
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #8 align 16 !dbg !4892 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4897, metadata !DIExpression()), !dbg !4898
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4899
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #18, !dbg !4900
  ret void, !dbg !4901
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #8 align 16 !dbg !4902 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4906, metadata !DIExpression()), !dbg !4908
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4907, metadata !DIExpression()), !dbg !4909
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4910
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !4911
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #18, !dbg !4912
  ret void, !dbg !4913
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #8 align 16 !dbg !4914 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4918, metadata !DIExpression()), !dbg !4922
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4919, metadata !DIExpression()), !dbg !4923
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4920, metadata !DIExpression()), !dbg !4924
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #17, !dbg !4925
  call void @llvm.dbg.declare(metadata ptr %old, metadata !4921, metadata !DIExpression()), !dbg !4926
  %0 = load i32, ptr %i.addr, align 4, !dbg !4927
  %1 = load ptr, ptr %r.addr, align 8, !dbg !4928
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !4929
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #18, !dbg !4930
  store i32 %call, ptr %old, align 4, !dbg !4926
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !4931
  %tobool = icmp ne ptr %2, null, !dbg !4931
  br i1 %tobool, label %if.then, label %if.end, !dbg !4933

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !4934
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !4935
  store i32 %3, ptr %4, align 4, !dbg !4936
  br label %if.end, !dbg !4937

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !4938
  %tobool1 = icmp ne i32 %5, 0, !dbg !4938
  %lnot = xor i1 %tobool1, true, !dbg !4938
  %lnot2 = xor i1 %lnot, true, !dbg !4938
  %lnot3 = xor i1 %lnot2, true, !dbg !4938
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4938
  %conv = sext i32 %lnot.ext to i64, !dbg !4938
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4938
  %tobool4 = icmp ne i64 %expval, 0, !dbg !4938
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !4940

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !4941
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #18, !dbg !4942
  br label %if.end18, !dbg !4942

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !4943
  %cmp = icmp slt i32 %7, 0, !dbg !4943
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !4943

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !4943
  %9 = load i32, ptr %i.addr, align 4, !dbg !4943
  %add = add i32 %8, %9, !dbg !4943
  %cmp7 = icmp slt i32 %add, 0, !dbg !4943
  br label %lor.end, !dbg !4943

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !4943
  %lnot11 = xor i1 %lnot9, true, !dbg !4943
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !4943
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !4943
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !4943
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !4943
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !4945

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !4946
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #18, !dbg !4947
  br label %if.end17, !dbg !4947

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #17, !dbg !4948
  ret void, !dbg !4948
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !4949 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4954, metadata !DIExpression()), !dbg !4956
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4955, metadata !DIExpression()), !dbg !4957
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4958
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #18, !dbg !4959
  %1 = load i32, ptr %i.addr, align 4, !dbg !4960
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4961
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #18, !dbg !4962
  ret i32 %call, !dbg !4963
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4964 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !4967 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4969, metadata !DIExpression()), !dbg !4971
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4970, metadata !DIExpression()), !dbg !4972
  %0 = load i32, ptr %i.addr, align 4, !dbg !4973
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4974
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #18, !dbg !4975
  ret i32 %call, !dbg !4976
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !4977 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4980, metadata !DIExpression()), !dbg !4984
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4981, metadata !DIExpression()), !dbg !4985
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #17, !dbg !4986
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4982, metadata !DIExpression()), !dbg !4986
  %0 = load i32, ptr %i.addr, align 4, !dbg !4986
  store i32 %0, ptr %__ret, align 4, !dbg !4986
  %1 = load i32, ptr %__ret, align 4, !dbg !4986
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4986
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !4986
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #17, !dbg !4986, !srcloc !4987
  store i32 %3, ptr %__ret, align 4, !dbg !4986
  %4 = load i32, ptr %__ret, align 4, !dbg !4986
  store i32 %4, ptr %tmp, align 4, !dbg !4986
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #17, !dbg !4988
  %5 = load i32, ptr %tmp, align 4, !dbg !4986
  ret i32 %5, !dbg !4989
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_cred(ptr noundef %_cred) #8 align 16 !dbg !4990 {
entry:
  %_cred.addr = alloca ptr, align 8
  %cred = alloca ptr, align 8
  store ptr %_cred, ptr %_cred.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_cred.addr, metadata !4994, metadata !DIExpression()), !dbg !4996
  call void @llvm.lifetime.start.p0(i64 8, ptr %cred) #17, !dbg !4997
  call void @llvm.dbg.declare(metadata ptr %cred, metadata !4995, metadata !DIExpression()), !dbg !4998
  %0 = load ptr, ptr %_cred.addr, align 8, !dbg !4999
  store ptr %0, ptr %cred, align 8, !dbg !4998
  %1 = load ptr, ptr %cred, align 8, !dbg !5000
  %tobool = icmp ne ptr %1, null, !dbg !5000
  br i1 %tobool, label %if.then, label %if.end2, !dbg !5002

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cred, align 8, !dbg !5003
  %usage = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 0, !dbg !5006
  %call = call zeroext i1 @atomic_long_dec_and_test(ptr noundef %usage) #18, !dbg !5007
  br i1 %call, label %if.then1, label %if.end, !dbg !5008

if.then1:                                         ; preds = %if.then
  %3 = load ptr, ptr %cred, align 8, !dbg !5009
  call void @__put_cred(ptr noundef %3) #18, !dbg !5010
  br label %if.end, !dbg !5010

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end2, !dbg !5011

if.end2:                                          ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %cred) #17, !dbg !5012
  ret void, !dbg !5012
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5013 dso_local void @kfree(ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_long_dec_and_test(ptr noundef %v) #3 align 16 !dbg !5016 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5020, metadata !DIExpression()), !dbg !5021
  br label %do.body, !dbg !5022

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5023

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5025
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #18, !dbg !5026
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5027
  %call = call zeroext i1 @raw_atomic_long_dec_and_test(ptr noundef %1) #18, !dbg !5028
  ret i1 %call, !dbg !5029
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5030 dso_local void @__put_cred(ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_long_dec_and_test(ptr noundef %v) #3 align 16 !dbg !5033 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5035, metadata !DIExpression()), !dbg !5036
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5037
  %call = call zeroext i1 @raw_atomic64_dec_and_test(ptr noundef %0) #18, !dbg !5038
  ret i1 %call, !dbg !5039
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic64_dec_and_test(ptr noundef %v) #3 align 16 !dbg !5040 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5044, metadata !DIExpression()), !dbg !5045
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5046
  %call = call zeroext i1 @arch_atomic64_dec_and_test(ptr noundef %0) #18, !dbg !5047
  ret i1 %call, !dbg !5048
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic64_dec_and_test(ptr noundef %v) #3 align 16 !dbg !5049 {
entry:
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5051, metadata !DIExpression()), !dbg !5054
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #17, !dbg !5055
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5052, metadata !DIExpression()), !dbg !5055
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5055
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !5055
  %1 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decq $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, ptr elementtype(i64) %counter) #17, !dbg !5055, !srcloc !5056
  %2 = icmp ult i8 %1, 2, !dbg !5055
  call void @llvm.assume(i1 %2), !dbg !5055
  store i8 %1, ptr %c, align 1, !dbg !5055
  %3 = load i8, ptr %c, align 1, !dbg !5055, !range !4678, !noundef !850
  %tobool = trunc i8 %3 to i1, !dbg !5055
  %frombool = zext i1 %tobool to i8, !dbg !5055
  store i8 %frombool, ptr %tmp, align 1, !dbg !5055
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #17, !dbg !5057
  %4 = load i8, ptr %tmp, align 1, !dbg !5055, !range !4678, !noundef !850
  %tobool1 = trunc i8 %4 to i1, !dbg !5055
  ret i1 %tobool1, !dbg !5058
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5059 dso_local void @__rcu_read_lock() #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5060 dso_local void @__rcu_read_unlock() #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(1) }
attributes #21 = { nounwind memory(none) }
attributes #22 = { noredzone allocsize(2) }
attributes #23 = { noredzone noreturn }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705}
!llvm.ident = !{!3706}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "security/keys/request_key_auth.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2359be7e93a33dd522175dfdd3fe729b")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 18)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "key_type_request_key_auth", scope: !9, file: !2, line: 30, type: !322, isLocal: false, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF security/keys/.request_key_auth.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22security/keys/request_key_auth\22 -D KBUILD_BASENAME=\22request_key_auth\22 -D KBUILD_MODNAME=\22request_key_auth\22 -D __KBUILD_MODNAME=kmod_request_key_auth -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o security/keys/request_key_auth.ll security/keys/request_key_auth.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !115, globals: !3679, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !20, !25, !31, !36, !42, !49, !57, !73, !80, !87, !92, !97, !107}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !12, line: 9, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18, !19}
!15 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!16 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!17 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!18 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!19 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !21, line: 2052, baseType: !13, size: 32, elements: !22)
!21 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!22 = !{!23, !24}
!23 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!24 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !26, line: 54, baseType: !13, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!27 = !{!28, !29, !30}
!28 = !DIEnumerator(name: "USRQUOTA", value: 0)
!29 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!30 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !32, line: 65, baseType: !13, size: 32, elements: !33)
!32 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!33 = !{!34, !35}
!34 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!35 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !37, line: 16, baseType: !13, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!38 = !{!39, !40, !41}
!39 = !DIEnumerator(name: "TT_NONE", value: 0)
!40 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!41 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !43, line: 15, baseType: !13, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!44 = !{!45, !46, !47, !48}
!45 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!46 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!47 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!48 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !50, line: 68, baseType: !13, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!51 = !{!52, !53, !54, !55, !56}
!52 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!53 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!54 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!55 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!56 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !58, line: 1325, baseType: !13, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!59 = !{!60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!60 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!61 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!62 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!63 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!64 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!65 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!66 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!67 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!68 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!69 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!70 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!71 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!72 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !74, line: 51, baseType: !13, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!75 = !{!76, !77, !78, !79}
!76 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!77 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!78 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!79 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kernel_pkey_operation", file: !81, line: 22, baseType: !13, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/keyctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb6b47c8f95fa53866d7002b6a7b8c6")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "kernel_pkey_encrypt", value: 0)
!84 = !DIEnumerator(name: "kernel_pkey_decrypt", value: 1)
!85 = !DIEnumerator(name: "kernel_pkey_sign", value: 2)
!86 = !DIEnumerator(name: "kernel_pkey_verify", value: 3)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "key_state", file: !88, line: 182, baseType: !13, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!89 = !{!90, !91}
!90 = !DIEnumerator(name: "KEY_IS_UNINSTANTIATED", value: 0)
!91 = !DIEnumerator(name: "KEY_IS_POSITIVE", value: 1)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !93, line: 10, baseType: !13, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!94 = !{!95, !96}
!95 = !DIEnumerator(name: "false", value: 0)
!96 = !DIEnumerator(name: "true", value: 1)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !98, line: 364, baseType: !13, size: 32, elements: !99)
!98 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!99 = !{!100, !101, !102, !103, !104, !105, !106}
!100 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!101 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!102 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!103 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!104 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!105 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!106 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !108, line: 119, baseType: !13, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!109 = !{!110, !111, !112, !113, !114}
!110 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!111 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!112 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!113 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!114 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!115 = !{!116, !805, !3655, !280, !3656, !3657, !3669, !3671, !3673, !3676, !1219, !205, !3677, !3678, !713, !173}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !119, line: 110, size: 1472, elements: !120)
!119 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!120 = !{!121, !134, !143, !150, !151, !152, !153, !154, !155, !156, !157, !166, !167, !168, !169, !170, !172, !3611, !3612, !3613, !3614, !3615, !3638, !3639, !3642, !3650}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !118, file: !119, line: 111, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !123, line: 13, baseType: !124)
!123 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !125, line: 181, baseType: !126)
!125 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !125, line: 179, size: 64, elements: !127)
!127 = !{!128}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !126, file: !125, line: 180, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !130, line: 22, baseType: !131)
!130 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !132, line: 30, baseType: !133)
!132 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!133 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !118, file: !119, line: 112, baseType: !135, size: 32, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !136, line: 23, baseType: !137)
!136 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !136, line: 21, size: 32, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !137, file: !136, line: 22, baseType: !140, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !125, line: 37, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !142, line: 49, baseType: !13)
!142 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!143 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !118, file: !119, line: 113, baseType: !144, size: 32, offset: 96)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !136, line: 28, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !136, line: 26, size: 32, elements: !146)
!146 = !{!147}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !145, file: !136, line: 27, baseType: !148, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !125, line: 38, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !142, line: 50, baseType: !13)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !118, file: !119, line: 114, baseType: !135, size: 32, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !118, file: !119, line: 115, baseType: !144, size: 32, offset: 160)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !118, file: !119, line: 116, baseType: !135, size: 32, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !118, file: !119, line: 117, baseType: !144, size: 32, offset: 224)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !118, file: !119, line: 118, baseType: !135, size: 32, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !118, file: !119, line: 119, baseType: !144, size: 32, offset: 288)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !118, file: !119, line: 120, baseType: !13, size: 32, offset: 320)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !118, file: !119, line: 121, baseType: !158, size: 64, offset: 384)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !159, line: 24, baseType: !160)
!159 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !159, line: 24, size: 64, elements: !161)
!161 = !{!162}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !160, file: !159, line: 24, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !130, line: 23, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !132, line: 31, baseType: !165)
!165 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !118, file: !119, line: 122, baseType: !158, size: 64, offset: 448)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !118, file: !119, line: 123, baseType: !158, size: 64, offset: 512)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !118, file: !119, line: 124, baseType: !158, size: 64, offset: 576)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !118, file: !119, line: 125, baseType: !158, size: 64, offset: 640)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !118, file: !119, line: 127, baseType: !171, size: 8, offset: 704)
!171 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !118, file: !119, line: 129, baseType: !173, size: 64, offset: 768)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !88, line: 195, size: 1728, elements: !175)
!175 = !{!176, !186, !191, !209, !250, !279, !281, !288, !289, !290, !291, !296, !297, !298, !300, !301, !3594, !3610}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !174, file: !88, line: 196, baseType: !177, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !108, line: 113, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !108, line: 111, size: 32, elements: !179)
!179 = !{!180}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !178, file: !108, line: 112, baseType: !181, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !125, line: 174, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !125, line: 172, size: 32, elements: !183)
!183 = !{!184}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !182, file: !125, line: 173, baseType: !185, size: 32)
!185 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !174, file: !88, line: 197, baseType: !187, size: 32, offset: 32)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !88, line: 28, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !125, line: 104, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !130, line: 20, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !132, line: 26, baseType: !185)
!191 = !DIDerivedType(tag: DW_TAG_member, scope: !174, file: !88, line: 198, baseType: !192, size: 192, offset: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !174, file: !88, line: 198, size: 192, elements: !193)
!193 = !{!194, !200}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !192, file: !88, line: 199, baseType: !195, size: 128)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !125, line: 190, size: 128, elements: !196)
!196 = !{!197, !199}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !195, file: !125, line: 191, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !195, file: !125, line: 191, baseType: !198, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !192, file: !88, line: 200, baseType: !201, size: 192, align: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !202, line: 5, size: 192, align: 64, elements: !203)
!202 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!203 = !{!204, !206, !208}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !201, file: !202, line: 6, baseType: !205, size: 64)
!205 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !201, file: !202, line: 7, baseType: !207, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !201, file: !202, line: 8, baseType: !207, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !174, file: !88, line: 205, baseType: !210, size: 320, offset: 256)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !211, line: 48, size: 320, elements: !212)
!211 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!212 = !{!213, !214, !215, !220, !249}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !210, file: !211, line: 49, baseType: !122, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !210, file: !211, line: 55, baseType: !122, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !210, file: !211, line: 57, baseType: !216, size: 32, offset: 128)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !217, line: 15, size: 32, elements: !218)
!217 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !216, file: !217, line: 20, baseType: !181, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !210, file: !211, line: 59, baseType: !221, size: 32, offset: 160)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !222, line: 23, baseType: !223)
!222 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !222, line: 14, size: 32, elements: !224)
!224 = !{!225}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !223, file: !222, line: 15, baseType: !226, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !227, line: 44, baseType: !228)
!227 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !227, line: 14, size: 32, elements: !229)
!229 = !{!230}
!230 = !DIDerivedType(tag: DW_TAG_member, scope: !228, file: !227, line: 15, baseType: !231, size: 32)
!231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !228, file: !227, line: 15, size: 32, elements: !232)
!232 = !{!233, !234, !241}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !231, file: !227, line: 16, baseType: !181, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, scope: !231, file: !227, line: 24, baseType: !235, size: 16)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !231, file: !227, line: 24, size: 16, elements: !236)
!236 = !{!237, !240}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !235, file: !227, line: 25, baseType: !238, size: 8)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !130, line: 17, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !132, line: 21, baseType: !171)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !235, file: !227, line: 26, baseType: !238, size: 8, offset: 8)
!241 = !DIDerivedType(tag: DW_TAG_member, scope: !231, file: !227, line: 28, baseType: !242, size: 32)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !231, file: !227, line: 28, size: 32, elements: !243)
!243 = !{!244, !248}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !242, file: !227, line: 29, baseType: !245, size: 16)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !130, line: 19, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !132, line: 24, baseType: !247)
!247 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !242, file: !227, line: 30, baseType: !245, size: 16, offset: 16)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !210, file: !211, line: 60, baseType: !195, size: 128, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !174, file: !88, line: 206, baseType: !251, size: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !253, line: 54, size: 704, elements: !254)
!253 = !DIFile(filename: "security/keys/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "65e07b4072a82be19b875e4a608fcbf3")
!254 = !{!255, !256, !264, !273, !274, !275, !276, !277, !278}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !252, file: !253, line: 55, baseType: !201, size: 192, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "cons_lock", scope: !252, file: !253, line: 56, baseType: !257, size: 256, offset: 192)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !258, line: 66, size: 256, elements: !259)
!258 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!259 = !{!260, !261, !262, !263}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !257, file: !258, line: 67, baseType: !122, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !257, file: !258, line: 68, baseType: !221, size: 32, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !257, file: !258, line: 70, baseType: !216, size: 32, offset: 96)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !257, file: !258, line: 72, baseType: !195, size: 128, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !252, file: !253, line: 57, baseType: !265, size: 32, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !266, line: 29, baseType: !267)
!266 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !266, line: 17, size: 32, elements: !268)
!268 = !{!269}
!269 = !DIDerivedType(tag: DW_TAG_member, scope: !267, file: !266, line: 18, baseType: !270, size: 32)
!270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !267, file: !266, line: 18, size: 32, elements: !271)
!271 = !{!272}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !270, file: !266, line: 19, baseType: !223, size: 32)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !252, file: !253, line: 58, baseType: !177, size: 32, offset: 480)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "nkeys", scope: !252, file: !253, line: 59, baseType: !181, size: 32, offset: 512)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "nikeys", scope: !252, file: !253, line: 60, baseType: !181, size: 32, offset: 544)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !252, file: !253, line: 61, baseType: !135, size: 32, offset: 576)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "qnkeys", scope: !252, file: !253, line: 62, baseType: !185, size: 32, offset: 608)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "qnbytes", scope: !252, file: !253, line: 63, baseType: !185, size: 32, offset: 640)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !174, file: !88, line: 207, baseType: !280, size: 64, offset: 640)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, scope: !174, file: !88, line: 208, baseType: !282, size: 64, offset: 704)
!282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !174, file: !88, line: 208, size: 64, elements: !283)
!283 = !{!284, !287}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !282, file: !88, line: 209, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !286, line: 8, baseType: !131)
!286 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!287 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !282, file: !88, line: 210, baseType: !285, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !174, file: !88, line: 212, baseType: !285, size: 64, offset: 768)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !174, file: !88, line: 213, baseType: !135, size: 32, offset: 832)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !174, file: !88, line: 214, baseType: !144, size: 32, offset: 864)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !174, file: !88, line: 215, baseType: !292, size: 32, offset: 896)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !88, line: 31, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !125, line: 110, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !130, line: 21, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !132, line: 27, baseType: !13)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !174, file: !88, line: 216, baseType: !247, size: 16, offset: 928)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !174, file: !88, line: 217, baseType: !247, size: 16, offset: 944)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !174, file: !88, line: 221, baseType: !299, size: 16, offset: 960)
!299 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !174, file: !88, line: 228, baseType: !205, size: 64, offset: 1024)
!301 = !DIDerivedType(tag: DW_TAG_member, scope: !174, file: !88, line: 245, baseType: !302, size: 320, offset: 1088)
!302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !174, file: !88, line: 245, size: 320, elements: !303)
!303 = !{!304, !3586}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !302, file: !88, line: 246, baseType: !305, size: 320)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !88, line: 114, size: 320, elements: !306)
!306 = !{!307, !308, !320, !3578, !3585}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !305, file: !88, line: 116, baseType: !205, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, scope: !305, file: !88, line: 117, baseType: !309, size: 64, offset: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !305, file: !88, line: 117, size: 64, elements: !310)
!310 = !{!311, !319}
!311 = !DIDerivedType(tag: DW_TAG_member, scope: !309, file: !88, line: 118, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !309, file: !88, line: 118, size: 64, elements: !313)
!313 = !{!314, !315}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !312, file: !88, line: 120, baseType: !245, size: 16)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !312, file: !88, line: 121, baseType: !316, size: 48, offset: 16)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 6)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !309, file: !88, line: 127, baseType: !205, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !305, file: !88, line: 129, baseType: !321, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !323, line: 64, size: 1344, elements: !324)
!323 = !DIFile(filename: "./include/linux/key-type.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79a6b816f9397cf1462a94b9d3d8f5a6")
!324 = !{!325, !328, !332, !333, !337, !361, !365, !369, !370, !390, !394, !398, !399, !3512, !3516, !3521, !3539, !3567, !3572, !3576, !3577}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !322, file: !323, line: 66, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "def_datalen", scope: !322, file: !323, line: 72, baseType: !329, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !125, line: 61, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !142, line: 72, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !142, line: 16, baseType: !205)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !322, file: !323, line: 74, baseType: !13, size: 32, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "vet_description", scope: !322, file: !323, line: 79, baseType: !334, size: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!185, !326}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "preparse", scope: !322, file: !323, line: 85, baseType: !338, size: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!185, !341}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_preparsed_payload", file: !323, line: 31, size: 640, elements: !343)
!343 = !{!344, !345, !347, !355, !358, !359, !360}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "orig_description", scope: !342, file: !323, line: 32, baseType: !326, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !342, file: !323, line: 33, baseType: !346, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !342, file: !323, line: 34, baseType: !348, size: 256, offset: 128)
!348 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !88, line: 134, size: 256, elements: !349)
!349 = !{!350, !351}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !348, file: !88, line: 135, baseType: !280, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !348, file: !88, line: 136, baseType: !352, size: 256)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 256, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 4)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !342, file: !323, line: 35, baseType: !356, size: 64, offset: 384)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !342, file: !323, line: 36, baseType: !329, size: 64, offset: 448)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !342, file: !323, line: 37, baseType: !329, size: 64, offset: 512)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !342, file: !323, line: 38, baseType: !285, size: 64, offset: 576)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "free_preparse", scope: !322, file: !323, line: 89, baseType: !362, size: 64, offset: 320)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !341}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "instantiate", scope: !322, file: !323, line: 95, baseType: !366, size: 64, offset: 384)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!185, !173, !341}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !322, file: !323, line: 102, baseType: !366, size: 64, offset: 448)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "match_preparse", scope: !322, file: !323, line: 108, baseType: !371, size: 64, offset: 512)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!185, !374}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_match_data", file: !323, line: 46, size: 256, elements: !376)
!376 = !{!377, !387, !388, !389}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "cmp", scope: !375, file: !323, line: 51, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!381, !383, !385}
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !125, line: 35, baseType: !382)
!382 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data", scope: !375, file: !323, line: 54, baseType: !356, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "preparsed", scope: !375, file: !323, line: 55, baseType: !280, size: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_type", scope: !375, file: !323, line: 56, baseType: !13, size: 32, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "match_free", scope: !322, file: !323, line: 112, baseType: !391, size: 64, offset: 576)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !374}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "revoke", scope: !322, file: !323, line: 117, baseType: !395, size: 64, offset: 640)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !173}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !322, file: !323, line: 120, baseType: !395, size: 64, offset: 704)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "describe", scope: !322, file: !323, line: 123, baseType: !400, size: 64, offset: 768)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !383, !403}
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !405, line: 17, size: 960, elements: !406)
!405 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!406 = !{!407, !408, !409, !410, !411, !412, !415, !416, !417, !439, !440, !3511}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !404, file: !405, line: 18, baseType: !346, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !404, file: !405, line: 19, baseType: !329, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !404, file: !405, line: 20, baseType: !329, size: 64, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !404, file: !405, line: 21, baseType: !329, size: 64, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !404, file: !405, line: 22, baseType: !329, size: 64, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !404, file: !405, line: 23, baseType: !413, size: 64, offset: 320)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !125, line: 52, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !142, line: 88, baseType: !133)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !404, file: !405, line: 24, baseType: !413, size: 64, offset: 384)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !404, file: !405, line: 25, baseType: !257, size: 256, offset: 448)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !404, file: !405, line: 26, baseType: !418, size: 64, offset: 704)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !405, line: 32, size: 256, elements: !421)
!421 = !{!422, !427, !431, !435}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !420, file: !405, line: 33, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!280, !403, !426}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !420, file: !405, line: 34, baseType: !428, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !403, !280}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !420, file: !405, line: 35, baseType: !432, size: 64, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!280, !403, !280, !426}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !420, file: !405, line: 36, baseType: !436, size: 64, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!185, !403, !280}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !404, file: !405, line: 27, baseType: !185, size: 32, offset: 768)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !404, file: !405, line: 28, baseType: !441, size: 64, offset: 832)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !21, line: 994, size: 1856, align: 64, elements: !444)
!444 = !{!445, !464, !465, !467, !468, !469, !470, !471, !538, !539, !548, !3501, !3502, !3503, !3504, !3505, !3506, !3508, !3509, !3510}
!445 = !DIDerivedType(tag: DW_TAG_member, scope: !443, file: !21, line: 995, baseType: !446, size: 128)
!446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !443, file: !21, line: 995, size: 128, elements: !447)
!447 = !{!448, !454, !463}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !446, file: !21, line: 996, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !450, line: 60, size: 64, elements: !451)
!450 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!451 = !{!452}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !449, file: !450, line: 61, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !446, file: !21, line: 997, baseType: !455, size: 128, align: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !125, line: 232, size: 128, align: 64, elements: !456)
!456 = !{!457, !459}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !455, file: !125, line: 233, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !455, file: !125, line: 234, baseType: !460, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !458}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !446, file: !21, line: 998, baseType: !13, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !443, file: !21, line: 1005, baseType: !265, size: 32, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !443, file: !21, line: 1006, baseType: !466, size: 32, offset: 160)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !125, line: 156, baseType: !13)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !443, file: !21, line: 1007, baseType: !122, size: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !443, file: !21, line: 1008, baseType: !257, size: 256, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !443, file: !21, line: 1009, baseType: !413, size: 64, offset: 512)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !443, file: !21, line: 1010, baseType: !13, size: 32, offset: 576)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !443, file: !21, line: 1011, baseType: !472, size: 256, offset: 640)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !21, line: 948, size: 256, elements: !473)
!473 = !{!474, !497, !534, !535, !536, !537}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !472, file: !21, line: 949, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !476, line: 34, baseType: !477)
!476 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !476, line: 25, size: 64, elements: !478)
!478 = !{!479}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !477, file: !476, line: 26, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !481, line: 27, baseType: !482)
!481 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !481, line: 13, size: 64, elements: !483)
!483 = !{!484, !496}
!484 = !DIDerivedType(tag: DW_TAG_member, scope: !482, file: !481, line: 14, baseType: !485, size: 32)
!485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !482, file: !481, line: 14, size: 32, elements: !486)
!486 = !{!487, !488}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !485, file: !481, line: 15, baseType: !181, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, scope: !485, file: !481, line: 16, baseType: !489, size: 32)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !481, line: 16, size: 32, elements: !490)
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !489, file: !481, line: 18, baseType: !238, size: 8)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !489, file: !481, line: 19, baseType: !493, size: 24, offset: 8)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 24, elements: !494)
!494 = !{!495}
!495 = !DISubrange(count: 3)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !482, file: !481, line: 26, baseType: !226, size: 32, offset: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !472, file: !21, line: 950, baseType: !498, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !12, line: 59, size: 768, elements: !500)
!500 = !{!501, !502, !503, !504, !515, !516, !523, !524}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !499, file: !12, line: 61, baseType: !177, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !499, file: !12, line: 62, baseType: !13, size: 32, offset: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !499, file: !12, line: 63, baseType: !265, size: 32, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !499, file: !12, line: 65, baseType: !505, size: 256, offset: 128)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !506, size: 256, elements: !353)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !125, line: 194, size: 64, elements: !507)
!507 = !{!508}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !506, file: !125, line: 195, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !125, line: 198, size: 128, elements: !511)
!511 = !{!512, !513}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !510, file: !125, line: 199, baseType: !509, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !510, file: !125, line: 199, baseType: !514, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !499, file: !12, line: 66, baseType: !506, size: 64, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !499, file: !12, line: 68, baseType: !517, size: 192, offset: 448)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !518, line: 41, baseType: !519)
!518 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !518, line: 37, size: 192, elements: !520)
!520 = !{!521, !522}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !519, file: !518, line: 38, baseType: !265, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !519, file: !518, line: 39, baseType: !195, size: 128, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !499, file: !12, line: 69, baseType: !455, size: 128, align: 64, offset: 640)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !499, file: !12, line: 70, baseType: !525, offset: 768)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, elements: !532)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !12, line: 54, size: 128, elements: !527)
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !526, file: !12, line: 55, baseType: !185, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !526, file: !12, line: 56, baseType: !530, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !12, line: 56, flags: DIFlagFwdDecl)
!532 = !{!533}
!533 = !DISubrange(count: -1)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !472, file: !21, line: 951, baseType: !11, size: 32, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !472, file: !21, line: 952, baseType: !135, size: 32, offset: 160)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !472, file: !21, line: 952, baseType: !135, size: 32, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !472, file: !21, line: 953, baseType: !185, size: 32, offset: 224)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !443, file: !21, line: 1012, baseType: !116, size: 64, offset: 896)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !443, file: !21, line: 1013, baseType: !540, size: 256, offset: 960)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !21, line: 970, size: 256, elements: !541)
!541 = !{!542, !543, !544, !545, !546, !547}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !540, file: !21, line: 971, baseType: !205, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !540, file: !21, line: 972, baseType: !13, size: 32, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !540, file: !21, line: 973, baseType: !13, size: 32, offset: 96)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !540, file: !21, line: 974, baseType: !13, size: 32, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !540, file: !21, line: 975, baseType: !13, size: 32, offset: 160)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !540, file: !21, line: 976, baseType: !413, size: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !443, file: !21, line: 1014, baseType: !549, size: 128, offset: 1216)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !550, line: 8, size: 128, elements: !551)
!550 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!551 = !{!552, !3500}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !549, file: !550, line: 9, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !555, line: 70, size: 256, elements: !556)
!555 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!556 = !{!557, !3497, !3498, !3499}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !554, file: !555, line: 71, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !560, line: 82, size: 1536, elements: !561)
!560 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!561 = !{!562, !563, !573, !581, !582, !597, !3464, !3466, !3479, !3480, !3481, !3482, !3483, !3489, !3490, !3491}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !559, file: !560, line: 84, baseType: !13, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !559, file: !560, line: 85, baseType: !564, size: 32, offset: 32)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !565, line: 275, baseType: !566)
!565 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !565, line: 275, size: 32, elements: !567)
!567 = !{!568}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !566, file: !565, line: 275, baseType: !569, size: 32)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !565, line: 69, baseType: !570)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !565, line: 64, size: 32, elements: !571)
!571 = !{!572}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !570, file: !565, line: 65, baseType: !13, size: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !559, file: !560, line: 86, baseType: !574, size: 128, offset: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !575, line: 38, size: 128, elements: !576)
!575 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!576 = !{!577, !579}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !574, file: !575, line: 39, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !574, file: !575, line: 39, baseType: !580, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !559, file: !560, line: 87, baseType: !558, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !559, file: !560, line: 88, baseType: !583, size: 128, offset: 256)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !560, line: 49, size: 128, elements: !584)
!584 = !{!585, !594}
!585 = !DIDerivedType(tag: DW_TAG_member, scope: !583, file: !560, line: 50, baseType: !586, size: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !583, file: !560, line: 50, size: 64, elements: !587)
!587 = !{!588, !593}
!588 = !DIDerivedType(tag: DW_TAG_member, scope: !586, file: !560, line: 51, baseType: !589, size: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !586, file: !560, line: 51, size: 64, elements: !590)
!590 = !{!591, !592}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !589, file: !560, line: 52, baseType: !294, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !589, file: !560, line: 52, baseType: !294, size: 32, offset: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !586, file: !560, line: 54, baseType: !163, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !583, file: !560, line: 56, baseType: !595, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !559, file: !560, line: 89, baseType: !598, size: 64, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !21, line: 641, size: 4800, elements: !600)
!600 = !{!601, !603, !604, !605, !606, !607, !608, !611, !612, !808, !3276, !3277, !3278, !3279, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3446, !3449, !3450, !3451, !3460, !3461, !3462, !3463}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !599, file: !21, line: 642, baseType: !602, size: 16)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !125, line: 24, baseType: !247)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !599, file: !21, line: 643, baseType: !247, size: 16, offset: 16)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !599, file: !21, line: 644, baseType: !135, size: 32, offset: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !599, file: !21, line: 645, baseType: !195, size: 128, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !599, file: !21, line: 646, baseType: !144, size: 32, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !599, file: !21, line: 647, baseType: !13, size: 32, offset: 224)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !599, file: !21, line: 650, baseType: !609, size: 64, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !21, line: 607, flags: DIFlagFwdDecl)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !599, file: !21, line: 651, baseType: !609, size: 64, offset: 320)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !599, file: !21, line: 654, baseType: !613, size: 64, offset: 384)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !615)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !21, line: 1966, size: 2048, align: 512, elements: !616)
!616 = !{!617, !621, !634, !640, !644, !648, !652, !656, !660, !664, !668, !669, !675, !679, !718, !749, !756, !762, !766, !770, !774, !778, !782, !788, !792}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !615, file: !21, line: 1967, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!558, !598, !558, !13}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !615, file: !21, line: 1968, baseType: !622, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!326, !558, !598, !625}
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !627, line: 10, size: 128, elements: !628)
!627 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!628 = !{!629, !633}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !626, file: !627, line: 11, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !280}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !626, file: !627, line: 12, baseType: !280, size: 64, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !615, file: !21, line: 1969, baseType: !635, size: 64, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!185, !638, !598, !185}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !159, line: 42, flags: DIFlagFwdDecl)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !615, file: !21, line: 1970, baseType: !641, size: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!609, !598, !185, !381}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !615, file: !21, line: 1972, baseType: !645, size: 64, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!185, !558, !346, !185}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !615, file: !21, line: 1974, baseType: !649, size: 64, offset: 320)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!185, !638, !598, !558, !602, !381}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !615, file: !21, line: 1976, baseType: !653, size: 64, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!185, !558, !598, !558}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !615, file: !21, line: 1977, baseType: !657, size: 64, offset: 448)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!185, !598, !558}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !615, file: !21, line: 1978, baseType: !661, size: 64, offset: 512)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!185, !638, !598, !558, !326}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !615, file: !21, line: 1980, baseType: !665, size: 64, offset: 576)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!185, !638, !598, !558, !602}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !615, file: !21, line: 1982, baseType: !657, size: 64, offset: 640)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !615, file: !21, line: 1983, baseType: !670, size: 64, offset: 704)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!185, !638, !598, !558, !602, !673}
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !125, line: 21, baseType: !674)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !125, line: 18, baseType: !294)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !615, file: !21, line: 1985, baseType: !676, size: 64, offset: 768)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!185, !638, !598, !558, !598, !558, !13}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !615, file: !21, line: 1987, baseType: !680, size: 64, offset: 832)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!185, !638, !558, !683}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !21, line: 226, size: 640, elements: !685)
!685 = !{!686, !687, !688, !698, !707, !708, !714, !715, !716}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !684, file: !21, line: 227, baseType: !13, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !684, file: !21, line: 228, baseType: !602, size: 16, offset: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !21, line: 241, baseType: !689, size: 32, offset: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !684, file: !21, line: 241, size: 32, elements: !690)
!690 = !{!691, !692}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !689, file: !21, line: 242, baseType: !135, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !689, file: !21, line: 243, baseType: !693, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !694, line: 16, baseType: !695)
!694 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !694, line: 14, size: 32, elements: !696)
!696 = !{!697}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !695, file: !694, line: 15, baseType: !140, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !21, line: 245, baseType: !699, size: 32, offset: 96)
!699 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !684, file: !21, line: 245, size: 32, elements: !700)
!700 = !{!701, !702}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !699, file: !21, line: 246, baseType: !144, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !699, file: !21, line: 247, baseType: !703, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !694, line: 20, baseType: !704)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !694, line: 18, size: 32, elements: !705)
!705 = !{!706}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !704, file: !694, line: 19, baseType: !148, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !684, file: !21, line: 249, baseType: !413, size: 64, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !684, file: !21, line: 250, baseType: !709, size: 128, offset: 192)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !286, line: 13, size: 128, elements: !710)
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !709, file: !286, line: 14, baseType: !285, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !709, file: !286, line: 15, baseType: !713, size: 64, offset: 64)
!713 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !684, file: !21, line: 251, baseType: !709, size: 128, offset: 320)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !684, file: !21, line: 252, baseType: !709, size: 128, offset: 448)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !684, file: !21, line: 259, baseType: !717, size: 64, offset: 576)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !615, file: !21, line: 1988, baseType: !719, size: 64, offset: 896)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!185, !638, !722, !724, !294, !13}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !549)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !726, line: 22, size: 1280, elements: !727)
!726 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!727 = !{!728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !725, file: !726, line: 23, baseType: !294, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !725, file: !726, line: 24, baseType: !602, size: 16, offset: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !725, file: !726, line: 25, baseType: !13, size: 32, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !725, file: !726, line: 26, baseType: !293, size: 32, offset: 96)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !725, file: !726, line: 27, baseType: !163, size: 64, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !725, file: !726, line: 28, baseType: !163, size: 64, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !725, file: !726, line: 41, baseType: !163, size: 64, offset: 256)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !725, file: !726, line: 42, baseType: !673, size: 32, offset: 320)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !725, file: !726, line: 43, baseType: !673, size: 32, offset: 352)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !725, file: !726, line: 44, baseType: !135, size: 32, offset: 384)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !725, file: !726, line: 45, baseType: !144, size: 32, offset: 416)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !725, file: !726, line: 46, baseType: !413, size: 64, offset: 448)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !725, file: !726, line: 47, baseType: !709, size: 128, offset: 512)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !725, file: !726, line: 48, baseType: !709, size: 128, offset: 640)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !725, file: !726, line: 49, baseType: !709, size: 128, offset: 768)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !725, file: !726, line: 50, baseType: !709, size: 128, offset: 896)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !725, file: !726, line: 51, baseType: !163, size: 64, offset: 1024)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !725, file: !726, line: 52, baseType: !163, size: 64, offset: 1088)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !725, file: !726, line: 53, baseType: !294, size: 32, offset: 1152)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !725, file: !726, line: 54, baseType: !294, size: 32, offset: 1184)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !725, file: !726, line: 55, baseType: !163, size: 64, offset: 1216)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !615, file: !21, line: 1990, baseType: !750, size: 64, offset: 960)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!753, !558, !346, !329}
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !125, line: 66, baseType: !754)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !142, line: 73, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !142, line: 15, baseType: !713)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !615, file: !21, line: 1991, baseType: !757, size: 64, offset: 1024)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!185, !598, !760, !163, !163}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !21, line: 55, flags: DIFlagFwdDecl)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !615, file: !21, line: 1993, baseType: !763, size: 64, offset: 1088)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!185, !598, !185}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !615, file: !21, line: 1994, baseType: !767, size: 64, offset: 1152)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!185, !598, !558, !717, !13, !602}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !615, file: !21, line: 1997, baseType: !771, size: 64, offset: 1216)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!185, !638, !598, !717, !602}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !615, file: !21, line: 1999, baseType: !775, size: 64, offset: 1280)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!609, !638, !558, !185}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !615, file: !21, line: 2001, baseType: !779, size: 64, offset: 1344)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!185, !638, !558, !609, !185}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !615, file: !21, line: 2003, baseType: !783, size: 64, offset: 1408)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!185, !638, !558, !786}
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !21, line: 76, flags: DIFlagFwdDecl)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !615, file: !21, line: 2005, baseType: !789, size: 64, offset: 1472)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{!185, !558, !786}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !615, file: !21, line: 2006, baseType: !793, size: 64, offset: 1536)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!796, !598}
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !21, line: 3192, size: 192, elements: !798)
!798 = !{!799, !807}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !797, file: !21, line: 3193, baseType: !800, size: 128)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !801, line: 296, size: 128, elements: !802)
!801 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!802 = !{!803, !804, !806}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !800, file: !801, line: 297, baseType: !265, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !800, file: !801, line: 299, baseType: !805, size: 32, offset: 32)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !125, line: 154, baseType: !13)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !800, file: !801, line: 300, baseType: !280, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !797, file: !21, line: 3194, baseType: !294, size: 32, offset: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !599, file: !21, line: 655, baseType: !809, size: 64, offset: 448)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !21, line: 1190, size: 10752, elements: !811)
!811 = !{!812, !813, !814, !815, !816, !817, !859, !994, !1034, !1117, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1134, !1138, !1139, !1142, !1145, !1148, !1151, !1152, !1153, !1194, !3149, !3150, !3151, !3152, !3153, !3154, !3157, !3159, !3166, !3167, !3168, !3169, !3228, !3243, !3244, !3245, !3246, !3247, !3250, !3251, !3252, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !810, file: !21, line: 1191, baseType: !195, size: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !810, file: !21, line: 1192, baseType: !673, size: 32, offset: 128)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !810, file: !21, line: 1193, baseType: !171, size: 8, offset: 160)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !810, file: !21, line: 1194, baseType: !205, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !810, file: !21, line: 1195, baseType: !413, size: 64, offset: 256)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !810, file: !21, line: 1196, baseType: !818, size: 64, offset: 320)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !21, line: 2366, size: 576, elements: !820)
!820 = !{!821, !822, !823, !829, !833, !837, !841, !845, !846, !847, !851, !852, !853, !855, !856, !857, !858}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !819, file: !21, line: 2367, baseType: !326, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !819, file: !21, line: 2368, baseType: !185, size: 32, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !819, file: !21, line: 2376, baseType: !824, size: 64, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!185, !827}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !555, line: 21, flags: DIFlagFwdDecl)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !819, file: !21, line: 2377, baseType: !830, size: 64, offset: 192)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !832)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !21, line: 75, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !819, file: !21, line: 2378, baseType: !834, size: 64, offset: 256)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!558, !818, !185, !326, !280}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !819, file: !21, line: 2380, baseType: !838, size: 64, offset: 320)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{null, !809}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !819, file: !21, line: 2381, baseType: !842, size: 64, offset: 384)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !844, line: 103, flags: DIFlagFwdDecl)
!844 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!845 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !819, file: !21, line: 2382, baseType: !818, size: 64, offset: 448)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !819, file: !21, line: 2383, baseType: !506, size: 64, offset: 512)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !819, file: !21, line: 2385, baseType: !848, offset: 576)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !849, line: 206, elements: !850)
!849 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!850 = !{}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !819, file: !21, line: 2386, baseType: !848, offset: 576)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !819, file: !21, line: 2387, baseType: !848, offset: 576)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !819, file: !21, line: 2388, baseType: !854, offset: 576)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !848, elements: !494)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !819, file: !21, line: 2390, baseType: !848, offset: 576)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !819, file: !21, line: 2391, baseType: !848, offset: 576)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !819, file: !21, line: 2392, baseType: !848, offset: 576)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !819, file: !21, line: 2393, baseType: !848, offset: 576)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !810, file: !21, line: 1197, baseType: !860, size: 64, offset: 384)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !862)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !21, line: 2057, size: 1664, elements: !863)
!863 = !{!864, !868, !872, !873, !877, !883, !887, !888, !889, !893, !897, !901, !902, !903, !909, !914, !915, !919, !920, !921, !922, !926, !930, !977, !992, !993}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !862, file: !21, line: 2058, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!598, !809}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !862, file: !21, line: 2059, baseType: !869, size: 64, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{null, !598}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !862, file: !21, line: 2060, baseType: !869, size: 64, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !862, file: !21, line: 2062, baseType: !874, size: 64, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{null, !598, !185}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !862, file: !21, line: 2063, baseType: !878, size: 64, offset: 256)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!185, !598, !881}
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !21, line: 309, flags: DIFlagFwdDecl)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !862, file: !21, line: 2064, baseType: !884, size: 64, offset: 320)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{!185, !598}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !862, file: !21, line: 2065, baseType: !869, size: 64, offset: 384)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !862, file: !21, line: 2066, baseType: !838, size: 64, offset: 448)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !862, file: !21, line: 2067, baseType: !890, size: 64, offset: 512)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!185, !809, !185}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !862, file: !21, line: 2068, baseType: !894, size: 64, offset: 576)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{!185, !809, !20}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !862, file: !21, line: 2069, baseType: !898, size: 64, offset: 640)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{!185, !809}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !862, file: !21, line: 2070, baseType: !894, size: 64, offset: 704)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !862, file: !21, line: 2071, baseType: !898, size: 64, offset: 768)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !862, file: !21, line: 2072, baseType: !904, size: 64, offset: 832)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!185, !558, !907}
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !21, line: 62, flags: DIFlagFwdDecl)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !862, file: !21, line: 2073, baseType: !910, size: 64, offset: 896)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!185, !809, !913, !346}
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !862, file: !21, line: 2074, baseType: !838, size: 64, offset: 960)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !862, file: !21, line: 2076, baseType: !916, size: 64, offset: 1024)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{!185, !403, !558}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !862, file: !21, line: 2077, baseType: !916, size: 64, offset: 1088)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !862, file: !21, line: 2078, baseType: !916, size: 64, offset: 1152)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !862, file: !21, line: 2079, baseType: !916, size: 64, offset: 1216)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !862, file: !21, line: 2081, baseType: !923, size: 64, offset: 1280)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!753, !809, !185, !346, !329, !413}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !862, file: !21, line: 2082, baseType: !927, size: 64, offset: 1344)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!753, !809, !185, !326, !329, !413}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !862, file: !21, line: 2083, baseType: !931, size: 64, offset: 1408)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!934, !598}
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !26, line: 296, size: 1664, elements: !937)
!937 = !{!938, !939, !940, !941, !942, !943, !944, !945, !946, !962, !963, !964}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !936, file: !26, line: 297, baseType: !510, size: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !936, file: !26, line: 298, baseType: !195, size: 128, offset: 128)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !936, file: !26, line: 299, baseType: !195, size: 128, offset: 256)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !936, file: !26, line: 300, baseType: !195, size: 128, offset: 384)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !936, file: !26, line: 301, baseType: !257, size: 256, offset: 512)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !936, file: !26, line: 302, baseType: !265, size: 32, offset: 768)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !936, file: !26, line: 303, baseType: !181, size: 32, offset: 800)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !936, file: !26, line: 304, baseType: !809, size: 64, offset: 832)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !936, file: !26, line: 305, baseType: !947, size: 64, offset: 896)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !26, line: 68, size: 64, elements: !948)
!948 = !{!949, !961}
!949 = !DIDerivedType(tag: DW_TAG_member, scope: !947, file: !26, line: 69, baseType: !950, size: 32)
!950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !947, file: !26, line: 69, size: 32, elements: !951)
!951 = !{!952, !953, !954}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !950, file: !26, line: 70, baseType: !135, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !950, file: !26, line: 71, baseType: !144, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !950, file: !26, line: 72, baseType: !955, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !956, line: 24, baseType: !957)
!956 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !956, line: 22, size: 32, elements: !958)
!958 = !{!959}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !957, file: !956, line: 23, baseType: !960, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !956, line: 20, baseType: !141)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !947, file: !26, line: 74, baseType: !25, size: 32, offset: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !936, file: !26, line: 306, baseType: !413, size: 64, offset: 960)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !936, file: !26, line: 307, baseType: !205, size: 64, offset: 1024)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !936, file: !26, line: 308, baseType: !965, size: 576, offset: 1088)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !26, line: 205, size: 576, elements: !966)
!966 = !{!967, !969, !970, !971, !972, !973, !974, !975, !976}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !965, file: !26, line: 206, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !26, line: 66, baseType: !133)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !965, file: !26, line: 207, baseType: !968, size: 64, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !965, file: !26, line: 208, baseType: !968, size: 64, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !965, file: !26, line: 209, baseType: !968, size: 64, offset: 192)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !965, file: !26, line: 210, baseType: !968, size: 64, offset: 256)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !965, file: !26, line: 211, baseType: !968, size: 64, offset: 320)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !965, file: !26, line: 212, baseType: !968, size: 64, offset: 384)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !965, file: !26, line: 213, baseType: !285, size: 64, offset: 448)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !965, file: !26, line: 214, baseType: !285, size: 64, offset: 512)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !862, file: !21, line: 2085, baseType: !978, size: 64, offset: 1472)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{!713, !809, !981}
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !983, line: 15, size: 256, elements: !984)
!983 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!984 = !{!985, !986, !987, !988, !989}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !982, file: !983, line: 16, baseType: !805, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !982, file: !983, line: 19, baseType: !185, size: 32, offset: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !982, file: !983, line: 26, baseType: !205, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !982, file: !983, line: 33, baseType: !205, size: 64, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !982, file: !983, line: 36, baseType: !990, size: 64, offset: 192)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !983, line: 36, flags: DIFlagFwdDecl)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !862, file: !21, line: 2087, baseType: !978, size: 64, offset: 1536)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !862, file: !21, line: 2089, baseType: !838, size: 64, offset: 1600)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !810, file: !21, line: 1198, baseType: !995, size: 64, offset: 448)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !997)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !26, line: 324, size: 704, elements: !998)
!998 = !{!999, !1003, !1007, !1011, !1012, !1013, !1014, !1015, !1020, !1025, !1029}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !997, file: !26, line: 325, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!185, !935}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !997, file: !26, line: 326, baseType: !1004, size: 64, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!935, !809, !185}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !997, file: !26, line: 327, baseType: !1008, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{null, !935}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !997, file: !26, line: 328, baseType: !1000, size: 64, offset: 192)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !997, file: !26, line: 329, baseType: !1000, size: 64, offset: 256)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !997, file: !26, line: 330, baseType: !1000, size: 64, offset: 320)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !997, file: !26, line: 331, baseType: !890, size: 64, offset: 384)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !997, file: !26, line: 334, baseType: !1016, size: 64, offset: 448)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!1019, !598}
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !997, file: !26, line: 335, baseType: !1021, size: 64, offset: 512)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!185, !598, !1024}
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !997, file: !26, line: 337, baseType: !1026, size: 64, offset: 576)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!185, !598, !1019}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !997, file: !26, line: 339, baseType: !1030, size: 64, offset: 640)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!185, !809, !1033}
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !810, file: !21, line: 1199, baseType: !1035, size: 64, offset: 512)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1037)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !26, line: 430, size: 704, elements: !1038)
!1038 = !{!1039, !1043, !1044, !1048, !1049, !1050, !1065, !1088, !1092, !1093, !1116}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1037, file: !26, line: 431, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!185, !809, !185, !185, !722}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1037, file: !26, line: 432, baseType: !890, size: 64, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1037, file: !26, line: 433, baseType: !1045, size: 64, offset: 128)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!185, !809, !13}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1037, file: !26, line: 434, baseType: !1045, size: 64, offset: 192)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1037, file: !26, line: 435, baseType: !890, size: 64, offset: 256)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1037, file: !26, line: 436, baseType: !1051, size: 64, offset: 320)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!185, !809, !185, !1054}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !26, line: 417, size: 256, elements: !1056)
!1056 = !{!1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1055, file: !26, line: 418, baseType: !185, size: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1055, file: !26, line: 419, baseType: !13, size: 32, offset: 32)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1055, file: !26, line: 420, baseType: !13, size: 32, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1055, file: !26, line: 422, baseType: !13, size: 32, offset: 96)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1055, file: !26, line: 423, baseType: !13, size: 32, offset: 128)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1055, file: !26, line: 424, baseType: !13, size: 32, offset: 160)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1055, file: !26, line: 425, baseType: !13, size: 32, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1055, file: !26, line: 426, baseType: !13, size: 32, offset: 224)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1037, file: !26, line: 437, baseType: !1066, size: 64, offset: 384)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!185, !809, !947, !1069}
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !26, line: 345, size: 960, elements: !1071)
!1071 = !{!1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1070, file: !26, line: 346, baseType: !185, size: 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1070, file: !26, line: 347, baseType: !163, size: 64, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1070, file: !26, line: 348, baseType: !163, size: 64, offset: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1070, file: !26, line: 349, baseType: !163, size: 64, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1070, file: !26, line: 350, baseType: !163, size: 64, offset: 256)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1070, file: !26, line: 351, baseType: !163, size: 64, offset: 320)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1070, file: !26, line: 352, baseType: !163, size: 64, offset: 384)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1070, file: !26, line: 353, baseType: !129, size: 64, offset: 448)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1070, file: !26, line: 355, baseType: !129, size: 64, offset: 512)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1070, file: !26, line: 356, baseType: !185, size: 32, offset: 576)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1070, file: !26, line: 357, baseType: !185, size: 32, offset: 608)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1070, file: !26, line: 358, baseType: !163, size: 64, offset: 640)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1070, file: !26, line: 359, baseType: !163, size: 64, offset: 704)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1070, file: !26, line: 360, baseType: !163, size: 64, offset: 768)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1070, file: !26, line: 361, baseType: !129, size: 64, offset: 832)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1070, file: !26, line: 362, baseType: !185, size: 32, offset: 896)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1037, file: !26, line: 438, baseType: !1089, size: 64, offset: 448)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!185, !809, !1033, !1069}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1037, file: !26, line: 440, baseType: !1066, size: 64, offset: 512)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1037, file: !26, line: 441, baseType: !1094, size: 64, offset: 576)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!185, !809, !1097}
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !26, line: 411, size: 1408, elements: !1099)
!1099 = !{!1100, !1101}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1098, file: !26, line: 412, baseType: !13, size: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1098, file: !26, line: 413, baseType: !1102, size: 1344, offset: 64)
!1102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1103, size: 1344, elements: !494)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !26, line: 397, size: 448, elements: !1104)
!1104 = !{!1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1115}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1103, file: !26, line: 398, baseType: !13, size: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1103, file: !26, line: 399, baseType: !13, size: 32, offset: 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1103, file: !26, line: 401, baseType: !13, size: 32, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1103, file: !26, line: 402, baseType: !13, size: 32, offset: 96)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1103, file: !26, line: 403, baseType: !13, size: 32, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1103, file: !26, line: 404, baseType: !13, size: 32, offset: 160)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1103, file: !26, line: 405, baseType: !13, size: 32, offset: 192)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1103, file: !26, line: 406, baseType: !165, size: 64, offset: 256)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1103, file: !26, line: 407, baseType: !1114, size: 64, offset: 320)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !125, line: 132, baseType: !163)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1103, file: !26, line: 408, baseType: !1114, size: 64, offset: 384)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1037, file: !26, line: 442, baseType: !1045, size: 64, offset: 640)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !810, file: !21, line: 1200, baseType: !1118, size: 64, offset: 576)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1120)
!1120 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !21, line: 54, flags: DIFlagFwdDecl)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !810, file: !21, line: 1201, baseType: !205, size: 64, offset: 640)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !810, file: !21, line: 1202, baseType: !205, size: 64, offset: 704)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !810, file: !21, line: 1203, baseType: !205, size: 64, offset: 768)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !810, file: !21, line: 1204, baseType: !558, size: 64, offset: 832)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !810, file: !21, line: 1205, baseType: !210, size: 320, offset: 896)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !810, file: !21, line: 1206, baseType: !185, size: 32, offset: 1216)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !810, file: !21, line: 1207, baseType: !181, size: 32, offset: 1248)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !810, file: !21, line: 1209, baseType: !280, size: 64, offset: 1280)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !810, file: !21, line: 1211, baseType: !1130, size: 64, offset: 1344)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1133)
!1133 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !21, line: 1211, flags: DIFlagFwdDecl)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !810, file: !21, line: 1223, baseType: !1135, size: 64, offset: 1408)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !575, line: 34, size: 64, elements: !1136)
!1136 = !{!1137}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1135, file: !575, line: 35, baseType: !578, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !810, file: !21, line: 1224, baseType: !195, size: 128, offset: 1472)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !810, file: !21, line: 1225, baseType: !1140, size: 64, offset: 1600)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !21, line: 1225, flags: DIFlagFwdDecl)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !810, file: !21, line: 1226, baseType: !1143, size: 64, offset: 1664)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !21, line: 1226, flags: DIFlagFwdDecl)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !810, file: !21, line: 1227, baseType: !1146, size: 64, offset: 1728)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !21, line: 50, flags: DIFlagFwdDecl)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !810, file: !21, line: 1228, baseType: !1149, size: 64, offset: 1792)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !21, line: 1228, flags: DIFlagFwdDecl)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !810, file: !21, line: 1229, baseType: !510, size: 128, offset: 1856)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !810, file: !21, line: 1230, baseType: !13, size: 32, offset: 1984)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !810, file: !21, line: 1231, baseType: !1154, size: 2496, offset: 2048)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !26, line: 521, size: 2496, elements: !1155)
!1155 = !{!1156, !1157, !1158, !1160, !1192}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1154, file: !26, line: 522, baseType: !13, size: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1154, file: !26, line: 523, baseType: !210, size: 320, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1154, file: !26, line: 524, baseType: !1159, size: 192, offset: 384)
!1159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 192, elements: !494)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1154, file: !26, line: 525, baseType: !1161, size: 1728, offset: 576)
!1161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1162, size: 1728, elements: !494)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !26, line: 222, size: 576, elements: !1163)
!1163 = !{!1164, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1162, file: !26, line: 223, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !26, line: 445, size: 256, elements: !1167)
!1167 = !{!1168, !1169, !1182, !1183}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1166, file: !26, line: 446, baseType: !185, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1166, file: !26, line: 447, baseType: !1170, size: 64, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1172)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !26, line: 312, size: 512, elements: !1173)
!1173 = !{!1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1172, file: !26, line: 313, baseType: !890, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1172, file: !26, line: 314, baseType: !890, size: 64, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1172, file: !26, line: 315, baseType: !890, size: 64, offset: 128)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1172, file: !26, line: 316, baseType: !890, size: 64, offset: 192)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1172, file: !26, line: 317, baseType: !1000, size: 64, offset: 256)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1172, file: !26, line: 318, baseType: !1000, size: 64, offset: 320)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1172, file: !26, line: 319, baseType: !1000, size: 64, offset: 384)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1172, file: !26, line: 320, baseType: !1030, size: 64, offset: 448)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1166, file: !26, line: 448, baseType: !842, size: 64, offset: 128)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1166, file: !26, line: 449, baseType: !1165, size: 64, offset: 192)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1162, file: !26, line: 224, baseType: !185, size: 32, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1162, file: !26, line: 226, baseType: !195, size: 128, offset: 128)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1162, file: !26, line: 227, baseType: !205, size: 64, offset: 256)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1162, file: !26, line: 228, baseType: !13, size: 32, offset: 320)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1162, file: !26, line: 229, baseType: !13, size: 32, offset: 352)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1162, file: !26, line: 230, baseType: !968, size: 64, offset: 384)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1162, file: !26, line: 231, baseType: !968, size: 64, offset: 448)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1162, file: !26, line: 232, baseType: !280, size: 64, offset: 512)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1154, file: !26, line: 526, baseType: !1193, size: 192, offset: 2304)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1170, size: 192, elements: !494)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !810, file: !21, line: 1233, baseType: !1195, size: 2368, offset: 4544)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !21, line: 1184, size: 2368, elements: !1196)
!1196 = !{!1197, !1198, !1199}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1195, file: !21, line: 1185, baseType: !247, size: 16)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1195, file: !21, line: 1186, baseType: !247, size: 16, offset: 16)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1195, file: !21, line: 1187, baseType: !1200, size: 2304, offset: 64)
!1200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1201, size: 2304, elements: !494)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1202, line: 12, size: 768, elements: !1203)
!1202 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1203 = !{!1204, !1212, !1214, !3147, !3148}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1201, file: !1202, line: 13, baseType: !1205, size: 384)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1206, line: 17, size: 384, elements: !1207)
!1206 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1207 = !{!1208, !1209, !1210, !1211}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1205, file: !1206, line: 18, baseType: !185, size: 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1205, file: !1206, line: 19, baseType: !185, size: 32, offset: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1205, file: !1206, line: 20, baseType: !517, size: 192, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1205, file: !1206, line: 22, baseType: !455, size: 128, align: 64, offset: 256)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1201, file: !1202, line: 14, baseType: !1213, size: 64, offset: 384)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1201, file: !1202, line: 15, baseType: !1215, size: 64, offset: 448)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1216, line: 16, size: 64, elements: !1217)
!1216 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1217 = !{!1218}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1215, file: !1216, line: 17, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1221, line: 746, size: 58368, elements: !1222)
!1221 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1222 = !{!1223, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1303, !1314, !1409, !1413, !1416, !1447, !1448, !1449, !1450, !1461, !1463, !1464, !1465, !1466, !1467, !1468, !1479, !1480, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1497, !1498, !1505, !1506, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1740, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1755, !1756, !1757, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1799, !1805, !1806, !1807, !1808, !1809, !1813, !1816, !1823, !1828, !1831, !1834, !1837, !1840, !1981, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2023, !2024, !2025, !2034, !2042, !2043, !2044, !2045, !2046, !2051, !2052, !2053, !2056, !2057, !2060, !2063, !2066, !2074, !2077, !2078, !2164, !2165, !2166, !2167, !2168, !2174, !2175, !2176, !2177, !2180, !2181, !2184, !2198, !2199, !2202, !2203, !2204, !2207, !2208, !2209, !2212, !2213, !2214, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2246, !2249, !2791, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2803, !2875, !2877, !2878, !2879, !2880, !2881, !2893, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2922, !2923, !2924}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1220, file: !1221, line: 752, baseType: !1224, size: 192)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1225, line: 56, size: 192, elements: !1226)
!1225 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1226 = !{!1227, !1228, !1229, !1230}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1224, file: !1225, line: 57, baseType: !205, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1224, file: !1225, line: 58, baseType: !205, size: 64, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1224, file: !1225, line: 59, baseType: !294, size: 32, offset: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1224, file: !1225, line: 61, baseType: !294, size: 32, offset: 160)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1220, file: !1221, line: 754, baseType: !13, size: 32, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1220, file: !1221, line: 767, baseType: !280, size: 64, offset: 256)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1220, file: !1221, line: 768, baseType: !177, size: 32, offset: 320)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1220, file: !1221, line: 770, baseType: !13, size: 32, offset: 352)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1220, file: !1221, line: 771, baseType: !13, size: 32, offset: 384)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1220, file: !1221, line: 774, baseType: !185, size: 32, offset: 416)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1220, file: !1221, line: 775, baseType: !1238, size: 128, offset: 448)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1239, line: 58, size: 128, elements: !1240)
!1239 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1240 = !{!1241, !1242, !1247, !1248}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1238, file: !1239, line: 59, baseType: !449, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, scope: !1238, file: !1239, line: 60, baseType: !1243, size: 32, offset: 64)
!1243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1238, file: !1239, line: 60, size: 32, elements: !1244)
!1244 = !{!1245, !1246}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1243, file: !1239, line: 61, baseType: !13, size: 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1243, file: !1239, line: 62, baseType: !181, size: 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1238, file: !1239, line: 65, baseType: !245, size: 16, offset: 96)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1238, file: !1239, line: 65, baseType: !245, size: 16, offset: 112)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1220, file: !1221, line: 776, baseType: !13, size: 32, offset: 576)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1220, file: !1221, line: 777, baseType: !205, size: 64, offset: 640)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1220, file: !1221, line: 778, baseType: !1219, size: 64, offset: 704)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1220, file: !1221, line: 787, baseType: !185, size: 32, offset: 768)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1220, file: !1221, line: 788, baseType: !185, size: 32, offset: 800)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1220, file: !1221, line: 790, baseType: !185, size: 32, offset: 832)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1220, file: !1221, line: 792, baseType: !185, size: 32, offset: 864)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1220, file: !1221, line: 793, baseType: !185, size: 32, offset: 896)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1220, file: !1221, line: 794, baseType: !185, size: 32, offset: 928)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1220, file: !1221, line: 795, baseType: !13, size: 32, offset: 960)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1220, file: !1221, line: 797, baseType: !1260, size: 2048, offset: 1024)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1221, line: 551, size: 2048, elements: !1261)
!1261 = !{!1262, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1282, !1285, !1286, !1287}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1260, file: !1221, line: 553, baseType: !1263, size: 128)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1221, line: 411, size: 128, elements: !1264)
!1264 = !{!1265, !1266}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1263, file: !1221, line: 412, baseType: !205, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1263, file: !1221, line: 413, baseType: !294, size: 32, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1260, file: !1221, line: 554, baseType: !201, size: 192, align: 64, offset: 128)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1260, file: !1221, line: 555, baseType: !163, size: 64, offset: 320)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1260, file: !1221, line: 556, baseType: !163, size: 64, offset: 384)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1260, file: !1221, line: 558, baseType: !195, size: 128, offset: 448)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1260, file: !1221, line: 559, baseType: !13, size: 32, offset: 576)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1260, file: !1221, line: 561, baseType: !163, size: 64, offset: 640)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1260, file: !1221, line: 562, baseType: !163, size: 64, offset: 704)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1260, file: !1221, line: 563, baseType: !163, size: 64, offset: 768)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1260, file: !1221, line: 564, baseType: !163, size: 64, offset: 832)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1260, file: !1221, line: 565, baseType: !129, size: 64, offset: 896)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1260, file: !1221, line: 566, baseType: !163, size: 64, offset: 960)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1260, file: !1221, line: 568, baseType: !163, size: 64, offset: 1024)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1260, file: !1221, line: 571, baseType: !185, size: 32, offset: 1088)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1260, file: !1221, line: 572, baseType: !1281, size: 64, offset: 1152)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1260, file: !1221, line: 574, baseType: !1283, size: 64, offset: 1216)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1221, line: 49, flags: DIFlagFwdDecl)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1260, file: !1221, line: 576, baseType: !1283, size: 64, offset: 1280)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1260, file: !1221, line: 578, baseType: !205, size: 64, offset: 1344)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1260, file: !1221, line: 588, baseType: !1288, size: 512, align: 512, offset: 1536)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1221, line: 497, size: 512, align: 512, elements: !1289)
!1289 = !{!1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1288, file: !1221, line: 498, baseType: !163, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1288, file: !1221, line: 499, baseType: !163, size: 64, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1288, file: !1221, line: 500, baseType: !163, size: 64, offset: 128)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1288, file: !1221, line: 501, baseType: !294, size: 32, offset: 192)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1288, file: !1221, line: 502, baseType: !294, size: 32, offset: 224)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1288, file: !1221, line: 503, baseType: !205, size: 64, offset: 256)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1288, file: !1221, line: 504, baseType: !205, size: 64, offset: 320)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1288, file: !1221, line: 505, baseType: !205, size: 64, offset: 384)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1288, file: !1221, line: 506, baseType: !1299, size: 64, align: 64, offset: 448)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1221, line: 445, size: 64, align: 64, elements: !1300)
!1300 = !{!1301, !1302}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1299, file: !1221, line: 446, baseType: !13, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1299, file: !1221, line: 447, baseType: !13, size: 32, offset: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1220, file: !1221, line: 798, baseType: !1304, size: 384, offset: 3072)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1221, line: 592, size: 384, elements: !1305)
!1305 = !{!1306, !1307, !1308, !1309, !1310, !1311, !1312}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1304, file: !1221, line: 593, baseType: !195, size: 128)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1304, file: !1221, line: 594, baseType: !205, size: 64, offset: 128)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1304, file: !1221, line: 595, baseType: !205, size: 64, offset: 192)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1304, file: !1221, line: 596, baseType: !13, size: 32, offset: 256)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1304, file: !1221, line: 597, baseType: !247, size: 16, offset: 288)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1304, file: !1221, line: 598, baseType: !247, size: 16, offset: 304)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1304, file: !1221, line: 600, baseType: !1313, size: 64, offset: 320)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1220, file: !1221, line: 799, baseType: !1315, size: 1792, offset: 3456)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1221, line: 610, size: 1792, elements: !1316)
!1316 = !{!1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1406, !1407}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1315, file: !1221, line: 611, baseType: !201, size: 192, align: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1315, file: !1221, line: 618, baseType: !163, size: 64, offset: 192)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1315, file: !1221, line: 619, baseType: !163, size: 64, offset: 256)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1315, file: !1221, line: 620, baseType: !163, size: 64, offset: 320)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1315, file: !1221, line: 621, baseType: !163, size: 64, offset: 384)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1315, file: !1221, line: 622, baseType: !163, size: 64, offset: 448)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1315, file: !1221, line: 629, baseType: !129, size: 64, offset: 512)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1315, file: !1221, line: 630, baseType: !163, size: 64, offset: 576)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1315, file: !1221, line: 631, baseType: !13, size: 32, offset: 640)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1315, file: !1221, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1315, file: !1221, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1315, file: !1221, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1315, file: !1221, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1315, file: !1221, line: 662, baseType: !1331, size: 512, offset: 704)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !32, line: 118, size: 512, elements: !1332)
!1332 = !{!1333, !1341, !1342, !1347, !1402, !1403, !1404, !1405}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1331, file: !32, line: 119, baseType: !1334, size: 256)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1335, line: 9, size: 256, elements: !1336)
!1335 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1336 = !{!1337, !1338}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1334, file: !1335, line: 10, baseType: !201, size: 192, align: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1334, file: !1335, line: 11, baseType: !1339, size: 64, offset: 192)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1340, line: 29, baseType: !129)
!1340 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1331, file: !32, line: 120, baseType: !1339, size: 64, offset: 256)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1331, file: !32, line: 121, baseType: !1343, size: 64, offset: 320)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!31, !1346}
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1331, file: !32, line: 122, baseType: !1348, size: 64, offset: 384)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !32, line: 159, size: 512, align: 512, elements: !1350)
!1350 = !{!1351, !1376, !1377, !1380, !1385, !1386, !1397, !1401}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1349, file: !32, line: 160, baseType: !1352, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !32, line: 215, size: 4608, align: 512, elements: !1354)
!1354 = !{!1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1353, file: !32, line: 216, baseType: !221, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1353, file: !32, line: 217, baseType: !13, size: 32, offset: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1353, file: !32, line: 218, baseType: !13, size: 32, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1353, file: !32, line: 219, baseType: !13, size: 32, offset: 96)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1353, file: !32, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1353, file: !32, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1353, file: !32, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1353, file: !32, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1353, file: !32, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1353, file: !32, line: 226, baseType: !13, size: 32, offset: 160)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1353, file: !32, line: 227, baseType: !247, size: 16, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1353, file: !32, line: 228, baseType: !247, size: 16, offset: 208)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1353, file: !32, line: 229, baseType: !13, size: 32, offset: 224)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1353, file: !32, line: 235, baseType: !1339, size: 64, offset: 256)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1353, file: !32, line: 236, baseType: !1346, size: 64, offset: 320)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1353, file: !32, line: 237, baseType: !1339, size: 64, offset: 384)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1353, file: !32, line: 238, baseType: !1346, size: 64, offset: 448)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1353, file: !32, line: 239, baseType: !1373, size: 4096, align: 512, offset: 512)
!1373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1349, size: 4096, align: 512, elements: !1374)
!1374 = !{!1375}
!1375 = !DISubrange(count: 8)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1349, file: !32, line: 161, baseType: !13, size: 32, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1349, file: !32, line: 162, baseType: !1378, size: 32, offset: 96)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !125, line: 32, baseType: !1379)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !142, line: 96, baseType: !185)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1349, file: !32, line: 163, baseType: !1381, size: 32, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !565, line: 274, baseType: !1382)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !565, line: 274, size: 32, elements: !1383)
!1383 = !{!1384}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1382, file: !565, line: 274, baseType: !569, size: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1349, file: !32, line: 164, baseType: !1346, size: 64, offset: 192)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1349, file: !32, line: 165, baseType: !1387, size: 128, offset: 256)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1335, line: 14, size: 128, elements: !1388)
!1388 = !{!1389}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1387, file: !1335, line: 15, baseType: !1390, size: 128)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !202, line: 26, size: 128, elements: !1391)
!1391 = !{!1392, !1396}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1390, file: !202, line: 27, baseType: !1393, size: 64)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !202, line: 12, size: 64, elements: !1394)
!1394 = !{!1395}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1393, file: !202, line: 13, baseType: !207, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1390, file: !202, line: 28, baseType: !207, size: 64, offset: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1349, file: !32, line: 166, baseType: !1398, size: 64, offset: 384)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!1339}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1349, file: !32, line: 167, baseType: !1339, size: 64, offset: 448)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1331, file: !32, line: 123, baseType: !238, size: 8, offset: 448)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1331, file: !32, line: 124, baseType: !238, size: 8, offset: 456)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1331, file: !32, line: 125, baseType: !238, size: 8, offset: 464)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1331, file: !32, line: 126, baseType: !238, size: 8, offset: 472)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1315, file: !1221, line: 671, baseType: !1331, size: 512, offset: 1216)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1315, file: !1221, line: 679, baseType: !1408, size: 64, offset: 1728)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1220, file: !1221, line: 800, baseType: !1410, size: 64, offset: 5248)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1412)
!1412 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1221, line: 800, flags: DIFlagFwdDecl)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1220, file: !1221, line: 809, baseType: !1414, size: 64, offset: 5312)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1221, line: 70, flags: DIFlagFwdDecl)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1220, file: !1221, line: 825, baseType: !1417, size: 2048, align: 512, offset: 5632)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1221, line: 509, size: 2048, align: 512, elements: !1418)
!1418 = !{!1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1417, file: !1221, line: 511, baseType: !163, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1417, file: !1221, line: 512, baseType: !163, size: 64, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1417, file: !1221, line: 513, baseType: !163, size: 64, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1417, file: !1221, line: 514, baseType: !163, size: 64, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1417, file: !1221, line: 515, baseType: !163, size: 64, offset: 256)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1417, file: !1221, line: 516, baseType: !163, size: 64, offset: 320)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1417, file: !1221, line: 518, baseType: !163, size: 64, offset: 384)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1417, file: !1221, line: 519, baseType: !163, size: 64, offset: 448)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1417, file: !1221, line: 520, baseType: !129, size: 64, offset: 512)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1417, file: !1221, line: 522, baseType: !163, size: 64, offset: 576)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1417, file: !1221, line: 523, baseType: !163, size: 64, offset: 640)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1417, file: !1221, line: 524, baseType: !129, size: 64, offset: 704)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1417, file: !1221, line: 526, baseType: !129, size: 64, offset: 768)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1417, file: !1221, line: 527, baseType: !163, size: 64, offset: 832)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1417, file: !1221, line: 529, baseType: !163, size: 64, offset: 896)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1417, file: !1221, line: 530, baseType: !163, size: 64, offset: 960)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1417, file: !1221, line: 531, baseType: !163, size: 64, offset: 1024)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1417, file: !1221, line: 532, baseType: !163, size: 64, offset: 1088)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1417, file: !1221, line: 533, baseType: !163, size: 64, offset: 1152)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1417, file: !1221, line: 535, baseType: !163, size: 64, offset: 1216)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1417, file: !1221, line: 536, baseType: !163, size: 64, offset: 1280)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1417, file: !1221, line: 537, baseType: !163, size: 64, offset: 1344)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1417, file: !1221, line: 538, baseType: !163, size: 64, offset: 1408)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1417, file: !1221, line: 539, baseType: !163, size: 64, offset: 1472)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1417, file: !1221, line: 540, baseType: !163, size: 64, offset: 1536)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1417, file: !1221, line: 541, baseType: !163, size: 64, offset: 1600)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1417, file: !1221, line: 542, baseType: !163, size: 64, offset: 1664)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1417, file: !1221, line: 543, baseType: !163, size: 64, offset: 1728)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1220, file: !1221, line: 833, baseType: !13, size: 32, offset: 7680)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1220, file: !1221, line: 836, baseType: !13, size: 32, offset: 7712)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1220, file: !1221, line: 837, baseType: !185, size: 32, offset: 7744)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1220, file: !1221, line: 838, baseType: !1451, size: 64, offset: 7808)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1453)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1454, line: 19, baseType: !1455)
!1454 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1454, line: 19, size: 64, elements: !1456)
!1456 = !{!1457}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1455, file: !1454, line: 19, baseType: !1458, size: 64)
!1458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 64, elements: !1459)
!1459 = !{!1460}
!1460 = !DISubrange(count: 1)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1220, file: !1221, line: 839, baseType: !1462, size: 64, offset: 7872)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1220, file: !1221, line: 840, baseType: !1453, size: 64, offset: 7936)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1220, file: !1221, line: 841, baseType: !280, size: 64, offset: 8000)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1220, file: !1221, line: 843, baseType: !247, size: 16, offset: 8064)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1220, file: !1221, line: 845, baseType: !247, size: 16, offset: 8080)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1220, file: !1221, line: 848, baseType: !185, size: 32, offset: 8096)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1220, file: !1221, line: 849, baseType: !1469, size: 32, offset: 8128)
!1469 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1221, line: 718, size: 32, elements: !1470)
!1470 = !{!1471, !1478}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1469, file: !1221, line: 724, baseType: !1472, size: 32)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1469, file: !1221, line: 719, size: 32, elements: !1473)
!1473 = !{!1474, !1475, !1476, !1477}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1472, file: !1221, line: 720, baseType: !238, size: 8)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1472, file: !1221, line: 721, baseType: !238, size: 8, offset: 8)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1472, file: !1221, line: 722, baseType: !238, size: 8, offset: 16)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1472, file: !1221, line: 723, baseType: !238, size: 8, offset: 24)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1469, file: !1221, line: 725, baseType: !294, size: 32)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1220, file: !1221, line: 850, baseType: !195, size: 128, offset: 8192)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1220, file: !1221, line: 851, baseType: !1481, size: 64, offset: 8320)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1221, line: 60, flags: DIFlagFwdDecl)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1220, file: !1221, line: 855, baseType: !205, size: 64, offset: 8384)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1220, file: !1221, line: 856, baseType: !238, size: 8, offset: 8448)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1220, file: !1221, line: 857, baseType: !238, size: 8, offset: 8456)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1220, file: !1221, line: 858, baseType: !185, size: 32, offset: 8480)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1220, file: !1221, line: 859, baseType: !195, size: 128, offset: 8512)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1220, file: !1221, line: 860, baseType: !185, size: 32, offset: 8640)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1220, file: !1221, line: 861, baseType: !195, size: 128, offset: 8704)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1220, file: !1221, line: 873, baseType: !1491, size: 256, offset: 8832)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1221, line: 376, size: 256, elements: !1492)
!1492 = !{!1493, !1494, !1495, !1496}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1491, file: !1221, line: 381, baseType: !205, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1491, file: !1221, line: 384, baseType: !165, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1491, file: !1221, line: 389, baseType: !165, size: 64, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1491, file: !1221, line: 392, baseType: !165, size: 64, offset: 192)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1220, file: !1221, line: 875, baseType: !195, size: 128, offset: 9088)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1220, file: !1221, line: 877, baseType: !1499, size: 320, offset: 9216)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1500, line: 86, size: 320, elements: !1501)
!1500 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1501 = !{!1502, !1503, !1504}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1499, file: !1500, line: 87, baseType: !185, size: 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1499, file: !1500, line: 88, baseType: !195, size: 128, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1499, file: !1500, line: 89, baseType: !195, size: 128, offset: 192)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1220, file: !1221, line: 878, baseType: !201, size: 192, align: 64, offset: 9536)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1220, file: !1221, line: 881, baseType: !1507, size: 64, offset: 9728)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !58, line: 733, size: 10240, elements: !1509)
!1509 = !{!1510, !1659}
!1510 = !DIDerivedType(tag: DW_TAG_member, scope: !1508, file: !58, line: 734, baseType: !1511, size: 10240)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1508, file: !58, line: 734, size: 10240, elements: !1512)
!1512 = !{!1513, !1517, !1530, !1534, !1535, !1536, !1537, !1538, !1539, !1548, !1549, !1550, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1589, !1599, !1602, !1626, !1627, !1628, !1631, !1634, !1635, !1638, !1639, !1640, !1646, !1647}
!1513 = !DIDerivedType(tag: DW_TAG_member, scope: !1511, file: !58, line: 739, baseType: !1514, size: 512, align: 512)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1511, file: !58, line: 739, size: 512, align: 512, elements: !1515)
!1515 = !{!1516}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1514, file: !58, line: 747, baseType: !181, size: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1511, file: !58, line: 750, baseType: !1518, size: 128, offset: 512)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1519, line: 218, size: 128, elements: !1520)
!1519 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1520 = !{!1521, !1528, !1529}
!1521 = !DIDerivedType(tag: DW_TAG_member, scope: !1518, file: !1519, line: 219, baseType: !1522, size: 32)
!1522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1518, file: !1519, line: 219, size: 32, elements: !1523)
!1523 = !{!1524, !1525}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1522, file: !1519, line: 220, baseType: !265, size: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1522, file: !1519, line: 221, baseType: !1526)
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1519, line: 197, baseType: !1527)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1519, line: 197, elements: !850)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1518, file: !1519, line: 223, baseType: !13, size: 32, offset: 32)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1518, file: !1519, line: 224, baseType: !280, size: 64, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1511, file: !58, line: 752, baseType: !1531, size: 64, offset: 640)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!205, !717, !205, !205, !205, !205}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1511, file: !58, line: 756, baseType: !205, size: 64, offset: 704)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1511, file: !58, line: 757, baseType: !205, size: 64, offset: 768)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1511, file: !58, line: 760, baseType: !205, size: 64, offset: 832)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1511, file: !58, line: 761, baseType: !205, size: 64, offset: 896)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1511, file: !58, line: 763, baseType: !205, size: 64, offset: 960)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1511, file: !58, line: 764, baseType: !1540, size: 64, offset: 1024)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1542, line: 299, baseType: !1543)
!1542 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1542, line: 299, size: 64, elements: !1544)
!1544 = !{!1545}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1543, file: !1542, line: 299, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1547, line: 18, baseType: !205)
!1547 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1511, file: !58, line: 773, baseType: !181, size: 32, offset: 1088)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1511, file: !58, line: 785, baseType: !181, size: 32, offset: 1120)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1511, file: !58, line: 795, baseType: !1551, size: 64, offset: 1152)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !58, line: 726, size: 128, elements: !1553)
!1553 = !{!1554, !1555}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1552, file: !58, line: 727, baseType: !163, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1552, file: !58, line: 728, baseType: !185, size: 32, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1511, file: !58, line: 801, baseType: !205, size: 64, offset: 1216)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1511, file: !58, line: 804, baseType: !122, size: 64, offset: 1280)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1511, file: !58, line: 806, baseType: !185, size: 32, offset: 1344)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1511, file: !58, line: 808, baseType: !265, size: 32, offset: 1376)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1511, file: !58, line: 823, baseType: !210, size: 320, offset: 1408)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1511, file: !58, line: 825, baseType: !195, size: 128, offset: 1728)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1511, file: !58, line: 845, baseType: !185, size: 32, offset: 1856)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1511, file: !58, line: 849, baseType: !205, size: 64, offset: 1920)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1511, file: !58, line: 850, baseType: !205, size: 64, offset: 1984)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1511, file: !58, line: 852, baseType: !205, size: 64, offset: 2048)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1511, file: !58, line: 853, baseType: !205, size: 64, offset: 2112)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1511, file: !58, line: 854, baseType: !124, size: 64, offset: 2176)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1511, file: !58, line: 855, baseType: !205, size: 64, offset: 2240)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1511, file: !58, line: 856, baseType: !205, size: 64, offset: 2304)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1511, file: !58, line: 857, baseType: !205, size: 64, offset: 2368)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1511, file: !58, line: 858, baseType: !205, size: 64, offset: 2432)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1511, file: !58, line: 865, baseType: !569, size: 32, offset: 2496)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1511, file: !58, line: 867, baseType: !265, size: 32, offset: 2528)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1511, file: !58, line: 869, baseType: !205, size: 64, offset: 2560)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1511, file: !58, line: 869, baseType: !205, size: 64, offset: 2624)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1511, file: !58, line: 869, baseType: !205, size: 64, offset: 2688)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1511, file: !58, line: 869, baseType: !205, size: 64, offset: 2752)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1511, file: !58, line: 870, baseType: !205, size: 64, offset: 2816)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1511, file: !58, line: 870, baseType: !205, size: 64, offset: 2880)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1511, file: !58, line: 870, baseType: !205, size: 64, offset: 2944)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1511, file: !58, line: 871, baseType: !205, size: 64, offset: 3008)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1511, file: !58, line: 871, baseType: !205, size: 64, offset: 3072)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1511, file: !58, line: 871, baseType: !205, size: 64, offset: 3136)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1511, file: !58, line: 871, baseType: !205, size: 64, offset: 3200)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1511, file: !58, line: 873, baseType: !1586, size: 3328, offset: 3264)
!1586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 3328, elements: !1587)
!1587 = !{!1588}
!1588 = !DISubrange(count: 52)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1511, file: !58, line: 875, baseType: !1590, size: 1280, offset: 6592)
!1590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1591, size: 1280, elements: !353)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1592, line: 22, size: 320, elements: !1593)
!1592 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1593 = !{!1594, !1595, !1596, !1597}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1591, file: !1592, line: 23, baseType: !221, size: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1591, file: !1592, line: 24, baseType: !129, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1591, file: !1592, line: 26, baseType: !195, size: 128, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1591, file: !1592, line: 28, baseType: !1598, size: 64, offset: 256)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1511, file: !58, line: 877, baseType: !1600, size: 64, offset: 7872)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !58, line: 877, flags: DIFlagFwdDecl)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1511, file: !58, line: 880, baseType: !1603, size: 1088, offset: 7936)
!1603 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1604, line: 72, baseType: !1605)
!1604 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1604, line: 23, size: 1088, elements: !1606)
!1606 = !{!1607, !1608, !1609, !1610, !1611, !1614, !1615, !1616, !1617, !1621, !1622, !1623}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1605, file: !1604, line: 28, baseType: !163, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1605, file: !1604, line: 38, baseType: !124, size: 64, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1605, file: !1604, line: 40, baseType: !205, size: 64, offset: 128)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1605, file: !1604, line: 43, baseType: !210, size: 320, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1605, file: !1604, line: 44, baseType: !1612, size: 64, offset: 512)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1604, line: 44, flags: DIFlagFwdDecl)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1605, file: !1604, line: 48, baseType: !205, size: 64, offset: 576)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1605, file: !1604, line: 59, baseType: !257, size: 256, offset: 640)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1605, file: !1604, line: 60, baseType: !280, size: 64, offset: 896)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1605, file: !1604, line: 61, baseType: !1618, size: 64, offset: 960)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1620)
!1620 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1604, line: 61, flags: DIFlagFwdDecl)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1605, file: !1604, line: 63, baseType: !181, size: 32, offset: 1024)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1605, file: !1604, line: 69, baseType: !245, size: 16, offset: 1056)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1605, file: !1604, line: 70, baseType: !1624, size: 16, offset: 1072)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !130, line: 18, baseType: !1625)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !132, line: 23, baseType: !299)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1511, file: !58, line: 882, baseType: !205, size: 64, offset: 9024)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1511, file: !58, line: 885, baseType: !265, size: 32, offset: 9088)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1511, file: !58, line: 886, baseType: !1629, size: 64, offset: 9152)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !58, line: 732, flags: DIFlagFwdDecl)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1511, file: !58, line: 901, baseType: !1632, size: 64, offset: 9216)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !136, line: 18, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1511, file: !58, line: 904, baseType: !717, size: 64, offset: 9280)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1511, file: !58, line: 906, baseType: !1636, size: 64, offset: 9344)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !58, line: 906, flags: DIFlagFwdDecl)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1511, file: !58, line: 930, baseType: !181, size: 32, offset: 9408)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1511, file: !58, line: 933, baseType: !181, size: 32, offset: 9440)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1511, file: !58, line: 935, baseType: !1641, size: 64, offset: 9472)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !74, line: 103, size: 64, elements: !1642)
!1642 = !{!1643}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1641, file: !74, line: 104, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !74, line: 101, flags: DIFlagFwdDecl)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1511, file: !58, line: 940, baseType: !122, size: 64, offset: 9536)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1511, file: !58, line: 942, baseType: !1648, size: 256, offset: 9600)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1649, line: 98, size: 256, elements: !1650)
!1649 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1650 = !{!1651, !1652, !1653}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1648, file: !1649, line: 99, baseType: !122, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1648, file: !1649, line: 100, baseType: !195, size: 128, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1648, file: !1649, line: 101, baseType: !1654, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1649, line: 21, baseType: !1655)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{null, !1658}
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1508, file: !58, line: 986, baseType: !1660, offset: 10240)
!1660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, elements: !532)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1220, file: !1221, line: 882, baseType: !1507, size: 64, offset: 9792)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1220, file: !1221, line: 884, baseType: !185, size: 32, offset: 9856)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1220, file: !1221, line: 885, baseType: !185, size: 32, offset: 9888)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1220, file: !1221, line: 886, baseType: !185, size: 32, offset: 9920)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1220, file: !1221, line: 888, baseType: !185, size: 32, offset: 9952)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1220, file: !1221, line: 890, baseType: !205, size: 64, offset: 9984)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1220, file: !1221, line: 893, baseType: !13, size: 32, offset: 10048)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1220, file: !1221, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1220, file: !1221, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1220, file: !1221, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1220, file: !1221, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1220, file: !1221, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1220, file: !1221, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1220, file: !1221, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1220, file: !1221, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1220, file: !1221, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1220, file: !1221, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1220, file: !1221, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1220, file: !1221, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1220, file: !1221, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1220, file: !1221, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1220, file: !1221, line: 969, baseType: !205, size: 64, offset: 10176)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1220, file: !1221, line: 971, baseType: !1684, size: 448, offset: 10240)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !37, line: 25, size: 448, elements: !1685)
!1685 = !{!1686, !1687, !1692}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1684, file: !37, line: 26, baseType: !205, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1684, file: !37, line: 27, baseType: !1688, size: 64, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!713, !1691}
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, scope: !1684, file: !37, line: 28, baseType: !1693, size: 320, offset: 128)
!1693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1684, file: !37, line: 28, size: 320, elements: !1694)
!1694 = !{!1695, !1705, !1730}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1693, file: !37, line: 37, baseType: !1696, size: 320)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1693, file: !37, line: 30, size: 320, elements: !1697)
!1697 = !{!1698, !1700, !1701, !1702, !1703, !1704}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1696, file: !37, line: 31, baseType: !1699, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1696, file: !37, line: 32, baseType: !294, size: 32, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1696, file: !37, line: 33, baseType: !294, size: 32, offset: 96)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1696, file: !37, line: 34, baseType: !294, size: 32, offset: 128)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1696, file: !37, line: 35, baseType: !163, size: 64, offset: 192)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1696, file: !37, line: 36, baseType: !1699, size: 64, offset: 256)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1693, file: !37, line: 47, baseType: !1706, size: 192)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1693, file: !37, line: 39, size: 192, elements: !1707)
!1707 = !{!1708, !1709, !1710, !1729}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1706, file: !37, line: 40, baseType: !1378, size: 32)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1706, file: !37, line: 41, baseType: !36, size: 32, offset: 32)
!1710 = !DIDerivedType(tag: DW_TAG_member, scope: !1706, file: !37, line: 42, baseType: !1711, size: 64, offset: 64)
!1711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1706, file: !37, line: 42, size: 64, elements: !1712)
!1712 = !{!1713, !1721}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1711, file: !37, line: 43, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1716, line: 7, size: 128, elements: !1717)
!1716 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1717 = !{!1718, !1720}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1715, file: !1716, line: 8, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !142, line: 93, baseType: !133)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1715, file: !1716, line: 9, baseType: !133, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1711, file: !37, line: 44, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1724, line: 7, size: 64, elements: !1725)
!1724 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1725 = !{!1726, !1728}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1723, file: !1724, line: 8, baseType: !1727, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1724, line: 5, baseType: !189)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1723, file: !1724, line: 9, baseType: !189, size: 32, offset: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1706, file: !37, line: 46, baseType: !163, size: 64, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1693, file: !37, line: 55, baseType: !1731, size: 256)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1693, file: !37, line: 49, size: 256, elements: !1732)
!1732 = !{!1733, !1736, !1737, !1738, !1739}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1731, file: !37, line: 50, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !37, line: 14, flags: DIFlagFwdDecl)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1731, file: !37, line: 51, baseType: !185, size: 32, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1731, file: !37, line: 52, baseType: !185, size: 32, offset: 96)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1731, file: !37, line: 53, baseType: !205, size: 64, offset: 128)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1731, file: !37, line: 54, baseType: !205, size: 64, offset: 192)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1220, file: !1221, line: 973, baseType: !1741, size: 32, offset: 10688)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !125, line: 27, baseType: !1742)
!1742 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !142, line: 28, baseType: !185)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1220, file: !1221, line: 974, baseType: !1741, size: 32, offset: 10720)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1220, file: !1221, line: 978, baseType: !205, size: 64, offset: 10752)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1220, file: !1221, line: 987, baseType: !1219, size: 64, offset: 10816)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1220, file: !1221, line: 990, baseType: !1219, size: 64, offset: 10880)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1220, file: !1221, line: 995, baseType: !195, size: 128, offset: 10944)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1220, file: !1221, line: 996, baseType: !195, size: 128, offset: 11072)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1220, file: !1221, line: 997, baseType: !1219, size: 64, offset: 11200)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1220, file: !1221, line: 1005, baseType: !195, size: 128, offset: 11264)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1220, file: !1221, line: 1006, baseType: !195, size: 128, offset: 11392)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1220, file: !1221, line: 1009, baseType: !498, size: 64, offset: 11520)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1220, file: !1221, line: 1010, baseType: !1754, size: 512, offset: 11584)
!1754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !510, size: 512, elements: !353)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1220, file: !1221, line: 1011, baseType: !195, size: 128, offset: 12096)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1220, file: !1221, line: 1012, baseType: !195, size: 128, offset: 12224)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1220, file: !1221, line: 1014, baseType: !1758, size: 64, offset: 12352)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1760, line: 26, size: 256, elements: !1761)
!1760 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1761 = !{!1762, !1763}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1759, file: !1760, line: 27, baseType: !13, size: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1759, file: !1760, line: 28, baseType: !1764, size: 192, offset: 64)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1765, line: 43, size: 192, elements: !1766)
!1765 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1766 = !{!1767, !1768}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1764, file: !1765, line: 44, baseType: !221, size: 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1764, file: !1765, line: 45, baseType: !195, size: 128, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1220, file: !1221, line: 1017, baseType: !913, size: 64, offset: 12416)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1220, file: !1221, line: 1020, baseType: !913, size: 64, offset: 12480)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1220, file: !1221, line: 1023, baseType: !280, size: 64, offset: 12544)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1220, file: !1221, line: 1025, baseType: !163, size: 64, offset: 12608)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1220, file: !1221, line: 1026, baseType: !163, size: 64, offset: 12672)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1220, file: !1221, line: 1031, baseType: !163, size: 64, offset: 12736)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1220, file: !1221, line: 1032, baseType: !1776, size: 192, offset: 12800)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1221, line: 324, size: 192, elements: !1777)
!1777 = !{!1778, !1779, !1780}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1776, file: !1221, line: 326, baseType: !163, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1776, file: !1221, line: 327, baseType: !163, size: 64, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1776, file: !1221, line: 328, baseType: !221, size: 32, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1220, file: !1221, line: 1041, baseType: !205, size: 64, offset: 12992)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1220, file: !1221, line: 1042, baseType: !205, size: 64, offset: 13056)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1220, file: !1221, line: 1045, baseType: !163, size: 64, offset: 13120)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1220, file: !1221, line: 1048, baseType: !163, size: 64, offset: 13184)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1220, file: !1221, line: 1051, baseType: !205, size: 64, offset: 13248)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1220, file: !1221, line: 1052, baseType: !205, size: 64, offset: 13312)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1220, file: !1221, line: 1055, baseType: !1788, size: 640, offset: 13376)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1789, line: 132, size: 640, elements: !1790)
!1789 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1790 = !{!1791, !1797, !1798}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1788, file: !1789, line: 133, baseType: !1792, size: 576)
!1792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1793, size: 576, elements: !494)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1789, line: 117, size: 192, elements: !1794)
!1794 = !{!1795, !1796}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1793, file: !1789, line: 118, baseType: !163, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1793, file: !1789, line: 119, baseType: !1387, size: 128, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1788, file: !1789, line: 134, baseType: !13, size: 32, offset: 576)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1788, file: !1789, line: 135, baseType: !13, size: 32, offset: 608)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1220, file: !1221, line: 1058, baseType: !1800, size: 448, offset: 14016)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1789, line: 144, size: 448, elements: !1801)
!1801 = !{!1802, !1803, !1804}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1800, file: !1789, line: 145, baseType: !455, size: 128, align: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1800, file: !1789, line: 146, baseType: !257, size: 256, offset: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1800, file: !1789, line: 147, baseType: !13, size: 32, offset: 384)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1220, file: !1221, line: 1064, baseType: !116, size: 64, offset: 14464)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1220, file: !1221, line: 1067, baseType: !116, size: 64, offset: 14528)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1220, file: !1221, line: 1070, baseType: !116, size: 64, offset: 14592)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1220, file: !1221, line: 1074, baseType: !173, size: 64, offset: 14656)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1220, file: !1221, line: 1084, baseType: !1810, size: 128, offset: 14720)
!1810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !1811)
!1811 = !{!1812}
!1812 = !DISubrange(count: 16)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1220, file: !1221, line: 1086, baseType: !1814, size: 64, offset: 14848)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1221, line: 55, flags: DIFlagFwdDecl)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1220, file: !1221, line: 1089, baseType: !1817, size: 64, offset: 14912)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1818, line: 12, size: 64, elements: !1819)
!1818 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1819 = !{!1820}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1817, file: !1818, line: 13, baseType: !1821, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1818, line: 8, flags: DIFlagFwdDecl)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1220, file: !1221, line: 1090, baseType: !1824, size: 128, offset: 14976)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1825, line: 13, size: 128, elements: !1826)
!1825 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1826 = !{!1827}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1824, file: !1825, line: 14, baseType: !195, size: 128)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1220, file: !1221, line: 1097, baseType: !1829, size: 64, offset: 15104)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1221, line: 50, flags: DIFlagFwdDecl)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1220, file: !1221, line: 1100, baseType: !1832, size: 64, offset: 15168)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1221, line: 1100, flags: DIFlagFwdDecl)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1220, file: !1221, line: 1103, baseType: !1835, size: 64, offset: 15232)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1221, line: 53, flags: DIFlagFwdDecl)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1220, file: !1221, line: 1107, baseType: !1838, size: 64, offset: 15296)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1221, line: 56, flags: DIFlagFwdDecl)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1220, file: !1221, line: 1110, baseType: !1841, size: 64, offset: 15360)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1843, line: 93, size: 8768, elements: !1844)
!1843 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1844 = !{!1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1895, !1904, !1905, !1907, !1908, !1909, !1912, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1950, !1951, !1958, !1968, !1971, !1972, !1975, !1976, !1977, !1978, !1979, !1980}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1842, file: !1843, line: 94, baseType: !177, size: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1842, file: !1843, line: 95, baseType: !181, size: 32, offset: 32)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1842, file: !1843, line: 96, baseType: !185, size: 32, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1842, file: !1843, line: 97, baseType: !185, size: 32, offset: 96)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1842, file: !1843, line: 98, baseType: !195, size: 128, offset: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1842, file: !1843, line: 100, baseType: !517, size: 192, offset: 256)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1842, file: !1843, line: 103, baseType: !1219, size: 64, offset: 448)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1842, file: !1843, line: 106, baseType: !1853, size: 192, offset: 512)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1854, line: 32, size: 192, elements: !1855)
!1854 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1855 = !{!1856, !1857}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1853, file: !1854, line: 33, baseType: !195, size: 128)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1853, file: !1854, line: 34, baseType: !1858, size: 64, offset: 128)
!1858 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1859, line: 25, baseType: !1860)
!1859 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1859, line: 23, size: 64, elements: !1861)
!1861 = !{!1862}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1860, file: !1859, line: 24, baseType: !1458, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1842, file: !1843, line: 109, baseType: !506, size: 64, offset: 704)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1842, file: !1843, line: 112, baseType: !185, size: 32, offset: 768)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1842, file: !1843, line: 114, baseType: !185, size: 32, offset: 800)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1842, file: !1843, line: 115, baseType: !1219, size: 64, offset: 832)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1842, file: !1843, line: 118, baseType: !185, size: 32, offset: 896)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1842, file: !1843, line: 119, baseType: !13, size: 32, offset: 928)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1842, file: !1843, line: 121, baseType: !1870, size: 64, offset: 960)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1843, line: 80, size: 448, elements: !1872)
!1872 = !{!1873, !1874, !1880}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1871, file: !1843, line: 81, baseType: !181, size: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1871, file: !1843, line: 82, baseType: !1875, size: 128, offset: 64)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1843, line: 75, size: 128, elements: !1876)
!1876 = !{!1877, !1878}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1875, file: !1843, line: 76, baseType: !1219, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1875, file: !1843, line: 77, baseType: !1879, size: 64, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1871, file: !1843, line: 83, baseType: !1759, size: 256, offset: 192)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1842, file: !1843, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1842, file: !1843, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1842, file: !1843, line: 138, baseType: !13, size: 32, offset: 1056)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1842, file: !1843, line: 139, baseType: !195, size: 128, offset: 1088)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1842, file: !1843, line: 142, baseType: !1331, size: 512, offset: 1216)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1842, file: !1843, line: 143, baseType: !1339, size: 64, offset: 1728)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1842, file: !1843, line: 150, baseType: !1888, size: 256, offset: 1792)
!1888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1889, size: 256, elements: !1893)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1843, line: 38, size: 128, elements: !1890)
!1890 = !{!1891, !1892}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1889, file: !1843, line: 39, baseType: !163, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1889, file: !1843, line: 40, baseType: !163, size: 64, offset: 64)
!1893 = !{!1894}
!1894 = !DISubrange(count: 2)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1842, file: !1843, line: 156, baseType: !1896, size: 192, offset: 2048)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1843, line: 66, size: 192, elements: !1897)
!1897 = !{!1898}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1896, file: !1843, line: 67, baseType: !1899, size: 192)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1843, line: 47, size: 192, elements: !1900)
!1900 = !{!1901, !1902, !1903}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1899, file: !1843, line: 48, baseType: !124, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1899, file: !1843, line: 49, baseType: !124, size: 64, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1899, file: !1843, line: 50, baseType: !124, size: 64, offset: 128)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1842, file: !1843, line: 160, baseType: !1788, size: 640, offset: 2240)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1842, file: !1843, line: 163, baseType: !1906, size: 256, offset: 2880)
!1906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !498, size: 256, elements: !353)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1842, file: !1843, line: 169, baseType: !498, size: 64, offset: 3136)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1842, file: !1843, line: 172, baseType: !185, size: 32, offset: 3200)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1842, file: !1843, line: 174, baseType: !1910, size: 64, offset: 3264)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1843, line: 174, flags: DIFlagFwdDecl)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1842, file: !1843, line: 185, baseType: !1913, size: 64, offset: 3328)
!1913 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !565, line: 860, baseType: !1914)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !565, line: 853, size: 64, elements: !1915)
!1915 = !{!1916, !1917}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1914, file: !565, line: 858, baseType: !564, size: 32)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1914, file: !565, line: 859, baseType: !265, size: 32, offset: 32)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1842, file: !1843, line: 186, baseType: !163, size: 64, offset: 3392)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1842, file: !1843, line: 186, baseType: !163, size: 64, offset: 3456)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1842, file: !1843, line: 186, baseType: !163, size: 64, offset: 3520)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1842, file: !1843, line: 186, baseType: !163, size: 64, offset: 3584)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1842, file: !1843, line: 187, baseType: !163, size: 64, offset: 3648)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1842, file: !1843, line: 188, baseType: !163, size: 64, offset: 3712)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1842, file: !1843, line: 189, baseType: !1776, size: 192, offset: 3776)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1842, file: !1843, line: 190, baseType: !205, size: 64, offset: 3968)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1842, file: !1843, line: 190, baseType: !205, size: 64, offset: 4032)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1842, file: !1843, line: 190, baseType: !205, size: 64, offset: 4096)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1842, file: !1843, line: 190, baseType: !205, size: 64, offset: 4160)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1842, file: !1843, line: 191, baseType: !205, size: 64, offset: 4224)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1842, file: !1843, line: 191, baseType: !205, size: 64, offset: 4288)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1842, file: !1843, line: 191, baseType: !205, size: 64, offset: 4352)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1842, file: !1843, line: 191, baseType: !205, size: 64, offset: 4416)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1842, file: !1843, line: 192, baseType: !205, size: 64, offset: 4480)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1842, file: !1843, line: 192, baseType: !205, size: 64, offset: 4544)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1842, file: !1843, line: 192, baseType: !205, size: 64, offset: 4608)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1842, file: !1843, line: 192, baseType: !205, size: 64, offset: 4672)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1842, file: !1843, line: 193, baseType: !205, size: 64, offset: 4736)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1842, file: !1843, line: 193, baseType: !205, size: 64, offset: 4800)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1842, file: !1843, line: 194, baseType: !1940, size: 448, offset: 4864)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1941, line: 12, size: 448, elements: !1942)
!1941 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1942 = !{!1943, !1944, !1945, !1946, !1947, !1948, !1949}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1940, file: !1941, line: 15, baseType: !163, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1940, file: !1941, line: 17, baseType: !163, size: 64, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1940, file: !1941, line: 19, baseType: !163, size: 64, offset: 128)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1940, file: !1941, line: 21, baseType: !163, size: 64, offset: 192)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1940, file: !1941, line: 29, baseType: !163, size: 64, offset: 256)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1940, file: !1941, line: 35, baseType: !163, size: 64, offset: 320)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1940, file: !1941, line: 44, baseType: !163, size: 64, offset: 384)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1842, file: !1843, line: 202, baseType: !165, size: 64, offset: 5312)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1842, file: !1843, line: 213, baseType: !1952, size: 2048, offset: 5376)
!1952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1953, size: 2048, elements: !1811)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1954, line: 43, size: 128, elements: !1955)
!1954 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1955 = !{!1956, !1957}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1953, file: !1954, line: 44, baseType: !331, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1953, file: !1954, line: 45, baseType: !331, size: 64, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1842, file: !1843, line: 216, baseType: !1959, size: 448, offset: 7424)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1843, line: 30, size: 448, elements: !1960)
!1960 = !{!1961, !1962, !1963, !1964, !1965, !1966, !1967}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1959, file: !1843, line: 31, baseType: !185, size: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1959, file: !1843, line: 32, baseType: !713, size: 64, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1959, file: !1843, line: 33, baseType: !205, size: 64, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1959, file: !1843, line: 34, baseType: !163, size: 64, offset: 192)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1959, file: !1843, line: 34, baseType: !163, size: 64, offset: 256)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1959, file: !1843, line: 35, baseType: !205, size: 64, offset: 320)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1959, file: !1843, line: 35, baseType: !205, size: 64, offset: 384)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1842, file: !1843, line: 219, baseType: !1969, size: 64, offset: 7872)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1843, line: 219, flags: DIFlagFwdDecl)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1842, file: !1843, line: 222, baseType: !13, size: 32, offset: 7936)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1842, file: !1843, line: 223, baseType: !1973, size: 64, offset: 8000)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1843, line: 223, flags: DIFlagFwdDecl)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1842, file: !1843, line: 230, baseType: !381, size: 8, offset: 8064)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1842, file: !1843, line: 231, baseType: !299, size: 16, offset: 8080)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1842, file: !1843, line: 232, baseType: !299, size: 16, offset: 8096)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1842, file: !1843, line: 234, baseType: !1507, size: 64, offset: 8128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1842, file: !1843, line: 237, baseType: !257, size: 256, offset: 8192)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1842, file: !1843, line: 243, baseType: !210, size: 320, offset: 8448)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1220, file: !1221, line: 1111, baseType: !1982, size: 64, offset: 15424)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1843, line: 20, size: 16640, elements: !1984)
!1984 = !{!1985, !1986, !1987, !1988}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1983, file: !1843, line: 21, baseType: !265, size: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1983, file: !1843, line: 22, baseType: !177, size: 32, offset: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1983, file: !1843, line: 23, baseType: !517, size: 192, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1983, file: !1843, line: 24, baseType: !1989, size: 16384, offset: 256)
!1989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1990, size: 16384, elements: !2010)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1854, line: 51, size: 256, elements: !1991)
!1991 = !{!1992}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1990, file: !1854, line: 52, baseType: !1993, size: 256)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1854, line: 37, size: 256, elements: !1994)
!1994 = !{!1995, !2002, !2003, !2009}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1993, file: !1854, line: 39, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1997, line: 83, baseType: !1998)
!1997 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1997, line: 82, baseType: !2000)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{null, !185}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1993, file: !1854, line: 40, baseType: !205, size: 64, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1993, file: !1854, line: 46, baseType: !2004, size: 64, offset: 128)
!2004 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1997, line: 86, baseType: !2005)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1997, line: 85, baseType: !2007)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{null}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1993, file: !1854, line: 48, baseType: !1858, size: 64, offset: 192)
!2010 = !{!2011}
!2011 = !DISubrange(count: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1220, file: !1221, line: 1112, baseType: !1858, size: 64, offset: 15488)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1220, file: !1221, line: 1113, baseType: !1858, size: 64, offset: 15552)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1220, file: !1221, line: 1115, baseType: !1858, size: 64, offset: 15616)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1220, file: !1221, line: 1116, baseType: !1853, size: 192, offset: 15680)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1220, file: !1221, line: 1117, baseType: !205, size: 64, offset: 15872)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1220, file: !1221, line: 1118, baseType: !329, size: 64, offset: 15936)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1220, file: !1221, line: 1119, baseType: !13, size: 32, offset: 16000)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1220, file: !1221, line: 1121, baseType: !458, size: 64, offset: 16064)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1220, file: !1221, line: 1125, baseType: !2021, size: 64, offset: 16128)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1221, line: 43, flags: DIFlagFwdDecl)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1220, file: !1221, line: 1127, baseType: !135, size: 32, offset: 16192)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1220, file: !1221, line: 1128, baseType: !13, size: 32, offset: 16224)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1220, file: !1221, line: 1130, baseType: !2026, size: 128, offset: 16256)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2027, line: 37, size: 128, elements: !2028)
!2027 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2028 = !{!2029, !2030, !2031}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2026, file: !2027, line: 38, baseType: !185, size: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2026, file: !2027, line: 39, baseType: !181, size: 32, offset: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2026, file: !2027, line: 40, baseType: !2032, size: 64, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2027, line: 24, flags: DIFlagFwdDecl)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1220, file: !1221, line: 1131, baseType: !2035, size: 256, offset: 16384)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2036, line: 12, size: 256, elements: !2037)
!2036 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2037 = !{!2038, !2039, !2040, !2041}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2035, file: !2036, line: 13, baseType: !346, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2035, file: !2036, line: 14, baseType: !205, size: 64, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2035, file: !2036, line: 15, baseType: !205, size: 64, offset: 128)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2035, file: !2036, line: 16, baseType: !381, size: 8, offset: 192)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1220, file: !1221, line: 1134, baseType: !163, size: 64, offset: 16640)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1220, file: !1221, line: 1135, baseType: !163, size: 64, offset: 16704)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1220, file: !1221, line: 1138, baseType: !265, size: 32, offset: 16768)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1220, file: !1221, line: 1141, baseType: !221, size: 32, offset: 16800)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1220, file: !1221, line: 1143, baseType: !2047, size: 64, offset: 16832)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1221, line: 735, size: 64, elements: !2048)
!2048 = !{!2049}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2047, file: !1221, line: 736, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1220, file: !1221, line: 1147, baseType: !1390, size: 128, offset: 16896)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1220, file: !1221, line: 1149, baseType: !1219, size: 64, offset: 17024)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1220, file: !1221, line: 1151, baseType: !2054, size: 64, offset: 17088)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1221, line: 1151, flags: DIFlagFwdDecl)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1220, file: !1221, line: 1188, baseType: !280, size: 64, offset: 17152)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1220, file: !1221, line: 1191, baseType: !2058, size: 64, offset: 17216)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1221, line: 44, flags: DIFlagFwdDecl)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1220, file: !1221, line: 1194, baseType: !2061, size: 64, offset: 17280)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1221, line: 45, flags: DIFlagFwdDecl)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1220, file: !1221, line: 1197, baseType: !2064, size: 64, offset: 17344)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1221, line: 61, flags: DIFlagFwdDecl)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1220, file: !1221, line: 1199, baseType: !2067, size: 64, offset: 17408)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2069, line: 99, size: 128, elements: !2070)
!2069 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2070 = !{!2071, !2072, !2073}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2068, file: !2069, line: 100, baseType: !122, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2068, file: !2069, line: 101, baseType: !181, size: 32, offset: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2068, file: !2069, line: 103, baseType: !247, size: 16, offset: 96)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1220, file: !1221, line: 1202, baseType: !2075, size: 64, offset: 17472)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1221, line: 48, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1220, file: !1221, line: 1205, baseType: !205, size: 64, offset: 17536)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1220, file: !1221, line: 1206, baseType: !2079, size: 64, offset: 17600)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1854, line: 14, baseType: !2081)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1854, line: 12, size: 384, elements: !2082)
!2082 = !{!2083}
!2083 = !DIDerivedType(tag: DW_TAG_member, scope: !2081, file: !1854, line: 13, baseType: !2084, size: 384)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2081, file: !1854, line: 13, size: 384, elements: !2085)
!2085 = !{!2086, !2087, !2088, !2089}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2084, file: !1854, line: 13, baseType: !185, size: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2084, file: !1854, line: 13, baseType: !185, size: 32, offset: 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2084, file: !1854, line: 13, baseType: !185, size: 32, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2084, file: !1854, line: 13, baseType: !2090, size: 256, offset: 128)
!2090 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2091, line: 37, size: 256, elements: !2092)
!2091 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2092 = !{!2093, !2098, !2111, !2117, !2126, !2153, !2158}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2090, file: !2091, line: 42, baseType: !2094, size: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2090, file: !2091, line: 39, size: 64, elements: !2095)
!2095 = !{!2096, !2097}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2094, file: !2091, line: 40, baseType: !1742, size: 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2094, file: !2091, line: 41, baseType: !141, size: 32, offset: 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2090, file: !2091, line: 50, baseType: !2099, size: 192)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2090, file: !2091, line: 45, size: 192, elements: !2100)
!2100 = !{!2101, !2103, !2104, !2110}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2099, file: !2091, line: 46, baseType: !2102, size: 32)
!2102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !142, line: 95, baseType: !185)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2099, file: !2091, line: 47, baseType: !185, size: 32, offset: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2099, file: !2091, line: 48, baseType: !2105, size: 64, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2091, line: 11, baseType: !2106)
!2106 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2091, line: 8, size: 64, elements: !2107)
!2107 = !{!2108, !2109}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2106, file: !2091, line: 9, baseType: !185, size: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2106, file: !2091, line: 10, baseType: !280, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2099, file: !2091, line: 49, baseType: !185, size: 32, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2090, file: !2091, line: 57, baseType: !2112, size: 128)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2090, file: !2091, line: 53, size: 128, elements: !2113)
!2113 = !{!2114, !2115, !2116}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2112, file: !2091, line: 54, baseType: !1742, size: 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2112, file: !2091, line: 55, baseType: !141, size: 32, offset: 32)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2112, file: !2091, line: 56, baseType: !2105, size: 64, offset: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2090, file: !2091, line: 66, baseType: !2118, size: 256)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2090, file: !2091, line: 60, size: 256, elements: !2119)
!2119 = !{!2120, !2121, !2122, !2123, !2125}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2118, file: !2091, line: 61, baseType: !1742, size: 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2118, file: !2091, line: 62, baseType: !141, size: 32, offset: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2118, file: !2091, line: 63, baseType: !185, size: 32, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2118, file: !2091, line: 64, baseType: !2124, size: 64, offset: 128)
!2124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !142, line: 94, baseType: !755)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2118, file: !2091, line: 65, baseType: !2124, size: 64, offset: 192)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2090, file: !2091, line: 105, baseType: !2127, size: 256)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2090, file: !2091, line: 69, size: 256, elements: !2128)
!2128 = !{!2129, !2130}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2127, file: !2091, line: 70, baseType: !280, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, scope: !2127, file: !2091, line: 79, baseType: !2131, size: 192, offset: 64)
!2131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2127, file: !2091, line: 79, size: 192, elements: !2132)
!2132 = !{!2133, !2134, !2135, !2142, !2147}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2131, file: !2091, line: 81, baseType: !185, size: 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2131, file: !2091, line: 86, baseType: !299, size: 16)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2131, file: !2091, line: 92, baseType: !2136, size: 192)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2131, file: !2091, line: 88, size: 192, elements: !2137)
!2137 = !{!2138, !2140, !2141}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2136, file: !2091, line: 89, baseType: !2139, size: 64)
!2139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1374)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2136, file: !2091, line: 90, baseType: !280, size: 64, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2136, file: !2091, line: 91, baseType: !280, size: 64, offset: 128)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2131, file: !2091, line: 97, baseType: !2143, size: 96)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2131, file: !2091, line: 94, size: 96, elements: !2144)
!2144 = !{!2145, !2146}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2143, file: !2091, line: 95, baseType: !2139, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2143, file: !2091, line: 96, baseType: !295, size: 32, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2131, file: !2091, line: 103, baseType: !2148, size: 128)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2131, file: !2091, line: 99, size: 128, elements: !2149)
!2149 = !{!2150, !2151, !2152}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2148, file: !2091, line: 100, baseType: !205, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2148, file: !2091, line: 101, baseType: !295, size: 32, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2148, file: !2091, line: 102, baseType: !295, size: 32, offset: 96)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2090, file: !2091, line: 111, baseType: !2154, size: 128)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2090, file: !2091, line: 108, size: 128, elements: !2155)
!2155 = !{!2156, !2157}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2154, file: !2091, line: 109, baseType: !713, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2154, file: !2091, line: 110, baseType: !185, size: 32, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2090, file: !2091, line: 118, baseType: !2159, size: 128)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2090, file: !2091, line: 114, size: 128, elements: !2160)
!2160 = !{!2161, !2162, !2163}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2159, file: !2091, line: 115, baseType: !280, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2159, file: !2091, line: 116, baseType: !185, size: 32, offset: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2159, file: !2091, line: 117, baseType: !13, size: 32, offset: 96)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1220, file: !1221, line: 1208, baseType: !1940, size: 448, offset: 17664)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1220, file: !1221, line: 1215, baseType: !163, size: 64, offset: 18112)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1220, file: !1221, line: 1217, baseType: !163, size: 64, offset: 18176)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1220, file: !1221, line: 1219, baseType: !163, size: 64, offset: 18240)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1220, file: !1221, line: 1223, baseType: !2169, size: 64, offset: 18304)
!2169 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2170, line: 99, baseType: !2171)
!2170 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2170, line: 99, size: 64, elements: !2172)
!2172 = !{!2173}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2171, file: !2170, line: 99, baseType: !1458, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1220, file: !1221, line: 1225, baseType: !564, size: 32, offset: 18368)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1220, file: !1221, line: 1226, baseType: !185, size: 32, offset: 18400)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1220, file: !1221, line: 1227, baseType: !185, size: 32, offset: 18432)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1220, file: !1221, line: 1231, baseType: !2178, size: 64, offset: 18496)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1221, line: 1231, flags: DIFlagFwdDecl)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1220, file: !1221, line: 1233, baseType: !195, size: 128, offset: 18560)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1220, file: !1221, line: 1240, baseType: !2182, size: 64, offset: 18688)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1221, line: 62, flags: DIFlagFwdDecl)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1220, file: !1221, line: 1242, baseType: !2185, size: 64, offset: 18752)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2187, line: 392, size: 96, elements: !2188)
!2187 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!2188 = !{!2189, !2195, !2197}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2186, file: !2187, line: 393, baseType: !2190, size: 32)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !2187, line: 388, size: 32, elements: !2191)
!2191 = !{!2192}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2190, file: !2187, line: 389, baseType: !2193, size: 32)
!2193 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !2194, line: 46, baseType: !294)
!2194 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !2186, file: !2187, line: 394, baseType: !2196, size: 32, offset: 32)
!2196 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !2194, line: 42, baseType: !189)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !2186, file: !2187, line: 395, baseType: !2193, size: 32, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1220, file: !1221, line: 1244, baseType: !195, size: 128, offset: 18816)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1220, file: !1221, line: 1245, baseType: !2200, size: 64, offset: 18944)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1221, line: 51, flags: DIFlagFwdDecl)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1220, file: !1221, line: 1246, baseType: !257, size: 256, offset: 19008)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1220, file: !1221, line: 1247, baseType: !13, size: 32, offset: 19264)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1220, file: !1221, line: 1250, baseType: !2205, size: 64, offset: 19328)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1221, line: 57, flags: DIFlagFwdDecl)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1220, file: !1221, line: 1251, baseType: !257, size: 256, offset: 19392)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1220, file: !1221, line: 1252, baseType: !195, size: 128, offset: 19648)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1220, file: !1221, line: 1259, baseType: !2210, size: 64, offset: 19776)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1221, line: 54, flags: DIFlagFwdDecl)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1220, file: !1221, line: 1260, baseType: !299, size: 16, offset: 19840)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1220, file: !1221, line: 1261, baseType: !299, size: 16, offset: 19856)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1220, file: !1221, line: 1314, baseType: !2215, size: 64, offset: 19904)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2217, line: 62, size: 256, align: 256, elements: !2218)
!2217 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2218 = !{!2219, !2220, !2221, !2222, !2223, !2224, !2225}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2216, file: !2217, line: 75, baseType: !295, size: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2216, file: !2217, line: 90, baseType: !295, size: 32, offset: 32)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2216, file: !2217, line: 112, baseType: !164, size: 64, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2216, file: !2217, line: 132, baseType: !295, size: 32, offset: 128)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2216, file: !2217, line: 140, baseType: !295, size: 32, offset: 160)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2216, file: !2217, line: 149, baseType: !295, size: 32, offset: 192)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2216, file: !2217, line: 154, baseType: !2226, offset: 224)
!2226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !532)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1220, file: !1221, line: 1315, baseType: !294, size: 32, offset: 19968)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1220, file: !1221, line: 1316, baseType: !294, size: 32, offset: 20000)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1220, file: !1221, line: 1321, baseType: !205, size: 64, offset: 20032)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1220, file: !1221, line: 1325, baseType: !185, size: 32, offset: 20096)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1220, file: !1221, line: 1326, baseType: !185, size: 32, offset: 20128)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1220, file: !1221, line: 1327, baseType: !185, size: 32, offset: 20160)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1220, file: !1221, line: 1328, baseType: !185, size: 32, offset: 20192)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1220, file: !1221, line: 1329, baseType: !455, size: 128, align: 64, offset: 20224)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1220, file: !1221, line: 1332, baseType: !2236, size: 128, offset: 20352)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2237, line: 51, size: 128, elements: !2238)
!2237 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2238 = !{!2239, !2244, !2245}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2236, file: !2237, line: 60, baseType: !2240, size: 64)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2241, line: 7, size: 64, elements: !2242)
!2241 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2242 = !{!2243}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2240, file: !2241, line: 12, baseType: !1455, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2236, file: !2237, line: 63, baseType: !381, size: 8, offset: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2236, file: !2237, line: 70, baseType: !381, size: 8, offset: 72)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1220, file: !1221, line: 1335, baseType: !2247, size: 64, offset: 20480)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1221, line: 59, flags: DIFlagFwdDecl)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1220, file: !1221, line: 1337, baseType: !2250, size: 128, offset: 20544)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2237, line: 39, size: 128, elements: !2251)
!2251 = !{!2252, !2789, !2790}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2250, file: !2237, line: 40, baseType: !2253, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !58, line: 74, size: 512, align: 128, elements: !2255)
!2255 = !{!2256, !2257, !2783, !2788}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2254, file: !58, line: 75, baseType: !205, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, scope: !2254, file: !58, line: 83, baseType: !2258, size: 320, offset: 64)
!2258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2254, file: !58, line: 83, size: 320, elements: !2259)
!2259 = !{!2260, !2534, !2548, !2552, !2782}
!2260 = !DIDerivedType(tag: DW_TAG_member, scope: !2258, file: !58, line: 84, baseType: !2261, size: 320)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2258, file: !58, line: 84, size: 320, elements: !2262)
!2262 = !{!2263, !2274, !2528, !2533}
!2263 = !DIDerivedType(tag: DW_TAG_member, scope: !2261, file: !58, line: 90, baseType: !2264, size: 128)
!2264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2261, file: !58, line: 90, size: 128, elements: !2265)
!2265 = !{!2266, !2267, !2272, !2273}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2264, file: !58, line: 91, baseType: !195, size: 128)
!2267 = !DIDerivedType(tag: DW_TAG_member, scope: !2264, file: !58, line: 94, baseType: !2268, size: 128)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2264, file: !58, line: 94, size: 128, elements: !2269)
!2269 = !{!2270, !2271}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2268, file: !58, line: 96, baseType: !280, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2268, file: !58, line: 98, baseType: !13, size: 32, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2264, file: !58, line: 102, baseType: !195, size: 128)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2264, file: !58, line: 103, baseType: !195, size: 128)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2261, file: !58, line: 106, baseType: !2275, size: 64, offset: 128)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !21, line: 472, size: 1536, align: 64, elements: !2277)
!2277 = !{!2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2520, !2521, !2522, !2525, !2526, !2527}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !2276, file: !21, line: 473, baseType: !598, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !2276, file: !21, line: 474, baseType: !800, size: 128, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !2276, file: !21, line: 475, baseType: !210, size: 320, offset: 192)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2276, file: !21, line: 476, baseType: !805, size: 32, offset: 512)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !2276, file: !21, line: 477, baseType: !181, size: 32, offset: 544)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !2276, file: !21, line: 482, baseType: !1390, size: 128, offset: 576)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !2276, file: !21, line: 483, baseType: !205, size: 64, offset: 704)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !2276, file: !21, line: 484, baseType: !205, size: 64, offset: 768)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !2276, file: !21, line: 485, baseType: !2287, size: 64, offset: 832)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2289)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !21, line: 404, size: 1280, elements: !2290)
!2290 = !{!2291, !2295, !2365, !2369, !2373, !2379, !2385, !2389, !2394, !2398, !2402, !2406, !2484, !2488, !2492, !2496, !2501, !2505, !2512, !2516}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2289, file: !21, line: 405, baseType: !2292, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!185, !2253, !881}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !2289, file: !21, line: 406, baseType: !2296, size: 64, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!185, !717, !2299}
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !58, line: 293, size: 1536, elements: !2301)
!2301 = !{!2302, !2332, !2346}
!2302 = !DIDerivedType(tag: DW_TAG_member, scope: !2300, file: !58, line: 295, baseType: !2303, size: 512)
!2303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2300, file: !58, line: 295, size: 512, elements: !2304)
!2304 = !{!2305, !2331}
!2305 = !DIDerivedType(tag: DW_TAG_member, scope: !2303, file: !58, line: 296, baseType: !2306, size: 448)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2303, file: !58, line: 296, size: 448, elements: !2307)
!2307 = !{!2308, !2309, !2318, !2319, !2320, !2329, !2330}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2306, file: !58, line: 298, baseType: !205, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, scope: !2306, file: !58, line: 299, baseType: !2310, size: 128, offset: 64)
!2310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2306, file: !58, line: 299, size: 128, elements: !2311)
!2311 = !{!2312, !2313}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2310, file: !58, line: 300, baseType: !195, size: 128)
!2313 = !DIDerivedType(tag: DW_TAG_member, scope: !2310, file: !58, line: 302, baseType: !2314, size: 128)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2310, file: !58, line: 302, size: 128, elements: !2315)
!2315 = !{!2316, !2317}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2314, file: !58, line: 303, baseType: !280, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2314, file: !58, line: 305, baseType: !13, size: 32, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2306, file: !58, line: 310, baseType: !2275, size: 64, offset: 192)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2306, file: !58, line: 311, baseType: !205, size: 64, offset: 256)
!2320 = !DIDerivedType(tag: DW_TAG_member, scope: !2306, file: !58, line: 312, baseType: !2321, size: 64, offset: 320)
!2321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2306, file: !58, line: 312, size: 64, elements: !2322)
!2322 = !{!2323, !2324}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2321, file: !58, line: 313, baseType: !280, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2321, file: !58, line: 314, baseType: !2325, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !58, line: 257, baseType: !2326)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !58, line: 255, size: 64, elements: !2327)
!2327 = !{!2328}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2326, file: !58, line: 256, baseType: !205, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2306, file: !58, line: 316, baseType: !181, size: 32, offset: 384)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2306, file: !58, line: 317, baseType: !181, size: 32, offset: 416)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2303, file: !58, line: 323, baseType: !2254, size: 512, align: 128)
!2332 = !DIDerivedType(tag: DW_TAG_member, scope: !2300, file: !58, line: 325, baseType: !2333, size: 512, offset: 512)
!2333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2300, file: !58, line: 325, size: 512, elements: !2334)
!2334 = !{!2335, !2345}
!2335 = !DIDerivedType(tag: DW_TAG_member, scope: !2333, file: !58, line: 326, baseType: !2336, size: 320)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2333, file: !58, line: 326, size: 320, elements: !2337)
!2337 = !{!2338, !2339, !2340, !2341, !2342, !2343, !2344}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2336, file: !58, line: 327, baseType: !205, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2336, file: !58, line: 328, baseType: !205, size: 64, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2336, file: !58, line: 329, baseType: !205, size: 64, offset: 128)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2336, file: !58, line: 331, baseType: !181, size: 32, offset: 192)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2336, file: !58, line: 332, baseType: !181, size: 32, offset: 224)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2336, file: !58, line: 333, baseType: !181, size: 32, offset: 256)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2336, file: !58, line: 335, baseType: !13, size: 32, offset: 288)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2333, file: !58, line: 339, baseType: !2254, size: 512, align: 128)
!2346 = !DIDerivedType(tag: DW_TAG_member, scope: !2300, file: !58, line: 341, baseType: !2347, size: 512, offset: 1024)
!2347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2300, file: !58, line: 341, size: 512, elements: !2348)
!2348 = !{!2349, !2358, !2364}
!2349 = !DIDerivedType(tag: DW_TAG_member, scope: !2347, file: !58, line: 342, baseType: !2350, size: 384)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2347, file: !58, line: 342, size: 384, elements: !2351)
!2351 = !{!2352, !2353, !2354, !2355, !2356, !2357}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2350, file: !58, line: 343, baseType: !205, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2350, file: !58, line: 344, baseType: !205, size: 64, offset: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2350, file: !58, line: 346, baseType: !280, size: 64, offset: 128)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2350, file: !58, line: 347, baseType: !280, size: 64, offset: 192)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2350, file: !58, line: 348, baseType: !280, size: 64, offset: 256)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2350, file: !58, line: 349, baseType: !280, size: 64, offset: 320)
!2358 = !DIDerivedType(tag: DW_TAG_member, scope: !2347, file: !58, line: 352, baseType: !2359, size: 256)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2347, file: !58, line: 352, size: 256, elements: !2360)
!2360 = !{!2361, !2362, !2363}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2359, file: !58, line: 353, baseType: !205, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2359, file: !58, line: 354, baseType: !205, size: 64, offset: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2359, file: !58, line: 356, baseType: !195, size: 128, offset: 128)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2347, file: !58, line: 359, baseType: !2254, size: 512, align: 128)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2289, file: !21, line: 409, baseType: !2366, size: 64, offset: 128)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!185, !2275, !881}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !2289, file: !21, line: 412, baseType: !2370, size: 64, offset: 192)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!381, !2275, !2299}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2289, file: !21, line: 414, baseType: !2374, size: 64, offset: 256)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{null, !2377}
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !21, line: 310, flags: DIFlagFwdDecl)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2289, file: !21, line: 416, baseType: !2380, size: 64, offset: 320)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!185, !717, !2275, !413, !13, !2383, !2384}
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2289, file: !21, line: 419, baseType: !2386, size: 64, offset: 384)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!185, !717, !2275, !413, !13, !13, !2253, !280}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2289, file: !21, line: 424, baseType: !2390, size: 64, offset: 448)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!2393, !2275, !2393}
!2393 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !125, line: 131, baseType: !163)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !2289, file: !21, line: 425, baseType: !2395, size: 64, offset: 512)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{null, !2299, !329, !329}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !2289, file: !21, line: 426, baseType: !2399, size: 64, offset: 576)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!381, !2299, !805}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !2289, file: !21, line: 427, baseType: !2403, size: 64, offset: 640)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{null, !2299}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2289, file: !21, line: 428, baseType: !2407, size: 64, offset: 704)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!753, !2410, !2432}
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !21, line: 373, size: 384, elements: !2412)
!2412 = !{!2413, !2414, !2415, !2419, !2420, !2421, !2422}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2411, file: !21, line: 374, baseType: !717, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2411, file: !21, line: 375, baseType: !413, size: 64, offset: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2411, file: !21, line: 376, baseType: !2416, size: 64, offset: 128)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{null, !2410, !713}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2411, file: !21, line: 377, baseType: !280, size: 64, offset: 192)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2411, file: !21, line: 378, baseType: !185, size: 32, offset: 256)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2411, file: !21, line: 379, baseType: !245, size: 16, offset: 288)
!2422 = !DIDerivedType(tag: DW_TAG_member, scope: !2411, file: !21, line: 380, baseType: !2423, size: 64, offset: 320)
!2423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2411, file: !21, line: 380, size: 64, elements: !2424)
!2424 = !{!2425, !2428}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2423, file: !21, line: 386, baseType: !2426, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !21, line: 386, flags: DIFlagFwdDecl)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2423, file: !21, line: 395, baseType: !2429, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!753, !280}
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2434, line: 41, size: 320, elements: !2435)
!2434 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2435 = !{!2436, !2437, !2438, !2439, !2440, !2441, !2446, !2479}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2433, file: !2434, line: 42, baseType: !238, size: 8)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2433, file: !2434, line: 43, baseType: !381, size: 8, offset: 8)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2433, file: !2434, line: 44, baseType: !381, size: 8, offset: 16)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2433, file: !2434, line: 45, baseType: !381, size: 8, offset: 24)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2433, file: !2434, line: 46, baseType: !381, size: 8, offset: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, scope: !2433, file: !2434, line: 47, baseType: !2442, size: 64, offset: 64)
!2442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2433, file: !2434, line: 47, size: 64, elements: !2443)
!2443 = !{!2444, !2445}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2442, file: !2434, line: 48, baseType: !329, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2442, file: !2434, line: 49, baseType: !185, size: 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, scope: !2433, file: !2434, line: 61, baseType: !2447, size: 128, offset: 128)
!2447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2433, file: !2434, line: 61, size: 128, elements: !2448)
!2448 = !{!2449, !2455}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2447, file: !2434, line: 67, baseType: !2450, size: 128)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2451, line: 17, size: 128, elements: !2452)
!2451 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2452 = !{!2453, !2454}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2450, file: !2451, line: 19, baseType: !280, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2450, file: !2451, line: 20, baseType: !330, size: 64, offset: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, scope: !2447, file: !2434, line: 68, baseType: !2456, size: 128)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2447, file: !2434, line: 68, size: 128, elements: !2457)
!2457 = !{!2458, !2478}
!2458 = !DIDerivedType(tag: DW_TAG_member, scope: !2456, file: !2434, line: 69, baseType: !2459, size: 64)
!2459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2456, file: !2434, line: 69, size: 64, elements: !2460)
!2460 = !{!2461, !2464, !2471, !2475, !2477}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2459, file: !2434, line: 71, baseType: !2462, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2450)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2459, file: !2434, line: 72, baseType: !2465, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2467)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2434, line: 17, size: 128, elements: !2468)
!2468 = !{!2469, !2470}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2467, file: !2434, line: 18, baseType: !280, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2467, file: !2434, line: 19, baseType: !329, size: 64, offset: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2459, file: !2434, line: 73, baseType: !2472, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2474)
!2474 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2434, line: 73, flags: DIFlagFwdDecl)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2459, file: !2434, line: 74, baseType: !2476, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2459, file: !2434, line: 75, baseType: !280, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2456, file: !2434, line: 77, baseType: !329, size: 64, offset: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, scope: !2433, file: !2434, line: 80, baseType: !2480, size: 64, offset: 256)
!2480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2433, file: !2434, line: 80, size: 64, elements: !2481)
!2481 = !{!2482, !2483}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2480, file: !2434, line: 81, baseType: !205, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2480, file: !2434, line: 82, baseType: !413, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !2289, file: !21, line: 433, baseType: !2485, size: 64, offset: 768)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!185, !2275, !2299, !2299, !42}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !2289, file: !21, line: 435, baseType: !2489, size: 64, offset: 832)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!185, !2299}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2289, file: !21, line: 436, baseType: !2493, size: 64, offset: 896)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!381, !2299, !329, !329}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2289, file: !21, line: 438, baseType: !2497, size: 64, offset: 960)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{null, !2299, !2500, !2500}
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2289, file: !21, line: 439, baseType: !2502, size: 64, offset: 1024)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!185, !2275, !2253}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2289, file: !21, line: 442, baseType: !2506, size: 64, offset: 1088)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!185, !2509, !717, !2511}
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !21, line: 66, flags: DIFlagFwdDecl)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2289, file: !21, line: 444, baseType: !2513, size: 64, offset: 1152)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{null, !717}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !2289, file: !21, line: 445, baseType: !2517, size: 64, offset: 1216)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!185, !2410, !2432}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2276, file: !21, line: 486, baseType: !205, size: 64, offset: 896)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !2276, file: !21, line: 487, baseType: !210, size: 320, offset: 960)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !2276, file: !21, line: 488, baseType: !2523, size: 32, offset: 1280)
!2523 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2524, line: 8, baseType: !294)
!2524 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !2276, file: !21, line: 489, baseType: !265, size: 32, offset: 1312)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !2276, file: !21, line: 490, baseType: !195, size: 128, offset: 1344)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2276, file: !21, line: 491, baseType: !280, size: 64, offset: 1472)
!2528 = !DIDerivedType(tag: DW_TAG_member, scope: !2261, file: !58, line: 107, baseType: !2529, size: 64, offset: 192)
!2529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2261, file: !58, line: 107, size: 64, elements: !2530)
!2530 = !{!2531, !2532}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2529, file: !58, line: 108, baseType: !205, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2529, file: !58, line: 109, baseType: !205, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2261, file: !58, line: 117, baseType: !205, size: 64, offset: 256)
!2534 = !DIDerivedType(tag: DW_TAG_member, scope: !2258, file: !58, line: 119, baseType: !2535, size: 320)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2258, file: !58, line: 119, size: 320, elements: !2536)
!2536 = !{!2537, !2538, !2541, !2542, !2543}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2535, file: !58, line: 124, baseType: !205, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2535, file: !58, line: 125, baseType: !2539, size: 64, offset: 64)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !58, line: 125, flags: DIFlagFwdDecl)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2535, file: !58, line: 126, baseType: !205, size: 64, offset: 128)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2535, file: !58, line: 127, baseType: !205, size: 64, offset: 192)
!2543 = !DIDerivedType(tag: DW_TAG_member, scope: !2535, file: !58, line: 128, baseType: !2544, size: 64, offset: 256)
!2544 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2535, file: !58, line: 128, size: 64, elements: !2545)
!2545 = !{!2546, !2547}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2544, file: !58, line: 133, baseType: !205, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2544, file: !58, line: 138, baseType: !122, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, scope: !2258, file: !58, line: 141, baseType: !2549, size: 64)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2258, file: !58, line: 141, size: 64, elements: !2550)
!2550 = !{!2551}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2549, file: !58, line: 142, baseType: !205, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, scope: !2258, file: !58, line: 144, baseType: !2553, size: 128)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2258, file: !58, line: 144, size: 128, elements: !2554)
!2554 = !{!2555, !2781}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2553, file: !58, line: 146, baseType: !2556, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !50, line: 126, size: 1216, elements: !2558)
!2558 = !{!2559, !2569, !2590, !2591, !2592, !2593, !2594, !2763, !2764, !2765}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2557, file: !50, line: 127, baseType: !2560, size: 384)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !50, line: 21, size: 384, elements: !2561)
!2561 = !{!2562, !2563, !2565, !2566, !2567, !2568}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2560, file: !50, line: 22, baseType: !205, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2560, file: !50, line: 23, baseType: !2564, size: 64, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2560, file: !50, line: 24, baseType: !2564, size: 64, offset: 128)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2560, file: !50, line: 25, baseType: !205, size: 64, offset: 192)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2560, file: !50, line: 26, baseType: !205, size: 64, offset: 256)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2560, file: !50, line: 27, baseType: !205, size: 64, offset: 320)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2557, file: !50, line: 128, baseType: !2570, size: 128, offset: 384)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2571, line: 105, size: 128, elements: !2572)
!2571 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2572 = !{!2573, !2574}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2570, file: !2571, line: 110, baseType: !205, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2570, file: !2571, line: 118, baseType: !2575, size: 64, offset: 64)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2571, line: 95, size: 448, elements: !2577)
!2577 = !{!2578, !2579, !2585, !2586, !2587, !2588, !2589}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2576, file: !2571, line: 96, baseType: !122, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2576, file: !2571, line: 97, baseType: !2580, size: 64, offset: 64)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2571, line: 60, baseType: !2582)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{null, !2584}
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2576, file: !2571, line: 98, baseType: !2580, size: 64, offset: 128)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2576, file: !2571, line: 99, baseType: !381, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2576, file: !2571, line: 100, baseType: !381, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2576, file: !2571, line: 101, baseType: !455, size: 128, align: 64, offset: 256)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2576, file: !2571, line: 102, baseType: !2584, size: 64, offset: 384)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2557, file: !50, line: 129, baseType: !1759, size: 256, offset: 512)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2557, file: !50, line: 130, baseType: !49, size: 32, offset: 768)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2557, file: !50, line: 131, baseType: !13, size: 32, offset: 800)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2557, file: !50, line: 132, baseType: !205, size: 64, offset: 832)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2557, file: !50, line: 133, baseType: !2595, size: 64, offset: 896)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2597)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !50, line: 77, size: 192, elements: !2598)
!2598 = !{!2599, !2603, !2759}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2597, file: !50, line: 83, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{null, !2253}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2597, file: !50, line: 89, baseType: !2604, size: 64, offset: 64)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!2607, !2608}
!2607 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !58, line: 1184, baseType: !13)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2610, line: 512, size: 896, elements: !2611)
!2610 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2611 = !{!2612, !2726, !2727, !2734, !2741, !2751, !2752, !2753, !2755, !2757}
!2612 = !DIDerivedType(tag: DW_TAG_member, scope: !2609, file: !2610, line: 513, baseType: !2613, size: 320)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2609, file: !2610, line: 513, size: 320, elements: !2614)
!2614 = !{!2615, !2722, !2723, !2724, !2725}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2613, file: !2610, line: 514, baseType: !2616, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !58, line: 625, size: 1344, elements: !2618)
!2618 = !{!2619, !2628, !2629, !2635, !2642, !2643, !2648, !2649, !2654, !2655, !2658, !2715, !2716, !2717, !2718, !2719, !2720}
!2619 = !DIDerivedType(tag: DW_TAG_member, scope: !2617, file: !58, line: 628, baseType: !2620, size: 128)
!2620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2617, file: !58, line: 628, size: 128, elements: !2621)
!2621 = !{!2622, !2627}
!2622 = !DIDerivedType(tag: DW_TAG_member, scope: !2620, file: !58, line: 629, baseType: !2623, size: 128)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2620, file: !58, line: 629, size: 128, elements: !2624)
!2624 = !{!2625, !2626}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2623, file: !58, line: 631, baseType: !205, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2623, file: !58, line: 632, baseType: !205, size: 64, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2620, file: !58, line: 635, baseType: !455, size: 128, align: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2617, file: !58, line: 639, baseType: !1507, size: 64, offset: 128)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2617, file: !58, line: 640, baseType: !2630, size: 64, offset: 192)
!2630 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1542, line: 297, baseType: !2631)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1542, line: 297, size: 64, elements: !2632)
!2632 = !{!2633}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2631, file: !1542, line: 297, baseType: !2634, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1547, line: 19, baseType: !205)
!2635 = !DIDerivedType(tag: DW_TAG_member, scope: !2617, file: !58, line: 646, baseType: !2636, size: 64, offset: 256)
!2636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2617, file: !58, line: 646, size: 64, elements: !2637)
!2637 = !{!2638, !2641}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2636, file: !58, line: 647, baseType: !2639, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2640)
!2640 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !58, line: 542, baseType: !205)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2636, file: !58, line: 648, baseType: !2640, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2617, file: !58, line: 666, baseType: !185, size: 32, offset: 320)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2617, file: !58, line: 667, baseType: !2644, size: 64, offset: 384)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !58, line: 579, size: 320, elements: !2646)
!2646 = !{!2647}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2645, file: !58, line: 580, baseType: !210, size: 320)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2617, file: !58, line: 670, baseType: !381, size: 8, offset: 448)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2617, file: !58, line: 681, baseType: !2650, size: 256, offset: 512)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2617, file: !58, line: 678, size: 256, elements: !2651)
!2651 = !{!2652, !2653}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2650, file: !58, line: 679, baseType: !201, size: 192, align: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2650, file: !58, line: 680, baseType: !205, size: 64, offset: 192)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2617, file: !58, line: 689, baseType: !195, size: 128, offset: 768)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2617, file: !58, line: 691, baseType: !2656, size: 64, offset: 896)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !58, line: 691, flags: DIFlagFwdDecl)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2617, file: !58, line: 694, baseType: !2659, size: 64, offset: 960)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2661)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2610, line: 563, size: 1024, elements: !2662)
!2662 = !{!2663, !2667, !2668, !2672, !2676, !2680, !2681, !2685, !2689, !2693, !2694, !2695, !2699, !2703, !2707, !2711}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2661, file: !2610, line: 564, baseType: !2664, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{null, !2616}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2661, file: !2610, line: 569, baseType: !2664, size: 64, offset: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2661, file: !2610, line: 571, baseType: !2669, size: 64, offset: 128)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!185, !2616, !205}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2661, file: !2610, line: 572, baseType: !2673, size: 64, offset: 192)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!185, !2616}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2661, file: !2610, line: 578, baseType: !2677, size: 64, offset: 256)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!185, !2616, !205, !205, !205}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2661, file: !2610, line: 580, baseType: !2604, size: 64, offset: 320)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2661, file: !2610, line: 581, baseType: !2682, size: 64, offset: 384)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!2607, !2608, !13}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2661, file: !2610, line: 582, baseType: !2686, size: 64, offset: 448)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!2607, !2608, !205, !205}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2661, file: !2610, line: 584, baseType: !2690, size: 64, offset: 512)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!205, !2616}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2661, file: !2610, line: 588, baseType: !2604, size: 64, offset: 576)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2661, file: !2610, line: 591, baseType: !2604, size: 64, offset: 640)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2661, file: !2610, line: 597, baseType: !2696, size: 64, offset: 704)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!185, !2616, !205, !280, !185, !185}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2661, file: !2610, line: 603, baseType: !2700, size: 64, offset: 768)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!326, !2616}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2661, file: !2610, line: 613, baseType: !2704, size: 64, offset: 832)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!185, !2616, !2210}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2661, file: !2610, line: 625, baseType: !2708, size: 64, offset: 896)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!2210, !2616, !205}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2661, file: !2610, line: 633, baseType: !2712, size: 64, offset: 960)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!2253, !2616, !205}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2617, file: !58, line: 697, baseType: !205, size: 64, offset: 1024)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2617, file: !58, line: 699, baseType: !717, size: 64, offset: 1088)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2617, file: !58, line: 700, baseType: !280, size: 64, offset: 1152)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2617, file: !58, line: 711, baseType: !122, size: 64, offset: 1216)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2617, file: !58, line: 717, baseType: !2210, size: 64, offset: 1280)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2617, file: !58, line: 722, baseType: !2721, offset: 1344)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !58, line: 570, elements: !850)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2613, file: !2610, line: 515, baseType: !805, size: 32, offset: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2613, file: !2610, line: 516, baseType: !205, size: 64, offset: 128)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2613, file: !2610, line: 517, baseType: !205, size: 64, offset: 192)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2613, file: !2610, line: 518, baseType: !205, size: 64, offset: 256)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2609, file: !2610, line: 520, baseType: !57, size: 32, offset: 320)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2609, file: !2610, line: 522, baseType: !2728, size: 64, offset: 384)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1547, line: 22, baseType: !2730)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1547, line: 22, size: 64, elements: !2731)
!2731 = !{!2732}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2730, file: !1547, line: 22, baseType: !2733, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1547, line: 15, baseType: !205)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2609, file: !2610, line: 524, baseType: !2735, size: 64, offset: 448)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1542, line: 372, baseType: !2737)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1542, line: 372, size: 64, elements: !2738)
!2738 = !{!2739}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2737, file: !1542, line: 372, baseType: !2740, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1547, line: 16, baseType: !205)
!2741 = !DIDerivedType(tag: DW_TAG_member, scope: !2609, file: !2610, line: 527, baseType: !2742, size: 64, offset: 512)
!2742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2609, file: !2610, line: 527, size: 64, elements: !2743)
!2743 = !{!2744, !2750}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2742, file: !2610, line: 528, baseType: !2745, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1547, line: 21, baseType: !2746)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1547, line: 21, size: 64, elements: !2747)
!2747 = !{!2748}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2746, file: !1547, line: 21, baseType: !2749, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1547, line: 14, baseType: !205)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2742, file: !2610, line: 529, baseType: !2729, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2609, file: !2610, line: 534, baseType: !2253, size: 64, offset: 576)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2609, file: !2610, line: 535, baseType: !2253, size: 64, offset: 640)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2609, file: !2610, line: 541, baseType: !2754, size: 64, offset: 704)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2609, file: !2610, line: 545, baseType: !2756, size: 64, offset: 768)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2609, file: !2610, line: 549, baseType: !2758, size: 64, offset: 832)
!2758 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1542, line: 520, baseType: !2253)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2597, file: !50, line: 100, baseType: !2760, size: 64, offset: 128)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!185, !2556, !205, !205, !185}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2557, file: !50, line: 134, baseType: !280, size: 64, offset: 960)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2557, file: !50, line: 135, baseType: !185, size: 32, offset: 1024)
!2765 = !DIDerivedType(tag: DW_TAG_member, scope: !2557, file: !50, line: 136, baseType: !2766, size: 128, offset: 1088)
!2766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2557, file: !50, line: 136, size: 128, elements: !2767)
!2767 = !{!2768, !2774}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2766, file: !50, line: 137, baseType: !2769, size: 128)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2770, line: 6, size: 128, elements: !2771)
!2770 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2771 = !{!2772, !2773}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2769, file: !2770, line: 7, baseType: !163, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2769, file: !2770, line: 8, baseType: !163, size: 64, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, scope: !2766, file: !50, line: 138, baseType: !2775)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2766, file: !50, line: 138, elements: !2776)
!2776 = !{!2777, !2779}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2775, file: !50, line: 138, baseType: !2778)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2775, file: !50, line: 138, elements: !850)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2775, file: !50, line: 138, baseType: !2780)
!2780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2769, elements: !532)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2553, file: !58, line: 147, baseType: !280, size: 64, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2258, file: !58, line: 161, baseType: !455, size: 128, align: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, scope: !2254, file: !58, line: 164, baseType: !2784, size: 32, offset: 384)
!2784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2254, file: !58, line: 164, size: 32, elements: !2785)
!2785 = !{!2786, !2787}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2784, file: !58, line: 169, baseType: !181, size: 32)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2784, file: !58, line: 177, baseType: !13, size: 32)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2254, file: !58, line: 181, baseType: !181, size: 32, offset: 416)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2250, file: !2237, line: 42, baseType: !295, size: 32, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2250, file: !2237, line: 43, baseType: !295, size: 32, offset: 96)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1220, file: !1221, line: 1340, baseType: !2792, size: 64, offset: 20672)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1221, line: 69, flags: DIFlagFwdDecl)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1220, file: !1221, line: 1351, baseType: !185, size: 32, offset: 20736)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1220, file: !1221, line: 1352, baseType: !185, size: 32, offset: 20768)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1220, file: !1221, line: 1354, baseType: !205, size: 64, offset: 20800)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1220, file: !1221, line: 1364, baseType: !163, size: 64, offset: 20864)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1220, file: !1221, line: 1365, baseType: !163, size: 64, offset: 20928)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1220, file: !1221, line: 1412, baseType: !205, size: 64, offset: 20992)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1220, file: !1221, line: 1453, baseType: !2801, size: 64, offset: 21056)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1221, line: 1453, flags: DIFlagFwdDecl)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1220, file: !1221, line: 1457, baseType: !2804, size: 64, offset: 21120)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !74, line: 61, size: 576, elements: !2806)
!2806 = !{!2807, !2808, !2827, !2830, !2831, !2864, !2874}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2805, file: !74, line: 62, baseType: !73, size: 32)
!2808 = !DIDerivedType(tag: DW_TAG_member, scope: !2805, file: !74, line: 64, baseType: !2809, size: 192, offset: 64)
!2809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2805, file: !74, line: 64, size: 192, elements: !2810)
!2810 = !{!2811, !2822}
!2811 = !DIDerivedType(tag: DW_TAG_member, scope: !2809, file: !74, line: 65, baseType: !2812, size: 192)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2809, file: !74, line: 65, size: 192, elements: !2813)
!2813 = !{!2814, !2821}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2812, file: !74, line: 66, baseType: !2815, size: 128)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2816, line: 50, size: 128, elements: !2817)
!2816 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2817 = !{!2818, !2819, !2820}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2815, file: !2816, line: 52, baseType: !205, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2815, file: !2816, line: 54, baseType: !13, size: 32, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2815, file: !2816, line: 55, baseType: !13, size: 32, offset: 96)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2812, file: !74, line: 67, baseType: !205, size: 64, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, scope: !2809, file: !74, line: 70, baseType: !2823, size: 192)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2809, file: !74, line: 70, size: 192, elements: !2824)
!2824 = !{!2825, !2826}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2823, file: !74, line: 71, baseType: !455, size: 128, align: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2823, file: !74, line: 72, baseType: !205, size: 64, offset: 128)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2805, file: !74, line: 76, baseType: !2828, size: 64, offset: 256)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !74, line: 76, flags: DIFlagFwdDecl)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2805, file: !74, line: 77, baseType: !205, size: 64, offset: 320)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2805, file: !74, line: 79, baseType: !2832, size: 64, offset: 384)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2816, line: 25, size: 256, elements: !2834)
!2834 = !{!2835, !2841, !2845}
!2835 = !DIDerivedType(tag: DW_TAG_member, scope: !2833, file: !2816, line: 26, baseType: !2836, size: 128)
!2836 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2833, file: !2816, line: 26, size: 128, elements: !2837)
!2837 = !{!2838, !2840}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2836, file: !2816, line: 27, baseType: !2839, size: 128)
!2839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 128, elements: !1811)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2836, file: !2816, line: 28, baseType: !2839, size: 128)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2833, file: !2816, line: 31, baseType: !2842, size: 64, offset: 128)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2844)
!2844 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2816, line: 23, flags: DIFlagFwdDecl)
!2845 = !DIDerivedType(tag: DW_TAG_member, scope: !2833, file: !2816, line: 33, baseType: !2846, size: 64, offset: 192)
!2846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2833, file: !2816, line: 33, size: 64, elements: !2847)
!2847 = !{!2848, !2854, !2859}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2846, file: !2816, line: 38, baseType: !2849, size: 64)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2846, file: !2816, line: 34, size: 64, elements: !2850)
!2850 = !{!2851, !2852, !2853}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2849, file: !2816, line: 35, baseType: !189, size: 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2849, file: !2816, line: 36, baseType: !238, size: 8, offset: 32)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2849, file: !2816, line: 37, baseType: !238, size: 8, offset: 40)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2846, file: !2816, line: 42, baseType: !2855, size: 16)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2846, file: !2816, line: 39, size: 16, elements: !2856)
!2856 = !{!2857, !2858}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2855, file: !2816, line: 40, baseType: !238, size: 8)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2855, file: !2816, line: 41, baseType: !238, size: 8, offset: 8)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2846, file: !2816, line: 46, baseType: !2860, size: 16)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2846, file: !2816, line: 43, size: 16, elements: !2861)
!2861 = !{!2862, !2863}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2860, file: !2816, line: 44, baseType: !238, size: 8)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2860, file: !2816, line: 45, baseType: !238, size: 8, offset: 8)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2805, file: !74, line: 81, baseType: !2865, size: 64, offset: 448)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !74, line: 85, size: 384, elements: !2867)
!2867 = !{!2868, !2869, !2870, !2871, !2872, !2873}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2866, file: !74, line: 86, baseType: !2828, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2866, file: !74, line: 87, baseType: !205, size: 64, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2866, file: !74, line: 88, baseType: !205, size: 64, offset: 128)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2866, file: !74, line: 89, baseType: !205, size: 64, offset: 192)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2866, file: !74, line: 90, baseType: !381, size: 8, offset: 256)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2866, file: !74, line: 92, baseType: !2865, size: 64, offset: 320)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2805, file: !74, line: 82, baseType: !13, size: 32, offset: 512)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1220, file: !1221, line: 1463, baseType: !2876, offset: 21184)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1221, line: 739, elements: !850)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1220, file: !1221, line: 1470, baseType: !455, size: 128, align: 64, offset: 21184)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1220, file: !1221, line: 1471, baseType: !177, size: 32, offset: 21312)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1220, file: !1221, line: 1472, baseType: !185, size: 32, offset: 21344)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1220, file: !1221, line: 1474, baseType: !1219, size: 64, offset: 21376)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1220, file: !1221, line: 1475, baseType: !2882, size: 320, offset: 21440)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2883, line: 11, size: 320, elements: !2884)
!2883 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2884 = !{!2885, !2886, !2887, !2892}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2882, file: !2883, line: 16, baseType: !510, size: 128)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2882, file: !2883, line: 17, baseType: !205, size: 64, offset: 128)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2882, file: !2883, line: 18, baseType: !2888, size: 64, offset: 192)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{null, !2891}
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2882, file: !2883, line: 19, baseType: !294, size: 32, offset: 256)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1220, file: !1221, line: 1478, baseType: !2894, size: 64, offset: 21760)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2896, line: 49, size: 512, elements: !2897)
!2896 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2897 = !{!2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2907}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2895, file: !2896, line: 50, baseType: !2894, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2895, file: !2896, line: 51, baseType: !280, size: 64, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2895, file: !2896, line: 52, baseType: !205, size: 64, offset: 128)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2895, file: !2896, line: 53, baseType: !205, size: 64, offset: 192)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2895, file: !2896, line: 54, baseType: !2383, size: 64, offset: 256)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2895, file: !2896, line: 56, baseType: !13, size: 32, offset: 320)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2895, file: !2896, line: 58, baseType: !13, size: 32, offset: 352)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2895, file: !2896, line: 59, baseType: !2906, size: 64, offset: 384)
!2906 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !125, line: 159, baseType: !163)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2895, file: !2896, line: 60, baseType: !356, size: 64, offset: 448)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1220, file: !1221, line: 1482, baseType: !177, size: 32, offset: 21824)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1220, file: !1221, line: 1489, baseType: !280, size: 64, offset: 21888)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1220, file: !1221, line: 1504, baseType: !280, size: 64, offset: 21952)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1220, file: !1221, line: 1505, baseType: !164, size: 64, offset: 22016)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1220, file: !1221, line: 1506, baseType: !163, size: 64, offset: 22080)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1220, file: !1221, line: 1507, baseType: !164, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1220, file: !1221, line: 1508, baseType: !164, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1220, file: !1221, line: 1509, baseType: !164, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1220, file: !1221, line: 1510, baseType: !455, size: 128, align: 64, offset: 22208)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1220, file: !1221, line: 1511, baseType: !185, size: 32, offset: 22336)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1220, file: !1221, line: 1515, baseType: !2919, size: 64, offset: 22400)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !450, line: 56, size: 64, elements: !2920)
!2920 = !{!2921}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2919, file: !450, line: 57, baseType: !453, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1220, file: !1221, line: 1518, baseType: !2919, size: 64, offset: 22464)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1220, file: !1221, line: 1528, baseType: !455, size: 128, align: 64, offset: 22528)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1220, file: !1221, line: 1552, baseType: !2925, size: 35328, offset: 23040)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2926, line: 430, size: 35328, elements: !2927)
!2926 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2927 = !{!2928, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2957, !2958, !2959, !2960, !2961, !2962, !2965, !2966, !2967, !2968}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2925, file: !2926, line: 432, baseType: !2929, size: 192)
!2929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2930, size: 192, elements: !494)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2931, line: 16, size: 64, elements: !2932)
!2931 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2932 = !{!2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2930, file: !2931, line: 17, baseType: !245, size: 16)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2930, file: !2931, line: 18, baseType: !245, size: 16, offset: 16)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2930, file: !2931, line: 19, baseType: !245, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2930, file: !2931, line: 19, baseType: !245, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2930, file: !2931, line: 19, baseType: !245, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2930, file: !2931, line: 19, baseType: !245, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2930, file: !2931, line: 19, baseType: !245, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2930, file: !2931, line: 20, baseType: !245, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2930, file: !2931, line: 20, baseType: !245, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2930, file: !2931, line: 20, baseType: !245, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2930, file: !2931, line: 20, baseType: !245, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2930, file: !2931, line: 20, baseType: !245, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2930, file: !2931, line: 20, baseType: !245, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2925, file: !2926, line: 436, baseType: !205, size: 64, offset: 192)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2925, file: !2926, line: 440, baseType: !247, size: 16, offset: 256)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2925, file: !2926, line: 441, baseType: !247, size: 16, offset: 272)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2925, file: !2926, line: 442, baseType: !247, size: 16, offset: 288)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2925, file: !2926, line: 443, baseType: !247, size: 16, offset: 304)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2925, file: !2926, line: 447, baseType: !205, size: 64, offset: 320)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2925, file: !2926, line: 448, baseType: !205, size: 64, offset: 384)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2925, file: !2926, line: 459, baseType: !2954, size: 256, offset: 448)
!2954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2955, size: 256, elements: !353)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2926, line: 428, flags: DIFlagFwdDecl)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2925, file: !2926, line: 461, baseType: !205, size: 64, offset: 704)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2925, file: !2926, line: 463, baseType: !205, size: 64, offset: 768)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2925, file: !2926, line: 465, baseType: !205, size: 64, offset: 832)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2925, file: !2926, line: 466, baseType: !205, size: 64, offset: 896)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2925, file: !2926, line: 467, baseType: !205, size: 64, offset: 960)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2925, file: !2926, line: 473, baseType: !2963, size: 64, offset: 1024)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2926, line: 10, flags: DIFlagFwdDecl)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2925, file: !2926, line: 480, baseType: !205, size: 64, offset: 1088)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2925, file: !2926, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2925, file: !2926, line: 491, baseType: !294, size: 32, offset: 1184)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2925, file: !2926, line: 501, baseType: !2969, size: 33792, offset: 1536)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2970, line: 448, size: 33792, elements: !2971)
!2970 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2971 = !{!2972, !2973, !2974, !3138, !3139, !3145, !3146}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2969, file: !2970, line: 461, baseType: !13, size: 32)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2969, file: !2970, line: 468, baseType: !205, size: 64, offset: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2969, file: !2970, line: 476, baseType: !2975, size: 64, offset: 128)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2970, line: 356, size: 33280, align: 512, elements: !2977)
!2977 = !{!2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2976, file: !2970, line: 358, baseType: !13, size: 32)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2976, file: !2970, line: 361, baseType: !13, size: 32, offset: 32)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2976, file: !2970, line: 364, baseType: !163, size: 64, offset: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2976, file: !2970, line: 367, baseType: !163, size: 64, offset: 128)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2976, file: !2970, line: 370, baseType: !163, size: 64, offset: 192)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2976, file: !2970, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2976, file: !2970, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2976, file: !2970, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2976, file: !2970, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2976, file: !2970, line: 397, baseType: !2988, size: 32768, offset: 512)
!2988 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2970, line: 348, size: 32768, elements: !2989)
!2989 = !{!2990, !3005, !3044, !3121, !3134}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2988, file: !2970, line: 349, baseType: !2991, size: 896)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2970, line: 12, size: 896, elements: !2992)
!2992 = !{!2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3004}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2991, file: !2970, line: 13, baseType: !294, size: 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2991, file: !2970, line: 14, baseType: !294, size: 32, offset: 32)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2991, file: !2970, line: 15, baseType: !294, size: 32, offset: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2991, file: !2970, line: 16, baseType: !294, size: 32, offset: 96)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2991, file: !2970, line: 17, baseType: !294, size: 32, offset: 128)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2991, file: !2970, line: 18, baseType: !294, size: 32, offset: 160)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2991, file: !2970, line: 19, baseType: !294, size: 32, offset: 192)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2991, file: !2970, line: 22, baseType: !3001, size: 640, offset: 224)
!3001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 640, elements: !3002)
!3002 = !{!3003}
!3003 = !DISubrange(count: 20)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2991, file: !2970, line: 25, baseType: !294, size: 32, offset: 864)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2988, file: !2970, line: 350, baseType: !3006, size: 4096, align: 128)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2970, line: 34, size: 4096, align: 128, elements: !3007)
!3007 = !{!3008, !3009, !3010, !3011, !3012, !3027, !3028, !3029, !3033, !3035, !3039}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3006, file: !2970, line: 35, baseType: !245, size: 16)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3006, file: !2970, line: 36, baseType: !245, size: 16, offset: 16)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3006, file: !2970, line: 37, baseType: !245, size: 16, offset: 32)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3006, file: !2970, line: 38, baseType: !245, size: 16, offset: 48)
!3012 = !DIDerivedType(tag: DW_TAG_member, scope: !3006, file: !2970, line: 39, baseType: !3013, size: 128, offset: 64)
!3013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3006, file: !2970, line: 39, size: 128, elements: !3014)
!3014 = !{!3015, !3020}
!3015 = !DIDerivedType(tag: DW_TAG_member, scope: !3013, file: !2970, line: 40, baseType: !3016, size: 128)
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3013, file: !2970, line: 40, size: 128, elements: !3017)
!3017 = !{!3018, !3019}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3016, file: !2970, line: 41, baseType: !163, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3016, file: !2970, line: 42, baseType: !163, size: 64, offset: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, scope: !3013, file: !2970, line: 44, baseType: !3021, size: 128)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3013, file: !2970, line: 44, size: 128, elements: !3022)
!3022 = !{!3023, !3024, !3025, !3026}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3021, file: !2970, line: 45, baseType: !294, size: 32)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3021, file: !2970, line: 46, baseType: !294, size: 32, offset: 32)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3021, file: !2970, line: 47, baseType: !294, size: 32, offset: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3021, file: !2970, line: 48, baseType: !294, size: 32, offset: 96)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3006, file: !2970, line: 51, baseType: !294, size: 32, offset: 192)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3006, file: !2970, line: 52, baseType: !294, size: 32, offset: 224)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3006, file: !2970, line: 55, baseType: !3030, size: 1024, offset: 256)
!3030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 1024, elements: !3031)
!3031 = !{!3032}
!3032 = !DISubrange(count: 32)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3006, file: !2970, line: 58, baseType: !3034, size: 2048, offset: 1280)
!3034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 2048, elements: !2010)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3006, file: !2970, line: 60, baseType: !3036, size: 384, offset: 3328)
!3036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 384, elements: !3037)
!3037 = !{!3038}
!3038 = !DISubrange(count: 12)
!3039 = !DIDerivedType(tag: DW_TAG_member, scope: !3006, file: !2970, line: 62, baseType: !3040, size: 384, offset: 3712)
!3040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3006, file: !2970, line: 62, size: 384, elements: !3041)
!3041 = !{!3042, !3043}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3040, file: !2970, line: 63, baseType: !3036, size: 384)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3040, file: !2970, line: 64, baseType: !3036, size: 384)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2988, file: !2970, line: 351, baseType: !3045, size: 1088)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2970, line: 79, size: 1088, elements: !3046)
!3046 = !{!3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3120}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3045, file: !2970, line: 80, baseType: !294, size: 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3045, file: !2970, line: 81, baseType: !294, size: 32, offset: 32)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3045, file: !2970, line: 82, baseType: !294, size: 32, offset: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3045, file: !2970, line: 83, baseType: !294, size: 32, offset: 96)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3045, file: !2970, line: 84, baseType: !294, size: 32, offset: 128)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3045, file: !2970, line: 85, baseType: !294, size: 32, offset: 160)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3045, file: !2970, line: 86, baseType: !294, size: 32, offset: 192)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3045, file: !2970, line: 88, baseType: !3001, size: 640, offset: 224)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3045, file: !2970, line: 89, baseType: !238, size: 8, offset: 864)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3045, file: !2970, line: 90, baseType: !238, size: 8, offset: 872)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3045, file: !2970, line: 91, baseType: !238, size: 8, offset: 880)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3045, file: !2970, line: 92, baseType: !238, size: 8, offset: 888)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3045, file: !2970, line: 93, baseType: !238, size: 8, offset: 896)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3045, file: !2970, line: 94, baseType: !238, size: 8, offset: 904)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3045, file: !2970, line: 95, baseType: !3062, size: 64, offset: 960)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3064, line: 11, size: 128, elements: !3065)
!3064 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3065 = !{!3066, !3067}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3063, file: !3064, line: 12, baseType: !713, size: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3063, file: !3064, line: 13, baseType: !3068, size: 64, offset: 64)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3070, line: 103, size: 1344, elements: !3071)
!3070 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3071 = !{!3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3100, !3101, !3102}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3069, file: !3070, line: 109, baseType: !205, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3069, file: !3070, line: 110, baseType: !205, size: 64, offset: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3069, file: !3070, line: 111, baseType: !205, size: 64, offset: 128)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3069, file: !3070, line: 112, baseType: !205, size: 64, offset: 192)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3069, file: !3070, line: 113, baseType: !205, size: 64, offset: 256)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3069, file: !3070, line: 114, baseType: !205, size: 64, offset: 320)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3069, file: !3070, line: 117, baseType: !205, size: 64, offset: 384)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3069, file: !3070, line: 118, baseType: !205, size: 64, offset: 448)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3069, file: !3070, line: 119, baseType: !205, size: 64, offset: 512)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3069, file: !3070, line: 120, baseType: !205, size: 64, offset: 576)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3069, file: !3070, line: 121, baseType: !205, size: 64, offset: 640)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3069, file: !3070, line: 122, baseType: !205, size: 64, offset: 704)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3069, file: !3070, line: 123, baseType: !205, size: 64, offset: 768)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3069, file: !3070, line: 124, baseType: !205, size: 64, offset: 832)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3069, file: !3070, line: 125, baseType: !205, size: 64, offset: 896)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3069, file: !3070, line: 139, baseType: !205, size: 64, offset: 960)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3069, file: !3070, line: 142, baseType: !205, size: 64, offset: 1024)
!3089 = !DIDerivedType(tag: DW_TAG_member, scope: !3069, file: !3070, line: 144, baseType: !3090, size: 64, offset: 1088)
!3090 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3069, file: !3070, line: 144, size: 64, elements: !3091)
!3091 = !{!3092, !3093, !3094}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3090, file: !3070, line: 146, baseType: !245, size: 16)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3090, file: !3070, line: 148, baseType: !163, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3090, file: !3070, line: 150, baseType: !3095, size: 64)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3070, line: 59, size: 64, elements: !3096)
!3096 = !{!3097, !3098, !3099}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3095, file: !3070, line: 61, baseType: !163, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3095, file: !3070, line: 63, baseType: !163, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3095, file: !3070, line: 65, baseType: !163, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3069, file: !3070, line: 153, baseType: !205, size: 64, offset: 1152)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3069, file: !3070, line: 154, baseType: !205, size: 64, offset: 1216)
!3102 = !DIDerivedType(tag: DW_TAG_member, scope: !3069, file: !3070, line: 156, baseType: !3103, size: 64, offset: 1280)
!3103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3069, file: !3070, line: 156, size: 64, elements: !3104)
!3104 = !{!3105, !3106, !3107}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3103, file: !3070, line: 158, baseType: !245, size: 16)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3103, file: !3070, line: 160, baseType: !163, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3103, file: !3070, line: 162, baseType: !3108, size: 64)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3070, line: 69, size: 64, elements: !3109)
!3109 = !{!3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3108, file: !3070, line: 71, baseType: !163, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3108, file: !3070, line: 73, baseType: !163, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3108, file: !3070, line: 75, baseType: !163, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3108, file: !3070, line: 77, baseType: !163, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3108, file: !3070, line: 80, baseType: !163, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3108, file: !3070, line: 83, baseType: !163, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3108, file: !3070, line: 86, baseType: !163, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3108, file: !3070, line: 88, baseType: !163, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3108, file: !3070, line: 93, baseType: !163, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3108, file: !3070, line: 100, baseType: !163, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3045, file: !2970, line: 96, baseType: !294, size: 32, offset: 1024)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2988, file: !2970, line: 352, baseType: !3122, size: 4608, align: 512)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2970, line: 333, size: 4608, align: 512, elements: !3123)
!3123 = !{!3124, !3125, !3132}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3122, file: !2970, line: 334, baseType: !3006, size: 4096, align: 128)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3122, file: !2970, line: 335, baseType: !3126, size: 512, offset: 4096)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2970, line: 312, size: 512, elements: !3127)
!3127 = !{!3128, !3129, !3130}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3126, file: !2970, line: 313, baseType: !163, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3126, file: !2970, line: 314, baseType: !163, size: 64, offset: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3126, file: !2970, line: 315, baseType: !3131, size: 384, offset: 128)
!3131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 384, elements: !317)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3122, file: !2970, line: 336, baseType: !3133, offset: 4608)
!3133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, elements: !532)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2988, file: !2970, line: 353, baseType: !3135, size: 32768)
!3135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 32768, elements: !3136)
!3136 = !{!3137}
!3137 = !DISubrange(count: 4096)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2969, file: !2970, line: 484, baseType: !2975, size: 64, offset: 192)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2969, file: !2970, line: 491, baseType: !3140, size: 128, offset: 256)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2970, line: 404, size: 128, elements: !3141)
!3141 = !{!3142, !3143, !3144}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3140, file: !2970, line: 424, baseType: !163, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3140, file: !2970, line: 432, baseType: !13, size: 32, offset: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3140, file: !2970, line: 440, baseType: !13, size: 32, offset: 96)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2969, file: !2970, line: 498, baseType: !3140, size: 128, offset: 384)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2969, file: !2970, line: 508, baseType: !2976, size: 33280, align: 512, offset: 512)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1201, file: !1202, line: 16, baseType: !517, size: 192, offset: 512)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1201, file: !1202, line: 17, baseType: !181, size: 32, offset: 704)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !810, file: !21, line: 1240, baseType: !280, size: 64, offset: 6912)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !810, file: !21, line: 1243, baseType: !294, size: 32, offset: 6976)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !810, file: !21, line: 1245, baseType: !285, size: 64, offset: 7040)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !810, file: !21, line: 1246, baseType: !285, size: 64, offset: 7104)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !810, file: !21, line: 1248, baseType: !295, size: 32, offset: 7168)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !810, file: !21, line: 1249, baseType: !3155, size: 64, offset: 7232)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !21, line: 634, flags: DIFlagFwdDecl)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !810, file: !21, line: 1252, baseType: !3158, size: 256, offset: 7296)
!3158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !3031)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !810, file: !21, line: 1253, baseType: !3160, size: 128, offset: 7552)
!3160 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3161, line: 21, baseType: !3162)
!3161 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3161, line: 19, size: 128, elements: !3163)
!3163 = !{!3164}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3162, file: !3161, line: 20, baseType: !3165, size: 128)
!3165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 128, elements: !1811)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !810, file: !21, line: 1255, baseType: !13, size: 32, offset: 7680)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !810, file: !21, line: 1261, baseType: !257, size: 256, offset: 7744)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !810, file: !21, line: 1267, baseType: !326, size: 64, offset: 8000)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !810, file: !21, line: 1269, baseType: !3170, size: 64, offset: 8064)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3172)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !560, line: 128, size: 1024, align: 512, elements: !3173)
!3173 = !{!3174, !3178, !3179, !3186, !3192, !3196, !3200, !3204, !3205, !3209, !3213, !3218, !3222}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3172, file: !560, line: 129, baseType: !3175, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!185, !558, !13}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3172, file: !560, line: 130, baseType: !3175, size: 64, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3172, file: !560, line: 131, baseType: !3180, size: 64, offset: 128)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!185, !3183, !3185}
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !559)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3172, file: !560, line: 132, baseType: !3187, size: 64, offset: 192)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!185, !3183, !13, !326, !3190}
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3172, file: !560, line: 134, baseType: !3193, size: 64, offset: 256)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!185, !3183}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3172, file: !560, line: 135, baseType: !3197, size: 64, offset: 320)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!185, !558}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3172, file: !560, line: 136, baseType: !3201, size: 64, offset: 384)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{null, !558}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3172, file: !560, line: 137, baseType: !3201, size: 64, offset: 448)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3172, file: !560, line: 138, baseType: !3206, size: 64, offset: 512)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{null, !558, !598}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3172, file: !560, line: 139, baseType: !3210, size: 64, offset: 576)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!346, !558, !346, !185}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3172, file: !560, line: 140, baseType: !3214, size: 64, offset: 640)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!553, !3217}
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3172, file: !560, line: 141, baseType: !3219, size: 64, offset: 704)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!185, !722, !381}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3172, file: !560, line: 142, baseType: !3223, size: 64, offset: 768)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!558, !558, !3226}
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !810, file: !21, line: 1271, baseType: !3229, size: 448, offset: 8128)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !983, line: 63, size: 448, elements: !3230)
!3230 = !{!3231, !3236, !3237, !3238, !3239, !3240, !3241}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3229, file: !983, line: 64, baseType: !3232, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!205, !3235, !981}
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3229, file: !983, line: 66, baseType: !3232, size: 64, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3229, file: !983, line: 69, baseType: !713, size: 64, offset: 128)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3229, file: !983, line: 70, baseType: !185, size: 32, offset: 192)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3229, file: !983, line: 71, baseType: !13, size: 32, offset: 224)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3229, file: !983, line: 74, baseType: !195, size: 128, offset: 256)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3229, file: !983, line: 85, baseType: !3242, size: 64, offset: 384)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !810, file: !21, line: 1274, baseType: !122, size: 64, offset: 8576)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !810, file: !21, line: 1280, baseType: !122, size: 64, offset: 8640)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !810, file: !21, line: 1283, baseType: !185, size: 32, offset: 8704)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !810, file: !21, line: 1286, baseType: !2523, size: 32, offset: 8736)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !810, file: !21, line: 1289, baseType: !3248, size: 64, offset: 8768)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1649, line: 18, flags: DIFlagFwdDecl)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !810, file: !21, line: 1290, baseType: !506, size: 64, offset: 8832)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !810, file: !21, line: 1297, baseType: !1632, size: 64, offset: 8896)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !810, file: !21, line: 1304, baseType: !3253, size: 64, offset: 8960)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3254, line: 49, size: 64, elements: !3255)
!3254 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3255 = !{!3256}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3253, file: !3254, line: 50, baseType: !3257, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3254, line: 41, size: 512, align: 512, elements: !3259)
!3259 = !{!3260, !3261, !3266}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3258, file: !3254, line: 43, baseType: !265, size: 32)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3258, file: !3254, line: 45, baseType: !3262, size: 192, offset: 64)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3254, line: 29, size: 192, elements: !3263)
!3263 = !{!3264, !3265}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3262, file: !3254, line: 30, baseType: !195, size: 128)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3262, file: !3254, line: 32, baseType: !713, size: 64, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3258, file: !3254, line: 46, baseType: !713, size: 64, offset: 256)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !810, file: !21, line: 1305, baseType: !3253, size: 64, offset: 9024)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !810, file: !21, line: 1306, baseType: !455, size: 128, align: 64, offset: 9088)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !810, file: !21, line: 1307, baseType: !1648, size: 256, offset: 9216)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !810, file: !21, line: 1309, baseType: !257, size: 256, offset: 9472)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !810, file: !21, line: 1314, baseType: !185, size: 32, offset: 9728)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !810, file: !21, line: 1317, baseType: !265, size: 32, align: 512, offset: 10240)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !810, file: !21, line: 1318, baseType: !195, size: 128, offset: 10304)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !810, file: !21, line: 1320, baseType: !265, size: 32, offset: 10432)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !810, file: !21, line: 1321, baseType: !195, size: 128, offset: 10496)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !599, file: !21, line: 656, baseType: !2275, size: 64, offset: 512)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !599, file: !21, line: 659, baseType: !280, size: 64, offset: 576)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !599, file: !21, line: 663, baseType: !205, size: 64, offset: 640)
!3279 = !DIDerivedType(tag: DW_TAG_member, scope: !599, file: !21, line: 671, baseType: !3280, size: 32, offset: 704)
!3280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !599, file: !21, line: 671, size: 32, elements: !3281)
!3281 = !{!3282, !3284}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3280, file: !21, line: 672, baseType: !3283, size: 32)
!3283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3280, file: !21, line: 673, baseType: !13, size: 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !599, file: !21, line: 675, baseType: !673, size: 32, offset: 736)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !599, file: !21, line: 676, baseType: !413, size: 64, offset: 768)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !599, file: !21, line: 677, baseType: !709, size: 128, offset: 832)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !599, file: !21, line: 678, baseType: !709, size: 128, offset: 960)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !599, file: !21, line: 679, baseType: !709, size: 128, offset: 1088)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !599, file: !21, line: 680, baseType: !265, size: 32, offset: 1216)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !599, file: !21, line: 681, baseType: !247, size: 16, offset: 1248)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !599, file: !21, line: 682, baseType: !238, size: 8, offset: 1264)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !599, file: !21, line: 683, baseType: !238, size: 8, offset: 1272)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !599, file: !21, line: 684, baseType: !1114, size: 64, offset: 1280)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !599, file: !21, line: 691, baseType: !205, size: 64, offset: 1344)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !599, file: !21, line: 692, baseType: !210, size: 320, offset: 1408)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !599, file: !21, line: 694, baseType: !205, size: 64, offset: 1728)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !599, file: !21, line: 695, baseType: !205, size: 64, offset: 1792)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !599, file: !21, line: 697, baseType: !510, size: 128, offset: 1856)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !599, file: !21, line: 698, baseType: !195, size: 128, offset: 1984)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !599, file: !21, line: 707, baseType: !195, size: 128, offset: 2112)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !599, file: !21, line: 708, baseType: !195, size: 128, offset: 2240)
!3303 = !DIDerivedType(tag: DW_TAG_member, scope: !599, file: !21, line: 709, baseType: !3304, size: 128, offset: 2368)
!3304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !599, file: !21, line: 709, size: 128, elements: !3305)
!3305 = !{!3306, !3307}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3304, file: !21, line: 710, baseType: !506, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3304, file: !21, line: 711, baseType: !455, size: 128, align: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !599, file: !21, line: 713, baseType: !124, size: 64, offset: 2496)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !599, file: !21, line: 714, baseType: !124, size: 64, offset: 2560)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !599, file: !21, line: 715, baseType: !181, size: 32, offset: 2624)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !599, file: !21, line: 716, baseType: !181, size: 32, offset: 2656)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !599, file: !21, line: 717, baseType: !181, size: 32, offset: 2688)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !599, file: !21, line: 719, baseType: !181, size: 32, offset: 2720)
!3314 = !DIDerivedType(tag: DW_TAG_member, scope: !599, file: !21, line: 721, baseType: !3315, size: 64, offset: 2752)
!3315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !599, file: !21, line: 721, size: 64, elements: !3316)
!3316 = !{!3317, !3445}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3315, file: !21, line: 722, baseType: !3318, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3320)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !21, line: 1914, size: 2112, elements: !3321)
!3321 = !{!3322, !3323, !3327, !3331, !3335, !3336, !3337, !3343, !3356, !3364, !3368, !3369, !3373, !3374, !3378, !3383, !3384, !3388, !3392, !3398, !3399, !3403, !3404, !3408, !3412, !3413, !3418, !3422, !3426, !3430, !3434, !3435, !3441}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3320, file: !21, line: 1915, baseType: !842, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3320, file: !21, line: 1916, baseType: !3324, size: 64, offset: 64)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!413, !717, !413, !185}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3320, file: !21, line: 1917, baseType: !3328, size: 64, offset: 128)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!753, !717, !346, !329, !426}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3320, file: !21, line: 1918, baseType: !3332, size: 64, offset: 192)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!753, !717, !326, !329, !426}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3320, file: !21, line: 1919, baseType: !2407, size: 64, offset: 256)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3320, file: !21, line: 1920, baseType: !2407, size: 64, offset: 320)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3320, file: !21, line: 1921, baseType: !3338, size: 64, offset: 384)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!185, !2410, !3341, !13}
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !21, line: 53, flags: DIFlagFwdDecl)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3320, file: !21, line: 1923, baseType: !3344, size: 64, offset: 448)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!185, !717, !3347}
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !21, line: 1858, size: 128, elements: !3349)
!3349 = !{!3350, !3355}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3348, file: !21, line: 1859, baseType: !3351, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !21, line: 1855, baseType: !3352)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!381, !3347, !326, !185, !413, !163, !13}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3348, file: !21, line: 1860, baseType: !413, size: 64, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3320, file: !21, line: 1924, baseType: !3357, size: 64, offset: 512)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!3360, !717, !3362}
!3360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3361, line: 59, baseType: !13)
!3361 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !21, line: 61, flags: DIFlagFwdDecl)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3320, file: !21, line: 1925, baseType: !3365, size: 64, offset: 576)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!713, !717, !13, !205}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3320, file: !21, line: 1926, baseType: !3365, size: 64, offset: 640)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3320, file: !21, line: 1927, baseType: !3370, size: 64, offset: 704)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!185, !717, !2616}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3320, file: !21, line: 1928, baseType: !205, size: 64, offset: 768)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3320, file: !21, line: 1929, baseType: !3375, size: 64, offset: 832)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!185, !598, !717}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3320, file: !21, line: 1930, baseType: !3379, size: 64, offset: 896)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!185, !717, !3382}
!3382 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !21, line: 1061, baseType: !280)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3320, file: !21, line: 1931, baseType: !3375, size: 64, offset: 960)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3320, file: !21, line: 1932, baseType: !3385, size: 64, offset: 1024)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!185, !717, !413, !413, !185}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3320, file: !21, line: 1933, baseType: !3389, size: 64, offset: 1088)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!185, !185, !717, !185}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3320, file: !21, line: 1934, baseType: !3393, size: 64, offset: 1152)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!185, !717, !185, !3396}
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !21, line: 1063, flags: DIFlagFwdDecl)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3320, file: !21, line: 1935, baseType: !1531, size: 64, offset: 1216)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3320, file: !21, line: 1936, baseType: !3400, size: 64, offset: 1280)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!185, !185}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3320, file: !21, line: 1937, baseType: !3393, size: 64, offset: 1344)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3320, file: !21, line: 1938, baseType: !3405, size: 64, offset: 1408)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!753, !2247, !717, !426, !329, !13}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3320, file: !21, line: 1939, baseType: !3409, size: 64, offset: 1472)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!753, !717, !426, !2247, !329, !13}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3320, file: !21, line: 1940, baseType: !2513, size: 64, offset: 1536)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3320, file: !21, line: 1941, baseType: !3414, size: 64, offset: 1600)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!185, !717, !185, !3417, !2384}
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3320, file: !21, line: 1942, baseType: !3419, size: 64, offset: 1664)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!713, !717, !185, !413, !413}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3320, file: !21, line: 1944, baseType: !3423, size: 64, offset: 1728)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{null, !403, !717}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3320, file: !21, line: 1948, baseType: !3427, size: 64, offset: 1792)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!753, !717, !413, !717, !413, !329, !13}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3320, file: !21, line: 1950, baseType: !3431, size: 64, offset: 1856)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!413, !717, !413, !717, !413, !413, !13}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3320, file: !21, line: 1953, baseType: !3385, size: 64, offset: 1920)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3320, file: !21, line: 1954, baseType: !3436, size: 64, offset: 1984)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!185, !3439, !13}
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !21, line: 1911, flags: DIFlagFwdDecl)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3320, file: !21, line: 1955, baseType: !3442, size: 64, offset: 2048)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!185, !3439, !3341, !13}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3315, file: !21, line: 723, baseType: !869, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !599, file: !21, line: 725, baseType: !3447, size: 64, offset: 2816)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !21, line: 725, flags: DIFlagFwdDecl)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !599, file: !21, line: 726, baseType: !2276, size: 1536, align: 64, offset: 2880)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !599, file: !21, line: 727, baseType: !195, size: 128, offset: 4416)
!3451 = !DIDerivedType(tag: DW_TAG_member, scope: !599, file: !21, line: 728, baseType: !3452, size: 64, offset: 4544)
!3452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !599, file: !21, line: 728, size: 64, elements: !3453)
!3453 = !{!3454, !3455, !3458, !3459}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3452, file: !21, line: 729, baseType: !2247, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3452, file: !21, line: 730, baseType: !3456, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !21, line: 730, flags: DIFlagFwdDecl)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3452, file: !21, line: 731, baseType: !346, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3452, file: !21, line: 732, baseType: !13, size: 32)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !599, file: !21, line: 735, baseType: !295, size: 32, offset: 4608)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !599, file: !21, line: 738, baseType: !295, size: 32, offset: 4640)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !599, file: !21, line: 739, baseType: !3155, size: 64, offset: 4672)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !599, file: !21, line: 750, baseType: !280, size: 64, offset: 4736)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !559, file: !560, line: 91, baseType: !3465, size: 256, offset: 448)
!3465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 256, elements: !3031)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !559, file: !560, line: 94, baseType: !3467, size: 64, offset: 704)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3468, line: 25, size: 64, elements: !3469)
!3468 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3469 = !{!3470}
!3470 = !DIDerivedType(tag: DW_TAG_member, scope: !3467, file: !3468, line: 26, baseType: !3471, size: 64)
!3471 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3467, file: !3468, line: 26, size: 64, elements: !3472)
!3472 = !{!3473, !3474}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3471, file: !3468, line: 28, baseType: !164, size: 64, align: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, scope: !3471, file: !3468, line: 30, baseType: !3475, size: 64)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3471, file: !3468, line: 30, size: 64, elements: !3476)
!3476 = !{!3477, !3478}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3475, file: !3468, line: 31, baseType: !265, size: 32)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3475, file: !3468, line: 32, baseType: !185, size: 32, offset: 32)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !559, file: !560, line: 95, baseType: !3170, size: 64, offset: 768)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !559, file: !560, line: 96, baseType: !809, size: 64, offset: 832)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !559, file: !560, line: 97, baseType: !205, size: 64, offset: 896)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !559, file: !560, line: 98, baseType: !280, size: 64, offset: 960)
!3483 = !DIDerivedType(tag: DW_TAG_member, scope: !559, file: !560, line: 100, baseType: !3484, size: 128, offset: 1024)
!3484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !559, file: !560, line: 100, size: 128, elements: !3485)
!3485 = !{!3486, !3487}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3484, file: !560, line: 101, baseType: !195, size: 128)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3484, file: !560, line: 102, baseType: !3488, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !559, file: !560, line: 104, baseType: !195, size: 128, offset: 1152)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !559, file: !560, line: 105, baseType: !195, size: 128, offset: 1280)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !559, file: !560, line: 113, baseType: !3492, size: 128, offset: 1408)
!3492 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !559, file: !560, line: 109, size: 128, elements: !3493)
!3493 = !{!3494, !3495, !3496}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3492, file: !560, line: 110, baseType: !510, size: 128)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3492, file: !560, line: 111, baseType: !574, size: 128)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3492, file: !560, line: 112, baseType: !455, size: 128, align: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !554, file: !555, line: 72, baseType: !809, size: 64, offset: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !554, file: !555, line: 73, baseType: !185, size: 32, offset: 128)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !554, file: !555, line: 74, baseType: !638, size: 64, offset: 192)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !549, file: !550, line: 10, baseType: !558, size: 64, offset: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !443, file: !21, line: 1015, baseType: !598, size: 64, offset: 1344)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !443, file: !21, line: 1016, baseType: !3318, size: 64, offset: 1408)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !443, file: !21, line: 1018, baseType: !163, size: 64, offset: 1472)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !443, file: !21, line: 1020, baseType: !280, size: 64, offset: 1536)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !443, file: !21, line: 1023, baseType: !280, size: 64, offset: 1600)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !443, file: !21, line: 1027, baseType: !3507, size: 64, offset: 1664)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !443, file: !21, line: 1029, baseType: !2275, size: 64, offset: 1728)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !443, file: !21, line: 1030, baseType: !2523, size: 32, offset: 1792)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !443, file: !21, line: 1031, baseType: !2523, size: 32, offset: 1824)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !404, file: !405, line: 29, baseType: !280, size: 64, offset: 896)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !322, file: !323, line: 132, baseType: !3513, size: 64, offset: 832)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!713, !383, !346, !329}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "request_key", scope: !322, file: !323, line: 142, baseType: !3517, size: 64, offset: 896)
!3517 = !DIDerivedType(tag: DW_TAG_typedef, name: "request_key_actor_t", file: !323, line: 41, baseType: !3518)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!185, !173, !280}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_restriction", scope: !322, file: !323, line: 150, baseType: !3522, size: 64, offset: 960)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!3525, !326}
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !88, line: 176, size: 192, elements: !3527)
!3527 = !{!3528, !3537, !3538}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !3526, file: !88, line: 177, baseType: !3529, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !88, line: 171, baseType: !3530)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!185, !173, !3533, !3535, !173}
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3526, file: !88, line: 178, baseType: !173, size: 64, offset: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !3526, file: !88, line: 179, baseType: !321, size: 64, offset: 128)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "asym_query", scope: !322, file: !323, line: 153, baseType: !3540, size: 64, offset: 1024)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!185, !3543, !3558}
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3545)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_pkey_params", file: !81, line: 29, size: 384, elements: !3546)
!3546 = !{!3547, !3548, !3549, !3550, !3551, !3552, !3557}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3545, file: !81, line: 30, baseType: !173, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !3545, file: !81, line: 31, baseType: !326, size: 64, offset: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "hash_algo", scope: !3545, file: !81, line: 32, baseType: !326, size: 64, offset: 128)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3545, file: !81, line: 33, baseType: !346, size: 64, offset: 192)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "in_len", scope: !3545, file: !81, line: 34, baseType: !295, size: 32, offset: 256)
!3552 = !DIDerivedType(tag: DW_TAG_member, scope: !3545, file: !81, line: 35, baseType: !3553, size: 32, offset: 288)
!3553 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3545, file: !81, line: 35, size: 32, elements: !3554)
!3554 = !{!3555, !3556}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "out_len", scope: !3553, file: !81, line: 36, baseType: !295, size: 32)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "in2_len", scope: !3553, file: !81, line: 37, baseType: !295, size: 32)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !3545, file: !81, line: 39, baseType: !80, size: 8, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_pkey_query", file: !81, line: 13, size: 128, elements: !3560)
!3560 = !{!3561, !3562, !3563, !3564, !3565, !3566}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "supported_ops", scope: !3559, file: !81, line: 14, baseType: !295, size: 32)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "key_size", scope: !3559, file: !81, line: 15, baseType: !295, size: 32, offset: 32)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "max_data_size", scope: !3559, file: !81, line: 16, baseType: !246, size: 16, offset: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "max_sig_size", scope: !3559, file: !81, line: 17, baseType: !246, size: 16, offset: 80)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "max_enc_size", scope: !3559, file: !81, line: 18, baseType: !246, size: 16, offset: 96)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_size", scope: !3559, file: !81, line: 19, baseType: !246, size: 16, offset: 112)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "asym_eds_op", scope: !322, file: !323, line: 155, baseType: !3568, size: 64, offset: 1088)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!185, !3571, !356, !280}
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "asym_verify_signature", scope: !322, file: !323, line: 157, baseType: !3573, size: 64, offset: 1152)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!185, !3571, !356, !356}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !322, file: !323, line: 161, baseType: !195, size: 128, offset: 1216)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "lock_class", scope: !322, file: !323, line: 162, baseType: !848, offset: 1344)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !305, file: !88, line: 130, baseType: !3579, size: 64, offset: 192)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !88, line: 108, size: 192, elements: !3581)
!3581 = !{!3582, !3583, !3584}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3580, file: !88, line: 109, baseType: !455, size: 128, align: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3580, file: !88, line: 110, baseType: !177, size: 32, offset: 128)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !3580, file: !88, line: 111, baseType: !381, size: 8, offset: 160)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !305, file: !88, line: 131, baseType: !326, size: 64, offset: 256)
!3586 = !DIDerivedType(tag: DW_TAG_member, scope: !302, file: !88, line: 247, baseType: !3587, size: 320)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !302, file: !88, line: 247, size: 320, elements: !3588)
!3588 = !{!3589, !3590, !3591, !3592, !3593}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3587, file: !88, line: 248, baseType: !205, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !3587, file: !88, line: 249, baseType: !205, size: 64, offset: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3587, file: !88, line: 250, baseType: !321, size: 64, offset: 128)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !3587, file: !88, line: 251, baseType: !3579, size: 64, offset: 192)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !3587, file: !88, line: 252, baseType: !346, size: 64, offset: 256)
!3594 = !DIDerivedType(tag: DW_TAG_member, scope: !174, file: !88, line: 260, baseType: !3595, size: 256, offset: 1408)
!3595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !174, file: !88, line: 260, size: 256, elements: !3596)
!3596 = !{!3597, !3598}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !3595, file: !88, line: 261, baseType: !348, size: 256)
!3598 = !DIDerivedType(tag: DW_TAG_member, scope: !3595, file: !88, line: 262, baseType: !3599, size: 256)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3595, file: !88, line: 262, size: 256, elements: !3600)
!3600 = !{!3601, !3602}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !3599, file: !88, line: 264, baseType: !195, size: 128)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !3599, file: !88, line: 265, baseType: !3603, size: 128, offset: 128)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !3604, line: 22, size: 128, elements: !3605)
!3604 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!3605 = !{!3606, !3609}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3603, file: !3604, line: 23, baseType: !3607, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !3604, line: 23, flags: DIFlagFwdDecl)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !3603, file: !3604, line: 24, baseType: !205, size: 64, offset: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !174, file: !88, line: 280, baseType: !3525, size: 64, offset: 1664)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !118, file: !119, line: 130, baseType: !173, size: 64, offset: 832)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !118, file: !119, line: 131, baseType: !173, size: 64, offset: 896)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !118, file: !119, line: 132, baseType: !173, size: 64, offset: 960)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !118, file: !119, line: 135, baseType: !280, size: 64, offset: 1024)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !118, file: !119, line: 137, baseType: !3616, size: 64, offset: 1088)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !3618, line: 14, size: 1088, elements: !3619)
!3618 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!3619 = !{!3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3617, file: !3618, line: 15, baseType: !177, size: 32)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !3617, file: !3618, line: 17, baseType: !1591, size: 320, offset: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !3617, file: !3618, line: 19, baseType: !205, size: 64, offset: 384)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !3617, file: !3618, line: 20, baseType: !122, size: 64, offset: 448)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !3617, file: !3618, line: 23, baseType: !510, size: 128, offset: 512)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3617, file: !3618, line: 24, baseType: !135, size: 32, offset: 640)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !3617, file: !3618, line: 29, baseType: !122, size: 64, offset: 704)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !3617, file: !3618, line: 36, baseType: !3628, size: 320, offset: 768)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !3629, line: 15, size: 320, elements: !3630)
!3629 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!3630 = !{!3631, !3632, !3633, !3634, !3635, !3636, !3637}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3628, file: !3629, line: 16, baseType: !221, size: 32)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !3628, file: !3629, line: 18, baseType: !185, size: 32, offset: 32)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !3628, file: !3629, line: 19, baseType: !185, size: 32, offset: 64)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !3628, file: !3629, line: 20, baseType: !185, size: 32, offset: 96)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !3628, file: !3629, line: 21, baseType: !185, size: 32, offset: 128)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !3628, file: !3629, line: 22, baseType: !205, size: 64, offset: 192)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3628, file: !3629, line: 23, baseType: !205, size: 64, offset: 256)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !118, file: !119, line: 138, baseType: !1632, size: 64, offset: 1152)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !118, file: !119, line: 139, baseType: !3640, size: 64, offset: 1216)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1854, line: 16, flags: DIFlagFwdDecl)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !118, file: !119, line: 140, baseType: !3643, size: 64, offset: 1280)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !119, line: 25, size: 64, elements: !3645)
!3645 = !{!3646, !3647, !3648}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3644, file: !119, line: 26, baseType: !181, size: 32)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !3644, file: !119, line: 27, baseType: !185, size: 32, offset: 32)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3644, file: !119, line: 28, baseType: !3649, offset: 64)
!3649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, elements: !532)
!3650 = !DIDerivedType(tag: DW_TAG_member, scope: !118, file: !119, line: 142, baseType: !3651, size: 128, offset: 1344)
!3651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !118, file: !119, line: 142, size: 128, elements: !3652)
!3652 = !{!3653, !3654}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !3651, file: !119, line: 143, baseType: !185, size: 32)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3651, file: !119, line: 144, baseType: !455, size: 128, align: 64)
!3655 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !125, line: 42, baseType: !205)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_key_auth", file: !3659, line: 16, size: 576, elements: !3660)
!3659 = !DIFile(filename: "./include/keys/request_key_auth-type.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca4a1b39de2937f47165824026d6b6c6")
!3660 = !{!3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3658, file: !3659, line: 17, baseType: !455, size: 128, align: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "target_key", scope: !3658, file: !3659, line: 18, baseType: !173, size: 64, offset: 128)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "dest_keyring", scope: !3658, file: !3659, line: 19, baseType: !173, size: 64, offset: 192)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3658, file: !3659, line: 20, baseType: !116, size: 64, offset: 256)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "callout_info", scope: !3658, file: !3659, line: 21, baseType: !280, size: 64, offset: 320)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "callout_len", scope: !3658, file: !3659, line: 22, baseType: !329, size: 64, offset: 384)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3658, file: !3659, line: 23, baseType: !1741, size: 32, offset: 448)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !3658, file: !3659, line: 24, baseType: !2139, size: 64, offset: 480)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !280)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3670)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3675)
!3675 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !299)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!3679 = !{!0, !7, !3680, !3683, !3688, !3693}
!3680 = !DIGlobalVariableExpression(var: !3681, expr: !DIExpression())
!3681 = distinct !DIGlobalVariable(scope: null, file: !2, line: 214, type: !3682, isLocal: true, isDefinition: true)
!3682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !494)
!3683 = !DIGlobalVariableExpression(var: !3684, expr: !DIExpression())
!3684 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !3685, isLocal: true, isDefinition: true)
!3685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !3686)
!3686 = !{!3687}
!3687 = !DISubrange(count: 5)
!3688 = !DIGlobalVariableExpression(var: !3689, expr: !DIExpression())
!3689 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !3690, isLocal: true, isDefinition: true)
!3690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !3691)
!3691 = !{!3692}
!3692 = !DISubrange(count: 15)
!3693 = !DIGlobalVariableExpression(var: !3694, expr: !DIExpression())
!3694 = distinct !DIGlobalVariable(scope: null, file: !98, line: 480, type: !3695, isLocal: true, isDefinition: true)
!3695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !3696)
!3696 = !{!3697}
!3697 = !DISubrange(count: 21)
!3698 = !{i32 7, !"Dwarf Version", i32 5}
!3699 = !{i32 2, !"Debug Info Version", i32 3}
!3700 = !{i32 1, !"wchar_size", i32 2}
!3701 = !{i32 8, !"cf-protection-branch", i32 1}
!3702 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3703 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3704 = !{i32 1, !"Code Model", i32 2}
!3705 = !{i32 1, !"override-stack-alignment", i32 8}
!3706 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3707 = distinct !DISubprogram(name: "request_key_auth_preparse", scope: !2, file: !2, line: 42, type: !339, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3708)
!3708 = !{!3709}
!3709 = !DILocalVariable(name: "prep", arg: 1, scope: !3707, file: !2, line: 42, type: !341)
!3710 = !DILocation(line: 42, column: 68, scope: !3707)
!3711 = !DILocation(line: 44, column: 2, scope: !3707)
!3712 = distinct !DISubprogram(name: "request_key_auth_free_preparse", scope: !2, file: !2, line: 47, type: !363, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3713)
!3713 = !{!3714}
!3714 = !DILocalVariable(name: "prep", arg: 1, scope: !3712, file: !2, line: 47, type: !341)
!3715 = !DILocation(line: 47, column: 74, scope: !3712)
!3716 = !DILocation(line: 49, column: 1, scope: !3712)
!3717 = distinct !DISubprogram(name: "request_key_auth_instantiate", scope: !2, file: !2, line: 54, type: !367, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3718)
!3718 = !{!3719, !3720, !3721}
!3719 = !DILocalVariable(name: "key", arg: 1, scope: !3717, file: !2, line: 54, type: !173)
!3720 = !DILocalVariable(name: "prep", arg: 2, scope: !3717, file: !2, line: 55, type: !341)
!3721 = !DILocalVariable(name: "_r_a_p__v", scope: !3722, file: !2, line: 57, type: !3655)
!3722 = distinct !DILexicalBlock(scope: !3723, file: !2, line: 57, column: 2)
!3723 = distinct !DILexicalBlock(scope: !3717, file: !2, line: 57, column: 2)
!3724 = !DILocation(line: 54, column: 53, scope: !3717)
!3725 = !DILocation(line: 55, column: 36, scope: !3717)
!3726 = !DILocation(line: 57, column: 2, scope: !3717)
!3727 = !DILocation(line: 57, column: 2, scope: !3723)
!3728 = !DILocation(line: 57, column: 2, scope: !3722)
!3729 = !DILocation(line: 57, column: 2, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3722, file: !2, line: 57, column: 2)
!3731 = !DILocation(line: 57, column: 2, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3730, file: !2, line: 57, column: 2)
!3733 = !DILocation(line: 57, column: 2, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3732, file: !2, line: 57, column: 2)
!3735 = !DILocation(line: 57, column: 2, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3732, file: !2, line: 57, column: 2)
!3737 = !DILocation(line: 57, column: 2, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3730, file: !2, line: 57, column: 2)
!3739 = !DILocation(line: 57, column: 2, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3738, file: !2, line: 57, column: 2)
!3741 = !DILocation(line: 57, column: 2, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3738, file: !2, line: 57, column: 2)
!3743 = !DILocation(line: 57, column: 2, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3742, file: !2, line: 57, column: 2)
!3745 = !{i64 2154119576}
!3746 = !DILocation(line: 57, column: 2, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3742, file: !2, line: 57, column: 2)
!3748 = !DILocation(line: 57, column: 2, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3747, file: !2, line: 57, column: 2)
!3750 = !DILocation(line: 57, column: 2, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3747, file: !2, line: 57, column: 2)
!3752 = !DILocation(line: 58, column: 2, scope: !3717)
!3753 = distinct !DISubprogram(name: "request_key_auth_revoke", scope: !2, file: !2, line: 134, type: !396, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3754)
!3754 = !{!3755, !3756, !3757}
!3755 = !DILocalVariable(name: "key", arg: 1, scope: !3753, file: !2, line: 134, type: !173)
!3756 = !DILocalVariable(name: "rka", scope: !3753, file: !2, line: 136, type: !3657)
!3757 = !DILocalVariable(name: "_r_a_p__v", scope: !3758, file: !2, line: 139, type: !3655)
!3758 = distinct !DILexicalBlock(scope: !3759, file: !2, line: 139, column: 2)
!3759 = distinct !DILexicalBlock(scope: !3753, file: !2, line: 139, column: 2)
!3760 = !DILocation(line: 134, column: 49, scope: !3753)
!3761 = !DILocation(line: 136, column: 2, scope: !3753)
!3762 = !DILocation(line: 136, column: 27, scope: !3753)
!3763 = !DILocation(line: 136, column: 33, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3753, file: !2, line: 136, column: 33)
!3765 = !DILocation(line: 136, column: 33, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3764, file: !2, line: 136, column: 33)
!3767 = !DILocation(line: 138, column: 2, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3769, file: !2, line: 138, column: 2)
!3769 = distinct !DILexicalBlock(scope: !3753, file: !2, line: 138, column: 2)
!3770 = !DILocation(line: 138, column: 2, scope: !3769)
!3771 = !DILocation(line: 139, column: 2, scope: !3753)
!3772 = !DILocation(line: 139, column: 2, scope: !3759)
!3773 = !DILocation(line: 139, column: 2, scope: !3758)
!3774 = !DILocation(line: 139, column: 2, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3758, file: !2, line: 139, column: 2)
!3776 = !DILocation(line: 139, column: 2, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3775, file: !2, line: 139, column: 2)
!3778 = !DILocation(line: 139, column: 2, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3777, file: !2, line: 139, column: 2)
!3780 = !DILocation(line: 139, column: 2, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3777, file: !2, line: 139, column: 2)
!3782 = !DILocation(line: 139, column: 2, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3775, file: !2, line: 139, column: 2)
!3784 = !DILocation(line: 139, column: 2, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3783, file: !2, line: 139, column: 2)
!3786 = !DILocation(line: 139, column: 2, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3783, file: !2, line: 139, column: 2)
!3788 = !DILocation(line: 139, column: 2, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3787, file: !2, line: 139, column: 2)
!3790 = !{i64 2154135364}
!3791 = !DILocation(line: 139, column: 2, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3787, file: !2, line: 139, column: 2)
!3793 = !DILocation(line: 139, column: 2, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3792, file: !2, line: 139, column: 2)
!3795 = !DILocation(line: 139, column: 2, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3792, file: !2, line: 139, column: 2)
!3797 = !DILocation(line: 140, column: 12, scope: !3753)
!3798 = !DILocation(line: 140, column: 17, scope: !3753)
!3799 = !DILocation(line: 140, column: 2, scope: !3753)
!3800 = !DILocation(line: 141, column: 1, scope: !3753)
!3801 = distinct !DISubprogram(name: "request_key_auth_destroy", scope: !2, file: !2, line: 146, type: !396, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3802)
!3802 = !{!3803, !3804, !3805, !3807}
!3803 = !DILocalVariable(name: "key", arg: 1, scope: !3801, file: !2, line: 146, type: !173)
!3804 = !DILocalVariable(name: "rka", scope: !3801, file: !2, line: 148, type: !3657)
!3805 = !DILocalVariable(name: "__UNIQUE_ID_rcu286", scope: !3806, file: !2, line: 148, type: !280)
!3806 = distinct !DILexicalBlock(scope: !3801, file: !2, line: 148, column: 33)
!3807 = !DILocalVariable(name: "_r_a_p__v", scope: !3808, file: !2, line: 152, type: !3655)
!3808 = distinct !DILexicalBlock(scope: !3809, file: !2, line: 152, column: 3)
!3809 = distinct !DILexicalBlock(scope: !3810, file: !2, line: 152, column: 3)
!3810 = distinct !DILexicalBlock(scope: !3811, file: !2, line: 151, column: 11)
!3811 = distinct !DILexicalBlock(scope: !3801, file: !2, line: 151, column: 6)
!3812 = !DILocation(line: 146, column: 50, scope: !3801)
!3813 = !DILocation(line: 148, column: 2, scope: !3801)
!3814 = !DILocation(line: 148, column: 27, scope: !3801)
!3815 = !DILocation(line: 148, column: 33, scope: !3806)
!3816 = !DILocation(line: 148, column: 33, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3806, file: !2, line: 148, column: 33)
!3818 = !DILocation(line: 148, column: 33, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3817, file: !2, line: 148, column: 33)
!3820 = !DILocation(line: 148, column: 33, scope: !3801)
!3821 = !DILocation(line: 150, column: 2, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3823, file: !2, line: 150, column: 2)
!3823 = distinct !DILexicalBlock(scope: !3801, file: !2, line: 150, column: 2)
!3824 = !DILocation(line: 150, column: 2, scope: !3823)
!3825 = !DILocation(line: 151, column: 6, scope: !3811)
!3826 = !DILocation(line: 151, column: 6, scope: !3801)
!3827 = !DILocation(line: 152, column: 3, scope: !3810)
!3828 = !DILocation(line: 152, column: 3, scope: !3809)
!3829 = !DILocation(line: 152, column: 3, scope: !3808)
!3830 = !DILocation(line: 152, column: 3, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3808, file: !2, line: 152, column: 3)
!3832 = !DILocation(line: 152, column: 3, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3831, file: !2, line: 152, column: 3)
!3834 = !DILocation(line: 152, column: 3, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3833, file: !2, line: 152, column: 3)
!3836 = !DILocation(line: 152, column: 3, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3833, file: !2, line: 152, column: 3)
!3838 = !DILocation(line: 152, column: 3, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3831, file: !2, line: 152, column: 3)
!3840 = !DILocation(line: 152, column: 3, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3839, file: !2, line: 152, column: 3)
!3842 = !DILocation(line: 152, column: 3, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3839, file: !2, line: 152, column: 3)
!3844 = !DILocation(line: 152, column: 3, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3843, file: !2, line: 152, column: 3)
!3846 = !{i64 2154148214}
!3847 = !DILocation(line: 152, column: 3, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3843, file: !2, line: 152, column: 3)
!3849 = !DILocation(line: 152, column: 3, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3848, file: !2, line: 152, column: 3)
!3851 = !DILocation(line: 152, column: 3, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3848, file: !2, line: 152, column: 3)
!3853 = !DILocation(line: 153, column: 13, scope: !3810)
!3854 = !DILocation(line: 153, column: 18, scope: !3810)
!3855 = !DILocation(line: 153, column: 3, scope: !3810)
!3856 = !DILocation(line: 154, column: 2, scope: !3810)
!3857 = !DILocation(line: 155, column: 1, scope: !3801)
!3858 = distinct !DISubprogram(name: "request_key_auth_describe", scope: !2, file: !2, line: 64, type: !401, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3859)
!3859 = !{!3860, !3861, !3862, !3863}
!3860 = !DILocalVariable(name: "key", arg: 1, scope: !3858, file: !2, line: 64, type: !383)
!3861 = !DILocalVariable(name: "m", arg: 2, scope: !3858, file: !2, line: 65, type: !403)
!3862 = !DILocalVariable(name: "rka", scope: !3858, file: !2, line: 67, type: !3657)
!3863 = !DILocalVariable(name: "__UNIQUE_ID_rcu281", scope: !3864, file: !2, line: 67, type: !280)
!3864 = distinct !DILexicalBlock(scope: !3858, file: !2, line: 67, column: 33)
!3865 = !DILocation(line: 64, column: 57, scope: !3858)
!3866 = !DILocation(line: 65, column: 28, scope: !3858)
!3867 = !DILocation(line: 67, column: 2, scope: !3858)
!3868 = !DILocation(line: 67, column: 27, scope: !3858)
!3869 = !DILocation(line: 67, column: 33, scope: !3864)
!3870 = !DILocation(line: 67, column: 33, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3864, file: !2, line: 67, column: 33)
!3872 = !DILocation(line: 67, column: 33, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3871, file: !2, line: 67, column: 33)
!3874 = !DILocation(line: 67, column: 33, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3864, file: !2, line: 67, column: 33)
!3876 = !DILocation(line: 67, column: 33, scope: !3858)
!3877 = !DILocation(line: 69, column: 7, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3858, file: !2, line: 69, column: 6)
!3879 = !DILocation(line: 69, column: 6, scope: !3858)
!3880 = !DILocation(line: 70, column: 3, scope: !3878)
!3881 = !DILocation(line: 72, column: 11, scope: !3858)
!3882 = !DILocation(line: 72, column: 2, scope: !3858)
!3883 = !DILocation(line: 73, column: 11, scope: !3858)
!3884 = !DILocation(line: 73, column: 14, scope: !3858)
!3885 = !DILocation(line: 73, column: 19, scope: !3858)
!3886 = !DILocation(line: 73, column: 2, scope: !3858)
!3887 = !DILocation(line: 74, column: 22, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3858, file: !2, line: 74, column: 6)
!3889 = !DILocation(line: 74, column: 6, scope: !3888)
!3890 = !DILocation(line: 74, column: 6, scope: !3858)
!3891 = !DILocation(line: 75, column: 14, scope: !3888)
!3892 = !DILocation(line: 75, column: 35, scope: !3888)
!3893 = !DILocation(line: 75, column: 40, scope: !3888)
!3894 = !DILocation(line: 75, column: 45, scope: !3888)
!3895 = !DILocation(line: 75, column: 50, scope: !3888)
!3896 = !DILocation(line: 75, column: 3, scope: !3888)
!3897 = !DILocation(line: 76, column: 1, scope: !3858)
!3898 = distinct !DISubprogram(name: "request_key_auth_read", scope: !2, file: !2, line: 82, type: !3514, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3899)
!3899 = !{!3900, !3901, !3902, !3903, !3904, !3905}
!3900 = !DILocalVariable(name: "key", arg: 1, scope: !3898, file: !2, line: 82, type: !383)
!3901 = !DILocalVariable(name: "buffer", arg: 2, scope: !3898, file: !2, line: 83, type: !346)
!3902 = !DILocalVariable(name: "buflen", arg: 3, scope: !3898, file: !2, line: 83, type: !329)
!3903 = !DILocalVariable(name: "rka", scope: !3898, file: !2, line: 85, type: !3657)
!3904 = !DILocalVariable(name: "datalen", scope: !3898, file: !2, line: 86, type: !329)
!3905 = !DILocalVariable(name: "ret", scope: !3898, file: !2, line: 87, type: !713)
!3906 = !DILocation(line: 82, column: 53, scope: !3898)
!3907 = !DILocation(line: 83, column: 13, scope: !3898)
!3908 = !DILocation(line: 83, column: 28, scope: !3898)
!3909 = !DILocation(line: 85, column: 2, scope: !3898)
!3910 = !DILocation(line: 85, column: 27, scope: !3898)
!3911 = !DILocation(line: 85, column: 33, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3898, file: !2, line: 85, column: 33)
!3913 = !DILocation(line: 85, column: 33, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3912, file: !2, line: 85, column: 33)
!3915 = !DILocation(line: 86, column: 2, scope: !3898)
!3916 = !DILocation(line: 86, column: 9, scope: !3898)
!3917 = !DILocation(line: 87, column: 2, scope: !3898)
!3918 = !DILocation(line: 87, column: 7, scope: !3898)
!3919 = !DILocation(line: 89, column: 7, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3898, file: !2, line: 89, column: 6)
!3921 = !DILocation(line: 89, column: 6, scope: !3898)
!3922 = !DILocation(line: 90, column: 3, scope: !3920)
!3923 = !DILocation(line: 92, column: 12, scope: !3898)
!3924 = !DILocation(line: 92, column: 17, scope: !3898)
!3925 = !DILocation(line: 92, column: 10, scope: !3898)
!3926 = !DILocation(line: 93, column: 8, scope: !3898)
!3927 = !DILocation(line: 93, column: 6, scope: !3898)
!3928 = !DILocation(line: 96, column: 6, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3898, file: !2, line: 96, column: 6)
!3930 = !DILocation(line: 96, column: 13, scope: !3929)
!3931 = !DILocation(line: 96, column: 16, scope: !3929)
!3932 = !DILocation(line: 96, column: 23, scope: !3929)
!3933 = !DILocation(line: 96, column: 6, scope: !3898)
!3934 = !DILocation(line: 97, column: 7, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3936, file: !2, line: 97, column: 7)
!3936 = distinct !DILexicalBlock(scope: !3929, file: !2, line: 96, column: 28)
!3937 = !DILocation(line: 97, column: 16, scope: !3935)
!3938 = !DILocation(line: 97, column: 14, scope: !3935)
!3939 = !DILocation(line: 97, column: 7, scope: !3936)
!3940 = !DILocation(line: 98, column: 13, scope: !3935)
!3941 = !DILocation(line: 98, column: 11, scope: !3935)
!3942 = !DILocation(line: 98, column: 4, scope: !3935)
!3943 = !DILocation(line: 100, column: 10, scope: !3936)
!3944 = !DILocation(line: 100, column: 18, scope: !3936)
!3945 = !DILocation(line: 100, column: 23, scope: !3936)
!3946 = !DILocation(line: 100, column: 37, scope: !3936)
!3947 = !DILocation(line: 100, column: 3, scope: !3936)
!3948 = !DILocation(line: 101, column: 2, scope: !3936)
!3949 = !DILocation(line: 103, column: 9, scope: !3898)
!3950 = !DILocation(line: 103, column: 2, scope: !3898)
!3951 = !DILocation(line: 104, column: 1, scope: !3898)
!3952 = distinct !DISubprogram(name: "request_key_auth_new", scope: !2, file: !2, line: 161, type: !3953, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3955)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!173, !173, !326, !356, !329, !173}
!3955 = !{!3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3967, !3968, !3969, !3970}
!3956 = !DILocalVariable(name: "target", arg: 1, scope: !3952, file: !2, line: 161, type: !173)
!3957 = !DILocalVariable(name: "op", arg: 2, scope: !3952, file: !2, line: 161, type: !326)
!3958 = !DILocalVariable(name: "callout_info", arg: 3, scope: !3952, file: !2, line: 162, type: !356)
!3959 = !DILocalVariable(name: "callout_len", arg: 4, scope: !3952, file: !2, line: 162, type: !329)
!3960 = !DILocalVariable(name: "dest_keyring", arg: 5, scope: !3952, file: !2, line: 163, type: !173)
!3961 = !DILocalVariable(name: "rka", scope: !3952, file: !2, line: 165, type: !3657)
!3962 = !DILocalVariable(name: "irka", scope: !3952, file: !2, line: 165, type: !3657)
!3963 = !DILocalVariable(name: "cred", scope: !3952, file: !2, line: 166, type: !116)
!3964 = !DILocalVariable(name: "authkey", scope: !3952, file: !2, line: 167, type: !173)
!3965 = !DILocalVariable(name: "desc", scope: !3952, file: !2, line: 168, type: !3966)
!3966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !3002)
!3967 = !DILocalVariable(name: "ret", scope: !3952, file: !2, line: 169, type: !185)
!3968 = !DILabel(scope: !3952, name: "error_put_authkey", file: !2, line: 233)
!3969 = !DILabel(scope: !3952, name: "error_free_rka", file: !2, line: 235)
!3970 = !DILabel(scope: !3952, name: "error", file: !2, line: 237)
!3971 = !DILocation(line: 161, column: 46, scope: !3952)
!3972 = !DILocation(line: 161, column: 66, scope: !3952)
!3973 = !DILocation(line: 162, column: 18, scope: !3952)
!3974 = !DILocation(line: 162, column: 39, scope: !3952)
!3975 = !DILocation(line: 163, column: 18, scope: !3952)
!3976 = !DILocation(line: 165, column: 2, scope: !3952)
!3977 = !DILocation(line: 165, column: 27, scope: !3952)
!3978 = !DILocation(line: 165, column: 33, scope: !3952)
!3979 = !DILocation(line: 166, column: 2, scope: !3952)
!3980 = !DILocation(line: 166, column: 21, scope: !3952)
!3981 = !DILocation(line: 166, column: 28, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3952, file: !2, line: 166, column: 28)
!3983 = !DILocation(line: 166, column: 28, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3982, file: !2, line: 166, column: 28)
!3985 = !DILocation(line: 167, column: 2, scope: !3952)
!3986 = !DILocation(line: 167, column: 14, scope: !3952)
!3987 = !DILocation(line: 168, column: 2, scope: !3952)
!3988 = !DILocation(line: 168, column: 7, scope: !3952)
!3989 = !DILocation(line: 169, column: 2, scope: !3952)
!3990 = !DILocation(line: 169, column: 6, scope: !3952)
!3991 = !DILocation(line: 171, column: 2, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3993, file: !2, line: 171, column: 2)
!3993 = distinct !DILexicalBlock(scope: !3952, file: !2, line: 171, column: 2)
!3994 = !DILocation(line: 171, column: 2, scope: !3993)
!3995 = !DILocation(line: 174, column: 8, scope: !3952)
!3996 = !DILocation(line: 174, column: 6, scope: !3952)
!3997 = !DILocation(line: 175, column: 7, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3952, file: !2, line: 175, column: 6)
!3999 = !DILocation(line: 175, column: 6, scope: !3952)
!4000 = !DILocation(line: 176, column: 3, scope: !3998)
!4001 = !DILocation(line: 177, column: 30, scope: !3952)
!4002 = !DILocation(line: 177, column: 44, scope: !3952)
!4003 = !DILocation(line: 177, column: 22, scope: !3952)
!4004 = !DILocation(line: 177, column: 2, scope: !3952)
!4005 = !DILocation(line: 177, column: 7, scope: !3952)
!4006 = !DILocation(line: 177, column: 20, scope: !3952)
!4007 = !DILocation(line: 178, column: 7, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !3952, file: !2, line: 178, column: 6)
!4009 = !DILocation(line: 178, column: 12, scope: !4008)
!4010 = !DILocation(line: 178, column: 6, scope: !3952)
!4011 = !DILocation(line: 179, column: 3, scope: !4008)
!4012 = !DILocation(line: 180, column: 21, scope: !3952)
!4013 = !DILocation(line: 180, column: 2, scope: !3952)
!4014 = !DILocation(line: 180, column: 7, scope: !3952)
!4015 = !DILocation(line: 180, column: 19, scope: !3952)
!4016 = !DILocation(line: 181, column: 10, scope: !3952)
!4017 = !DILocation(line: 181, column: 15, scope: !3952)
!4018 = !DILocation(line: 181, column: 19, scope: !3952)
!4019 = !DILocation(line: 181, column: 2, scope: !3952)
!4020 = !DILocation(line: 185, column: 6, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !3952, file: !2, line: 185, column: 6)
!4022 = !DILocation(line: 185, column: 12, scope: !4021)
!4023 = !DILocation(line: 185, column: 6, scope: !3952)
!4024 = !DILocation(line: 187, column: 14, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4021, file: !2, line: 185, column: 30)
!4026 = !DILocation(line: 187, column: 20, scope: !4025)
!4027 = !DILocation(line: 187, column: 38, scope: !4025)
!4028 = !DILocation(line: 187, column: 3, scope: !4025)
!4029 = !DILocation(line: 191, column: 7, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4025, file: !2, line: 191, column: 7)
!4031 = !DILocation(line: 191, column: 7, scope: !4025)
!4032 = !DILocation(line: 193, column: 13, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !4030, file: !2, line: 192, column: 42)
!4034 = !DILocation(line: 193, column: 19, scope: !4033)
!4035 = !DILocation(line: 193, column: 37, scope: !4033)
!4036 = !DILocation(line: 193, column: 4, scope: !4033)
!4037 = !DILocation(line: 194, column: 8, scope: !4033)
!4038 = !DILocation(line: 195, column: 4, scope: !4033)
!4039 = !DILocation(line: 198, column: 10, scope: !4025)
!4040 = !DILocation(line: 198, column: 16, scope: !4025)
!4041 = !DILocation(line: 198, column: 34, scope: !4025)
!4042 = !DILocation(line: 198, column: 8, scope: !4025)
!4043 = !DILocation(line: 199, column: 24, scope: !4025)
!4044 = !DILocation(line: 199, column: 30, scope: !4025)
!4045 = !DILocation(line: 199, column: 15, scope: !4025)
!4046 = !DILocation(line: 199, column: 3, scope: !4025)
!4047 = !DILocation(line: 199, column: 8, scope: !4025)
!4048 = !DILocation(line: 199, column: 13, scope: !4025)
!4049 = !DILocation(line: 200, column: 14, scope: !4025)
!4050 = !DILocation(line: 200, column: 20, scope: !4025)
!4051 = !DILocation(line: 200, column: 3, scope: !4025)
!4052 = !DILocation(line: 200, column: 8, scope: !4025)
!4053 = !DILocation(line: 200, column: 12, scope: !4025)
!4054 = !DILocation(line: 202, column: 12, scope: !4025)
!4055 = !DILocation(line: 202, column: 18, scope: !4025)
!4056 = !DILocation(line: 202, column: 36, scope: !4025)
!4057 = !DILocation(line: 202, column: 3, scope: !4025)
!4058 = !DILocation(line: 203, column: 2, scope: !4025)
!4059 = !DILocation(line: 206, column: 24, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4021, file: !2, line: 204, column: 7)
!4061 = !DILocation(line: 206, column: 15, scope: !4060)
!4062 = !DILocation(line: 206, column: 3, scope: !4060)
!4063 = !DILocation(line: 206, column: 8, scope: !4060)
!4064 = !DILocation(line: 206, column: 13, scope: !4060)
!4065 = !DILocation(line: 207, column: 14, scope: !4060)
!4066 = !DILocation(line: 207, column: 23, scope: !4060)
!4067 = !DILocation(line: 207, column: 3, scope: !4060)
!4068 = !DILocation(line: 207, column: 8, scope: !4060)
!4069 = !DILocation(line: 207, column: 12, scope: !4060)
!4070 = !DILocation(line: 210, column: 28, scope: !3952)
!4071 = !DILocation(line: 210, column: 20, scope: !3952)
!4072 = !DILocation(line: 210, column: 2, scope: !3952)
!4073 = !DILocation(line: 210, column: 7, scope: !3952)
!4074 = !DILocation(line: 210, column: 18, scope: !3952)
!4075 = !DILocation(line: 211, column: 30, scope: !3952)
!4076 = !DILocation(line: 211, column: 22, scope: !3952)
!4077 = !DILocation(line: 211, column: 2, scope: !3952)
!4078 = !DILocation(line: 211, column: 7, scope: !3952)
!4079 = !DILocation(line: 211, column: 20, scope: !3952)
!4080 = !DILocation(line: 214, column: 10, scope: !3952)
!4081 = !DILocation(line: 214, column: 22, scope: !3952)
!4082 = !DILocation(line: 214, column: 30, scope: !3952)
!4083 = !DILocation(line: 214, column: 2, scope: !3952)
!4084 = !DILocation(line: 216, column: 50, scope: !3952)
!4085 = !DILocation(line: 217, column: 8, scope: !3952)
!4086 = !DILocation(line: 217, column: 14, scope: !3952)
!4087 = !DILocation(line: 217, column: 21, scope: !3952)
!4088 = !DILocation(line: 217, column: 27, scope: !3952)
!4089 = !DILocation(line: 217, column: 34, scope: !3952)
!4090 = !DILocation(line: 216, column: 12, scope: !3952)
!4091 = !DILocation(line: 216, column: 10, scope: !3952)
!4092 = !DILocation(line: 220, column: 13, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !3952, file: !2, line: 220, column: 6)
!4094 = !DILocation(line: 220, column: 6, scope: !4093)
!4095 = !DILocation(line: 220, column: 6, scope: !3952)
!4096 = !DILocation(line: 221, column: 17, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4093, file: !2, line: 220, column: 23)
!4098 = !DILocation(line: 221, column: 9, scope: !4097)
!4099 = !DILocation(line: 221, column: 7, scope: !4097)
!4100 = !DILocation(line: 222, column: 3, scope: !4097)
!4101 = !DILocation(line: 226, column: 33, scope: !3952)
!4102 = !DILocation(line: 226, column: 42, scope: !3952)
!4103 = !DILocation(line: 226, column: 8, scope: !3952)
!4104 = !DILocation(line: 226, column: 6, scope: !3952)
!4105 = !DILocation(line: 227, column: 6, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !3952, file: !2, line: 227, column: 6)
!4107 = !DILocation(line: 227, column: 10, scope: !4106)
!4108 = !DILocation(line: 227, column: 6, scope: !3952)
!4109 = !DILocation(line: 228, column: 3, scope: !4106)
!4110 = !DILocation(line: 230, column: 2, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4112, file: !2, line: 230, column: 2)
!4112 = distinct !DILexicalBlock(scope: !3952, file: !2, line: 230, column: 2)
!4113 = !DILocation(line: 230, column: 2, scope: !4112)
!4114 = !DILocation(line: 231, column: 9, scope: !3952)
!4115 = !DILocation(line: 231, column: 2, scope: !3952)
!4116 = !DILocation(line: 233, column: 1, scope: !3952)
!4117 = !DILocation(line: 234, column: 10, scope: !3952)
!4118 = !DILocation(line: 234, column: 2, scope: !3952)
!4119 = !DILocation(line: 235, column: 1, scope: !3952)
!4120 = !DILocation(line: 236, column: 24, scope: !3952)
!4121 = !DILocation(line: 236, column: 2, scope: !3952)
!4122 = !DILocation(line: 237, column: 1, scope: !3952)
!4123 = !DILocation(line: 238, column: 2, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4125, file: !2, line: 238, column: 2)
!4125 = distinct !DILexicalBlock(scope: !3952, file: !2, line: 238, column: 2)
!4126 = !DILocation(line: 238, column: 2, scope: !4125)
!4127 = !DILocation(line: 239, column: 17, scope: !3952)
!4128 = !DILocation(line: 239, column: 9, scope: !3952)
!4129 = !DILocation(line: 239, column: 2, scope: !3952)
!4130 = !DILocation(line: 240, column: 1, scope: !3952)
!4131 = distinct !DISubprogram(name: "get_current", scope: !4132, file: !4132, line: 39, type: !4133, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4135)
!4132 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!1219}
!4135 = !{!4136, !4138, !4140}
!4136 = !DILocalVariable(name: "pscr_ret__", scope: !4137, file: !4132, line: 41, type: !1219)
!4137 = distinct !DILexicalBlock(scope: !4131, file: !4132, line: 41, column: 9)
!4138 = !DILocalVariable(name: "__vpp_verify", scope: !4139, file: !4132, line: 41, type: !356)
!4139 = distinct !DILexicalBlock(scope: !4137, file: !4132, line: 41, column: 9)
!4140 = !DILocalVariable(name: "pfo_val__", scope: !4141, file: !4132, line: 41, type: !163)
!4141 = distinct !DILexicalBlock(scope: !4137, file: !4132, line: 41, column: 9)
!4142 = !DILocation(line: 41, column: 9, scope: !4137)
!4143 = !DILocation(line: 41, column: 9, scope: !4139)
!4144 = !DILocation(line: 41, column: 9, scope: !4141)
!4145 = !{i64 2148196508}
!4146 = !DILocation(line: 41, column: 9, scope: !4131)
!4147 = !DILocation(line: 41, column: 2, scope: !4131)
!4148 = distinct !DISubprogram(name: "kzalloc", scope: !98, file: !98, line: 719, type: !4149, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4151)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!280, !329, !805}
!4151 = !{!4152, !4153}
!4152 = !DILocalVariable(name: "size", arg: 1, scope: !4148, file: !98, line: 719, type: !329)
!4153 = !DILocalVariable(name: "flags", arg: 2, scope: !4148, file: !98, line: 719, type: !805)
!4154 = !DILocation(line: 719, column: 52, scope: !4148)
!4155 = !DILocation(line: 719, column: 64, scope: !4148)
!4156 = !DILocation(line: 721, column: 17, scope: !4148)
!4157 = !DILocation(line: 721, column: 23, scope: !4148)
!4158 = !DILocation(line: 721, column: 29, scope: !4148)
!4159 = !DILocation(line: 721, column: 9, scope: !4148)
!4160 = !DILocation(line: 721, column: 2, scope: !4148)
!4161 = !DISubprogram(name: "kmemdup", scope: !4162, file: !4162, line: 219, type: !4163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4162 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!280, !356, !329, !805}
!4165 = !DISubprogram(name: "strscpy", scope: !4162, file: !4162, line: 72, type: !4166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{!753, !346, !326, !329}
!4168 = !DISubprogram(name: "down_read", scope: !211, file: !211, line: 175, type: !4169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{null, !4171}
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!4172 = distinct !DISubprogram(name: "const_test_bit", scope: !4173, file: !4173, line: 166, type: !4174, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4179)
!4173 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!381, !205, !4176}
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4178)
!4178 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !205)
!4179 = !{!4180, !4181, !4182, !4183, !4184}
!4180 = !DILocalVariable(name: "nr", arg: 1, scope: !4172, file: !4173, line: 166, type: !205)
!4181 = !DILocalVariable(name: "addr", arg: 2, scope: !4172, file: !4173, line: 166, type: !4176)
!4182 = !DILocalVariable(name: "p", scope: !4172, file: !4173, line: 168, type: !3656)
!4183 = !DILocalVariable(name: "mask", scope: !4172, file: !4173, line: 169, type: !205)
!4184 = !DILocalVariable(name: "val", scope: !4172, file: !4173, line: 170, type: !205)
!4185 = !DILocation(line: 166, column: 30, scope: !4172)
!4186 = !DILocation(line: 166, column: 64, scope: !4172)
!4187 = !DILocation(line: 168, column: 2, scope: !4172)
!4188 = !DILocation(line: 168, column: 23, scope: !4172)
!4189 = !DILocation(line: 168, column: 50, scope: !4172)
!4190 = !DILocation(line: 168, column: 57, scope: !4172)
!4191 = !DILocation(line: 168, column: 55, scope: !4172)
!4192 = !DILocation(line: 169, column: 2, scope: !4172)
!4193 = !DILocation(line: 169, column: 16, scope: !4172)
!4194 = !DILocation(line: 169, column: 23, scope: !4172)
!4195 = !DILocation(line: 170, column: 2, scope: !4172)
!4196 = !DILocation(line: 170, column: 16, scope: !4172)
!4197 = !DILocation(line: 170, column: 23, scope: !4172)
!4198 = !DILocation(line: 170, column: 22, scope: !4172)
!4199 = !DILocation(line: 172, column: 12, scope: !4172)
!4200 = !DILocation(line: 172, column: 18, scope: !4172)
!4201 = !DILocation(line: 172, column: 16, scope: !4172)
!4202 = !DILocation(line: 172, column: 10, scope: !4172)
!4203 = !DILocation(line: 172, column: 9, scope: !4172)
!4204 = !DILocation(line: 173, column: 1, scope: !4172)
!4205 = !DILocation(line: 172, column: 2, scope: !4172)
!4206 = distinct !DISubprogram(name: "_test_bit", scope: !4207, file: !4207, line: 139, type: !4174, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4208)
!4207 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!4208 = !{!4209, !4210}
!4209 = !DILocalVariable(name: "nr", arg: 1, scope: !4206, file: !4207, line: 139, type: !205)
!4210 = !DILocalVariable(name: "addr", arg: 2, scope: !4206, file: !4207, line: 139, type: !4176)
!4211 = !DILocation(line: 139, column: 25, scope: !4206)
!4212 = !DILocation(line: 139, column: 59, scope: !4206)
!4213 = !DILocation(line: 141, column: 25, scope: !4206)
!4214 = !DILocation(line: 141, column: 32, scope: !4206)
!4215 = !DILocation(line: 141, column: 30, scope: !4206)
!4216 = !DILocation(line: 141, column: 2, scope: !4206)
!4217 = !DILocation(line: 142, column: 23, scope: !4206)
!4218 = !DILocation(line: 142, column: 27, scope: !4206)
!4219 = !DILocation(line: 142, column: 9, scope: !4206)
!4220 = !DILocation(line: 142, column: 2, scope: !4206)
!4221 = !DISubprogram(name: "up_read", scope: !211, file: !211, line: 198, type: !4169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4222 = distinct !DISubprogram(name: "get_cred", scope: !119, file: !119, line: 200, type: !4223, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4225)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!116, !116}
!4225 = !{!4226, !4227}
!4226 = !DILocalVariable(name: "cred", arg: 1, scope: !4222, file: !119, line: 200, type: !116)
!4227 = !DILocalVariable(name: "nonconst_cred", scope: !4222, file: !119, line: 202, type: !3678)
!4228 = !DILocation(line: 200, column: 62, scope: !4222)
!4229 = !DILocation(line: 202, column: 2, scope: !4222)
!4230 = !DILocation(line: 202, column: 15, scope: !4222)
!4231 = !DILocation(line: 202, column: 47, scope: !4222)
!4232 = !DILocation(line: 203, column: 7, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4222, file: !119, line: 203, column: 6)
!4234 = !DILocation(line: 203, column: 6, scope: !4222)
!4235 = !DILocation(line: 204, column: 10, scope: !4233)
!4236 = !DILocation(line: 204, column: 3, scope: !4233)
!4237 = !DILocation(line: 205, column: 2, scope: !4222)
!4238 = !DILocation(line: 205, column: 17, scope: !4222)
!4239 = !DILocation(line: 205, column: 25, scope: !4222)
!4240 = !DILocation(line: 206, column: 22, scope: !4222)
!4241 = !DILocation(line: 206, column: 9, scope: !4222)
!4242 = !DILocation(line: 206, column: 2, scope: !4222)
!4243 = !DILocation(line: 207, column: 1, scope: !4222)
!4244 = distinct !DISubprogram(name: "key_get", scope: !88, file: !88, line: 312, type: !4245, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4247)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!173, !173}
!4247 = !{!4248}
!4248 = !DILocalVariable(name: "key", arg: 1, scope: !4244, file: !88, line: 312, type: !173)
!4249 = !DILocation(line: 312, column: 47, scope: !4244)
!4250 = !DILocation(line: 314, column: 9, scope: !4244)
!4251 = !DILocation(line: 314, column: 25, scope: !4244)
!4252 = !DILocation(line: 314, column: 15, scope: !4244)
!4253 = !DILocation(line: 314, column: 32, scope: !4244)
!4254 = !DILocation(line: 314, column: 2, scope: !4244)
!4255 = !DISubprogram(name: "sprintf", scope: !4256, file: !4256, line: 10, type: !4257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4256 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!185, !346, !326, null}
!4259 = !DISubprogram(name: "key_alloc", scope: !88, file: !88, line: 283, type: !4260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!173, !321, !326, !135, !144, !116, !292, !205, !3525}
!4262 = distinct !DISubprogram(name: "IS_ERR", scope: !4263, file: !4263, line: 59, type: !4264, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4266)
!4263 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!381, !356}
!4266 = !{!4267}
!4267 = !DILocalVariable(name: "ptr", arg: 1, scope: !4262, file: !4263, line: 59, type: !356)
!4268 = !DILocation(line: 59, column: 60, scope: !4262)
!4269 = !DILocation(line: 61, column: 9, scope: !4262)
!4270 = !DILocation(line: 61, column: 2, scope: !4262)
!4271 = distinct !DISubprogram(name: "PTR_ERR", scope: !4263, file: !4263, line: 49, type: !4272, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4274)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!713, !356}
!4274 = !{!4275}
!4275 = !DILocalVariable(name: "ptr", arg: 1, scope: !4271, file: !4263, line: 49, type: !356)
!4276 = !DILocation(line: 49, column: 61, scope: !4271)
!4277 = !DILocation(line: 51, column: 16, scope: !4271)
!4278 = !DILocation(line: 51, column: 9, scope: !4271)
!4279 = !DILocation(line: 51, column: 2, scope: !4271)
!4280 = !DISubprogram(name: "key_instantiate_and_link", scope: !323, file: !323, line: 171, type: !4281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!185, !173, !356, !329, !173, !173}
!4283 = !DISubprogram(name: "key_put", scope: !88, file: !88, line: 302, type: !396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4284 = distinct !DISubprogram(name: "free_request_key_auth", scope: !2, file: !2, line: 106, type: !4285, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4287)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{null, !3657}
!4287 = !{!4288}
!4288 = !DILocalVariable(name: "rka", arg: 1, scope: !4284, file: !2, line: 106, type: !3657)
!4289 = !DILocation(line: 106, column: 60, scope: !4284)
!4290 = !DILocation(line: 108, column: 7, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4284, file: !2, line: 108, column: 6)
!4292 = !DILocation(line: 108, column: 6, scope: !4284)
!4293 = !DILocation(line: 109, column: 3, scope: !4291)
!4294 = !DILocation(line: 110, column: 10, scope: !4284)
!4295 = !DILocation(line: 110, column: 15, scope: !4284)
!4296 = !DILocation(line: 110, column: 2, scope: !4284)
!4297 = !DILocation(line: 111, column: 10, scope: !4284)
!4298 = !DILocation(line: 111, column: 15, scope: !4284)
!4299 = !DILocation(line: 111, column: 2, scope: !4284)
!4300 = !DILocation(line: 112, column: 6, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4284, file: !2, line: 112, column: 6)
!4302 = !DILocation(line: 112, column: 11, scope: !4301)
!4303 = !DILocation(line: 112, column: 6, scope: !4284)
!4304 = !DILocation(line: 113, column: 12, scope: !4301)
!4305 = !DILocation(line: 113, column: 17, scope: !4301)
!4306 = !DILocation(line: 113, column: 3, scope: !4301)
!4307 = !DILocation(line: 114, column: 8, scope: !4284)
!4308 = !DILocation(line: 114, column: 13, scope: !4284)
!4309 = !DILocation(line: 114, column: 2, scope: !4284)
!4310 = !DILocation(line: 115, column: 8, scope: !4284)
!4311 = !DILocation(line: 115, column: 2, scope: !4284)
!4312 = !DILocation(line: 116, column: 1, scope: !4284)
!4313 = distinct !DISubprogram(name: "ERR_PTR", scope: !4263, file: !4263, line: 39, type: !4314, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4316)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!280, !713}
!4316 = !{!4317}
!4317 = !DILocalVariable(name: "error", arg: 1, scope: !4313, file: !4263, line: 39, type: !713)
!4318 = !DILocation(line: 39, column: 48, scope: !4313)
!4319 = !DILocation(line: 41, column: 18, scope: !4313)
!4320 = !DILocation(line: 41, column: 9, scope: !4313)
!4321 = !DILocation(line: 41, column: 2, scope: !4313)
!4322 = distinct !DISubprogram(name: "key_get_instantiation_authkey", scope: !2, file: !2, line: 246, type: !4323, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4325)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!173, !187}
!4325 = !{!4326, !4327, !4328, !4346, !4347, !4348}
!4326 = !DILocalVariable(name: "target_id", arg: 1, scope: !4322, file: !2, line: 246, type: !187)
!4327 = !DILocalVariable(name: "description", scope: !4322, file: !2, line: 248, type: !1810)
!4328 = !DILocalVariable(name: "ctx", scope: !4322, file: !2, line: 249, type: !4329)
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_search_context", file: !253, line: 119, size: 960, elements: !4330)
!4330 = !{!4331, !4332, !4333, !4334, !4335, !4339, !4340, !4341, !4345}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !4329, file: !253, line: 120, baseType: !305, size: 320)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !4329, file: !253, line: 121, baseType: !116, size: 64, offset: 320)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "match_data", scope: !4329, file: !253, line: 122, baseType: !375, size: 256, offset: 384)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4329, file: !253, line: 123, baseType: !13, size: 32, offset: 640)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !4329, file: !253, line: 132, baseType: !4336, size: 64, offset: 704)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!185, !356, !280}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "skipped_ret", scope: !4329, file: !253, line: 135, baseType: !185, size: 32, offset: 768)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "possessed", scope: !4329, file: !253, line: 136, baseType: !381, size: 8, offset: 800)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !4329, file: !253, line: 137, baseType: !4342, size: 64, offset: 832)
!4342 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_ref_t", file: !88, line: 153, baseType: !4343)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DICompositeType(tag: DW_TAG_structure_type, name: "__key_reference_with_attributes", file: !88, line: 153, flags: DIFlagFwdDecl)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "now", scope: !4329, file: !253, line: 138, baseType: !285, size: 64, offset: 896)
!4346 = !DILocalVariable(name: "authkey", scope: !4322, file: !2, line: 259, type: !173)
!4347 = !DILocalVariable(name: "authkey_ref", scope: !4322, file: !2, line: 260, type: !4342)
!4348 = !DILabel(scope: !4322, name: "error", file: !2, line: 281)
!4349 = !DILocation(line: 246, column: 56, scope: !4322)
!4350 = !DILocation(line: 248, column: 2, scope: !4322)
!4351 = !DILocation(line: 248, column: 7, scope: !4322)
!4352 = !DILocation(line: 249, column: 2, scope: !4322)
!4353 = !DILocation(line: 249, column: 32, scope: !4322)
!4354 = !DILocation(line: 249, column: 38, scope: !4322)
!4355 = !DILocation(line: 250, column: 13, scope: !4322)
!4356 = !DILocation(line: 251, column: 28, scope: !4322)
!4357 = !DILocation(line: 252, column: 13, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4322, file: !2, line: 252, column: 13)
!4359 = !DILocation(line: 252, column: 13, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4358, file: !2, line: 252, column: 13)
!4361 = !DILocation(line: 253, column: 14, scope: !4322)
!4362 = !DILocation(line: 254, column: 26, scope: !4322)
!4363 = !DILocation(line: 259, column: 2, scope: !4322)
!4364 = !DILocation(line: 259, column: 14, scope: !4322)
!4365 = !DILocation(line: 260, column: 2, scope: !4322)
!4366 = !DILocation(line: 260, column: 12, scope: !4322)
!4367 = !DILocation(line: 262, column: 35, scope: !4322)
!4368 = !DILocation(line: 262, column: 54, scope: !4322)
!4369 = !DILocation(line: 262, column: 27, scope: !4322)
!4370 = !DILocation(line: 262, column: 6, scope: !4322)
!4371 = !DILocation(line: 262, column: 16, scope: !4322)
!4372 = !DILocation(line: 262, column: 25, scope: !4322)
!4373 = !DILocation(line: 264, column: 2, scope: !4322)
!4374 = !DILocation(line: 265, column: 16, scope: !4322)
!4375 = !DILocation(line: 265, column: 14, scope: !4322)
!4376 = !DILocation(line: 266, column: 2, scope: !4322)
!4377 = !DILocation(line: 268, column: 13, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4322, file: !2, line: 268, column: 6)
!4379 = !DILocation(line: 268, column: 6, scope: !4378)
!4380 = !DILocation(line: 268, column: 6, scope: !4322)
!4381 = !DILocation(line: 269, column: 22, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4378, file: !2, line: 268, column: 27)
!4383 = !DILocation(line: 269, column: 13, scope: !4382)
!4384 = !DILocation(line: 269, column: 11, scope: !4382)
!4385 = !DILocation(line: 270, column: 7, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4382, file: !2, line: 270, column: 7)
!4387 = !DILocation(line: 270, column: 18, scope: !4386)
!4388 = !DILocation(line: 270, column: 15, scope: !4386)
!4389 = !DILocation(line: 270, column: 7, scope: !4382)
!4390 = !DILocation(line: 271, column: 14, scope: !4386)
!4391 = !DILocation(line: 271, column: 12, scope: !4386)
!4392 = !DILocation(line: 271, column: 4, scope: !4386)
!4393 = !DILocation(line: 272, column: 3, scope: !4382)
!4394 = !DILocation(line: 275, column: 27, scope: !4322)
!4395 = !DILocation(line: 275, column: 12, scope: !4322)
!4396 = !DILocation(line: 275, column: 10, scope: !4322)
!4397 = !DILocation(line: 276, column: 6, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4322, file: !2, line: 276, column: 6)
!4399 = !DILocation(line: 276, column: 6, scope: !4322)
!4400 = !DILocation(line: 277, column: 11, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4398, file: !2, line: 276, column: 51)
!4402 = !DILocation(line: 277, column: 3, scope: !4401)
!4403 = !DILocation(line: 278, column: 13, scope: !4401)
!4404 = !DILocation(line: 278, column: 11, scope: !4401)
!4405 = !DILocation(line: 279, column: 2, scope: !4401)
!4406 = !DILocation(line: 281, column: 1, scope: !4322)
!4407 = !DILocation(line: 282, column: 9, scope: !4322)
!4408 = !DILocation(line: 283, column: 1, scope: !4322)
!4409 = !DILocation(line: 282, column: 2, scope: !4322)
!4410 = distinct !DISubprogram(name: "rcu_read_lock", scope: !4411, file: !4411, line: 782, type: !2007, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!4411 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!4412 = !DILocation(line: 784, column: 2, scope: !4410)
!4413 = !DILocation(line: 786, column: 2, scope: !4410)
!4414 = !DILocation(line: 786, column: 2, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4410, file: !4411, line: 786, column: 2)
!4416 = !DILocation(line: 787, column: 2, scope: !4410)
!4417 = !DILocation(line: 787, column: 2, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4410, file: !4411, line: 787, column: 2)
!4419 = !DILocation(line: 789, column: 1, scope: !4410)
!4420 = !DISubprogram(name: "search_process_keyrings_rcu", scope: !253, file: !253, line: 147, type: !4421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{!4342, !4423}
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4424 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !4411, file: !4411, line: 813, type: !2007, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!4425 = !DILocation(line: 815, column: 2, scope: !4424)
!4426 = !DILocation(line: 815, column: 2, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4424, file: !4411, line: 815, column: 2)
!4428 = !DILocation(line: 818, column: 2, scope: !4424)
!4429 = !DILocation(line: 819, column: 2, scope: !4424)
!4430 = !DILocation(line: 819, column: 2, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4424, file: !4411, line: 819, column: 2)
!4432 = !DILocation(line: 820, column: 1, scope: !4424)
!4433 = distinct !DISubprogram(name: "ERR_CAST", scope: !4263, file: !4263, line: 82, type: !4434, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4436)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{!280, !356}
!4436 = !{!4437}
!4437 = !DILocalVariable(name: "ptr", arg: 1, scope: !4433, file: !4263, line: 82, type: !356)
!4438 = !DILocation(line: 82, column: 64, scope: !4433)
!4439 = !DILocation(line: 85, column: 18, scope: !4433)
!4440 = !DILocation(line: 85, column: 2, scope: !4433)
!4441 = distinct !DISubprogram(name: "key_ref_to_ptr", scope: !88, file: !88, line: 161, type: !4442, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4445)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{!173, !4444}
!4444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4342)
!4445 = !{!4446}
!4446 = !DILocalVariable(name: "key_ref", arg: 1, scope: !4441, file: !88, line: 161, type: !4444)
!4447 = !DILocation(line: 161, column: 58, scope: !4441)
!4448 = !DILocation(line: 163, column: 41, scope: !4441)
!4449 = !DILocation(line: 163, column: 25, scope: !4441)
!4450 = !DILocation(line: 163, column: 49, scope: !4441)
!4451 = !DILocation(line: 163, column: 9, scope: !4441)
!4452 = !DILocation(line: 163, column: 2, scope: !4441)
!4453 = !DISubprogram(name: "seq_puts", scope: !405, file: !405, line: 121, type: !4454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{null, !403, !326}
!4456 = distinct !DISubprogram(name: "key_is_positive", scope: !88, file: !88, line: 471, type: !4457, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4459)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!381, !383}
!4459 = !{!4460}
!4460 = !DILocalVariable(name: "key", arg: 1, scope: !4456, file: !88, line: 471, type: !383)
!4461 = !DILocation(line: 471, column: 54, scope: !4456)
!4462 = !DILocation(line: 473, column: 24, scope: !4456)
!4463 = !DILocation(line: 473, column: 9, scope: !4456)
!4464 = !DILocation(line: 473, column: 29, scope: !4456)
!4465 = !DILocation(line: 473, column: 2, scope: !4456)
!4466 = !DISubprogram(name: "seq_printf", scope: !405, file: !405, line: 119, type: !4467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{null, !403, !326, null}
!4469 = distinct !DISubprogram(name: "key_read_state", scope: !88, file: !88, line: 458, type: !4470, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4472)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!299, !383}
!4472 = !{!4473, !4474}
!4473 = !DILocalVariable(name: "key", arg: 1, scope: !4469, file: !88, line: 458, type: !383)
!4474 = !DILocalVariable(name: "___p1", scope: !4475, file: !88, line: 461, type: !4476)
!4475 = distinct !DILexicalBlock(scope: !4469, file: !88, line: 461, column: 9)
!4476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!4477 = !DILocation(line: 458, column: 54, scope: !4469)
!4478 = !DILocation(line: 461, column: 9, scope: !4475)
!4479 = !DILocation(line: 461, column: 9, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4475, file: !88, line: 461, column: 9)
!4481 = !DILocation(line: 461, column: 9, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4480, file: !88, line: 461, column: 9)
!4483 = !DILocation(line: 461, column: 9, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4475, file: !88, line: 461, column: 9)
!4485 = !{i64 2153001582}
!4486 = !DILocation(line: 461, column: 9, scope: !4469)
!4487 = !DILocation(line: 461, column: 2, scope: !4469)
!4488 = !DISubprogram(name: "call_rcu", scope: !4411, file: !4411, line: 42, type: !4489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{null, !458, !4491}
!4491 = !DIDerivedType(tag: DW_TAG_typedef, name: "rcu_callback_t", file: !125, line: 238, baseType: !460)
!4492 = distinct !DISubprogram(name: "request_key_auth_rcu_disposal", scope: !2, file: !2, line: 121, type: !461, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4493)
!4493 = !{!4494, !4495, !4496}
!4494 = !DILocalVariable(name: "rcu", arg: 1, scope: !4492, file: !2, line: 121, type: !458)
!4495 = !DILocalVariable(name: "rka", scope: !4492, file: !2, line: 123, type: !3657)
!4496 = !DILocalVariable(name: "__mptr", scope: !4497, file: !2, line: 124, type: !280)
!4497 = distinct !DILexicalBlock(scope: !4492, file: !2, line: 124, column: 3)
!4498 = !DILocation(line: 121, column: 60, scope: !4492)
!4499 = !DILocation(line: 123, column: 2, scope: !4492)
!4500 = !DILocation(line: 123, column: 27, scope: !4492)
!4501 = !DILocation(line: 124, column: 3, scope: !4497)
!4502 = !DILocation(line: 124, column: 3, scope: !4492)
!4503 = !DILocation(line: 126, column: 24, scope: !4492)
!4504 = !DILocation(line: 126, column: 2, scope: !4492)
!4505 = !DILocation(line: 127, column: 1, scope: !4492)
!4506 = distinct !DISubprogram(name: "kmalloc", scope: !98, file: !98, line: 591, type: !4149, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4507)
!4507 = !{!4508, !4509, !4510}
!4508 = !DILocalVariable(name: "size", arg: 1, scope: !4506, file: !98, line: 591, type: !329)
!4509 = !DILocalVariable(name: "flags", arg: 2, scope: !4506, file: !98, line: 591, type: !805)
!4510 = !DILocalVariable(name: "index", scope: !4511, file: !98, line: 594, type: !13)
!4511 = distinct !DILexicalBlock(scope: !4512, file: !98, line: 593, column: 42)
!4512 = distinct !DILexicalBlock(scope: !4506, file: !98, line: 593, column: 6)
!4513 = !DILocation(line: 591, column: 61, scope: !4506)
!4514 = !DILocation(line: 591, column: 73, scope: !4506)
!4515 = !DILocation(line: 593, column: 27, scope: !4512)
!4516 = !DILocation(line: 593, column: 6, scope: !4512)
!4517 = !DILocation(line: 593, column: 33, scope: !4512)
!4518 = !DILocation(line: 593, column: 36, scope: !4512)
!4519 = !DILocation(line: 593, column: 6, scope: !4506)
!4520 = !DILocation(line: 594, column: 3, scope: !4511)
!4521 = !DILocation(line: 594, column: 16, scope: !4511)
!4522 = !DILocation(line: 596, column: 7, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4511, file: !98, line: 596, column: 7)
!4524 = !DILocation(line: 596, column: 12, scope: !4523)
!4525 = !DILocation(line: 596, column: 7, scope: !4511)
!4526 = !DILocation(line: 597, column: 25, scope: !4523)
!4527 = !DILocation(line: 597, column: 31, scope: !4523)
!4528 = !DILocation(line: 597, column: 11, scope: !4523)
!4529 = !DILocation(line: 597, column: 4, scope: !4523)
!4530 = !DILocation(line: 599, column: 11, scope: !4511)
!4531 = !DILocation(line: 599, column: 9, scope: !4511)
!4532 = !DILocation(line: 601, column: 33, scope: !4511)
!4533 = !DILocation(line: 601, column: 40, scope: !4511)
!4534 = !DILocation(line: 601, column: 20, scope: !4511)
!4535 = !DILocation(line: 601, column: 5, scope: !4511)
!4536 = !DILocation(line: 601, column: 51, scope: !4511)
!4537 = !DILocation(line: 602, column: 5, scope: !4511)
!4538 = !DILocation(line: 602, column: 12, scope: !4511)
!4539 = !DILocation(line: 600, column: 10, scope: !4511)
!4540 = !DILocation(line: 600, column: 3, scope: !4511)
!4541 = !DILocation(line: 603, column: 2, scope: !4512)
!4542 = !DILocation(line: 604, column: 19, scope: !4506)
!4543 = !DILocation(line: 604, column: 25, scope: !4506)
!4544 = !DILocation(line: 604, column: 9, scope: !4506)
!4545 = !DILocation(line: 604, column: 2, scope: !4506)
!4546 = !DILocation(line: 605, column: 1, scope: !4506)
!4547 = !DISubprogram(name: "kmalloc_large", scope: !98, file: !98, line: 531, type: !4149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4548 = distinct !DISubprogram(name: "__kmalloc_index", scope: !98, file: !98, line: 444, type: !4549, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4551)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{!13, !329, !381}
!4551 = !{!4552, !4553}
!4552 = !DILocalVariable(name: "size", arg: 1, scope: !4548, file: !98, line: 444, type: !329)
!4553 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !4548, file: !98, line: 445, type: !381)
!4554 = !DILocation(line: 444, column: 60, scope: !4548)
!4555 = !DILocation(line: 445, column: 16, scope: !4548)
!4556 = !DILocation(line: 447, column: 7, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !4548, file: !98, line: 447, column: 6)
!4558 = !DILocation(line: 447, column: 6, scope: !4548)
!4559 = !DILocation(line: 448, column: 3, scope: !4557)
!4560 = !DILocation(line: 450, column: 6, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4548, file: !98, line: 450, column: 6)
!4562 = !DILocation(line: 450, column: 11, scope: !4561)
!4563 = !DILocation(line: 450, column: 6, scope: !4548)
!4564 = !DILocation(line: 451, column: 3, scope: !4561)
!4565 = !DILocation(line: 453, column: 32, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4548, file: !98, line: 453, column: 6)
!4567 = !DILocation(line: 453, column: 37, scope: !4566)
!4568 = !DILocation(line: 453, column: 42, scope: !4566)
!4569 = !DILocation(line: 453, column: 45, scope: !4566)
!4570 = !DILocation(line: 453, column: 50, scope: !4566)
!4571 = !DILocation(line: 453, column: 6, scope: !4548)
!4572 = !DILocation(line: 454, column: 3, scope: !4566)
!4573 = !DILocation(line: 455, column: 32, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4548, file: !98, line: 455, column: 6)
!4575 = !DILocation(line: 455, column: 37, scope: !4574)
!4576 = !DILocation(line: 455, column: 43, scope: !4574)
!4577 = !DILocation(line: 455, column: 46, scope: !4574)
!4578 = !DILocation(line: 455, column: 51, scope: !4574)
!4579 = !DILocation(line: 455, column: 6, scope: !4548)
!4580 = !DILocation(line: 456, column: 3, scope: !4574)
!4581 = !DILocation(line: 457, column: 6, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4548, file: !98, line: 457, column: 6)
!4583 = !DILocation(line: 457, column: 11, scope: !4582)
!4584 = !DILocation(line: 457, column: 6, scope: !4548)
!4585 = !DILocation(line: 457, column: 26, scope: !4582)
!4586 = !DILocation(line: 458, column: 6, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4548, file: !98, line: 458, column: 6)
!4588 = !DILocation(line: 458, column: 11, scope: !4587)
!4589 = !DILocation(line: 458, column: 6, scope: !4548)
!4590 = !DILocation(line: 458, column: 26, scope: !4587)
!4591 = !DILocation(line: 459, column: 6, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4548, file: !98, line: 459, column: 6)
!4593 = !DILocation(line: 459, column: 11, scope: !4592)
!4594 = !DILocation(line: 459, column: 6, scope: !4548)
!4595 = !DILocation(line: 459, column: 26, scope: !4592)
!4596 = !DILocation(line: 460, column: 6, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4548, file: !98, line: 460, column: 6)
!4598 = !DILocation(line: 460, column: 11, scope: !4597)
!4599 = !DILocation(line: 460, column: 6, scope: !4548)
!4600 = !DILocation(line: 460, column: 26, scope: !4597)
!4601 = !DILocation(line: 461, column: 6, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4548, file: !98, line: 461, column: 6)
!4603 = !DILocation(line: 461, column: 11, scope: !4602)
!4604 = !DILocation(line: 461, column: 6, scope: !4548)
!4605 = !DILocation(line: 461, column: 26, scope: !4602)
!4606 = !DILocation(line: 462, column: 6, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4548, file: !98, line: 462, column: 6)
!4608 = !DILocation(line: 462, column: 11, scope: !4607)
!4609 = !DILocation(line: 462, column: 6, scope: !4548)
!4610 = !DILocation(line: 462, column: 26, scope: !4607)
!4611 = !DILocation(line: 463, column: 6, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4548, file: !98, line: 463, column: 6)
!4613 = !DILocation(line: 463, column: 11, scope: !4612)
!4614 = !DILocation(line: 463, column: 6, scope: !4548)
!4615 = !DILocation(line: 463, column: 26, scope: !4612)
!4616 = !DILocation(line: 464, column: 6, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4548, file: !98, line: 464, column: 6)
!4618 = !DILocation(line: 464, column: 11, scope: !4617)
!4619 = !DILocation(line: 464, column: 6, scope: !4548)
!4620 = !DILocation(line: 464, column: 26, scope: !4617)
!4621 = !DILocation(line: 465, column: 6, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4548, file: !98, line: 465, column: 6)
!4623 = !DILocation(line: 465, column: 11, scope: !4622)
!4624 = !DILocation(line: 465, column: 6, scope: !4548)
!4625 = !DILocation(line: 465, column: 26, scope: !4622)
!4626 = !DILocation(line: 466, column: 6, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4548, file: !98, line: 466, column: 6)
!4628 = !DILocation(line: 466, column: 11, scope: !4627)
!4629 = !DILocation(line: 466, column: 6, scope: !4548)
!4630 = !DILocation(line: 466, column: 26, scope: !4627)
!4631 = !DILocation(line: 467, column: 6, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4548, file: !98, line: 467, column: 6)
!4633 = !DILocation(line: 467, column: 11, scope: !4632)
!4634 = !DILocation(line: 467, column: 6, scope: !4548)
!4635 = !DILocation(line: 467, column: 26, scope: !4632)
!4636 = !DILocation(line: 468, column: 6, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4548, file: !98, line: 468, column: 6)
!4638 = !DILocation(line: 468, column: 11, scope: !4637)
!4639 = !DILocation(line: 468, column: 6, scope: !4548)
!4640 = !DILocation(line: 468, column: 26, scope: !4637)
!4641 = !DILocation(line: 469, column: 6, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4548, file: !98, line: 469, column: 6)
!4643 = !DILocation(line: 469, column: 11, scope: !4642)
!4644 = !DILocation(line: 469, column: 6, scope: !4548)
!4645 = !DILocation(line: 469, column: 26, scope: !4642)
!4646 = !DILocation(line: 470, column: 6, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4548, file: !98, line: 470, column: 6)
!4648 = !DILocation(line: 470, column: 11, scope: !4647)
!4649 = !DILocation(line: 470, column: 6, scope: !4548)
!4650 = !DILocation(line: 470, column: 26, scope: !4647)
!4651 = !DILocation(line: 471, column: 6, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4548, file: !98, line: 471, column: 6)
!4653 = !DILocation(line: 471, column: 11, scope: !4652)
!4654 = !DILocation(line: 471, column: 6, scope: !4548)
!4655 = !DILocation(line: 471, column: 26, scope: !4652)
!4656 = !DILocation(line: 472, column: 6, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4548, file: !98, line: 472, column: 6)
!4658 = !DILocation(line: 472, column: 11, scope: !4657)
!4659 = !DILocation(line: 472, column: 6, scope: !4548)
!4660 = !DILocation(line: 472, column: 26, scope: !4657)
!4661 = !DILocation(line: 473, column: 6, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4548, file: !98, line: 473, column: 6)
!4663 = !DILocation(line: 473, column: 11, scope: !4662)
!4664 = !DILocation(line: 473, column: 6, scope: !4548)
!4665 = !DILocation(line: 473, column: 26, scope: !4662)
!4666 = !DILocation(line: 474, column: 6, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4548, file: !98, line: 474, column: 6)
!4668 = !DILocation(line: 474, column: 11, scope: !4667)
!4669 = !DILocation(line: 474, column: 6, scope: !4548)
!4670 = !DILocation(line: 474, column: 27, scope: !4667)
!4671 = !DILocation(line: 475, column: 6, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4548, file: !98, line: 475, column: 6)
!4673 = !DILocation(line: 475, column: 11, scope: !4672)
!4674 = !DILocation(line: 475, column: 6, scope: !4548)
!4675 = !DILocation(line: 475, column: 32, scope: !4672)
!4676 = !DILocation(line: 477, column: 50, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4548, file: !98, line: 477, column: 6)
!4678 = !{i8 0, i8 2}
!4679 = !DILocation(line: 477, column: 6, scope: !4548)
!4680 = !DILocation(line: 478, column: 3, scope: !4677)
!4681 = !DILocation(line: 478, column: 3, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4683, file: !98, line: 478, column: 3)
!4683 = distinct !DILexicalBlock(scope: !4677, file: !98, line: 478, column: 3)
!4684 = !{i32 -2141697013}
!4685 = !DILocation(line: 478, column: 3, scope: !4683)
!4686 = !DILocation(line: 480, column: 3, scope: !4677)
!4687 = !DILocation(line: 480, column: 3, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4677, file: !98, line: 480, column: 3)
!4689 = !DILocation(line: 480, column: 3, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4688, file: !98, line: 480, column: 3)
!4691 = !DILocation(line: 480, column: 3, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4688, file: !98, line: 480, column: 3)
!4693 = !{i64 2153270486, i64 2153270515, i64 2153270561, i64 2153270619, i64 2153270673, i64 2153270727, i64 2153270782, i64 2153270813}
!4694 = !DILocation(line: 483, column: 2, scope: !4548)
!4695 = !DILocation(line: 484, column: 1, scope: !4548)
!4696 = !DISubprogram(name: "kmalloc_trace", scope: !98, file: !98, line: 525, type: !4697, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!280, !4699, !805, !329}
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4701, line: 325, flags: DIFlagFwdDecl)
!4701 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!4702 = distinct !DISubprogram(name: "kmalloc_type", scope: !98, file: !98, line: 401, type: !4703, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4705)
!4703 = !DISubroutineType(types: !4704)
!4704 = !{!97, !805, !205}
!4705 = !{!4706, !4707}
!4706 = !DILocalVariable(name: "flags", arg: 1, scope: !4702, file: !98, line: 401, type: !805)
!4707 = !DILocalVariable(name: "caller", arg: 2, scope: !4702, file: !98, line: 401, type: !205)
!4708 = !DILocation(line: 401, column: 67, scope: !4702)
!4709 = !DILocation(line: 401, column: 88, scope: !4702)
!4710 = !DILocation(line: 407, column: 6, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4702, file: !98, line: 407, column: 6)
!4712 = !DILocation(line: 407, column: 6, scope: !4702)
!4713 = !DILocation(line: 413, column: 3, scope: !4711)
!4714 = !DILocation(line: 423, column: 38, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4702, file: !98, line: 423, column: 6)
!4716 = !DILocation(line: 423, column: 44, scope: !4715)
!4717 = !DILocation(line: 423, column: 6, scope: !4702)
!4718 = !DILocation(line: 424, column: 3, scope: !4715)
!4719 = !DILocation(line: 426, column: 3, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4702, file: !98, line: 425, column: 6)
!4721 = !DILocation(line: 429, column: 1, scope: !4702)
!4722 = !DISubprogram(name: "__kmalloc", scope: !98, file: !98, line: 488, type: !4149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4723 = !DISubprogram(name: "__compiletime_assert_245", scope: !98, file: !98, line: 478, type: !2007, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4724 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4725, file: !4725, line: 66, type: !4726, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4731)
!4725 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4726 = !DISubroutineType(types: !4727)
!4727 = !{null, !4728, !329}
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4730)
!4730 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4731 = !{!4732, !4733}
!4732 = !DILocalVariable(name: "v", arg: 1, scope: !4724, file: !4725, line: 66, type: !4728)
!4733 = !DILocalVariable(name: "size", arg: 2, scope: !4724, file: !4725, line: 66, type: !329)
!4734 = !DILocation(line: 66, column: 73, scope: !4724)
!4735 = !DILocation(line: 66, column: 83, scope: !4724)
!4736 = !DILocation(line: 68, column: 19, scope: !4724)
!4737 = !DILocation(line: 68, column: 22, scope: !4724)
!4738 = !DILocation(line: 68, column: 2, scope: !4724)
!4739 = !DILocation(line: 69, column: 2, scope: !4724)
!4740 = !DILocation(line: 70, column: 1, scope: !4724)
!4741 = distinct !DISubprogram(name: "arch_test_bit", scope: !4742, file: !4742, line: 237, type: !4174, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4743)
!4742 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!4743 = !{!4744, !4745}
!4744 = !DILocalVariable(name: "nr", arg: 1, scope: !4741, file: !4742, line: 237, type: !205)
!4745 = !DILocalVariable(name: "addr", arg: 2, scope: !4741, file: !4742, line: 237, type: !4176)
!4746 = !DILocation(line: 237, column: 29, scope: !4741)
!4747 = !DILocation(line: 237, column: 63, scope: !4741)
!4748 = !DILocation(line: 239, column: 30, scope: !4741)
!4749 = !DILocation(line: 239, column: 9, scope: !4741)
!4750 = !DILocation(line: 239, column: 54, scope: !4741)
!4751 = !DILocation(line: 239, column: 58, scope: !4741)
!4752 = !DILocation(line: 239, column: 36, scope: !4741)
!4753 = !DILocation(line: 240, column: 26, scope: !4741)
!4754 = !DILocation(line: 240, column: 30, scope: !4741)
!4755 = !DILocation(line: 240, column: 8, scope: !4741)
!4756 = !DILocation(line: 239, column: 2, scope: !4741)
!4757 = distinct !DISubprogram(name: "kasan_check_read", scope: !4758, file: !4758, line: 40, type: !4759, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4761)
!4758 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!381, !4728, !13}
!4761 = !{!4762, !4763}
!4762 = !DILocalVariable(name: "p", arg: 1, scope: !4757, file: !4758, line: 40, type: !4728)
!4763 = !DILocalVariable(name: "size", arg: 2, scope: !4757, file: !4758, line: 40, type: !13)
!4764 = !DILocation(line: 40, column: 58, scope: !4757)
!4765 = !DILocation(line: 40, column: 74, scope: !4757)
!4766 = !DILocation(line: 42, column: 2, scope: !4757)
!4767 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4768, file: !4768, line: 229, type: !4769, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4771)
!4768 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4769 = !DISubroutineType(types: !4770)
!4770 = !{null, !4728, !329, !185}
!4771 = !{!4772, !4773, !4774}
!4772 = !DILocalVariable(name: "ptr", arg: 1, scope: !4767, file: !4768, line: 229, type: !4728)
!4773 = !DILocalVariable(name: "size", arg: 2, scope: !4767, file: !4768, line: 229, type: !329)
!4774 = !DILocalVariable(name: "type", arg: 3, scope: !4767, file: !4768, line: 230, type: !185)
!4775 = !DILocation(line: 229, column: 60, scope: !4767)
!4776 = !DILocation(line: 229, column: 72, scope: !4767)
!4777 = !DILocation(line: 230, column: 15, scope: !4767)
!4778 = !DILocation(line: 230, column: 23, scope: !4767)
!4779 = distinct !DISubprogram(name: "constant_test_bit", scope: !4742, file: !4742, line: 204, type: !4780, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4782)
!4780 = !DISubroutineType(types: !4781)
!4781 = !{!381, !713, !4176}
!4782 = !{!4783, !4784}
!4783 = !DILocalVariable(name: "nr", arg: 1, scope: !4779, file: !4742, line: 204, type: !713)
!4784 = !DILocalVariable(name: "addr", arg: 2, scope: !4779, file: !4742, line: 204, type: !4176)
!4785 = !DILocation(line: 204, column: 52, scope: !4779)
!4786 = !DILocation(line: 204, column: 86, scope: !4779)
!4787 = !DILocation(line: 206, column: 19, scope: !4779)
!4788 = !DILocation(line: 206, column: 22, scope: !4779)
!4789 = !DILocation(line: 206, column: 15, scope: !4779)
!4790 = !DILocation(line: 207, column: 4, scope: !4779)
!4791 = !DILocation(line: 207, column: 9, scope: !4779)
!4792 = !DILocation(line: 207, column: 12, scope: !4779)
!4793 = !DILocation(line: 206, column: 44, scope: !4779)
!4794 = !DILocation(line: 207, column: 37, scope: !4779)
!4795 = !DILocation(line: 206, column: 2, scope: !4779)
!4796 = distinct !DISubprogram(name: "variable_test_bit", scope: !4742, file: !4742, line: 224, type: !4780, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4797)
!4797 = !{!4798, !4799, !4800}
!4798 = !DILocalVariable(name: "nr", arg: 1, scope: !4796, file: !4742, line: 224, type: !713)
!4799 = !DILocalVariable(name: "addr", arg: 2, scope: !4796, file: !4742, line: 224, type: !4176)
!4800 = !DILocalVariable(name: "oldbit", scope: !4796, file: !4742, line: 226, type: !381)
!4801 = !DILocation(line: 224, column: 52, scope: !4796)
!4802 = !DILocation(line: 224, column: 86, scope: !4796)
!4803 = !DILocation(line: 226, column: 2, scope: !4796)
!4804 = !DILocation(line: 226, column: 7, scope: !4796)
!4805 = !DILocation(line: 231, column: 33, scope: !4796)
!4806 = !DILocation(line: 231, column: 46, scope: !4796)
!4807 = !DILocation(line: 228, column: 2, scope: !4796)
!4808 = !{i64 2147904316, i64 2147904390}
!4809 = !DILocation(line: 233, column: 9, scope: !4796)
!4810 = !DILocation(line: 234, column: 1, scope: !4796)
!4811 = !DILocation(line: 233, column: 2, scope: !4796)
!4812 = distinct !DISubprogram(name: "get_new_cred", scope: !119, file: !119, line: 181, type: !4813, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4815)
!4813 = !DISubroutineType(types: !4814)
!4814 = !{!3678, !3678}
!4815 = !{!4816}
!4816 = !DILocalVariable(name: "cred", arg: 1, scope: !4812, file: !119, line: 181, type: !3678)
!4817 = !DILocation(line: 181, column: 54, scope: !4812)
!4818 = !DILocation(line: 183, column: 19, scope: !4812)
!4819 = !DILocation(line: 183, column: 25, scope: !4812)
!4820 = !DILocation(line: 183, column: 2, scope: !4812)
!4821 = !DILocation(line: 184, column: 9, scope: !4812)
!4822 = !DILocation(line: 184, column: 2, scope: !4812)
!4823 = distinct !DISubprogram(name: "atomic_long_inc", scope: !4824, file: !4824, line: 3561, type: !4825, scopeLine: 3562, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4827)
!4824 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!4825 = !DISubroutineType(types: !4826)
!4826 = !{null, !3242}
!4827 = !{!4828}
!4828 = !DILocalVariable(name: "v", arg: 1, scope: !4823, file: !4824, line: 3561, type: !3242)
!4829 = !DILocation(line: 3561, column: 32, scope: !4823)
!4830 = !DILocation(line: 3563, column: 31, scope: !4823)
!4831 = !DILocation(line: 3563, column: 2, scope: !4823)
!4832 = !DILocation(line: 3564, column: 22, scope: !4823)
!4833 = !DILocation(line: 3564, column: 2, scope: !4823)
!4834 = !DILocation(line: 3565, column: 1, scope: !4823)
!4835 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4725, file: !4725, line: 94, type: !4726, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4836)
!4836 = !{!4837, !4838}
!4837 = !DILocalVariable(name: "v", arg: 1, scope: !4835, file: !4725, line: 94, type: !4728)
!4838 = !DILocalVariable(name: "size", arg: 2, scope: !4835, file: !4725, line: 94, type: !329)
!4839 = !DILocation(line: 94, column: 79, scope: !4835)
!4840 = !DILocation(line: 94, column: 89, scope: !4835)
!4841 = !DILocation(line: 96, column: 20, scope: !4835)
!4842 = !DILocation(line: 96, column: 23, scope: !4835)
!4843 = !DILocation(line: 96, column: 2, scope: !4835)
!4844 = !DILocation(line: 97, column: 2, scope: !4835)
!4845 = !DILocation(line: 98, column: 1, scope: !4835)
!4846 = distinct !DISubprogram(name: "raw_atomic_long_inc", scope: !123, file: !123, line: 495, type: !4825, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4847)
!4847 = !{!4848}
!4848 = !DILocalVariable(name: "v", arg: 1, scope: !4846, file: !123, line: 495, type: !3242)
!4849 = !DILocation(line: 495, column: 36, scope: !4846)
!4850 = !DILocation(line: 498, column: 19, scope: !4846)
!4851 = !DILocation(line: 498, column: 2, scope: !4846)
!4852 = !DILocation(line: 502, column: 1, scope: !4846)
!4853 = distinct !DISubprogram(name: "kasan_check_write", scope: !4758, file: !4758, line: 44, type: !4759, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4854)
!4854 = !{!4855, !4856}
!4855 = !DILocalVariable(name: "p", arg: 1, scope: !4853, file: !4758, line: 44, type: !4728)
!4856 = !DILocalVariable(name: "size", arg: 2, scope: !4853, file: !4758, line: 44, type: !13)
!4857 = !DILocation(line: 44, column: 59, scope: !4853)
!4858 = !DILocation(line: 44, column: 75, scope: !4853)
!4859 = !DILocation(line: 46, column: 2, scope: !4853)
!4860 = distinct !DISubprogram(name: "raw_atomic64_inc", scope: !4861, file: !4861, line: 3088, type: !4862, scopeLine: 3089, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4865)
!4861 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!4862 = !DISubroutineType(types: !4863)
!4863 = !{null, !4864}
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!4865 = !{!4866}
!4866 = !DILocalVariable(name: "v", arg: 1, scope: !4860, file: !4861, line: 3088, type: !4864)
!4867 = !DILocation(line: 3088, column: 30, scope: !4860)
!4868 = !DILocation(line: 3091, column: 20, scope: !4860)
!4869 = !DILocation(line: 3091, column: 2, scope: !4860)
!4870 = !DILocation(line: 3095, column: 1, scope: !4860)
!4871 = distinct !DISubprogram(name: "arch_atomic64_inc", scope: !4872, file: !4872, line: 43, type: !4862, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4873)
!4872 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!4873 = !{!4874}
!4874 = !DILocalVariable(name: "v", arg: 1, scope: !4871, file: !4872, line: 43, type: !4864)
!4875 = !DILocation(line: 43, column: 59, scope: !4871)
!4876 = !DILocation(line: 46, column: 16, scope: !4871)
!4877 = !DILocation(line: 46, column: 19, scope: !4871)
!4878 = !DILocation(line: 47, column: 15, scope: !4871)
!4879 = !DILocation(line: 47, column: 18, scope: !4871)
!4880 = !DILocation(line: 45, column: 2, scope: !4871)
!4881 = !{i64 2148434451, i64 2148434490, i64 2148434511, i64 2148434548, i64 2148434571, i64 2148434441}
!4882 = !DILocation(line: 48, column: 1, scope: !4871)
!4883 = distinct !DISubprogram(name: "__key_get", scope: !88, file: !88, line: 306, type: !4245, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4884)
!4884 = !{!4885}
!4885 = !DILocalVariable(name: "key", arg: 1, scope: !4883, file: !88, line: 306, type: !173)
!4886 = !DILocation(line: 306, column: 49, scope: !4883)
!4887 = !DILocation(line: 308, column: 16, scope: !4883)
!4888 = !DILocation(line: 308, column: 21, scope: !4883)
!4889 = !DILocation(line: 308, column: 2, scope: !4883)
!4890 = !DILocation(line: 309, column: 9, scope: !4883)
!4891 = !DILocation(line: 309, column: 2, scope: !4883)
!4892 = distinct !DISubprogram(name: "refcount_inc", scope: !108, file: !108, line: 265, type: !4893, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4896)
!4893 = !DISubroutineType(types: !4894)
!4894 = !{null, !4895}
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!4896 = !{!4897}
!4897 = !DILocalVariable(name: "r", arg: 1, scope: !4892, file: !108, line: 265, type: !4895)
!4898 = !DILocation(line: 265, column: 45, scope: !4892)
!4899 = !DILocation(line: 267, column: 17, scope: !4892)
!4900 = !DILocation(line: 267, column: 2, scope: !4892)
!4901 = !DILocation(line: 268, column: 1, scope: !4892)
!4902 = distinct !DISubprogram(name: "__refcount_inc", scope: !108, file: !108, line: 248, type: !4903, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4905)
!4903 = !DISubroutineType(types: !4904)
!4904 = !{null, !4895, !913}
!4905 = !{!4906, !4907}
!4906 = !DILocalVariable(name: "r", arg: 1, scope: !4902, file: !108, line: 248, type: !4895)
!4907 = !DILocalVariable(name: "oldp", arg: 2, scope: !4902, file: !108, line: 248, type: !913)
!4908 = !DILocation(line: 248, column: 47, scope: !4902)
!4909 = !DILocation(line: 248, column: 55, scope: !4902)
!4910 = !DILocation(line: 250, column: 20, scope: !4902)
!4911 = !DILocation(line: 250, column: 23, scope: !4902)
!4912 = !DILocation(line: 250, column: 2, scope: !4902)
!4913 = !DILocation(line: 251, column: 1, scope: !4902)
!4914 = distinct !DISubprogram(name: "__refcount_add", scope: !108, file: !108, line: 191, type: !4915, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4917)
!4915 = !DISubroutineType(types: !4916)
!4916 = !{null, !185, !4895, !913}
!4917 = !{!4918, !4919, !4920, !4921}
!4918 = !DILocalVariable(name: "i", arg: 1, scope: !4914, file: !108, line: 191, type: !185)
!4919 = !DILocalVariable(name: "r", arg: 2, scope: !4914, file: !108, line: 191, type: !4895)
!4920 = !DILocalVariable(name: "oldp", arg: 3, scope: !4914, file: !108, line: 191, type: !913)
!4921 = !DILocalVariable(name: "old", scope: !4914, file: !108, line: 193, type: !185)
!4922 = !DILocation(line: 191, column: 39, scope: !4914)
!4923 = !DILocation(line: 191, column: 54, scope: !4914)
!4924 = !DILocation(line: 191, column: 62, scope: !4914)
!4925 = !DILocation(line: 193, column: 2, scope: !4914)
!4926 = !DILocation(line: 193, column: 6, scope: !4914)
!4927 = !DILocation(line: 193, column: 37, scope: !4914)
!4928 = !DILocation(line: 193, column: 41, scope: !4914)
!4929 = !DILocation(line: 193, column: 44, scope: !4914)
!4930 = !DILocation(line: 193, column: 12, scope: !4914)
!4931 = !DILocation(line: 195, column: 6, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4914, file: !108, line: 195, column: 6)
!4933 = !DILocation(line: 195, column: 6, scope: !4914)
!4934 = !DILocation(line: 196, column: 11, scope: !4932)
!4935 = !DILocation(line: 196, column: 4, scope: !4932)
!4936 = !DILocation(line: 196, column: 9, scope: !4932)
!4937 = !DILocation(line: 196, column: 3, scope: !4932)
!4938 = !DILocation(line: 198, column: 6, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4914, file: !108, line: 198, column: 6)
!4940 = !DILocation(line: 198, column: 6, scope: !4914)
!4941 = !DILocation(line: 199, column: 26, scope: !4939)
!4942 = !DILocation(line: 199, column: 3, scope: !4939)
!4943 = !DILocation(line: 200, column: 11, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4939, file: !108, line: 200, column: 11)
!4945 = !DILocation(line: 200, column: 11, scope: !4939)
!4946 = !DILocation(line: 201, column: 26, scope: !4944)
!4947 = !DILocation(line: 201, column: 3, scope: !4944)
!4948 = !DILocation(line: 202, column: 1, scope: !4914)
!4949 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !4824, file: !4824, line: 250, type: !4950, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4953)
!4950 = !DISubroutineType(types: !4951)
!4951 = !{!185, !185, !4952}
!4952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!4953 = !{!4954, !4955}
!4954 = !DILocalVariable(name: "i", arg: 1, scope: !4949, file: !4824, line: 250, type: !185)
!4955 = !DILocalVariable(name: "v", arg: 2, scope: !4949, file: !4824, line: 250, type: !4952)
!4956 = !DILocation(line: 250, column: 30, scope: !4949)
!4957 = !DILocation(line: 250, column: 43, scope: !4949)
!4958 = !DILocation(line: 252, column: 31, scope: !4949)
!4959 = !DILocation(line: 252, column: 2, scope: !4949)
!4960 = !DILocation(line: 253, column: 38, scope: !4949)
!4961 = !DILocation(line: 253, column: 41, scope: !4949)
!4962 = !DILocation(line: 253, column: 9, scope: !4949)
!4963 = !DILocation(line: 253, column: 2, scope: !4949)
!4964 = !DISubprogram(name: "refcount_warn_saturate", scope: !108, file: !108, line: 127, type: !4965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4965 = !DISubroutineType(types: !4966)
!4966 = !{null, !4895, !107}
!4967 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !4861, file: !4861, line: 731, type: !4950, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4968)
!4968 = !{!4969, !4970}
!4969 = !DILocalVariable(name: "i", arg: 1, scope: !4967, file: !4861, line: 731, type: !185)
!4970 = !DILocalVariable(name: "v", arg: 2, scope: !4967, file: !4861, line: 731, type: !4952)
!4971 = !DILocation(line: 731, column: 34, scope: !4967)
!4972 = !DILocation(line: 731, column: 47, scope: !4967)
!4973 = !DILocation(line: 736, column: 31, scope: !4967)
!4974 = !DILocation(line: 736, column: 34, scope: !4967)
!4975 = !DILocation(line: 736, column: 9, scope: !4967)
!4976 = !DILocation(line: 736, column: 2, scope: !4967)
!4977 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !4978, file: !4978, line: 95, type: !4950, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4979)
!4978 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!4979 = !{!4980, !4981, !4982}
!4980 = !DILocalVariable(name: "i", arg: 1, scope: !4977, file: !4978, line: 95, type: !185)
!4981 = !DILocalVariable(name: "v", arg: 2, scope: !4977, file: !4978, line: 95, type: !4952)
!4982 = !DILocalVariable(name: "__ret", scope: !4983, file: !4978, line: 97, type: !185)
!4983 = distinct !DILexicalBlock(scope: !4977, file: !4978, line: 97, column: 9)
!4984 = !DILocation(line: 95, column: 54, scope: !4977)
!4985 = !DILocation(line: 95, column: 67, scope: !4977)
!4986 = !DILocation(line: 97, column: 9, scope: !4983)
!4987 = !{i64 2148414012, i64 2148414051, i64 2148414072, i64 2148414109, i64 2148414132, i64 2148414141}
!4988 = !DILocation(line: 97, column: 9, scope: !4977)
!4989 = !DILocation(line: 97, column: 2, scope: !4977)
!4990 = distinct !DISubprogram(name: "put_cred", scope: !119, file: !119, line: 231, type: !4991, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4993)
!4991 = !DISubroutineType(types: !4992)
!4992 = !{null, !116}
!4993 = !{!4994, !4995}
!4994 = !DILocalVariable(name: "_cred", arg: 1, scope: !4990, file: !119, line: 231, type: !116)
!4995 = !DILocalVariable(name: "cred", scope: !4990, file: !119, line: 233, type: !3678)
!4996 = !DILocation(line: 231, column: 48, scope: !4990)
!4997 = !DILocation(line: 233, column: 2, scope: !4990)
!4998 = !DILocation(line: 233, column: 15, scope: !4990)
!4999 = !DILocation(line: 233, column: 38, scope: !4990)
!5000 = !DILocation(line: 235, column: 6, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !4990, file: !119, line: 235, column: 6)
!5002 = !DILocation(line: 235, column: 6, scope: !4990)
!5003 = !DILocation(line: 236, column: 34, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !5005, file: !119, line: 236, column: 7)
!5005 = distinct !DILexicalBlock(scope: !5001, file: !119, line: 235, column: 12)
!5006 = !DILocation(line: 236, column: 41, scope: !5004)
!5007 = !DILocation(line: 236, column: 7, scope: !5004)
!5008 = !DILocation(line: 236, column: 7, scope: !5005)
!5009 = !DILocation(line: 237, column: 15, scope: !5004)
!5010 = !DILocation(line: 237, column: 4, scope: !5004)
!5011 = !DILocation(line: 238, column: 2, scope: !5005)
!5012 = !DILocation(line: 239, column: 1, scope: !4990)
!5013 = !DISubprogram(name: "kfree", scope: !98, file: !98, line: 227, type: !5014, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5014 = !DISubroutineType(types: !5015)
!5015 = !{null, !356}
!5016 = distinct !DISubprogram(name: "atomic_long_dec_and_test", scope: !4824, file: !4824, line: 4500, type: !5017, scopeLine: 4501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5019)
!5017 = !DISubroutineType(types: !5018)
!5018 = !{!381, !3242}
!5019 = !{!5020}
!5020 = !DILocalVariable(name: "v", arg: 1, scope: !5016, file: !4824, line: 4500, type: !3242)
!5021 = !DILocation(line: 4500, column: 41, scope: !5016)
!5022 = !DILocation(line: 4502, column: 2, scope: !5016)
!5023 = !DILocation(line: 4502, column: 2, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5016, file: !4824, line: 4502, column: 2)
!5025 = !DILocation(line: 4503, column: 31, scope: !5016)
!5026 = !DILocation(line: 4503, column: 2, scope: !5016)
!5027 = !DILocation(line: 4504, column: 38, scope: !5016)
!5028 = !DILocation(line: 4504, column: 9, scope: !5016)
!5029 = !DILocation(line: 4504, column: 2, scope: !5016)
!5030 = !DISubprogram(name: "__put_cred", scope: !119, file: !119, line: 148, type: !5031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5031 = !DISubroutineType(types: !5032)
!5032 = !{null, !3678}
!5033 = distinct !DISubprogram(name: "raw_atomic_long_dec_and_test", scope: !123, file: !123, line: 1560, type: !5017, scopeLine: 1561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5034)
!5034 = !{!5035}
!5035 = !DILocalVariable(name: "v", arg: 1, scope: !5033, file: !123, line: 1560, type: !3242)
!5036 = !DILocation(line: 1560, column: 45, scope: !5033)
!5037 = !DILocation(line: 1563, column: 35, scope: !5033)
!5038 = !DILocation(line: 1563, column: 9, scope: !5033)
!5039 = !DILocation(line: 1563, column: 2, scope: !5033)
!5040 = distinct !DISubprogram(name: "raw_atomic64_dec_and_test", scope: !4861, file: !4861, line: 4366, type: !5041, scopeLine: 4367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5043)
!5041 = !DISubroutineType(types: !5042)
!5042 = !{!381, !4864}
!5043 = !{!5044}
!5044 = !DILocalVariable(name: "v", arg: 1, scope: !5040, file: !4861, line: 4366, type: !4864)
!5045 = !DILocation(line: 4366, column: 39, scope: !5040)
!5046 = !DILocation(line: 4369, column: 36, scope: !5040)
!5047 = !DILocation(line: 4369, column: 9, scope: !5040)
!5048 = !DILocation(line: 4369, column: 2, scope: !5040)
!5049 = distinct !DISubprogram(name: "arch_atomic64_dec_and_test", scope: !4872, file: !4872, line: 59, type: !5041, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5050)
!5050 = !{!5051, !5052}
!5051 = !DILocalVariable(name: "v", arg: 1, scope: !5049, file: !4872, line: 59, type: !4864)
!5052 = !DILocalVariable(name: "c", scope: !5053, file: !4872, line: 61, type: !381)
!5053 = distinct !DILexicalBlock(scope: !5049, file: !4872, line: 61, column: 9)
!5054 = !DILocation(line: 59, column: 68, scope: !5049)
!5055 = !DILocation(line: 61, column: 9, scope: !5053)
!5056 = !{i64 2148436563, i64 2148436602, i64 2148436623, i64 2148436660, i64 2148436683, i64 2148436692, i64 2148436766}
!5057 = !DILocation(line: 61, column: 9, scope: !5049)
!5058 = !DILocation(line: 61, column: 2, scope: !5049)
!5059 = !DISubprogram(name: "__rcu_read_lock", scope: !4411, file: !4411, line: 74, type: !2007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5060 = !DISubprogram(name: "__rcu_read_unlock", scope: !4411, file: !4411, line: 75, type: !2007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
