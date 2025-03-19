; ModuleID = 'security/keys/request_key.c'
source_filename = "security/keys/request_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_complete_request_key: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad complete_request_key ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_wait_for_key_construction: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad wait_for_key_construction ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_request_key_tag: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad request_key_tag ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_request_key_with_auxdata: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad request_key_with_auxdata ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_request_key_rcu: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad request_key_rcu ; .previous"

%struct.pcpu_hot = type { %union.anon.22 }
%union.anon.22 = type { %struct.anon.23, [16 x i8] }
%struct.anon.23 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.key_type = type { ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.user_namespace = type opaque
%struct.static_call_key = type { ptr, %union.anon.25 }
%union.anon.25 = type { i64 }
%struct.request_key_auth = type { %struct.callback_head, ptr, ptr, ptr, ptr, i64, i32, [8 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.16, %struct.rw_semaphore, ptr, ptr, %union.anon.17, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.18, %union.anon.20, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.16 = type { %struct.rb_node }
%struct.rb_node = type { i64, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.17 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.18 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.14, ptr, ptr, ptr }
%union.anon.14 = type { i64 }
%union.anon.20 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.keyring_search_context = type { %struct.keyring_index_key, ptr, %struct.key_match_data, i32, ptr, i32, i8, ptr, i64 }
%struct.key_match_data = type { ptr, ptr, ptr, i32 }
%struct.anon.15 = type { i16, [6 x i8] }
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
%struct.cred = type { %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.24 }
%struct.kernel_cap_t = type { i64 }
%union.anon.24 = type { %struct.callback_head }
%struct.key_user = type { %struct.rb_node, %struct.mutex, %struct.spinlock, %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.kuid_t, i32, i32 }
%struct.anon.19 = type { i64, i64, ptr, ptr, ptr }
%struct.subprocess_info = type { %struct.work_struct, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }

@__UNIQUE_ID___addressable_complete_request_key344 = internal global ptr @complete_request_key, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_wait_for_key_construction345 = internal global ptr @wait_for_key_construction, section ".discard.addressable", align 8, !dbg !4303
@__UNIQUE_ID___addressable_request_key_tag346 = internal global ptr @request_key_tag, section ".discard.addressable", align 8, !dbg !4305
@__UNIQUE_ID___addressable_request_key_with_auxdata347 = internal global ptr @request_key_with_auxdata, section ".discard.addressable", align 8, !dbg !4307
@__UNIQUE_ID___addressable_request_key_rcu348 = internal global ptr @request_key_rcu, section ".discard.addressable", align 8, !dbg !4309
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@key_type_keyring = external dso_local global %struct.key_type, align 8
@.str = private unnamed_addr constant [28 x i8] c"security/keys/request_key.c\00", align 1, !dbg !4311
@key_construction_mutex = external dso_local global %struct.mutex, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"create\00", align 1, !dbg !4316
@call_sbin_request_key.request_key = internal constant [18 x i8] c"/sbin/request-key\00", align 16, !dbg !4319
@.str.2 = private unnamed_addr constant [8 x i8] c"_req.%u\00", align 1, !dbg !4367
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !dbg !4369
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"HOME=/\00", align 1, !dbg !4372
@.str.5 = private unnamed_addr constant [35 x i8] c"PATH=/sbin:/bin:/usr/sbin:/usr/bin\00", align 1, !dbg !4374
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched2 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !4379
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable_complete_request_key344, ptr @__UNIQUE_ID___addressable_wait_for_key_construction345, ptr @__UNIQUE_ID___addressable_request_key_tag346, ptr @__UNIQUE_ID___addressable_request_key_with_auxdata347, ptr @__UNIQUE_ID___addressable_request_key_rcu348, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched2], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @complete_request_key(ptr noundef %authkey, i32 noundef %error) #0 align 16 !dbg !4392 {
entry:
  %authkey.addr = alloca ptr, align 8
  %error.addr = alloca i32, align 4
  %rka = alloca ptr, align 8
  %key = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %authkey, ptr %authkey.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %authkey.addr, metadata !4396, metadata !DIExpression()), !dbg !4400
  store i32 %error, ptr %error.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !4397, metadata !DIExpression()), !dbg !4401
  call void @llvm.lifetime.start.p0(i64 8, ptr %rka) #11, !dbg !4402
  call void @llvm.dbg.declare(metadata ptr %rka, metadata !4398, metadata !DIExpression()), !dbg !4403
  %0 = load ptr, ptr %authkey.addr, align 8, !dbg !4404
  %call = call ptr @get_request_key_auth(ptr noundef %0) #12, !dbg !4405
  store ptr %call, ptr %rka, align 8, !dbg !4403
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #11, !dbg !4406
  call void @llvm.dbg.declare(metadata ptr %key, metadata !4399, metadata !DIExpression()), !dbg !4407
  %1 = load ptr, ptr %rka, align 8, !dbg !4408
  %target_key = getelementptr inbounds %struct.request_key_auth, ptr %1, i32 0, i32 1, !dbg !4409
  %2 = load ptr, ptr %target_key, align 8, !dbg !4409
  store ptr %2, ptr %key, align 8, !dbg !4407
  store i32 0, ptr %tmp, align 4, !dbg !4410
  %3 = load i32, ptr %tmp, align 4, !dbg !4413
  %4 = load i32, ptr %error.addr, align 4, !dbg !4414
  %cmp = icmp slt i32 %4, 0, !dbg !4416
  br i1 %cmp, label %if.then, label %if.else, !dbg !4417

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %key, align 8, !dbg !4418
  %6 = load ptr, ptr %authkey.addr, align 8, !dbg !4419
  %call1 = call i32 @key_negate_and_link(ptr noundef %5, i32 noundef 60, ptr noundef null, ptr noundef %6) #12, !dbg !4420
  br label %if.end, !dbg !4420

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %authkey.addr, align 8, !dbg !4421
  call void @key_revoke(ptr noundef %7) #12, !dbg !4422
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #11, !dbg !4423
  call void @llvm.lifetime.end.p0(i64 8, ptr %rka) #11, !dbg !4423
  ret void, !dbg !4423
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_request_key_auth(ptr noundef %key) #3 align 16 !dbg !4424 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4428, metadata !DIExpression()), !dbg !4429
  %0 = load ptr, ptr %key.addr, align 8, !dbg !4430
  %1 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16, !dbg !4431
  %arrayidx = getelementptr [4 x ptr], ptr %1, i64 0, i64 0, !dbg !4430
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !4430
  ret ptr %2, !dbg !4432
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @key_negate_and_link(ptr noundef %key, i32 noundef %timeout, ptr noundef %keyring, ptr noundef %authkey) #3 align 16 !dbg !4433 {
entry:
  %key.addr = alloca ptr, align 8
  %timeout.addr = alloca i32, align 4
  %keyring.addr = alloca ptr, align 8
  %authkey.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4437, metadata !DIExpression()), !dbg !4441
  store i32 %timeout, ptr %timeout.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !4438, metadata !DIExpression()), !dbg !4442
  store ptr %keyring, ptr %keyring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %keyring.addr, metadata !4439, metadata !DIExpression()), !dbg !4443
  store ptr %authkey, ptr %authkey.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %authkey.addr, metadata !4440, metadata !DIExpression()), !dbg !4444
  %0 = load ptr, ptr %key.addr, align 8, !dbg !4445
  %1 = load i32, ptr %timeout.addr, align 4, !dbg !4446
  %2 = load ptr, ptr %keyring.addr, align 8, !dbg !4447
  %3 = load ptr, ptr %authkey.addr, align 8, !dbg !4448
  %call = call i32 @key_reject_and_link(ptr noundef %0, i32 noundef %1, i32 noundef 126, ptr noundef %2, ptr noundef %3) #12, !dbg !4449
  ret i32 %call, !dbg !4450
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4451 dso_local void @key_revoke(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @request_key_and_link(ptr noundef %type, ptr noundef %description, ptr noundef %domain_tag, ptr noundef %callout_info, i64 noundef %callout_len, ptr noundef %aux, ptr noundef %dest_keyring, i64 noundef %flags) #0 align 16 !dbg !4452 {
entry:
  %type.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %domain_tag.addr = alloca ptr, align 8
  %callout_info.addr = alloca ptr, align 8
  %callout_len.addr = alloca i64, align 8
  %aux.addr = alloca ptr, align 8
  %dest_keyring.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %ctx = alloca %struct.keyring_search_context, align 8
  %tmp = alloca ptr, align 8
  %key = alloca ptr, align 8
  %key_ref = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %tmp29 = alloca ptr, align 8
  %tmp69 = alloca i32, align 4
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4456, metadata !DIExpression()), !dbg !4484
  store ptr %description, ptr %description.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !4457, metadata !DIExpression()), !dbg !4485
  store ptr %domain_tag, ptr %domain_tag.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain_tag.addr, metadata !4458, metadata !DIExpression()), !dbg !4486
  store ptr %callout_info, ptr %callout_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %callout_info.addr, metadata !4459, metadata !DIExpression()), !dbg !4487
  store i64 %callout_len, ptr %callout_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %callout_len.addr, metadata !4460, metadata !DIExpression()), !dbg !4488
  store ptr %aux, ptr %aux.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aux.addr, metadata !4461, metadata !DIExpression()), !dbg !4489
  store ptr %dest_keyring, ptr %dest_keyring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest_keyring.addr, metadata !4462, metadata !DIExpression()), !dbg !4490
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4463, metadata !DIExpression()), !dbg !4491
  call void @llvm.lifetime.start.p0(i64 120, ptr %ctx) #11, !dbg !4492
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !4464, metadata !DIExpression()), !dbg !4493
  %index_key = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 0, !dbg !4494
  %hash = getelementptr inbounds %struct.keyring_index_key, ptr %index_key, i32 0, i32 0, !dbg !4495
  store i64 0, ptr %hash, align 8, !dbg !4495
  %0 = getelementptr inbounds %struct.keyring_index_key, ptr %index_key, i32 0, i32 1, !dbg !4495
  %desc_len = getelementptr inbounds %struct.anon.15, ptr %0, i32 0, i32 0, !dbg !4496
  %1 = load ptr, ptr %description.addr, align 8, !dbg !4497
  %call = call i64 @strlen(ptr noundef %1) #12, !dbg !4498
  %conv = trunc i64 %call to i16, !dbg !4498
  store i16 %conv, ptr %desc_len, align 8, !dbg !4496
  %desc = getelementptr inbounds %struct.anon.15, ptr %0, i32 0, i32 1, !dbg !4496
  call void @llvm.memset.p0.i64(ptr align 2 %desc, i8 0, i64 6, i1 false), !dbg !4496
  %type1 = getelementptr inbounds %struct.keyring_index_key, ptr %index_key, i32 0, i32 2, !dbg !4495
  %2 = load ptr, ptr %type.addr, align 8, !dbg !4499
  store ptr %2, ptr %type1, align 8, !dbg !4495
  %domain_tag2 = getelementptr inbounds %struct.keyring_index_key, ptr %index_key, i32 0, i32 3, !dbg !4495
  %3 = load ptr, ptr %domain_tag.addr, align 8, !dbg !4500
  store ptr %3, ptr %domain_tag2, align 8, !dbg !4495
  %description3 = getelementptr inbounds %struct.keyring_index_key, ptr %index_key, i32 0, i32 4, !dbg !4495
  %4 = load ptr, ptr %description.addr, align 8, !dbg !4501
  store ptr %4, ptr %description3, align 8, !dbg !4495
  %cred = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 1, !dbg !4494
  br label %do.body, !dbg !4502

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4504

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4504

do.end:                                           ; preds = %do.cond
  %call4 = call ptr @get_current() #12, !dbg !4502
  %cred5 = getelementptr inbounds %struct.task_struct, ptr %call4, i32 0, i32 94, !dbg !4502
  %5 = load ptr, ptr %cred5, align 32, !dbg !4502
  store ptr %5, ptr %tmp, align 8, !dbg !4504
  %6 = load ptr, ptr %tmp, align 8, !dbg !4502
  store ptr %6, ptr %cred, align 8, !dbg !4494
  %match_data = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 2, !dbg !4494
  %cmp = getelementptr inbounds %struct.key_match_data, ptr %match_data, i32 0, i32 0, !dbg !4506
  store ptr @key_default_cmp, ptr %cmp, align 8, !dbg !4506
  %raw_data = getelementptr inbounds %struct.key_match_data, ptr %match_data, i32 0, i32 1, !dbg !4506
  %7 = load ptr, ptr %description.addr, align 8, !dbg !4507
  store ptr %7, ptr %raw_data, align 8, !dbg !4506
  %preparsed = getelementptr inbounds %struct.key_match_data, ptr %match_data, i32 0, i32 2, !dbg !4506
  store ptr null, ptr %preparsed, align 8, !dbg !4506
  %lookup_type = getelementptr inbounds %struct.key_match_data, ptr %match_data, i32 0, i32 3, !dbg !4506
  store i32 0, ptr %lookup_type, align 8, !dbg !4506
  %flags6 = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 3, !dbg !4494
  store i32 98, ptr %flags6, align 8, !dbg !4494
  %iterator = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 4, !dbg !4494
  store ptr null, ptr %iterator, align 8, !dbg !4494
  %skipped_ret = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 5, !dbg !4494
  store i32 0, ptr %skipped_ret, align 8, !dbg !4494
  %possessed = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 6, !dbg !4494
  store i8 0, ptr %possessed, align 4, !dbg !4494
  %result = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 7, !dbg !4494
  store ptr null, ptr %result, align 8, !dbg !4494
  %now = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 8, !dbg !4494
  store i64 0, ptr %now, align 8, !dbg !4494
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #11, !dbg !4508
  call void @llvm.dbg.declare(metadata ptr %key, metadata !4479, metadata !DIExpression()), !dbg !4509
  call void @llvm.lifetime.start.p0(i64 8, ptr %key_ref) #11, !dbg !4510
  call void @llvm.dbg.declare(metadata ptr %key_ref, metadata !4480, metadata !DIExpression()), !dbg !4511
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !4512
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4481, metadata !DIExpression()), !dbg !4513
  store i32 0, ptr %tmp7, align 4, !dbg !4514
  %8 = load i32, ptr %tmp7, align 4, !dbg !4517
  %9 = load ptr, ptr %type.addr, align 8, !dbg !4518
  %match_preparse = getelementptr inbounds %struct.key_type, ptr %9, i32 0, i32 8, !dbg !4520
  %10 = load ptr, ptr %match_preparse, align 8, !dbg !4520
  %tobool = icmp ne ptr %10, null, !dbg !4518
  br i1 %tobool, label %if.then, label %if.end16, !dbg !4521

if.then:                                          ; preds = %do.end
  %11 = load ptr, ptr %type.addr, align 8, !dbg !4522
  %match_preparse8 = getelementptr inbounds %struct.key_type, ptr %11, i32 0, i32 8, !dbg !4524
  %12 = load ptr, ptr %match_preparse8, align 8, !dbg !4524
  %match_data9 = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 2, !dbg !4525
  %call10 = call i32 %12(ptr noundef %match_data9) #12, !dbg !4522
  store i32 %call10, ptr %ret, align 4, !dbg !4526
  %13 = load i32, ptr %ret, align 4, !dbg !4527
  %cmp11 = icmp slt i32 %13, 0, !dbg !4529
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !4530

if.then13:                                        ; preds = %if.then
  %14 = load i32, ptr %ret, align 4, !dbg !4531
  %conv14 = sext i32 %14 to i64, !dbg !4531
  %call15 = call ptr @ERR_PTR(i64 noundef %conv14) #12, !dbg !4533
  store ptr %call15, ptr %key, align 8, !dbg !4534
  br label %error, !dbg !4535

if.end:                                           ; preds = %if.then
  br label %if.end16, !dbg !4536

if.end16:                                         ; preds = %if.end, %do.end
  %call17 = call ptr @check_cached_key(ptr noundef %ctx) #12, !dbg !4537
  store ptr %call17, ptr %key, align 8, !dbg !4538
  %15 = load ptr, ptr %key, align 8, !dbg !4539
  %tobool18 = icmp ne ptr %15, null, !dbg !4539
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !4541

if.then19:                                        ; preds = %if.end16
  br label %error_free, !dbg !4542

if.end20:                                         ; preds = %if.end16
  call void @rcu_read_lock() #12, !dbg !4543
  %call21 = call ptr @search_process_keyrings_rcu(ptr noundef %ctx) #12, !dbg !4544
  store ptr %call21, ptr %key_ref, align 8, !dbg !4545
  call void @rcu_read_unlock() #12, !dbg !4546
  %16 = load ptr, ptr %key_ref, align 8, !dbg !4547
  %call22 = call zeroext i1 @IS_ERR(ptr noundef %16) #12, !dbg !4549
  br i1 %call22, label %if.else, label %if.then23, !dbg !4550

if.then23:                                        ; preds = %if.end20
  %17 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !4551
  %tobool24 = icmp ne ptr %17, null, !dbg !4551
  br i1 %tobool24, label %if.then25, label %if.end39, !dbg !4554

if.then25:                                        ; preds = %if.then23
  %18 = load ptr, ptr %key_ref, align 8, !dbg !4555
  br label %do.body26, !dbg !4557

do.body26:                                        ; preds = %if.then25
  br label %do.cond27, !dbg !4559

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !4559

do.end28:                                         ; preds = %do.cond27
  %call30 = call ptr @get_current() #12, !dbg !4557
  %cred31 = getelementptr inbounds %struct.task_struct, ptr %call30, i32 0, i32 94, !dbg !4557
  %19 = load ptr, ptr %cred31, align 32, !dbg !4557
  store ptr %19, ptr %tmp29, align 8, !dbg !4559
  %20 = load ptr, ptr %tmp29, align 8, !dbg !4557
  %call32 = call i32 @key_task_permission(ptr noundef %18, ptr noundef %20, i32 noundef 5) #12, !dbg !4561
  store i32 %call32, ptr %ret, align 4, !dbg !4562
  %21 = load i32, ptr %ret, align 4, !dbg !4563
  %cmp33 = icmp slt i32 %21, 0, !dbg !4565
  br i1 %cmp33, label %if.then35, label %if.end38, !dbg !4566

if.then35:                                        ; preds = %do.end28
  %22 = load ptr, ptr %key_ref, align 8, !dbg !4567
  call void @key_ref_put(ptr noundef %22) #12, !dbg !4569
  %23 = load i32, ptr %ret, align 4, !dbg !4570
  %conv36 = sext i32 %23 to i64, !dbg !4570
  %call37 = call ptr @ERR_PTR(i64 noundef %conv36) #12, !dbg !4571
  store ptr %call37, ptr %key, align 8, !dbg !4572
  br label %error_free, !dbg !4573

if.end38:                                         ; preds = %do.end28
  br label %if.end39, !dbg !4574

if.end39:                                         ; preds = %if.end38, %if.then23
  %24 = load ptr, ptr %key_ref, align 8, !dbg !4575
  %call40 = call ptr @key_ref_to_ptr(ptr noundef %24) #12, !dbg !4576
  store ptr %call40, ptr %key, align 8, !dbg !4577
  %25 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !4578
  %tobool41 = icmp ne ptr %25, null, !dbg !4578
  br i1 %tobool41, label %if.then42, label %if.end50, !dbg !4580

if.then42:                                        ; preds = %if.end39
  %26 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !4581
  %27 = load ptr, ptr %key, align 8, !dbg !4583
  %call43 = call i32 @key_link(ptr noundef %26, ptr noundef %27) #12, !dbg !4584
  store i32 %call43, ptr %ret, align 4, !dbg !4585
  %28 = load i32, ptr %ret, align 4, !dbg !4586
  %cmp44 = icmp slt i32 %28, 0, !dbg !4588
  br i1 %cmp44, label %if.then46, label %if.end49, !dbg !4589

if.then46:                                        ; preds = %if.then42
  %29 = load ptr, ptr %key, align 8, !dbg !4590
  call void @key_put(ptr noundef %29) #12, !dbg !4592
  %30 = load i32, ptr %ret, align 4, !dbg !4593
  %conv47 = sext i32 %30 to i64, !dbg !4593
  %call48 = call ptr @ERR_PTR(i64 noundef %conv47) #12, !dbg !4594
  store ptr %call48, ptr %key, align 8, !dbg !4595
  br label %error_free, !dbg !4596

if.end49:                                         ; preds = %if.then42
  br label %if.end50, !dbg !4597

if.end50:                                         ; preds = %if.end49, %if.end39
  %31 = load ptr, ptr %key, align 8, !dbg !4598
  call void @cache_requested_key(ptr noundef %31) #12, !dbg !4599
  br label %if.end63, !dbg !4600

if.else:                                          ; preds = %if.end20
  %32 = load ptr, ptr %key_ref, align 8, !dbg !4601
  %call51 = call i64 @PTR_ERR(ptr noundef %32) #12, !dbg !4603
  %cmp52 = icmp ne i64 %call51, -11, !dbg !4604
  br i1 %cmp52, label %if.then54, label %if.else56, !dbg !4605

if.then54:                                        ; preds = %if.else
  %33 = load ptr, ptr %key_ref, align 8, !dbg !4606
  %call55 = call ptr @ERR_CAST(ptr noundef %33) #12, !dbg !4608
  store ptr %call55, ptr %key, align 8, !dbg !4609
  br label %if.end62, !dbg !4610

if.else56:                                        ; preds = %if.else
  %call57 = call ptr @ERR_PTR(i64 noundef -126) #12, !dbg !4611
  store ptr %call57, ptr %key, align 8, !dbg !4613
  %34 = load ptr, ptr %callout_info.addr, align 8, !dbg !4614
  %tobool58 = icmp ne ptr %34, null, !dbg !4614
  br i1 %tobool58, label %if.end60, label %if.then59, !dbg !4616

if.then59:                                        ; preds = %if.else56
  br label %error_free, !dbg !4617

if.end60:                                         ; preds = %if.else56
  %35 = load ptr, ptr %callout_info.addr, align 8, !dbg !4618
  %36 = load i64, ptr %callout_len.addr, align 8, !dbg !4619
  %37 = load ptr, ptr %aux.addr, align 8, !dbg !4620
  %38 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !4621
  %39 = load i64, ptr %flags.addr, align 8, !dbg !4622
  %call61 = call ptr @construct_key_and_link(ptr noundef %ctx, ptr noundef %35, i64 noundef %36, ptr noundef %37, ptr noundef %38, i64 noundef %39) #12, !dbg !4623
  store ptr %call61, ptr %key, align 8, !dbg !4624
  br label %if.end62

if.end62:                                         ; preds = %if.end60, %if.then54
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.end50
  br label %error_free, !dbg !4625

error_free:                                       ; preds = %if.end63, %if.then59, %if.then46, %if.then35, %if.then19
  call void @llvm.dbg.label(metadata !4482), !dbg !4626
  %40 = load ptr, ptr %type.addr, align 8, !dbg !4627
  %match_free = getelementptr inbounds %struct.key_type, ptr %40, i32 0, i32 9, !dbg !4629
  %41 = load ptr, ptr %match_free, align 8, !dbg !4629
  %tobool64 = icmp ne ptr %41, null, !dbg !4627
  br i1 %tobool64, label %if.then65, label %if.end68, !dbg !4630

if.then65:                                        ; preds = %error_free
  %42 = load ptr, ptr %type.addr, align 8, !dbg !4631
  %match_free66 = getelementptr inbounds %struct.key_type, ptr %42, i32 0, i32 9, !dbg !4632
  %43 = load ptr, ptr %match_free66, align 8, !dbg !4632
  %match_data67 = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 2, !dbg !4633
  call void %43(ptr noundef %match_data67) #12, !dbg !4631
  br label %if.end68, !dbg !4631

if.end68:                                         ; preds = %if.then65, %error_free
  br label %error, !dbg !4629

error:                                            ; preds = %if.end68, %if.then13
  call void @llvm.dbg.label(metadata !4483), !dbg !4634
  store i32 0, ptr %tmp69, align 4, !dbg !4635
  %44 = load i32, ptr %tmp69, align 4, !dbg !4638
  %45 = load ptr, ptr %key, align 8, !dbg !4639
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !4640
  call void @llvm.lifetime.end.p0(i64 8, ptr %key_ref) #11, !dbg !4640
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #11, !dbg !4640
  call void @llvm.lifetime.end.p0(i64 120, ptr %ctx) #11, !dbg !4640
  ret ptr %45, !dbg !4641
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4642 dso_local i64 @strlen(ptr noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #6 align 16 !dbg !4646 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #11, !dbg !4657
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4651, metadata !DIExpression()), !dbg !4657
  br label %do.body, !dbg !4657

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !4658
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4653, metadata !DIExpression()), !dbg !4658
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4658
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4658
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !4657
  br label %do.cond, !dbg !4658

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4658

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #11, !dbg !4659
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4655, metadata !DIExpression()), !dbg !4659
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #13, !dbg !4659, !srcloc !4660
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4659
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4659
  %3 = inttoptr i64 %2 to ptr, !dbg !4659
  store ptr %3, ptr %tmp, align 8, !dbg !4659
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #11, !dbg !4657
  %4 = load ptr, ptr %tmp, align 8, !dbg !4659
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4657
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4657
  store ptr %5, ptr %tmp1, align 8, !dbg !4657
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #11, !dbg !4661
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4657
  ret ptr %6, !dbg !4662
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @key_default_cmp(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #3 align 16 !dbg !4663 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !4668, metadata !DIExpression()), !dbg !4669
  %0 = load i64, ptr %error.addr, align 8, !dbg !4670
  %1 = inttoptr i64 %0 to ptr, !dbg !4671
  ret ptr %1, !dbg !4672
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @check_cached_key(ptr noundef %ctx) #0 align 16 !dbg !4673 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !4678, metadata !DIExpression()), !dbg !4679
  ret ptr null, !dbg !4680
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #6 align 16 !dbg !4681 {
entry:
  call void @__rcu_read_lock() #12, !dbg !4683
  br label %do.body, !dbg !4684

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4685

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !4687

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4688

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !4690
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4691 dso_local ptr @search_process_keyrings_rcu(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #3 align 16 !dbg !4694 {
entry:
  br label %do.body, !dbg !4695

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4696

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #12, !dbg !4698
  br label %do.body1, !dbg !4699

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4700

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !4702
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !4703 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4707, metadata !DIExpression()), !dbg !4708
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4709
  %1 = ptrtoint ptr %0 to i64, !dbg !4709
  %2 = inttoptr i64 %1 to ptr, !dbg !4709
  %3 = ptrtoint ptr %2 to i64, !dbg !4709
  %cmp = icmp uge i64 %3, -4095, !dbg !4709
  %lnot = xor i1 %cmp, true, !dbg !4709
  %lnot1 = xor i1 %lnot, true, !dbg !4709
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4709
  %conv = sext i32 %lnot.ext to i64, !dbg !4709
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4709
  %tobool = icmp ne i64 %expval, 0, !dbg !4709
  ret i1 %tobool, !dbg !4710
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4711 dso_local i32 @key_task_permission(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @key_ref_put(ptr noundef %key_ref) #3 align 16 !dbg !4715 {
entry:
  %key_ref.addr = alloca ptr, align 8
  store ptr %key_ref, ptr %key_ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key_ref.addr, metadata !4719, metadata !DIExpression()), !dbg !4720
  %0 = load ptr, ptr %key_ref.addr, align 8, !dbg !4721
  %call = call ptr @key_ref_to_ptr(ptr noundef %0) #12, !dbg !4722
  call void @key_put(ptr noundef %call) #12, !dbg !4723
  ret void, !dbg !4724
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @key_ref_to_ptr(ptr noundef %key_ref) #3 align 16 !dbg !4725 {
entry:
  %key_ref.addr = alloca ptr, align 8
  store ptr %key_ref, ptr %key_ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key_ref.addr, metadata !4729, metadata !DIExpression()), !dbg !4730
  %0 = load ptr, ptr %key_ref.addr, align 8, !dbg !4731
  %1 = ptrtoint ptr %0 to i64, !dbg !4732
  %and = and i64 %1, -2, !dbg !4733
  %2 = inttoptr i64 %and to ptr, !dbg !4734
  ret ptr %2, !dbg !4735
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4736 dso_local i32 @key_link(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4739 dso_local void @key_put(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cache_requested_key(ptr noundef %key) #0 align 16 !dbg !4740 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4742, metadata !DIExpression()), !dbg !4743
  ret void, !dbg !4744
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !4745 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4749, metadata !DIExpression()), !dbg !4750
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4751
  %1 = ptrtoint ptr %0 to i64, !dbg !4752
  ret i64 %1, !dbg !4753
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_CAST(ptr noundef %ptr) #3 align 16 !dbg !4754 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4758, metadata !DIExpression()), !dbg !4759
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4760
  ret ptr %0, !dbg !4761
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @construct_key_and_link(ptr noundef %ctx, ptr noundef %callout_info, i64 noundef %callout_len, ptr noundef %aux, ptr noundef %dest_keyring, i64 noundef %flags) #0 align 16 !dbg !4762 {
entry:
  %retval = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %callout_info.addr = alloca ptr, align 8
  %callout_len.addr = alloca i64, align 8
  %aux.addr = alloca ptr, align 8
  %dest_keyring.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %user = alloca ptr, align 8
  %key = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %agg.tmp = alloca %struct.kuid_t, align 4
  %tmp4 = alloca ptr, align 8
  %tmp16 = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  %tmp25 = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !4766, metadata !DIExpression()), !dbg !4778
  store ptr %callout_info, ptr %callout_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %callout_info.addr, metadata !4767, metadata !DIExpression()), !dbg !4779
  store i64 %callout_len, ptr %callout_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %callout_len.addr, metadata !4768, metadata !DIExpression()), !dbg !4780
  store ptr %aux, ptr %aux.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aux.addr, metadata !4769, metadata !DIExpression()), !dbg !4781
  store ptr %dest_keyring, ptr %dest_keyring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest_keyring.addr, metadata !4770, metadata !DIExpression()), !dbg !4782
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4771, metadata !DIExpression()), !dbg !4783
  call void @llvm.lifetime.start.p0(i64 8, ptr %user) #11, !dbg !4784
  call void @llvm.dbg.declare(metadata ptr %user, metadata !4772, metadata !DIExpression()), !dbg !4785
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #11, !dbg !4786
  call void @llvm.dbg.declare(metadata ptr %key, metadata !4773, metadata !DIExpression()), !dbg !4787
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !4788
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4774, metadata !DIExpression()), !dbg !4789
  store i32 0, ptr %tmp, align 4, !dbg !4790
  %0 = load i32, ptr %tmp, align 4, !dbg !4793
  %1 = load ptr, ptr %ctx.addr, align 8, !dbg !4794
  %index_key = getelementptr inbounds %struct.keyring_search_context, ptr %1, i32 0, i32 0, !dbg !4796
  %type = getelementptr inbounds %struct.keyring_index_key, ptr %index_key, i32 0, i32 2, !dbg !4797
  %2 = load ptr, ptr %type, align 8, !dbg !4797
  %cmp = icmp eq ptr %2, @key_type_keyring, !dbg !4798
  br i1 %cmp, label %if.then, label %if.end, !dbg !4799

if.then:                                          ; preds = %entry
  %call = call ptr @ERR_PTR(i64 noundef -1) #12, !dbg !4800
  store ptr %call, ptr %retval, align 8, !dbg !4801
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4801

if.end:                                           ; preds = %entry
  %call1 = call i32 @construct_get_dest_keyring(ptr noundef %dest_keyring.addr) #12, !dbg !4802
  store i32 %call1, ptr %ret, align 4, !dbg !4803
  %3 = load i32, ptr %ret, align 4, !dbg !4804
  %tobool = icmp ne i32 %3, 0, !dbg !4804
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !4806

if.then2:                                         ; preds = %if.end
  br label %error, !dbg !4807

if.end3:                                          ; preds = %if.end
  br label %do.body, !dbg !4808

do.body:                                          ; preds = %if.end3
  br label %do.cond, !dbg !4811

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4811

do.end:                                           ; preds = %do.cond
  %call5 = call ptr @get_current() #12, !dbg !4808
  %cred = getelementptr inbounds %struct.task_struct, ptr %call5, i32 0, i32 94, !dbg !4808
  %4 = load ptr, ptr %cred, align 32, !dbg !4808
  store ptr %4, ptr %tmp4, align 8, !dbg !4811
  %5 = load ptr, ptr %tmp4, align 8, !dbg !4808
  %fsuid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 7, !dbg !4813
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %agg.tmp, ptr align 8 %fsuid, i64 4, i1 false), !dbg !4813
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !4814
  %6 = load i32, ptr %coerce.dive, align 4, !dbg !4814
  %call6 = call ptr @key_user_lookup(i32 %6) #12, !dbg !4814
  store ptr %call6, ptr %user, align 8, !dbg !4815
  %7 = load ptr, ptr %user, align 8, !dbg !4816
  %tobool7 = icmp ne ptr %7, null, !dbg !4816
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !4818

if.then8:                                         ; preds = %do.end
  store i32 -12, ptr %ret, align 4, !dbg !4819
  br label %error_put_dest_keyring, !dbg !4821

if.end9:                                          ; preds = %do.end
  %8 = load ptr, ptr %ctx.addr, align 8, !dbg !4822
  %9 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !4823
  %10 = load i64, ptr %flags.addr, align 8, !dbg !4824
  %11 = load ptr, ptr %user, align 8, !dbg !4825
  %call10 = call i32 @construct_alloc_key(ptr noundef %8, ptr noundef %9, i64 noundef %10, ptr noundef %11, ptr noundef %key) #12, !dbg !4826
  store i32 %call10, ptr %ret, align 4, !dbg !4827
  %12 = load ptr, ptr %user, align 8, !dbg !4828
  call void @key_user_put(ptr noundef %12) #12, !dbg !4829
  %13 = load i32, ptr %ret, align 4, !dbg !4830
  %cmp11 = icmp eq i32 %13, 0, !dbg !4832
  br i1 %cmp11, label %if.then12, label %if.else, !dbg !4833

if.then12:                                        ; preds = %if.end9
  %14 = load ptr, ptr %key, align 8, !dbg !4834
  %15 = load ptr, ptr %callout_info.addr, align 8, !dbg !4836
  %16 = load i64, ptr %callout_len.addr, align 8, !dbg !4837
  %17 = load ptr, ptr %aux.addr, align 8, !dbg !4838
  %18 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !4839
  %call13 = call i32 @construct_key(ptr noundef %14, ptr noundef %15, i64 noundef %16, ptr noundef %17, ptr noundef %18) #12, !dbg !4840
  store i32 %call13, ptr %ret, align 4, !dbg !4841
  %19 = load i32, ptr %ret, align 4, !dbg !4842
  %cmp14 = icmp slt i32 %19, 0, !dbg !4844
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !4845

if.then15:                                        ; preds = %if.then12
  store i32 0, ptr %tmp16, align 4, !dbg !4846
  %20 = load i32, ptr %tmp16, align 4, !dbg !4850
  br label %construction_failed, !dbg !4851

if.end17:                                         ; preds = %if.then12
  br label %if.end22, !dbg !4852

if.else:                                          ; preds = %if.end9
  %21 = load i32, ptr %ret, align 4, !dbg !4853
  %cmp18 = icmp eq i32 %21, -115, !dbg !4855
  br i1 %cmp18, label %if.then19, label %if.else20, !dbg !4856

if.then19:                                        ; preds = %if.else
  store i32 0, ptr %ret, align 4, !dbg !4857
  br label %if.end21, !dbg !4859

if.else20:                                        ; preds = %if.else
  br label %error_put_dest_keyring, !dbg !4860

if.end21:                                         ; preds = %if.then19
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end17
  %22 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !4862
  call void @key_put(ptr noundef %22) #12, !dbg !4863
  store i32 0, ptr %tmp23, align 4, !dbg !4864
  %23 = load i32, ptr %tmp23, align 4, !dbg !4867
  %24 = load ptr, ptr %key, align 8, !dbg !4868
  store ptr %24, ptr %retval, align 8, !dbg !4869
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4869

construction_failed:                              ; preds = %if.then15
  call void @llvm.dbg.label(metadata !4775), !dbg !4870
  %25 = load ptr, ptr %key, align 8, !dbg !4871
  %call24 = call i32 @key_negate_and_link(ptr noundef %25, i32 noundef 60, ptr noundef null, ptr noundef null) #12, !dbg !4872
  %26 = load ptr, ptr %key, align 8, !dbg !4873
  call void @key_put(ptr noundef %26) #12, !dbg !4874
  br label %error_put_dest_keyring, !dbg !4874

error_put_dest_keyring:                           ; preds = %construction_failed, %if.else20, %if.then8
  call void @llvm.dbg.label(metadata !4776), !dbg !4875
  %27 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !4876
  call void @key_put(ptr noundef %27) #12, !dbg !4877
  br label %error, !dbg !4877

error:                                            ; preds = %error_put_dest_keyring, %if.then2
  call void @llvm.dbg.label(metadata !4777), !dbg !4878
  store i32 0, ptr %tmp25, align 4, !dbg !4879
  %28 = load i32, ptr %tmp25, align 4, !dbg !4882
  %29 = load i32, ptr %ret, align 4, !dbg !4883
  %conv = sext i32 %29 to i64, !dbg !4883
  %call26 = call ptr @ERR_PTR(i64 noundef %conv) #12, !dbg !4884
  store ptr %call26, ptr %retval, align 8, !dbg !4885
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4885

cleanup:                                          ; preds = %error, %if.end22, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !4886
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #11, !dbg !4886
  call void @llvm.lifetime.end.p0(i64 8, ptr %user) #11, !dbg !4886
  %30 = load ptr, ptr %retval, align 8, !dbg !4886
  ret ptr %30, !dbg !4886
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @wait_for_key_construction(ptr noundef %key, i1 noundef zeroext %intr) #0 align 16 !dbg !4887 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca ptr, align 8
  %intr.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4891, metadata !DIExpression()), !dbg !4894
  %frombool = zext i1 %intr to i8
  store i8 %frombool, ptr %intr.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %intr.addr, metadata !4892, metadata !DIExpression()), !dbg !4895
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !4896
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4893, metadata !DIExpression()), !dbg !4897
  %0 = load ptr, ptr %key.addr, align 8, !dbg !4898
  %flags = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 14, !dbg !4899
  %1 = load i8, ptr %intr.addr, align 1, !dbg !4900, !range !4901, !noundef !1147
  %tobool = trunc i8 %1 to i1, !dbg !4900
  %2 = zext i1 %tobool to i64, !dbg !4900
  %cond = select i1 %tobool, i32 1, i32 2, !dbg !4900
  %call = call i32 @wait_on_bit(ptr noundef %flags, i32 noundef 3, i32 noundef %cond) #12, !dbg !4902
  store i32 %call, ptr %ret, align 4, !dbg !4903
  %3 = load i32, ptr %ret, align 4, !dbg !4904
  %tobool1 = icmp ne i32 %3, 0, !dbg !4904
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4906

if.then:                                          ; preds = %entry
  store i32 -512, ptr %retval, align 4, !dbg !4907
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4907

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %key.addr, align 8, !dbg !4908
  %call2 = call signext i16 @key_read_state(ptr noundef %4) #12, !dbg !4909
  %conv = sext i16 %call2 to i32, !dbg !4909
  store i32 %conv, ptr %ret, align 4, !dbg !4910
  %5 = load i32, ptr %ret, align 4, !dbg !4911
  %cmp = icmp slt i32 %5, 0, !dbg !4913
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !4914

if.then4:                                         ; preds = %if.end
  %6 = load i32, ptr %ret, align 4, !dbg !4915
  store i32 %6, ptr %retval, align 4, !dbg !4916
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4916

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %key.addr, align 8, !dbg !4917
  %call6 = call i32 @key_validate(ptr noundef %7) #12, !dbg !4918
  store i32 %call6, ptr %retval, align 4, !dbg !4919
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4919

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !4920
  %8 = load i32, ptr %retval, align 4, !dbg !4920
  ret i32 %8, !dbg !4920
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @wait_on_bit(ptr noundef %word, i32 noundef %bit, i32 noundef %mode) #3 align 16 !dbg !4921 {
entry:
  %retval = alloca i32, align 4
  %word.addr = alloca ptr, align 8
  %bit.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  store ptr %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !4926, metadata !DIExpression()), !dbg !4929
  store i32 %bit, ptr %bit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !4927, metadata !DIExpression()), !dbg !4930
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !4928, metadata !DIExpression()), !dbg !4931
  br label %do.body, !dbg !4932

do.body:                                          ; preds = %entry
  call void @might_resched() #12, !dbg !4933
  br label %do.end, !dbg !4933

do.end:                                           ; preds = %do.body
  %0 = load i32, ptr %bit.addr, align 4, !dbg !4935
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !4935
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !4935

land.lhs.true:                                    ; preds = %do.end
  %2 = load ptr, ptr %word.addr, align 8, !dbg !4935
  %3 = ptrtoint ptr %2 to i64, !dbg !4935
  %cmp = icmp ne i64 %3, 0, !dbg !4935
  %conv = zext i1 %cmp to i32, !dbg !4935
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !4935
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !4935

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %word.addr, align 8, !dbg !4935
  %6 = ptrtoint ptr %5 to i64, !dbg !4935
  %cmp2 = icmp ne i64 %6, 0, !dbg !4935
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !4935

land.lhs.true4:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %word.addr, align 8, !dbg !4935
  %8 = load i64, ptr %7, align 8, !dbg !4935
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !4935
  br i1 %9, label %cond.true, label %cond.false, !dbg !4937

cond.true:                                        ; preds = %land.lhs.true4
  %10 = load i32, ptr %bit.addr, align 4, !dbg !4935
  %conv5 = sext i32 %10 to i64, !dbg !4935
  %11 = load ptr, ptr %word.addr, align 8, !dbg !4935
  %call = call zeroext i1 @generic_test_bit_acquire(i64 noundef %conv5, ptr noundef %11) #12, !dbg !4935
  br i1 %call, label %if.end, label %if.then, !dbg !4935

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true1, %land.lhs.true, %do.end
  %12 = load i32, ptr %bit.addr, align 4, !dbg !4935
  %conv7 = sext i32 %12 to i64, !dbg !4935
  %13 = load ptr, ptr %word.addr, align 8, !dbg !4935
  %call8 = call zeroext i1 @_test_bit_acquire(i64 noundef %conv7, ptr noundef %13) #12, !dbg !4935
  br i1 %call8, label %if.end, label %if.then, !dbg !4937

if.then:                                          ; preds = %cond.false, %cond.true
  store i32 0, ptr %retval, align 4, !dbg !4938
  br label %return, !dbg !4938

if.end:                                           ; preds = %cond.false, %cond.true
  %14 = load ptr, ptr %word.addr, align 8, !dbg !4939
  %15 = load i32, ptr %bit.addr, align 4, !dbg !4940
  %16 = load i32, ptr %mode.addr, align 4, !dbg !4941
  %call10 = call i32 @out_of_line_wait_on_bit(ptr noundef %14, i32 noundef %15, ptr noundef @bit_wait, i32 noundef %16) #12, !dbg !4942
  store i32 %call10, ptr %retval, align 4, !dbg !4943
  br label %return, !dbg !4943

return:                                           ; preds = %if.end, %if.then
  %17 = load i32, ptr %retval, align 4, !dbg !4944
  ret i32 %17, !dbg !4944
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal signext i16 @key_read_state(ptr noundef %key) #3 align 16 !dbg !4945 {
entry:
  %key.addr = alloca ptr, align 8
  %___p1 = alloca i16, align 2
  %tmp = alloca i16, align 2
  %tmp4 = alloca i16, align 2
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4949, metadata !DIExpression()), !dbg !4953
  call void @llvm.lifetime.start.p0(i64 2, ptr %___p1) #11, !dbg !4954
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !4950, metadata !DIExpression()), !dbg !4954
  br label %do.body, !dbg !4955

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4957

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4957

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %key.addr, align 8, !dbg !4955
  %state = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 13, !dbg !4955
  %1 = load volatile i16, ptr %state, align 8, !dbg !4955
  store i16 %1, ptr %tmp, align 2, !dbg !4957
  %2 = load i16, ptr %tmp, align 2, !dbg !4955
  store i16 %2, ptr %___p1, align 2, !dbg !4954
  br label %do.body1, !dbg !4954

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !4959

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !4959

do.end3:                                          ; preds = %do.cond2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !4954, !srcloc !4961
  %3 = load i16, ptr %___p1, align 2, !dbg !4954
  store i16 %3, ptr %tmp4, align 2, !dbg !4954
  call void @llvm.lifetime.end.p0(i64 2, ptr %___p1) #11, !dbg !4962
  %4 = load i16, ptr %tmp4, align 2, !dbg !4954
  ret i16 %4, !dbg !4963
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4964 dso_local i32 @key_validate(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @request_key_tag(ptr noundef %type, ptr noundef %description, ptr noundef %domain_tag, ptr noundef %callout_info) #0 align 16 !dbg !4967 {
entry:
  %retval = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %domain_tag.addr = alloca ptr, align 8
  %callout_info.addr = alloca ptr, align 8
  %key = alloca ptr, align 8
  %callout_len = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4971, metadata !DIExpression()), !dbg !4978
  store ptr %description, ptr %description.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !4972, metadata !DIExpression()), !dbg !4979
  store ptr %domain_tag, ptr %domain_tag.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain_tag.addr, metadata !4973, metadata !DIExpression()), !dbg !4980
  store ptr %callout_info, ptr %callout_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %callout_info.addr, metadata !4974, metadata !DIExpression()), !dbg !4981
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #11, !dbg !4982
  call void @llvm.dbg.declare(metadata ptr %key, metadata !4975, metadata !DIExpression()), !dbg !4983
  call void @llvm.lifetime.start.p0(i64 8, ptr %callout_len) #11, !dbg !4984
  call void @llvm.dbg.declare(metadata ptr %callout_len, metadata !4976, metadata !DIExpression()), !dbg !4985
  store i64 0, ptr %callout_len, align 8, !dbg !4985
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !4986
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4977, metadata !DIExpression()), !dbg !4987
  %0 = load ptr, ptr %callout_info.addr, align 8, !dbg !4988
  %tobool = icmp ne ptr %0, null, !dbg !4988
  br i1 %tobool, label %if.then, label %if.end, !dbg !4990

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %callout_info.addr, align 8, !dbg !4991
  %call = call i64 @strlen(ptr noundef %1) #12, !dbg !4992
  store i64 %call, ptr %callout_len, align 8, !dbg !4993
  br label %if.end, !dbg !4994

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %type.addr, align 8, !dbg !4995
  %3 = load ptr, ptr %description.addr, align 8, !dbg !4996
  %4 = load ptr, ptr %domain_tag.addr, align 8, !dbg !4997
  %5 = load ptr, ptr %callout_info.addr, align 8, !dbg !4998
  %6 = load i64, ptr %callout_len, align 8, !dbg !4999
  %call1 = call ptr @request_key_and_link(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef null, ptr noundef null, i64 noundef 0) #12, !dbg !5000
  store ptr %call1, ptr %key, align 8, !dbg !5001
  %7 = load ptr, ptr %key, align 8, !dbg !5002
  %call2 = call zeroext i1 @IS_ERR(ptr noundef %7) #12, !dbg !5004
  br i1 %call2, label %if.end8, label %if.then3, !dbg !5005

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %key, align 8, !dbg !5006
  %call4 = call i32 @wait_for_key_construction(ptr noundef %8, i1 noundef zeroext false) #12, !dbg !5008
  store i32 %call4, ptr %ret, align 4, !dbg !5009
  %9 = load i32, ptr %ret, align 4, !dbg !5010
  %cmp = icmp slt i32 %9, 0, !dbg !5012
  br i1 %cmp, label %if.then5, label %if.end7, !dbg !5013

if.then5:                                         ; preds = %if.then3
  %10 = load ptr, ptr %key, align 8, !dbg !5014
  call void @key_put(ptr noundef %10) #12, !dbg !5016
  %11 = load i32, ptr %ret, align 4, !dbg !5017
  %conv = sext i32 %11 to i64, !dbg !5017
  %call6 = call ptr @ERR_PTR(i64 noundef %conv) #12, !dbg !5018
  store ptr %call6, ptr %retval, align 8, !dbg !5019
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5019

if.end7:                                          ; preds = %if.then3
  br label %if.end8, !dbg !5020

if.end8:                                          ; preds = %if.end7, %if.end
  %12 = load ptr, ptr %key, align 8, !dbg !5021
  store ptr %12, ptr %retval, align 8, !dbg !5022
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5022

cleanup:                                          ; preds = %if.end8, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !5023
  call void @llvm.lifetime.end.p0(i64 8, ptr %callout_len) #11, !dbg !5023
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #11, !dbg !5023
  %13 = load ptr, ptr %retval, align 8, !dbg !5023
  ret ptr %13, !dbg !5023
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @request_key_with_auxdata(ptr noundef %type, ptr noundef %description, ptr noundef %domain_tag, ptr noundef %callout_info, i64 noundef %callout_len, ptr noundef %aux) #0 align 16 !dbg !5024 {
entry:
  %retval = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %domain_tag.addr = alloca ptr, align 8
  %callout_info.addr = alloca ptr, align 8
  %callout_len.addr = alloca i64, align 8
  %aux.addr = alloca ptr, align 8
  %key = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5028, metadata !DIExpression()), !dbg !5036
  store ptr %description, ptr %description.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !5029, metadata !DIExpression()), !dbg !5037
  store ptr %domain_tag, ptr %domain_tag.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain_tag.addr, metadata !5030, metadata !DIExpression()), !dbg !5038
  store ptr %callout_info, ptr %callout_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %callout_info.addr, metadata !5031, metadata !DIExpression()), !dbg !5039
  store i64 %callout_len, ptr %callout_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %callout_len.addr, metadata !5032, metadata !DIExpression()), !dbg !5040
  store ptr %aux, ptr %aux.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aux.addr, metadata !5033, metadata !DIExpression()), !dbg !5041
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #11, !dbg !5042
  call void @llvm.dbg.declare(metadata ptr %key, metadata !5034, metadata !DIExpression()), !dbg !5043
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !5044
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5035, metadata !DIExpression()), !dbg !5045
  %0 = load ptr, ptr %type.addr, align 8, !dbg !5046
  %1 = load ptr, ptr %description.addr, align 8, !dbg !5047
  %2 = load ptr, ptr %domain_tag.addr, align 8, !dbg !5048
  %3 = load ptr, ptr %callout_info.addr, align 8, !dbg !5049
  %4 = load i64, ptr %callout_len.addr, align 8, !dbg !5050
  %5 = load ptr, ptr %aux.addr, align 8, !dbg !5051
  %call = call ptr @request_key_and_link(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef null, i64 noundef 0) #12, !dbg !5052
  store ptr %call, ptr %key, align 8, !dbg !5053
  %6 = load ptr, ptr %key, align 8, !dbg !5054
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %6) #12, !dbg !5056
  br i1 %call1, label %if.end5, label %if.then, !dbg !5057

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %key, align 8, !dbg !5058
  %call2 = call i32 @wait_for_key_construction(ptr noundef %7, i1 noundef zeroext false) #12, !dbg !5060
  store i32 %call2, ptr %ret, align 4, !dbg !5061
  %8 = load i32, ptr %ret, align 4, !dbg !5062
  %cmp = icmp slt i32 %8, 0, !dbg !5064
  br i1 %cmp, label %if.then3, label %if.end, !dbg !5065

if.then3:                                         ; preds = %if.then
  %9 = load ptr, ptr %key, align 8, !dbg !5066
  call void @key_put(ptr noundef %9) #12, !dbg !5068
  %10 = load i32, ptr %ret, align 4, !dbg !5069
  %conv = sext i32 %10 to i64, !dbg !5069
  %call4 = call ptr @ERR_PTR(i64 noundef %conv) #12, !dbg !5070
  store ptr %call4, ptr %retval, align 8, !dbg !5071
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5071

if.end:                                           ; preds = %if.then
  br label %if.end5, !dbg !5072

if.end5:                                          ; preds = %if.end, %entry
  %11 = load ptr, ptr %key, align 8, !dbg !5073
  store ptr %11, ptr %retval, align 8, !dbg !5074
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5074

cleanup:                                          ; preds = %if.end5, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !5075
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #11, !dbg !5075
  %12 = load ptr, ptr %retval, align 8, !dbg !5075
  ret ptr %12, !dbg !5075
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @request_key_rcu(ptr noundef %type, ptr noundef %description, ptr noundef %domain_tag) #0 align 16 !dbg !5076 {
entry:
  %retval = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  %description.addr = alloca ptr, align 8
  %domain_tag.addr = alloca ptr, align 8
  %ctx = alloca %struct.keyring_search_context, align 8
  %tmp = alloca ptr, align 8
  %key = alloca ptr, align 8
  %key_ref = alloca ptr, align 8
  %tmp6 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5080, metadata !DIExpression()), !dbg !5086
  store ptr %description, ptr %description.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %description.addr, metadata !5081, metadata !DIExpression()), !dbg !5087
  store ptr %domain_tag, ptr %domain_tag.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain_tag.addr, metadata !5082, metadata !DIExpression()), !dbg !5088
  call void @llvm.lifetime.start.p0(i64 120, ptr %ctx) #11, !dbg !5089
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !5083, metadata !DIExpression()), !dbg !5090
  %index_key = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 0, !dbg !5091
  %hash = getelementptr inbounds %struct.keyring_index_key, ptr %index_key, i32 0, i32 0, !dbg !5092
  store i64 0, ptr %hash, align 8, !dbg !5092
  %0 = getelementptr inbounds %struct.keyring_index_key, ptr %index_key, i32 0, i32 1, !dbg !5092
  %desc_len = getelementptr inbounds %struct.anon.15, ptr %0, i32 0, i32 0, !dbg !5093
  %1 = load ptr, ptr %description.addr, align 8, !dbg !5094
  %call = call i64 @strlen(ptr noundef %1) #12, !dbg !5095
  %conv = trunc i64 %call to i16, !dbg !5095
  store i16 %conv, ptr %desc_len, align 8, !dbg !5093
  %desc = getelementptr inbounds %struct.anon.15, ptr %0, i32 0, i32 1, !dbg !5093
  call void @llvm.memset.p0.i64(ptr align 2 %desc, i8 0, i64 6, i1 false), !dbg !5093
  %type1 = getelementptr inbounds %struct.keyring_index_key, ptr %index_key, i32 0, i32 2, !dbg !5092
  %2 = load ptr, ptr %type.addr, align 8, !dbg !5096
  store ptr %2, ptr %type1, align 8, !dbg !5092
  %domain_tag2 = getelementptr inbounds %struct.keyring_index_key, ptr %index_key, i32 0, i32 3, !dbg !5092
  %3 = load ptr, ptr %domain_tag.addr, align 8, !dbg !5097
  store ptr %3, ptr %domain_tag2, align 8, !dbg !5092
  %description3 = getelementptr inbounds %struct.keyring_index_key, ptr %index_key, i32 0, i32 4, !dbg !5092
  %4 = load ptr, ptr %description.addr, align 8, !dbg !5098
  store ptr %4, ptr %description3, align 8, !dbg !5092
  %cred = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 1, !dbg !5091
  br label %do.body, !dbg !5099

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5101

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5101

do.end:                                           ; preds = %do.cond
  %call4 = call ptr @get_current() #12, !dbg !5099
  %cred5 = getelementptr inbounds %struct.task_struct, ptr %call4, i32 0, i32 94, !dbg !5099
  %5 = load ptr, ptr %cred5, align 32, !dbg !5099
  store ptr %5, ptr %tmp, align 8, !dbg !5101
  %6 = load ptr, ptr %tmp, align 8, !dbg !5099
  store ptr %6, ptr %cred, align 8, !dbg !5091
  %match_data = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 2, !dbg !5091
  %cmp = getelementptr inbounds %struct.key_match_data, ptr %match_data, i32 0, i32 0, !dbg !5103
  store ptr @key_default_cmp, ptr %cmp, align 8, !dbg !5103
  %raw_data = getelementptr inbounds %struct.key_match_data, ptr %match_data, i32 0, i32 1, !dbg !5103
  %7 = load ptr, ptr %description.addr, align 8, !dbg !5104
  store ptr %7, ptr %raw_data, align 8, !dbg !5103
  %preparsed = getelementptr inbounds %struct.key_match_data, ptr %match_data, i32 0, i32 2, !dbg !5103
  store ptr null, ptr %preparsed, align 8, !dbg !5103
  %lookup_type = getelementptr inbounds %struct.key_match_data, ptr %match_data, i32 0, i32 3, !dbg !5103
  store i32 0, ptr %lookup_type, align 8, !dbg !5103
  %flags = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 3, !dbg !5091
  store i32 34, ptr %flags, align 8, !dbg !5091
  %iterator = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 4, !dbg !5091
  store ptr null, ptr %iterator, align 8, !dbg !5091
  %skipped_ret = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 5, !dbg !5091
  store i32 0, ptr %skipped_ret, align 8, !dbg !5091
  %possessed = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 6, !dbg !5091
  store i8 0, ptr %possessed, align 4, !dbg !5091
  %result = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 7, !dbg !5091
  store ptr null, ptr %result, align 8, !dbg !5091
  %now = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 8, !dbg !5091
  store i64 0, ptr %now, align 8, !dbg !5091
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #11, !dbg !5105
  call void @llvm.dbg.declare(metadata ptr %key, metadata !5084, metadata !DIExpression()), !dbg !5106
  call void @llvm.lifetime.start.p0(i64 8, ptr %key_ref) #11, !dbg !5107
  call void @llvm.dbg.declare(metadata ptr %key_ref, metadata !5085, metadata !DIExpression()), !dbg !5108
  store i32 0, ptr %tmp6, align 4, !dbg !5109
  %8 = load i32, ptr %tmp6, align 4, !dbg !5112
  %call7 = call ptr @check_cached_key(ptr noundef %ctx) #12, !dbg !5113
  store ptr %call7, ptr %key, align 8, !dbg !5114
  %9 = load ptr, ptr %key, align 8, !dbg !5115
  %tobool = icmp ne ptr %9, null, !dbg !5115
  br i1 %tobool, label %if.then, label %if.end, !dbg !5117

if.then:                                          ; preds = %do.end
  %10 = load ptr, ptr %key, align 8, !dbg !5118
  store ptr %10, ptr %retval, align 8, !dbg !5119
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5119

if.end:                                           ; preds = %do.end
  %call8 = call ptr @search_process_keyrings_rcu(ptr noundef %ctx) #12, !dbg !5120
  store ptr %call8, ptr %key_ref, align 8, !dbg !5121
  %11 = load ptr, ptr %key_ref, align 8, !dbg !5122
  %call9 = call zeroext i1 @IS_ERR(ptr noundef %11) #12, !dbg !5124
  br i1 %call9, label %if.then10, label %if.else, !dbg !5125

if.then10:                                        ; preds = %if.end
  %12 = load ptr, ptr %key_ref, align 8, !dbg !5126
  %call11 = call ptr @ERR_CAST(ptr noundef %12) #12, !dbg !5128
  store ptr %call11, ptr %key, align 8, !dbg !5129
  %13 = load ptr, ptr %key_ref, align 8, !dbg !5130
  %call12 = call i64 @PTR_ERR(ptr noundef %13) #12, !dbg !5132
  %cmp13 = icmp eq i64 %call12, -11, !dbg !5133
  br i1 %cmp13, label %if.then15, label %if.end17, !dbg !5134

if.then15:                                        ; preds = %if.then10
  %call16 = call ptr @ERR_PTR(i64 noundef -126) #12, !dbg !5135
  store ptr %call16, ptr %key, align 8, !dbg !5136
  br label %if.end17, !dbg !5137

if.end17:                                         ; preds = %if.then15, %if.then10
  br label %if.end19, !dbg !5138

if.else:                                          ; preds = %if.end
  %14 = load ptr, ptr %key_ref, align 8, !dbg !5139
  %call18 = call ptr @key_ref_to_ptr(ptr noundef %14) #12, !dbg !5141
  store ptr %call18, ptr %key, align 8, !dbg !5142
  %15 = load ptr, ptr %key, align 8, !dbg !5143
  call void @cache_requested_key(ptr noundef %15) #12, !dbg !5144
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end17
  store i32 0, ptr %tmp20, align 4, !dbg !5145
  %16 = load i32, ptr %tmp20, align 4, !dbg !5148
  %17 = load ptr, ptr %key, align 8, !dbg !5149
  store ptr %17, ptr %retval, align 8, !dbg !5150
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5150

cleanup:                                          ; preds = %if.end19, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %key_ref) #11, !dbg !5151
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #11, !dbg !5151
  call void @llvm.lifetime.end.p0(i64 120, ptr %ctx) #11, !dbg !5151
  %18 = load ptr, ptr %retval, align 8, !dbg !5151
  ret ptr %18, !dbg !5151
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5152 dso_local i32 @key_reject_and_link(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5155 dso_local void @__rcu_read_lock() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5156 dso_local void @__rcu_read_unlock() #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @construct_get_dest_keyring(ptr noundef %_dest_keyring) #0 align 16 !dbg !5157 {
entry:
  %retval = alloca i32, align 4
  %_dest_keyring.addr = alloca ptr, align 8
  %rka = alloca ptr, align 8
  %cred = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %dest_keyring = alloca ptr, align 8
  %authkey = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %do_perm_check = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %tmp77 = alloca i32, align 4
  store ptr %_dest_keyring, ptr %_dest_keyring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_dest_keyring.addr, metadata !5162, metadata !DIExpression()), !dbg !5171
  call void @llvm.lifetime.start.p0(i64 8, ptr %rka) #11, !dbg !5172
  call void @llvm.dbg.declare(metadata ptr %rka, metadata !5163, metadata !DIExpression()), !dbg !5173
  call void @llvm.lifetime.start.p0(i64 8, ptr %cred) #11, !dbg !5174
  call void @llvm.dbg.declare(metadata ptr %cred, metadata !5164, metadata !DIExpression()), !dbg !5175
  br label %do.body, !dbg !5176

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5178

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5178

do.end:                                           ; preds = %do.cond
  %call = call ptr @get_current() #12, !dbg !5176
  %cred1 = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 94, !dbg !5176
  %0 = load ptr, ptr %cred1, align 32, !dbg !5176
  store ptr %0, ptr %tmp, align 8, !dbg !5178
  %1 = load ptr, ptr %tmp, align 8, !dbg !5176
  store ptr %1, ptr %cred, align 8, !dbg !5175
  call void @llvm.lifetime.start.p0(i64 8, ptr %dest_keyring) #11, !dbg !5180
  call void @llvm.dbg.declare(metadata ptr %dest_keyring, metadata !5165, metadata !DIExpression()), !dbg !5181
  %2 = load ptr, ptr %_dest_keyring.addr, align 8, !dbg !5182
  %3 = load ptr, ptr %2, align 8, !dbg !5183
  store ptr %3, ptr %dest_keyring, align 8, !dbg !5181
  call void @llvm.lifetime.start.p0(i64 8, ptr %authkey) #11, !dbg !5180
  call void @llvm.dbg.declare(metadata ptr %authkey, metadata !5166, metadata !DIExpression()), !dbg !5184
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !5185
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5167, metadata !DIExpression()), !dbg !5186
  store i32 0, ptr %tmp2, align 4, !dbg !5187
  %4 = load i32, ptr %tmp2, align 4, !dbg !5190
  %5 = load ptr, ptr %dest_keyring, align 8, !dbg !5191
  %tobool = icmp ne ptr %5, null, !dbg !5191
  br i1 %tobool, label %if.then, label %if.else, !dbg !5192

if.then:                                          ; preds = %do.end
  %6 = load ptr, ptr %dest_keyring, align 8, !dbg !5193
  %call3 = call ptr @key_get(ptr noundef %6) #12, !dbg !5195
  br label %if.end76, !dbg !5196

if.else:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %do_perm_check) #11, !dbg !5197
  call void @llvm.dbg.declare(metadata ptr %do_perm_check, metadata !5168, metadata !DIExpression()), !dbg !5198
  store i8 1, ptr %do_perm_check, align 1, !dbg !5198
  %7 = load ptr, ptr %cred, align 8, !dbg !5199
  %jit_keyring = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 15, !dbg !5200
  %8 = load i8, ptr %jit_keyring, align 8, !dbg !5200
  %conv = zext i8 %8 to i32, !dbg !5199
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 7, label %sw.bb
    i32 1, label %sw.bb28
    i32 2, label %sw.bb33
    i32 3, label %sw.bb38
    i32 5, label %sw.bb43
    i32 4, label %sw.bb49
    i32 6, label %sw.bb55
  ], !dbg !5201

sw.bb:                                            ; preds = %if.else, %if.else
  %9 = load ptr, ptr %cred, align 8, !dbg !5202
  %request_key_auth = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 19, !dbg !5205
  %10 = load ptr, ptr %request_key_auth, align 8, !dbg !5205
  %tobool4 = icmp ne ptr %10, null, !dbg !5202
  br i1 %tobool4, label %if.then5, label %if.end27, !dbg !5206

if.then5:                                         ; preds = %sw.bb
  %11 = load ptr, ptr %cred, align 8, !dbg !5207
  %request_key_auth6 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 19, !dbg !5209
  %12 = load ptr, ptr %request_key_auth6, align 8, !dbg !5209
  store ptr %12, ptr %authkey, align 8, !dbg !5210
  %13 = load ptr, ptr %authkey, align 8, !dbg !5211
  %sem = getelementptr inbounds %struct.key, ptr %13, i32 0, i32 3, !dbg !5212
  call void @down_read(ptr noundef %sem) #12, !dbg !5213
  %14 = load ptr, ptr %authkey, align 8, !dbg !5214
  %call7 = call ptr @get_request_key_auth(ptr noundef %14) #12, !dbg !5215
  store ptr %call7, ptr %rka, align 8, !dbg !5216
  %15 = load ptr, ptr %authkey, align 8, !dbg !5217
  %flags = getelementptr inbounds %struct.key, ptr %15, i32 0, i32 14, !dbg !5217
  %16 = ptrtoint ptr %flags to i64, !dbg !5217
  %cmp = icmp ne i64 %16, 0, !dbg !5217
  %conv8 = zext i1 %cmp to i32, !dbg !5217
  %17 = call i1 @llvm.is.constant.i32(i32 %conv8), !dbg !5217
  br i1 %17, label %land.lhs.true, label %cond.false, !dbg !5217

land.lhs.true:                                    ; preds = %if.then5
  %18 = load ptr, ptr %authkey, align 8, !dbg !5217
  %flags9 = getelementptr inbounds %struct.key, ptr %18, i32 0, i32 14, !dbg !5217
  %19 = ptrtoint ptr %flags9 to i64, !dbg !5217
  %cmp10 = icmp ne i64 %19, 0, !dbg !5217
  br i1 %cmp10, label %land.lhs.true12, label %cond.false, !dbg !5217

land.lhs.true12:                                  ; preds = %land.lhs.true
  %20 = load ptr, ptr %authkey, align 8, !dbg !5217
  %flags13 = getelementptr inbounds %struct.key, ptr %20, i32 0, i32 14, !dbg !5217
  %21 = load i64, ptr %flags13, align 8, !dbg !5217
  %22 = call i1 @llvm.is.constant.i64(i64 %21), !dbg !5217
  br i1 %22, label %cond.true, label %cond.false, !dbg !5219

cond.true:                                        ; preds = %land.lhs.true12
  %23 = load ptr, ptr %authkey, align 8, !dbg !5217
  %flags14 = getelementptr inbounds %struct.key, ptr %23, i32 0, i32 14, !dbg !5217
  %call15 = call zeroext i1 @const_test_bit(i64 noundef 1, ptr noundef %flags14) #12, !dbg !5217
  br i1 %call15, label %if.end, label %if.then20, !dbg !5217

cond.false:                                       ; preds = %land.lhs.true12, %land.lhs.true, %if.then5
  %24 = load ptr, ptr %authkey, align 8, !dbg !5217
  %flags17 = getelementptr inbounds %struct.key, ptr %24, i32 0, i32 14, !dbg !5217
  %call18 = call zeroext i1 @_test_bit(i64 noundef 1, ptr noundef %flags17) #12, !dbg !5217
  br i1 %call18, label %if.end, label %if.then20, !dbg !5219

if.then20:                                        ; preds = %cond.false, %cond.true
  %25 = load ptr, ptr %rka, align 8, !dbg !5220
  %dest_keyring21 = getelementptr inbounds %struct.request_key_auth, ptr %25, i32 0, i32 2, !dbg !5221
  %26 = load ptr, ptr %dest_keyring21, align 8, !dbg !5221
  %call22 = call ptr @key_get(ptr noundef %26) #12, !dbg !5222
  store ptr %call22, ptr %dest_keyring, align 8, !dbg !5223
  br label %if.end, !dbg !5224

if.end:                                           ; preds = %if.then20, %cond.false, %cond.true
  %27 = load ptr, ptr %authkey, align 8, !dbg !5225
  %sem23 = getelementptr inbounds %struct.key, ptr %27, i32 0, i32 3, !dbg !5226
  call void @up_read(ptr noundef %sem23) #12, !dbg !5227
  %28 = load ptr, ptr %dest_keyring, align 8, !dbg !5228
  %tobool24 = icmp ne ptr %28, null, !dbg !5228
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !5230

if.then25:                                        ; preds = %if.end
  store i8 0, ptr %do_perm_check, align 1, !dbg !5231
  br label %sw.epilog, !dbg !5233

if.end26:                                         ; preds = %if.end
  br label %if.end27, !dbg !5234

if.end27:                                         ; preds = %if.end26, %sw.bb
  br label %sw.bb28, !dbg !5205

sw.bb28:                                          ; preds = %if.else, %if.end27
  %29 = load ptr, ptr %cred, align 8, !dbg !5235
  %thread_keyring = getelementptr inbounds %struct.cred, ptr %29, i32 0, i32 18, !dbg !5236
  %30 = load ptr, ptr %thread_keyring, align 8, !dbg !5236
  %call29 = call ptr @key_get(ptr noundef %30) #12, !dbg !5237
  store ptr %call29, ptr %dest_keyring, align 8, !dbg !5238
  %31 = load ptr, ptr %dest_keyring, align 8, !dbg !5239
  %tobool30 = icmp ne ptr %31, null, !dbg !5239
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !5241

if.then31:                                        ; preds = %sw.bb28
  br label %sw.epilog, !dbg !5242

if.end32:                                         ; preds = %sw.bb28
  br label %sw.bb33, !dbg !5239

sw.bb33:                                          ; preds = %if.else, %if.end32
  %32 = load ptr, ptr %cred, align 8, !dbg !5243
  %process_keyring = getelementptr inbounds %struct.cred, ptr %32, i32 0, i32 17, !dbg !5244
  %33 = load ptr, ptr %process_keyring, align 8, !dbg !5244
  %call34 = call ptr @key_get(ptr noundef %33) #12, !dbg !5245
  store ptr %call34, ptr %dest_keyring, align 8, !dbg !5246
  %34 = load ptr, ptr %dest_keyring, align 8, !dbg !5247
  %tobool35 = icmp ne ptr %34, null, !dbg !5247
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !5249

if.then36:                                        ; preds = %sw.bb33
  br label %sw.epilog, !dbg !5250

if.end37:                                         ; preds = %sw.bb33
  br label %sw.bb38, !dbg !5247

sw.bb38:                                          ; preds = %if.else, %if.end37
  %35 = load ptr, ptr %cred, align 8, !dbg !5251
  %session_keyring = getelementptr inbounds %struct.cred, ptr %35, i32 0, i32 16, !dbg !5252
  %36 = load ptr, ptr %session_keyring, align 8, !dbg !5252
  %call39 = call ptr @key_get(ptr noundef %36) #12, !dbg !5253
  store ptr %call39, ptr %dest_keyring, align 8, !dbg !5254
  %37 = load ptr, ptr %dest_keyring, align 8, !dbg !5255
  %tobool40 = icmp ne ptr %37, null, !dbg !5255
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !5257

if.then41:                                        ; preds = %sw.bb38
  br label %sw.epilog, !dbg !5258

if.end42:                                         ; preds = %sw.bb38
  br label %sw.bb43, !dbg !5255

sw.bb43:                                          ; preds = %if.else, %if.end42
  %call44 = call i32 @look_up_user_keyrings(ptr noundef null, ptr noundef %dest_keyring) #12, !dbg !5259
  store i32 %call44, ptr %ret, align 4, !dbg !5260
  %38 = load i32, ptr %ret, align 4, !dbg !5261
  %cmp45 = icmp slt i32 %38, 0, !dbg !5263
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !5264

if.then47:                                        ; preds = %sw.bb43
  %39 = load i32, ptr %ret, align 4, !dbg !5265
  store i32 %39, ptr %retval, align 4, !dbg !5266
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5266

if.end48:                                         ; preds = %sw.bb43
  br label %sw.epilog, !dbg !5267

sw.bb49:                                          ; preds = %if.else
  %call50 = call i32 @look_up_user_keyrings(ptr noundef %dest_keyring, ptr noundef null) #12, !dbg !5268
  store i32 %call50, ptr %ret, align 4, !dbg !5269
  %40 = load i32, ptr %ret, align 4, !dbg !5270
  %cmp51 = icmp slt i32 %40, 0, !dbg !5272
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !5273

if.then53:                                        ; preds = %sw.bb49
  %41 = load i32, ptr %ret, align 4, !dbg !5274
  store i32 %41, ptr %retval, align 4, !dbg !5275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5275

if.end54:                                         ; preds = %sw.bb49
  br label %sw.epilog, !dbg !5276

sw.bb55:                                          ; preds = %if.else
  br label %sw.default, !dbg !5277

sw.default:                                       ; preds = %if.else, %sw.bb55
  br label %do.body56, !dbg !5278

do.body56:                                        ; preds = %sw.default
  br label %do.body57, !dbg !5279

do.body57:                                        ; preds = %do.body56
  br label %do.cond58, !dbg !5281

do.cond58:                                        ; preds = %do.body57
  br label %do.end59, !dbg !5281

do.end59:                                         ; preds = %do.cond58
  br label %do.body60, !dbg !5279

do.body60:                                        ; preds = %do.end59
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 335, i32 0, i64 12) #11, !dbg !5283, !srcloc !5285
  br label %do.cond61, !dbg !5283

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !5283

do.end62:                                         ; preds = %do.cond61
  unreachable, !dbg !5279

do.cond63:                                        ; No predecessors!
  br label %do.end64, !dbg !5279

do.end64:                                         ; preds = %do.cond63
  br label %sw.epilog, !dbg !5286

sw.epilog:                                        ; preds = %do.end64, %if.end54, %if.end48, %if.then41, %if.then36, %if.then31, %if.then25
  %42 = load ptr, ptr %dest_keyring, align 8, !dbg !5287
  %tobool65 = icmp ne ptr %42, null, !dbg !5287
  br i1 %tobool65, label %land.lhs.true66, label %if.end75, !dbg !5289

land.lhs.true66:                                  ; preds = %sw.epilog
  %43 = load i8, ptr %do_perm_check, align 1, !dbg !5290, !range !4901, !noundef !1147
  %tobool67 = trunc i8 %43 to i1, !dbg !5290
  br i1 %tobool67, label %if.then69, label %if.end75, !dbg !5291

if.then69:                                        ; preds = %land.lhs.true66
  %44 = load ptr, ptr %dest_keyring, align 8, !dbg !5292
  %call70 = call ptr @make_key_ref(ptr noundef %44, i1 noundef zeroext true) #12, !dbg !5294
  %call71 = call i32 @key_permission(ptr noundef %call70, i32 noundef 3) #12, !dbg !5295
  store i32 %call71, ptr %ret, align 4, !dbg !5296
  %45 = load i32, ptr %ret, align 4, !dbg !5297
  %tobool72 = icmp ne i32 %45, 0, !dbg !5297
  br i1 %tobool72, label %if.then73, label %if.end74, !dbg !5299

if.then73:                                        ; preds = %if.then69
  %46 = load ptr, ptr %dest_keyring, align 8, !dbg !5300
  call void @key_put(ptr noundef %46) #12, !dbg !5302
  %47 = load i32, ptr %ret, align 4, !dbg !5303
  store i32 %47, ptr %retval, align 4, !dbg !5304
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5304

if.end74:                                         ; preds = %if.then69
  br label %if.end75, !dbg !5305

if.end75:                                         ; preds = %if.end74, %land.lhs.true66, %sw.epilog
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5306
  br label %cleanup, !dbg !5306

cleanup:                                          ; preds = %if.end75, %if.then73, %if.then53, %if.then47
  call void @llvm.lifetime.end.p0(i64 1, ptr %do_perm_check) #11, !dbg !5306
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup78 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end76

if.end76:                                         ; preds = %cleanup.cont, %if.then
  %48 = load ptr, ptr %dest_keyring, align 8, !dbg !5307
  %49 = load ptr, ptr %_dest_keyring.addr, align 8, !dbg !5308
  store ptr %48, ptr %49, align 8, !dbg !5309
  store i32 0, ptr %tmp77, align 4, !dbg !5310
  %50 = load i32, ptr %tmp77, align 4, !dbg !5313
  store i32 0, ptr %retval, align 4, !dbg !5314
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup78, !dbg !5314

cleanup78:                                        ; preds = %if.end76, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !5315
  call void @llvm.lifetime.end.p0(i64 8, ptr %authkey) #11, !dbg !5315
  call void @llvm.lifetime.end.p0(i64 8, ptr %dest_keyring) #11, !dbg !5315
  call void @llvm.lifetime.end.p0(i64 8, ptr %cred) #11, !dbg !5315
  call void @llvm.lifetime.end.p0(i64 8, ptr %rka) #11, !dbg !5315
  %51 = load i32, ptr %retval, align 4, !dbg !5315
  ret i32 %51, !dbg !5315
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5316 dso_local ptr @key_user_lookup(i32) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @construct_alloc_key(ptr noundef %ctx, ptr noundef %dest_keyring, i64 noundef %flags, ptr noundef %user, ptr noundef %_key) #0 align 16 !dbg !5319 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %dest_keyring.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %user.addr = alloca ptr, align 8
  %_key.addr = alloca ptr, align 8
  %edit = alloca ptr, align 8
  %key = alloca ptr, align 8
  %perm = alloca i32, align 4
  %key_ref = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp59 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  %tmp63 = alloca i32, align 4
  %tmp65 = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !5323, metadata !DIExpression()), !dbg !5341
  store ptr %dest_keyring, ptr %dest_keyring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest_keyring.addr, metadata !5324, metadata !DIExpression()), !dbg !5342
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5325, metadata !DIExpression()), !dbg !5343
  store ptr %user, ptr %user.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user.addr, metadata !5326, metadata !DIExpression()), !dbg !5344
  store ptr %_key, ptr %_key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_key.addr, metadata !5327, metadata !DIExpression()), !dbg !5345
  call void @llvm.lifetime.start.p0(i64 8, ptr %edit) #11, !dbg !5346
  call void @llvm.dbg.declare(metadata ptr %edit, metadata !5328, metadata !DIExpression()), !dbg !5347
  store ptr null, ptr %edit, align 8, !dbg !5347
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #11, !dbg !5348
  call void @llvm.dbg.declare(metadata ptr %key, metadata !5331, metadata !DIExpression()), !dbg !5349
  call void @llvm.lifetime.start.p0(i64 4, ptr %perm) #11, !dbg !5350
  call void @llvm.dbg.declare(metadata ptr %perm, metadata !5332, metadata !DIExpression()), !dbg !5351
  call void @llvm.lifetime.start.p0(i64 8, ptr %key_ref) #11, !dbg !5352
  call void @llvm.dbg.declare(metadata ptr %key_ref, metadata !5333, metadata !DIExpression()), !dbg !5353
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !5354
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5334, metadata !DIExpression()), !dbg !5355
  store i32 0, ptr %tmp, align 4, !dbg !5356
  %0 = load i32, ptr %tmp, align 4, !dbg !5359
  %1 = load ptr, ptr %_key.addr, align 8, !dbg !5360
  store ptr null, ptr %1, align 8, !dbg !5361
  %2 = load ptr, ptr %user.addr, align 8, !dbg !5362
  %cons_lock = getelementptr inbounds %struct.key_user, ptr %2, i32 0, i32 1, !dbg !5363
  call void @mutex_lock(ptr noundef %cons_lock) #12, !dbg !5364
  store i32 956301312, ptr %perm, align 4, !dbg !5365
  %3 = load i32, ptr %perm, align 4, !dbg !5366
  %or = or i32 %3, 65536, !dbg !5366
  store i32 %or, ptr %perm, align 4, !dbg !5366
  %4 = load ptr, ptr %ctx.addr, align 8, !dbg !5367
  %index_key = getelementptr inbounds %struct.keyring_search_context, ptr %4, i32 0, i32 0, !dbg !5369
  %type = getelementptr inbounds %struct.keyring_index_key, ptr %index_key, i32 0, i32 2, !dbg !5370
  %5 = load ptr, ptr %type, align 8, !dbg !5370
  %read = getelementptr inbounds %struct.key_type, ptr %5, i32 0, i32 13, !dbg !5371
  %6 = load ptr, ptr %read, align 8, !dbg !5371
  %tobool = icmp ne ptr %6, null, !dbg !5367
  br i1 %tobool, label %if.then, label %if.end, !dbg !5372

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %perm, align 4, !dbg !5373
  %or1 = or i32 %7, 33554432, !dbg !5373
  store i32 %or1, ptr %perm, align 4, !dbg !5373
  br label %if.end, !dbg !5374

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %ctx.addr, align 8, !dbg !5375
  %index_key2 = getelementptr inbounds %struct.keyring_search_context, ptr %8, i32 0, i32 0, !dbg !5377
  %type3 = getelementptr inbounds %struct.keyring_index_key, ptr %index_key2, i32 0, i32 2, !dbg !5378
  %9 = load ptr, ptr %type3, align 8, !dbg !5378
  %cmp = icmp eq ptr %9, @key_type_keyring, !dbg !5379
  br i1 %cmp, label %if.then7, label %lor.lhs.false, !dbg !5380

lor.lhs.false:                                    ; preds = %if.end
  %10 = load ptr, ptr %ctx.addr, align 8, !dbg !5381
  %index_key4 = getelementptr inbounds %struct.keyring_search_context, ptr %10, i32 0, i32 0, !dbg !5382
  %type5 = getelementptr inbounds %struct.keyring_index_key, ptr %index_key4, i32 0, i32 2, !dbg !5383
  %11 = load ptr, ptr %type5, align 8, !dbg !5383
  %update = getelementptr inbounds %struct.key_type, ptr %11, i32 0, i32 7, !dbg !5384
  %12 = load ptr, ptr %update, align 8, !dbg !5384
  %tobool6 = icmp ne ptr %12, null, !dbg !5381
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !5385

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  %13 = load i32, ptr %perm, align 4, !dbg !5386
  %or8 = or i32 %13, 67108864, !dbg !5386
  store i32 %or8, ptr %perm, align 4, !dbg !5386
  br label %if.end9, !dbg !5387

if.end9:                                          ; preds = %if.then7, %lor.lhs.false
  %14 = load ptr, ptr %ctx.addr, align 8, !dbg !5388
  %index_key10 = getelementptr inbounds %struct.keyring_search_context, ptr %14, i32 0, i32 0, !dbg !5389
  %type11 = getelementptr inbounds %struct.keyring_index_key, ptr %index_key10, i32 0, i32 2, !dbg !5390
  %15 = load ptr, ptr %type11, align 8, !dbg !5390
  %16 = load ptr, ptr %ctx.addr, align 8, !dbg !5391
  %index_key12 = getelementptr inbounds %struct.keyring_search_context, ptr %16, i32 0, i32 0, !dbg !5392
  %description = getelementptr inbounds %struct.keyring_index_key, ptr %index_key12, i32 0, i32 4, !dbg !5393
  %17 = load ptr, ptr %description, align 8, !dbg !5393
  %18 = load ptr, ptr %ctx.addr, align 8, !dbg !5394
  %cred = getelementptr inbounds %struct.keyring_search_context, ptr %18, i32 0, i32 1, !dbg !5395
  %19 = load ptr, ptr %cred, align 8, !dbg !5395
  %fsuid = getelementptr inbounds %struct.cred, ptr %19, i32 0, i32 7, !dbg !5396
  %20 = load ptr, ptr %ctx.addr, align 8, !dbg !5397
  %cred13 = getelementptr inbounds %struct.keyring_search_context, ptr %20, i32 0, i32 1, !dbg !5398
  %21 = load ptr, ptr %cred13, align 8, !dbg !5398
  %fsgid = getelementptr inbounds %struct.cred, ptr %21, i32 0, i32 8, !dbg !5399
  %22 = load ptr, ptr %ctx.addr, align 8, !dbg !5400
  %cred14 = getelementptr inbounds %struct.keyring_search_context, ptr %22, i32 0, i32 1, !dbg !5401
  %23 = load ptr, ptr %cred14, align 8, !dbg !5401
  %24 = load i32, ptr %perm, align 4, !dbg !5402
  %25 = load i64, ptr %flags.addr, align 8, !dbg !5403
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %fsuid, i32 0, i32 0, !dbg !5404
  %26 = load i32, ptr %coerce.dive, align 8, !dbg !5404
  %coerce.dive15 = getelementptr inbounds %struct.kgid_t, ptr %fsgid, i32 0, i32 0, !dbg !5404
  %27 = load i32, ptr %coerce.dive15, align 4, !dbg !5404
  %call = call ptr @key_alloc(ptr noundef %15, ptr noundef %17, i32 %26, i32 %27, ptr noundef %23, i32 noundef %24, i64 noundef %25, ptr noundef null) #12, !dbg !5404
  store ptr %call, ptr %key, align 8, !dbg !5405
  %28 = load ptr, ptr %key, align 8, !dbg !5406
  %call16 = call zeroext i1 @IS_ERR(ptr noundef %28) #12, !dbg !5408
  br i1 %call16, label %if.then17, label %if.end18, !dbg !5409

if.then17:                                        ; preds = %if.end9
  br label %alloc_failed, !dbg !5410

if.end18:                                         ; preds = %if.end9
  %29 = load ptr, ptr %key, align 8, !dbg !5411
  %flags19 = getelementptr inbounds %struct.key, ptr %29, i32 0, i32 14, !dbg !5412
  call void @set_bit(i64 noundef 3, ptr noundef %flags19) #12, !dbg !5413
  %30 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !5414
  %tobool20 = icmp ne ptr %30, null, !dbg !5414
  br i1 %tobool20, label %if.then21, label %if.end26, !dbg !5416

if.then21:                                        ; preds = %if.end18
  %31 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !5417
  %32 = load ptr, ptr %key, align 8, !dbg !5419
  %33 = getelementptr inbounds %struct.key, ptr %32, i32 0, i32 15, !dbg !5420
  %call22 = call i32 @__key_link_lock(ptr noundef %31, ptr noundef %33) #12, !dbg !5421
  store i32 %call22, ptr %ret, align 4, !dbg !5422
  %34 = load i32, ptr %ret, align 4, !dbg !5423
  %cmp23 = icmp slt i32 %34, 0, !dbg !5425
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !5426

if.then24:                                        ; preds = %if.then21
  br label %link_lock_failed, !dbg !5427

if.end25:                                         ; preds = %if.then21
  br label %if.end26, !dbg !5428

if.end26:                                         ; preds = %if.end25, %if.end18
  call void @mutex_lock(ptr noundef @key_construction_mutex) #12, !dbg !5429
  call void @rcu_read_lock() #12, !dbg !5430
  %35 = load ptr, ptr %ctx.addr, align 8, !dbg !5431
  %call27 = call ptr @search_process_keyrings_rcu(ptr noundef %35) #12, !dbg !5432
  store ptr %call27, ptr %key_ref, align 8, !dbg !5433
  call void @rcu_read_unlock() #12, !dbg !5434
  %36 = load ptr, ptr %key_ref, align 8, !dbg !5435
  %call28 = call zeroext i1 @IS_ERR(ptr noundef %36) #12, !dbg !5437
  br i1 %call28, label %if.end30, label %if.then29, !dbg !5438

if.then29:                                        ; preds = %if.end26
  br label %key_already_present, !dbg !5439

if.end30:                                         ; preds = %if.end26
  %37 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !5440
  %tobool31 = icmp ne ptr %37, null, !dbg !5440
  br i1 %tobool31, label %if.then32, label %if.end37, !dbg !5442

if.then32:                                        ; preds = %if.end30
  %38 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !5443
  %39 = load ptr, ptr %key, align 8, !dbg !5445
  %40 = getelementptr inbounds %struct.key, ptr %39, i32 0, i32 15, !dbg !5446
  %call33 = call i32 @__key_link_begin(ptr noundef %38, ptr noundef %40, ptr noundef %edit) #12, !dbg !5447
  store i32 %call33, ptr %ret, align 4, !dbg !5448
  %41 = load i32, ptr %ret, align 4, !dbg !5449
  %cmp34 = icmp slt i32 %41, 0, !dbg !5451
  br i1 %cmp34, label %if.then35, label %if.end36, !dbg !5452

if.then35:                                        ; preds = %if.then32
  br label %link_alloc_failed, !dbg !5453

if.end36:                                         ; preds = %if.then32
  %42 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !5454
  %43 = load ptr, ptr %key, align 8, !dbg !5455
  call void @__key_link(ptr noundef %42, ptr noundef %43, ptr noundef %edit) #12, !dbg !5456
  br label %if.end37, !dbg !5457

if.end37:                                         ; preds = %if.end36, %if.end30
  call void @mutex_unlock(ptr noundef @key_construction_mutex) #12, !dbg !5458
  %44 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !5459
  %tobool38 = icmp ne ptr %44, null, !dbg !5459
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !5461

if.then39:                                        ; preds = %if.end37
  %45 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !5462
  %46 = load ptr, ptr %key, align 8, !dbg !5463
  %47 = getelementptr inbounds %struct.key, ptr %46, i32 0, i32 15, !dbg !5464
  %48 = load ptr, ptr %edit, align 8, !dbg !5465
  call void @__key_link_end(ptr noundef %45, ptr noundef %47, ptr noundef %48) #12, !dbg !5466
  br label %if.end40, !dbg !5466

if.end40:                                         ; preds = %if.then39, %if.end37
  %49 = load ptr, ptr %user.addr, align 8, !dbg !5467
  %cons_lock41 = getelementptr inbounds %struct.key_user, ptr %49, i32 0, i32 1, !dbg !5468
  call void @mutex_unlock(ptr noundef %cons_lock41) #12, !dbg !5469
  %50 = load ptr, ptr %key, align 8, !dbg !5470
  %51 = load ptr, ptr %_key.addr, align 8, !dbg !5471
  store ptr %50, ptr %51, align 8, !dbg !5472
  store i32 0, ptr %tmp42, align 4, !dbg !5473
  %52 = load i32, ptr %tmp42, align 4, !dbg !5476
  store i32 0, ptr %retval, align 4, !dbg !5477
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5477

key_already_present:                              ; preds = %if.then29
  call void @llvm.dbg.label(metadata !5335), !dbg !5478
  %53 = load ptr, ptr %key, align 8, !dbg !5479
  call void @key_put(ptr noundef %53) #12, !dbg !5480
  call void @mutex_unlock(ptr noundef @key_construction_mutex) #12, !dbg !5481
  %54 = load ptr, ptr %key_ref, align 8, !dbg !5482
  %call43 = call ptr @key_ref_to_ptr(ptr noundef %54) #12, !dbg !5483
  store ptr %call43, ptr %key, align 8, !dbg !5484
  %55 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !5485
  %tobool44 = icmp ne ptr %55, null, !dbg !5485
  br i1 %tobool44, label %if.then45, label %if.end57, !dbg !5487

if.then45:                                        ; preds = %key_already_present
  %56 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !5488
  %57 = load ptr, ptr %key, align 8, !dbg !5490
  %58 = getelementptr inbounds %struct.key, ptr %57, i32 0, i32 15, !dbg !5491
  %call46 = call i32 @__key_link_begin(ptr noundef %56, ptr noundef %58, ptr noundef %edit) #12, !dbg !5492
  store i32 %call46, ptr %ret, align 4, !dbg !5493
  %59 = load i32, ptr %ret, align 4, !dbg !5494
  %cmp47 = icmp slt i32 %59, 0, !dbg !5496
  br i1 %cmp47, label %if.then48, label %if.end49, !dbg !5497

if.then48:                                        ; preds = %if.then45
  br label %link_alloc_failed_unlocked, !dbg !5498

if.end49:                                         ; preds = %if.then45
  %60 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !5499
  %61 = load ptr, ptr %key, align 8, !dbg !5500
  %call50 = call i32 @__key_link_check_live_key(ptr noundef %60, ptr noundef %61) #12, !dbg !5501
  store i32 %call50, ptr %ret, align 4, !dbg !5502
  %62 = load i32, ptr %ret, align 4, !dbg !5503
  %cmp51 = icmp eq i32 %62, 0, !dbg !5505
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5506

if.then52:                                        ; preds = %if.end49
  %63 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !5507
  %64 = load ptr, ptr %key, align 8, !dbg !5508
  call void @__key_link(ptr noundef %63, ptr noundef %64, ptr noundef %edit) #12, !dbg !5509
  br label %if.end53, !dbg !5509

if.end53:                                         ; preds = %if.then52, %if.end49
  %65 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !5510
  %66 = load ptr, ptr %key, align 8, !dbg !5511
  %67 = getelementptr inbounds %struct.key, ptr %66, i32 0, i32 15, !dbg !5512
  %68 = load ptr, ptr %edit, align 8, !dbg !5513
  call void @__key_link_end(ptr noundef %65, ptr noundef %67, ptr noundef %68) #12, !dbg !5514
  %69 = load i32, ptr %ret, align 4, !dbg !5515
  %cmp54 = icmp slt i32 %69, 0, !dbg !5517
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5518

if.then55:                                        ; preds = %if.end53
  br label %link_check_failed, !dbg !5519

if.end56:                                         ; preds = %if.end53
  br label %if.end57, !dbg !5520

if.end57:                                         ; preds = %if.end56, %key_already_present
  %70 = load ptr, ptr %user.addr, align 8, !dbg !5521
  %cons_lock58 = getelementptr inbounds %struct.key_user, ptr %70, i32 0, i32 1, !dbg !5522
  call void @mutex_unlock(ptr noundef %cons_lock58) #12, !dbg !5523
  %71 = load ptr, ptr %key, align 8, !dbg !5524
  %72 = load ptr, ptr %_key.addr, align 8, !dbg !5525
  store ptr %71, ptr %72, align 8, !dbg !5526
  store i32 0, ptr %tmp59, align 4, !dbg !5527
  %73 = load i32, ptr %tmp59, align 4, !dbg !5530
  store i32 -115, ptr %retval, align 4, !dbg !5531
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5531

link_check_failed:                                ; preds = %if.then55
  call void @llvm.dbg.label(metadata !5336), !dbg !5532
  %74 = load ptr, ptr %user.addr, align 8, !dbg !5533
  %cons_lock60 = getelementptr inbounds %struct.key_user, ptr %74, i32 0, i32 1, !dbg !5534
  call void @mutex_unlock(ptr noundef %cons_lock60) #12, !dbg !5535
  %75 = load ptr, ptr %key, align 8, !dbg !5536
  call void @key_put(ptr noundef %75) #12, !dbg !5537
  store i32 0, ptr %tmp61, align 4, !dbg !5538
  %76 = load i32, ptr %tmp61, align 4, !dbg !5541
  %77 = load i32, ptr %ret, align 4, !dbg !5542
  store i32 %77, ptr %retval, align 4, !dbg !5543
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5543

link_alloc_failed:                                ; preds = %if.then35
  call void @llvm.dbg.label(metadata !5337), !dbg !5544
  call void @mutex_unlock(ptr noundef @key_construction_mutex) #12, !dbg !5545
  br label %link_alloc_failed_unlocked, !dbg !5545

link_alloc_failed_unlocked:                       ; preds = %link_alloc_failed, %if.then48
  call void @llvm.dbg.label(metadata !5338), !dbg !5546
  %78 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !5547
  %79 = load ptr, ptr %key, align 8, !dbg !5548
  %80 = getelementptr inbounds %struct.key, ptr %79, i32 0, i32 15, !dbg !5549
  %81 = load ptr, ptr %edit, align 8, !dbg !5550
  call void @__key_link_end(ptr noundef %78, ptr noundef %80, ptr noundef %81) #12, !dbg !5551
  br label %link_lock_failed, !dbg !5551

link_lock_failed:                                 ; preds = %link_alloc_failed_unlocked, %if.then24
  call void @llvm.dbg.label(metadata !5339), !dbg !5552
  %82 = load ptr, ptr %user.addr, align 8, !dbg !5553
  %cons_lock62 = getelementptr inbounds %struct.key_user, ptr %82, i32 0, i32 1, !dbg !5554
  call void @mutex_unlock(ptr noundef %cons_lock62) #12, !dbg !5555
  %83 = load ptr, ptr %key, align 8, !dbg !5556
  call void @key_put(ptr noundef %83) #12, !dbg !5557
  store i32 0, ptr %tmp63, align 4, !dbg !5558
  %84 = load i32, ptr %tmp63, align 4, !dbg !5561
  %85 = load i32, ptr %ret, align 4, !dbg !5562
  store i32 %85, ptr %retval, align 4, !dbg !5563
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5563

alloc_failed:                                     ; preds = %if.then17
  call void @llvm.dbg.label(metadata !5340), !dbg !5564
  %86 = load ptr, ptr %user.addr, align 8, !dbg !5565
  %cons_lock64 = getelementptr inbounds %struct.key_user, ptr %86, i32 0, i32 1, !dbg !5566
  call void @mutex_unlock(ptr noundef %cons_lock64) #12, !dbg !5567
  store i32 0, ptr %tmp65, align 4, !dbg !5568
  %87 = load i32, ptr %tmp65, align 4, !dbg !5571
  %88 = load ptr, ptr %key, align 8, !dbg !5572
  %call66 = call i64 @PTR_ERR(ptr noundef %88) #12, !dbg !5573
  %conv = trunc i64 %call66 to i32, !dbg !5573
  store i32 %conv, ptr %retval, align 4, !dbg !5574
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5574

cleanup:                                          ; preds = %alloc_failed, %link_lock_failed, %link_check_failed, %if.end57, %if.end40
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !5575
  call void @llvm.lifetime.end.p0(i64 8, ptr %key_ref) #11, !dbg !5575
  call void @llvm.lifetime.end.p0(i64 4, ptr %perm) #11, !dbg !5575
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #11, !dbg !5575
  call void @llvm.lifetime.end.p0(i64 8, ptr %edit) #11, !dbg !5575
  %89 = load i32, ptr %retval, align 4, !dbg !5575
  ret i32 %89, !dbg !5575
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5576 dso_local void @key_user_put(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @construct_key(ptr noundef %key, ptr noundef %callout_info, i64 noundef %callout_len, ptr noundef %aux, ptr noundef %dest_keyring) #0 align 16 !dbg !5579 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca ptr, align 8
  %callout_info.addr = alloca ptr, align 8
  %callout_len.addr = alloca i64, align 8
  %aux.addr = alloca ptr, align 8
  %dest_keyring.addr = alloca ptr, align 8
  %actor = alloca ptr, align 8
  %authkey = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp43 = alloca i64, align 8
  %tmp51 = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5583, metadata !DIExpression()), !dbg !5596
  store ptr %callout_info, ptr %callout_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %callout_info.addr, metadata !5584, metadata !DIExpression()), !dbg !5597
  store i64 %callout_len, ptr %callout_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %callout_len.addr, metadata !5585, metadata !DIExpression()), !dbg !5598
  store ptr %aux, ptr %aux.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aux.addr, metadata !5586, metadata !DIExpression()), !dbg !5599
  store ptr %dest_keyring, ptr %dest_keyring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest_keyring.addr, metadata !5587, metadata !DIExpression()), !dbg !5600
  call void @llvm.lifetime.start.p0(i64 8, ptr %actor) #11, !dbg !5601
  call void @llvm.dbg.declare(metadata ptr %actor, metadata !5588, metadata !DIExpression()), !dbg !5602
  call void @llvm.lifetime.start.p0(i64 8, ptr %authkey) #11, !dbg !5603
  call void @llvm.dbg.declare(metadata ptr %authkey, metadata !5589, metadata !DIExpression()), !dbg !5604
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !5605
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5590, metadata !DIExpression()), !dbg !5606
  store i32 0, ptr %tmp, align 4, !dbg !5607
  %0 = load i32, ptr %tmp, align 4, !dbg !5610
  %1 = load ptr, ptr %key.addr, align 8, !dbg !5611
  %2 = load ptr, ptr %callout_info.addr, align 8, !dbg !5612
  %3 = load i64, ptr %callout_len.addr, align 8, !dbg !5613
  %4 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !5614
  %call = call ptr @request_key_auth_new(ptr noundef %1, ptr noundef @.str.1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #12, !dbg !5615
  store ptr %call, ptr %authkey, align 8, !dbg !5616
  %5 = load ptr, ptr %authkey, align 8, !dbg !5617
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %5) #12, !dbg !5619
  br i1 %call1, label %if.then, label %if.end, !dbg !5620

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %authkey, align 8, !dbg !5621
  %call2 = call i64 @PTR_ERR(ptr noundef %6) #12, !dbg !5622
  %conv = trunc i64 %call2 to i32, !dbg !5622
  store i32 %conv, ptr %retval, align 4, !dbg !5623
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5623

if.end:                                           ; preds = %entry
  store ptr @call_sbin_request_key, ptr %actor, align 8, !dbg !5624
  %7 = load ptr, ptr %key.addr, align 8, !dbg !5625
  %8 = getelementptr inbounds %struct.key, ptr %7, i32 0, i32 15, !dbg !5627
  %type = getelementptr inbounds %struct.anon.19, ptr %8, i32 0, i32 2, !dbg !5627
  %9 = load ptr, ptr %type, align 8, !dbg !5627
  %request_key = getelementptr inbounds %struct.key_type, ptr %9, i32 0, i32 14, !dbg !5628
  %10 = load ptr, ptr %request_key, align 8, !dbg !5628
  %tobool = icmp ne ptr %10, null, !dbg !5625
  br i1 %tobool, label %if.then3, label %if.end6, !dbg !5629

if.then3:                                         ; preds = %if.end
  %11 = load ptr, ptr %key.addr, align 8, !dbg !5630
  %12 = getelementptr inbounds %struct.key, ptr %11, i32 0, i32 15, !dbg !5631
  %type4 = getelementptr inbounds %struct.anon.19, ptr %12, i32 0, i32 2, !dbg !5631
  %13 = load ptr, ptr %type4, align 8, !dbg !5631
  %request_key5 = getelementptr inbounds %struct.key_type, ptr %13, i32 0, i32 14, !dbg !5632
  %14 = load ptr, ptr %request_key5, align 8, !dbg !5632
  store ptr %14, ptr %actor, align 8, !dbg !5633
  br label %if.end6, !dbg !5634

if.end6:                                          ; preds = %if.then3, %if.end
  %15 = load ptr, ptr %actor, align 8, !dbg !5635
  %16 = load ptr, ptr %authkey, align 8, !dbg !5636
  %17 = load ptr, ptr %aux.addr, align 8, !dbg !5637
  %call7 = call i32 %15(ptr noundef %16, ptr noundef %17) #12, !dbg !5635
  store i32 %call7, ptr %ret, align 4, !dbg !5638
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !5639
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5591, metadata !DIExpression()), !dbg !5639
  %18 = load i32, ptr %ret, align 4, !dbg !5639
  %cmp = icmp slt i32 %18, 0, !dbg !5639
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5639

land.rhs:                                         ; preds = %if.end6
  %19 = load ptr, ptr %authkey, align 8, !dbg !5639
  %flags = getelementptr inbounds %struct.key, ptr %19, i32 0, i32 14, !dbg !5639
  %20 = ptrtoint ptr %flags to i64, !dbg !5639
  %cmp9 = icmp ne i64 %20, 0, !dbg !5639
  %conv10 = zext i1 %cmp9 to i32, !dbg !5639
  %21 = call i1 @llvm.is.constant.i32(i32 %conv10), !dbg !5639
  br i1 %21, label %land.lhs.true, label %cond.false, !dbg !5639

land.lhs.true:                                    ; preds = %land.rhs
  %22 = load ptr, ptr %authkey, align 8, !dbg !5639
  %flags11 = getelementptr inbounds %struct.key, ptr %22, i32 0, i32 14, !dbg !5639
  %23 = ptrtoint ptr %flags11 to i64, !dbg !5639
  %cmp12 = icmp ne i64 %23, 0, !dbg !5639
  br i1 %cmp12, label %land.lhs.true14, label %cond.false, !dbg !5639

land.lhs.true14:                                  ; preds = %land.lhs.true
  %24 = load ptr, ptr %authkey, align 8, !dbg !5639
  %flags15 = getelementptr inbounds %struct.key, ptr %24, i32 0, i32 14, !dbg !5639
  %25 = load i64, ptr %flags15, align 8, !dbg !5639
  %26 = call i1 @llvm.is.constant.i64(i64 %25), !dbg !5639
  br i1 %26, label %cond.true, label %cond.false, !dbg !5639

cond.true:                                        ; preds = %land.lhs.true14
  %27 = load ptr, ptr %authkey, align 8, !dbg !5639
  %flags16 = getelementptr inbounds %struct.key, ptr %27, i32 0, i32 14, !dbg !5639
  %call17 = call zeroext i1 @const_test_bit(i64 noundef 5, ptr noundef %flags16) #12, !dbg !5639
  %conv18 = zext i1 %call17 to i32, !dbg !5639
  br label %cond.end, !dbg !5639

cond.false:                                       ; preds = %land.lhs.true14, %land.lhs.true, %land.rhs
  %28 = load ptr, ptr %authkey, align 8, !dbg !5639
  %flags19 = getelementptr inbounds %struct.key, ptr %28, i32 0, i32 14, !dbg !5639
  %call20 = call zeroext i1 @_test_bit(i64 noundef 5, ptr noundef %flags19) #12, !dbg !5639
  %conv21 = zext i1 %call20 to i32, !dbg !5639
  br label %cond.end, !dbg !5639

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv18, %cond.true ], [ %conv21, %cond.false ], !dbg !5639
  %tobool22 = icmp ne i32 %cond, 0, !dbg !5639
  %lnot = xor i1 %tobool22, true, !dbg !5639
  br label %land.end

land.end:                                         ; preds = %cond.end, %if.end6
  %29 = phi i1 [ false, %if.end6 ], [ %lnot, %cond.end ], !dbg !5640
  %lnot23 = xor i1 %29, true, !dbg !5639
  %lnot24 = xor i1 %lnot23, true, !dbg !5639
  %lnot.ext = zext i1 %lnot24 to i32, !dbg !5639
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5639
  %30 = load i32, ptr %__ret_warn_on, align 4, !dbg !5641
  %tobool25 = icmp ne i32 %30, 0, !dbg !5641
  %lnot26 = xor i1 %tobool25, true, !dbg !5641
  %lnot28 = xor i1 %lnot26, true, !dbg !5641
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !5641
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !5641
  %expval = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !5641
  %tobool31 = icmp ne i64 %expval, 0, !dbg !5641
  br i1 %tobool31, label %if.then32, label %if.end42, !dbg !5639

if.then32:                                        ; preds = %land.end
  br label %do.body, !dbg !5641

do.body:                                          ; preds = %if.then32
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !5642
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5593, metadata !DIExpression()), !dbg !5642
  store i32 2305, ptr %__flags, align 4, !dbg !5642
  br label %do.body33, !dbg !5642

do.body33:                                        ; preds = %do.body
  br label %do.cond, !dbg !5643

do.cond:                                          ; preds = %do.body33
  br label %do.end, !dbg !5643

do.end:                                           ; preds = %do.cond
  br label %do.body34, !dbg !5642

do.body34:                                        ; preds = %do.end
  %31 = load i32, ptr %__flags, align 4, !dbg !5645
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 252, i32 %31, i64 12) #11, !dbg !5645, !srcloc !5647
  br label %do.cond35, !dbg !5645

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !5645

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !5642

do.body37:                                        ; preds = %do.end36
  br label %do.cond38, !dbg !5648

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !5648

do.end39:                                         ; preds = %do.cond38
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !5641
  br label %do.cond40, !dbg !5642

do.cond40:                                        ; preds = %do.end39
  br label %do.end41, !dbg !5642

do.end41:                                         ; preds = %do.cond40
  br label %if.end42, !dbg !5642

if.end42:                                         ; preds = %do.end41, %land.end
  %32 = load i32, ptr %__ret_warn_on, align 4, !dbg !5639
  %tobool44 = icmp ne i32 %32, 0, !dbg !5639
  %lnot45 = xor i1 %tobool44, true, !dbg !5639
  %lnot47 = xor i1 %lnot45, true, !dbg !5639
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !5639
  %conv49 = sext i32 %lnot.ext48 to i64, !dbg !5639
  %expval50 = call i64 @llvm.expect.i64(i64 %conv49, i64 0), !dbg !5639
  store i64 %expval50, ptr %tmp43, align 8, !dbg !5641
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !5650
  %33 = load i64, ptr %tmp43, align 8, !dbg !5639
  %34 = load ptr, ptr %authkey, align 8, !dbg !5651
  call void @key_put(ptr noundef %34) #12, !dbg !5652
  store i32 0, ptr %tmp51, align 4, !dbg !5653
  %35 = load i32, ptr %tmp51, align 4, !dbg !5656
  %36 = load i32, ptr %ret, align 4, !dbg !5657
  store i32 %36, ptr %retval, align 4, !dbg !5658
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5658

cleanup:                                          ; preds = %if.end42, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !5659
  call void @llvm.lifetime.end.p0(i64 8, ptr %authkey) #11, !dbg !5659
  call void @llvm.lifetime.end.p0(i64 8, ptr %actor) #11, !dbg !5659
  %37 = load i32, ptr %retval, align 4, !dbg !5659
  ret i32 %37, !dbg !5659
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @key_get(ptr noundef %key) #3 align 16 !dbg !5660 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5664, metadata !DIExpression()), !dbg !5665
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5666
  %tobool = icmp ne ptr %0, null, !dbg !5666
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5666

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %key.addr, align 8, !dbg !5667
  %call = call ptr @__key_get(ptr noundef %1) #12, !dbg !5668
  br label %cond.end, !dbg !5666

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr %key.addr, align 8, !dbg !5669
  br label %cond.end, !dbg !5666

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call, %cond.true ], [ %2, %cond.false ], !dbg !5666
  ret ptr %cond, !dbg !5670
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5671 dso_local void @down_read(ptr noundef) #4

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5675 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5680, metadata !DIExpression()), !dbg !5685
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5681, metadata !DIExpression()), !dbg !5686
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !5687
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5682, metadata !DIExpression()), !dbg !5688
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5689
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5690
  %div = udiv i64 %1, 64, !dbg !5690
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5691
  store ptr %add.ptr, ptr %p, align 8, !dbg !5688
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #11, !dbg !5692
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5683, metadata !DIExpression()), !dbg !5693
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5694
  %rem = urem i64 %2, 64, !dbg !5694
  %shl = shl i64 1, %rem, !dbg !5694
  store i64 %shl, ptr %mask, align 8, !dbg !5693
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !5695
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5684, metadata !DIExpression()), !dbg !5696
  %3 = load ptr, ptr %p, align 8, !dbg !5697
  %4 = load i64, ptr %3, align 8, !dbg !5698
  store i64 %4, ptr %val, align 8, !dbg !5696
  %5 = load i64, ptr %val, align 8, !dbg !5699
  %6 = load i64, ptr %mask, align 8, !dbg !5700
  %and = and i64 %5, %6, !dbg !5701
  %tobool = icmp ne i64 %and, 0, !dbg !5702
  %lnot = xor i1 %tobool, true, !dbg !5702
  %lnot1 = xor i1 %lnot, true, !dbg !5703
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !5704
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #11, !dbg !5704
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !5704
  ret i1 %lnot1, !dbg !5705
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5706 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5709, metadata !DIExpression()), !dbg !5711
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5710, metadata !DIExpression()), !dbg !5712
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5713
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5714
  %div = udiv i64 %1, 64, !dbg !5714
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5715
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !5716
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5717
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5718
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !5719
  ret i1 %call, !dbg !5720
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5721 dso_local void @up_read(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5722 dso_local i32 @look_up_user_keyrings(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @key_permission(ptr noundef %key_ref, i32 noundef %need_perm) #3 align 16 !dbg !5725 {
entry:
  %key_ref.addr = alloca ptr, align 8
  %need_perm.addr = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store ptr %key_ref, ptr %key_ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key_ref.addr, metadata !5729, metadata !DIExpression()), !dbg !5731
  store i32 %need_perm, ptr %need_perm.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %need_perm.addr, metadata !5730, metadata !DIExpression()), !dbg !5732
  %0 = load ptr, ptr %key_ref.addr, align 8, !dbg !5733
  br label %do.body, !dbg !5734

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5736

do.end:                                           ; preds = %do.body
  %call = call ptr @get_current() #12, !dbg !5734
  %cred = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 94, !dbg !5734
  %1 = load ptr, ptr %cred, align 32, !dbg !5734
  store ptr %1, ptr %tmp, align 8, !dbg !5736
  %2 = load ptr, ptr %tmp, align 8, !dbg !5734
  %3 = load i32, ptr %need_perm.addr, align 4, !dbg !5738
  %call1 = call i32 @key_task_permission(ptr noundef %0, ptr noundef %2, i32 noundef %3) #12, !dbg !5739
  ret i32 %call1, !dbg !5740
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @make_key_ref(ptr noundef %key, i1 noundef zeroext %possession) #3 align 16 !dbg !5741 {
entry:
  %key.addr = alloca ptr, align 8
  %possession.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5745, metadata !DIExpression()), !dbg !5747
  %frombool = zext i1 %possession to i8
  store i8 %frombool, ptr %possession.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %possession.addr, metadata !5746, metadata !DIExpression()), !dbg !5748
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5749
  %1 = ptrtoint ptr %0 to i64, !dbg !5750
  %2 = load i8, ptr %possession.addr, align 1, !dbg !5751, !range !4901, !noundef !1147
  %tobool = trunc i8 %2 to i1, !dbg !5751
  %conv = zext i1 %tobool to i64, !dbg !5751
  %or = or i64 %1, %conv, !dbg !5752
  %3 = inttoptr i64 %or to ptr, !dbg !5753
  ret ptr %3, !dbg !5754
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__key_get(ptr noundef %key) #3 align 16 !dbg !5755 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5757, metadata !DIExpression()), !dbg !5758
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5759
  %usage = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 0, !dbg !5760
  call void @refcount_inc(ptr noundef %usage) #12, !dbg !5761
  %1 = load ptr, ptr %key.addr, align 8, !dbg !5762
  ret ptr %1, !dbg !5763
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #3 align 16 !dbg !5764 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5769, metadata !DIExpression()), !dbg !5770
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5771
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #12, !dbg !5772
  ret void, !dbg !5773
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !5774 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5778, metadata !DIExpression()), !dbg !5780
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5779, metadata !DIExpression()), !dbg !5781
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5782
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !5783
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #12, !dbg !5784
  ret void, !dbg !5785
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !5786 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5790, metadata !DIExpression()), !dbg !5794
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5791, metadata !DIExpression()), !dbg !5795
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5792, metadata !DIExpression()), !dbg !5796
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #11, !dbg !5797
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5793, metadata !DIExpression()), !dbg !5798
  %0 = load i32, ptr %i.addr, align 4, !dbg !5799
  %1 = load ptr, ptr %r.addr, align 8, !dbg !5800
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !5801
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #12, !dbg !5802
  store i32 %call, ptr %old, align 4, !dbg !5798
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !5803
  %tobool = icmp ne ptr %2, null, !dbg !5803
  br i1 %tobool, label %if.then, label %if.end, !dbg !5805

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !5806
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !5807
  store i32 %3, ptr %4, align 4, !dbg !5808
  br label %if.end, !dbg !5809

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !5810
  %tobool1 = icmp ne i32 %5, 0, !dbg !5810
  %lnot = xor i1 %tobool1, true, !dbg !5810
  %lnot2 = xor i1 %lnot, true, !dbg !5810
  %lnot3 = xor i1 %lnot2, true, !dbg !5810
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5810
  %conv = sext i32 %lnot.ext to i64, !dbg !5810
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5810
  %tobool4 = icmp ne i64 %expval, 0, !dbg !5810
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5812

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !5813
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #12, !dbg !5814
  br label %if.end18, !dbg !5814

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !5815
  %cmp = icmp slt i32 %7, 0, !dbg !5815
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5815

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !5815
  %9 = load i32, ptr %i.addr, align 4, !dbg !5815
  %add = add i32 %8, %9, !dbg !5815
  %cmp7 = icmp slt i32 %add, 0, !dbg !5815
  br label %lor.end, !dbg !5815

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !5815
  %lnot11 = xor i1 %lnot9, true, !dbg !5815
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5815
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5815
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !5815
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !5815
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5817

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !5818
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #12, !dbg !5819
  br label %if.end17, !dbg !5819

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #11, !dbg !5820
  ret void, !dbg !5820
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !5821 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5827, metadata !DIExpression()), !dbg !5829
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5828, metadata !DIExpression()), !dbg !5830
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5831
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #12, !dbg !5832
  %1 = load i32, ptr %i.addr, align 4, !dbg !5833
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5834
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #12, !dbg !5835
  ret i32 %call, !dbg !5836
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5837 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !5840 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5848, metadata !DIExpression()), !dbg !5850
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5849, metadata !DIExpression()), !dbg !5851
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5852
  %1 = load i64, ptr %size.addr, align 8, !dbg !5853
  %conv = trunc i64 %1 to i32, !dbg !5853
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !5854
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5855
  %3 = load i64, ptr %size.addr, align 8, !dbg !5855
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #12, !dbg !5855
  ret void, !dbg !5856
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !5857 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5860, metadata !DIExpression()), !dbg !5862
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5861, metadata !DIExpression()), !dbg !5863
  %0 = load i32, ptr %i.addr, align 4, !dbg !5864
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5865
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #12, !dbg !5866
  ret i32 %call, !dbg !5867
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !5868 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5873, metadata !DIExpression()), !dbg !5875
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5874, metadata !DIExpression()), !dbg !5876
  ret i1 true, !dbg !5877
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !5878 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5883, metadata !DIExpression()), !dbg !5886
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5884, metadata !DIExpression()), !dbg !5887
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5885, metadata !DIExpression()), !dbg !5888
  ret void, !dbg !5889
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !5890 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5893, metadata !DIExpression()), !dbg !5897
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5894, metadata !DIExpression()), !dbg !5898
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #11, !dbg !5899
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5895, metadata !DIExpression()), !dbg !5899
  %0 = load i32, ptr %i.addr, align 4, !dbg !5899
  store i32 %0, ptr %__ret, align 4, !dbg !5899
  %1 = load i32, ptr %__ret, align 4, !dbg !5899
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5899
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !5899
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #11, !dbg !5899, !srcloc !5900
  store i32 %3, ptr %__ret, align 4, !dbg !5899
  %4 = load i32, ptr %__ret, align 4, !dbg !5899
  store i32 %4, ptr %tmp, align 4, !dbg !5899
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #11, !dbg !5901
  %5 = load i32, ptr %tmp, align 4, !dbg !5899
  ret i32 %5, !dbg !5902
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !5903 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5905, metadata !DIExpression()), !dbg !5907
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5906, metadata !DIExpression()), !dbg !5908
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5909
  %1 = load i64, ptr %size.addr, align 8, !dbg !5910
  %conv = trunc i64 %1 to i32, !dbg !5910
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #12, !dbg !5911
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5912
  %3 = load i64, ptr %size.addr, align 8, !dbg !5912
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #12, !dbg !5912
  ret void, !dbg !5913
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5914 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5917, metadata !DIExpression()), !dbg !5919
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5918, metadata !DIExpression()), !dbg !5920
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5921
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5922
  br i1 %1, label %cond.true, label %cond.false, !dbg !5922

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5923
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5924
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !5925
  %conv = zext i1 %call to i32, !dbg !5925
  br label %cond.end, !dbg !5922

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5926
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5927
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #12, !dbg !5928
  %conv2 = zext i1 %call1 to i32, !dbg !5928
  br label %cond.end, !dbg !5922

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5922
  %tobool = icmp ne i32 %cond, 0, !dbg !5922
  ret i1 %tobool, !dbg !5929
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !5930 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5932, metadata !DIExpression()), !dbg !5934
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5933, metadata !DIExpression()), !dbg !5935
  ret i1 true, !dbg !5936
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5937 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5941, metadata !DIExpression()), !dbg !5943
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5942, metadata !DIExpression()), !dbg !5944
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5945
  %and = and i64 %0, 63, !dbg !5946
  %shl = shl i64 1, %and, !dbg !5947
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5948
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5949
  %shr = ashr i64 %2, 6, !dbg !5950
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5948
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5948
  %and1 = and i64 %shl, %3, !dbg !5951
  %cmp = icmp ne i64 %and1, 0, !dbg !5952
  ret i1 %cmp, !dbg !5953
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5954 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5956, metadata !DIExpression()), !dbg !5959
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5957, metadata !DIExpression()), !dbg !5960
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #11, !dbg !5961
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5958, metadata !DIExpression()), !dbg !5962
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5963
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5964
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #11, !dbg !5965, !srcloc !5966
  %3 = icmp ult i8 %2, 2, !dbg !5965
  call void @llvm.assume(i1 %3), !dbg !5965
  store i8 %2, ptr %oldbit, align 1, !dbg !5965
  %4 = load i8, ptr %oldbit, align 1, !dbg !5967, !range !4901, !noundef !1147
  %tobool = trunc i8 %4 to i1, !dbg !5967
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #11, !dbg !5968
  ret i1 %tobool, !dbg !5969
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5970 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5974 dso_local ptr @key_alloc(ptr noundef, ptr noundef, i32, i32, ptr noundef, i32 noundef, i64 noundef, ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5977 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5983, metadata !DIExpression()), !dbg !5985
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5984, metadata !DIExpression()), !dbg !5986
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5987
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5988
  %div = sdiv i64 %1, 64, !dbg !5988
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5989
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !5990
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5991
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5992
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !5993
  ret void, !dbg !5994
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5995 dso_local i32 @__key_link_lock(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6000 dso_local i32 @__key_link_begin(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6004 dso_local void @__key_link(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6007 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6008 dso_local void @__key_link_end(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6011 dso_local i32 @__key_link_check_live_key(ptr noundef, ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !6012 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6014, metadata !DIExpression()), !dbg !6016
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6015, metadata !DIExpression()), !dbg !6017
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6018
  %1 = load i64, ptr %size.addr, align 8, !dbg !6019
  %conv = trunc i64 %1 to i32, !dbg !6019
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !6020
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6021
  %3 = load i64, ptr %size.addr, align 8, !dbg !6021
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #12, !dbg !6021
  ret void, !dbg !6022
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6023 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6025, metadata !DIExpression()), !dbg !6027
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6026, metadata !DIExpression()), !dbg !6028
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6029
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6031
  br i1 %1, label %if.then, label %if.else, !dbg !6032

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6033
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6033
  %shr = ashr i64 %3, 3, !dbg !6033
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6033
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6035
  %and = and i64 %4, 7, !dbg !6035
  %sh_prom = trunc i64 %and to i32, !dbg !6035
  %shl = shl i32 1, %sh_prom, !dbg !6035
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #11, !dbg !6036, !srcloc !6037
  br label %if.end, !dbg !6038

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6039
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6041
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #11, !dbg !6042, !srcloc !6043
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6044
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6045 dso_local ptr @request_key_auth_new(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @call_sbin_request_key(ptr noundef %authkey, ptr noundef %aux) #0 align 16 !dbg !4321 {
entry:
  %authkey.addr = alloca ptr, align 8
  %aux.addr = alloca ptr, align 8
  %rka = alloca ptr, align 8
  %cred = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %prkey = alloca i32, align 4
  %sskey = alloca i32, align 4
  %key = alloca ptr, align 8
  %keyring = alloca ptr, align 8
  %session = alloca ptr, align 8
  %user_session = alloca ptr, align 8
  %argv = alloca [9 x ptr], align 16
  %envp = alloca [3 x ptr], align 16
  %uid_str = alloca [12 x i8], align 1
  %gid_str = alloca [12 x i8], align 1
  %key_str = alloca [12 x i8], align 1
  %keyring_str = alloca [3 x [12 x i8]], align 16
  %desc = alloca [20 x i8], align 16
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %tmp9 = alloca ptr, align 8
  %tmp102 = alloca i32, align 4
  %tmp127 = alloca i32, align 4
  store ptr %authkey, ptr %authkey.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %authkey.addr, metadata !4323, metadata !DIExpression()), !dbg !6048
  store ptr %aux, ptr %aux.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aux.addr, metadata !4324, metadata !DIExpression()), !dbg !6049
  call void @llvm.lifetime.start.p0(i64 8, ptr %rka) #11, !dbg !6050
  call void @llvm.dbg.declare(metadata ptr %rka, metadata !4325, metadata !DIExpression()), !dbg !6051
  %0 = load ptr, ptr %authkey.addr, align 8, !dbg !6052
  %call = call ptr @get_request_key_auth(ptr noundef %0) #12, !dbg !6053
  store ptr %call, ptr %rka, align 8, !dbg !6051
  call void @llvm.lifetime.start.p0(i64 8, ptr %cred) #11, !dbg !6054
  call void @llvm.dbg.declare(metadata ptr %cred, metadata !4338, metadata !DIExpression()), !dbg !6055
  br label %do.body, !dbg !6056

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6058

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6058

do.end:                                           ; preds = %do.cond
  %call1 = call ptr @get_current() #12, !dbg !6056
  %cred2 = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 94, !dbg !6056
  %1 = load ptr, ptr %cred2, align 32, !dbg !6056
  store ptr %1, ptr %tmp, align 8, !dbg !6058
  %2 = load ptr, ptr %tmp, align 8, !dbg !6056
  store ptr %2, ptr %cred, align 8, !dbg !6055
  call void @llvm.lifetime.start.p0(i64 4, ptr %prkey) #11, !dbg !6060
  call void @llvm.dbg.declare(metadata ptr %prkey, metadata !4339, metadata !DIExpression()), !dbg !6061
  call void @llvm.lifetime.start.p0(i64 4, ptr %sskey) #11, !dbg !6060
  call void @llvm.dbg.declare(metadata ptr %sskey, metadata !4340, metadata !DIExpression()), !dbg !6062
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #11, !dbg !6063
  call void @llvm.dbg.declare(metadata ptr %key, metadata !4341, metadata !DIExpression()), !dbg !6064
  %3 = load ptr, ptr %rka, align 8, !dbg !6065
  %target_key = getelementptr inbounds %struct.request_key_auth, ptr %3, i32 0, i32 1, !dbg !6066
  %4 = load ptr, ptr %target_key, align 8, !dbg !6066
  store ptr %4, ptr %key, align 8, !dbg !6064
  call void @llvm.lifetime.start.p0(i64 8, ptr %keyring) #11, !dbg !6063
  call void @llvm.dbg.declare(metadata ptr %keyring, metadata !4342, metadata !DIExpression()), !dbg !6067
  call void @llvm.lifetime.start.p0(i64 8, ptr %session) #11, !dbg !6063
  call void @llvm.dbg.declare(metadata ptr %session, metadata !4343, metadata !DIExpression()), !dbg !6068
  call void @llvm.lifetime.start.p0(i64 8, ptr %user_session) #11, !dbg !6063
  call void @llvm.dbg.declare(metadata ptr %user_session, metadata !4344, metadata !DIExpression()), !dbg !6069
  call void @llvm.lifetime.start.p0(i64 72, ptr %argv) #11, !dbg !6070
  call void @llvm.dbg.declare(metadata ptr %argv, metadata !4345, metadata !DIExpression()), !dbg !6071
  call void @llvm.lifetime.start.p0(i64 24, ptr %envp) #11, !dbg !6070
  call void @llvm.dbg.declare(metadata ptr %envp, metadata !4349, metadata !DIExpression()), !dbg !6072
  call void @llvm.lifetime.start.p0(i64 12, ptr %uid_str) #11, !dbg !6070
  call void @llvm.dbg.declare(metadata ptr %uid_str, metadata !4350, metadata !DIExpression()), !dbg !6073
  call void @llvm.lifetime.start.p0(i64 12, ptr %gid_str) #11, !dbg !6070
  call void @llvm.dbg.declare(metadata ptr %gid_str, metadata !4352, metadata !DIExpression()), !dbg !6074
  call void @llvm.lifetime.start.p0(i64 12, ptr %key_str) #11, !dbg !6075
  call void @llvm.dbg.declare(metadata ptr %key_str, metadata !4353, metadata !DIExpression()), !dbg !6076
  call void @llvm.lifetime.start.p0(i64 36, ptr %keyring_str) #11, !dbg !6075
  call void @llvm.dbg.declare(metadata ptr %keyring_str, metadata !4354, metadata !DIExpression()), !dbg !6077
  call void @llvm.lifetime.start.p0(i64 20, ptr %desc) #11, !dbg !6078
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !4357, metadata !DIExpression()), !dbg !6079
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !6080
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4359, metadata !DIExpression()), !dbg !6081
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !6080
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4360, metadata !DIExpression()), !dbg !6082
  store i32 0, ptr %tmp3, align 4, !dbg !6083
  %5 = load i32, ptr %tmp3, align 4, !dbg !6086
  %call4 = call i32 @look_up_user_keyrings(ptr noundef null, ptr noundef %user_session) #12, !dbg !6087
  store i32 %call4, ptr %ret, align 4, !dbg !6088
  %6 = load i32, ptr %ret, align 4, !dbg !6089
  %cmp = icmp slt i32 %6, 0, !dbg !6091
  br i1 %cmp, label %if.then, label %if.end, !dbg !6092

if.then:                                          ; preds = %do.end
  br label %error_us, !dbg !6093

if.end:                                           ; preds = %do.end
  %arraydecay = getelementptr inbounds [20 x i8], ptr %desc, i64 0, i64 0, !dbg !6094
  %7 = load ptr, ptr %key, align 8, !dbg !6095
  %serial = getelementptr inbounds %struct.key, ptr %7, i32 0, i32 1, !dbg !6096
  %8 = load i32, ptr %serial, align 4, !dbg !6096
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.2, i32 noundef %8) #12, !dbg !6097
  br label %do.body6, !dbg !6098

do.body6:                                         ; preds = %if.end
  br label %do.cond7, !dbg !6100

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !6100

do.end8:                                          ; preds = %do.cond7
  %call10 = call ptr @get_current() #12, !dbg !6098
  %cred11 = getelementptr inbounds %struct.task_struct, ptr %call10, i32 0, i32 94, !dbg !6098
  %9 = load ptr, ptr %cred11, align 32, !dbg !6098
  store ptr %9, ptr %tmp9, align 8, !dbg !6100
  %10 = load ptr, ptr %tmp9, align 8, !dbg !6098
  %call12 = call ptr @get_cred(ptr noundef %10) #12, !dbg !6102
  store ptr %call12, ptr %cred, align 8, !dbg !6103
  %arraydecay13 = getelementptr inbounds [20 x i8], ptr %desc, i64 0, i64 0, !dbg !6104
  %11 = load ptr, ptr %cred, align 8, !dbg !6105
  %fsuid = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 7, !dbg !6106
  %12 = load ptr, ptr %cred, align 8, !dbg !6107
  %fsgid = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 8, !dbg !6108
  %13 = load ptr, ptr %cred, align 8, !dbg !6109
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %fsuid, i32 0, i32 0, !dbg !6110
  %14 = load i32, ptr %coerce.dive, align 8, !dbg !6110
  %coerce.dive14 = getelementptr inbounds %struct.kgid_t, ptr %fsgid, i32 0, i32 0, !dbg !6110
  %15 = load i32, ptr %coerce.dive14, align 4, !dbg !6110
  %call15 = call ptr @keyring_alloc(ptr noundef %arraydecay13, i32 %14, i32 %15, ptr noundef %13, i32 noundef 1057161216, i64 noundef 1, ptr noundef null, ptr noundef null) #12, !dbg !6110
  store ptr %call15, ptr %keyring, align 8, !dbg !6111
  %16 = load ptr, ptr %cred, align 8, !dbg !6112
  call void @put_cred(ptr noundef %16) #12, !dbg !6113
  %17 = load ptr, ptr %keyring, align 8, !dbg !6114
  %call16 = call zeroext i1 @IS_ERR(ptr noundef %17) #12, !dbg !6116
  br i1 %call16, label %if.then17, label %if.end19, !dbg !6117

if.then17:                                        ; preds = %do.end8
  %18 = load ptr, ptr %keyring, align 8, !dbg !6118
  %call18 = call i64 @PTR_ERR(ptr noundef %18) #12, !dbg !6120
  %conv = trunc i64 %call18 to i32, !dbg !6120
  store i32 %conv, ptr %ret, align 4, !dbg !6121
  br label %error_alloc, !dbg !6122

if.end19:                                         ; preds = %do.end8
  %19 = load ptr, ptr %keyring, align 8, !dbg !6123
  %20 = load ptr, ptr %authkey.addr, align 8, !dbg !6124
  %call20 = call i32 @key_link(ptr noundef %19, ptr noundef %20) #12, !dbg !6125
  store i32 %call20, ptr %ret, align 4, !dbg !6126
  %21 = load i32, ptr %ret, align 4, !dbg !6127
  %cmp21 = icmp slt i32 %21, 0, !dbg !6129
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !6130

if.then23:                                        ; preds = %if.end19
  br label %error_link, !dbg !6131

if.end24:                                         ; preds = %if.end19
  %arraydecay25 = getelementptr inbounds [12 x i8], ptr %uid_str, i64 0, i64 0, !dbg !6132
  %22 = load ptr, ptr %cred, align 8, !dbg !6133
  %fsuid26 = getelementptr inbounds %struct.cred, ptr %22, i32 0, i32 7, !dbg !6134
  %coerce.dive27 = getelementptr inbounds %struct.kuid_t, ptr %fsuid26, i32 0, i32 0, !dbg !6135
  %23 = load i32, ptr %coerce.dive27, align 8, !dbg !6135
  %call28 = call i32 @from_kuid(ptr noundef @init_user_ns, i32 %23) #12, !dbg !6135
  %call29 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay25, ptr noundef @.str.3, i32 noundef %call28) #12, !dbg !6136
  %arraydecay30 = getelementptr inbounds [12 x i8], ptr %gid_str, i64 0, i64 0, !dbg !6137
  %24 = load ptr, ptr %cred, align 8, !dbg !6138
  %fsgid31 = getelementptr inbounds %struct.cred, ptr %24, i32 0, i32 8, !dbg !6139
  %coerce.dive32 = getelementptr inbounds %struct.kgid_t, ptr %fsgid31, i32 0, i32 0, !dbg !6140
  %25 = load i32, ptr %coerce.dive32, align 4, !dbg !6140
  %call33 = call i32 @from_kgid(ptr noundef @init_user_ns, i32 %25) #12, !dbg !6140
  %call34 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay30, ptr noundef @.str.3, i32 noundef %call33) #12, !dbg !6141
  %arraydecay35 = getelementptr inbounds [12 x i8], ptr %key_str, i64 0, i64 0, !dbg !6142
  %26 = load ptr, ptr %key, align 8, !dbg !6143
  %serial36 = getelementptr inbounds %struct.key, ptr %26, i32 0, i32 1, !dbg !6144
  %27 = load i32, ptr %serial36, align 4, !dbg !6144
  %call37 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay35, ptr noundef @.str.3, i32 noundef %27) #12, !dbg !6145
  %arrayidx = getelementptr [3 x [12 x i8]], ptr %keyring_str, i64 0, i64 0, !dbg !6146
  %arraydecay38 = getelementptr inbounds [12 x i8], ptr %arrayidx, i64 0, i64 0, !dbg !6146
  %28 = load ptr, ptr %cred, align 8, !dbg !6147
  %thread_keyring = getelementptr inbounds %struct.cred, ptr %28, i32 0, i32 18, !dbg !6148
  %29 = load ptr, ptr %thread_keyring, align 8, !dbg !6148
  %tobool = icmp ne ptr %29, null, !dbg !6147
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6147

cond.true:                                        ; preds = %if.end24
  %30 = load ptr, ptr %cred, align 8, !dbg !6149
  %thread_keyring39 = getelementptr inbounds %struct.cred, ptr %30, i32 0, i32 18, !dbg !6150
  %31 = load ptr, ptr %thread_keyring39, align 8, !dbg !6150
  %serial40 = getelementptr inbounds %struct.key, ptr %31, i32 0, i32 1, !dbg !6151
  %32 = load i32, ptr %serial40, align 4, !dbg !6151
  br label %cond.end, !dbg !6147

cond.false:                                       ; preds = %if.end24
  br label %cond.end, !dbg !6147

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %32, %cond.true ], [ 0, %cond.false ], !dbg !6147
  %call41 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay38, ptr noundef @.str.3, i32 noundef %cond) #12, !dbg !6152
  store i32 0, ptr %prkey, align 4, !dbg !6153
  %33 = load ptr, ptr %cred, align 8, !dbg !6154
  %process_keyring = getelementptr inbounds %struct.cred, ptr %33, i32 0, i32 17, !dbg !6156
  %34 = load ptr, ptr %process_keyring, align 8, !dbg !6156
  %tobool42 = icmp ne ptr %34, null, !dbg !6154
  br i1 %tobool42, label %if.then43, label %if.end46, !dbg !6157

if.then43:                                        ; preds = %cond.end
  %35 = load ptr, ptr %cred, align 8, !dbg !6158
  %process_keyring44 = getelementptr inbounds %struct.cred, ptr %35, i32 0, i32 17, !dbg !6159
  %36 = load ptr, ptr %process_keyring44, align 8, !dbg !6159
  %serial45 = getelementptr inbounds %struct.key, ptr %36, i32 0, i32 1, !dbg !6160
  %37 = load i32, ptr %serial45, align 4, !dbg !6160
  store i32 %37, ptr %prkey, align 4, !dbg !6161
  br label %if.end46, !dbg !6162

if.end46:                                         ; preds = %if.then43, %cond.end
  %arrayidx47 = getelementptr [3 x [12 x i8]], ptr %keyring_str, i64 0, i64 1, !dbg !6163
  %arraydecay48 = getelementptr inbounds [12 x i8], ptr %arrayidx47, i64 0, i64 0, !dbg !6163
  %38 = load i32, ptr %prkey, align 4, !dbg !6164
  %call49 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay48, ptr noundef @.str.3, i32 noundef %38) #12, !dbg !6165
  %39 = load ptr, ptr %cred, align 8, !dbg !6166
  %session_keyring = getelementptr inbounds %struct.cred, ptr %39, i32 0, i32 16, !dbg !6167
  %40 = load ptr, ptr %session_keyring, align 8, !dbg !6167
  store ptr %40, ptr %session, align 8, !dbg !6168
  %41 = load ptr, ptr %session, align 8, !dbg !6169
  %tobool50 = icmp ne ptr %41, null, !dbg !6169
  br i1 %tobool50, label %if.end52, label %if.then51, !dbg !6171

if.then51:                                        ; preds = %if.end46
  %42 = load ptr, ptr %user_session, align 8, !dbg !6172
  store ptr %42, ptr %session, align 8, !dbg !6173
  br label %if.end52, !dbg !6174

if.end52:                                         ; preds = %if.then51, %if.end46
  %43 = load ptr, ptr %session, align 8, !dbg !6175
  %serial53 = getelementptr inbounds %struct.key, ptr %43, i32 0, i32 1, !dbg !6176
  %44 = load i32, ptr %serial53, align 4, !dbg !6176
  store i32 %44, ptr %sskey, align 4, !dbg !6177
  %arrayidx54 = getelementptr [3 x [12 x i8]], ptr %keyring_str, i64 0, i64 2, !dbg !6178
  %arraydecay55 = getelementptr inbounds [12 x i8], ptr %arrayidx54, i64 0, i64 0, !dbg !6178
  %45 = load i32, ptr %sskey, align 4, !dbg !6179
  %call56 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay55, ptr noundef @.str.3, i32 noundef %45) #12, !dbg !6180
  store i32 0, ptr %i, align 4, !dbg !6181
  %46 = load i32, ptr %i, align 4, !dbg !6182
  %inc = add i32 %46, 1, !dbg !6182
  store i32 %inc, ptr %i, align 4, !dbg !6182
  %idxprom = sext i32 %46 to i64, !dbg !6183
  %arrayidx57 = getelementptr [3 x ptr], ptr %envp, i64 0, i64 %idxprom, !dbg !6183
  store ptr @.str.4, ptr %arrayidx57, align 8, !dbg !6184
  %47 = load i32, ptr %i, align 4, !dbg !6185
  %inc58 = add i32 %47, 1, !dbg !6185
  store i32 %inc58, ptr %i, align 4, !dbg !6185
  %idxprom59 = sext i32 %47 to i64, !dbg !6186
  %arrayidx60 = getelementptr [3 x ptr], ptr %envp, i64 0, i64 %idxprom59, !dbg !6186
  store ptr @.str.5, ptr %arrayidx60, align 8, !dbg !6187
  %48 = load i32, ptr %i, align 4, !dbg !6188
  %idxprom61 = sext i32 %48 to i64, !dbg !6189
  %arrayidx62 = getelementptr [3 x ptr], ptr %envp, i64 0, i64 %idxprom61, !dbg !6189
  store ptr null, ptr %arrayidx62, align 8, !dbg !6190
  store i32 0, ptr %i, align 4, !dbg !6191
  %49 = load i32, ptr %i, align 4, !dbg !6192
  %inc63 = add i32 %49, 1, !dbg !6192
  store i32 %inc63, ptr %i, align 4, !dbg !6192
  %idxprom64 = sext i32 %49 to i64, !dbg !6193
  %arrayidx65 = getelementptr [9 x ptr], ptr %argv, i64 0, i64 %idxprom64, !dbg !6193
  store ptr @call_sbin_request_key.request_key, ptr %arrayidx65, align 8, !dbg !6194
  %50 = load ptr, ptr %rka, align 8, !dbg !6195
  %op = getelementptr inbounds %struct.request_key_auth, ptr %50, i32 0, i32 7, !dbg !6196
  %arraydecay66 = getelementptr inbounds [8 x i8], ptr %op, i64 0, i64 0, !dbg !6195
  %51 = load i32, ptr %i, align 4, !dbg !6197
  %inc67 = add i32 %51, 1, !dbg !6197
  store i32 %inc67, ptr %i, align 4, !dbg !6197
  %idxprom68 = sext i32 %51 to i64, !dbg !6198
  %arrayidx69 = getelementptr [9 x ptr], ptr %argv, i64 0, i64 %idxprom68, !dbg !6198
  store ptr %arraydecay66, ptr %arrayidx69, align 8, !dbg !6199
  %arraydecay70 = getelementptr inbounds [12 x i8], ptr %key_str, i64 0, i64 0, !dbg !6200
  %52 = load i32, ptr %i, align 4, !dbg !6201
  %inc71 = add i32 %52, 1, !dbg !6201
  store i32 %inc71, ptr %i, align 4, !dbg !6201
  %idxprom72 = sext i32 %52 to i64, !dbg !6202
  %arrayidx73 = getelementptr [9 x ptr], ptr %argv, i64 0, i64 %idxprom72, !dbg !6202
  store ptr %arraydecay70, ptr %arrayidx73, align 8, !dbg !6203
  %arraydecay74 = getelementptr inbounds [12 x i8], ptr %uid_str, i64 0, i64 0, !dbg !6204
  %53 = load i32, ptr %i, align 4, !dbg !6205
  %inc75 = add i32 %53, 1, !dbg !6205
  store i32 %inc75, ptr %i, align 4, !dbg !6205
  %idxprom76 = sext i32 %53 to i64, !dbg !6206
  %arrayidx77 = getelementptr [9 x ptr], ptr %argv, i64 0, i64 %idxprom76, !dbg !6206
  store ptr %arraydecay74, ptr %arrayidx77, align 8, !dbg !6207
  %arraydecay78 = getelementptr inbounds [12 x i8], ptr %gid_str, i64 0, i64 0, !dbg !6208
  %54 = load i32, ptr %i, align 4, !dbg !6209
  %inc79 = add i32 %54, 1, !dbg !6209
  store i32 %inc79, ptr %i, align 4, !dbg !6209
  %idxprom80 = sext i32 %54 to i64, !dbg !6210
  %arrayidx81 = getelementptr [9 x ptr], ptr %argv, i64 0, i64 %idxprom80, !dbg !6210
  store ptr %arraydecay78, ptr %arrayidx81, align 8, !dbg !6211
  %arrayidx82 = getelementptr [3 x [12 x i8]], ptr %keyring_str, i64 0, i64 0, !dbg !6212
  %arraydecay83 = getelementptr inbounds [12 x i8], ptr %arrayidx82, i64 0, i64 0, !dbg !6212
  %55 = load i32, ptr %i, align 4, !dbg !6213
  %inc84 = add i32 %55, 1, !dbg !6213
  store i32 %inc84, ptr %i, align 4, !dbg !6213
  %idxprom85 = sext i32 %55 to i64, !dbg !6214
  %arrayidx86 = getelementptr [9 x ptr], ptr %argv, i64 0, i64 %idxprom85, !dbg !6214
  store ptr %arraydecay83, ptr %arrayidx86, align 8, !dbg !6215
  %arrayidx87 = getelementptr [3 x [12 x i8]], ptr %keyring_str, i64 0, i64 1, !dbg !6216
  %arraydecay88 = getelementptr inbounds [12 x i8], ptr %arrayidx87, i64 0, i64 0, !dbg !6216
  %56 = load i32, ptr %i, align 4, !dbg !6217
  %inc89 = add i32 %56, 1, !dbg !6217
  store i32 %inc89, ptr %i, align 4, !dbg !6217
  %idxprom90 = sext i32 %56 to i64, !dbg !6218
  %arrayidx91 = getelementptr [9 x ptr], ptr %argv, i64 0, i64 %idxprom90, !dbg !6218
  store ptr %arraydecay88, ptr %arrayidx91, align 8, !dbg !6219
  %arrayidx92 = getelementptr [3 x [12 x i8]], ptr %keyring_str, i64 0, i64 2, !dbg !6220
  %arraydecay93 = getelementptr inbounds [12 x i8], ptr %arrayidx92, i64 0, i64 0, !dbg !6220
  %57 = load i32, ptr %i, align 4, !dbg !6221
  %inc94 = add i32 %57, 1, !dbg !6221
  store i32 %inc94, ptr %i, align 4, !dbg !6221
  %idxprom95 = sext i32 %57 to i64, !dbg !6222
  %arrayidx96 = getelementptr [9 x ptr], ptr %argv, i64 0, i64 %idxprom95, !dbg !6222
  store ptr %arraydecay93, ptr %arrayidx96, align 8, !dbg !6223
  %58 = load i32, ptr %i, align 4, !dbg !6224
  %idxprom97 = sext i32 %58 to i64, !dbg !6225
  %arrayidx98 = getelementptr [9 x ptr], ptr %argv, i64 0, i64 %idxprom97, !dbg !6225
  store ptr null, ptr %arrayidx98, align 8, !dbg !6226
  %arraydecay99 = getelementptr inbounds [9 x ptr], ptr %argv, i64 0, i64 0, !dbg !6227
  %arraydecay100 = getelementptr inbounds [3 x ptr], ptr %envp, i64 0, i64 0, !dbg !6228
  %59 = load ptr, ptr %keyring, align 8, !dbg !6229
  %call101 = call i32 @call_usermodehelper_keys(ptr noundef @call_sbin_request_key.request_key, ptr noundef %arraydecay99, ptr noundef %arraydecay100, ptr noundef %59, i32 noundef 2) #12, !dbg !6230
  store i32 %call101, ptr %ret, align 4, !dbg !6231
  store i32 0, ptr %tmp102, align 4, !dbg !6232
  %60 = load i32, ptr %tmp102, align 4, !dbg !6235
  %61 = load i32, ptr %ret, align 4, !dbg !6236
  %cmp103 = icmp sge i32 %61, 0, !dbg !6238
  br i1 %cmp103, label %if.then105, label %if.end126, !dbg !6239

if.then105:                                       ; preds = %if.end52
  %62 = load ptr, ptr %key, align 8, !dbg !6240
  %flags = getelementptr inbounds %struct.key, ptr %62, i32 0, i32 14, !dbg !6240
  %63 = ptrtoint ptr %flags to i64, !dbg !6240
  %cmp106 = icmp ne i64 %63, 0, !dbg !6240
  %conv107 = zext i1 %cmp106 to i32, !dbg !6240
  %64 = call i1 @llvm.is.constant.i32(i32 %conv107), !dbg !6240
  br i1 %64, label %land.lhs.true, label %cond.false117, !dbg !6240

land.lhs.true:                                    ; preds = %if.then105
  %65 = load ptr, ptr %key, align 8, !dbg !6240
  %flags108 = getelementptr inbounds %struct.key, ptr %65, i32 0, i32 14, !dbg !6240
  %66 = ptrtoint ptr %flags108 to i64, !dbg !6240
  %cmp109 = icmp ne i64 %66, 0, !dbg !6240
  br i1 %cmp109, label %land.lhs.true111, label %cond.false117, !dbg !6240

land.lhs.true111:                                 ; preds = %land.lhs.true
  %67 = load ptr, ptr %key, align 8, !dbg !6240
  %flags112 = getelementptr inbounds %struct.key, ptr %67, i32 0, i32 14, !dbg !6240
  %68 = load i64, ptr %flags112, align 8, !dbg !6240
  %69 = call i1 @llvm.is.constant.i64(i64 %68), !dbg !6240
  br i1 %69, label %cond.true113, label %cond.false117, !dbg !6243

cond.true113:                                     ; preds = %land.lhs.true111
  %70 = load ptr, ptr %key, align 8, !dbg !6240
  %flags114 = getelementptr inbounds %struct.key, ptr %70, i32 0, i32 14, !dbg !6240
  %call115 = call zeroext i1 @const_test_bit(i64 noundef 3, ptr noundef %flags114) #12, !dbg !6240
  br i1 %call115, label %if.then124, label %lor.lhs.false, !dbg !6240

cond.false117:                                    ; preds = %land.lhs.true111, %land.lhs.true, %if.then105
  %71 = load ptr, ptr %key, align 8, !dbg !6240
  %flags118 = getelementptr inbounds %struct.key, ptr %71, i32 0, i32 14, !dbg !6240
  %call119 = call zeroext i1 @_test_bit(i64 noundef 3, ptr noundef %flags118) #12, !dbg !6240
  br i1 %call119, label %if.then124, label %lor.lhs.false, !dbg !6243

lor.lhs.false:                                    ; preds = %cond.false117, %cond.true113
  %72 = load ptr, ptr %key, align 8, !dbg !6244
  %call121 = call i32 @key_validate(ptr noundef %72) #12, !dbg !6245
  %cmp122 = icmp slt i32 %call121, 0, !dbg !6246
  br i1 %cmp122, label %if.then124, label %if.else, !dbg !6247

if.then124:                                       ; preds = %lor.lhs.false, %cond.false117, %cond.true113
  store i32 -126, ptr %ret, align 4, !dbg !6248
  br label %if.end125, !dbg !6249

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, ptr %ret, align 4, !dbg !6250
  br label %if.end125

if.end125:                                        ; preds = %if.else, %if.then124
  br label %if.end126, !dbg !6251

if.end126:                                        ; preds = %if.end125, %if.end52
  br label %error_link, !dbg !6252

error_link:                                       ; preds = %if.end126, %if.then23
  call void @llvm.dbg.label(metadata !4361), !dbg !6253
  %73 = load ptr, ptr %keyring, align 8, !dbg !6254
  call void @key_put(ptr noundef %73) #12, !dbg !6255
  br label %error_alloc, !dbg !6255

error_alloc:                                      ; preds = %error_link, %if.then17
  call void @llvm.dbg.label(metadata !4362), !dbg !6256
  %74 = load ptr, ptr %user_session, align 8, !dbg !6257
  call void @key_put(ptr noundef %74) #12, !dbg !6258
  br label %error_us, !dbg !6258

error_us:                                         ; preds = %error_alloc, %if.then
  call void @llvm.dbg.label(metadata !4363), !dbg !6259
  %75 = load ptr, ptr %authkey.addr, align 8, !dbg !6260
  %76 = load i32, ptr %ret, align 4, !dbg !6261
  call void @complete_request_key(ptr noundef %75, i32 noundef %76) #12, !dbg !6262
  store i32 0, ptr %tmp127, align 4, !dbg !6263
  %77 = load i32, ptr %tmp127, align 4, !dbg !6266
  %78 = load i32, ptr %ret, align 4, !dbg !6267
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !6268
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !6268
  call void @llvm.lifetime.end.p0(i64 20, ptr %desc) #11, !dbg !6268
  call void @llvm.lifetime.end.p0(i64 36, ptr %keyring_str) #11, !dbg !6268
  call void @llvm.lifetime.end.p0(i64 12, ptr %key_str) #11, !dbg !6268
  call void @llvm.lifetime.end.p0(i64 12, ptr %gid_str) #11, !dbg !6268
  call void @llvm.lifetime.end.p0(i64 12, ptr %uid_str) #11, !dbg !6268
  call void @llvm.lifetime.end.p0(i64 24, ptr %envp) #11, !dbg !6268
  call void @llvm.lifetime.end.p0(i64 72, ptr %argv) #11, !dbg !6268
  call void @llvm.lifetime.end.p0(i64 8, ptr %user_session) #11, !dbg !6268
  call void @llvm.lifetime.end.p0(i64 8, ptr %session) #11, !dbg !6268
  call void @llvm.lifetime.end.p0(i64 8, ptr %keyring) #11, !dbg !6268
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #11, !dbg !6268
  call void @llvm.lifetime.end.p0(i64 4, ptr %sskey) #11, !dbg !6268
  call void @llvm.lifetime.end.p0(i64 4, ptr %prkey) #11, !dbg !6268
  call void @llvm.lifetime.end.p0(i64 8, ptr %cred) #11, !dbg !6268
  call void @llvm.lifetime.end.p0(i64 8, ptr %rka) #11, !dbg !6268
  ret i32 %78, !dbg !6269
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6270 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_cred(ptr noundef %cred) #3 align 16 !dbg !6274 {
entry:
  %retval = alloca ptr, align 8
  %cred.addr = alloca ptr, align 8
  %nonconst_cred = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cred, ptr %cred.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cred.addr, metadata !6278, metadata !DIExpression()), !dbg !6280
  call void @llvm.lifetime.start.p0(i64 8, ptr %nonconst_cred) #11, !dbg !6281
  call void @llvm.dbg.declare(metadata ptr %nonconst_cred, metadata !6279, metadata !DIExpression()), !dbg !6282
  %0 = load ptr, ptr %cred.addr, align 8, !dbg !6283
  store ptr %0, ptr %nonconst_cred, align 8, !dbg !6282
  %1 = load ptr, ptr %cred.addr, align 8, !dbg !6284
  %tobool = icmp ne ptr %1, null, !dbg !6284
  br i1 %tobool, label %if.end, label %if.then, !dbg !6286

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cred.addr, align 8, !dbg !6287
  store ptr %2, ptr %retval, align 8, !dbg !6288
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6288

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %nonconst_cred, align 8, !dbg !6289
  %4 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 25, !dbg !6290
  store i32 0, ptr %4, align 8, !dbg !6291
  %5 = load ptr, ptr %nonconst_cred, align 8, !dbg !6292
  %call = call ptr @get_new_cred(ptr noundef %5) #12, !dbg !6293
  store ptr %call, ptr %retval, align 8, !dbg !6294
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6294

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %nonconst_cred) #11, !dbg !6295
  %6 = load ptr, ptr %retval, align 8, !dbg !6295
  ret ptr %6, !dbg !6295
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6296 dso_local ptr @keyring_alloc(ptr noundef, i32, i32, ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_cred(ptr noundef %_cred) #3 align 16 !dbg !6299 {
entry:
  %_cred.addr = alloca ptr, align 8
  %cred = alloca ptr, align 8
  store ptr %_cred, ptr %_cred.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_cred.addr, metadata !6303, metadata !DIExpression()), !dbg !6305
  call void @llvm.lifetime.start.p0(i64 8, ptr %cred) #11, !dbg !6306
  call void @llvm.dbg.declare(metadata ptr %cred, metadata !6304, metadata !DIExpression()), !dbg !6307
  %0 = load ptr, ptr %_cred.addr, align 8, !dbg !6308
  store ptr %0, ptr %cred, align 8, !dbg !6307
  %1 = load ptr, ptr %cred, align 8, !dbg !6309
  %tobool = icmp ne ptr %1, null, !dbg !6309
  br i1 %tobool, label %if.then, label %if.end2, !dbg !6311

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cred, align 8, !dbg !6312
  %usage = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 0, !dbg !6315
  %call = call zeroext i1 @atomic_long_dec_and_test(ptr noundef %usage) #12, !dbg !6316
  br i1 %call, label %if.then1, label %if.end, !dbg !6317

if.then1:                                         ; preds = %if.then
  %3 = load ptr, ptr %cred, align 8, !dbg !6318
  call void @__put_cred(ptr noundef %3) #12, !dbg !6319
  br label %if.end, !dbg !6319

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end2, !dbg !6320

if.end2:                                          ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %cred) #11, !dbg !6321
  ret void, !dbg !6321
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid(ptr noundef %to, i32 %kuid.coerce) #3 align 16 !dbg !6322 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6326, metadata !DIExpression()), !dbg !6328
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !6327, metadata !DIExpression()), !dbg !6329
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !6330
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !6330
  %call = call i32 @__kuid_val(i32 %0) #12, !dbg !6330
  ret i32 %call, !dbg !6331
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid(ptr noundef %to, i32 %kgid.coerce) #3 align 16 !dbg !6332 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6336, metadata !DIExpression()), !dbg !6338
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !6337, metadata !DIExpression()), !dbg !6339
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !6340
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !6340
  %call = call i32 @__kgid_val(i32 %0) #12, !dbg !6340
  ret i32 %call, !dbg !6341
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @call_usermodehelper_keys(ptr noundef %path, ptr noundef %argv, ptr noundef %envp, ptr noundef %session_keyring, i32 noundef %wait) #0 align 16 !dbg !6342 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca ptr, align 8
  %argv.addr = alloca ptr, align 8
  %envp.addr = alloca ptr, align 8
  %session_keyring.addr = alloca ptr, align 8
  %wait.addr = alloca i32, align 4
  %info = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !6347, metadata !DIExpression()), !dbg !6373
  store ptr %argv, ptr %argv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !6348, metadata !DIExpression()), !dbg !6374
  store ptr %envp, ptr %envp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %envp.addr, metadata !6349, metadata !DIExpression()), !dbg !6375
  store ptr %session_keyring, ptr %session_keyring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %session_keyring.addr, metadata !6350, metadata !DIExpression()), !dbg !6376
  store i32 %wait, ptr %wait.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !6351, metadata !DIExpression()), !dbg !6377
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #11, !dbg !6378
  call void @llvm.dbg.declare(metadata ptr %info, metadata !6352, metadata !DIExpression()), !dbg !6379
  %0 = load ptr, ptr %path.addr, align 8, !dbg !6380
  %1 = load ptr, ptr %argv.addr, align 8, !dbg !6381
  %2 = load ptr, ptr %envp.addr, align 8, !dbg !6382
  %3 = load ptr, ptr %session_keyring.addr, align 8, !dbg !6383
  %call = call ptr @call_usermodehelper_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 3264, ptr noundef @umh_keys_init, ptr noundef @umh_keys_cleanup, ptr noundef %3) #12, !dbg !6384
  store ptr %call, ptr %info, align 8, !dbg !6385
  %4 = load ptr, ptr %info, align 8, !dbg !6386
  %tobool = icmp ne ptr %4, null, !dbg !6386
  br i1 %tobool, label %if.end, label %if.then, !dbg !6388

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6389
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6389

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %session_keyring.addr, align 8, !dbg !6390
  %call1 = call ptr @key_get(ptr noundef %5) #12, !dbg !6391
  %6 = load ptr, ptr %info, align 8, !dbg !6392
  %7 = load i32, ptr %wait.addr, align 4, !dbg !6393
  %call2 = call i32 @call_usermodehelper_exec(ptr noundef %6, i32 noundef %7) #12, !dbg !6394
  store i32 %call2, ptr %retval, align 4, !dbg !6395
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6395

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #11, !dbg !6396
  %8 = load i32, ptr %retval, align 4, !dbg !6396
  ret i32 %8, !dbg !6396
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_new_cred(ptr noundef %cred) #3 align 16 !dbg !6397 {
entry:
  %cred.addr = alloca ptr, align 8
  store ptr %cred, ptr %cred.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cred.addr, metadata !6401, metadata !DIExpression()), !dbg !6402
  %0 = load ptr, ptr %cred.addr, align 8, !dbg !6403
  %usage = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 0, !dbg !6404
  call void @atomic_long_inc(ptr noundef %usage) #12, !dbg !6405
  %1 = load ptr, ptr %cred.addr, align 8, !dbg !6406
  ret ptr %1, !dbg !6407
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_inc(ptr noundef %v) #6 align 16 !dbg !6408 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6412, metadata !DIExpression()), !dbg !6413
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6414
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #12, !dbg !6415
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6416
  call void @raw_atomic_long_inc(ptr noundef %1) #12, !dbg !6417
  ret void, !dbg !6418
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_inc(ptr noundef %v) #6 align 16 !dbg !6419 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6421, metadata !DIExpression()), !dbg !6422
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6423
  call void @raw_atomic64_inc(ptr noundef %0) #12, !dbg !6424
  ret void, !dbg !6425
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_inc(ptr noundef %v) #6 align 16 !dbg !6426 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6431, metadata !DIExpression()), !dbg !6432
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6433
  call void @arch_atomic64_inc(ptr noundef %0) #12, !dbg !6434
  ret void, !dbg !6435
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_inc(ptr noundef %v) #6 align 16 !dbg !6436 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6439, metadata !DIExpression()), !dbg !6440
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6441
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !6442
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6443
  %counter1 = getelementptr inbounds %struct.atomic64_t, ptr %1, i32 0, i32 0, !dbg !6444
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, ptr elementtype(i64) %counter1) #11, !dbg !6445, !srcloc !6446
  ret void, !dbg !6447
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_long_dec_and_test(ptr noundef %v) #6 align 16 !dbg !6448 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6452, metadata !DIExpression()), !dbg !6453
  br label %do.body, !dbg !6454

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6455

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6457
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #12, !dbg !6458
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6459
  %call = call zeroext i1 @raw_atomic_long_dec_and_test(ptr noundef %1) #12, !dbg !6460
  ret i1 %call, !dbg !6461
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6462 dso_local void @__put_cred(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_long_dec_and_test(ptr noundef %v) #6 align 16 !dbg !6465 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6467, metadata !DIExpression()), !dbg !6468
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6469
  %call = call zeroext i1 @raw_atomic64_dec_and_test(ptr noundef %0) #12, !dbg !6470
  ret i1 %call, !dbg !6471
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic64_dec_and_test(ptr noundef %v) #6 align 16 !dbg !6472 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6476, metadata !DIExpression()), !dbg !6477
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6478
  %call = call zeroext i1 @arch_atomic64_dec_and_test(ptr noundef %0) #12, !dbg !6479
  ret i1 %call, !dbg !6480
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic64_dec_and_test(ptr noundef %v) #6 align 16 !dbg !6481 {
entry:
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6483, metadata !DIExpression()), !dbg !6486
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #11, !dbg !6487
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6484, metadata !DIExpression()), !dbg !6487
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6487
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !6487
  %1 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decq $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, ptr elementtype(i64) %counter) #11, !dbg !6487, !srcloc !6488
  %2 = icmp ult i8 %1, 2, !dbg !6487
  call void @llvm.assume(i1 %2), !dbg !6487
  store i8 %1, ptr %c, align 1, !dbg !6487
  %3 = load i8, ptr %c, align 1, !dbg !6487, !range !4901, !noundef !1147
  %tobool = trunc i8 %3 to i1, !dbg !6487
  %frombool = zext i1 %tobool to i8, !dbg !6487
  store i8 %frombool, ptr %tmp, align 1, !dbg !6487
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #11, !dbg !6489
  %4 = load i8, ptr %tmp, align 1, !dbg !6487, !range !4901, !noundef !1147
  %tobool1 = trunc i8 %4 to i1, !dbg !6487
  ret i1 %tobool1, !dbg !6490
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kuid_val(i32 %uid.coerce) #3 align 16 !dbg !6491 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !6495, metadata !DIExpression()), !dbg !6496
  %val = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !6497
  %0 = load i32, ptr %val, align 4, !dbg !6497
  ret i32 %0, !dbg !6498
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kgid_val(i32 %gid.coerce) #3 align 16 !dbg !6499 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !6503, metadata !DIExpression()), !dbg !6504
  %val = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !6505
  %0 = load i32, ptr %val, align 4, !dbg !6505
  ret i32 %0, !dbg !6506
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6507 dso_local ptr @call_usermodehelper_setup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @umh_keys_init(ptr noundef %info, ptr noundef %cred) #0 align 16 !dbg !6510 {
entry:
  %info.addr = alloca ptr, align 8
  %cred.addr = alloca ptr, align 8
  %keyring = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !6512, metadata !DIExpression()), !dbg !6515
  store ptr %cred, ptr %cred.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cred.addr, metadata !6513, metadata !DIExpression()), !dbg !6516
  call void @llvm.lifetime.start.p0(i64 8, ptr %keyring) #11, !dbg !6517
  call void @llvm.dbg.declare(metadata ptr %keyring, metadata !6514, metadata !DIExpression()), !dbg !6518
  %0 = load ptr, ptr %info.addr, align 8, !dbg !6519
  %data = getelementptr inbounds %struct.subprocess_info, ptr %0, i32 0, i32 9, !dbg !6520
  %1 = load ptr, ptr %data, align 8, !dbg !6520
  store ptr %1, ptr %keyring, align 8, !dbg !6518
  %2 = load ptr, ptr %cred.addr, align 8, !dbg !6521
  %3 = load ptr, ptr %keyring, align 8, !dbg !6522
  %call = call i32 @install_session_keyring_to_cred(ptr noundef %2, ptr noundef %3) #12, !dbg !6523
  call void @llvm.lifetime.end.p0(i64 8, ptr %keyring) #11, !dbg !6524
  ret i32 %call, !dbg !6525
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @umh_keys_cleanup(ptr noundef %info) #0 align 16 !dbg !6526 {
entry:
  %info.addr = alloca ptr, align 8
  %keyring = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !6528, metadata !DIExpression()), !dbg !6530
  call void @llvm.lifetime.start.p0(i64 8, ptr %keyring) #11, !dbg !6531
  call void @llvm.dbg.declare(metadata ptr %keyring, metadata !6529, metadata !DIExpression()), !dbg !6532
  %0 = load ptr, ptr %info.addr, align 8, !dbg !6533
  %data = getelementptr inbounds %struct.subprocess_info, ptr %0, i32 0, i32 9, !dbg !6534
  %1 = load ptr, ptr %data, align 8, !dbg !6534
  store ptr %1, ptr %keyring, align 8, !dbg !6532
  %2 = load ptr, ptr %keyring, align 8, !dbg !6535
  call void @key_put(ptr noundef %2) #12, !dbg !6536
  call void @llvm.lifetime.end.p0(i64 8, ptr %keyring) #11, !dbg !6537
  ret void, !dbg !6537
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6538 dso_local i32 @call_usermodehelper_exec(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6541 dso_local i32 @install_session_keyring_to_cred(ptr noundef, ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #6 align 16 !dbg !4381 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !6544
  %0 = load ptr, ptr %tmp, align 8, !dbg !6544
  %call = call i32 %0() #12, !dbg !6546
  ret void, !dbg !6547
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @generic_test_bit_acquire(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6548 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %___p1 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6550, metadata !DIExpression()), !dbg !6555
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6551, metadata !DIExpression()), !dbg !6556
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !6557
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6552, metadata !DIExpression()), !dbg !6558
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6559
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6560
  %div = udiv i64 %1, 64, !dbg !6560
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6561
  store ptr %add.ptr, ptr %p, align 8, !dbg !6558
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p1) #11, !dbg !6562
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !6553, metadata !DIExpression()), !dbg !6562
  br label %do.body, !dbg !6563

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6565

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6565

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %p, align 8, !dbg !6563
  %3 = load volatile i64, ptr %2, align 8, !dbg !6563
  store i64 %3, ptr %tmp, align 8, !dbg !6565
  %4 = load i64, ptr %tmp, align 8, !dbg !6563
  store i64 %4, ptr %___p1, align 8, !dbg !6562
  br label %do.body1, !dbg !6562

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !6567

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !6567

do.end3:                                          ; preds = %do.cond2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !6562, !srcloc !6569
  %5 = load i64, ptr %___p1, align 8, !dbg !6562
  store i64 %5, ptr %tmp4, align 8, !dbg !6562
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p1) #11, !dbg !6570
  %6 = load i64, ptr %tmp4, align 8, !dbg !6562
  %7 = load i64, ptr %nr.addr, align 8, !dbg !6571
  %and = and i64 %7, 63, !dbg !6572
  %shr = lshr i64 %6, %and, !dbg !6573
  %and5 = and i64 1, %shr, !dbg !6574
  %tobool = icmp ne i64 %and5, 0, !dbg !6575
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !6576
  ret i1 %tobool, !dbg !6577
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit_acquire(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6578 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6580, metadata !DIExpression()), !dbg !6582
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6581, metadata !DIExpression()), !dbg !6583
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6584
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6585
  %div = udiv i64 %1, 64, !dbg !6585
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6586
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !6587
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6588
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6589
  %call = call zeroext i1 @arch_test_bit_acquire(i64 noundef %2, ptr noundef %3) #12, !dbg !6590
  ret i1 %call, !dbg !6591
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6592 dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit_acquire(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6605 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6607, metadata !DIExpression()), !dbg !6609
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6608, metadata !DIExpression()), !dbg !6610
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6611
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6612
  br i1 %1, label %cond.true, label %cond.false, !dbg !6612

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6613
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6614
  %call = call zeroext i1 @constant_test_bit_acquire(i64 noundef %2, ptr noundef %3) #12, !dbg !6615
  %conv = zext i1 %call to i32, !dbg !6615
  br label %cond.end, !dbg !6612

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6616
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6617
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #12, !dbg !6618
  %conv2 = zext i1 %call1 to i32, !dbg !6618
  br label %cond.end, !dbg !6612

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6612
  %tobool = icmp ne i32 %cond, 0, !dbg !6612
  ret i1 %tobool, !dbg !6619
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit_acquire(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6620 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6622, metadata !DIExpression()), !dbg !6625
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6623, metadata !DIExpression()), !dbg !6626
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #11, !dbg !6627
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6624, metadata !DIExpression()), !dbg !6628
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6629
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6630
  %shr = ashr i64 %1, 3, !dbg !6631
  %arrayidx = getelementptr i8, ptr %0, i64 %shr, !dbg !6632
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6633
  %and = and i64 %2, 7, !dbg !6634
  %sh_prom = trunc i64 %and to i32, !dbg !6635
  %shl = shl i32 1, %sh_prom, !dbg !6635
  %3 = call i8 asm sideeffect "testb $2,$1\0A\09/* output condition code nz*/\0A", "={@ccnz},*m,i,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %arrayidx, i32 %shl) #11, !dbg !6636, !srcloc !6637
  %4 = icmp ult i8 %3, 2, !dbg !6636
  call void @llvm.assume(i1 %4), !dbg !6636
  store i8 %3, ptr %oldbit, align 1, !dbg !6636
  %5 = load i8, ptr %oldbit, align 1, !dbg !6638, !range !4901, !noundef !1147
  %tobool = trunc i8 %5 to i1, !dbg !6638
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #11, !dbg !6639
  ret i1 %tobool, !dbg !6640
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noredzone }
attributes #13 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390}
!llvm.ident = !{!4391}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_complete_request_key344", scope: !2, file: !3, line: 71, type: !122, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF security/keys/.request_key.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22security/keys/request_key\22 -D KBUILD_BASENAME=\22request_key\22 -D KBUILD_MODNAME=\22request_key\22 -D __KBUILD_MODNAME=kmod_request_key -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o security/keys/request_key.ll security/keys/request_key.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !121, globals: !4302, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "security/keys/request_key.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a5e6b4805a4eaed29a19b0d7797cbd4f")
!4 = !{!5, !14, !21, !29, !45, !52, !58, !63, !69, !74, !80, !87, !94, !108, !113}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !6, line: 9, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!10 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!11 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!12 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!13 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !15, line: 312, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!16 = !{!17, !18, !19, !20}
!17 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!18 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!19 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!20 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !22, line: 68, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!23 = !{!24, !25, !26, !27, !28}
!24 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!25 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!26 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!27 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!28 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !30, line: 1325, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!32 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!33 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!34 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!35 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!36 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!37 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!38 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!39 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!40 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!41 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!42 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!43 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!44 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !46, line: 15, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!47 = !{!48, !49, !50, !51}
!48 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!49 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!50 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!51 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !53, line: 26, baseType: !7, size: 32, elements: !54)
!53 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!54 = !{!55, !56, !57}
!55 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!56 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!57 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !59, line: 2052, baseType: !7, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!60 = !{!61, !62}
!61 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!62 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !64, line: 54, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!65 = !{!66, !67, !68}
!66 = !DIEnumerator(name: "USRQUOTA", value: 0)
!67 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!68 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !70, line: 65, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!71 = !{!72, !73}
!72 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!73 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !75, line: 16, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!76 = !{!77, !78, !79}
!77 = !DIEnumerator(name: "TT_NONE", value: 0)
!78 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!79 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !81, line: 51, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!84 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!85 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!86 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kernel_pkey_operation", file: !88, line: 22, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/keyctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb6b47c8f95fa53866d7002b6a7b8c6")
!89 = !{!90, !91, !92, !93}
!90 = !DIEnumerator(name: "kernel_pkey_encrypt", value: 0)
!91 = !DIEnumerator(name: "kernel_pkey_decrypt", value: 1)
!92 = !DIEnumerator(name: "kernel_pkey_sign", value: 2)
!93 = !DIEnumerator(name: "kernel_pkey_verify", value: 3)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "key_need_perm", file: !95, line: 77, baseType: !7, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107}
!97 = !DIEnumerator(name: "KEY_NEED_UNSPECIFIED", value: 0)
!98 = !DIEnumerator(name: "KEY_NEED_VIEW", value: 1)
!99 = !DIEnumerator(name: "KEY_NEED_READ", value: 2)
!100 = !DIEnumerator(name: "KEY_NEED_WRITE", value: 3)
!101 = !DIEnumerator(name: "KEY_NEED_SEARCH", value: 4)
!102 = !DIEnumerator(name: "KEY_NEED_LINK", value: 5)
!103 = !DIEnumerator(name: "KEY_NEED_SETATTR", value: 6)
!104 = !DIEnumerator(name: "KEY_NEED_UNLINK", value: 7)
!105 = !DIEnumerator(name: "KEY_SYSADMIN_OVERRIDE", value: 8)
!106 = !DIEnumerator(name: "KEY_AUTHTOKEN_OVERRIDE", value: 9)
!107 = !DIEnumerator(name: "KEY_DEFER_PERM_CHECK", value: 10)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !109, line: 10, baseType: !7, size: 32, elements: !110)
!109 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!110 = !{!111, !112}
!111 = !DIEnumerator(name: "false", value: 0)
!112 = !DIEnumerator(name: "true", value: 1)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !114, line: 119, baseType: !7, size: 32, elements: !115)
!114 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!115 = !{!116, !117, !118, !119, !120}
!116 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!117 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!118 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!119 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!120 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!121 = !{!122, !123, !4284, !2582, !212, !180, !720, !4285, !4286, !2197, !4287, !4290, !4292, !353, !4294, !812, !4295, !4298, !4299}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !126, line: 110, size: 1472, elements: !127)
!126 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!127 = !{!128, !141, !150, !157, !158, !159, !160, !161, !162, !163, !164, !173, !174, !175, !176, !177, !179, !4240, !4241, !4242, !4243, !4244, !4267, !4268, !4271, !4279}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !125, file: !126, line: 111, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !130, line: 13, baseType: !131)
!130 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !132, line: 181, baseType: !133)
!132 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !132, line: 179, size: 64, elements: !134)
!134 = !{!135}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !133, file: !132, line: 180, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !137, line: 22, baseType: !138)
!137 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !139, line: 30, baseType: !140)
!139 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!140 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !125, file: !126, line: 112, baseType: !142, size: 32, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !143, line: 23, baseType: !144)
!143 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !143, line: 21, size: 32, elements: !145)
!145 = !{!146}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !144, file: !143, line: 22, baseType: !147, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !132, line: 37, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !149, line: 49, baseType: !7)
!149 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!150 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !125, file: !126, line: 113, baseType: !151, size: 32, offset: 96)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !143, line: 28, baseType: !152)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !143, line: 26, size: 32, elements: !153)
!153 = !{!154}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !152, file: !143, line: 27, baseType: !155, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !132, line: 38, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !149, line: 50, baseType: !7)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !125, file: !126, line: 114, baseType: !142, size: 32, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !125, file: !126, line: 115, baseType: !151, size: 32, offset: 160)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !125, file: !126, line: 116, baseType: !142, size: 32, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !125, file: !126, line: 117, baseType: !151, size: 32, offset: 224)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !125, file: !126, line: 118, baseType: !142, size: 32, offset: 256)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !125, file: !126, line: 119, baseType: !151, size: 32, offset: 288)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !125, file: !126, line: 120, baseType: !7, size: 32, offset: 320)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !125, file: !126, line: 121, baseType: !165, size: 64, offset: 384)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !166, line: 24, baseType: !167)
!166 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !166, line: 24, size: 64, elements: !168)
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !167, file: !166, line: 24, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !137, line: 23, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !139, line: 31, baseType: !172)
!172 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !125, file: !126, line: 122, baseType: !165, size: 64, offset: 448)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !125, file: !126, line: 123, baseType: !165, size: 64, offset: 512)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !125, file: !126, line: 124, baseType: !165, size: 64, offset: 576)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !125, file: !126, line: 125, baseType: !165, size: 64, offset: 640)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !125, file: !126, line: 127, baseType: !178, size: 8, offset: 704)
!178 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !125, file: !126, line: 129, baseType: !180, size: 64, offset: 768)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !95, line: 195, size: 1728, elements: !182)
!182 = !{!183, !193, !198, !216, !257, !286, !287, !294, !295, !296, !297, !302, !303, !304, !306, !307, !4223, !4239}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !181, file: !95, line: 196, baseType: !184, size: 32)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !114, line: 113, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !114, line: 111, size: 32, elements: !186)
!186 = !{!187}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !185, file: !114, line: 112, baseType: !188, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !132, line: 174, baseType: !189)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !132, line: 172, size: 32, elements: !190)
!190 = !{!191}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !189, file: !132, line: 173, baseType: !192, size: 32)
!192 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !181, file: !95, line: 197, baseType: !194, size: 32, offset: 32)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !95, line: 28, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !132, line: 104, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !137, line: 20, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !139, line: 26, baseType: !192)
!198 = !DIDerivedType(tag: DW_TAG_member, scope: !181, file: !95, line: 198, baseType: !199, size: 192, offset: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !181, file: !95, line: 198, size: 192, elements: !200)
!200 = !{!201, !207}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !199, file: !95, line: 199, baseType: !202, size: 128)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !132, line: 190, size: 128, elements: !203)
!203 = !{!204, !206}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !202, file: !132, line: 191, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !202, file: !132, line: 191, baseType: !205, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !199, file: !95, line: 200, baseType: !208, size: 192, align: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !209, line: 5, size: 192, align: 64, elements: !210)
!209 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!210 = !{!211, !213, !215}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !208, file: !209, line: 6, baseType: !212, size: 64)
!212 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !208, file: !209, line: 7, baseType: !214, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !208, file: !209, line: 8, baseType: !214, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !181, file: !95, line: 205, baseType: !217, size: 320, offset: 256)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !218, line: 48, size: 320, elements: !219)
!218 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!219 = !{!220, !221, !222, !227, !256}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !217, file: !218, line: 49, baseType: !129, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !217, file: !218, line: 55, baseType: !129, size: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !217, file: !218, line: 57, baseType: !223, size: 32, offset: 128)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !224, line: 15, size: 32, elements: !225)
!224 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !223, file: !224, line: 20, baseType: !188, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !217, file: !218, line: 59, baseType: !228, size: 32, offset: 160)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !229, line: 23, baseType: !230)
!229 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !229, line: 14, size: 32, elements: !231)
!231 = !{!232}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !230, file: !229, line: 15, baseType: !233, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !234, line: 44, baseType: !235)
!234 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !234, line: 14, size: 32, elements: !236)
!236 = !{!237}
!237 = !DIDerivedType(tag: DW_TAG_member, scope: !235, file: !234, line: 15, baseType: !238, size: 32)
!238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !235, file: !234, line: 15, size: 32, elements: !239)
!239 = !{!240, !241, !248}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !238, file: !234, line: 16, baseType: !188, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, scope: !238, file: !234, line: 24, baseType: !242, size: 16)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !238, file: !234, line: 24, size: 16, elements: !243)
!243 = !{!244, !247}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !242, file: !234, line: 25, baseType: !245, size: 8)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !137, line: 17, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !139, line: 21, baseType: !178)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !242, file: !234, line: 26, baseType: !245, size: 8, offset: 8)
!248 = !DIDerivedType(tag: DW_TAG_member, scope: !238, file: !234, line: 28, baseType: !249, size: 32)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !238, file: !234, line: 28, size: 32, elements: !250)
!250 = !{!251, !255}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !249, file: !234, line: 29, baseType: !252, size: 16)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !137, line: 19, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !139, line: 24, baseType: !254)
!254 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !249, file: !234, line: 30, baseType: !252, size: 16, offset: 16)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !217, file: !218, line: 60, baseType: !202, size: 128, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !181, file: !95, line: 206, baseType: !258, size: 64, offset: 576)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !260, line: 54, size: 704, elements: !261)
!260 = !DIFile(filename: "security/keys/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "65e07b4072a82be19b875e4a608fcbf3")
!261 = !{!262, !263, !271, !280, !281, !282, !283, !284, !285}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !259, file: !260, line: 55, baseType: !208, size: 192, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "cons_lock", scope: !259, file: !260, line: 56, baseType: !264, size: 256, offset: 192)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !265, line: 66, size: 256, elements: !266)
!265 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!266 = !{!267, !268, !269, !270}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !264, file: !265, line: 67, baseType: !129, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !264, file: !265, line: 68, baseType: !228, size: 32, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !264, file: !265, line: 70, baseType: !223, size: 32, offset: 96)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !264, file: !265, line: 72, baseType: !202, size: 128, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !259, file: !260, line: 57, baseType: !272, size: 32, offset: 448)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !273, line: 29, baseType: !274)
!273 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !273, line: 17, size: 32, elements: !275)
!275 = !{!276}
!276 = !DIDerivedType(tag: DW_TAG_member, scope: !274, file: !273, line: 18, baseType: !277, size: 32)
!277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !274, file: !273, line: 18, size: 32, elements: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !277, file: !273, line: 19, baseType: !230, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !259, file: !260, line: 58, baseType: !184, size: 32, offset: 480)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "nkeys", scope: !259, file: !260, line: 59, baseType: !188, size: 32, offset: 512)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "nikeys", scope: !259, file: !260, line: 60, baseType: !188, size: 32, offset: 544)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !259, file: !260, line: 61, baseType: !142, size: 32, offset: 576)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "qnkeys", scope: !259, file: !260, line: 62, baseType: !192, size: 32, offset: 608)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "qnbytes", scope: !259, file: !260, line: 63, baseType: !192, size: 32, offset: 640)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !181, file: !95, line: 207, baseType: !122, size: 64, offset: 640)
!287 = !DIDerivedType(tag: DW_TAG_member, scope: !181, file: !95, line: 208, baseType: !288, size: 64, offset: 704)
!288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !181, file: !95, line: 208, size: 64, elements: !289)
!289 = !{!290, !293}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !288, file: !95, line: 209, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !292, line: 8, baseType: !138)
!292 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!293 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !288, file: !95, line: 210, baseType: !291, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !181, file: !95, line: 212, baseType: !291, size: 64, offset: 768)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !181, file: !95, line: 213, baseType: !142, size: 32, offset: 832)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !181, file: !95, line: 214, baseType: !151, size: 32, offset: 864)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !181, file: !95, line: 215, baseType: !298, size: 32, offset: 896)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !95, line: 31, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !132, line: 110, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !137, line: 21, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !139, line: 27, baseType: !7)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !181, file: !95, line: 216, baseType: !254, size: 16, offset: 928)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !181, file: !95, line: 217, baseType: !254, size: 16, offset: 944)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !181, file: !95, line: 221, baseType: !305, size: 16, offset: 960)
!305 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !181, file: !95, line: 228, baseType: !212, size: 64, offset: 1024)
!307 = !DIDerivedType(tag: DW_TAG_member, scope: !181, file: !95, line: 245, baseType: !308, size: 320, offset: 1088)
!308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !181, file: !95, line: 245, size: 320, elements: !309)
!309 = !{!310, !4215}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !308, file: !95, line: 246, baseType: !311, size: 320)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !95, line: 114, size: 320, elements: !312)
!312 = !{!313, !314, !327, !4207, !4214}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !311, file: !95, line: 116, baseType: !212, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !95, line: 117, baseType: !315, size: 64, offset: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !95, line: 117, size: 64, elements: !316)
!316 = !{!317, !326}
!317 = !DIDerivedType(tag: DW_TAG_member, scope: !315, file: !95, line: 118, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !315, file: !95, line: 118, size: 64, elements: !319)
!319 = !{!320, !321}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !318, file: !95, line: 120, baseType: !252, size: 16)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !318, file: !95, line: 121, baseType: !322, size: 48, offset: 16)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 48, elements: !324)
!323 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!324 = !{!325}
!325 = !DISubrange(count: 6)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !315, file: !95, line: 127, baseType: !212, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !311, file: !95, line: 129, baseType: !328, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !330, line: 64, size: 1344, elements: !331)
!330 = !DIFile(filename: "./include/linux/key-type.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79a6b816f9397cf1462a94b9d3d8f5a6")
!331 = !{!332, !335, !339, !340, !344, !368, !372, !376, !377, !397, !401, !405, !406, !4141, !4145, !4150, !4168, !4196, !4201, !4205, !4206}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !329, file: !330, line: 66, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "def_datalen", scope: !329, file: !330, line: 72, baseType: !336, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !132, line: 61, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !149, line: 72, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !149, line: 16, baseType: !212)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !329, file: !330, line: 74, baseType: !7, size: 32, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "vet_description", scope: !329, file: !330, line: 79, baseType: !341, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!192, !333}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "preparse", scope: !329, file: !330, line: 85, baseType: !345, size: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!192, !348}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_preparsed_payload", file: !330, line: 31, size: 640, elements: !350)
!350 = !{!351, !352, !354, !362, !365, !366, !367}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "orig_description", scope: !349, file: !330, line: 32, baseType: !333, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !349, file: !330, line: 33, baseType: !353, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !349, file: !330, line: 34, baseType: !355, size: 256, offset: 128)
!355 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !95, line: 134, size: 256, elements: !356)
!356 = !{!357, !358}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !355, file: !95, line: 135, baseType: !122, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !355, file: !95, line: 136, baseType: !359, size: 256)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 256, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 4)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !349, file: !330, line: 35, baseType: !363, size: 64, offset: 384)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !349, file: !330, line: 36, baseType: !336, size: 64, offset: 448)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !349, file: !330, line: 37, baseType: !336, size: 64, offset: 512)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !349, file: !330, line: 38, baseType: !291, size: 64, offset: 576)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "free_preparse", scope: !329, file: !330, line: 89, baseType: !369, size: 64, offset: 320)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !348}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "instantiate", scope: !329, file: !330, line: 95, baseType: !373, size: 64, offset: 384)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!192, !180, !348}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !329, file: !330, line: 102, baseType: !373, size: 64, offset: 448)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "match_preparse", scope: !329, file: !330, line: 108, baseType: !378, size: 64, offset: 512)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!192, !381}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_match_data", file: !330, line: 46, size: 256, elements: !383)
!383 = !{!384, !394, !395, !396}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "cmp", scope: !382, file: !330, line: 51, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!388, !390, !392}
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !132, line: 35, baseType: !389)
!389 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data", scope: !382, file: !330, line: 54, baseType: !363, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "preparsed", scope: !382, file: !330, line: 55, baseType: !122, size: 64, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_type", scope: !382, file: !330, line: 56, baseType: !7, size: 32, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "match_free", scope: !329, file: !330, line: 112, baseType: !398, size: 64, offset: 576)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !381}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "revoke", scope: !329, file: !330, line: 117, baseType: !402, size: 64, offset: 640)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !180}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !329, file: !330, line: 120, baseType: !402, size: 64, offset: 704)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "describe", scope: !329, file: !330, line: 123, baseType: !407, size: 64, offset: 768)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !390, !410}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !412, line: 17, size: 960, elements: !413)
!412 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!413 = !{!414, !415, !416, !417, !418, !419, !422, !423, !424, !446, !447, !4140}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !411, file: !412, line: 18, baseType: !353, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !411, file: !412, line: 19, baseType: !336, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !411, file: !412, line: 20, baseType: !336, size: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !411, file: !412, line: 21, baseType: !336, size: 64, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !411, file: !412, line: 22, baseType: !336, size: 64, offset: 256)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !411, file: !412, line: 23, baseType: !420, size: 64, offset: 320)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !132, line: 52, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !149, line: 88, baseType: !140)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !411, file: !412, line: 24, baseType: !420, size: 64, offset: 384)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !411, file: !412, line: 25, baseType: !264, size: 256, offset: 448)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !411, file: !412, line: 26, baseType: !425, size: 64, offset: 704)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !412, line: 32, size: 256, elements: !428)
!428 = !{!429, !434, !438, !442}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !427, file: !412, line: 33, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!122, !410, !433}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !427, file: !412, line: 34, baseType: !435, size: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !410, !122}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !427, file: !412, line: 35, baseType: !439, size: 64, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!122, !410, !122, !433}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !427, file: !412, line: 36, baseType: !443, size: 64, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!192, !410, !122}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !411, file: !412, line: 27, baseType: !192, size: 32, offset: 768)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !411, file: !412, line: 28, baseType: !448, size: 64, offset: 832)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !59, line: 994, size: 1856, align: 64, elements: !451)
!451 = !{!452, !471, !472, !474, !475, !476, !477, !478, !545, !546, !555, !4130, !4131, !4132, !4133, !4134, !4135, !4137, !4138, !4139}
!452 = !DIDerivedType(tag: DW_TAG_member, scope: !450, file: !59, line: 995, baseType: !453, size: 128)
!453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !450, file: !59, line: 995, size: 128, elements: !454)
!454 = !{!455, !461, !470}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !453, file: !59, line: 996, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !457, line: 60, size: 64, elements: !458)
!457 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!458 = !{!459}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !456, file: !457, line: 61, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !453, file: !59, line: 997, baseType: !462, size: 128, align: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !132, line: 232, size: 128, align: 64, elements: !463)
!463 = !{!464, !466}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !462, file: !132, line: 233, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !462, file: !132, line: 234, baseType: !467, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !465}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !453, file: !59, line: 998, baseType: !7, size: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !450, file: !59, line: 1005, baseType: !272, size: 32, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !450, file: !59, line: 1006, baseType: !473, size: 32, offset: 160)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !132, line: 156, baseType: !7)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !450, file: !59, line: 1007, baseType: !129, size: 64, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !450, file: !59, line: 1008, baseType: !264, size: 256, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !450, file: !59, line: 1009, baseType: !420, size: 64, offset: 512)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !450, file: !59, line: 1010, baseType: !7, size: 32, offset: 576)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !450, file: !59, line: 1011, baseType: !479, size: 256, offset: 640)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !59, line: 948, size: 256, elements: !480)
!480 = !{!481, !504, !541, !542, !543, !544}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !479, file: !59, line: 949, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !483, line: 34, baseType: !484)
!483 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !483, line: 25, size: 64, elements: !485)
!485 = !{!486}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !484, file: !483, line: 26, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !488, line: 27, baseType: !489)
!488 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !488, line: 13, size: 64, elements: !490)
!490 = !{!491, !503}
!491 = !DIDerivedType(tag: DW_TAG_member, scope: !489, file: !488, line: 14, baseType: !492, size: 32)
!492 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !489, file: !488, line: 14, size: 32, elements: !493)
!493 = !{!494, !495}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !492, file: !488, line: 15, baseType: !188, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, scope: !492, file: !488, line: 16, baseType: !496, size: 32)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !492, file: !488, line: 16, size: 32, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !496, file: !488, line: 18, baseType: !245, size: 8)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !496, file: !488, line: 19, baseType: !500, size: 24, offset: 8)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 24, elements: !501)
!501 = !{!502}
!502 = !DISubrange(count: 3)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !489, file: !488, line: 26, baseType: !233, size: 32, offset: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !479, file: !59, line: 950, baseType: !505, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !507)
!507 = !{!508, !509, !510, !511, !522, !523, !530, !531}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !506, file: !6, line: 61, baseType: !184, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !506, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !506, file: !6, line: 63, baseType: !272, size: 32, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !506, file: !6, line: 65, baseType: !512, size: 256, offset: 128)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 256, elements: !360)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !132, line: 194, size: 64, elements: !514)
!514 = !{!515}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !513, file: !132, line: 195, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !132, line: 198, size: 128, elements: !518)
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !517, file: !132, line: 199, baseType: !516, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !517, file: !132, line: 199, baseType: !521, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !506, file: !6, line: 66, baseType: !513, size: 64, offset: 384)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !506, file: !6, line: 68, baseType: !524, size: 192, offset: 448)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !525, line: 41, baseType: !526)
!525 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !525, line: 37, size: 192, elements: !527)
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !526, file: !525, line: 38, baseType: !272, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !526, file: !525, line: 39, baseType: !202, size: 128, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !506, file: !6, line: 69, baseType: !462, size: 128, align: 64, offset: 640)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !506, file: !6, line: 70, baseType: !532, offset: 768)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, elements: !539)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !533, file: !6, line: 55, baseType: !192, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !533, file: !6, line: 56, baseType: !537, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!539 = !{!540}
!540 = !DISubrange(count: -1)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !479, file: !59, line: 951, baseType: !5, size: 32, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !479, file: !59, line: 952, baseType: !142, size: 32, offset: 160)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !479, file: !59, line: 952, baseType: !142, size: 32, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !479, file: !59, line: 953, baseType: !192, size: 32, offset: 224)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !450, file: !59, line: 1012, baseType: !123, size: 64, offset: 896)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !450, file: !59, line: 1013, baseType: !547, size: 256, offset: 960)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !59, line: 970, size: 256, elements: !548)
!548 = !{!549, !550, !551, !552, !553, !554}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !547, file: !59, line: 971, baseType: !212, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !547, file: !59, line: 972, baseType: !7, size: 32, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !547, file: !59, line: 973, baseType: !7, size: 32, offset: 96)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !547, file: !59, line: 974, baseType: !7, size: 32, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !547, file: !59, line: 975, baseType: !7, size: 32, offset: 160)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !547, file: !59, line: 976, baseType: !420, size: 64, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !450, file: !59, line: 1014, baseType: !556, size: 128, offset: 1216)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !557, line: 8, size: 128, elements: !558)
!557 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!558 = !{!559, !4129}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !556, file: !557, line: 9, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !562, line: 70, size: 256, elements: !563)
!562 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!563 = !{!564, !4126, !4127, !4128}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !561, file: !562, line: 71, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !567, line: 82, size: 1536, elements: !568)
!567 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!568 = !{!569, !570, !580, !588, !589, !604, !4093, !4095, !4108, !4109, !4110, !4111, !4112, !4118, !4119, !4120}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !566, file: !567, line: 84, baseType: !7, size: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !566, file: !567, line: 85, baseType: !571, size: 32, offset: 32)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !572, line: 275, baseType: !573)
!572 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !572, line: 275, size: 32, elements: !574)
!574 = !{!575}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !573, file: !572, line: 275, baseType: !576, size: 32)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !572, line: 69, baseType: !577)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !572, line: 64, size: 32, elements: !578)
!578 = !{!579}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !577, file: !572, line: 65, baseType: !7, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !566, file: !567, line: 86, baseType: !581, size: 128, offset: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !582, line: 38, size: 128, elements: !583)
!582 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!583 = !{!584, !586}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !581, file: !582, line: 39, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !581, file: !582, line: 39, baseType: !587, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !566, file: !567, line: 87, baseType: !565, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !566, file: !567, line: 88, baseType: !590, size: 128, offset: 256)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !567, line: 49, size: 128, elements: !591)
!591 = !{!592, !601}
!592 = !DIDerivedType(tag: DW_TAG_member, scope: !590, file: !567, line: 50, baseType: !593, size: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !590, file: !567, line: 50, size: 64, elements: !594)
!594 = !{!595, !600}
!595 = !DIDerivedType(tag: DW_TAG_member, scope: !593, file: !567, line: 51, baseType: !596, size: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !593, file: !567, line: 51, size: 64, elements: !597)
!597 = !{!598, !599}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !596, file: !567, line: 52, baseType: !300, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !596, file: !567, line: 52, baseType: !300, size: 32, offset: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !593, file: !567, line: 54, baseType: !170, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !590, file: !567, line: 56, baseType: !602, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !566, file: !567, line: 89, baseType: !605, size: 64, offset: 384)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !59, line: 641, size: 4800, elements: !607)
!607 = !{!608, !610, !611, !612, !613, !614, !615, !618, !619, !815, !3909, !3910, !3911, !3912, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !4075, !4078, !4079, !4080, !4089, !4090, !4091, !4092}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !606, file: !59, line: 642, baseType: !609, size: 16)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !132, line: 24, baseType: !254)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !606, file: !59, line: 643, baseType: !254, size: 16, offset: 16)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !606, file: !59, line: 644, baseType: !142, size: 32, offset: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !606, file: !59, line: 645, baseType: !202, size: 128, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !606, file: !59, line: 646, baseType: !151, size: 32, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !606, file: !59, line: 647, baseType: !7, size: 32, offset: 224)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !606, file: !59, line: 650, baseType: !616, size: 64, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !59, line: 607, flags: DIFlagFwdDecl)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !606, file: !59, line: 651, baseType: !616, size: 64, offset: 320)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !606, file: !59, line: 654, baseType: !620, size: 64, offset: 384)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !622)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !59, line: 1966, size: 2048, align: 512, elements: !623)
!623 = !{!624, !628, !641, !647, !651, !655, !659, !663, !667, !671, !675, !676, !682, !686, !725, !756, !763, !769, !773, !777, !781, !785, !789, !795, !799}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !622, file: !59, line: 1967, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!565, !605, !565, !7}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !622, file: !59, line: 1968, baseType: !629, size: 64, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!333, !565, !605, !632}
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !634, line: 10, size: 128, elements: !635)
!634 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!635 = !{!636, !640}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !633, file: !634, line: 11, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !122}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !633, file: !634, line: 12, baseType: !122, size: 64, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !622, file: !59, line: 1969, baseType: !642, size: 64, offset: 128)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!192, !645, !605, !192}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !166, line: 42, flags: DIFlagFwdDecl)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !622, file: !59, line: 1970, baseType: !648, size: 64, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!616, !605, !192, !388}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !622, file: !59, line: 1972, baseType: !652, size: 64, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{!192, !565, !353, !192}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !622, file: !59, line: 1974, baseType: !656, size: 64, offset: 320)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!192, !645, !605, !565, !609, !388}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !622, file: !59, line: 1976, baseType: !660, size: 64, offset: 384)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!192, !565, !605, !565}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !622, file: !59, line: 1977, baseType: !664, size: 64, offset: 448)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!192, !605, !565}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !622, file: !59, line: 1978, baseType: !668, size: 64, offset: 512)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!192, !645, !605, !565, !333}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !622, file: !59, line: 1980, baseType: !672, size: 64, offset: 576)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!192, !645, !605, !565, !609}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !622, file: !59, line: 1982, baseType: !664, size: 64, offset: 640)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !622, file: !59, line: 1983, baseType: !677, size: 64, offset: 704)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!192, !645, !605, !565, !609, !680}
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !132, line: 21, baseType: !681)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !132, line: 18, baseType: !300)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !622, file: !59, line: 1985, baseType: !683, size: 64, offset: 768)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!192, !645, !605, !565, !605, !565, !7}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !622, file: !59, line: 1987, baseType: !687, size: 64, offset: 832)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!192, !645, !565, !690}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !59, line: 226, size: 640, elements: !692)
!692 = !{!693, !694, !695, !705, !714, !715, !721, !722, !723}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !691, file: !59, line: 227, baseType: !7, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !691, file: !59, line: 228, baseType: !609, size: 16, offset: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !59, line: 241, baseType: !696, size: 32, offset: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !691, file: !59, line: 241, size: 32, elements: !697)
!697 = !{!698, !699}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !696, file: !59, line: 242, baseType: !142, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !696, file: !59, line: 243, baseType: !700, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !701, line: 16, baseType: !702)
!701 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !701, line: 14, size: 32, elements: !703)
!703 = !{!704}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !702, file: !701, line: 15, baseType: !147, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !59, line: 245, baseType: !706, size: 32, offset: 96)
!706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !691, file: !59, line: 245, size: 32, elements: !707)
!707 = !{!708, !709}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !706, file: !59, line: 246, baseType: !151, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !706, file: !59, line: 247, baseType: !710, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !701, line: 20, baseType: !711)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !701, line: 18, size: 32, elements: !712)
!712 = !{!713}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !711, file: !701, line: 19, baseType: !155, size: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !691, file: !59, line: 249, baseType: !420, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !691, file: !59, line: 250, baseType: !716, size: 128, offset: 192)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !292, line: 13, size: 128, elements: !717)
!717 = !{!718, !719}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !716, file: !292, line: 14, baseType: !291, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !716, file: !292, line: 15, baseType: !720, size: 64, offset: 64)
!720 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !691, file: !59, line: 251, baseType: !716, size: 128, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !691, file: !59, line: 252, baseType: !716, size: 128, offset: 448)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !691, file: !59, line: 259, baseType: !724, size: 64, offset: 576)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !622, file: !59, line: 1988, baseType: !726, size: 64, offset: 896)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!192, !645, !729, !731, !300, !7}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !556)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !733, line: 22, size: 1280, elements: !734)
!733 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!734 = !{!735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !732, file: !733, line: 23, baseType: !300, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !732, file: !733, line: 24, baseType: !609, size: 16, offset: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !732, file: !733, line: 25, baseType: !7, size: 32, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !732, file: !733, line: 26, baseType: !299, size: 32, offset: 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !732, file: !733, line: 27, baseType: !170, size: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !732, file: !733, line: 28, baseType: !170, size: 64, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !732, file: !733, line: 41, baseType: !170, size: 64, offset: 256)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !732, file: !733, line: 42, baseType: !680, size: 32, offset: 320)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !732, file: !733, line: 43, baseType: !680, size: 32, offset: 352)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !732, file: !733, line: 44, baseType: !142, size: 32, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !732, file: !733, line: 45, baseType: !151, size: 32, offset: 416)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !732, file: !733, line: 46, baseType: !420, size: 64, offset: 448)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !732, file: !733, line: 47, baseType: !716, size: 128, offset: 512)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !732, file: !733, line: 48, baseType: !716, size: 128, offset: 640)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !732, file: !733, line: 49, baseType: !716, size: 128, offset: 768)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !732, file: !733, line: 50, baseType: !716, size: 128, offset: 896)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !732, file: !733, line: 51, baseType: !170, size: 64, offset: 1024)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !732, file: !733, line: 52, baseType: !170, size: 64, offset: 1088)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !732, file: !733, line: 53, baseType: !300, size: 32, offset: 1152)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !732, file: !733, line: 54, baseType: !300, size: 32, offset: 1184)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !732, file: !733, line: 55, baseType: !170, size: 64, offset: 1216)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !622, file: !59, line: 1990, baseType: !757, size: 64, offset: 960)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!760, !565, !353, !336}
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !132, line: 66, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !149, line: 73, baseType: !762)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !149, line: 15, baseType: !720)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !622, file: !59, line: 1991, baseType: !764, size: 64, offset: 1024)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!192, !605, !767, !170, !170}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !59, line: 55, flags: DIFlagFwdDecl)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !622, file: !59, line: 1993, baseType: !770, size: 64, offset: 1088)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!192, !605, !192}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !622, file: !59, line: 1994, baseType: !774, size: 64, offset: 1152)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{!192, !605, !565, !724, !7, !609}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !622, file: !59, line: 1997, baseType: !778, size: 64, offset: 1216)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!192, !645, !605, !724, !609}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !622, file: !59, line: 1999, baseType: !782, size: 64, offset: 1280)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!616, !645, !565, !192}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !622, file: !59, line: 2001, baseType: !786, size: 64, offset: 1344)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!192, !645, !565, !616, !192}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !622, file: !59, line: 2003, baseType: !790, size: 64, offset: 1408)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!192, !645, !565, !793}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !59, line: 76, flags: DIFlagFwdDecl)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !622, file: !59, line: 2005, baseType: !796, size: 64, offset: 1472)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!192, !565, !793}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !622, file: !59, line: 2006, baseType: !800, size: 64, offset: 1536)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!803, !605}
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !59, line: 3192, size: 192, elements: !805)
!805 = !{!806, !814}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !804, file: !59, line: 3193, baseType: !807, size: 128)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !808, line: 296, size: 128, elements: !809)
!808 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!809 = !{!810, !811, !813}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !807, file: !808, line: 297, baseType: !272, size: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !807, file: !808, line: 299, baseType: !812, size: 32, offset: 32)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !132, line: 154, baseType: !7)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !807, file: !808, line: 300, baseType: !122, size: 64, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !804, file: !59, line: 3194, baseType: !300, size: 32, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !606, file: !59, line: 655, baseType: !816, size: 64, offset: 448)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !59, line: 1190, size: 10752, elements: !818)
!818 = !{!819, !820, !821, !822, !823, !824, !2226, !2358, !2398, !2481, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2498, !2502, !2503, !2506, !2509, !2512, !2515, !2516, !2517, !2558, !3784, !3785, !3786, !3787, !3788, !3789, !3792, !3794, !3801, !3802, !3803, !3804, !3863, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !817, file: !59, line: 1191, baseType: !202, size: 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !817, file: !59, line: 1192, baseType: !680, size: 32, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !817, file: !59, line: 1193, baseType: !178, size: 8, offset: 160)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !817, file: !59, line: 1194, baseType: !212, size: 64, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !817, file: !59, line: 1195, baseType: !420, size: 64, offset: 256)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !817, file: !59, line: 1196, baseType: !825, size: 64, offset: 320)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !59, line: 2366, size: 576, elements: !827)
!827 = !{!828, !829, !830, !836, !840, !844, !848, !2214, !2215, !2216, !2218, !2219, !2220, !2222, !2223, !2224, !2225}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !826, file: !59, line: 2367, baseType: !333, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !826, file: !59, line: 2368, baseType: !192, size: 32, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !826, file: !59, line: 2376, baseType: !831, size: 64, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!192, !834}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !562, line: 21, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !826, file: !59, line: 2377, baseType: !837, size: 64, offset: 192)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !839)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !59, line: 75, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !826, file: !59, line: 2378, baseType: !841, size: 64, offset: 256)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!565, !825, !192, !333, !122}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !826, file: !59, line: 2380, baseType: !845, size: 64, offset: 320)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{null, !816}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !826, file: !59, line: 2381, baseType: !849, size: 64, offset: 384)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !15, line: 402, size: 9216, align: 512, elements: !851)
!851 = !{!852, !853, !854, !858, !1870, !1896, !1897, !1898, !1899, !1903, !1906, !1907, !1908, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1976, !1980, !2000, !2018, !2019, !2020, !2021, !2030, !2053, !2054, !2057, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2071, !2072, !2172, !2180, !2181, !2182, !2184, !2188, !2189, !2193, !2194, !2195, !2196, !2198, !2199, !2200, !2207, !2208, !2209, !2213}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !850, file: !15, line: 403, baseType: !14, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !850, file: !15, line: 406, baseType: !202, size: 128, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !850, file: !15, line: 409, baseType: !855, size: 448, offset: 192)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 448, elements: !856)
!856 = !{!857}
!857 = !DISubrange(count: 56)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !850, file: !15, line: 417, baseType: !859, size: 768, offset: 640)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !15, line: 45, size: 768, elements: !860)
!860 = !{!861, !1863, !1864, !1865, !1868}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !859, file: !15, line: 46, baseType: !862, size: 512)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !863, line: 64, size: 512, elements: !864)
!863 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!864 = !{!865, !866, !867, !869, !913, !1757, !1853, !1858, !1859, !1860, !1861, !1862}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !862, file: !863, line: 65, baseType: !333, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !862, file: !863, line: 66, baseType: !202, size: 128, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !862, file: !863, line: 67, baseType: !868, size: 64, offset: 192)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !862, file: !863, line: 68, baseType: !870, size: 64, offset: 256)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !863, line: 168, size: 768, elements: !872)
!872 = !{!873, !874, !875, !876}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !871, file: !863, line: 169, baseType: !202, size: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !871, file: !863, line: 170, baseType: !272, size: 32, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !871, file: !863, line: 171, baseType: !862, size: 512, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !871, file: !863, line: 172, baseType: !877, size: 64, offset: 704)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !879)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !863, line: 133, size: 192, elements: !880)
!880 = !{!881, !888, !893}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !879, file: !863, line: 134, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !883)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{!192, !886}
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !862)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !879, file: !863, line: 135, baseType: !889, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !890)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!333, !886}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !879, file: !863, line: 136, baseType: !894, size: 64, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !895)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{!192, !886, !898}
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !863, line: 125, size: 20736, elements: !900)
!900 = !{!901, !903, !907, !908, !912}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !899, file: !863, line: 126, baseType: !902, size: 192)
!902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 192, elements: !501)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !899, file: !863, line: 127, baseType: !904, size: 4096, offset: 192)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 4096, elements: !905)
!905 = !{!906}
!906 = !DISubrange(count: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !899, file: !863, line: 128, baseType: !192, size: 32, offset: 4288)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !899, file: !863, line: 129, baseType: !909, size: 16384, offset: 4320)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 16384, elements: !910)
!910 = !{!911}
!911 = !DISubrange(count: 2048)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !899, file: !863, line: 130, baseType: !192, size: 32, offset: 20704)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !862, file: !863, line: 69, baseType: !914, size: 64, offset: 320)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !916)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !863, line: 116, size: 384, elements: !917)
!917 = !{!918, !922, !941, !1718, !1747, !1751}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !916, file: !863, line: 117, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{null, !868}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !916, file: !863, line: 118, baseType: !923, size: 64, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !925)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !926, line: 254, size: 128, elements: !927)
!926 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!927 = !{!928, !937}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !925, file: !926, line: 255, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{!760, !868, !932, !353}
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !926, line: 30, size: 128, elements: !934)
!934 = !{!935, !936}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !933, file: !926, line: 31, baseType: !333, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !933, file: !926, line: 32, baseType: !609, size: 16, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !925, file: !926, line: 256, baseType: !938, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!760, !868, !932, !333, !336}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !916, file: !863, line: 119, baseType: !942, size: 64, offset: 128)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !945)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !926, line: 84, size: 320, elements: !946)
!946 = !{!947, !948, !952, !1714, !1716}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !945, file: !926, line: 85, baseType: !333, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !945, file: !926, line: 86, baseType: !949, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{!609, !868, !932, !192}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !945, file: !926, line: 88, baseType: !953, size: 64, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!609, !868, !956, !192}
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !926, line: 175, size: 512, elements: !958)
!958 = !{!959, !960, !961, !962, !1705, !1709, !1710}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !957, file: !926, line: 176, baseType: !933, size: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !957, file: !926, line: 177, baseType: !336, size: 64, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !957, file: !926, line: 178, baseType: !122, size: 64, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !957, file: !926, line: 179, baseType: !963, size: 64, offset: 256)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!966}
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !59, line: 472, size: 1536, align: 64, elements: !968)
!968 = !{!969, !970, !971, !972, !973, !974, !982, !983, !984, !1697, !1698, !1699, !1702, !1703, !1704}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !967, file: !59, line: 473, baseType: !605, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !967, file: !59, line: 474, baseType: !807, size: 128, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !967, file: !59, line: 475, baseType: !217, size: 320, offset: 192)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !967, file: !59, line: 476, baseType: !812, size: 32, offset: 512)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !967, file: !59, line: 477, baseType: !188, size: 32, offset: 544)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !967, file: !59, line: 482, baseType: !975, size: 128, offset: 576)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !209, line: 26, size: 128, elements: !976)
!976 = !{!977, !981}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !975, file: !209, line: 27, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !209, line: 12, size: 64, elements: !979)
!979 = !{!980}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !978, file: !209, line: 13, baseType: !214, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !975, file: !209, line: 28, baseType: !214, size: 64, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !967, file: !59, line: 483, baseType: !212, size: 64, offset: 704)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !967, file: !59, line: 484, baseType: !212, size: 64, offset: 768)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !967, file: !59, line: 485, baseType: !985, size: 64, offset: 832)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !987)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !59, line: 404, size: 1280, elements: !988)
!988 = !{!989, !1467, !1537, !1541, !1545, !1551, !1557, !1561, !1566, !1570, !1574, !1578, !1661, !1665, !1669, !1673, !1678, !1682, !1689, !1693}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !987, file: !59, line: 405, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{!192, !993, !1465}
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !30, line: 74, size: 512, align: 128, elements: !995)
!995 = !{!996, !997, !1459, !1464}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !994, file: !30, line: 75, baseType: !212, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, scope: !994, file: !30, line: 83, baseType: !998, size: 320, offset: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !994, file: !30, line: 83, size: 320, elements: !999)
!999 = !{!1000, !1021, !1035, !1039, !1458}
!1000 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !30, line: 84, baseType: !1001, size: 320)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !998, file: !30, line: 84, size: 320, elements: !1002)
!1002 = !{!1003, !1014, !1015, !1020}
!1003 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !30, line: 90, baseType: !1004, size: 128)
!1004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1001, file: !30, line: 90, size: 128, elements: !1005)
!1005 = !{!1006, !1007, !1012, !1013}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1004, file: !30, line: 91, baseType: !202, size: 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !30, line: 94, baseType: !1008, size: 128)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1004, file: !30, line: 94, size: 128, elements: !1009)
!1009 = !{!1010, !1011}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1008, file: !30, line: 96, baseType: !122, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1008, file: !30, line: 98, baseType: !7, size: 32, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1004, file: !30, line: 102, baseType: !202, size: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1004, file: !30, line: 103, baseType: !202, size: 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1001, file: !30, line: 106, baseType: !966, size: 64, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !30, line: 107, baseType: !1016, size: 64, offset: 192)
!1016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1001, file: !30, line: 107, size: 64, elements: !1017)
!1017 = !{!1018, !1019}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1016, file: !30, line: 108, baseType: !212, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1016, file: !30, line: 109, baseType: !212, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1001, file: !30, line: 117, baseType: !212, size: 64, offset: 256)
!1021 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !30, line: 119, baseType: !1022, size: 320)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !998, file: !30, line: 119, size: 320, elements: !1023)
!1023 = !{!1024, !1025, !1028, !1029, !1030}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1022, file: !30, line: 124, baseType: !212, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1022, file: !30, line: 125, baseType: !1026, size: 64, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !30, line: 125, flags: DIFlagFwdDecl)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1022, file: !30, line: 126, baseType: !212, size: 64, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1022, file: !30, line: 127, baseType: !212, size: 64, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_member, scope: !1022, file: !30, line: 128, baseType: !1031, size: 64, offset: 256)
!1031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1022, file: !30, line: 128, size: 64, elements: !1032)
!1032 = !{!1033, !1034}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1031, file: !30, line: 133, baseType: !212, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1031, file: !30, line: 138, baseType: !129, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !30, line: 141, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !998, file: !30, line: 141, size: 64, elements: !1037)
!1037 = !{!1038}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1036, file: !30, line: 142, baseType: !212, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !30, line: 144, baseType: !1040, size: 128)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !998, file: !30, line: 144, size: 128, elements: !1041)
!1041 = !{!1042, !1457}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1040, file: !30, line: 146, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !22, line: 126, size: 1216, elements: !1045)
!1045 = !{!1046, !1056, !1077, !1088, !1089, !1090, !1091, !1439, !1440, !1441}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1044, file: !22, line: 127, baseType: !1047, size: 384)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !22, line: 21, size: 384, elements: !1048)
!1048 = !{!1049, !1050, !1052, !1053, !1054, !1055}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1047, file: !22, line: 22, baseType: !212, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1047, file: !22, line: 23, baseType: !1051, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1047, file: !22, line: 24, baseType: !1051, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1047, file: !22, line: 25, baseType: !212, size: 64, offset: 192)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1047, file: !22, line: 26, baseType: !212, size: 64, offset: 256)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1047, file: !22, line: 27, baseType: !212, size: 64, offset: 320)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1044, file: !22, line: 128, baseType: !1057, size: 128, offset: 384)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1058, line: 105, size: 128, elements: !1059)
!1058 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1059 = !{!1060, !1061}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1057, file: !1058, line: 110, baseType: !212, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1057, file: !1058, line: 118, baseType: !1062, size: 64, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1058, line: 95, size: 448, elements: !1064)
!1064 = !{!1065, !1066, !1072, !1073, !1074, !1075, !1076}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1063, file: !1058, line: 96, baseType: !129, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1063, file: !1058, line: 97, baseType: !1067, size: 64, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1058, line: 60, baseType: !1069)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{null, !1071}
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1063, file: !1058, line: 98, baseType: !1067, size: 64, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1063, file: !1058, line: 99, baseType: !388, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1063, file: !1058, line: 100, baseType: !388, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1063, file: !1058, line: 101, baseType: !462, size: 128, align: 64, offset: 256)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1063, file: !1058, line: 102, baseType: !1071, size: 64, offset: 384)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1044, file: !22, line: 129, baseType: !1078, size: 256, offset: 512)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1079, line: 26, size: 256, elements: !1080)
!1079 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1080 = !{!1081, !1082}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1078, file: !1079, line: 27, baseType: !7, size: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1078, file: !1079, line: 28, baseType: !1083, size: 192, offset: 64)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1084, line: 43, size: 192, elements: !1085)
!1084 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1085 = !{!1086, !1087}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1083, file: !1084, line: 44, baseType: !228, size: 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1083, file: !1084, line: 45, baseType: !202, size: 128, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1044, file: !22, line: 130, baseType: !21, size: 32, offset: 768)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1044, file: !22, line: 131, baseType: !7, size: 32, offset: 800)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1044, file: !22, line: 132, baseType: !212, size: 64, offset: 832)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1044, file: !22, line: 133, baseType: !1092, size: 64, offset: 896)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1094)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !22, line: 77, size: 192, elements: !1095)
!1095 = !{!1096, !1100, !1435}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1094, file: !22, line: 83, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{null, !993}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1094, file: !22, line: 89, baseType: !1101, size: 64, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!1104, !1105}
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !30, line: 1184, baseType: !7)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1107, line: 512, size: 896, elements: !1108)
!1107 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1108 = !{!1109, !1402, !1403, !1410, !1417, !1427, !1428, !1429, !1431, !1433}
!1109 = !DIDerivedType(tag: DW_TAG_member, scope: !1106, file: !1107, line: 513, baseType: !1110, size: 320)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1106, file: !1107, line: 513, size: 320, elements: !1111)
!1111 = !{!1112, !1398, !1399, !1400, !1401}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1110, file: !1107, line: 514, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !30, line: 625, size: 1344, elements: !1115)
!1115 = !{!1116, !1125, !1302, !1308, !1315, !1316, !1321, !1322, !1327, !1328, !1331, !1391, !1392, !1393, !1394, !1395, !1396}
!1116 = !DIDerivedType(tag: DW_TAG_member, scope: !1114, file: !30, line: 628, baseType: !1117, size: 128)
!1117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1114, file: !30, line: 628, size: 128, elements: !1118)
!1118 = !{!1119, !1124}
!1119 = !DIDerivedType(tag: DW_TAG_member, scope: !1117, file: !30, line: 629, baseType: !1120, size: 128)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1117, file: !30, line: 629, size: 128, elements: !1121)
!1121 = !{!1122, !1123}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1120, file: !30, line: 631, baseType: !212, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1120, file: !30, line: 632, baseType: !212, size: 64, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1117, file: !30, line: 635, baseType: !462, size: 128, align: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1114, file: !30, line: 639, baseType: !1126, size: 64, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !30, line: 733, size: 10240, elements: !1128)
!1128 = !{!1129, !1300}
!1129 = !DIDerivedType(tag: DW_TAG_member, scope: !1127, file: !30, line: 734, baseType: !1130, size: 10240)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1127, file: !30, line: 734, size: 10240, elements: !1131)
!1131 = !{!1132, !1136, !1150, !1154, !1155, !1156, !1157, !1158, !1159, !1168, !1169, !1170, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1209, !1219, !1222, !1267, !1268, !1269, !1272, !1275, !1276, !1279, !1280, !1281, !1287, !1288}
!1132 = !DIDerivedType(tag: DW_TAG_member, scope: !1130, file: !30, line: 739, baseType: !1133, size: 512, align: 512)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1130, file: !30, line: 739, size: 512, align: 512, elements: !1134)
!1134 = !{!1135}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1133, file: !30, line: 747, baseType: !188, size: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1130, file: !30, line: 750, baseType: !1137, size: 128, offset: 512)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1138, line: 218, size: 128, elements: !1139)
!1138 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1139 = !{!1140, !1148, !1149}
!1140 = !DIDerivedType(tag: DW_TAG_member, scope: !1137, file: !1138, line: 219, baseType: !1141, size: 32)
!1141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1137, file: !1138, line: 219, size: 32, elements: !1142)
!1142 = !{!1143, !1144}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1141, file: !1138, line: 220, baseType: !272, size: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1141, file: !1138, line: 221, baseType: !1145)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1138, line: 197, baseType: !1146)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1138, line: 197, elements: !1147)
!1147 = !{}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1137, file: !1138, line: 223, baseType: !7, size: 32, offset: 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1137, file: !1138, line: 224, baseType: !122, size: 64, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1130, file: !30, line: 752, baseType: !1151, size: 64, offset: 640)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!212, !724, !212, !212, !212, !212}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1130, file: !30, line: 756, baseType: !212, size: 64, offset: 704)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1130, file: !30, line: 757, baseType: !212, size: 64, offset: 768)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1130, file: !30, line: 760, baseType: !212, size: 64, offset: 832)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1130, file: !30, line: 761, baseType: !212, size: 64, offset: 896)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1130, file: !30, line: 763, baseType: !212, size: 64, offset: 960)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1130, file: !30, line: 764, baseType: !1160, size: 64, offset: 1024)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1162, line: 299, baseType: !1163)
!1162 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1162, line: 299, size: 64, elements: !1164)
!1164 = !{!1165}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1163, file: !1162, line: 299, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1167, line: 18, baseType: !212)
!1167 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1130, file: !30, line: 773, baseType: !188, size: 32, offset: 1088)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1130, file: !30, line: 785, baseType: !188, size: 32, offset: 1120)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1130, file: !30, line: 795, baseType: !1171, size: 64, offset: 1152)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !30, line: 726, size: 128, elements: !1173)
!1173 = !{!1174, !1175}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1172, file: !30, line: 727, baseType: !170, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1172, file: !30, line: 728, baseType: !192, size: 32, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1130, file: !30, line: 801, baseType: !212, size: 64, offset: 1216)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1130, file: !30, line: 804, baseType: !129, size: 64, offset: 1280)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1130, file: !30, line: 806, baseType: !192, size: 32, offset: 1344)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1130, file: !30, line: 808, baseType: !272, size: 32, offset: 1376)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1130, file: !30, line: 823, baseType: !217, size: 320, offset: 1408)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1130, file: !30, line: 825, baseType: !202, size: 128, offset: 1728)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1130, file: !30, line: 845, baseType: !192, size: 32, offset: 1856)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1130, file: !30, line: 849, baseType: !212, size: 64, offset: 1920)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1130, file: !30, line: 850, baseType: !212, size: 64, offset: 1984)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1130, file: !30, line: 852, baseType: !212, size: 64, offset: 2048)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1130, file: !30, line: 853, baseType: !212, size: 64, offset: 2112)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1130, file: !30, line: 854, baseType: !131, size: 64, offset: 2176)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1130, file: !30, line: 855, baseType: !212, size: 64, offset: 2240)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1130, file: !30, line: 856, baseType: !212, size: 64, offset: 2304)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1130, file: !30, line: 857, baseType: !212, size: 64, offset: 2368)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1130, file: !30, line: 858, baseType: !212, size: 64, offset: 2432)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1130, file: !30, line: 865, baseType: !576, size: 32, offset: 2496)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1130, file: !30, line: 867, baseType: !272, size: 32, offset: 2528)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1130, file: !30, line: 869, baseType: !212, size: 64, offset: 2560)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1130, file: !30, line: 869, baseType: !212, size: 64, offset: 2624)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1130, file: !30, line: 869, baseType: !212, size: 64, offset: 2688)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1130, file: !30, line: 869, baseType: !212, size: 64, offset: 2752)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1130, file: !30, line: 870, baseType: !212, size: 64, offset: 2816)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1130, file: !30, line: 870, baseType: !212, size: 64, offset: 2880)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1130, file: !30, line: 870, baseType: !212, size: 64, offset: 2944)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1130, file: !30, line: 871, baseType: !212, size: 64, offset: 3008)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1130, file: !30, line: 871, baseType: !212, size: 64, offset: 3072)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1130, file: !30, line: 871, baseType: !212, size: 64, offset: 3136)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1130, file: !30, line: 871, baseType: !212, size: 64, offset: 3200)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1130, file: !30, line: 873, baseType: !1206, size: 3328, offset: 3264)
!1206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 3328, elements: !1207)
!1207 = !{!1208}
!1208 = !DISubrange(count: 52)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1130, file: !30, line: 875, baseType: !1210, size: 1280, offset: 6592)
!1210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1211, size: 1280, elements: !360)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1212, line: 22, size: 320, elements: !1213)
!1212 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1213 = !{!1214, !1215, !1216, !1217}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1211, file: !1212, line: 23, baseType: !228, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1211, file: !1212, line: 24, baseType: !136, size: 64, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1211, file: !1212, line: 26, baseType: !202, size: 128, offset: 128)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1211, file: !1212, line: 28, baseType: !1218, size: 64, offset: 256)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1130, file: !30, line: 877, baseType: !1220, size: 64, offset: 7872)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !30, line: 877, flags: DIFlagFwdDecl)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1130, file: !30, line: 880, baseType: !1223, size: 1088, offset: 7936)
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1224, line: 72, baseType: !1225)
!1224 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1224, line: 23, size: 1088, elements: !1226)
!1226 = !{!1227, !1228, !1229, !1230, !1231, !1234, !1235, !1236, !1237, !1262, !1263, !1264}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1225, file: !1224, line: 28, baseType: !170, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1225, file: !1224, line: 38, baseType: !131, size: 64, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1225, file: !1224, line: 40, baseType: !212, size: 64, offset: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1225, file: !1224, line: 43, baseType: !217, size: 320, offset: 192)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1225, file: !1224, line: 44, baseType: !1232, size: 64, offset: 512)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1224, line: 44, flags: DIFlagFwdDecl)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1225, file: !1224, line: 48, baseType: !212, size: 64, offset: 576)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1225, file: !1224, line: 59, baseType: !264, size: 256, offset: 640)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1225, file: !1224, line: 60, baseType: !122, size: 64, offset: 896)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1225, file: !1224, line: 61, baseType: !1238, size: 64, offset: 960)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1240)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1241, line: 13, size: 1216, elements: !1242)
!1241 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1242 = !{!1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1240, file: !1241, line: 14, baseType: !122, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1240, file: !1241, line: 15, baseType: !212, size: 64, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1240, file: !1241, line: 17, baseType: !212, size: 64, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1240, file: !1241, line: 17, baseType: !212, size: 64, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1240, file: !1241, line: 18, baseType: !212, size: 64, offset: 256)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1240, file: !1241, line: 18, baseType: !212, size: 64, offset: 320)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1240, file: !1241, line: 19, baseType: !363, size: 64, offset: 384)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1240, file: !1241, line: 21, baseType: !720, size: 64, offset: 448)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1240, file: !1241, line: 23, baseType: !720, size: 64, offset: 512)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1240, file: !1241, line: 24, baseType: !720, size: 64, offset: 576)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1240, file: !1241, line: 25, baseType: !720, size: 64, offset: 640)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1240, file: !1241, line: 26, baseType: !720, size: 64, offset: 704)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1240, file: !1241, line: 27, baseType: !720, size: 64, offset: 768)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1240, file: !1241, line: 28, baseType: !720, size: 64, offset: 832)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1240, file: !1241, line: 29, baseType: !720, size: 64, offset: 896)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1240, file: !1241, line: 30, baseType: !720, size: 64, offset: 960)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1240, file: !1241, line: 31, baseType: !720, size: 64, offset: 1024)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1240, file: !1241, line: 32, baseType: !720, size: 64, offset: 1088)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1240, file: !1241, line: 33, baseType: !720, size: 64, offset: 1152)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1225, file: !1224, line: 63, baseType: !188, size: 32, offset: 1024)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1225, file: !1224, line: 69, baseType: !252, size: 16, offset: 1056)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1225, file: !1224, line: 70, baseType: !1265, size: 16, offset: 1072)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !137, line: 18, baseType: !1266)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !139, line: 23, baseType: !305)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1130, file: !30, line: 882, baseType: !212, size: 64, offset: 9024)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1130, file: !30, line: 885, baseType: !272, size: 32, offset: 9088)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1130, file: !30, line: 886, baseType: !1270, size: 64, offset: 9152)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !30, line: 732, flags: DIFlagFwdDecl)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1130, file: !30, line: 901, baseType: !1273, size: 64, offset: 9216)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !143, line: 18, flags: DIFlagFwdDecl)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1130, file: !30, line: 904, baseType: !724, size: 64, offset: 9280)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1130, file: !30, line: 906, baseType: !1277, size: 64, offset: 9344)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !30, line: 906, flags: DIFlagFwdDecl)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1130, file: !30, line: 930, baseType: !188, size: 32, offset: 9408)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1130, file: !30, line: 933, baseType: !188, size: 32, offset: 9440)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1130, file: !30, line: 935, baseType: !1282, size: 64, offset: 9472)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !81, line: 103, size: 64, elements: !1283)
!1283 = !{!1284}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1282, file: !81, line: 104, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !81, line: 101, flags: DIFlagFwdDecl)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1130, file: !30, line: 940, baseType: !129, size: 64, offset: 9536)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1130, file: !30, line: 942, baseType: !1289, size: 256, offset: 9600)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1290, line: 98, size: 256, elements: !1291)
!1290 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1291 = !{!1292, !1293, !1294}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1289, file: !1290, line: 99, baseType: !129, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1289, file: !1290, line: 100, baseType: !202, size: 128, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1289, file: !1290, line: 101, baseType: !1295, size: 64, offset: 192)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1290, line: 21, baseType: !1296)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{null, !1299}
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1127, file: !30, line: 986, baseType: !1301, offset: 10240)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, elements: !539)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1114, file: !30, line: 640, baseType: !1303, size: 64, offset: 192)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1162, line: 297, baseType: !1304)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1162, line: 297, size: 64, elements: !1305)
!1305 = !{!1306}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1304, file: !1162, line: 297, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1167, line: 19, baseType: !212)
!1308 = !DIDerivedType(tag: DW_TAG_member, scope: !1114, file: !30, line: 646, baseType: !1309, size: 64, offset: 256)
!1309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1114, file: !30, line: 646, size: 64, elements: !1310)
!1310 = !{!1311, !1314}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1309, file: !30, line: 647, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1313)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !30, line: 542, baseType: !212)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1309, file: !30, line: 648, baseType: !1313, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1114, file: !30, line: 666, baseType: !192, size: 32, offset: 320)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1114, file: !30, line: 667, baseType: !1317, size: 64, offset: 384)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !30, line: 579, size: 320, elements: !1319)
!1319 = !{!1320}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1318, file: !30, line: 580, baseType: !217, size: 320)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1114, file: !30, line: 670, baseType: !388, size: 8, offset: 448)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1114, file: !30, line: 681, baseType: !1323, size: 256, offset: 512)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1114, file: !30, line: 678, size: 256, elements: !1324)
!1324 = !{!1325, !1326}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1323, file: !30, line: 679, baseType: !208, size: 192, align: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1323, file: !30, line: 680, baseType: !212, size: 64, offset: 192)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1114, file: !30, line: 689, baseType: !202, size: 128, offset: 768)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1114, file: !30, line: 691, baseType: !1329, size: 64, offset: 896)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !30, line: 691, flags: DIFlagFwdDecl)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1114, file: !30, line: 694, baseType: !1332, size: 64, offset: 960)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1334)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1107, line: 563, size: 1024, elements: !1335)
!1335 = !{!1336, !1340, !1341, !1345, !1349, !1353, !1354, !1358, !1362, !1366, !1367, !1368, !1372, !1376, !1383, !1387}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1334, file: !1107, line: 564, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{null, !1113}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1334, file: !1107, line: 569, baseType: !1337, size: 64, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1334, file: !1107, line: 571, baseType: !1342, size: 64, offset: 128)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!192, !1113, !212}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1334, file: !1107, line: 572, baseType: !1346, size: 64, offset: 192)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!192, !1113}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1334, file: !1107, line: 578, baseType: !1350, size: 64, offset: 256)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!192, !1113, !212, !212, !212}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1334, file: !1107, line: 580, baseType: !1101, size: 64, offset: 320)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1334, file: !1107, line: 581, baseType: !1355, size: 64, offset: 384)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!1104, !1105, !7}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1334, file: !1107, line: 582, baseType: !1359, size: 64, offset: 448)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!1104, !1105, !212, !212}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1334, file: !1107, line: 584, baseType: !1363, size: 64, offset: 512)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!212, !1113}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1334, file: !1107, line: 588, baseType: !1101, size: 64, offset: 576)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1334, file: !1107, line: 591, baseType: !1101, size: 64, offset: 640)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1334, file: !1107, line: 597, baseType: !1369, size: 64, offset: 704)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!192, !1113, !212, !122, !192, !192}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1334, file: !1107, line: 603, baseType: !1373, size: 64, offset: 768)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!333, !1113}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1334, file: !1107, line: 613, baseType: !1377, size: 64, offset: 832)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!192, !1113, !1380}
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1382, line: 54, flags: DIFlagFwdDecl)
!1382 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1334, file: !1107, line: 625, baseType: !1384, size: 64, offset: 896)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!1380, !1113, !212}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1334, file: !1107, line: 633, baseType: !1388, size: 64, offset: 960)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!993, !1113, !212}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1114, file: !30, line: 697, baseType: !212, size: 64, offset: 1024)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1114, file: !30, line: 699, baseType: !724, size: 64, offset: 1088)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1114, file: !30, line: 700, baseType: !122, size: 64, offset: 1152)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1114, file: !30, line: 711, baseType: !129, size: 64, offset: 1216)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1114, file: !30, line: 717, baseType: !1380, size: 64, offset: 1280)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1114, file: !30, line: 722, baseType: !1397, offset: 1344)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !30, line: 570, elements: !1147)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1110, file: !1107, line: 515, baseType: !812, size: 32, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1110, file: !1107, line: 516, baseType: !212, size: 64, offset: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1110, file: !1107, line: 517, baseType: !212, size: 64, offset: 192)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1110, file: !1107, line: 518, baseType: !212, size: 64, offset: 256)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1106, file: !1107, line: 520, baseType: !29, size: 32, offset: 320)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1106, file: !1107, line: 522, baseType: !1404, size: 64, offset: 384)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1167, line: 22, baseType: !1406)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1167, line: 22, size: 64, elements: !1407)
!1407 = !{!1408}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1406, file: !1167, line: 22, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1167, line: 15, baseType: !212)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1106, file: !1107, line: 524, baseType: !1411, size: 64, offset: 448)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1162, line: 372, baseType: !1413)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1162, line: 372, size: 64, elements: !1414)
!1414 = !{!1415}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1413, file: !1162, line: 372, baseType: !1416, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1167, line: 16, baseType: !212)
!1417 = !DIDerivedType(tag: DW_TAG_member, scope: !1106, file: !1107, line: 527, baseType: !1418, size: 64, offset: 512)
!1418 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1106, file: !1107, line: 527, size: 64, elements: !1419)
!1419 = !{!1420, !1426}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1418, file: !1107, line: 528, baseType: !1421, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1167, line: 21, baseType: !1422)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1167, line: 21, size: 64, elements: !1423)
!1423 = !{!1424}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1422, file: !1167, line: 21, baseType: !1425, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1167, line: 14, baseType: !212)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1418, file: !1107, line: 529, baseType: !1405, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1106, file: !1107, line: 534, baseType: !993, size: 64, offset: 576)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1106, file: !1107, line: 535, baseType: !993, size: 64, offset: 640)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1106, file: !1107, line: 541, baseType: !1430, size: 64, offset: 704)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1106, file: !1107, line: 545, baseType: !1432, size: 64, offset: 768)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1106, file: !1107, line: 549, baseType: !1434, size: 64, offset: 832)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1162, line: 520, baseType: !993)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1094, file: !22, line: 100, baseType: !1436, size: 64, offset: 128)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!192, !1043, !212, !212, !192}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1044, file: !22, line: 134, baseType: !122, size: 64, offset: 960)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1044, file: !22, line: 135, baseType: !192, size: 32, offset: 1024)
!1441 = !DIDerivedType(tag: DW_TAG_member, scope: !1044, file: !22, line: 136, baseType: !1442, size: 128, offset: 1088)
!1442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1044, file: !22, line: 136, size: 128, elements: !1443)
!1443 = !{!1444, !1450}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1442, file: !22, line: 137, baseType: !1445, size: 128)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1446, line: 6, size: 128, elements: !1447)
!1446 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1447 = !{!1448, !1449}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1445, file: !1446, line: 7, baseType: !170, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1445, file: !1446, line: 8, baseType: !170, size: 64, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, scope: !1442, file: !22, line: 138, baseType: !1451)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1442, file: !22, line: 138, elements: !1452)
!1452 = !{!1453, !1455}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1451, file: !22, line: 138, baseType: !1454)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1451, file: !22, line: 138, elements: !1147)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1451, file: !22, line: 138, baseType: !1456)
!1456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1445, elements: !539)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1040, file: !30, line: 147, baseType: !122, size: 64, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !998, file: !30, line: 161, baseType: !462, size: 128, align: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, scope: !994, file: !30, line: 164, baseType: !1460, size: 32, offset: 384)
!1460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !994, file: !30, line: 164, size: 32, elements: !1461)
!1461 = !{!1462, !1463}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1460, file: !30, line: 169, baseType: !188, size: 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1460, file: !30, line: 177, baseType: !7, size: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !994, file: !30, line: 181, baseType: !188, size: 32, offset: 416)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !59, line: 309, flags: DIFlagFwdDecl)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !987, file: !59, line: 406, baseType: !1468, size: 64, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!192, !724, !1471}
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !30, line: 293, size: 1536, elements: !1473)
!1473 = !{!1474, !1504, !1518}
!1474 = !DIDerivedType(tag: DW_TAG_member, scope: !1472, file: !30, line: 295, baseType: !1475, size: 512)
!1475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1472, file: !30, line: 295, size: 512, elements: !1476)
!1476 = !{!1477, !1503}
!1477 = !DIDerivedType(tag: DW_TAG_member, scope: !1475, file: !30, line: 296, baseType: !1478, size: 448)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1475, file: !30, line: 296, size: 448, elements: !1479)
!1479 = !{!1480, !1481, !1490, !1491, !1492, !1501, !1502}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1478, file: !30, line: 298, baseType: !212, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, scope: !1478, file: !30, line: 299, baseType: !1482, size: 128, offset: 64)
!1482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1478, file: !30, line: 299, size: 128, elements: !1483)
!1483 = !{!1484, !1485}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1482, file: !30, line: 300, baseType: !202, size: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, scope: !1482, file: !30, line: 302, baseType: !1486, size: 128)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1482, file: !30, line: 302, size: 128, elements: !1487)
!1487 = !{!1488, !1489}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1486, file: !30, line: 303, baseType: !122, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1486, file: !30, line: 305, baseType: !7, size: 32, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1478, file: !30, line: 310, baseType: !966, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1478, file: !30, line: 311, baseType: !212, size: 64, offset: 256)
!1492 = !DIDerivedType(tag: DW_TAG_member, scope: !1478, file: !30, line: 312, baseType: !1493, size: 64, offset: 320)
!1493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1478, file: !30, line: 312, size: 64, elements: !1494)
!1494 = !{!1495, !1496}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1493, file: !30, line: 313, baseType: !122, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1493, file: !30, line: 314, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !30, line: 257, baseType: !1498)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 255, size: 64, elements: !1499)
!1499 = !{!1500}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1498, file: !30, line: 256, baseType: !212, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1478, file: !30, line: 316, baseType: !188, size: 32, offset: 384)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1478, file: !30, line: 317, baseType: !188, size: 32, offset: 416)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1475, file: !30, line: 323, baseType: !994, size: 512, align: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, scope: !1472, file: !30, line: 325, baseType: !1505, size: 512, offset: 512)
!1505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1472, file: !30, line: 325, size: 512, elements: !1506)
!1506 = !{!1507, !1517}
!1507 = !DIDerivedType(tag: DW_TAG_member, scope: !1505, file: !30, line: 326, baseType: !1508, size: 320)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1505, file: !30, line: 326, size: 320, elements: !1509)
!1509 = !{!1510, !1511, !1512, !1513, !1514, !1515, !1516}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1508, file: !30, line: 327, baseType: !212, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1508, file: !30, line: 328, baseType: !212, size: 64, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1508, file: !30, line: 329, baseType: !212, size: 64, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1508, file: !30, line: 331, baseType: !188, size: 32, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1508, file: !30, line: 332, baseType: !188, size: 32, offset: 224)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1508, file: !30, line: 333, baseType: !188, size: 32, offset: 256)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1508, file: !30, line: 335, baseType: !7, size: 32, offset: 288)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1505, file: !30, line: 339, baseType: !994, size: 512, align: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, scope: !1472, file: !30, line: 341, baseType: !1519, size: 512, offset: 1024)
!1519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1472, file: !30, line: 341, size: 512, elements: !1520)
!1520 = !{!1521, !1530, !1536}
!1521 = !DIDerivedType(tag: DW_TAG_member, scope: !1519, file: !30, line: 342, baseType: !1522, size: 384)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1519, file: !30, line: 342, size: 384, elements: !1523)
!1523 = !{!1524, !1525, !1526, !1527, !1528, !1529}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1522, file: !30, line: 343, baseType: !212, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1522, file: !30, line: 344, baseType: !212, size: 64, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1522, file: !30, line: 346, baseType: !122, size: 64, offset: 128)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1522, file: !30, line: 347, baseType: !122, size: 64, offset: 192)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1522, file: !30, line: 348, baseType: !122, size: 64, offset: 256)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1522, file: !30, line: 349, baseType: !122, size: 64, offset: 320)
!1530 = !DIDerivedType(tag: DW_TAG_member, scope: !1519, file: !30, line: 352, baseType: !1531, size: 256)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1519, file: !30, line: 352, size: 256, elements: !1532)
!1532 = !{!1533, !1534, !1535}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1531, file: !30, line: 353, baseType: !212, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1531, file: !30, line: 354, baseType: !212, size: 64, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1531, file: !30, line: 356, baseType: !202, size: 128, offset: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1519, file: !30, line: 359, baseType: !994, size: 512, align: 128)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !987, file: !59, line: 409, baseType: !1538, size: 64, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!192, !966, !1465}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !987, file: !59, line: 412, baseType: !1542, size: 64, offset: 192)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!388, !966, !1471}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !987, file: !59, line: 414, baseType: !1546, size: 64, offset: 256)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{null, !1549}
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !59, line: 310, flags: DIFlagFwdDecl)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !987, file: !59, line: 416, baseType: !1552, size: 64, offset: 320)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!192, !724, !966, !420, !7, !1555, !1556}
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !987, file: !59, line: 419, baseType: !1558, size: 64, offset: 384)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!192, !724, !966, !420, !7, !7, !993, !122}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !987, file: !59, line: 424, baseType: !1562, size: 64, offset: 448)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!1565, !966, !1565}
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !132, line: 131, baseType: !170)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !987, file: !59, line: 425, baseType: !1567, size: 64, offset: 512)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{null, !1471, !336, !336}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !987, file: !59, line: 426, baseType: !1571, size: 64, offset: 576)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!388, !1471, !812}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !987, file: !59, line: 427, baseType: !1575, size: 64, offset: 640)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{null, !1471}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !987, file: !59, line: 428, baseType: !1579, size: 64, offset: 704)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!760, !1582, !1604}
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !59, line: 373, size: 384, elements: !1584)
!1584 = !{!1585, !1586, !1587, !1591, !1592, !1593, !1594}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1583, file: !59, line: 374, baseType: !724, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1583, file: !59, line: 375, baseType: !420, size: 64, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1583, file: !59, line: 376, baseType: !1588, size: 64, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{null, !1582, !720}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1583, file: !59, line: 377, baseType: !122, size: 64, offset: 192)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1583, file: !59, line: 378, baseType: !192, size: 32, offset: 256)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1583, file: !59, line: 379, baseType: !252, size: 16, offset: 288)
!1594 = !DIDerivedType(tag: DW_TAG_member, scope: !1583, file: !59, line: 380, baseType: !1595, size: 64, offset: 320)
!1595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1583, file: !59, line: 380, size: 64, elements: !1596)
!1596 = !{!1597, !1600}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1595, file: !59, line: 386, baseType: !1598, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !59, line: 386, flags: DIFlagFwdDecl)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1595, file: !59, line: 395, baseType: !1601, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!760, !122}
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1606, line: 41, size: 320, elements: !1607)
!1606 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1607 = !{!1608, !1609, !1610, !1611, !1612, !1613, !1618, !1656}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1605, file: !1606, line: 42, baseType: !245, size: 8)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1605, file: !1606, line: 43, baseType: !388, size: 8, offset: 8)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1605, file: !1606, line: 44, baseType: !388, size: 8, offset: 16)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1605, file: !1606, line: 45, baseType: !388, size: 8, offset: 24)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1605, file: !1606, line: 46, baseType: !388, size: 8, offset: 32)
!1613 = !DIDerivedType(tag: DW_TAG_member, scope: !1605, file: !1606, line: 47, baseType: !1614, size: 64, offset: 64)
!1614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1605, file: !1606, line: 47, size: 64, elements: !1615)
!1615 = !{!1616, !1617}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1614, file: !1606, line: 48, baseType: !336, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1614, file: !1606, line: 49, baseType: !192, size: 32)
!1618 = !DIDerivedType(tag: DW_TAG_member, scope: !1605, file: !1606, line: 61, baseType: !1619, size: 128, offset: 128)
!1619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1605, file: !1606, line: 61, size: 128, elements: !1620)
!1620 = !{!1621, !1627}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1619, file: !1606, line: 67, baseType: !1622, size: 128)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1623, line: 17, size: 128, elements: !1624)
!1623 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1624 = !{!1625, !1626}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1622, file: !1623, line: 19, baseType: !122, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1622, file: !1623, line: 20, baseType: !337, size: 64, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, scope: !1619, file: !1606, line: 68, baseType: !1628, size: 128)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1619, file: !1606, line: 68, size: 128, elements: !1629)
!1629 = !{!1630, !1655}
!1630 = !DIDerivedType(tag: DW_TAG_member, scope: !1628, file: !1606, line: 69, baseType: !1631, size: 64)
!1631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1628, file: !1606, line: 69, size: 64, elements: !1632)
!1632 = !{!1633, !1636, !1643, !1652, !1654}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1631, file: !1606, line: 71, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1622)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1631, file: !1606, line: 72, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1639)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1606, line: 17, size: 128, elements: !1640)
!1640 = !{!1641, !1642}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1639, file: !1606, line: 18, baseType: !122, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1639, file: !1606, line: 19, baseType: !336, size: 64, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1631, file: !1606, line: 73, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1646)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1647, line: 31, size: 128, elements: !1648)
!1647 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1648 = !{!1649, !1650, !1651}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1646, file: !1647, line: 32, baseType: !993, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1646, file: !1647, line: 33, baseType: !7, size: 32, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1646, file: !1647, line: 34, baseType: !7, size: 32, offset: 96)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1631, file: !1606, line: 74, baseType: !1653, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1631, file: !1606, line: 75, baseType: !122, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1628, file: !1606, line: 77, baseType: !336, size: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, scope: !1605, file: !1606, line: 80, baseType: !1657, size: 64, offset: 256)
!1657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1605, file: !1606, line: 80, size: 64, elements: !1658)
!1658 = !{!1659, !1660}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1657, file: !1606, line: 81, baseType: !212, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1657, file: !1606, line: 82, baseType: !420, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !987, file: !59, line: 433, baseType: !1662, size: 64, offset: 768)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!192, !966, !1471, !1471, !45}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !987, file: !59, line: 435, baseType: !1666, size: 64, offset: 832)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!192, !1471}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !987, file: !59, line: 436, baseType: !1670, size: 64, offset: 896)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!388, !1471, !336, !336}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !987, file: !59, line: 438, baseType: !1674, size: 64, offset: 960)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{null, !1471, !1677, !1677}
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !987, file: !59, line: 439, baseType: !1679, size: 64, offset: 1024)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!192, !966, !993}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !987, file: !59, line: 442, baseType: !1683, size: 64, offset: 1088)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!192, !1686, !724, !1688}
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !59, line: 66, flags: DIFlagFwdDecl)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !987, file: !59, line: 444, baseType: !1690, size: 64, offset: 1152)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{null, !724}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !987, file: !59, line: 445, baseType: !1694, size: 64, offset: 1216)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!192, !1582, !1604}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !967, file: !59, line: 486, baseType: !212, size: 64, offset: 896)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !967, file: !59, line: 487, baseType: !217, size: 320, offset: 960)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !967, file: !59, line: 488, baseType: !1700, size: 32, offset: 1280)
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1701, line: 8, baseType: !300)
!1701 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !967, file: !59, line: 489, baseType: !272, size: 32, offset: 1312)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !967, file: !59, line: 490, baseType: !202, size: 128, offset: 1344)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !967, file: !59, line: 491, baseType: !122, size: 64, offset: 1472)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !957, file: !926, line: 180, baseType: !1706, size: 64, offset: 320)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!760, !724, !868, !956, !353, !420, !336}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !957, file: !926, line: 182, baseType: !1706, size: 64, offset: 384)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !957, file: !926, line: 184, baseType: !1711, size: 64, offset: 448)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!192, !724, !868, !956, !1113}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !945, file: !926, line: 90, baseType: !1715, size: 64, offset: 192)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !945, file: !926, line: 91, baseType: !1717, size: 64, offset: 256)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !916, file: !863, line: 120, baseType: !1719, size: 64, offset: 192)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!1722, !886}
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1724)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !53, line: 39, size: 384, elements: !1725)
!1725 = !{!1726, !1727, !1731, !1735, !1742, !1746}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1724, file: !53, line: 40, baseType: !52, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1724, file: !53, line: 41, baseType: !1728, size: 64, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!388}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1724, file: !53, line: 42, baseType: !1732, size: 64, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!122}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1724, file: !53, line: 43, baseType: !1736, size: 64, offset: 192)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!363, !1739}
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !1741, line: 20, flags: DIFlagFwdDecl)
!1741 = !DIFile(filename: "./include/net/netns/ipv4.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "984d85e204c6d0b56270eed465b5c766")
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1724, file: !53, line: 44, baseType: !1743, size: 64, offset: 256)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!363}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1724, file: !53, line: 45, baseType: !637, size: 64, offset: 320)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !916, file: !863, line: 121, baseType: !1748, size: 64, offset: 256)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!363, !886}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !916, file: !863, line: 122, baseType: !1752, size: 64, offset: 320)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{null, !886, !1755, !1756}
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !862, file: !863, line: 70, baseType: !1758, size: 64, offset: 384)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1760, line: 190, size: 1152, elements: !1761)
!1760 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1761 = !{!1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1845, !1846, !1847, !1848, !1849, !1852}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1759, file: !1760, line: 191, baseType: !188, size: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1759, file: !1760, line: 192, baseType: !188, size: 32, offset: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1759, file: !1760, line: 202, baseType: !1758, size: 64, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1759, file: !1760, line: 203, baseType: !333, size: 64, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1759, file: !1760, line: 205, baseType: !208, size: 192, align: 64, offset: 192)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1759, file: !1760, line: 207, baseType: !363, size: 64, offset: 384)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1759, file: !1760, line: 208, baseType: !7, size: 32, offset: 448)
!1769 = !DIDerivedType(tag: DW_TAG_member, scope: !1759, file: !1760, line: 209, baseType: !1770, size: 256, offset: 512)
!1770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1759, file: !1760, line: 209, size: 256, elements: !1771)
!1771 = !{!1772, !1781, !1785}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1770, file: !1760, line: 210, baseType: !1773, size: 256)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1760, line: 153, size: 256, elements: !1774)
!1774 = !{!1775, !1776, !1777, !1780}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1773, file: !1760, line: 154, baseType: !212, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1773, file: !1760, line: 156, baseType: !978, size: 64, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1773, file: !1760, line: 162, baseType: !1778, size: 64, offset: 128)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1760, line: 162, flags: DIFlagFwdDecl)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1773, file: !1760, line: 167, baseType: !212, size: 64, offset: 192)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1770, file: !1760, line: 211, baseType: !1782, size: 64)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1760, line: 170, size: 64, elements: !1783)
!1783 = !{!1784}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1782, file: !1760, line: 171, baseType: !1758, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1770, file: !1760, line: 212, baseType: !1786, size: 256)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1760, line: 174, size: 256, elements: !1787)
!1787 = !{!1788, !1840, !1843, !1844}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1786, file: !1760, line: 175, baseType: !1789, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1791)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1760, line: 271, size: 768, elements: !1792)
!1792 = !{!1793, !1813, !1817, !1818, !1819, !1820, !1821, !1825, !1826, !1827, !1828, !1836}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1791, file: !1760, line: 276, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!192, !1797}
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1760, line: 251, size: 1216, elements: !1799)
!1799 = !{!1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1798, file: !1760, line: 253, baseType: !1758, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1798, file: !1760, line: 254, baseType: !724, size: 64, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1798, file: !1760, line: 255, baseType: !410, size: 64, offset: 128)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1798, file: !1760, line: 256, baseType: !122, size: 64, offset: 192)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1798, file: !1760, line: 259, baseType: !264, size: 256, offset: 256)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1798, file: !1760, line: 260, baseType: !264, size: 256, offset: 512)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1798, file: !1760, line: 261, baseType: !192, size: 32, offset: 768)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1798, file: !1760, line: 262, baseType: !202, size: 128, offset: 832)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1798, file: !1760, line: 263, baseType: !353, size: 64, offset: 960)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1798, file: !1760, line: 265, baseType: !336, size: 64, offset: 1024)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1798, file: !1760, line: 266, baseType: !388, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1798, file: !1760, line: 267, baseType: !388, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1798, file: !1760, line: 268, baseType: !1332, size: 64, offset: 1152)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1791, file: !1760, line: 277, baseType: !1814, size: 64, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{null, !1797}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1791, file: !1760, line: 290, baseType: !443, size: 64, offset: 128)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1791, file: !1760, line: 292, baseType: !430, size: 64, offset: 192)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1791, file: !1760, line: 293, baseType: !439, size: 64, offset: 256)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1791, file: !1760, line: 294, baseType: !435, size: 64, offset: 320)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1791, file: !1760, line: 296, baseType: !1822, size: 64, offset: 384)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!760, !1797, !353, !336, !420}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1791, file: !1760, line: 306, baseType: !336, size: 64, offset: 448)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1791, file: !1760, line: 313, baseType: !388, size: 8, offset: 512)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1791, file: !1760, line: 314, baseType: !1822, size: 64, offset: 576)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1791, file: !1760, line: 317, baseType: !1829, size: 64, offset: 640)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!1832, !1797, !1834}
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1833, line: 59, baseType: !7)
!1833 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !59, line: 61, flags: DIFlagFwdDecl)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1791, file: !1760, line: 320, baseType: !1837, size: 64, offset: 704)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!192, !1797, !1113}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1786, file: !1760, line: 176, baseType: !1841, size: 64, offset: 64)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1760, line: 35, flags: DIFlagFwdDecl)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1786, file: !1760, line: 177, baseType: !420, size: 64, offset: 128)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1786, file: !1760, line: 178, baseType: !1758, size: 64, offset: 192)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1759, file: !1760, line: 215, baseType: !122, size: 64, offset: 768)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1759, file: !1760, line: 221, baseType: !170, size: 64, offset: 832)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1759, file: !1760, line: 223, baseType: !254, size: 16, offset: 896)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1759, file: !1760, line: 224, baseType: !609, size: 16, offset: 912)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1759, file: !1760, line: 225, baseType: !1850, size: 64, offset: 960)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1760, line: 36, flags: DIFlagFwdDecl)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1759, file: !1760, line: 227, baseType: !462, size: 128, align: 64, offset: 1024)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !862, file: !863, line: 71, baseType: !1854, size: 32, offset: 448)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1855, line: 19, size: 32, elements: !1856)
!1855 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1856 = !{!1857}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1854, file: !1855, line: 20, baseType: !184, size: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !862, file: !863, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !862, file: !863, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !862, file: !863, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !862, file: !863, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !862, file: !863, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !859, file: !15, line: 47, baseType: !849, size: 64, offset: 512)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !859, file: !15, line: 48, baseType: !868, size: 64, offset: 576)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !859, file: !15, line: 49, baseType: !1866, size: 64, offset: 640)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !15, line: 49, flags: DIFlagFwdDecl)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !859, file: !15, line: 50, baseType: !1869, size: 64, offset: 704)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !850, file: !15, line: 418, baseType: !1871, size: 64, offset: 1408)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !15, line: 53, size: 448, elements: !1873)
!1873 = !{!1874, !1875, !1880, !1884, !1888, !1892}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1872, file: !15, line: 54, baseType: !933, size: 128)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1872, file: !15, line: 55, baseType: !1876, size: 64, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!760, !1871, !1879, !353}
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1872, file: !15, line: 57, baseType: !1881, size: 64, offset: 192)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!760, !1871, !1879, !333, !336}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1872, file: !15, line: 59, baseType: !1885, size: 64, offset: 256)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{null, !849, !333}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1872, file: !15, line: 60, baseType: !1889, size: 64, offset: 320)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!192, !849}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1872, file: !15, line: 61, baseType: !1893, size: 64, offset: 384)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{null, !849}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !850, file: !15, line: 419, baseType: !333, size: 64, offset: 1472)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !850, file: !15, line: 420, baseType: !333, size: 64, offset: 1536)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !850, file: !15, line: 421, baseType: !868, size: 64, offset: 1600)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !850, file: !15, line: 424, baseType: !1900, size: 64, offset: 1664)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1902)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !15, line: 424, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !850, file: !15, line: 425, baseType: !1904, size: 64, offset: 1728)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !850, file: !15, line: 426, baseType: !7, size: 32, offset: 1792)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !850, file: !15, line: 435, baseType: !264, size: 256, offset: 1856)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !850, file: !15, line: 437, baseType: !1909, size: 64, offset: 2112)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1911, line: 69, size: 320, elements: !1912)
!1911 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1912 = !{!1913, !1914, !1915, !1932, !1934, !1938, !1939}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1910, file: !1911, line: 70, baseType: !333, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1910, file: !1911, line: 71, baseType: !849, size: 64, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1910, file: !1911, line: 72, baseType: !1916, size: 64, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1918)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1911, line: 47, size: 256, elements: !1919)
!1919 = !{!1920, !1921, !1927, !1931}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1918, file: !1911, line: 49, baseType: !7, size: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1918, file: !1911, line: 51, baseType: !1922, size: 64, offset: 64)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!192, !333, !1925}
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1910)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1918, file: !1911, line: 53, baseType: !1928, size: 64, offset: 128)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!192, !353, !1925}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1918, file: !1911, line: 55, baseType: !637, size: 64, offset: 192)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1910, file: !1911, line: 73, baseType: !1933, size: 16, offset: 192)
!1933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1910, file: !1911, line: 74, baseType: !1935, size: 8, offset: 208)
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !137, line: 16, baseType: !1936)
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !139, line: 20, baseType: !1937)
!1937 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1910, file: !1911, line: 75, baseType: !245, size: 8, offset: 216)
!1939 = !DIDerivedType(tag: DW_TAG_member, scope: !1910, file: !1911, line: 76, baseType: !1940, size: 64, offset: 256)
!1940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1910, file: !1911, line: 76, size: 64, elements: !1941)
!1941 = !{!1942, !1943, !1950}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1940, file: !1911, line: 77, baseType: !122, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1940, file: !1911, line: 78, baseType: !1944, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1946)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1911, line: 86, size: 128, elements: !1947)
!1947 = !{!1948, !1949}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1946, file: !1911, line: 87, baseType: !7, size: 32)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1946, file: !1911, line: 88, baseType: !353, size: 64, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1940, file: !1911, line: 79, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1953)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1911, line: 92, size: 256, elements: !1954)
!1954 = !{!1955, !1956, !1957, !1959, !1960}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1953, file: !1911, line: 94, baseType: !7, size: 32)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1953, file: !1911, line: 95, baseType: !7, size: 32, offset: 32)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1953, file: !1911, line: 96, baseType: !1958, size: 64, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1953, file: !1911, line: 97, baseType: !1916, size: 64, offset: 128)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1953, file: !1911, line: 98, baseType: !122, size: 64, offset: 192)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !850, file: !15, line: 438, baseType: !7, size: 32, offset: 2176)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !850, file: !15, line: 441, baseType: !7, size: 32, offset: 2208)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !850, file: !15, line: 442, baseType: !1900, size: 64, offset: 2240)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !850, file: !15, line: 443, baseType: !1904, size: 64, offset: 2304)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !850, file: !15, line: 444, baseType: !388, size: 8, offset: 2368)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !850, file: !15, line: 451, baseType: !388, size: 8, offset: 2376)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !850, file: !15, line: 454, baseType: !7, size: 32, offset: 2400)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !850, file: !15, line: 455, baseType: !1969, size: 64, offset: 2432)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1971, line: 23, size: 96, elements: !1972)
!1971 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1972 = !{!1973, !1974, !1975}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1970, file: !1971, line: 24, baseType: !192, size: 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1970, file: !1971, line: 24, baseType: !192, size: 32, offset: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1970, file: !1971, line: 24, baseType: !192, size: 32, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !850, file: !15, line: 458, baseType: !1977, size: 64, offset: 2496)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!192}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !850, file: !15, line: 460, baseType: !1981, size: 4032, align: 512, offset: 2560)
!1981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1982, size: 4032, elements: !1998)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !15, line: 362, size: 576, elements: !1983)
!1983 = !{!1984, !1985, !1986}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1982, file: !15, line: 363, baseType: !122, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1982, file: !15, line: 364, baseType: !7, size: 32, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1982, file: !15, line: 367, baseType: !1987, size: 448, offset: 128)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !15, line: 319, size: 448, elements: !1988)
!1988 = !{!1989, !1990}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1987, file: !15, line: 320, baseType: !849, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1987, file: !15, line: 321, baseType: !1991, size: 384, offset: 64)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1992, line: 40, size: 384, elements: !1993)
!1992 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1993 = !{!1994}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1991, file: !1992, line: 41, baseType: !1995, size: 384, align: 64)
!1995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 384, align: 64, elements: !1996)
!1996 = !{!1997}
!1997 = !DISubrange(count: 2)
!1998 = !{!1999}
!1999 = !DISubrange(count: 7)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !850, file: !15, line: 463, baseType: !2001, size: 192, offset: 6592)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2002, line: 8, size: 192, elements: !2003)
!2002 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2003 = !{!2004, !2005, !2007}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2001, file: !2002, line: 10, baseType: !7, size: 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2001, file: !2002, line: 11, baseType: !2006, size: 64, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2001, file: !2002, line: 12, baseType: !2008, size: 64, offset: 128)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2010, line: 59, size: 48, elements: !2011)
!2010 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2011 = !{!2012, !2013, !2014, !2015, !2016, !2017}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2009, file: !2010, line: 60, baseType: !1265, size: 16)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2009, file: !2010, line: 61, baseType: !1265, size: 16, offset: 16)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2009, file: !2010, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2009, file: !2010, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2009, file: !2010, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2009, file: !2010, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !850, file: !15, line: 465, baseType: !212, size: 64, offset: 6784)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !850, file: !15, line: 469, baseType: !7, size: 32, offset: 6848)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !850, file: !15, line: 470, baseType: !202, size: 128, offset: 6912)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !850, file: !15, line: 471, baseType: !2022, size: 64, offset: 7040)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2024, line: 33, size: 96, elements: !2025)
!2024 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2025 = !{!2026, !2027, !2028, !2029}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2023, file: !2024, line: 37, baseType: !192, size: 32)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2023, file: !2024, line: 43, baseType: !192, size: 32, offset: 32)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2023, file: !2024, line: 45, baseType: !254, size: 16, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2023, file: !2024, line: 47, baseType: !254, size: 16, offset: 80)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !850, file: !15, line: 476, baseType: !2031, size: 64, offset: 7104)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !15, line: 378, size: 256, elements: !2033)
!2033 = !{!2034, !2050, !2051, !2052}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2032, file: !15, line: 379, baseType: !2035, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2037, line: 204, baseType: !2038)
!2037 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2037, line: 197, size: 192, elements: !2039)
!2039 = !{!2040, !2042, !2043, !2044, !2046, !2048}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2038, file: !2037, line: 198, baseType: !2041, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2037, line: 21, baseType: !301)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2038, file: !2037, line: 199, baseType: !178, size: 8, offset: 32)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2038, file: !2037, line: 200, baseType: !178, size: 8, offset: 40)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2038, file: !2037, line: 201, baseType: !2045, size: 16, offset: 48)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2037, line: 17, baseType: !253)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2038, file: !2037, line: 202, baseType: !2047, size: 64, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2037, line: 16, baseType: !171)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2038, file: !2037, line: 203, baseType: !2049, size: 64, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2037, line: 22, baseType: !171)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2032, file: !15, line: 380, baseType: !7, size: 32, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2032, file: !15, line: 381, baseType: !353, size: 64, offset: 128)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2032, file: !15, line: 382, baseType: !353, size: 64, offset: 192)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !850, file: !15, line: 477, baseType: !2032, size: 256, offset: 7168)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !850, file: !15, line: 480, baseType: !2055, size: 64, offset: 7424)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !15, line: 480, flags: DIFlagFwdDecl)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !850, file: !15, line: 483, baseType: !2058, size: 64, offset: 7488)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !15, line: 483, flags: DIFlagFwdDecl)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !850, file: !15, line: 488, baseType: !353, size: 64, offset: 7552)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !850, file: !15, line: 492, baseType: !122, size: 64, offset: 7616)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !850, file: !15, line: 493, baseType: !7, size: 32, offset: 7680)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !850, file: !15, line: 495, baseType: !122, size: 64, offset: 7744)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !850, file: !15, line: 496, baseType: !7, size: 32, offset: 7808)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !850, file: !15, line: 499, baseType: !7, size: 32, offset: 7840)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !850, file: !15, line: 500, baseType: !2067, size: 64, offset: 7872)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2069, line: 45, baseType: !2070)
!2069 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !850, file: !15, line: 503, baseType: !7, size: 32, offset: 7936)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !850, file: !15, line: 504, baseType: !2073, size: 64, offset: 8000)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2076, line: 96, size: 192, elements: !2077)
!2076 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2077 = !{!2078, !2079, !2133, !2136}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2075, file: !2076, line: 97, baseType: !7, size: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2075, file: !2076, line: 98, baseType: !2080, size: 64, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2076, line: 24, size: 3072, elements: !2082)
!2082 = !{!2083, !2085, !2086, !2087, !2088, !2102, !2103, !2104, !2105, !2117, !2118, !2119, !2130, !2131, !2132}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2081, file: !2076, line: 26, baseType: !2084, size: 128)
!2084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 128, elements: !1996)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2081, file: !2076, line: 27, baseType: !2084, size: 128, offset: 128)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2081, file: !2076, line: 28, baseType: !192, size: 32, offset: 256)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2081, file: !2076, line: 31, baseType: !272, size: 32, align: 512, offset: 512)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2081, file: !2076, line: 32, baseType: !2089, size: 960, offset: 576)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2090, line: 206, size: 960, elements: !2091)
!2090 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2091 = !{!2092, !2093, !2096, !2098, !2099, !2101}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2089, file: !2090, line: 207, baseType: !465, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2089, file: !2090, line: 208, baseType: !2094, size: 256, offset: 64)
!2094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2095, size: 256, elements: !360)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2089, file: !2090, line: 209, baseType: !2097, size: 256, offset: 320)
!2097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 256, elements: !360)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2089, file: !2090, line: 213, baseType: !720, size: 64, offset: 576)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2089, file: !2090, line: 215, baseType: !2100, size: 256, offset: 640)
!2100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, size: 256, elements: !360)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2089, file: !2090, line: 216, baseType: !245, size: 8, offset: 896)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2081, file: !2076, line: 33, baseType: !212, size: 64, offset: 1536)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2081, file: !2076, line: 34, baseType: !212, size: 64, offset: 1600)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2081, file: !2076, line: 35, baseType: !388, size: 8, offset: 1664)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2081, file: !2076, line: 36, baseType: !2106, size: 320, offset: 1728)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2107, line: 11, size: 320, elements: !2108)
!2107 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2108 = !{!2109, !2110, !2111, !2116}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2106, file: !2107, line: 16, baseType: !517, size: 128)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2106, file: !2107, line: 17, baseType: !212, size: 64, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2106, file: !2107, line: 18, baseType: !2112, size: 64, offset: 192)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{null, !2115}
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2106, file: !2107, line: 19, baseType: !300, size: 32, offset: 256)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2081, file: !2076, line: 37, baseType: !1289, size: 256, offset: 2048)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2081, file: !2076, line: 38, baseType: !462, size: 128, align: 64, offset: 2304)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2081, file: !2076, line: 39, baseType: !2120, size: 64, offset: 2432)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2076, line: 49, size: 768, elements: !2122)
!2122 = !{!2123, !2124, !2125, !2126, !2127, !2128, !2129}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2121, file: !2076, line: 50, baseType: !272, size: 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2121, file: !2076, line: 51, baseType: !2097, size: 256, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2121, file: !2076, line: 53, baseType: !2097, size: 256, offset: 320)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2121, file: !2076, line: 54, baseType: !212, size: 64, offset: 576)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2121, file: !2076, line: 55, baseType: !2120, size: 64, offset: 640)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2121, file: !2076, line: 56, baseType: !192, size: 32, offset: 704)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2121, file: !2076, line: 57, baseType: !192, size: 32, offset: 736)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2081, file: !2076, line: 40, baseType: !212, size: 64, offset: 2496)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2081, file: !2076, line: 42, baseType: !192, size: 32, offset: 2560)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2081, file: !2076, line: 43, baseType: !2074, size: 64, offset: 2624)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2075, file: !2076, line: 99, baseType: !2134, offset: 128)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2135, line: 211, elements: !1147)
!2135 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2075, file: !2076, line: 100, baseType: !2137, size: 64, offset: 128)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2076, line: 63, size: 3008, elements: !2139)
!2139 = !{!2140, !2141, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2171}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2138, file: !2076, line: 64, baseType: !2120, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2138, file: !2076, line: 65, baseType: !2142, size: 192, offset: 64)
!2142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2120, size: 192, elements: !501)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2138, file: !2076, line: 67, baseType: !192, size: 32, offset: 256)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2138, file: !2076, line: 68, baseType: !264, size: 256, offset: 320)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2138, file: !2076, line: 69, baseType: !272, size: 32, offset: 576)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2138, file: !2076, line: 70, baseType: !264, size: 256, offset: 640)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2138, file: !2076, line: 71, baseType: !212, size: 64, offset: 896)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2138, file: !2076, line: 72, baseType: !212, size: 64, offset: 960)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2138, file: !2076, line: 73, baseType: !212, size: 64, offset: 1024)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2138, file: !2076, line: 74, baseType: !212, size: 64, offset: 1088)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2138, file: !2076, line: 75, baseType: !212, size: 64, offset: 1152)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2138, file: !2076, line: 76, baseType: !212, size: 64, offset: 1216)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2138, file: !2076, line: 77, baseType: !212, size: 64, offset: 1280)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2138, file: !2076, line: 78, baseType: !212, size: 64, offset: 1344)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2138, file: !2076, line: 79, baseType: !388, size: 8, offset: 1408)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2138, file: !2076, line: 80, baseType: !212, size: 64, offset: 1472)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2138, file: !2076, line: 81, baseType: !264, size: 256, offset: 1536)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2138, file: !2076, line: 82, baseType: !1078, size: 256, offset: 1792)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2138, file: !2076, line: 84, baseType: !188, size: 32, offset: 2048)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2138, file: !2076, line: 87, baseType: !212, size: 64, offset: 2112)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2138, file: !2076, line: 88, baseType: !212, size: 64, offset: 2176)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2138, file: !2076, line: 89, baseType: !2163, size: 704, offset: 2240)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1290, line: 111, size: 704, elements: !2164)
!2164 = !{!2165, !2166, !2167, !2170}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2163, file: !1290, line: 112, baseType: !1289, size: 256)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2163, file: !1290, line: 113, baseType: !2106, size: 320, offset: 256)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2163, file: !1290, line: 116, baseType: !2168, size: 64, offset: 576)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1290, line: 18, flags: DIFlagFwdDecl)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2163, file: !1290, line: 117, baseType: !192, size: 32, offset: 640)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2138, file: !2076, line: 90, baseType: !2074, size: 64, offset: 2944)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !850, file: !15, line: 515, baseType: !2173, size: 64, offset: 8064)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2175, line: 117, size: 128, elements: !2176)
!2175 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2176 = !{!2177, !2178, !2179}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2174, file: !2175, line: 118, baseType: !196, size: 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2174, file: !2175, line: 119, baseType: !196, size: 32, offset: 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2174, file: !2175, line: 120, baseType: !720, size: 64, offset: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !850, file: !15, line: 516, baseType: !7, size: 32, offset: 8128)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !850, file: !15, line: 519, baseType: !7, size: 32, offset: 8160)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !850, file: !15, line: 520, baseType: !2183, size: 64, offset: 8192)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !850, file: !15, line: 523, baseType: !2185, size: 64, offset: 8256)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !15, line: 523, flags: DIFlagFwdDecl)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !850, file: !15, line: 524, baseType: !7, size: 32, offset: 8320)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !850, file: !15, line: 525, baseType: !2190, size: 64, offset: 8384)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !15, line: 525, flags: DIFlagFwdDecl)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !850, file: !15, line: 526, baseType: !7, size: 32, offset: 8448)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !850, file: !15, line: 533, baseType: !122, size: 64, offset: 8512)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !850, file: !15, line: 534, baseType: !7, size: 32, offset: 8576)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !850, file: !15, line: 535, baseType: !2197, size: 64, offset: 8640)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !850, file: !15, line: 536, baseType: !7, size: 32, offset: 8704)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !850, file: !15, line: 539, baseType: !192, size: 32, offset: 8736)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !850, file: !15, line: 540, baseType: !2201, size: 64, offset: 8768)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2203, line: 32, size: 64, elements: !2204)
!2203 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2204 = !{!2205, !2206}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2202, file: !2203, line: 33, baseType: !196, size: 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2202, file: !2203, line: 34, baseType: !196, size: 32, offset: 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !850, file: !15, line: 563, baseType: !202, size: 128, offset: 8832)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !850, file: !15, line: 565, baseType: !202, size: 128, offset: 8960)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !850, file: !15, line: 568, baseType: !2210, size: 64, offset: 9088)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{null}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !850, file: !15, line: 570, baseType: !188, size: 32, offset: 9152)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !826, file: !59, line: 2382, baseType: !825, size: 64, offset: 448)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !826, file: !59, line: 2383, baseType: !513, size: 64, offset: 512)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !826, file: !59, line: 2385, baseType: !2217, offset: 576)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2135, line: 206, elements: !1147)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !826, file: !59, line: 2386, baseType: !2217, offset: 576)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !826, file: !59, line: 2387, baseType: !2217, offset: 576)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !826, file: !59, line: 2388, baseType: !2221, offset: 576)
!2221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2217, elements: !501)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !826, file: !59, line: 2390, baseType: !2217, offset: 576)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !826, file: !59, line: 2391, baseType: !2217, offset: 576)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !826, file: !59, line: 2392, baseType: !2217, offset: 576)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !826, file: !59, line: 2393, baseType: !2217, offset: 576)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !817, file: !59, line: 1197, baseType: !2227, size: 64, offset: 384)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2229)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !59, line: 2057, size: 1664, elements: !2230)
!2230 = !{!2231, !2235, !2239, !2240, !2244, !2248, !2252, !2253, !2254, !2258, !2262, !2266, !2267, !2268, !2274, !2278, !2279, !2283, !2284, !2285, !2286, !2290, !2294, !2341, !2356, !2357}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2229, file: !59, line: 2058, baseType: !2232, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!605, !816}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2229, file: !59, line: 2059, baseType: !2236, size: 64, offset: 64)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{null, !605}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2229, file: !59, line: 2060, baseType: !2236, size: 64, offset: 128)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2229, file: !59, line: 2062, baseType: !2241, size: 64, offset: 192)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{null, !605, !192}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2229, file: !59, line: 2063, baseType: !2245, size: 64, offset: 256)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!192, !605, !1465}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2229, file: !59, line: 2064, baseType: !2249, size: 64, offset: 320)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!192, !605}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2229, file: !59, line: 2065, baseType: !2236, size: 64, offset: 384)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2229, file: !59, line: 2066, baseType: !845, size: 64, offset: 448)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2229, file: !59, line: 2067, baseType: !2255, size: 64, offset: 512)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!192, !816, !192}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2229, file: !59, line: 2068, baseType: !2259, size: 64, offset: 576)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!192, !816, !58}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2229, file: !59, line: 2069, baseType: !2263, size: 64, offset: 640)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!192, !816}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2229, file: !59, line: 2070, baseType: !2259, size: 64, offset: 704)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2229, file: !59, line: 2071, baseType: !2263, size: 64, offset: 768)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2229, file: !59, line: 2072, baseType: !2269, size: 64, offset: 832)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!192, !565, !2272}
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !59, line: 62, flags: DIFlagFwdDecl)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2229, file: !59, line: 2073, baseType: !2275, size: 64, offset: 896)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!192, !816, !2006, !353}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2229, file: !59, line: 2074, baseType: !845, size: 64, offset: 960)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2229, file: !59, line: 2076, baseType: !2280, size: 64, offset: 1024)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!192, !410, !565}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2229, file: !59, line: 2077, baseType: !2280, size: 64, offset: 1088)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2229, file: !59, line: 2078, baseType: !2280, size: 64, offset: 1152)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2229, file: !59, line: 2079, baseType: !2280, size: 64, offset: 1216)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2229, file: !59, line: 2081, baseType: !2287, size: 64, offset: 1280)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!760, !816, !192, !353, !336, !420}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2229, file: !59, line: 2082, baseType: !2291, size: 64, offset: 1344)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!760, !816, !192, !333, !336, !420}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2229, file: !59, line: 2083, baseType: !2295, size: 64, offset: 1408)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!2298, !605}
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !64, line: 296, size: 1664, elements: !2301)
!2301 = !{!2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2326, !2327, !2328}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2300, file: !64, line: 297, baseType: !517, size: 128)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2300, file: !64, line: 298, baseType: !202, size: 128, offset: 128)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2300, file: !64, line: 299, baseType: !202, size: 128, offset: 256)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2300, file: !64, line: 300, baseType: !202, size: 128, offset: 384)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2300, file: !64, line: 301, baseType: !264, size: 256, offset: 512)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2300, file: !64, line: 302, baseType: !272, size: 32, offset: 768)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2300, file: !64, line: 303, baseType: !188, size: 32, offset: 800)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2300, file: !64, line: 304, baseType: !816, size: 64, offset: 832)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2300, file: !64, line: 305, baseType: !2311, size: 64, offset: 896)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !64, line: 68, size: 64, elements: !2312)
!2312 = !{!2313, !2325}
!2313 = !DIDerivedType(tag: DW_TAG_member, scope: !2311, file: !64, line: 69, baseType: !2314, size: 32)
!2314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2311, file: !64, line: 69, size: 32, elements: !2315)
!2315 = !{!2316, !2317, !2318}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2314, file: !64, line: 70, baseType: !142, size: 32)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2314, file: !64, line: 71, baseType: !151, size: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2314, file: !64, line: 72, baseType: !2319, size: 32)
!2319 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2320, line: 24, baseType: !2321)
!2320 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2320, line: 22, size: 32, elements: !2322)
!2322 = !{!2323}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2321, file: !2320, line: 23, baseType: !2324, size: 32)
!2324 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2320, line: 20, baseType: !148)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2311, file: !64, line: 74, baseType: !63, size: 32, offset: 32)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2300, file: !64, line: 306, baseType: !420, size: 64, offset: 960)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2300, file: !64, line: 307, baseType: !212, size: 64, offset: 1024)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2300, file: !64, line: 308, baseType: !2329, size: 576, offset: 1088)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !64, line: 205, size: 576, elements: !2330)
!2330 = !{!2331, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2329, file: !64, line: 206, baseType: !2332, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !64, line: 66, baseType: !140)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2329, file: !64, line: 207, baseType: !2332, size: 64, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2329, file: !64, line: 208, baseType: !2332, size: 64, offset: 128)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2329, file: !64, line: 209, baseType: !2332, size: 64, offset: 192)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2329, file: !64, line: 210, baseType: !2332, size: 64, offset: 256)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2329, file: !64, line: 211, baseType: !2332, size: 64, offset: 320)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2329, file: !64, line: 212, baseType: !2332, size: 64, offset: 384)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2329, file: !64, line: 213, baseType: !291, size: 64, offset: 448)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2329, file: !64, line: 214, baseType: !291, size: 64, offset: 512)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2229, file: !59, line: 2085, baseType: !2342, size: 64, offset: 1472)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!720, !816, !2345}
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2347, line: 15, size: 256, elements: !2348)
!2347 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2348 = !{!2349, !2350, !2351, !2352, !2353}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2346, file: !2347, line: 16, baseType: !812, size: 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2346, file: !2347, line: 19, baseType: !192, size: 32, offset: 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2346, file: !2347, line: 26, baseType: !212, size: 64, offset: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2346, file: !2347, line: 33, baseType: !212, size: 64, offset: 128)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2346, file: !2347, line: 36, baseType: !2354, size: 64, offset: 192)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !30, line: 33, flags: DIFlagFwdDecl)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2229, file: !59, line: 2087, baseType: !2342, size: 64, offset: 1536)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2229, file: !59, line: 2089, baseType: !845, size: 64, offset: 1600)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !817, file: !59, line: 1198, baseType: !2359, size: 64, offset: 448)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2361)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !64, line: 324, size: 704, elements: !2362)
!2362 = !{!2363, !2367, !2371, !2375, !2376, !2377, !2378, !2379, !2384, !2389, !2393}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2361, file: !64, line: 325, baseType: !2364, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!192, !2299}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2361, file: !64, line: 326, baseType: !2368, size: 64, offset: 64)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!2299, !816, !192}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2361, file: !64, line: 327, baseType: !2372, size: 64, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{null, !2299}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2361, file: !64, line: 328, baseType: !2364, size: 64, offset: 192)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2361, file: !64, line: 329, baseType: !2364, size: 64, offset: 256)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2361, file: !64, line: 330, baseType: !2364, size: 64, offset: 320)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2361, file: !64, line: 331, baseType: !2255, size: 64, offset: 384)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2361, file: !64, line: 334, baseType: !2380, size: 64, offset: 448)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!2383, !605}
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2361, file: !64, line: 335, baseType: !2385, size: 64, offset: 512)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!192, !605, !2388}
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2361, file: !64, line: 337, baseType: !2390, size: 64, offset: 576)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!192, !605, !2383}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2361, file: !64, line: 339, baseType: !2394, size: 64, offset: 640)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!192, !816, !2397}
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !817, file: !59, line: 1199, baseType: !2399, size: 64, offset: 512)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2401)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !64, line: 430, size: 704, elements: !2402)
!2402 = !{!2403, !2407, !2408, !2412, !2413, !2414, !2429, !2452, !2456, !2457, !2480}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2401, file: !64, line: 431, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!192, !816, !192, !192, !729}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2401, file: !64, line: 432, baseType: !2255, size: 64, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2401, file: !64, line: 433, baseType: !2409, size: 64, offset: 128)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!192, !816, !7}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2401, file: !64, line: 434, baseType: !2409, size: 64, offset: 192)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2401, file: !64, line: 435, baseType: !2255, size: 64, offset: 256)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2401, file: !64, line: 436, baseType: !2415, size: 64, offset: 320)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!192, !816, !192, !2418}
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !64, line: 417, size: 256, elements: !2420)
!2420 = !{!2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2419, file: !64, line: 418, baseType: !192, size: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2419, file: !64, line: 419, baseType: !7, size: 32, offset: 32)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2419, file: !64, line: 420, baseType: !7, size: 32, offset: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2419, file: !64, line: 422, baseType: !7, size: 32, offset: 96)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2419, file: !64, line: 423, baseType: !7, size: 32, offset: 128)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2419, file: !64, line: 424, baseType: !7, size: 32, offset: 160)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2419, file: !64, line: 425, baseType: !7, size: 32, offset: 192)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2419, file: !64, line: 426, baseType: !7, size: 32, offset: 224)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2401, file: !64, line: 437, baseType: !2430, size: 64, offset: 384)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!192, !816, !2311, !2433}
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !64, line: 345, size: 960, elements: !2435)
!2435 = !{!2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2434, file: !64, line: 346, baseType: !192, size: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2434, file: !64, line: 347, baseType: !170, size: 64, offset: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2434, file: !64, line: 348, baseType: !170, size: 64, offset: 128)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2434, file: !64, line: 349, baseType: !170, size: 64, offset: 192)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2434, file: !64, line: 350, baseType: !170, size: 64, offset: 256)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2434, file: !64, line: 351, baseType: !170, size: 64, offset: 320)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2434, file: !64, line: 352, baseType: !170, size: 64, offset: 384)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2434, file: !64, line: 353, baseType: !136, size: 64, offset: 448)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2434, file: !64, line: 355, baseType: !136, size: 64, offset: 512)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2434, file: !64, line: 356, baseType: !192, size: 32, offset: 576)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2434, file: !64, line: 357, baseType: !192, size: 32, offset: 608)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2434, file: !64, line: 358, baseType: !170, size: 64, offset: 640)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2434, file: !64, line: 359, baseType: !170, size: 64, offset: 704)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2434, file: !64, line: 360, baseType: !170, size: 64, offset: 768)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2434, file: !64, line: 361, baseType: !136, size: 64, offset: 832)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2434, file: !64, line: 362, baseType: !192, size: 32, offset: 896)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2401, file: !64, line: 438, baseType: !2453, size: 64, offset: 448)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!192, !816, !2397, !2433}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2401, file: !64, line: 440, baseType: !2430, size: 64, offset: 512)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2401, file: !64, line: 441, baseType: !2458, size: 64, offset: 576)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!192, !816, !2461}
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !64, line: 411, size: 1408, elements: !2463)
!2463 = !{!2464, !2465}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2462, file: !64, line: 412, baseType: !7, size: 32)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2462, file: !64, line: 413, baseType: !2466, size: 1344, offset: 64)
!2466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2467, size: 1344, elements: !501)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !64, line: 397, size: 448, elements: !2468)
!2468 = !{!2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2479}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2467, file: !64, line: 398, baseType: !7, size: 32)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2467, file: !64, line: 399, baseType: !7, size: 32, offset: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2467, file: !64, line: 401, baseType: !7, size: 32, offset: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2467, file: !64, line: 402, baseType: !7, size: 32, offset: 96)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2467, file: !64, line: 403, baseType: !7, size: 32, offset: 128)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2467, file: !64, line: 404, baseType: !7, size: 32, offset: 160)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2467, file: !64, line: 405, baseType: !7, size: 32, offset: 192)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2467, file: !64, line: 406, baseType: !172, size: 64, offset: 256)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2467, file: !64, line: 407, baseType: !2478, size: 64, offset: 320)
!2478 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !132, line: 132, baseType: !170)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2467, file: !64, line: 408, baseType: !2478, size: 64, offset: 384)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2401, file: !64, line: 442, baseType: !2409, size: 64, offset: 640)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !817, file: !59, line: 1200, baseType: !2482, size: 64, offset: 576)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2484)
!2484 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !59, line: 54, flags: DIFlagFwdDecl)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !817, file: !59, line: 1201, baseType: !212, size: 64, offset: 640)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !817, file: !59, line: 1202, baseType: !212, size: 64, offset: 704)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !817, file: !59, line: 1203, baseType: !212, size: 64, offset: 768)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !817, file: !59, line: 1204, baseType: !565, size: 64, offset: 832)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !817, file: !59, line: 1205, baseType: !217, size: 320, offset: 896)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !817, file: !59, line: 1206, baseType: !192, size: 32, offset: 1216)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !817, file: !59, line: 1207, baseType: !188, size: 32, offset: 1248)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !817, file: !59, line: 1209, baseType: !122, size: 64, offset: 1280)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !817, file: !59, line: 1211, baseType: !2494, size: 64, offset: 1344)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2497)
!2497 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !59, line: 1211, flags: DIFlagFwdDecl)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !817, file: !59, line: 1223, baseType: !2499, size: 64, offset: 1408)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !582, line: 34, size: 64, elements: !2500)
!2500 = !{!2501}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2499, file: !582, line: 35, baseType: !585, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !817, file: !59, line: 1224, baseType: !202, size: 128, offset: 1472)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !817, file: !59, line: 1225, baseType: !2504, size: 64, offset: 1600)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !59, line: 1225, flags: DIFlagFwdDecl)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !817, file: !59, line: 1226, baseType: !2507, size: 64, offset: 1664)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !59, line: 1226, flags: DIFlagFwdDecl)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !817, file: !59, line: 1227, baseType: !2510, size: 64, offset: 1728)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !59, line: 50, flags: DIFlagFwdDecl)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !817, file: !59, line: 1228, baseType: !2513, size: 64, offset: 1792)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !59, line: 1228, flags: DIFlagFwdDecl)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !817, file: !59, line: 1229, baseType: !517, size: 128, offset: 1856)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !817, file: !59, line: 1230, baseType: !7, size: 32, offset: 1984)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !817, file: !59, line: 1231, baseType: !2518, size: 2496, offset: 2048)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !64, line: 521, size: 2496, elements: !2519)
!2519 = !{!2520, !2521, !2522, !2524, !2556}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2518, file: !64, line: 522, baseType: !7, size: 32)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2518, file: !64, line: 523, baseType: !217, size: 320, offset: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2518, file: !64, line: 524, baseType: !2523, size: 192, offset: 384)
!2523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 192, elements: !501)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2518, file: !64, line: 525, baseType: !2525, size: 1728, offset: 576)
!2525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2526, size: 1728, elements: !501)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !64, line: 222, size: 576, elements: !2527)
!2527 = !{!2528, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2526, file: !64, line: 223, baseType: !2529, size: 64)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !64, line: 445, size: 256, elements: !2531)
!2531 = !{!2532, !2533, !2546, !2547}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2530, file: !64, line: 446, baseType: !192, size: 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2530, file: !64, line: 447, baseType: !2534, size: 64, offset: 64)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2536)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !64, line: 312, size: 512, elements: !2537)
!2537 = !{!2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2536, file: !64, line: 313, baseType: !2255, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2536, file: !64, line: 314, baseType: !2255, size: 64, offset: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2536, file: !64, line: 315, baseType: !2255, size: 64, offset: 128)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2536, file: !64, line: 316, baseType: !2255, size: 64, offset: 192)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2536, file: !64, line: 317, baseType: !2364, size: 64, offset: 256)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2536, file: !64, line: 318, baseType: !2364, size: 64, offset: 320)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2536, file: !64, line: 319, baseType: !2364, size: 64, offset: 384)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2536, file: !64, line: 320, baseType: !2394, size: 64, offset: 448)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2530, file: !64, line: 448, baseType: !849, size: 64, offset: 128)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2530, file: !64, line: 449, baseType: !2529, size: 64, offset: 192)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2526, file: !64, line: 224, baseType: !192, size: 32, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2526, file: !64, line: 226, baseType: !202, size: 128, offset: 128)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2526, file: !64, line: 227, baseType: !212, size: 64, offset: 256)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2526, file: !64, line: 228, baseType: !7, size: 32, offset: 320)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2526, file: !64, line: 229, baseType: !7, size: 32, offset: 352)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2526, file: !64, line: 230, baseType: !2332, size: 64, offset: 384)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2526, file: !64, line: 231, baseType: !2332, size: 64, offset: 448)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2526, file: !64, line: 232, baseType: !122, size: 64, offset: 512)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2518, file: !64, line: 526, baseType: !2557, size: 192, offset: 2304)
!2557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2534, size: 192, elements: !501)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !817, file: !59, line: 1233, baseType: !2559, size: 2368, offset: 4544)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !59, line: 1184, size: 2368, elements: !2560)
!2560 = !{!2561, !2562, !2563}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2559, file: !59, line: 1185, baseType: !254, size: 16)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2559, file: !59, line: 1186, baseType: !254, size: 16, offset: 16)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2559, file: !59, line: 1187, baseType: !2564, size: 2304, offset: 64)
!2564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2565, size: 2304, elements: !501)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2566, line: 12, size: 768, elements: !2567)
!2566 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2567 = !{!2568, !2576, !2577, !3782, !3783}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2565, file: !2566, line: 13, baseType: !2569, size: 384)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2570, line: 17, size: 384, elements: !2571)
!2570 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2571 = !{!2572, !2573, !2574, !2575}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2569, file: !2570, line: 18, baseType: !192, size: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2569, file: !2570, line: 19, baseType: !192, size: 32, offset: 32)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2569, file: !2570, line: 20, baseType: !524, size: 192, offset: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2569, file: !2570, line: 22, baseType: !462, size: 128, align: 64, offset: 256)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2565, file: !2566, line: 14, baseType: !1958, size: 64, offset: 384)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2565, file: !2566, line: 15, baseType: !2578, size: 64, offset: 448)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2579, line: 16, size: 64, elements: !2580)
!2579 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2580 = !{!2581}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2578, file: !2579, line: 17, baseType: !2582, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1382, line: 746, size: 58368, elements: !2584)
!2584 = !{!2585, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2665, !2676, !2764, !2768, !2771, !2802, !2803, !2804, !2805, !2816, !2818, !2819, !2820, !2821, !2822, !2823, !2834, !2835, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2852, !2853, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2941, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2989, !2995, !2996, !2997, !2998, !2999, !3003, !3006, !3013, !3018, !3021, !3024, !3027, !3030, !3169, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3207, !3208, !3209, !3218, !3226, !3227, !3228, !3229, !3230, !3235, !3236, !3237, !3240, !3241, !3244, !3247, !3250, !3258, !3261, !3262, !3348, !3349, !3350, !3351, !3352, !3358, !3359, !3360, !3361, !3364, !3365, !3368, !3382, !3383, !3386, !3387, !3388, !3391, !3392, !3393, !3394, !3395, !3396, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3428, !3431, !3437, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3449, !3521, !3523, !3524, !3525, !3526, !3527, !3528, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3557, !3558, !3559}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2583, file: !1382, line: 752, baseType: !2586, size: 192)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2587, line: 56, size: 192, elements: !2588)
!2587 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2588 = !{!2589, !2590, !2591, !2592}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2586, file: !2587, line: 57, baseType: !212, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2586, file: !2587, line: 58, baseType: !212, size: 64, offset: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2586, file: !2587, line: 59, baseType: !300, size: 32, offset: 128)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2586, file: !2587, line: 61, baseType: !300, size: 32, offset: 160)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2583, file: !1382, line: 754, baseType: !7, size: 32, offset: 192)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2583, file: !1382, line: 767, baseType: !122, size: 64, offset: 256)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2583, file: !1382, line: 768, baseType: !184, size: 32, offset: 320)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2583, file: !1382, line: 770, baseType: !7, size: 32, offset: 352)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2583, file: !1382, line: 771, baseType: !7, size: 32, offset: 384)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2583, file: !1382, line: 774, baseType: !192, size: 32, offset: 416)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2583, file: !1382, line: 775, baseType: !2600, size: 128, offset: 448)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2601, line: 58, size: 128, elements: !2602)
!2601 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2602 = !{!2603, !2604, !2609, !2610}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2600, file: !2601, line: 59, baseType: !456, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, scope: !2600, file: !2601, line: 60, baseType: !2605, size: 32, offset: 64)
!2605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2600, file: !2601, line: 60, size: 32, elements: !2606)
!2606 = !{!2607, !2608}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2605, file: !2601, line: 61, baseType: !7, size: 32)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2605, file: !2601, line: 62, baseType: !188, size: 32)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2600, file: !2601, line: 65, baseType: !252, size: 16, offset: 96)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2600, file: !2601, line: 65, baseType: !252, size: 16, offset: 112)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2583, file: !1382, line: 776, baseType: !7, size: 32, offset: 576)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2583, file: !1382, line: 777, baseType: !212, size: 64, offset: 640)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2583, file: !1382, line: 778, baseType: !2582, size: 64, offset: 704)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2583, file: !1382, line: 787, baseType: !192, size: 32, offset: 768)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2583, file: !1382, line: 788, baseType: !192, size: 32, offset: 800)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2583, file: !1382, line: 790, baseType: !192, size: 32, offset: 832)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2583, file: !1382, line: 792, baseType: !192, size: 32, offset: 864)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2583, file: !1382, line: 793, baseType: !192, size: 32, offset: 896)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2583, file: !1382, line: 794, baseType: !192, size: 32, offset: 928)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2583, file: !1382, line: 795, baseType: !7, size: 32, offset: 960)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2583, file: !1382, line: 797, baseType: !2622, size: 2048, offset: 1024)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1382, line: 551, size: 2048, elements: !2623)
!2623 = !{!2624, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2644, !2647, !2648, !2649}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2622, file: !1382, line: 553, baseType: !2625, size: 128)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1382, line: 411, size: 128, elements: !2626)
!2626 = !{!2627, !2628}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2625, file: !1382, line: 412, baseType: !212, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2625, file: !1382, line: 413, baseType: !300, size: 32, offset: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2622, file: !1382, line: 554, baseType: !208, size: 192, align: 64, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2622, file: !1382, line: 555, baseType: !170, size: 64, offset: 320)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2622, file: !1382, line: 556, baseType: !170, size: 64, offset: 384)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2622, file: !1382, line: 558, baseType: !202, size: 128, offset: 448)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2622, file: !1382, line: 559, baseType: !7, size: 32, offset: 576)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2622, file: !1382, line: 561, baseType: !170, size: 64, offset: 640)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2622, file: !1382, line: 562, baseType: !170, size: 64, offset: 704)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2622, file: !1382, line: 563, baseType: !170, size: 64, offset: 768)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2622, file: !1382, line: 564, baseType: !170, size: 64, offset: 832)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2622, file: !1382, line: 565, baseType: !136, size: 64, offset: 896)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2622, file: !1382, line: 566, baseType: !170, size: 64, offset: 960)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2622, file: !1382, line: 568, baseType: !170, size: 64, offset: 1024)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2622, file: !1382, line: 571, baseType: !192, size: 32, offset: 1088)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2622, file: !1382, line: 572, baseType: !2643, size: 64, offset: 1152)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2622, file: !1382, line: 574, baseType: !2645, size: 64, offset: 1216)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1382, line: 49, flags: DIFlagFwdDecl)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2622, file: !1382, line: 576, baseType: !2645, size: 64, offset: 1280)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2622, file: !1382, line: 578, baseType: !212, size: 64, offset: 1344)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2622, file: !1382, line: 588, baseType: !2650, size: 512, align: 512, offset: 1536)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1382, line: 497, size: 512, align: 512, elements: !2651)
!2651 = !{!2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2650, file: !1382, line: 498, baseType: !170, size: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2650, file: !1382, line: 499, baseType: !170, size: 64, offset: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2650, file: !1382, line: 500, baseType: !170, size: 64, offset: 128)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2650, file: !1382, line: 501, baseType: !300, size: 32, offset: 192)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2650, file: !1382, line: 502, baseType: !300, size: 32, offset: 224)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2650, file: !1382, line: 503, baseType: !212, size: 64, offset: 256)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2650, file: !1382, line: 504, baseType: !212, size: 64, offset: 320)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2650, file: !1382, line: 505, baseType: !212, size: 64, offset: 384)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2650, file: !1382, line: 506, baseType: !2661, size: 64, align: 64, offset: 448)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1382, line: 445, size: 64, align: 64, elements: !2662)
!2662 = !{!2663, !2664}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2661, file: !1382, line: 446, baseType: !7, size: 32)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2661, file: !1382, line: 447, baseType: !7, size: 32, offset: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2583, file: !1382, line: 798, baseType: !2666, size: 384, offset: 3072)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1382, line: 592, size: 384, elements: !2667)
!2667 = !{!2668, !2669, !2670, !2671, !2672, !2673, !2674}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2666, file: !1382, line: 593, baseType: !202, size: 128)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2666, file: !1382, line: 594, baseType: !212, size: 64, offset: 128)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2666, file: !1382, line: 595, baseType: !212, size: 64, offset: 192)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2666, file: !1382, line: 596, baseType: !7, size: 32, offset: 256)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2666, file: !1382, line: 597, baseType: !254, size: 16, offset: 288)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2666, file: !1382, line: 598, baseType: !254, size: 16, offset: 304)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2666, file: !1382, line: 600, baseType: !2675, size: 64, offset: 320)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2583, file: !1382, line: 799, baseType: !2677, size: 1792, offset: 3456)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1382, line: 610, size: 1792, elements: !2678)
!2678 = !{!2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2761, !2762}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2677, file: !1382, line: 611, baseType: !208, size: 192, align: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2677, file: !1382, line: 618, baseType: !170, size: 64, offset: 192)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2677, file: !1382, line: 619, baseType: !170, size: 64, offset: 256)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2677, file: !1382, line: 620, baseType: !170, size: 64, offset: 320)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2677, file: !1382, line: 621, baseType: !170, size: 64, offset: 384)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2677, file: !1382, line: 622, baseType: !170, size: 64, offset: 448)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2677, file: !1382, line: 629, baseType: !136, size: 64, offset: 512)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2677, file: !1382, line: 630, baseType: !170, size: 64, offset: 576)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2677, file: !1382, line: 631, baseType: !7, size: 32, offset: 640)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2677, file: !1382, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2677, file: !1382, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2677, file: !1382, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2677, file: !1382, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2677, file: !1382, line: 662, baseType: !2693, size: 512, offset: 704)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !70, line: 118, size: 512, elements: !2694)
!2694 = !{!2695, !2703, !2704, !2709, !2757, !2758, !2759, !2760}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2693, file: !70, line: 119, baseType: !2696, size: 256)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2697, line: 9, size: 256, elements: !2698)
!2697 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2698 = !{!2699, !2700}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2696, file: !2697, line: 10, baseType: !208, size: 192, align: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2696, file: !2697, line: 11, baseType: !2701, size: 64, offset: 192)
!2701 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2702, line: 29, baseType: !136)
!2702 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2693, file: !70, line: 120, baseType: !2701, size: 64, offset: 256)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2693, file: !70, line: 121, baseType: !2705, size: 64, offset: 320)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!69, !2708}
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2693, file: !70, line: 122, baseType: !2710, size: 64, offset: 384)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !70, line: 159, size: 512, align: 512, elements: !2712)
!2712 = !{!2713, !2738, !2739, !2742, !2747, !2748, !2752, !2756}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2711, file: !70, line: 160, baseType: !2714, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !70, line: 215, size: 4608, align: 512, elements: !2716)
!2716 = !{!2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2715, file: !70, line: 216, baseType: !228, size: 32)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2715, file: !70, line: 217, baseType: !7, size: 32, offset: 32)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2715, file: !70, line: 218, baseType: !7, size: 32, offset: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2715, file: !70, line: 219, baseType: !7, size: 32, offset: 96)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2715, file: !70, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2715, file: !70, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2715, file: !70, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2715, file: !70, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2715, file: !70, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2715, file: !70, line: 226, baseType: !7, size: 32, offset: 160)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2715, file: !70, line: 227, baseType: !254, size: 16, offset: 192)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2715, file: !70, line: 228, baseType: !254, size: 16, offset: 208)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2715, file: !70, line: 229, baseType: !7, size: 32, offset: 224)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2715, file: !70, line: 235, baseType: !2701, size: 64, offset: 256)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2715, file: !70, line: 236, baseType: !2708, size: 64, offset: 320)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2715, file: !70, line: 237, baseType: !2701, size: 64, offset: 384)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2715, file: !70, line: 238, baseType: !2708, size: 64, offset: 448)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2715, file: !70, line: 239, baseType: !2735, size: 4096, align: 512, offset: 512)
!2735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2711, size: 4096, align: 512, elements: !2736)
!2736 = !{!2737}
!2737 = !DISubrange(count: 8)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2711, file: !70, line: 161, baseType: !7, size: 32, offset: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2711, file: !70, line: 162, baseType: !2740, size: 32, offset: 96)
!2740 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !132, line: 32, baseType: !2741)
!2741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !149, line: 96, baseType: !192)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2711, file: !70, line: 163, baseType: !2743, size: 32, offset: 128)
!2743 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !572, line: 274, baseType: !2744)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !572, line: 274, size: 32, elements: !2745)
!2745 = !{!2746}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2744, file: !572, line: 274, baseType: !576, size: 32)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2711, file: !70, line: 164, baseType: !2708, size: 64, offset: 192)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2711, file: !70, line: 165, baseType: !2749, size: 128, offset: 256)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2697, line: 14, size: 128, elements: !2750)
!2750 = !{!2751}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2749, file: !2697, line: 15, baseType: !975, size: 128)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2711, file: !70, line: 166, baseType: !2753, size: 64, offset: 384)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!2701}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2711, file: !70, line: 167, baseType: !2701, size: 64, offset: 448)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2693, file: !70, line: 123, baseType: !245, size: 8, offset: 448)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2693, file: !70, line: 124, baseType: !245, size: 8, offset: 456)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2693, file: !70, line: 125, baseType: !245, size: 8, offset: 464)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2693, file: !70, line: 126, baseType: !245, size: 8, offset: 472)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2677, file: !1382, line: 671, baseType: !2693, size: 512, offset: 1216)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2677, file: !1382, line: 679, baseType: !2763, size: 64, offset: 1728)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2583, file: !1382, line: 800, baseType: !2765, size: 64, offset: 5248)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2767)
!2767 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1382, line: 800, flags: DIFlagFwdDecl)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2583, file: !1382, line: 809, baseType: !2769, size: 64, offset: 5312)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1382, line: 70, flags: DIFlagFwdDecl)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2583, file: !1382, line: 825, baseType: !2772, size: 2048, align: 512, offset: 5632)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1382, line: 509, size: 2048, align: 512, elements: !2773)
!2773 = !{!2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2772, file: !1382, line: 511, baseType: !170, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2772, file: !1382, line: 512, baseType: !170, size: 64, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2772, file: !1382, line: 513, baseType: !170, size: 64, offset: 128)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2772, file: !1382, line: 514, baseType: !170, size: 64, offset: 192)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2772, file: !1382, line: 515, baseType: !170, size: 64, offset: 256)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2772, file: !1382, line: 516, baseType: !170, size: 64, offset: 320)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2772, file: !1382, line: 518, baseType: !170, size: 64, offset: 384)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2772, file: !1382, line: 519, baseType: !170, size: 64, offset: 448)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2772, file: !1382, line: 520, baseType: !136, size: 64, offset: 512)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2772, file: !1382, line: 522, baseType: !170, size: 64, offset: 576)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2772, file: !1382, line: 523, baseType: !170, size: 64, offset: 640)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2772, file: !1382, line: 524, baseType: !136, size: 64, offset: 704)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2772, file: !1382, line: 526, baseType: !136, size: 64, offset: 768)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2772, file: !1382, line: 527, baseType: !170, size: 64, offset: 832)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2772, file: !1382, line: 529, baseType: !170, size: 64, offset: 896)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2772, file: !1382, line: 530, baseType: !170, size: 64, offset: 960)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2772, file: !1382, line: 531, baseType: !170, size: 64, offset: 1024)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2772, file: !1382, line: 532, baseType: !170, size: 64, offset: 1088)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2772, file: !1382, line: 533, baseType: !170, size: 64, offset: 1152)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2772, file: !1382, line: 535, baseType: !170, size: 64, offset: 1216)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2772, file: !1382, line: 536, baseType: !170, size: 64, offset: 1280)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2772, file: !1382, line: 537, baseType: !170, size: 64, offset: 1344)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2772, file: !1382, line: 538, baseType: !170, size: 64, offset: 1408)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2772, file: !1382, line: 539, baseType: !170, size: 64, offset: 1472)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2772, file: !1382, line: 540, baseType: !170, size: 64, offset: 1536)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2772, file: !1382, line: 541, baseType: !170, size: 64, offset: 1600)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2772, file: !1382, line: 542, baseType: !170, size: 64, offset: 1664)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2772, file: !1382, line: 543, baseType: !170, size: 64, offset: 1728)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2583, file: !1382, line: 833, baseType: !7, size: 32, offset: 7680)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2583, file: !1382, line: 836, baseType: !7, size: 32, offset: 7712)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2583, file: !1382, line: 837, baseType: !192, size: 32, offset: 7744)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2583, file: !1382, line: 838, baseType: !2806, size: 64, offset: 7808)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2808)
!2808 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2809, line: 19, baseType: !2810)
!2809 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2809, line: 19, size: 64, elements: !2811)
!2811 = !{!2812}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2810, file: !2809, line: 19, baseType: !2813, size: 64)
!2813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 64, elements: !2814)
!2814 = !{!2815}
!2815 = !DISubrange(count: 1)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2583, file: !1382, line: 839, baseType: !2817, size: 64, offset: 7872)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2583, file: !1382, line: 840, baseType: !2808, size: 64, offset: 7936)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2583, file: !1382, line: 841, baseType: !122, size: 64, offset: 8000)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2583, file: !1382, line: 843, baseType: !254, size: 16, offset: 8064)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2583, file: !1382, line: 845, baseType: !254, size: 16, offset: 8080)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2583, file: !1382, line: 848, baseType: !192, size: 32, offset: 8096)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2583, file: !1382, line: 849, baseType: !2824, size: 32, offset: 8128)
!2824 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1382, line: 718, size: 32, elements: !2825)
!2825 = !{!2826, !2833}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2824, file: !1382, line: 724, baseType: !2827, size: 32)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2824, file: !1382, line: 719, size: 32, elements: !2828)
!2828 = !{!2829, !2830, !2831, !2832}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2827, file: !1382, line: 720, baseType: !245, size: 8)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2827, file: !1382, line: 721, baseType: !245, size: 8, offset: 8)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2827, file: !1382, line: 722, baseType: !245, size: 8, offset: 16)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2827, file: !1382, line: 723, baseType: !245, size: 8, offset: 24)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2824, file: !1382, line: 725, baseType: !300, size: 32)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2583, file: !1382, line: 850, baseType: !202, size: 128, offset: 8192)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2583, file: !1382, line: 851, baseType: !2836, size: 64, offset: 8320)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1382, line: 60, flags: DIFlagFwdDecl)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2583, file: !1382, line: 855, baseType: !212, size: 64, offset: 8384)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2583, file: !1382, line: 856, baseType: !245, size: 8, offset: 8448)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2583, file: !1382, line: 857, baseType: !245, size: 8, offset: 8456)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2583, file: !1382, line: 858, baseType: !192, size: 32, offset: 8480)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2583, file: !1382, line: 859, baseType: !202, size: 128, offset: 8512)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2583, file: !1382, line: 860, baseType: !192, size: 32, offset: 8640)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2583, file: !1382, line: 861, baseType: !202, size: 128, offset: 8704)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2583, file: !1382, line: 873, baseType: !2846, size: 256, offset: 8832)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1382, line: 376, size: 256, elements: !2847)
!2847 = !{!2848, !2849, !2850, !2851}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2846, file: !1382, line: 381, baseType: !212, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2846, file: !1382, line: 384, baseType: !172, size: 64, offset: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2846, file: !1382, line: 389, baseType: !172, size: 64, offset: 128)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2846, file: !1382, line: 392, baseType: !172, size: 64, offset: 192)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2583, file: !1382, line: 875, baseType: !202, size: 128, offset: 9088)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2583, file: !1382, line: 877, baseType: !2854, size: 320, offset: 9216)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2855, line: 86, size: 320, elements: !2856)
!2855 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2856 = !{!2857, !2858, !2859}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2854, file: !2855, line: 87, baseType: !192, size: 32)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2854, file: !2855, line: 88, baseType: !202, size: 128, offset: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2854, file: !2855, line: 89, baseType: !202, size: 128, offset: 192)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2583, file: !1382, line: 878, baseType: !208, size: 192, align: 64, offset: 9536)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2583, file: !1382, line: 881, baseType: !1126, size: 64, offset: 9728)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2583, file: !1382, line: 882, baseType: !1126, size: 64, offset: 9792)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2583, file: !1382, line: 884, baseType: !192, size: 32, offset: 9856)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2583, file: !1382, line: 885, baseType: !192, size: 32, offset: 9888)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2583, file: !1382, line: 886, baseType: !192, size: 32, offset: 9920)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2583, file: !1382, line: 888, baseType: !192, size: 32, offset: 9952)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2583, file: !1382, line: 890, baseType: !212, size: 64, offset: 9984)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2583, file: !1382, line: 893, baseType: !7, size: 32, offset: 10048)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2583, file: !1382, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2583, file: !1382, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2583, file: !1382, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2583, file: !1382, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2583, file: !1382, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2583, file: !1382, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2583, file: !1382, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2583, file: !1382, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2583, file: !1382, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2583, file: !1382, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2583, file: !1382, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2583, file: !1382, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2583, file: !1382, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2583, file: !1382, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2583, file: !1382, line: 969, baseType: !212, size: 64, offset: 10176)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2583, file: !1382, line: 971, baseType: !2885, size: 448, offset: 10240)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !75, line: 25, size: 448, elements: !2886)
!2886 = !{!2887, !2888, !2893}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2885, file: !75, line: 26, baseType: !212, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2885, file: !75, line: 27, baseType: !2889, size: 64, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!720, !2892}
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, scope: !2885, file: !75, line: 28, baseType: !2894, size: 320, offset: 128)
!2894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2885, file: !75, line: 28, size: 320, elements: !2895)
!2895 = !{!2896, !2906, !2931}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2894, file: !75, line: 37, baseType: !2897, size: 320)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2894, file: !75, line: 30, size: 320, elements: !2898)
!2898 = !{!2899, !2901, !2902, !2903, !2904, !2905}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2897, file: !75, line: 31, baseType: !2900, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2897, file: !75, line: 32, baseType: !300, size: 32, offset: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2897, file: !75, line: 33, baseType: !300, size: 32, offset: 96)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2897, file: !75, line: 34, baseType: !300, size: 32, offset: 128)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2897, file: !75, line: 35, baseType: !170, size: 64, offset: 192)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2897, file: !75, line: 36, baseType: !2900, size: 64, offset: 256)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2894, file: !75, line: 47, baseType: !2907, size: 192)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2894, file: !75, line: 39, size: 192, elements: !2908)
!2908 = !{!2909, !2910, !2911, !2930}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2907, file: !75, line: 40, baseType: !2740, size: 32)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2907, file: !75, line: 41, baseType: !74, size: 32, offset: 32)
!2911 = !DIDerivedType(tag: DW_TAG_member, scope: !2907, file: !75, line: 42, baseType: !2912, size: 64, offset: 64)
!2912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2907, file: !75, line: 42, size: 64, elements: !2913)
!2913 = !{!2914, !2922}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2912, file: !75, line: 43, baseType: !2915, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2917, line: 7, size: 128, elements: !2918)
!2917 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2918 = !{!2919, !2921}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2916, file: !2917, line: 8, baseType: !2920, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !149, line: 93, baseType: !140)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2916, file: !2917, line: 9, baseType: !140, size: 64, offset: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2912, file: !75, line: 44, baseType: !2923, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2925, line: 7, size: 64, elements: !2926)
!2925 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2926 = !{!2927, !2929}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2924, file: !2925, line: 8, baseType: !2928, size: 32)
!2928 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2925, line: 5, baseType: !196)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2924, file: !2925, line: 9, baseType: !196, size: 32, offset: 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2907, file: !75, line: 46, baseType: !170, size: 64, offset: 128)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2894, file: !75, line: 55, baseType: !2932, size: 256)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2894, file: !75, line: 49, size: 256, elements: !2933)
!2933 = !{!2934, !2937, !2938, !2939, !2940}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2932, file: !75, line: 50, baseType: !2935, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !75, line: 14, flags: DIFlagFwdDecl)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2932, file: !75, line: 51, baseType: !192, size: 32, offset: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2932, file: !75, line: 52, baseType: !192, size: 32, offset: 96)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2932, file: !75, line: 53, baseType: !212, size: 64, offset: 128)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2932, file: !75, line: 54, baseType: !212, size: 64, offset: 192)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2583, file: !1382, line: 973, baseType: !2942, size: 32, offset: 10688)
!2942 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !132, line: 27, baseType: !2943)
!2943 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !149, line: 28, baseType: !192)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2583, file: !1382, line: 974, baseType: !2942, size: 32, offset: 10720)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2583, file: !1382, line: 978, baseType: !212, size: 64, offset: 10752)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2583, file: !1382, line: 987, baseType: !2582, size: 64, offset: 10816)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2583, file: !1382, line: 990, baseType: !2582, size: 64, offset: 10880)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2583, file: !1382, line: 995, baseType: !202, size: 128, offset: 10944)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2583, file: !1382, line: 996, baseType: !202, size: 128, offset: 11072)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2583, file: !1382, line: 997, baseType: !2582, size: 64, offset: 11200)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2583, file: !1382, line: 1005, baseType: !202, size: 128, offset: 11264)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2583, file: !1382, line: 1006, baseType: !202, size: 128, offset: 11392)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2583, file: !1382, line: 1009, baseType: !505, size: 64, offset: 11520)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2583, file: !1382, line: 1010, baseType: !2955, size: 512, offset: 11584)
!2955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 512, elements: !360)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2583, file: !1382, line: 1011, baseType: !202, size: 128, offset: 12096)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2583, file: !1382, line: 1012, baseType: !202, size: 128, offset: 12224)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2583, file: !1382, line: 1014, baseType: !1869, size: 64, offset: 12352)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2583, file: !1382, line: 1017, baseType: !2006, size: 64, offset: 12416)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2583, file: !1382, line: 1020, baseType: !2006, size: 64, offset: 12480)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2583, file: !1382, line: 1023, baseType: !122, size: 64, offset: 12544)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2583, file: !1382, line: 1025, baseType: !170, size: 64, offset: 12608)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2583, file: !1382, line: 1026, baseType: !170, size: 64, offset: 12672)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2583, file: !1382, line: 1031, baseType: !170, size: 64, offset: 12736)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2583, file: !1382, line: 1032, baseType: !2966, size: 192, offset: 12800)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1382, line: 324, size: 192, elements: !2967)
!2967 = !{!2968, !2969, !2970}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2966, file: !1382, line: 326, baseType: !170, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2966, file: !1382, line: 327, baseType: !170, size: 64, offset: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2966, file: !1382, line: 328, baseType: !228, size: 32, offset: 128)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2583, file: !1382, line: 1041, baseType: !212, size: 64, offset: 12992)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2583, file: !1382, line: 1042, baseType: !212, size: 64, offset: 13056)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2583, file: !1382, line: 1045, baseType: !170, size: 64, offset: 13120)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2583, file: !1382, line: 1048, baseType: !170, size: 64, offset: 13184)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2583, file: !1382, line: 1051, baseType: !212, size: 64, offset: 13248)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2583, file: !1382, line: 1052, baseType: !212, size: 64, offset: 13312)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2583, file: !1382, line: 1055, baseType: !2978, size: 640, offset: 13376)
!2978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2979, line: 132, size: 640, elements: !2980)
!2979 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2980 = !{!2981, !2987, !2988}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2978, file: !2979, line: 133, baseType: !2982, size: 576)
!2982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2983, size: 576, elements: !501)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2979, line: 117, size: 192, elements: !2984)
!2984 = !{!2985, !2986}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2983, file: !2979, line: 118, baseType: !170, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2983, file: !2979, line: 119, baseType: !2749, size: 128, offset: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2978, file: !2979, line: 134, baseType: !7, size: 32, offset: 576)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2978, file: !2979, line: 135, baseType: !7, size: 32, offset: 608)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2583, file: !1382, line: 1058, baseType: !2990, size: 448, offset: 14016)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2979, line: 144, size: 448, elements: !2991)
!2991 = !{!2992, !2993, !2994}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2990, file: !2979, line: 145, baseType: !462, size: 128, align: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2990, file: !2979, line: 146, baseType: !264, size: 256, offset: 128)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2990, file: !2979, line: 147, baseType: !7, size: 32, offset: 384)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2583, file: !1382, line: 1064, baseType: !123, size: 64, offset: 14464)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2583, file: !1382, line: 1067, baseType: !123, size: 64, offset: 14528)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2583, file: !1382, line: 1070, baseType: !123, size: 64, offset: 14592)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2583, file: !1382, line: 1074, baseType: !180, size: 64, offset: 14656)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2583, file: !1382, line: 1084, baseType: !3000, size: 128, offset: 14720)
!3000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 128, elements: !3001)
!3001 = !{!3002}
!3002 = !DISubrange(count: 16)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2583, file: !1382, line: 1086, baseType: !3004, size: 64, offset: 14848)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1382, line: 55, flags: DIFlagFwdDecl)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2583, file: !1382, line: 1089, baseType: !3007, size: 64, offset: 14912)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3008, line: 12, size: 64, elements: !3009)
!3008 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3009 = !{!3010}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3007, file: !3008, line: 13, baseType: !3011, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3008, line: 8, flags: DIFlagFwdDecl)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2583, file: !1382, line: 1090, baseType: !3014, size: 128, offset: 14976)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3015, line: 13, size: 128, elements: !3016)
!3015 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3016 = !{!3017}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3014, file: !3015, line: 14, baseType: !202, size: 128)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2583, file: !1382, line: 1097, baseType: !3019, size: 64, offset: 15104)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1382, line: 50, flags: DIFlagFwdDecl)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2583, file: !1382, line: 1100, baseType: !3022, size: 64, offset: 15168)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1382, line: 1100, flags: DIFlagFwdDecl)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2583, file: !1382, line: 1103, baseType: !3025, size: 64, offset: 15232)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1382, line: 53, flags: DIFlagFwdDecl)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2583, file: !1382, line: 1107, baseType: !3028, size: 64, offset: 15296)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1382, line: 56, flags: DIFlagFwdDecl)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2583, file: !1382, line: 1110, baseType: !3031, size: 64, offset: 15360)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3033, line: 93, size: 8768, elements: !3034)
!3033 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3034 = !{!3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3083, !3092, !3093, !3095, !3096, !3097, !3100, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3138, !3139, !3146, !3156, !3159, !3160, !3163, !3164, !3165, !3166, !3167, !3168}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3032, file: !3033, line: 94, baseType: !184, size: 32)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3032, file: !3033, line: 95, baseType: !188, size: 32, offset: 32)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3032, file: !3033, line: 96, baseType: !192, size: 32, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3032, file: !3033, line: 97, baseType: !192, size: 32, offset: 96)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3032, file: !3033, line: 98, baseType: !202, size: 128, offset: 128)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3032, file: !3033, line: 100, baseType: !524, size: 192, offset: 256)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3032, file: !3033, line: 103, baseType: !2582, size: 64, offset: 448)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3032, file: !3033, line: 106, baseType: !3043, size: 192, offset: 512)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3044, line: 32, size: 192, elements: !3045)
!3044 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!3045 = !{!3046, !3047}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3043, file: !3044, line: 33, baseType: !202, size: 128)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3043, file: !3044, line: 34, baseType: !3048, size: 64, offset: 128)
!3048 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3049, line: 25, baseType: !3050)
!3049 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3049, line: 23, size: 64, elements: !3051)
!3051 = !{!3052}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3050, file: !3049, line: 24, baseType: !2813, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3032, file: !3033, line: 109, baseType: !513, size: 64, offset: 704)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3032, file: !3033, line: 112, baseType: !192, size: 32, offset: 768)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3032, file: !3033, line: 114, baseType: !192, size: 32, offset: 800)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3032, file: !3033, line: 115, baseType: !2582, size: 64, offset: 832)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3032, file: !3033, line: 118, baseType: !192, size: 32, offset: 896)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3032, file: !3033, line: 119, baseType: !7, size: 32, offset: 928)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3032, file: !3033, line: 121, baseType: !3060, size: 64, offset: 960)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3033, line: 80, size: 448, elements: !3062)
!3062 = !{!3063, !3064, !3070}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3061, file: !3033, line: 81, baseType: !188, size: 32)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3061, file: !3033, line: 82, baseType: !3065, size: 128, offset: 64)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3033, line: 75, size: 128, elements: !3066)
!3066 = !{!3067, !3068}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3065, file: !3033, line: 76, baseType: !2582, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3065, file: !3033, line: 77, baseType: !3069, size: 64, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3061, file: !3033, line: 83, baseType: !1078, size: 256, offset: 192)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3032, file: !3033, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3032, file: !3033, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3032, file: !3033, line: 138, baseType: !7, size: 32, offset: 1056)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3032, file: !3033, line: 139, baseType: !202, size: 128, offset: 1088)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3032, file: !3033, line: 142, baseType: !2693, size: 512, offset: 1216)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3032, file: !3033, line: 143, baseType: !2701, size: 64, offset: 1728)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3032, file: !3033, line: 150, baseType: !3078, size: 256, offset: 1792)
!3078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3079, size: 256, elements: !1996)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3033, line: 38, size: 128, elements: !3080)
!3080 = !{!3081, !3082}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3079, file: !3033, line: 39, baseType: !170, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3079, file: !3033, line: 40, baseType: !170, size: 64, offset: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3032, file: !3033, line: 156, baseType: !3084, size: 192, offset: 2048)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3033, line: 66, size: 192, elements: !3085)
!3085 = !{!3086}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3084, file: !3033, line: 67, baseType: !3087, size: 192)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3033, line: 47, size: 192, elements: !3088)
!3088 = !{!3089, !3090, !3091}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3087, file: !3033, line: 48, baseType: !131, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3087, file: !3033, line: 49, baseType: !131, size: 64, offset: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3087, file: !3033, line: 50, baseType: !131, size: 64, offset: 128)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3032, file: !3033, line: 160, baseType: !2978, size: 640, offset: 2240)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3032, file: !3033, line: 163, baseType: !3094, size: 256, offset: 2880)
!3094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 256, elements: !360)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3032, file: !3033, line: 169, baseType: !505, size: 64, offset: 3136)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3032, file: !3033, line: 172, baseType: !192, size: 32, offset: 3200)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3032, file: !3033, line: 174, baseType: !3098, size: 64, offset: 3264)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3033, line: 174, flags: DIFlagFwdDecl)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3032, file: !3033, line: 185, baseType: !3101, size: 64, offset: 3328)
!3101 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !572, line: 860, baseType: !3102)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !572, line: 853, size: 64, elements: !3103)
!3103 = !{!3104, !3105}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3102, file: !572, line: 858, baseType: !571, size: 32)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3102, file: !572, line: 859, baseType: !272, size: 32, offset: 32)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3032, file: !3033, line: 186, baseType: !170, size: 64, offset: 3392)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3032, file: !3033, line: 186, baseType: !170, size: 64, offset: 3456)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3032, file: !3033, line: 186, baseType: !170, size: 64, offset: 3520)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3032, file: !3033, line: 186, baseType: !170, size: 64, offset: 3584)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3032, file: !3033, line: 187, baseType: !170, size: 64, offset: 3648)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3032, file: !3033, line: 188, baseType: !170, size: 64, offset: 3712)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3032, file: !3033, line: 189, baseType: !2966, size: 192, offset: 3776)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3032, file: !3033, line: 190, baseType: !212, size: 64, offset: 3968)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3032, file: !3033, line: 190, baseType: !212, size: 64, offset: 4032)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3032, file: !3033, line: 190, baseType: !212, size: 64, offset: 4096)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3032, file: !3033, line: 190, baseType: !212, size: 64, offset: 4160)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3032, file: !3033, line: 191, baseType: !212, size: 64, offset: 4224)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3032, file: !3033, line: 191, baseType: !212, size: 64, offset: 4288)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3032, file: !3033, line: 191, baseType: !212, size: 64, offset: 4352)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3032, file: !3033, line: 191, baseType: !212, size: 64, offset: 4416)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3032, file: !3033, line: 192, baseType: !212, size: 64, offset: 4480)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3032, file: !3033, line: 192, baseType: !212, size: 64, offset: 4544)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3032, file: !3033, line: 192, baseType: !212, size: 64, offset: 4608)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3032, file: !3033, line: 192, baseType: !212, size: 64, offset: 4672)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3032, file: !3033, line: 193, baseType: !212, size: 64, offset: 4736)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3032, file: !3033, line: 193, baseType: !212, size: 64, offset: 4800)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3032, file: !3033, line: 194, baseType: !3128, size: 448, offset: 4864)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3129, line: 12, size: 448, elements: !3130)
!3129 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3130 = !{!3131, !3132, !3133, !3134, !3135, !3136, !3137}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3128, file: !3129, line: 15, baseType: !170, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3128, file: !3129, line: 17, baseType: !170, size: 64, offset: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3128, file: !3129, line: 19, baseType: !170, size: 64, offset: 128)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3128, file: !3129, line: 21, baseType: !170, size: 64, offset: 192)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3128, file: !3129, line: 29, baseType: !170, size: 64, offset: 256)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3128, file: !3129, line: 35, baseType: !170, size: 64, offset: 320)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3128, file: !3129, line: 44, baseType: !170, size: 64, offset: 384)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3032, file: !3033, line: 202, baseType: !172, size: 64, offset: 5312)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3032, file: !3033, line: 213, baseType: !3140, size: 2048, offset: 5376)
!3140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3141, size: 2048, elements: !3001)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3142, line: 43, size: 128, elements: !3143)
!3142 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3143 = !{!3144, !3145}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3141, file: !3142, line: 44, baseType: !338, size: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3141, file: !3142, line: 45, baseType: !338, size: 64, offset: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3032, file: !3033, line: 216, baseType: !3147, size: 448, offset: 7424)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3033, line: 30, size: 448, elements: !3148)
!3148 = !{!3149, !3150, !3151, !3152, !3153, !3154, !3155}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3147, file: !3033, line: 31, baseType: !192, size: 32)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3147, file: !3033, line: 32, baseType: !720, size: 64, offset: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3147, file: !3033, line: 33, baseType: !212, size: 64, offset: 128)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3147, file: !3033, line: 34, baseType: !170, size: 64, offset: 192)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3147, file: !3033, line: 34, baseType: !170, size: 64, offset: 256)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3147, file: !3033, line: 35, baseType: !212, size: 64, offset: 320)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3147, file: !3033, line: 35, baseType: !212, size: 64, offset: 384)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3032, file: !3033, line: 219, baseType: !3157, size: 64, offset: 7872)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3033, line: 219, flags: DIFlagFwdDecl)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3032, file: !3033, line: 222, baseType: !7, size: 32, offset: 7936)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3032, file: !3033, line: 223, baseType: !3161, size: 64, offset: 8000)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3033, line: 223, flags: DIFlagFwdDecl)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3032, file: !3033, line: 230, baseType: !388, size: 8, offset: 8064)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3032, file: !3033, line: 231, baseType: !305, size: 16, offset: 8080)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3032, file: !3033, line: 232, baseType: !305, size: 16, offset: 8096)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3032, file: !3033, line: 234, baseType: !1126, size: 64, offset: 8128)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3032, file: !3033, line: 237, baseType: !264, size: 256, offset: 8192)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3032, file: !3033, line: 243, baseType: !217, size: 320, offset: 8448)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2583, file: !1382, line: 1111, baseType: !3170, size: 64, offset: 15424)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3033, line: 20, size: 16640, elements: !3172)
!3172 = !{!3173, !3174, !3175, !3176}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3171, file: !3033, line: 21, baseType: !272, size: 32)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3171, file: !3033, line: 22, baseType: !184, size: 32, offset: 32)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3171, file: !3033, line: 23, baseType: !524, size: 192, offset: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3171, file: !3033, line: 24, baseType: !3177, size: 16384, offset: 256)
!3177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3178, size: 16384, elements: !905)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3044, line: 51, size: 256, elements: !3179)
!3179 = !{!3180}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3178, file: !3044, line: 52, baseType: !3181, size: 256)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3044, line: 37, size: 256, elements: !3182)
!3182 = !{!3183, !3190, !3191, !3195}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3181, file: !3044, line: 39, baseType: !3184, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3185, line: 83, baseType: !3186)
!3185 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3185, line: 82, baseType: !3188)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{null, !192}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3181, file: !3044, line: 40, baseType: !212, size: 64, offset: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3181, file: !3044, line: 46, baseType: !3192, size: 64, offset: 128)
!3192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3185, line: 86, baseType: !3193)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3185, line: 85, baseType: !2211)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3181, file: !3044, line: 48, baseType: !3048, size: 64, offset: 192)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2583, file: !1382, line: 1112, baseType: !3048, size: 64, offset: 15488)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2583, file: !1382, line: 1113, baseType: !3048, size: 64, offset: 15552)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2583, file: !1382, line: 1115, baseType: !3048, size: 64, offset: 15616)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2583, file: !1382, line: 1116, baseType: !3043, size: 192, offset: 15680)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2583, file: !1382, line: 1117, baseType: !212, size: 64, offset: 15872)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2583, file: !1382, line: 1118, baseType: !336, size: 64, offset: 15936)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2583, file: !1382, line: 1119, baseType: !7, size: 32, offset: 16000)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2583, file: !1382, line: 1121, baseType: !465, size: 64, offset: 16064)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2583, file: !1382, line: 1125, baseType: !3205, size: 64, offset: 16128)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1382, line: 43, flags: DIFlagFwdDecl)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2583, file: !1382, line: 1127, baseType: !142, size: 32, offset: 16192)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2583, file: !1382, line: 1128, baseType: !7, size: 32, offset: 16224)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2583, file: !1382, line: 1130, baseType: !3210, size: 128, offset: 16256)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3211, line: 37, size: 128, elements: !3212)
!3211 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3212 = !{!3213, !3214, !3215}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3210, file: !3211, line: 38, baseType: !192, size: 32)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3210, file: !3211, line: 39, baseType: !188, size: 32, offset: 32)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3210, file: !3211, line: 40, baseType: !3216, size: 64, offset: 64)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3211, line: 24, flags: DIFlagFwdDecl)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2583, file: !1382, line: 1131, baseType: !3219, size: 256, offset: 16384)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3220, line: 12, size: 256, elements: !3221)
!3220 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3221 = !{!3222, !3223, !3224, !3225}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3219, file: !3220, line: 13, baseType: !353, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3219, file: !3220, line: 14, baseType: !212, size: 64, offset: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3219, file: !3220, line: 15, baseType: !212, size: 64, offset: 128)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3219, file: !3220, line: 16, baseType: !388, size: 8, offset: 192)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2583, file: !1382, line: 1134, baseType: !170, size: 64, offset: 16640)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2583, file: !1382, line: 1135, baseType: !170, size: 64, offset: 16704)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2583, file: !1382, line: 1138, baseType: !272, size: 32, offset: 16768)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2583, file: !1382, line: 1141, baseType: !228, size: 32, offset: 16800)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2583, file: !1382, line: 1143, baseType: !3231, size: 64, offset: 16832)
!3231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1382, line: 735, size: 64, elements: !3232)
!3232 = !{!3233}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3231, file: !1382, line: 736, baseType: !3234, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2583, file: !1382, line: 1147, baseType: !975, size: 128, offset: 16896)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2583, file: !1382, line: 1149, baseType: !2582, size: 64, offset: 17024)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2583, file: !1382, line: 1151, baseType: !3238, size: 64, offset: 17088)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1382, line: 1151, flags: DIFlagFwdDecl)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2583, file: !1382, line: 1188, baseType: !122, size: 64, offset: 17152)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2583, file: !1382, line: 1191, baseType: !3242, size: 64, offset: 17216)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1382, line: 44, flags: DIFlagFwdDecl)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2583, file: !1382, line: 1194, baseType: !3245, size: 64, offset: 17280)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1382, line: 45, flags: DIFlagFwdDecl)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2583, file: !1382, line: 1197, baseType: !3248, size: 64, offset: 17344)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1382, line: 61, flags: DIFlagFwdDecl)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2583, file: !1382, line: 1199, baseType: !3251, size: 64, offset: 17408)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3253, line: 99, size: 128, elements: !3254)
!3253 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3254 = !{!3255, !3256, !3257}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3252, file: !3253, line: 100, baseType: !129, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3252, file: !3253, line: 101, baseType: !188, size: 32, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3252, file: !3253, line: 103, baseType: !254, size: 16, offset: 96)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2583, file: !1382, line: 1202, baseType: !3259, size: 64, offset: 17472)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1382, line: 48, flags: DIFlagFwdDecl)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2583, file: !1382, line: 1205, baseType: !212, size: 64, offset: 17536)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2583, file: !1382, line: 1206, baseType: !3263, size: 64, offset: 17600)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3044, line: 14, baseType: !3265)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3044, line: 12, size: 384, elements: !3266)
!3266 = !{!3267}
!3267 = !DIDerivedType(tag: DW_TAG_member, scope: !3265, file: !3044, line: 13, baseType: !3268, size: 384)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3265, file: !3044, line: 13, size: 384, elements: !3269)
!3269 = !{!3270, !3271, !3272, !3273}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3268, file: !3044, line: 13, baseType: !192, size: 32)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3268, file: !3044, line: 13, baseType: !192, size: 32, offset: 32)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3268, file: !3044, line: 13, baseType: !192, size: 32, offset: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3268, file: !3044, line: 13, baseType: !3274, size: 256, offset: 128)
!3274 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3275, line: 37, size: 256, elements: !3276)
!3275 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3276 = !{!3277, !3282, !3295, !3301, !3310, !3337, !3342}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3274, file: !3275, line: 42, baseType: !3278, size: 64)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3274, file: !3275, line: 39, size: 64, elements: !3279)
!3279 = !{!3280, !3281}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3278, file: !3275, line: 40, baseType: !2943, size: 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3278, file: !3275, line: 41, baseType: !148, size: 32, offset: 32)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3274, file: !3275, line: 50, baseType: !3283, size: 192)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3274, file: !3275, line: 45, size: 192, elements: !3284)
!3284 = !{!3285, !3287, !3288, !3294}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3283, file: !3275, line: 46, baseType: !3286, size: 32)
!3286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !149, line: 95, baseType: !192)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3283, file: !3275, line: 47, baseType: !192, size: 32, offset: 32)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3283, file: !3275, line: 48, baseType: !3289, size: 64, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3275, line: 11, baseType: !3290)
!3290 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3275, line: 8, size: 64, elements: !3291)
!3291 = !{!3292, !3293}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3290, file: !3275, line: 9, baseType: !192, size: 32)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3290, file: !3275, line: 10, baseType: !122, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3283, file: !3275, line: 49, baseType: !192, size: 32, offset: 128)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3274, file: !3275, line: 57, baseType: !3296, size: 128)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3274, file: !3275, line: 53, size: 128, elements: !3297)
!3297 = !{!3298, !3299, !3300}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3296, file: !3275, line: 54, baseType: !2943, size: 32)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3296, file: !3275, line: 55, baseType: !148, size: 32, offset: 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3296, file: !3275, line: 56, baseType: !3289, size: 64, offset: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3274, file: !3275, line: 66, baseType: !3302, size: 256)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3274, file: !3275, line: 60, size: 256, elements: !3303)
!3303 = !{!3304, !3305, !3306, !3307, !3309}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3302, file: !3275, line: 61, baseType: !2943, size: 32)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3302, file: !3275, line: 62, baseType: !148, size: 32, offset: 32)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3302, file: !3275, line: 63, baseType: !192, size: 32, offset: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3302, file: !3275, line: 64, baseType: !3308, size: 64, offset: 128)
!3308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !149, line: 94, baseType: !762)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3302, file: !3275, line: 65, baseType: !3308, size: 64, offset: 192)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3274, file: !3275, line: 105, baseType: !3311, size: 256)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3274, file: !3275, line: 69, size: 256, elements: !3312)
!3312 = !{!3313, !3314}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3311, file: !3275, line: 70, baseType: !122, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, scope: !3311, file: !3275, line: 79, baseType: !3315, size: 192, offset: 64)
!3315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3311, file: !3275, line: 79, size: 192, elements: !3316)
!3316 = !{!3317, !3318, !3319, !3326, !3331}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3315, file: !3275, line: 81, baseType: !192, size: 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3315, file: !3275, line: 86, baseType: !305, size: 16)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3315, file: !3275, line: 92, baseType: !3320, size: 192)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3315, file: !3275, line: 88, size: 192, elements: !3321)
!3321 = !{!3322, !3324, !3325}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3320, file: !3275, line: 89, baseType: !3323, size: 64)
!3323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 64, elements: !2736)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3320, file: !3275, line: 90, baseType: !122, size: 64, offset: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3320, file: !3275, line: 91, baseType: !122, size: 64, offset: 128)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3315, file: !3275, line: 97, baseType: !3327, size: 96)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3315, file: !3275, line: 94, size: 96, elements: !3328)
!3328 = !{!3329, !3330}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3327, file: !3275, line: 95, baseType: !3323, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3327, file: !3275, line: 96, baseType: !301, size: 32, offset: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3315, file: !3275, line: 103, baseType: !3332, size: 128)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3315, file: !3275, line: 99, size: 128, elements: !3333)
!3333 = !{!3334, !3335, !3336}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3332, file: !3275, line: 100, baseType: !212, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3332, file: !3275, line: 101, baseType: !301, size: 32, offset: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3332, file: !3275, line: 102, baseType: !301, size: 32, offset: 96)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3274, file: !3275, line: 111, baseType: !3338, size: 128)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3274, file: !3275, line: 108, size: 128, elements: !3339)
!3339 = !{!3340, !3341}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3338, file: !3275, line: 109, baseType: !720, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3338, file: !3275, line: 110, baseType: !192, size: 32, offset: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3274, file: !3275, line: 118, baseType: !3343, size: 128)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3274, file: !3275, line: 114, size: 128, elements: !3344)
!3344 = !{!3345, !3346, !3347}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3343, file: !3275, line: 115, baseType: !122, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3343, file: !3275, line: 116, baseType: !192, size: 32, offset: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3343, file: !3275, line: 117, baseType: !7, size: 32, offset: 96)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2583, file: !1382, line: 1208, baseType: !3128, size: 448, offset: 17664)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2583, file: !1382, line: 1215, baseType: !170, size: 64, offset: 18112)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2583, file: !1382, line: 1217, baseType: !170, size: 64, offset: 18176)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2583, file: !1382, line: 1219, baseType: !170, size: 64, offset: 18240)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2583, file: !1382, line: 1223, baseType: !3353, size: 64, offset: 18304)
!3353 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3354, line: 99, baseType: !3355)
!3354 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3354, line: 99, size: 64, elements: !3356)
!3356 = !{!3357}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3355, file: !3354, line: 99, baseType: !2813, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2583, file: !1382, line: 1225, baseType: !571, size: 32, offset: 18368)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2583, file: !1382, line: 1226, baseType: !192, size: 32, offset: 18400)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2583, file: !1382, line: 1227, baseType: !192, size: 32, offset: 18432)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2583, file: !1382, line: 1231, baseType: !3362, size: 64, offset: 18496)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1382, line: 1231, flags: DIFlagFwdDecl)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2583, file: !1382, line: 1233, baseType: !202, size: 128, offset: 18560)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2583, file: !1382, line: 1240, baseType: !3366, size: 64, offset: 18688)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1382, line: 62, flags: DIFlagFwdDecl)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2583, file: !1382, line: 1242, baseType: !3369, size: 64, offset: 18752)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !3371, line: 392, size: 96, elements: !3372)
!3371 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!3372 = !{!3373, !3379, !3381}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3370, file: !3371, line: 393, baseType: !3374, size: 32)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !3371, line: 388, size: 32, elements: !3375)
!3375 = !{!3376}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3374, file: !3371, line: 389, baseType: !3377, size: 32)
!3377 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !3378, line: 46, baseType: !300)
!3378 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !3370, file: !3371, line: 394, baseType: !3380, size: 32, offset: 32)
!3380 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !3378, line: 42, baseType: !196)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !3370, file: !3371, line: 395, baseType: !3377, size: 32, offset: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2583, file: !1382, line: 1244, baseType: !202, size: 128, offset: 18816)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2583, file: !1382, line: 1245, baseType: !3384, size: 64, offset: 18944)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1382, line: 51, flags: DIFlagFwdDecl)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2583, file: !1382, line: 1246, baseType: !264, size: 256, offset: 19008)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2583, file: !1382, line: 1247, baseType: !7, size: 32, offset: 19264)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2583, file: !1382, line: 1250, baseType: !3389, size: 64, offset: 19328)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1382, line: 57, flags: DIFlagFwdDecl)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2583, file: !1382, line: 1251, baseType: !264, size: 256, offset: 19392)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2583, file: !1382, line: 1252, baseType: !202, size: 128, offset: 19648)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2583, file: !1382, line: 1259, baseType: !1380, size: 64, offset: 19776)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2583, file: !1382, line: 1260, baseType: !305, size: 16, offset: 19840)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2583, file: !1382, line: 1261, baseType: !305, size: 16, offset: 19856)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2583, file: !1382, line: 1314, baseType: !3397, size: 64, offset: 19904)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3399, line: 62, size: 256, align: 256, elements: !3400)
!3399 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3400 = !{!3401, !3402, !3403, !3404, !3405, !3406, !3407}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3398, file: !3399, line: 75, baseType: !301, size: 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3398, file: !3399, line: 90, baseType: !301, size: 32, offset: 32)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3398, file: !3399, line: 112, baseType: !171, size: 64, offset: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3398, file: !3399, line: 132, baseType: !301, size: 32, offset: 128)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3398, file: !3399, line: 140, baseType: !301, size: 32, offset: 160)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3398, file: !3399, line: 149, baseType: !301, size: 32, offset: 192)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3398, file: !3399, line: 154, baseType: !3408, offset: 224)
!3408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, elements: !539)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2583, file: !1382, line: 1315, baseType: !300, size: 32, offset: 19968)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2583, file: !1382, line: 1316, baseType: !300, size: 32, offset: 20000)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2583, file: !1382, line: 1321, baseType: !212, size: 64, offset: 20032)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2583, file: !1382, line: 1325, baseType: !192, size: 32, offset: 20096)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2583, file: !1382, line: 1326, baseType: !192, size: 32, offset: 20128)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2583, file: !1382, line: 1327, baseType: !192, size: 32, offset: 20160)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2583, file: !1382, line: 1328, baseType: !192, size: 32, offset: 20192)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2583, file: !1382, line: 1329, baseType: !462, size: 128, align: 64, offset: 20224)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2583, file: !1382, line: 1332, baseType: !3418, size: 128, offset: 20352)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3419, line: 51, size: 128, elements: !3420)
!3419 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3420 = !{!3421, !3426, !3427}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3418, file: !3419, line: 60, baseType: !3422, size: 64)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3423, line: 7, size: 64, elements: !3424)
!3423 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3424 = !{!3425}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3422, file: !3423, line: 12, baseType: !2810, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3418, file: !3419, line: 63, baseType: !388, size: 8, offset: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3418, file: !3419, line: 70, baseType: !388, size: 8, offset: 72)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2583, file: !1382, line: 1335, baseType: !3429, size: 64, offset: 20480)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1382, line: 59, flags: DIFlagFwdDecl)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2583, file: !1382, line: 1337, baseType: !3432, size: 128, offset: 20544)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3419, line: 39, size: 128, elements: !3433)
!3433 = !{!3434, !3435, !3436}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3432, file: !3419, line: 40, baseType: !993, size: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3432, file: !3419, line: 42, baseType: !301, size: 32, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3432, file: !3419, line: 43, baseType: !301, size: 32, offset: 96)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2583, file: !1382, line: 1340, baseType: !3438, size: 64, offset: 20672)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1382, line: 69, flags: DIFlagFwdDecl)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2583, file: !1382, line: 1351, baseType: !192, size: 32, offset: 20736)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2583, file: !1382, line: 1352, baseType: !192, size: 32, offset: 20768)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2583, file: !1382, line: 1354, baseType: !212, size: 64, offset: 20800)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2583, file: !1382, line: 1364, baseType: !170, size: 64, offset: 20864)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2583, file: !1382, line: 1365, baseType: !170, size: 64, offset: 20928)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2583, file: !1382, line: 1412, baseType: !212, size: 64, offset: 20992)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2583, file: !1382, line: 1453, baseType: !3447, size: 64, offset: 21056)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1382, line: 1453, flags: DIFlagFwdDecl)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2583, file: !1382, line: 1457, baseType: !3450, size: 64, offset: 21120)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !81, line: 61, size: 576, elements: !3452)
!3452 = !{!3453, !3454, !3473, !3476, !3477, !3510, !3520}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3451, file: !81, line: 62, baseType: !80, size: 32)
!3454 = !DIDerivedType(tag: DW_TAG_member, scope: !3451, file: !81, line: 64, baseType: !3455, size: 192, offset: 64)
!3455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3451, file: !81, line: 64, size: 192, elements: !3456)
!3456 = !{!3457, !3468}
!3457 = !DIDerivedType(tag: DW_TAG_member, scope: !3455, file: !81, line: 65, baseType: !3458, size: 192)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3455, file: !81, line: 65, size: 192, elements: !3459)
!3459 = !{!3460, !3467}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3458, file: !81, line: 66, baseType: !3461, size: 128)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3462, line: 50, size: 128, elements: !3463)
!3462 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3463 = !{!3464, !3465, !3466}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3461, file: !3462, line: 52, baseType: !212, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3461, file: !3462, line: 54, baseType: !7, size: 32, offset: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3461, file: !3462, line: 55, baseType: !7, size: 32, offset: 96)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3458, file: !81, line: 67, baseType: !212, size: 64, offset: 128)
!3468 = !DIDerivedType(tag: DW_TAG_member, scope: !3455, file: !81, line: 70, baseType: !3469, size: 192)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3455, file: !81, line: 70, size: 192, elements: !3470)
!3470 = !{!3471, !3472}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3469, file: !81, line: 71, baseType: !462, size: 128, align: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3469, file: !81, line: 72, baseType: !212, size: 64, offset: 128)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3451, file: !81, line: 76, baseType: !3474, size: 64, offset: 256)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !81, line: 76, flags: DIFlagFwdDecl)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3451, file: !81, line: 77, baseType: !212, size: 64, offset: 320)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3451, file: !81, line: 79, baseType: !3478, size: 64, offset: 384)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3462, line: 25, size: 256, elements: !3480)
!3480 = !{!3481, !3487, !3491}
!3481 = !DIDerivedType(tag: DW_TAG_member, scope: !3479, file: !3462, line: 26, baseType: !3482, size: 128)
!3482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3479, file: !3462, line: 26, size: 128, elements: !3483)
!3483 = !{!3484, !3486}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3482, file: !3462, line: 27, baseType: !3485, size: 128)
!3485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 128, elements: !3001)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3482, file: !3462, line: 28, baseType: !3485, size: 128)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3479, file: !3462, line: 31, baseType: !3488, size: 64, offset: 128)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3490)
!3490 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3462, line: 23, flags: DIFlagFwdDecl)
!3491 = !DIDerivedType(tag: DW_TAG_member, scope: !3479, file: !3462, line: 33, baseType: !3492, size: 64, offset: 192)
!3492 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3479, file: !3462, line: 33, size: 64, elements: !3493)
!3493 = !{!3494, !3500, !3505}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3492, file: !3462, line: 38, baseType: !3495, size: 64)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3492, file: !3462, line: 34, size: 64, elements: !3496)
!3496 = !{!3497, !3498, !3499}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3495, file: !3462, line: 35, baseType: !196, size: 32)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3495, file: !3462, line: 36, baseType: !245, size: 8, offset: 32)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3495, file: !3462, line: 37, baseType: !245, size: 8, offset: 40)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3492, file: !3462, line: 42, baseType: !3501, size: 16)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3492, file: !3462, line: 39, size: 16, elements: !3502)
!3502 = !{!3503, !3504}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3501, file: !3462, line: 40, baseType: !245, size: 8)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3501, file: !3462, line: 41, baseType: !245, size: 8, offset: 8)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3492, file: !3462, line: 46, baseType: !3506, size: 16)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3492, file: !3462, line: 43, size: 16, elements: !3507)
!3507 = !{!3508, !3509}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3506, file: !3462, line: 44, baseType: !245, size: 8)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3506, file: !3462, line: 45, baseType: !245, size: 8, offset: 8)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3451, file: !81, line: 81, baseType: !3511, size: 64, offset: 448)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !81, line: 85, size: 384, elements: !3513)
!3513 = !{!3514, !3515, !3516, !3517, !3518, !3519}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3512, file: !81, line: 86, baseType: !3474, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3512, file: !81, line: 87, baseType: !212, size: 64, offset: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3512, file: !81, line: 88, baseType: !212, size: 64, offset: 128)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3512, file: !81, line: 89, baseType: !212, size: 64, offset: 192)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3512, file: !81, line: 90, baseType: !388, size: 8, offset: 256)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3512, file: !81, line: 92, baseType: !3511, size: 64, offset: 320)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3451, file: !81, line: 82, baseType: !7, size: 32, offset: 512)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2583, file: !1382, line: 1463, baseType: !3522, offset: 21184)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1382, line: 739, elements: !1147)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2583, file: !1382, line: 1470, baseType: !462, size: 128, align: 64, offset: 21184)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2583, file: !1382, line: 1471, baseType: !184, size: 32, offset: 21312)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2583, file: !1382, line: 1472, baseType: !192, size: 32, offset: 21344)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2583, file: !1382, line: 1474, baseType: !2582, size: 64, offset: 21376)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2583, file: !1382, line: 1475, baseType: !2106, size: 320, offset: 21440)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2583, file: !1382, line: 1478, baseType: !3529, size: 64, offset: 21760)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3531, line: 49, size: 512, elements: !3532)
!3531 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3532 = !{!3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3542}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3530, file: !3531, line: 50, baseType: !3529, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3530, file: !3531, line: 51, baseType: !122, size: 64, offset: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3530, file: !3531, line: 52, baseType: !212, size: 64, offset: 128)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3530, file: !3531, line: 53, baseType: !212, size: 64, offset: 192)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3530, file: !3531, line: 54, baseType: !1555, size: 64, offset: 256)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3530, file: !3531, line: 56, baseType: !7, size: 32, offset: 320)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3530, file: !3531, line: 58, baseType: !7, size: 32, offset: 352)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3530, file: !3531, line: 59, baseType: !3541, size: 64, offset: 384)
!3541 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !132, line: 159, baseType: !170)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3530, file: !3531, line: 60, baseType: !363, size: 64, offset: 448)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2583, file: !1382, line: 1482, baseType: !184, size: 32, offset: 21824)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2583, file: !1382, line: 1489, baseType: !122, size: 64, offset: 21888)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2583, file: !1382, line: 1504, baseType: !122, size: 64, offset: 21952)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2583, file: !1382, line: 1505, baseType: !171, size: 64, offset: 22016)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2583, file: !1382, line: 1506, baseType: !170, size: 64, offset: 22080)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2583, file: !1382, line: 1507, baseType: !171, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2583, file: !1382, line: 1508, baseType: !171, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2583, file: !1382, line: 1509, baseType: !171, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2583, file: !1382, line: 1510, baseType: !462, size: 128, align: 64, offset: 22208)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2583, file: !1382, line: 1511, baseType: !192, size: 32, offset: 22336)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2583, file: !1382, line: 1515, baseType: !3554, size: 64, offset: 22400)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !457, line: 56, size: 64, elements: !3555)
!3555 = !{!3556}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3554, file: !457, line: 57, baseType: !460, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2583, file: !1382, line: 1518, baseType: !3554, size: 64, offset: 22464)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2583, file: !1382, line: 1528, baseType: !462, size: 128, align: 64, offset: 22528)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2583, file: !1382, line: 1552, baseType: !3560, size: 35328, offset: 23040)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3561, line: 430, size: 35328, elements: !3562)
!3561 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3562 = !{!3563, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3592, !3593, !3594, !3595, !3596, !3597, !3600, !3601, !3602, !3603}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3560, file: !3561, line: 432, baseType: !3564, size: 192)
!3564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3565, size: 192, elements: !501)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3566, line: 16, size: 64, elements: !3567)
!3566 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3567 = !{!3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3565, file: !3566, line: 17, baseType: !252, size: 16)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3565, file: !3566, line: 18, baseType: !252, size: 16, offset: 16)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3565, file: !3566, line: 19, baseType: !252, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3565, file: !3566, line: 19, baseType: !252, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3565, file: !3566, line: 19, baseType: !252, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3565, file: !3566, line: 19, baseType: !252, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3565, file: !3566, line: 19, baseType: !252, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3565, file: !3566, line: 20, baseType: !252, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3565, file: !3566, line: 20, baseType: !252, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3565, file: !3566, line: 20, baseType: !252, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3565, file: !3566, line: 20, baseType: !252, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3565, file: !3566, line: 20, baseType: !252, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3565, file: !3566, line: 20, baseType: !252, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3560, file: !3561, line: 436, baseType: !212, size: 64, offset: 192)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3560, file: !3561, line: 440, baseType: !254, size: 16, offset: 256)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3560, file: !3561, line: 441, baseType: !254, size: 16, offset: 272)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3560, file: !3561, line: 442, baseType: !254, size: 16, offset: 288)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3560, file: !3561, line: 443, baseType: !254, size: 16, offset: 304)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3560, file: !3561, line: 447, baseType: !212, size: 64, offset: 320)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3560, file: !3561, line: 448, baseType: !212, size: 64, offset: 384)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3560, file: !3561, line: 459, baseType: !3589, size: 256, offset: 448)
!3589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3590, size: 256, elements: !360)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3561, line: 428, flags: DIFlagFwdDecl)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3560, file: !3561, line: 461, baseType: !212, size: 64, offset: 704)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3560, file: !3561, line: 463, baseType: !212, size: 64, offset: 768)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3560, file: !3561, line: 465, baseType: !212, size: 64, offset: 832)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3560, file: !3561, line: 466, baseType: !212, size: 64, offset: 896)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3560, file: !3561, line: 467, baseType: !212, size: 64, offset: 960)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3560, file: !3561, line: 473, baseType: !3598, size: 64, offset: 1024)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3561, line: 10, flags: DIFlagFwdDecl)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3560, file: !3561, line: 480, baseType: !212, size: 64, offset: 1088)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3560, file: !3561, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3560, file: !3561, line: 491, baseType: !300, size: 32, offset: 1184)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3560, file: !3561, line: 501, baseType: !3604, size: 33792, offset: 1536)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3605, line: 448, size: 33792, elements: !3606)
!3605 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3606 = !{!3607, !3608, !3609, !3773, !3774, !3780, !3781}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3604, file: !3605, line: 461, baseType: !7, size: 32)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3604, file: !3605, line: 468, baseType: !212, size: 64, offset: 64)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3604, file: !3605, line: 476, baseType: !3610, size: 64, offset: 128)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3605, line: 356, size: 33280, align: 512, elements: !3612)
!3612 = !{!3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3611, file: !3605, line: 358, baseType: !7, size: 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3611, file: !3605, line: 361, baseType: !7, size: 32, offset: 32)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3611, file: !3605, line: 364, baseType: !170, size: 64, offset: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3611, file: !3605, line: 367, baseType: !170, size: 64, offset: 128)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3611, file: !3605, line: 370, baseType: !170, size: 64, offset: 192)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3611, file: !3605, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3611, file: !3605, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3611, file: !3605, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3611, file: !3605, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3611, file: !3605, line: 397, baseType: !3623, size: 32768, offset: 512)
!3623 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3605, line: 348, size: 32768, elements: !3624)
!3624 = !{!3625, !3640, !3679, !3756, !3769}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3623, file: !3605, line: 349, baseType: !3626, size: 896)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3605, line: 12, size: 896, elements: !3627)
!3627 = !{!3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3639}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3626, file: !3605, line: 13, baseType: !300, size: 32)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3626, file: !3605, line: 14, baseType: !300, size: 32, offset: 32)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3626, file: !3605, line: 15, baseType: !300, size: 32, offset: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3626, file: !3605, line: 16, baseType: !300, size: 32, offset: 96)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3626, file: !3605, line: 17, baseType: !300, size: 32, offset: 128)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3626, file: !3605, line: 18, baseType: !300, size: 32, offset: 160)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3626, file: !3605, line: 19, baseType: !300, size: 32, offset: 192)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3626, file: !3605, line: 22, baseType: !3636, size: 640, offset: 224)
!3636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 640, elements: !3637)
!3637 = !{!3638}
!3638 = !DISubrange(count: 20)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3626, file: !3605, line: 25, baseType: !300, size: 32, offset: 864)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3623, file: !3605, line: 350, baseType: !3641, size: 4096, align: 128)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3605, line: 34, size: 4096, align: 128, elements: !3642)
!3642 = !{!3643, !3644, !3645, !3646, !3647, !3662, !3663, !3664, !3668, !3670, !3674}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3641, file: !3605, line: 35, baseType: !252, size: 16)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3641, file: !3605, line: 36, baseType: !252, size: 16, offset: 16)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3641, file: !3605, line: 37, baseType: !252, size: 16, offset: 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3641, file: !3605, line: 38, baseType: !252, size: 16, offset: 48)
!3647 = !DIDerivedType(tag: DW_TAG_member, scope: !3641, file: !3605, line: 39, baseType: !3648, size: 128, offset: 64)
!3648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3641, file: !3605, line: 39, size: 128, elements: !3649)
!3649 = !{!3650, !3655}
!3650 = !DIDerivedType(tag: DW_TAG_member, scope: !3648, file: !3605, line: 40, baseType: !3651, size: 128)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3648, file: !3605, line: 40, size: 128, elements: !3652)
!3652 = !{!3653, !3654}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3651, file: !3605, line: 41, baseType: !170, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3651, file: !3605, line: 42, baseType: !170, size: 64, offset: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, scope: !3648, file: !3605, line: 44, baseType: !3656, size: 128)
!3656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3648, file: !3605, line: 44, size: 128, elements: !3657)
!3657 = !{!3658, !3659, !3660, !3661}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3656, file: !3605, line: 45, baseType: !300, size: 32)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3656, file: !3605, line: 46, baseType: !300, size: 32, offset: 32)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3656, file: !3605, line: 47, baseType: !300, size: 32, offset: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3656, file: !3605, line: 48, baseType: !300, size: 32, offset: 96)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3641, file: !3605, line: 51, baseType: !300, size: 32, offset: 192)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3641, file: !3605, line: 52, baseType: !300, size: 32, offset: 224)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3641, file: !3605, line: 55, baseType: !3665, size: 1024, offset: 256)
!3665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 1024, elements: !3666)
!3666 = !{!3667}
!3667 = !DISubrange(count: 32)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3641, file: !3605, line: 58, baseType: !3669, size: 2048, offset: 1280)
!3669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 2048, elements: !905)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3641, file: !3605, line: 60, baseType: !3671, size: 384, offset: 3328)
!3671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 384, elements: !3672)
!3672 = !{!3673}
!3673 = !DISubrange(count: 12)
!3674 = !DIDerivedType(tag: DW_TAG_member, scope: !3641, file: !3605, line: 62, baseType: !3675, size: 384, offset: 3712)
!3675 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3641, file: !3605, line: 62, size: 384, elements: !3676)
!3676 = !{!3677, !3678}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3675, file: !3605, line: 63, baseType: !3671, size: 384)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3675, file: !3605, line: 64, baseType: !3671, size: 384)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3623, file: !3605, line: 351, baseType: !3680, size: 1088)
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3605, line: 79, size: 1088, elements: !3681)
!3681 = !{!3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3755}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3680, file: !3605, line: 80, baseType: !300, size: 32)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3680, file: !3605, line: 81, baseType: !300, size: 32, offset: 32)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3680, file: !3605, line: 82, baseType: !300, size: 32, offset: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3680, file: !3605, line: 83, baseType: !300, size: 32, offset: 96)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3680, file: !3605, line: 84, baseType: !300, size: 32, offset: 128)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3680, file: !3605, line: 85, baseType: !300, size: 32, offset: 160)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3680, file: !3605, line: 86, baseType: !300, size: 32, offset: 192)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3680, file: !3605, line: 88, baseType: !3636, size: 640, offset: 224)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3680, file: !3605, line: 89, baseType: !245, size: 8, offset: 864)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3680, file: !3605, line: 90, baseType: !245, size: 8, offset: 872)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3680, file: !3605, line: 91, baseType: !245, size: 8, offset: 880)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3680, file: !3605, line: 92, baseType: !245, size: 8, offset: 888)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3680, file: !3605, line: 93, baseType: !245, size: 8, offset: 896)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3680, file: !3605, line: 94, baseType: !245, size: 8, offset: 904)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3680, file: !3605, line: 95, baseType: !3697, size: 64, offset: 960)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3699, line: 11, size: 128, elements: !3700)
!3699 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3700 = !{!3701, !3702}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3698, file: !3699, line: 12, baseType: !720, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3698, file: !3699, line: 13, baseType: !3703, size: 64, offset: 64)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3705, line: 103, size: 1344, elements: !3706)
!3705 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3706 = !{!3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3735, !3736, !3737}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3704, file: !3705, line: 109, baseType: !212, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3704, file: !3705, line: 110, baseType: !212, size: 64, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3704, file: !3705, line: 111, baseType: !212, size: 64, offset: 128)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3704, file: !3705, line: 112, baseType: !212, size: 64, offset: 192)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3704, file: !3705, line: 113, baseType: !212, size: 64, offset: 256)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3704, file: !3705, line: 114, baseType: !212, size: 64, offset: 320)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3704, file: !3705, line: 117, baseType: !212, size: 64, offset: 384)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3704, file: !3705, line: 118, baseType: !212, size: 64, offset: 448)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3704, file: !3705, line: 119, baseType: !212, size: 64, offset: 512)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3704, file: !3705, line: 120, baseType: !212, size: 64, offset: 576)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3704, file: !3705, line: 121, baseType: !212, size: 64, offset: 640)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3704, file: !3705, line: 122, baseType: !212, size: 64, offset: 704)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3704, file: !3705, line: 123, baseType: !212, size: 64, offset: 768)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3704, file: !3705, line: 124, baseType: !212, size: 64, offset: 832)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3704, file: !3705, line: 125, baseType: !212, size: 64, offset: 896)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3704, file: !3705, line: 139, baseType: !212, size: 64, offset: 960)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3704, file: !3705, line: 142, baseType: !212, size: 64, offset: 1024)
!3724 = !DIDerivedType(tag: DW_TAG_member, scope: !3704, file: !3705, line: 144, baseType: !3725, size: 64, offset: 1088)
!3725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3704, file: !3705, line: 144, size: 64, elements: !3726)
!3726 = !{!3727, !3728, !3729}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3725, file: !3705, line: 146, baseType: !252, size: 16)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3725, file: !3705, line: 148, baseType: !170, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3725, file: !3705, line: 150, baseType: !3730, size: 64)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3705, line: 59, size: 64, elements: !3731)
!3731 = !{!3732, !3733, !3734}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3730, file: !3705, line: 61, baseType: !170, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3730, file: !3705, line: 63, baseType: !170, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3730, file: !3705, line: 65, baseType: !170, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3704, file: !3705, line: 153, baseType: !212, size: 64, offset: 1152)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3704, file: !3705, line: 154, baseType: !212, size: 64, offset: 1216)
!3737 = !DIDerivedType(tag: DW_TAG_member, scope: !3704, file: !3705, line: 156, baseType: !3738, size: 64, offset: 1280)
!3738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3704, file: !3705, line: 156, size: 64, elements: !3739)
!3739 = !{!3740, !3741, !3742}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3738, file: !3705, line: 158, baseType: !252, size: 16)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3738, file: !3705, line: 160, baseType: !170, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3738, file: !3705, line: 162, baseType: !3743, size: 64)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3705, line: 69, size: 64, elements: !3744)
!3744 = !{!3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3743, file: !3705, line: 71, baseType: !170, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3743, file: !3705, line: 73, baseType: !170, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3743, file: !3705, line: 75, baseType: !170, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3743, file: !3705, line: 77, baseType: !170, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3743, file: !3705, line: 80, baseType: !170, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3743, file: !3705, line: 83, baseType: !170, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3743, file: !3705, line: 86, baseType: !170, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3743, file: !3705, line: 88, baseType: !170, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3743, file: !3705, line: 93, baseType: !170, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3743, file: !3705, line: 100, baseType: !170, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3680, file: !3605, line: 96, baseType: !300, size: 32, offset: 1024)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3623, file: !3605, line: 352, baseType: !3757, size: 4608, align: 512)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3605, line: 333, size: 4608, align: 512, elements: !3758)
!3758 = !{!3759, !3760, !3767}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3757, file: !3605, line: 334, baseType: !3641, size: 4096, align: 128)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3757, file: !3605, line: 335, baseType: !3761, size: 512, offset: 4096)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3605, line: 312, size: 512, elements: !3762)
!3762 = !{!3763, !3764, !3765}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3761, file: !3605, line: 313, baseType: !170, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3761, file: !3605, line: 314, baseType: !170, size: 64, offset: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3761, file: !3605, line: 315, baseType: !3766, size: 384, offset: 128)
!3766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 384, elements: !324)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3757, file: !3605, line: 336, baseType: !3768, offset: 4608)
!3768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, elements: !539)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3623, file: !3605, line: 353, baseType: !3770, size: 32768)
!3770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 32768, elements: !3771)
!3771 = !{!3772}
!3772 = !DISubrange(count: 4096)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3604, file: !3605, line: 484, baseType: !3610, size: 64, offset: 192)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3604, file: !3605, line: 491, baseType: !3775, size: 128, offset: 256)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3605, line: 404, size: 128, elements: !3776)
!3776 = !{!3777, !3778, !3779}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3775, file: !3605, line: 424, baseType: !170, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3775, file: !3605, line: 432, baseType: !7, size: 32, offset: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3775, file: !3605, line: 440, baseType: !7, size: 32, offset: 96)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3604, file: !3605, line: 498, baseType: !3775, size: 128, offset: 384)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3604, file: !3605, line: 508, baseType: !3611, size: 33280, align: 512, offset: 512)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2565, file: !2566, line: 16, baseType: !524, size: 192, offset: 512)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2565, file: !2566, line: 17, baseType: !188, size: 32, offset: 704)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !817, file: !59, line: 1240, baseType: !122, size: 64, offset: 6912)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !817, file: !59, line: 1243, baseType: !300, size: 32, offset: 6976)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !817, file: !59, line: 1245, baseType: !291, size: 64, offset: 7040)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !817, file: !59, line: 1246, baseType: !291, size: 64, offset: 7104)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !817, file: !59, line: 1248, baseType: !301, size: 32, offset: 7168)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !817, file: !59, line: 1249, baseType: !3790, size: 64, offset: 7232)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !59, line: 634, flags: DIFlagFwdDecl)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !817, file: !59, line: 1252, baseType: !3793, size: 256, offset: 7296)
!3793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 256, elements: !3666)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !817, file: !59, line: 1253, baseType: !3795, size: 128, offset: 7552)
!3795 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3796, line: 21, baseType: !3797)
!3796 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3796, line: 19, size: 128, elements: !3798)
!3798 = !{!3799}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3797, file: !3796, line: 20, baseType: !3800, size: 128)
!3800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 128, elements: !3001)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !817, file: !59, line: 1255, baseType: !7, size: 32, offset: 7680)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !817, file: !59, line: 1261, baseType: !264, size: 256, offset: 7744)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !817, file: !59, line: 1267, baseType: !333, size: 64, offset: 8000)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !817, file: !59, line: 1269, baseType: !3805, size: 64, offset: 8064)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3807)
!3807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !567, line: 128, size: 1024, align: 512, elements: !3808)
!3808 = !{!3809, !3813, !3814, !3821, !3827, !3831, !3835, !3839, !3840, !3844, !3848, !3853, !3857}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3807, file: !567, line: 129, baseType: !3810, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!192, !565, !7}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3807, file: !567, line: 130, baseType: !3810, size: 64, offset: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3807, file: !567, line: 131, baseType: !3815, size: 64, offset: 128)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!192, !3818, !3820}
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !566)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3807, file: !567, line: 132, baseType: !3822, size: 64, offset: 192)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!192, !3818, !7, !333, !3825}
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !590)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3807, file: !567, line: 134, baseType: !3828, size: 64, offset: 256)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!192, !3818}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3807, file: !567, line: 135, baseType: !3832, size: 64, offset: 320)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!192, !565}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3807, file: !567, line: 136, baseType: !3836, size: 64, offset: 384)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{null, !565}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3807, file: !567, line: 137, baseType: !3836, size: 64, offset: 448)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3807, file: !567, line: 138, baseType: !3841, size: 64, offset: 512)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{null, !565, !605}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3807, file: !567, line: 139, baseType: !3845, size: 64, offset: 576)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!353, !565, !353, !192}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3807, file: !567, line: 140, baseType: !3849, size: 64, offset: 640)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!560, !3852}
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3807, file: !567, line: 141, baseType: !3854, size: 64, offset: 704)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!192, !729, !388}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3807, file: !567, line: 142, baseType: !3858, size: 64, offset: 768)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!565, !565, !3861}
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !606)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !817, file: !59, line: 1271, baseType: !3864, size: 448, offset: 8128)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2347, line: 63, size: 448, elements: !3865)
!3865 = !{!3866, !3871, !3872, !3873, !3874, !3875, !3876}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3864, file: !2347, line: 64, baseType: !3867, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!212, !3870, !2345}
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3864, file: !2347, line: 66, baseType: !3867, size: 64, offset: 64)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3864, file: !2347, line: 69, baseType: !720, size: 64, offset: 128)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3864, file: !2347, line: 70, baseType: !192, size: 32, offset: 192)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3864, file: !2347, line: 71, baseType: !7, size: 32, offset: 224)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3864, file: !2347, line: 74, baseType: !202, size: 128, offset: 256)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3864, file: !2347, line: 85, baseType: !3877, size: 64, offset: 384)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !817, file: !59, line: 1274, baseType: !129, size: 64, offset: 8576)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !817, file: !59, line: 1280, baseType: !129, size: 64, offset: 8640)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !817, file: !59, line: 1283, baseType: !192, size: 32, offset: 8704)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !817, file: !59, line: 1286, baseType: !1700, size: 32, offset: 8736)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !817, file: !59, line: 1289, baseType: !2168, size: 64, offset: 8768)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !817, file: !59, line: 1290, baseType: !513, size: 64, offset: 8832)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !817, file: !59, line: 1297, baseType: !1273, size: 64, offset: 8896)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !817, file: !59, line: 1304, baseType: !3886, size: 64, offset: 8960)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3887, line: 49, size: 64, elements: !3888)
!3887 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3888 = !{!3889}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3886, file: !3887, line: 50, baseType: !3890, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3887, line: 41, size: 512, align: 512, elements: !3892)
!3892 = !{!3893, !3894, !3899}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3891, file: !3887, line: 43, baseType: !272, size: 32)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3891, file: !3887, line: 45, baseType: !3895, size: 192, offset: 64)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3887, line: 29, size: 192, elements: !3896)
!3896 = !{!3897, !3898}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3895, file: !3887, line: 30, baseType: !202, size: 128)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3895, file: !3887, line: 32, baseType: !720, size: 64, offset: 128)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3891, file: !3887, line: 46, baseType: !720, size: 64, offset: 256)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !817, file: !59, line: 1305, baseType: !3886, size: 64, offset: 9024)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !817, file: !59, line: 1306, baseType: !462, size: 128, align: 64, offset: 9088)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !817, file: !59, line: 1307, baseType: !1289, size: 256, offset: 9216)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !817, file: !59, line: 1309, baseType: !264, size: 256, offset: 9472)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !817, file: !59, line: 1314, baseType: !192, size: 32, offset: 9728)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !817, file: !59, line: 1317, baseType: !272, size: 32, align: 512, offset: 10240)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !817, file: !59, line: 1318, baseType: !202, size: 128, offset: 10304)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !817, file: !59, line: 1320, baseType: !272, size: 32, offset: 10432)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !817, file: !59, line: 1321, baseType: !202, size: 128, offset: 10496)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !606, file: !59, line: 656, baseType: !966, size: 64, offset: 512)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !606, file: !59, line: 659, baseType: !122, size: 64, offset: 576)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !606, file: !59, line: 663, baseType: !212, size: 64, offset: 640)
!3912 = !DIDerivedType(tag: DW_TAG_member, scope: !606, file: !59, line: 671, baseType: !3913, size: 32, offset: 704)
!3913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !606, file: !59, line: 671, size: 32, elements: !3914)
!3914 = !{!3915, !3917}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3913, file: !59, line: 672, baseType: !3916, size: 32)
!3916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3913, file: !59, line: 673, baseType: !7, size: 32)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !606, file: !59, line: 675, baseType: !680, size: 32, offset: 736)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !606, file: !59, line: 676, baseType: !420, size: 64, offset: 768)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !606, file: !59, line: 677, baseType: !716, size: 128, offset: 832)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !606, file: !59, line: 678, baseType: !716, size: 128, offset: 960)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !606, file: !59, line: 679, baseType: !716, size: 128, offset: 1088)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !606, file: !59, line: 680, baseType: !272, size: 32, offset: 1216)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !606, file: !59, line: 681, baseType: !254, size: 16, offset: 1248)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !606, file: !59, line: 682, baseType: !245, size: 8, offset: 1264)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !606, file: !59, line: 683, baseType: !245, size: 8, offset: 1272)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !606, file: !59, line: 684, baseType: !2478, size: 64, offset: 1280)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !606, file: !59, line: 691, baseType: !212, size: 64, offset: 1344)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !606, file: !59, line: 692, baseType: !217, size: 320, offset: 1408)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !606, file: !59, line: 694, baseType: !212, size: 64, offset: 1728)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !606, file: !59, line: 695, baseType: !212, size: 64, offset: 1792)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !606, file: !59, line: 697, baseType: !517, size: 128, offset: 1856)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !606, file: !59, line: 698, baseType: !202, size: 128, offset: 1984)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !606, file: !59, line: 707, baseType: !202, size: 128, offset: 2112)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !606, file: !59, line: 708, baseType: !202, size: 128, offset: 2240)
!3936 = !DIDerivedType(tag: DW_TAG_member, scope: !606, file: !59, line: 709, baseType: !3937, size: 128, offset: 2368)
!3937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !606, file: !59, line: 709, size: 128, elements: !3938)
!3938 = !{!3939, !3940}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3937, file: !59, line: 710, baseType: !513, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3937, file: !59, line: 711, baseType: !462, size: 128, align: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !606, file: !59, line: 713, baseType: !131, size: 64, offset: 2496)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !606, file: !59, line: 714, baseType: !131, size: 64, offset: 2560)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !606, file: !59, line: 715, baseType: !188, size: 32, offset: 2624)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !606, file: !59, line: 716, baseType: !188, size: 32, offset: 2656)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !606, file: !59, line: 717, baseType: !188, size: 32, offset: 2688)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !606, file: !59, line: 719, baseType: !188, size: 32, offset: 2720)
!3947 = !DIDerivedType(tag: DW_TAG_member, scope: !606, file: !59, line: 721, baseType: !3948, size: 64, offset: 2752)
!3948 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !606, file: !59, line: 721, size: 64, elements: !3949)
!3949 = !{!3950, !4074}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3948, file: !59, line: 722, baseType: !3951, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3953)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !59, line: 1914, size: 2112, elements: !3954)
!3954 = !{!3955, !3956, !3960, !3964, !3968, !3969, !3970, !3976, !3989, !3993, !3997, !3998, !4002, !4003, !4007, !4012, !4013, !4017, !4021, !4027, !4028, !4032, !4033, !4037, !4041, !4042, !4047, !4051, !4055, !4059, !4063, !4064, !4070}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3953, file: !59, line: 1915, baseType: !849, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3953, file: !59, line: 1916, baseType: !3957, size: 64, offset: 64)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!420, !724, !420, !192}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3953, file: !59, line: 1917, baseType: !3961, size: 64, offset: 128)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!760, !724, !353, !336, !433}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3953, file: !59, line: 1918, baseType: !3965, size: 64, offset: 192)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!760, !724, !333, !336, !433}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3953, file: !59, line: 1919, baseType: !1579, size: 64, offset: 256)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3953, file: !59, line: 1920, baseType: !1579, size: 64, offset: 320)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3953, file: !59, line: 1921, baseType: !3971, size: 64, offset: 384)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!192, !1582, !3974, !7}
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !59, line: 53, flags: DIFlagFwdDecl)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3953, file: !59, line: 1923, baseType: !3977, size: 64, offset: 448)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!192, !724, !3980}
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !59, line: 1858, size: 128, elements: !3982)
!3982 = !{!3983, !3988}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3981, file: !59, line: 1859, baseType: !3984, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !59, line: 1855, baseType: !3985)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!388, !3980, !333, !192, !420, !170, !7}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3981, file: !59, line: 1860, baseType: !420, size: 64, offset: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3953, file: !59, line: 1924, baseType: !3990, size: 64, offset: 512)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!1832, !724, !1834}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3953, file: !59, line: 1925, baseType: !3994, size: 64, offset: 576)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!720, !724, !7, !212}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3953, file: !59, line: 1926, baseType: !3994, size: 64, offset: 640)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3953, file: !59, line: 1927, baseType: !3999, size: 64, offset: 704)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!192, !724, !1113}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3953, file: !59, line: 1928, baseType: !212, size: 64, offset: 768)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3953, file: !59, line: 1929, baseType: !4004, size: 64, offset: 832)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!192, !605, !724}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3953, file: !59, line: 1930, baseType: !4008, size: 64, offset: 896)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!192, !724, !4011}
!4011 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !59, line: 1061, baseType: !122)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3953, file: !59, line: 1931, baseType: !4004, size: 64, offset: 960)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3953, file: !59, line: 1932, baseType: !4014, size: 64, offset: 1024)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!192, !724, !420, !420, !192}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3953, file: !59, line: 1933, baseType: !4018, size: 64, offset: 1088)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!192, !192, !724, !192}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3953, file: !59, line: 1934, baseType: !4022, size: 64, offset: 1152)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!192, !724, !192, !4025}
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !59, line: 1063, flags: DIFlagFwdDecl)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3953, file: !59, line: 1935, baseType: !1151, size: 64, offset: 1216)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3953, file: !59, line: 1936, baseType: !4029, size: 64, offset: 1280)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!192, !192}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3953, file: !59, line: 1937, baseType: !4022, size: 64, offset: 1344)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3953, file: !59, line: 1938, baseType: !4034, size: 64, offset: 1408)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!760, !3429, !724, !433, !336, !7}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3953, file: !59, line: 1939, baseType: !4038, size: 64, offset: 1472)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!760, !724, !433, !3429, !336, !7}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3953, file: !59, line: 1940, baseType: !1690, size: 64, offset: 1536)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3953, file: !59, line: 1941, baseType: !4043, size: 64, offset: 1600)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!192, !724, !192, !4046, !1556}
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3953, file: !59, line: 1942, baseType: !4048, size: 64, offset: 1664)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!720, !724, !192, !420, !420}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3953, file: !59, line: 1944, baseType: !4052, size: 64, offset: 1728)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{null, !410, !724}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3953, file: !59, line: 1948, baseType: !4056, size: 64, offset: 1792)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!760, !724, !420, !724, !420, !336, !7}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3953, file: !59, line: 1950, baseType: !4060, size: 64, offset: 1856)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!420, !724, !420, !724, !420, !420, !7}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3953, file: !59, line: 1953, baseType: !4014, size: 64, offset: 1920)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3953, file: !59, line: 1954, baseType: !4065, size: 64, offset: 1984)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!192, !4068, !7}
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !59, line: 1911, flags: DIFlagFwdDecl)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3953, file: !59, line: 1955, baseType: !4071, size: 64, offset: 2048)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!192, !4068, !3974, !7}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3948, file: !59, line: 723, baseType: !2236, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !606, file: !59, line: 725, baseType: !4076, size: 64, offset: 2816)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !59, line: 725, flags: DIFlagFwdDecl)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !606, file: !59, line: 726, baseType: !967, size: 1536, align: 64, offset: 2880)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !606, file: !59, line: 727, baseType: !202, size: 128, offset: 4416)
!4080 = !DIDerivedType(tag: DW_TAG_member, scope: !606, file: !59, line: 728, baseType: !4081, size: 64, offset: 4544)
!4081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !606, file: !59, line: 728, size: 64, elements: !4082)
!4082 = !{!4083, !4084, !4087, !4088}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4081, file: !59, line: 729, baseType: !3429, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4081, file: !59, line: 730, baseType: !4085, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !59, line: 730, flags: DIFlagFwdDecl)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4081, file: !59, line: 731, baseType: !353, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4081, file: !59, line: 732, baseType: !7, size: 32)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !606, file: !59, line: 735, baseType: !301, size: 32, offset: 4608)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !606, file: !59, line: 738, baseType: !301, size: 32, offset: 4640)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !606, file: !59, line: 739, baseType: !3790, size: 64, offset: 4672)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !606, file: !59, line: 750, baseType: !122, size: 64, offset: 4736)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !566, file: !567, line: 91, baseType: !4094, size: 256, offset: 448)
!4094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 256, elements: !3666)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !566, file: !567, line: 94, baseType: !4096, size: 64, offset: 704)
!4096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4097, line: 25, size: 64, elements: !4098)
!4097 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4098 = !{!4099}
!4099 = !DIDerivedType(tag: DW_TAG_member, scope: !4096, file: !4097, line: 26, baseType: !4100, size: 64)
!4100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4096, file: !4097, line: 26, size: 64, elements: !4101)
!4101 = !{!4102, !4103}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4100, file: !4097, line: 28, baseType: !171, size: 64, align: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, scope: !4100, file: !4097, line: 30, baseType: !4104, size: 64)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4100, file: !4097, line: 30, size: 64, elements: !4105)
!4105 = !{!4106, !4107}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4104, file: !4097, line: 31, baseType: !272, size: 32)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4104, file: !4097, line: 32, baseType: !192, size: 32, offset: 32)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !566, file: !567, line: 95, baseType: !3805, size: 64, offset: 768)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !566, file: !567, line: 96, baseType: !816, size: 64, offset: 832)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !566, file: !567, line: 97, baseType: !212, size: 64, offset: 896)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !566, file: !567, line: 98, baseType: !122, size: 64, offset: 960)
!4112 = !DIDerivedType(tag: DW_TAG_member, scope: !566, file: !567, line: 100, baseType: !4113, size: 128, offset: 1024)
!4113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !566, file: !567, line: 100, size: 128, elements: !4114)
!4114 = !{!4115, !4116}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4113, file: !567, line: 101, baseType: !202, size: 128)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4113, file: !567, line: 102, baseType: !4117, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !566, file: !567, line: 104, baseType: !202, size: 128, offset: 1152)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !566, file: !567, line: 105, baseType: !202, size: 128, offset: 1280)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !566, file: !567, line: 113, baseType: !4121, size: 128, offset: 1408)
!4121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !566, file: !567, line: 109, size: 128, elements: !4122)
!4122 = !{!4123, !4124, !4125}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4121, file: !567, line: 110, baseType: !517, size: 128)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4121, file: !567, line: 111, baseType: !581, size: 128)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4121, file: !567, line: 112, baseType: !462, size: 128, align: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !561, file: !562, line: 72, baseType: !816, size: 64, offset: 64)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !561, file: !562, line: 73, baseType: !192, size: 32, offset: 128)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !561, file: !562, line: 74, baseType: !645, size: 64, offset: 192)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !556, file: !557, line: 10, baseType: !565, size: 64, offset: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !450, file: !59, line: 1015, baseType: !605, size: 64, offset: 1344)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !450, file: !59, line: 1016, baseType: !3951, size: 64, offset: 1408)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !450, file: !59, line: 1018, baseType: !170, size: 64, offset: 1472)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !450, file: !59, line: 1020, baseType: !122, size: 64, offset: 1536)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !450, file: !59, line: 1023, baseType: !122, size: 64, offset: 1600)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !450, file: !59, line: 1027, baseType: !4136, size: 64, offset: 1664)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !450, file: !59, line: 1029, baseType: !966, size: 64, offset: 1728)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !450, file: !59, line: 1030, baseType: !1700, size: 32, offset: 1792)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !450, file: !59, line: 1031, baseType: !1700, size: 32, offset: 1824)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !411, file: !412, line: 29, baseType: !122, size: 64, offset: 896)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !329, file: !330, line: 132, baseType: !4142, size: 64, offset: 832)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!720, !390, !353, !336}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "request_key", scope: !329, file: !330, line: 142, baseType: !4146, size: 64, offset: 896)
!4146 = !DIDerivedType(tag: DW_TAG_typedef, name: "request_key_actor_t", file: !330, line: 41, baseType: !4147)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!192, !180, !122}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_restriction", scope: !329, file: !330, line: 150, baseType: !4151, size: 64, offset: 960)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!4154, !333}
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !95, line: 176, size: 192, elements: !4156)
!4156 = !{!4157, !4166, !4167}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !4155, file: !95, line: 177, baseType: !4158, size: 64)
!4158 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !95, line: 171, baseType: !4159)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{!192, !180, !4162, !4164, !180}
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4155, file: !95, line: 178, baseType: !180, size: 64, offset: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !4155, file: !95, line: 179, baseType: !328, size: 64, offset: 128)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "asym_query", scope: !329, file: !330, line: 153, baseType: !4169, size: 64, offset: 1024)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!192, !4172, !4187}
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4174)
!4174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_pkey_params", file: !88, line: 29, size: 384, elements: !4175)
!4175 = !{!4176, !4177, !4178, !4179, !4180, !4181, !4186}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4174, file: !88, line: 30, baseType: !180, size: 64)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !4174, file: !88, line: 31, baseType: !333, size: 64, offset: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "hash_algo", scope: !4174, file: !88, line: 32, baseType: !333, size: 64, offset: 128)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4174, file: !88, line: 33, baseType: !353, size: 64, offset: 192)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "in_len", scope: !4174, file: !88, line: 34, baseType: !301, size: 32, offset: 256)
!4181 = !DIDerivedType(tag: DW_TAG_member, scope: !4174, file: !88, line: 35, baseType: !4182, size: 32, offset: 288)
!4182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4174, file: !88, line: 35, size: 32, elements: !4183)
!4183 = !{!4184, !4185}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "out_len", scope: !4182, file: !88, line: 36, baseType: !301, size: 32)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "in2_len", scope: !4182, file: !88, line: 37, baseType: !301, size: 32)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !4174, file: !88, line: 39, baseType: !87, size: 8, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_pkey_query", file: !88, line: 13, size: 128, elements: !4189)
!4189 = !{!4190, !4191, !4192, !4193, !4194, !4195}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "supported_ops", scope: !4188, file: !88, line: 14, baseType: !301, size: 32)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "key_size", scope: !4188, file: !88, line: 15, baseType: !301, size: 32, offset: 32)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "max_data_size", scope: !4188, file: !88, line: 16, baseType: !253, size: 16, offset: 64)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "max_sig_size", scope: !4188, file: !88, line: 17, baseType: !253, size: 16, offset: 80)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "max_enc_size", scope: !4188, file: !88, line: 18, baseType: !253, size: 16, offset: 96)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_size", scope: !4188, file: !88, line: 19, baseType: !253, size: 16, offset: 112)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "asym_eds_op", scope: !329, file: !330, line: 155, baseType: !4197, size: 64, offset: 1088)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!192, !4200, !363, !122}
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "asym_verify_signature", scope: !329, file: !330, line: 157, baseType: !4202, size: 64, offset: 1152)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!192, !4200, !363, !363}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !329, file: !330, line: 161, baseType: !202, size: 128, offset: 1216)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "lock_class", scope: !329, file: !330, line: 162, baseType: !2217, offset: 1344)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !311, file: !95, line: 130, baseType: !4208, size: 64, offset: 192)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !95, line: 108, size: 192, elements: !4210)
!4210 = !{!4211, !4212, !4213}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4209, file: !95, line: 109, baseType: !462, size: 128, align: 64)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !4209, file: !95, line: 110, baseType: !184, size: 32, offset: 128)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !4209, file: !95, line: 111, baseType: !388, size: 8, offset: 160)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !311, file: !95, line: 131, baseType: !333, size: 64, offset: 256)
!4215 = !DIDerivedType(tag: DW_TAG_member, scope: !308, file: !95, line: 247, baseType: !4216, size: 320)
!4216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !308, file: !95, line: 247, size: 320, elements: !4217)
!4217 = !{!4218, !4219, !4220, !4221, !4222}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4216, file: !95, line: 248, baseType: !212, size: 64)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !4216, file: !95, line: 249, baseType: !212, size: 64, offset: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4216, file: !95, line: 250, baseType: !328, size: 64, offset: 128)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !4216, file: !95, line: 251, baseType: !4208, size: 64, offset: 192)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !4216, file: !95, line: 252, baseType: !353, size: 64, offset: 256)
!4223 = !DIDerivedType(tag: DW_TAG_member, scope: !181, file: !95, line: 260, baseType: !4224, size: 256, offset: 1408)
!4224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !181, file: !95, line: 260, size: 256, elements: !4225)
!4225 = !{!4226, !4227}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !4224, file: !95, line: 261, baseType: !355, size: 256)
!4227 = !DIDerivedType(tag: DW_TAG_member, scope: !4224, file: !95, line: 262, baseType: !4228, size: 256)
!4228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4224, file: !95, line: 262, size: 256, elements: !4229)
!4229 = !{!4230, !4231}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !4228, file: !95, line: 264, baseType: !202, size: 128)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !4228, file: !95, line: 265, baseType: !4232, size: 128, offset: 128)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !4233, line: 22, size: 128, elements: !4234)
!4233 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!4234 = !{!4235, !4238}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4232, file: !4233, line: 23, baseType: !4236, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !4233, line: 23, flags: DIFlagFwdDecl)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !4232, file: !4233, line: 24, baseType: !212, size: 64, offset: 64)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !181, file: !95, line: 280, baseType: !4154, size: 64, offset: 1664)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !125, file: !126, line: 130, baseType: !180, size: 64, offset: 832)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !125, file: !126, line: 131, baseType: !180, size: 64, offset: 896)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !125, file: !126, line: 132, baseType: !180, size: 64, offset: 960)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !125, file: !126, line: 135, baseType: !122, size: 64, offset: 1024)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !125, file: !126, line: 137, baseType: !4245, size: 64, offset: 1088)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !4247, line: 14, size: 1088, elements: !4248)
!4247 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!4248 = !{!4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4246, file: !4247, line: 15, baseType: !184, size: 32)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !4246, file: !4247, line: 17, baseType: !1211, size: 320, offset: 64)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !4246, file: !4247, line: 19, baseType: !212, size: 64, offset: 384)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !4246, file: !4247, line: 20, baseType: !129, size: 64, offset: 448)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !4246, file: !4247, line: 23, baseType: !517, size: 128, offset: 512)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4246, file: !4247, line: 24, baseType: !142, size: 32, offset: 640)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !4246, file: !4247, line: 29, baseType: !129, size: 64, offset: 704)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !4246, file: !4247, line: 36, baseType: !4257, size: 320, offset: 768)
!4257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !4258, line: 15, size: 320, elements: !4259)
!4258 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!4259 = !{!4260, !4261, !4262, !4263, !4264, !4265, !4266}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4257, file: !4258, line: 16, baseType: !228, size: 32)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4257, file: !4258, line: 18, baseType: !192, size: 32, offset: 32)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !4257, file: !4258, line: 19, baseType: !192, size: 32, offset: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !4257, file: !4258, line: 20, baseType: !192, size: 32, offset: 96)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !4257, file: !4258, line: 21, baseType: !192, size: 32, offset: 128)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !4257, file: !4258, line: 22, baseType: !212, size: 64, offset: 192)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4257, file: !4258, line: 23, baseType: !212, size: 64, offset: 256)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !125, file: !126, line: 138, baseType: !1273, size: 64, offset: 1152)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !125, file: !126, line: 139, baseType: !4269, size: 64, offset: 1216)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !3044, line: 16, flags: DIFlagFwdDecl)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !125, file: !126, line: 140, baseType: !4272, size: 64, offset: 1280)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !126, line: 25, size: 64, elements: !4274)
!4274 = !{!4275, !4276, !4277}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !4273, file: !126, line: 26, baseType: !188, size: 32)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !4273, file: !126, line: 27, baseType: !192, size: 32, offset: 32)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4273, file: !126, line: 28, baseType: !4278, offset: 64)
!4278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, elements: !539)
!4279 = !DIDerivedType(tag: DW_TAG_member, scope: !125, file: !126, line: 142, baseType: !4280, size: 128, offset: 1344)
!4280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !125, file: !126, line: 142, size: 128, elements: !4281)
!4281 = !{!4282, !4283}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !4280, file: !126, line: 143, baseType: !192, size: 32)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4280, file: !126, line: 144, baseType: !462, size: 128, align: 64)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!4285 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !132, line: 42, baseType: !212)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!4287 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_ref_t", file: !95, line: 153, baseType: !4288)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DICompositeType(tag: DW_TAG_structure_type, name: "__key_reference_with_attributes", file: !95, line: 153, flags: DIFlagFwdDecl)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !323)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !720)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4297)
!4297 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !212)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4301)
!4301 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !305)
!4302 = !{!0, !4303, !4305, !4307, !4309, !4311, !4316, !4319, !4367, !4369, !4372, !4374, !4379}
!4303 = !DIGlobalVariableExpression(var: !4304, expr: !DIExpression())
!4304 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_wait_for_key_construction345", scope: !2, file: !3, line: 689, type: !122, isLocal: true, isDefinition: true)
!4305 = !DIGlobalVariableExpression(var: !4306, expr: !DIExpression())
!4306 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_request_key_tag346", scope: !2, file: !3, line: 729, type: !122, isLocal: true, isDefinition: true)
!4307 = !DIGlobalVariableExpression(var: !4308, expr: !DIExpression())
!4308 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_request_key_with_auxdata347", scope: !2, file: !3, line: 768, type: !122, isLocal: true, isDefinition: true)
!4309 = !DIGlobalVariableExpression(var: !4310, expr: !DIExpression())
!4310 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_request_key_rcu348", scope: !2, file: !3, line: 821, type: !122, isLocal: true, isDefinition: true)
!4311 = !DIGlobalVariableExpression(var: !4312, expr: !DIExpression())
!4312 = distinct !DIGlobalVariable(scope: null, file: !3, line: 335, type: !4313, isLocal: true, isDefinition: true)
!4313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 224, elements: !4314)
!4314 = !{!4315}
!4315 = !DISubrange(count: 28)
!4316 = !DIGlobalVariableExpression(var: !4317, expr: !DIExpression())
!4317 = distinct !DIGlobalVariable(scope: null, file: !3, line: 237, type: !4318, isLocal: true, isDefinition: true)
!4318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 56, elements: !1998)
!4319 = !DIGlobalVariableExpression(var: !4320, expr: !DIExpression())
!4320 = distinct !DIGlobalVariable(name: "request_key", scope: !4321, file: !3, line: 120, type: !4364, isLocal: true, isDefinition: true)
!4321 = distinct !DISubprogram(name: "call_sbin_request_key", scope: !3, file: !3, line: 118, type: !4148, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4322)
!4322 = !{!4323, !4324, !4325, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4349, !4350, !4352, !4353, !4354, !4357, !4359, !4360, !4361, !4362, !4363}
!4323 = !DILocalVariable(name: "authkey", arg: 1, scope: !4321, file: !3, line: 118, type: !180)
!4324 = !DILocalVariable(name: "aux", arg: 2, scope: !4321, file: !3, line: 118, type: !122)
!4325 = !DILocalVariable(name: "rka", scope: !4321, file: !3, line: 121, type: !4326)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_key_auth", file: !4328, line: 16, size: 576, elements: !4329)
!4328 = !DIFile(filename: "./include/keys/request_key_auth-type.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca4a1b39de2937f47165824026d6b6c6")
!4329 = !{!4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4327, file: !4328, line: 17, baseType: !462, size: 128, align: 64)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "target_key", scope: !4327, file: !4328, line: 18, baseType: !180, size: 64, offset: 128)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "dest_keyring", scope: !4327, file: !4328, line: 19, baseType: !180, size: 64, offset: 192)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !4327, file: !4328, line: 20, baseType: !123, size: 64, offset: 256)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "callout_info", scope: !4327, file: !4328, line: 21, baseType: !122, size: 64, offset: 320)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "callout_len", scope: !4327, file: !4328, line: 22, baseType: !336, size: 64, offset: 384)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4327, file: !4328, line: 23, baseType: !2942, size: 32, offset: 448)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !4327, file: !4328, line: 24, baseType: !3323, size: 64, offset: 480)
!4338 = !DILocalVariable(name: "cred", scope: !4321, file: !3, line: 122, type: !123)
!4339 = !DILocalVariable(name: "prkey", scope: !4321, file: !3, line: 123, type: !194)
!4340 = !DILocalVariable(name: "sskey", scope: !4321, file: !3, line: 123, type: !194)
!4341 = !DILocalVariable(name: "key", scope: !4321, file: !3, line: 124, type: !180)
!4342 = !DILocalVariable(name: "keyring", scope: !4321, file: !3, line: 124, type: !180)
!4343 = !DILocalVariable(name: "session", scope: !4321, file: !3, line: 124, type: !180)
!4344 = !DILocalVariable(name: "user_session", scope: !4321, file: !3, line: 124, type: !180)
!4345 = !DILocalVariable(name: "argv", scope: !4321, file: !3, line: 125, type: !4346)
!4346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 576, elements: !4347)
!4347 = !{!4348}
!4348 = !DISubrange(count: 9)
!4349 = !DILocalVariable(name: "envp", scope: !4321, file: !3, line: 125, type: !902)
!4350 = !DILocalVariable(name: "uid_str", scope: !4321, file: !3, line: 125, type: !4351)
!4351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 96, elements: !3672)
!4352 = !DILocalVariable(name: "gid_str", scope: !4321, file: !3, line: 125, type: !4351)
!4353 = !DILocalVariable(name: "key_str", scope: !4321, file: !3, line: 126, type: !4351)
!4354 = !DILocalVariable(name: "keyring_str", scope: !4321, file: !3, line: 126, type: !4355)
!4355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 288, elements: !4356)
!4356 = !{!502, !3673}
!4357 = !DILocalVariable(name: "desc", scope: !4321, file: !3, line: 127, type: !4358)
!4358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 160, elements: !3637)
!4359 = !DILocalVariable(name: "ret", scope: !4321, file: !3, line: 128, type: !192)
!4360 = !DILocalVariable(name: "i", scope: !4321, file: !3, line: 128, type: !192)
!4361 = !DILabel(scope: !4321, name: "error_link", file: !3, line: 210)
!4362 = !DILabel(scope: !4321, name: "error_alloc", file: !3, line: 213)
!4363 = !DILabel(scope: !4321, name: "error_us", file: !3, line: 215)
!4364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 144, elements: !4365)
!4365 = !{!4366}
!4366 = !DISubrange(count: 18)
!4367 = !DIGlobalVariableExpression(var: !4368, expr: !DIExpression())
!4368 = distinct !DIGlobalVariable(scope: null, file: !3, line: 137, type: !3323, isLocal: true, isDefinition: true)
!4369 = !DIGlobalVariableExpression(var: !4370, expr: !DIExpression())
!4370 = distinct !DIGlobalVariable(scope: null, file: !3, line: 155, type: !4371, isLocal: true, isDefinition: true)
!4371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 24, elements: !501)
!4372 = !DIGlobalVariableExpression(var: !4373, expr: !DIExpression())
!4373 = distinct !DIGlobalVariable(scope: null, file: !3, line: 179, type: !4318, isLocal: true, isDefinition: true)
!4374 = !DIGlobalVariableExpression(var: !4375, expr: !DIExpression())
!4375 = distinct !DIGlobalVariable(scope: null, file: !3, line: 180, type: !4376, isLocal: true, isDefinition: true)
!4376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 280, elements: !4377)
!4377 = !{!4378}
!4378 = !DISubrange(count: 35)
!4379 = !DIGlobalVariableExpression(var: !4380, expr: !DIExpression())
!4380 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched2", scope: !4381, file: !4382, line: 112, type: !122, isLocal: true, isDefinition: true)
!4381 = distinct !DISubprogram(name: "might_resched", scope: !4382, file: !4382, line: 110, type: !2211, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4382 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!4383 = !{i32 7, !"Dwarf Version", i32 5}
!4384 = !{i32 2, !"Debug Info Version", i32 3}
!4385 = !{i32 1, !"wchar_size", i32 2}
!4386 = !{i32 8, !"cf-protection-branch", i32 1}
!4387 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4388 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4389 = !{i32 1, !"Code Model", i32 2}
!4390 = !{i32 1, !"override-stack-alignment", i32 8}
!4391 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4392 = distinct !DISubprogram(name: "complete_request_key", scope: !3, file: !3, line: 59, type: !4393, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4395)
!4393 = !DISubroutineType(types: !4394)
!4394 = !{null, !180, !192}
!4395 = !{!4396, !4397, !4398, !4399}
!4396 = !DILocalVariable(name: "authkey", arg: 1, scope: !4392, file: !3, line: 59, type: !180)
!4397 = !DILocalVariable(name: "error", arg: 2, scope: !4392, file: !3, line: 59, type: !192)
!4398 = !DILocalVariable(name: "rka", scope: !4392, file: !3, line: 61, type: !4326)
!4399 = !DILocalVariable(name: "key", scope: !4392, file: !3, line: 62, type: !180)
!4400 = !DILocation(line: 59, column: 39, scope: !4392)
!4401 = !DILocation(line: 59, column: 52, scope: !4392)
!4402 = !DILocation(line: 61, column: 2, scope: !4392)
!4403 = !DILocation(line: 61, column: 27, scope: !4392)
!4404 = !DILocation(line: 61, column: 54, scope: !4392)
!4405 = !DILocation(line: 61, column: 33, scope: !4392)
!4406 = !DILocation(line: 62, column: 2, scope: !4392)
!4407 = !DILocation(line: 62, column: 14, scope: !4392)
!4408 = !DILocation(line: 62, column: 20, scope: !4392)
!4409 = !DILocation(line: 62, column: 25, scope: !4392)
!4410 = !DILocation(line: 64, column: 2, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4412, file: !3, line: 64, column: 2)
!4412 = distinct !DILexicalBlock(scope: !4392, file: !3, line: 64, column: 2)
!4413 = !DILocation(line: 64, column: 2, scope: !4412)
!4414 = !DILocation(line: 66, column: 6, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4392, file: !3, line: 66, column: 6)
!4416 = !DILocation(line: 66, column: 12, scope: !4415)
!4417 = !DILocation(line: 66, column: 6, scope: !4392)
!4418 = !DILocation(line: 67, column: 23, scope: !4415)
!4419 = !DILocation(line: 67, column: 56, scope: !4415)
!4420 = !DILocation(line: 67, column: 3, scope: !4415)
!4421 = !DILocation(line: 69, column: 14, scope: !4415)
!4422 = !DILocation(line: 69, column: 3, scope: !4415)
!4423 = !DILocation(line: 70, column: 1, scope: !4392)
!4424 = distinct !DISubprogram(name: "get_request_key_auth", scope: !4328, file: !4328, line: 27, type: !4425, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4427)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{!4326, !390}
!4427 = !{!4428}
!4428 = !DILocalVariable(name: "key", arg: 1, scope: !4424, file: !4328, line: 27, type: !390)
!4429 = !DILocation(line: 27, column: 79, scope: !4424)
!4430 = !DILocation(line: 29, column: 9, scope: !4424)
!4431 = !DILocation(line: 29, column: 14, scope: !4424)
!4432 = !DILocation(line: 29, column: 2, scope: !4424)
!4433 = distinct !DISubprogram(name: "key_negate_and_link", scope: !330, file: !330, line: 183, type: !4434, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4436)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{!192, !180, !7, !180, !180}
!4436 = !{!4437, !4438, !4439, !4440}
!4437 = !DILocalVariable(name: "key", arg: 1, scope: !4433, file: !330, line: 183, type: !180)
!4438 = !DILocalVariable(name: "timeout", arg: 2, scope: !4433, file: !330, line: 184, type: !7)
!4439 = !DILocalVariable(name: "keyring", arg: 3, scope: !4433, file: !330, line: 185, type: !180)
!4440 = !DILocalVariable(name: "authkey", arg: 4, scope: !4433, file: !330, line: 186, type: !180)
!4441 = !DILocation(line: 183, column: 51, scope: !4433)
!4442 = !DILocation(line: 184, column: 20, scope: !4433)
!4443 = !DILocation(line: 185, column: 23, scope: !4433)
!4444 = !DILocation(line: 186, column: 23, scope: !4433)
!4445 = !DILocation(line: 188, column: 29, scope: !4433)
!4446 = !DILocation(line: 188, column: 34, scope: !4433)
!4447 = !DILocation(line: 188, column: 51, scope: !4433)
!4448 = !DILocation(line: 188, column: 60, scope: !4433)
!4449 = !DILocation(line: 188, column: 9, scope: !4433)
!4450 = !DILocation(line: 188, column: 2, scope: !4433)
!4451 = !DISubprogram(name: "key_revoke", scope: !95, file: !95, line: 300, type: !403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4452 = distinct !DISubprogram(name: "request_key_and_link", scope: !3, file: !3, line: 574, type: !4453, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4455)
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!180, !328, !333, !4208, !363, !336, !122, !180, !212}
!4455 = !{!4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4479, !4480, !4481, !4482, !4483}
!4456 = !DILocalVariable(name: "type", arg: 1, scope: !4452, file: !3, line: 574, type: !328)
!4457 = !DILocalVariable(name: "description", arg: 2, scope: !4452, file: !3, line: 575, type: !333)
!4458 = !DILocalVariable(name: "domain_tag", arg: 3, scope: !4452, file: !3, line: 576, type: !4208)
!4459 = !DILocalVariable(name: "callout_info", arg: 4, scope: !4452, file: !3, line: 577, type: !363)
!4460 = !DILocalVariable(name: "callout_len", arg: 5, scope: !4452, file: !3, line: 578, type: !336)
!4461 = !DILocalVariable(name: "aux", arg: 6, scope: !4452, file: !3, line: 579, type: !122)
!4462 = !DILocalVariable(name: "dest_keyring", arg: 7, scope: !4452, file: !3, line: 580, type: !180)
!4463 = !DILocalVariable(name: "flags", arg: 8, scope: !4452, file: !3, line: 581, type: !212)
!4464 = !DILocalVariable(name: "ctx", scope: !4452, file: !3, line: 583, type: !4465)
!4465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_search_context", file: !260, line: 119, size: 960, elements: !4466)
!4466 = !{!4467, !4468, !4469, !4470, !4471, !4475, !4476, !4477, !4478}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !4465, file: !260, line: 120, baseType: !311, size: 320)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !4465, file: !260, line: 121, baseType: !123, size: 64, offset: 320)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "match_data", scope: !4465, file: !260, line: 122, baseType: !382, size: 256, offset: 384)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4465, file: !260, line: 123, baseType: !7, size: 32, offset: 640)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !4465, file: !260, line: 132, baseType: !4472, size: 64, offset: 704)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{!192, !363, !122}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "skipped_ret", scope: !4465, file: !260, line: 135, baseType: !192, size: 32, offset: 768)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "possessed", scope: !4465, file: !260, line: 136, baseType: !388, size: 8, offset: 800)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !4465, file: !260, line: 137, baseType: !4287, size: 64, offset: 832)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "now", scope: !4465, file: !260, line: 138, baseType: !291, size: 64, offset: 896)
!4479 = !DILocalVariable(name: "key", scope: !4452, file: !3, line: 596, type: !180)
!4480 = !DILocalVariable(name: "key_ref", scope: !4452, file: !3, line: 597, type: !4287)
!4481 = !DILocalVariable(name: "ret", scope: !4452, file: !3, line: 598, type: !192)
!4482 = !DILabel(scope: !4452, name: "error_free", file: !3, line: 657)
!4483 = !DILabel(scope: !4452, name: "error", file: !3, line: 660)
!4484 = !DILocation(line: 574, column: 51, scope: !4452)
!4485 = !DILocation(line: 575, column: 18, scope: !4452)
!4486 = !DILocation(line: 576, column: 22, scope: !4452)
!4487 = !DILocation(line: 577, column: 18, scope: !4452)
!4488 = !DILocation(line: 578, column: 13, scope: !4452)
!4489 = !DILocation(line: 579, column: 12, scope: !4452)
!4490 = !DILocation(line: 580, column: 18, scope: !4452)
!4491 = !DILocation(line: 581, column: 20, scope: !4452)
!4492 = !DILocation(line: 583, column: 2, scope: !4452)
!4493 = !DILocation(line: 583, column: 32, scope: !4452)
!4494 = !DILocation(line: 583, column: 38, scope: !4452)
!4495 = !DILocation(line: 584, column: 13, scope: !4452)
!4496 = !DILocation(line: 587, column: 13, scope: !4452)
!4497 = !DILocation(line: 587, column: 32, scope: !4452)
!4498 = !DILocation(line: 587, column: 25, scope: !4452)
!4499 = !DILocation(line: 584, column: 22, scope: !4452)
!4500 = !DILocation(line: 585, column: 27, scope: !4452)
!4501 = !DILocation(line: 586, column: 28, scope: !4452)
!4502 = !DILocation(line: 588, column: 13, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 588, column: 13)
!4504 = !DILocation(line: 588, column: 13, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4503, file: !3, line: 588, column: 13)
!4506 = !DILocation(line: 589, column: 14, scope: !4452)
!4507 = !DILocation(line: 590, column: 26, scope: !4452)
!4508 = !DILocation(line: 596, column: 2, scope: !4452)
!4509 = !DILocation(line: 596, column: 14, scope: !4452)
!4510 = !DILocation(line: 597, column: 2, scope: !4452)
!4511 = !DILocation(line: 597, column: 12, scope: !4452)
!4512 = !DILocation(line: 598, column: 2, scope: !4452)
!4513 = !DILocation(line: 598, column: 6, scope: !4452)
!4514 = !DILocation(line: 600, column: 2, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4516, file: !3, line: 600, column: 2)
!4516 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 600, column: 2)
!4517 = !DILocation(line: 600, column: 2, scope: !4516)
!4518 = !DILocation(line: 604, column: 6, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 604, column: 6)
!4520 = !DILocation(line: 604, column: 12, scope: !4519)
!4521 = !DILocation(line: 604, column: 6, scope: !4452)
!4522 = !DILocation(line: 605, column: 9, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4519, file: !3, line: 604, column: 28)
!4524 = !DILocation(line: 605, column: 15, scope: !4523)
!4525 = !DILocation(line: 605, column: 35, scope: !4523)
!4526 = !DILocation(line: 605, column: 7, scope: !4523)
!4527 = !DILocation(line: 606, column: 7, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4523, file: !3, line: 606, column: 7)
!4529 = !DILocation(line: 606, column: 11, scope: !4528)
!4530 = !DILocation(line: 606, column: 7, scope: !4523)
!4531 = !DILocation(line: 607, column: 18, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 606, column: 16)
!4533 = !DILocation(line: 607, column: 10, scope: !4532)
!4534 = !DILocation(line: 607, column: 8, scope: !4532)
!4535 = !DILocation(line: 608, column: 4, scope: !4532)
!4536 = !DILocation(line: 610, column: 2, scope: !4523)
!4537 = !DILocation(line: 612, column: 8, scope: !4452)
!4538 = !DILocation(line: 612, column: 6, scope: !4452)
!4539 = !DILocation(line: 613, column: 6, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 613, column: 6)
!4541 = !DILocation(line: 613, column: 6, scope: !4452)
!4542 = !DILocation(line: 614, column: 3, scope: !4540)
!4543 = !DILocation(line: 617, column: 2, scope: !4452)
!4544 = !DILocation(line: 618, column: 12, scope: !4452)
!4545 = !DILocation(line: 618, column: 10, scope: !4452)
!4546 = !DILocation(line: 619, column: 2, scope: !4452)
!4547 = !DILocation(line: 621, column: 14, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 621, column: 6)
!4549 = !DILocation(line: 621, column: 7, scope: !4548)
!4550 = !DILocation(line: 621, column: 6, scope: !4452)
!4551 = !DILocation(line: 622, column: 7, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4553, file: !3, line: 622, column: 7)
!4553 = distinct !DILexicalBlock(scope: !4548, file: !3, line: 621, column: 24)
!4554 = !DILocation(line: 622, column: 7, scope: !4553)
!4555 = !DILocation(line: 623, column: 30, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4552, file: !3, line: 622, column: 21)
!4557 = !DILocation(line: 623, column: 39, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4556, file: !3, line: 623, column: 39)
!4559 = !DILocation(line: 623, column: 39, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 623, column: 39)
!4561 = !DILocation(line: 623, column: 10, scope: !4556)
!4562 = !DILocation(line: 623, column: 8, scope: !4556)
!4563 = !DILocation(line: 625, column: 8, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4556, file: !3, line: 625, column: 8)
!4565 = !DILocation(line: 625, column: 12, scope: !4564)
!4566 = !DILocation(line: 625, column: 8, scope: !4556)
!4567 = !DILocation(line: 626, column: 17, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 625, column: 17)
!4569 = !DILocation(line: 626, column: 5, scope: !4568)
!4570 = !DILocation(line: 627, column: 19, scope: !4568)
!4571 = !DILocation(line: 627, column: 11, scope: !4568)
!4572 = !DILocation(line: 627, column: 9, scope: !4568)
!4573 = !DILocation(line: 628, column: 5, scope: !4568)
!4574 = !DILocation(line: 630, column: 3, scope: !4556)
!4575 = !DILocation(line: 632, column: 24, scope: !4553)
!4576 = !DILocation(line: 632, column: 9, scope: !4553)
!4577 = !DILocation(line: 632, column: 7, scope: !4553)
!4578 = !DILocation(line: 633, column: 7, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4553, file: !3, line: 633, column: 7)
!4580 = !DILocation(line: 633, column: 7, scope: !4553)
!4581 = !DILocation(line: 634, column: 19, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4579, file: !3, line: 633, column: 21)
!4583 = !DILocation(line: 634, column: 33, scope: !4582)
!4584 = !DILocation(line: 634, column: 10, scope: !4582)
!4585 = !DILocation(line: 634, column: 8, scope: !4582)
!4586 = !DILocation(line: 635, column: 8, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4582, file: !3, line: 635, column: 8)
!4588 = !DILocation(line: 635, column: 12, scope: !4587)
!4589 = !DILocation(line: 635, column: 8, scope: !4582)
!4590 = !DILocation(line: 636, column: 13, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4587, file: !3, line: 635, column: 17)
!4592 = !DILocation(line: 636, column: 5, scope: !4591)
!4593 = !DILocation(line: 637, column: 19, scope: !4591)
!4594 = !DILocation(line: 637, column: 11, scope: !4591)
!4595 = !DILocation(line: 637, column: 9, scope: !4591)
!4596 = !DILocation(line: 638, column: 5, scope: !4591)
!4597 = !DILocation(line: 640, column: 3, scope: !4582)
!4598 = !DILocation(line: 643, column: 23, scope: !4553)
!4599 = !DILocation(line: 643, column: 3, scope: !4553)
!4600 = !DILocation(line: 644, column: 2, scope: !4553)
!4601 = !DILocation(line: 644, column: 21, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4548, file: !3, line: 644, column: 13)
!4603 = !DILocation(line: 644, column: 13, scope: !4602)
!4604 = !DILocation(line: 644, column: 30, scope: !4602)
!4605 = !DILocation(line: 644, column: 13, scope: !4548)
!4606 = !DILocation(line: 645, column: 18, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4602, file: !3, line: 644, column: 42)
!4608 = !DILocation(line: 645, column: 9, scope: !4607)
!4609 = !DILocation(line: 645, column: 7, scope: !4607)
!4610 = !DILocation(line: 646, column: 2, scope: !4607)
!4611 = !DILocation(line: 649, column: 9, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4602, file: !3, line: 646, column: 10)
!4613 = !DILocation(line: 649, column: 7, scope: !4612)
!4614 = !DILocation(line: 650, column: 8, scope: !4615)
!4615 = distinct !DILexicalBlock(scope: !4612, file: !3, line: 650, column: 7)
!4616 = !DILocation(line: 650, column: 7, scope: !4612)
!4617 = !DILocation(line: 651, column: 4, scope: !4615)
!4618 = !DILocation(line: 653, column: 38, scope: !4612)
!4619 = !DILocation(line: 653, column: 52, scope: !4612)
!4620 = !DILocation(line: 654, column: 11, scope: !4612)
!4621 = !DILocation(line: 654, column: 16, scope: !4612)
!4622 = !DILocation(line: 654, column: 30, scope: !4612)
!4623 = !DILocation(line: 653, column: 9, scope: !4612)
!4624 = !DILocation(line: 653, column: 7, scope: !4612)
!4625 = !DILocation(line: 621, column: 21, scope: !4548)
!4626 = !DILocation(line: 657, column: 1, scope: !4452)
!4627 = !DILocation(line: 658, column: 6, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 658, column: 6)
!4629 = !DILocation(line: 658, column: 12, scope: !4628)
!4630 = !DILocation(line: 658, column: 6, scope: !4452)
!4631 = !DILocation(line: 659, column: 3, scope: !4628)
!4632 = !DILocation(line: 659, column: 9, scope: !4628)
!4633 = !DILocation(line: 659, column: 25, scope: !4628)
!4634 = !DILocation(line: 660, column: 1, scope: !4452)
!4635 = !DILocation(line: 661, column: 2, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4637, file: !3, line: 661, column: 2)
!4637 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 661, column: 2)
!4638 = !DILocation(line: 661, column: 2, scope: !4637)
!4639 = !DILocation(line: 662, column: 9, scope: !4452)
!4640 = !DILocation(line: 663, column: 1, scope: !4452)
!4641 = !DILocation(line: 662, column: 2, scope: !4452)
!4642 = !DISubprogram(name: "strlen", scope: !4643, file: !4643, line: 128, type: !4644, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4643 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4644 = !DISubroutineType(types: !4645)
!4645 = !{!212, !333}
!4646 = distinct !DISubprogram(name: "get_current", scope: !4647, file: !4647, line: 39, type: !4648, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4650)
!4647 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!2582}
!4650 = !{!4651, !4653, !4655}
!4651 = !DILocalVariable(name: "pscr_ret__", scope: !4652, file: !4647, line: 41, type: !2582)
!4652 = distinct !DILexicalBlock(scope: !4646, file: !4647, line: 41, column: 9)
!4653 = !DILocalVariable(name: "__vpp_verify", scope: !4654, file: !4647, line: 41, type: !363)
!4654 = distinct !DILexicalBlock(scope: !4652, file: !4647, line: 41, column: 9)
!4655 = !DILocalVariable(name: "pfo_val__", scope: !4656, file: !4647, line: 41, type: !170)
!4656 = distinct !DILexicalBlock(scope: !4652, file: !4647, line: 41, column: 9)
!4657 = !DILocation(line: 41, column: 9, scope: !4652)
!4658 = !DILocation(line: 41, column: 9, scope: !4654)
!4659 = !DILocation(line: 41, column: 9, scope: !4656)
!4660 = !{i64 2148204301}
!4661 = !DILocation(line: 41, column: 9, scope: !4646)
!4662 = !DILocation(line: 41, column: 2, scope: !4646)
!4663 = distinct !DISubprogram(name: "ERR_PTR", scope: !4664, file: !4664, line: 39, type: !4665, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4667)
!4664 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4665 = !DISubroutineType(types: !4666)
!4666 = !{!122, !720}
!4667 = !{!4668}
!4668 = !DILocalVariable(name: "error", arg: 1, scope: !4663, file: !4664, line: 39, type: !720)
!4669 = !DILocation(line: 39, column: 48, scope: !4663)
!4670 = !DILocation(line: 41, column: 18, scope: !4663)
!4671 = !DILocation(line: 41, column: 9, scope: !4663)
!4672 = !DILocation(line: 41, column: 2, scope: !4663)
!4673 = distinct !DISubprogram(name: "check_cached_key", scope: !3, file: !3, line: 22, type: !4674, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4677)
!4674 = !DISubroutineType(types: !4675)
!4675 = !{!180, !4676}
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4677 = !{!4678}
!4678 = !DILocalVariable(name: "ctx", arg: 1, scope: !4673, file: !3, line: 22, type: !4676)
!4679 = !DILocation(line: 22, column: 68, scope: !4673)
!4680 = !DILocation(line: 33, column: 2, scope: !4673)
!4681 = distinct !DISubprogram(name: "rcu_read_lock", scope: !4682, file: !4682, line: 782, type: !2211, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4682 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!4683 = !DILocation(line: 784, column: 2, scope: !4681)
!4684 = !DILocation(line: 786, column: 2, scope: !4681)
!4685 = !DILocation(line: 786, column: 2, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4681, file: !4682, line: 786, column: 2)
!4687 = !DILocation(line: 787, column: 2, scope: !4681)
!4688 = !DILocation(line: 787, column: 2, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4681, file: !4682, line: 787, column: 2)
!4690 = !DILocation(line: 789, column: 1, scope: !4681)
!4691 = !DISubprogram(name: "search_process_keyrings_rcu", scope: !260, file: !260, line: 147, type: !4692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{!4287, !4676}
!4694 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !4682, file: !4682, line: 813, type: !2211, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4695 = !DILocation(line: 815, column: 2, scope: !4694)
!4696 = !DILocation(line: 815, column: 2, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4694, file: !4682, line: 815, column: 2)
!4698 = !DILocation(line: 818, column: 2, scope: !4694)
!4699 = !DILocation(line: 819, column: 2, scope: !4694)
!4700 = !DILocation(line: 819, column: 2, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4694, file: !4682, line: 819, column: 2)
!4702 = !DILocation(line: 820, column: 1, scope: !4694)
!4703 = distinct !DISubprogram(name: "IS_ERR", scope: !4664, file: !4664, line: 59, type: !4704, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4706)
!4704 = !DISubroutineType(types: !4705)
!4705 = !{!388, !363}
!4706 = !{!4707}
!4707 = !DILocalVariable(name: "ptr", arg: 1, scope: !4703, file: !4664, line: 59, type: !363)
!4708 = !DILocation(line: 59, column: 60, scope: !4703)
!4709 = !DILocation(line: 61, column: 9, scope: !4703)
!4710 = !DILocation(line: 61, column: 2, scope: !4703)
!4711 = !DISubprogram(name: "key_task_permission", scope: !260, file: !260, line: 182, type: !4712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4712 = !DISubroutineType(types: !4713)
!4713 = !{!192, !4714, !123, !94}
!4714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4287)
!4715 = distinct !DISubprogram(name: "key_ref_put", scope: !95, file: !95, line: 317, type: !4716, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4718)
!4716 = !DISubroutineType(types: !4717)
!4717 = !{null, !4287}
!4718 = !{!4719}
!4719 = !DILocalVariable(name: "key_ref", arg: 1, scope: !4715, file: !95, line: 317, type: !4287)
!4720 = !DILocation(line: 317, column: 42, scope: !4715)
!4721 = !DILocation(line: 319, column: 25, scope: !4715)
!4722 = !DILocation(line: 319, column: 10, scope: !4715)
!4723 = !DILocation(line: 319, column: 2, scope: !4715)
!4724 = !DILocation(line: 320, column: 1, scope: !4715)
!4725 = distinct !DISubprogram(name: "key_ref_to_ptr", scope: !95, file: !95, line: 161, type: !4726, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4728)
!4726 = !DISubroutineType(types: !4727)
!4727 = !{!180, !4714}
!4728 = !{!4729}
!4729 = !DILocalVariable(name: "key_ref", arg: 1, scope: !4725, file: !95, line: 161, type: !4714)
!4730 = !DILocation(line: 161, column: 58, scope: !4725)
!4731 = !DILocation(line: 163, column: 41, scope: !4725)
!4732 = !DILocation(line: 163, column: 25, scope: !4725)
!4733 = !DILocation(line: 163, column: 49, scope: !4725)
!4734 = !DILocation(line: 163, column: 9, scope: !4725)
!4735 = !DILocation(line: 163, column: 2, scope: !4725)
!4736 = !DISubprogram(name: "key_link", scope: !95, file: !95, line: 409, type: !4737, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4737 = !DISubroutineType(types: !4738)
!4738 = !{!192, !180, !180}
!4739 = !DISubprogram(name: "key_put", scope: !95, file: !95, line: 302, type: !403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4740 = distinct !DISubprogram(name: "cache_requested_key", scope: !3, file: !3, line: 36, type: !403, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4741)
!4741 = !{!4742}
!4742 = !DILocalVariable(name: "key", arg: 1, scope: !4740, file: !3, line: 36, type: !180)
!4743 = !DILocation(line: 36, column: 45, scope: !4740)
!4744 = !DILocation(line: 48, column: 1, scope: !4740)
!4745 = distinct !DISubprogram(name: "PTR_ERR", scope: !4664, file: !4664, line: 49, type: !4746, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4748)
!4746 = !DISubroutineType(types: !4747)
!4747 = !{!720, !363}
!4748 = !{!4749}
!4749 = !DILocalVariable(name: "ptr", arg: 1, scope: !4745, file: !4664, line: 49, type: !363)
!4750 = !DILocation(line: 49, column: 61, scope: !4745)
!4751 = !DILocation(line: 51, column: 16, scope: !4745)
!4752 = !DILocation(line: 51, column: 9, scope: !4745)
!4753 = !DILocation(line: 51, column: 2, scope: !4745)
!4754 = distinct !DISubprogram(name: "ERR_CAST", scope: !4664, file: !4664, line: 82, type: !4755, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4757)
!4755 = !DISubroutineType(types: !4756)
!4756 = !{!122, !363}
!4757 = !{!4758}
!4758 = !DILocalVariable(name: "ptr", arg: 1, scope: !4754, file: !4664, line: 82, type: !363)
!4759 = !DILocation(line: 82, column: 64, scope: !4754)
!4760 = !DILocation(line: 85, column: 18, scope: !4754)
!4761 = !DILocation(line: 85, column: 2, scope: !4754)
!4762 = distinct !DISubprogram(name: "construct_key_and_link", scope: !3, file: !3, line: 489, type: !4763, scopeLine: 495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4765)
!4763 = !DISubroutineType(types: !4764)
!4764 = !{!180, !4676, !333, !336, !122, !180, !212}
!4765 = !{!4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777}
!4766 = !DILocalVariable(name: "ctx", arg: 1, scope: !4762, file: !3, line: 489, type: !4676)
!4767 = !DILocalVariable(name: "callout_info", arg: 2, scope: !4762, file: !3, line: 490, type: !333)
!4768 = !DILocalVariable(name: "callout_len", arg: 3, scope: !4762, file: !3, line: 491, type: !336)
!4769 = !DILocalVariable(name: "aux", arg: 4, scope: !4762, file: !3, line: 492, type: !122)
!4770 = !DILocalVariable(name: "dest_keyring", arg: 5, scope: !4762, file: !3, line: 493, type: !180)
!4771 = !DILocalVariable(name: "flags", arg: 6, scope: !4762, file: !3, line: 494, type: !212)
!4772 = !DILocalVariable(name: "user", scope: !4762, file: !3, line: 496, type: !258)
!4773 = !DILocalVariable(name: "key", scope: !4762, file: !3, line: 497, type: !180)
!4774 = !DILocalVariable(name: "ret", scope: !4762, file: !3, line: 498, type: !192)
!4775 = !DILabel(scope: !4762, name: "construction_failed", file: !3, line: 535)
!4776 = !DILabel(scope: !4762, name: "error_put_dest_keyring", file: !3, line: 538)
!4777 = !DILabel(scope: !4762, name: "error", file: !3, line: 540)
!4778 = !DILocation(line: 489, column: 74, scope: !4762)
!4779 = !DILocation(line: 490, column: 20, scope: !4762)
!4780 = !DILocation(line: 491, column: 15, scope: !4762)
!4781 = !DILocation(line: 492, column: 14, scope: !4762)
!4782 = !DILocation(line: 493, column: 20, scope: !4762)
!4783 = !DILocation(line: 494, column: 22, scope: !4762)
!4784 = !DILocation(line: 496, column: 2, scope: !4762)
!4785 = !DILocation(line: 496, column: 19, scope: !4762)
!4786 = !DILocation(line: 497, column: 2, scope: !4762)
!4787 = !DILocation(line: 497, column: 14, scope: !4762)
!4788 = !DILocation(line: 498, column: 2, scope: !4762)
!4789 = !DILocation(line: 498, column: 6, scope: !4762)
!4790 = !DILocation(line: 500, column: 2, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4792, file: !3, line: 500, column: 2)
!4792 = distinct !DILexicalBlock(scope: !4762, file: !3, line: 500, column: 2)
!4793 = !DILocation(line: 500, column: 2, scope: !4792)
!4794 = !DILocation(line: 502, column: 6, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4762, file: !3, line: 502, column: 6)
!4796 = !DILocation(line: 502, column: 11, scope: !4795)
!4797 = !DILocation(line: 502, column: 21, scope: !4795)
!4798 = !DILocation(line: 502, column: 26, scope: !4795)
!4799 = !DILocation(line: 502, column: 6, scope: !4762)
!4800 = !DILocation(line: 503, column: 10, scope: !4795)
!4801 = !DILocation(line: 503, column: 3, scope: !4795)
!4802 = !DILocation(line: 505, column: 8, scope: !4762)
!4803 = !DILocation(line: 505, column: 6, scope: !4762)
!4804 = !DILocation(line: 506, column: 6, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4762, file: !3, line: 506, column: 6)
!4806 = !DILocation(line: 506, column: 6, scope: !4762)
!4807 = !DILocation(line: 507, column: 3, scope: !4805)
!4808 = !DILocation(line: 509, column: 25, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 509, column: 25)
!4810 = distinct !DILexicalBlock(scope: !4762, file: !3, line: 509, column: 25)
!4811 = !DILocation(line: 509, column: 25, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4809, file: !3, line: 509, column: 25)
!4813 = !DILocation(line: 509, column: 25, scope: !4810)
!4814 = !DILocation(line: 509, column: 9, scope: !4762)
!4815 = !DILocation(line: 509, column: 7, scope: !4762)
!4816 = !DILocation(line: 510, column: 7, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4762, file: !3, line: 510, column: 6)
!4818 = !DILocation(line: 510, column: 6, scope: !4762)
!4819 = !DILocation(line: 511, column: 7, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 510, column: 13)
!4821 = !DILocation(line: 512, column: 3, scope: !4820)
!4822 = !DILocation(line: 515, column: 28, scope: !4762)
!4823 = !DILocation(line: 515, column: 33, scope: !4762)
!4824 = !DILocation(line: 515, column: 47, scope: !4762)
!4825 = !DILocation(line: 515, column: 54, scope: !4762)
!4826 = !DILocation(line: 515, column: 8, scope: !4762)
!4827 = !DILocation(line: 515, column: 6, scope: !4762)
!4828 = !DILocation(line: 516, column: 15, scope: !4762)
!4829 = !DILocation(line: 516, column: 2, scope: !4762)
!4830 = !DILocation(line: 518, column: 6, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4762, file: !3, line: 518, column: 6)
!4832 = !DILocation(line: 518, column: 10, scope: !4831)
!4833 = !DILocation(line: 518, column: 6, scope: !4762)
!4834 = !DILocation(line: 519, column: 23, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4831, file: !3, line: 518, column: 16)
!4836 = !DILocation(line: 519, column: 28, scope: !4835)
!4837 = !DILocation(line: 519, column: 42, scope: !4835)
!4838 = !DILocation(line: 519, column: 55, scope: !4835)
!4839 = !DILocation(line: 520, column: 9, scope: !4835)
!4840 = !DILocation(line: 519, column: 9, scope: !4835)
!4841 = !DILocation(line: 519, column: 7, scope: !4835)
!4842 = !DILocation(line: 521, column: 7, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4835, file: !3, line: 521, column: 7)
!4844 = !DILocation(line: 521, column: 11, scope: !4843)
!4845 = !DILocation(line: 521, column: 7, scope: !4835)
!4846 = !DILocation(line: 522, column: 4, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !4848, file: !3, line: 522, column: 4)
!4848 = distinct !DILexicalBlock(scope: !4849, file: !3, line: 522, column: 4)
!4849 = distinct !DILexicalBlock(scope: !4843, file: !3, line: 521, column: 16)
!4850 = !DILocation(line: 522, column: 4, scope: !4848)
!4851 = !DILocation(line: 523, column: 4, scope: !4849)
!4852 = !DILocation(line: 525, column: 2, scope: !4835)
!4853 = !DILocation(line: 525, column: 13, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4831, file: !3, line: 525, column: 13)
!4855 = !DILocation(line: 525, column: 17, scope: !4854)
!4856 = !DILocation(line: 525, column: 13, scope: !4831)
!4857 = !DILocation(line: 526, column: 7, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4854, file: !3, line: 525, column: 34)
!4859 = !DILocation(line: 527, column: 2, scope: !4858)
!4860 = !DILocation(line: 528, column: 3, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4854, file: !3, line: 527, column: 9)
!4862 = !DILocation(line: 531, column: 10, scope: !4762)
!4863 = !DILocation(line: 531, column: 2, scope: !4762)
!4864 = !DILocation(line: 532, column: 2, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4866, file: !3, line: 532, column: 2)
!4866 = distinct !DILexicalBlock(scope: !4762, file: !3, line: 532, column: 2)
!4867 = !DILocation(line: 532, column: 2, scope: !4866)
!4868 = !DILocation(line: 533, column: 9, scope: !4762)
!4869 = !DILocation(line: 533, column: 2, scope: !4762)
!4870 = !DILocation(line: 535, column: 1, scope: !4762)
!4871 = !DILocation(line: 536, column: 22, scope: !4762)
!4872 = !DILocation(line: 536, column: 2, scope: !4762)
!4873 = !DILocation(line: 537, column: 10, scope: !4762)
!4874 = !DILocation(line: 537, column: 2, scope: !4762)
!4875 = !DILocation(line: 538, column: 1, scope: !4762)
!4876 = !DILocation(line: 539, column: 10, scope: !4762)
!4877 = !DILocation(line: 539, column: 2, scope: !4762)
!4878 = !DILocation(line: 540, column: 1, scope: !4762)
!4879 = !DILocation(line: 541, column: 2, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4881, file: !3, line: 541, column: 2)
!4881 = distinct !DILexicalBlock(scope: !4762, file: !3, line: 541, column: 2)
!4882 = !DILocation(line: 541, column: 2, scope: !4881)
!4883 = !DILocation(line: 542, column: 17, scope: !4762)
!4884 = !DILocation(line: 542, column: 9, scope: !4762)
!4885 = !DILocation(line: 542, column: 2, scope: !4762)
!4886 = !DILocation(line: 543, column: 1, scope: !4762)
!4887 = distinct !DISubprogram(name: "wait_for_key_construction", scope: !3, file: !3, line: 676, type: !4888, scopeLine: 677, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4890)
!4888 = !DISubroutineType(types: !4889)
!4889 = !{!192, !180, !388}
!4890 = !{!4891, !4892, !4893}
!4891 = !DILocalVariable(name: "key", arg: 1, scope: !4887, file: !3, line: 676, type: !180)
!4892 = !DILocalVariable(name: "intr", arg: 2, scope: !4887, file: !3, line: 676, type: !388)
!4893 = !DILocalVariable(name: "ret", scope: !4887, file: !3, line: 678, type: !192)
!4894 = !DILocation(line: 676, column: 43, scope: !4887)
!4895 = !DILocation(line: 676, column: 53, scope: !4887)
!4896 = !DILocation(line: 678, column: 2, scope: !4887)
!4897 = !DILocation(line: 678, column: 6, scope: !4887)
!4898 = !DILocation(line: 680, column: 21, scope: !4887)
!4899 = !DILocation(line: 680, column: 26, scope: !4887)
!4900 = !DILocation(line: 681, column: 6, scope: !4887)
!4901 = !{i8 0, i8 2}
!4902 = !DILocation(line: 680, column: 8, scope: !4887)
!4903 = !DILocation(line: 680, column: 6, scope: !4887)
!4904 = !DILocation(line: 682, column: 6, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4887, file: !3, line: 682, column: 6)
!4906 = !DILocation(line: 682, column: 6, scope: !4887)
!4907 = !DILocation(line: 683, column: 3, scope: !4905)
!4908 = !DILocation(line: 684, column: 23, scope: !4887)
!4909 = !DILocation(line: 684, column: 8, scope: !4887)
!4910 = !DILocation(line: 684, column: 6, scope: !4887)
!4911 = !DILocation(line: 685, column: 6, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4887, file: !3, line: 685, column: 6)
!4913 = !DILocation(line: 685, column: 10, scope: !4912)
!4914 = !DILocation(line: 685, column: 6, scope: !4887)
!4915 = !DILocation(line: 686, column: 10, scope: !4912)
!4916 = !DILocation(line: 686, column: 3, scope: !4912)
!4917 = !DILocation(line: 687, column: 22, scope: !4887)
!4918 = !DILocation(line: 687, column: 9, scope: !4887)
!4919 = !DILocation(line: 687, column: 2, scope: !4887)
!4920 = !DILocation(line: 688, column: 1, scope: !4887)
!4921 = distinct !DISubprogram(name: "wait_on_bit", scope: !4922, file: !4922, line: 71, type: !4923, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4925)
!4922 = !DIFile(filename: "./include/linux/wait_bit.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef5555205db8da6167c7f65e9d04af17")
!4923 = !DISubroutineType(types: !4924)
!4924 = !{!192, !2197, !192, !7}
!4925 = !{!4926, !4927, !4928}
!4926 = !DILocalVariable(name: "word", arg: 1, scope: !4921, file: !4922, line: 71, type: !2197)
!4927 = !DILocalVariable(name: "bit", arg: 2, scope: !4921, file: !4922, line: 71, type: !192)
!4928 = !DILocalVariable(name: "mode", arg: 3, scope: !4921, file: !4922, line: 71, type: !7)
!4929 = !DILocation(line: 71, column: 28, scope: !4921)
!4930 = !DILocation(line: 71, column: 38, scope: !4921)
!4931 = !DILocation(line: 71, column: 52, scope: !4921)
!4932 = !DILocation(line: 73, column: 2, scope: !4921)
!4933 = !DILocation(line: 73, column: 2, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4921, file: !4922, line: 73, column: 2)
!4935 = !DILocation(line: 74, column: 7, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4921, file: !4922, line: 74, column: 6)
!4937 = !DILocation(line: 74, column: 6, scope: !4921)
!4938 = !DILocation(line: 75, column: 3, scope: !4936)
!4939 = !DILocation(line: 76, column: 33, scope: !4921)
!4940 = !DILocation(line: 76, column: 39, scope: !4921)
!4941 = !DILocation(line: 78, column: 12, scope: !4921)
!4942 = !DILocation(line: 76, column: 9, scope: !4921)
!4943 = !DILocation(line: 76, column: 2, scope: !4921)
!4944 = !DILocation(line: 79, column: 1, scope: !4921)
!4945 = distinct !DISubprogram(name: "key_read_state", scope: !95, file: !95, line: 458, type: !4946, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4948)
!4946 = !DISubroutineType(types: !4947)
!4947 = !{!305, !390}
!4948 = !{!4949, !4950}
!4949 = !DILocalVariable(name: "key", arg: 1, scope: !4945, file: !95, line: 458, type: !390)
!4950 = !DILocalVariable(name: "___p1", scope: !4951, file: !95, line: 461, type: !4952)
!4951 = distinct !DILexicalBlock(scope: !4945, file: !95, line: 461, column: 9)
!4952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!4953 = !DILocation(line: 458, column: 54, scope: !4945)
!4954 = !DILocation(line: 461, column: 9, scope: !4951)
!4955 = !DILocation(line: 461, column: 9, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4951, file: !95, line: 461, column: 9)
!4957 = !DILocation(line: 461, column: 9, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4956, file: !95, line: 461, column: 9)
!4959 = !DILocation(line: 461, column: 9, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4951, file: !95, line: 461, column: 9)
!4961 = !{i64 2153577644}
!4962 = !DILocation(line: 461, column: 9, scope: !4945)
!4963 = !DILocation(line: 461, column: 2, scope: !4945)
!4964 = !DISubprogram(name: "key_validate", scope: !95, file: !95, line: 387, type: !4965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4965 = !DISubroutineType(types: !4966)
!4966 = !{!192, !390}
!4967 = distinct !DISubprogram(name: "request_key_tag", scope: !3, file: !3, line: 706, type: !4968, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4970)
!4968 = !DISubroutineType(types: !4969)
!4969 = !{!180, !328, !333, !4208, !333}
!4970 = !{!4971, !4972, !4973, !4974, !4975, !4976, !4977}
!4971 = !DILocalVariable(name: "type", arg: 1, scope: !4967, file: !3, line: 706, type: !328)
!4972 = !DILocalVariable(name: "description", arg: 2, scope: !4967, file: !3, line: 707, type: !333)
!4973 = !DILocalVariable(name: "domain_tag", arg: 3, scope: !4967, file: !3, line: 708, type: !4208)
!4974 = !DILocalVariable(name: "callout_info", arg: 4, scope: !4967, file: !3, line: 709, type: !333)
!4975 = !DILocalVariable(name: "key", scope: !4967, file: !3, line: 711, type: !180)
!4976 = !DILocalVariable(name: "callout_len", scope: !4967, file: !3, line: 712, type: !336)
!4977 = !DILocalVariable(name: "ret", scope: !4967, file: !3, line: 713, type: !192)
!4978 = !DILocation(line: 706, column: 46, scope: !4967)
!4979 = !DILocation(line: 707, column: 20, scope: !4967)
!4980 = !DILocation(line: 708, column: 24, scope: !4967)
!4981 = !DILocation(line: 709, column: 20, scope: !4967)
!4982 = !DILocation(line: 711, column: 2, scope: !4967)
!4983 = !DILocation(line: 711, column: 14, scope: !4967)
!4984 = !DILocation(line: 712, column: 2, scope: !4967)
!4985 = !DILocation(line: 712, column: 9, scope: !4967)
!4986 = !DILocation(line: 713, column: 2, scope: !4967)
!4987 = !DILocation(line: 713, column: 6, scope: !4967)
!4988 = !DILocation(line: 715, column: 6, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4967, file: !3, line: 715, column: 6)
!4990 = !DILocation(line: 715, column: 6, scope: !4967)
!4991 = !DILocation(line: 716, column: 24, scope: !4989)
!4992 = !DILocation(line: 716, column: 17, scope: !4989)
!4993 = !DILocation(line: 716, column: 15, scope: !4989)
!4994 = !DILocation(line: 716, column: 3, scope: !4989)
!4995 = !DILocation(line: 717, column: 29, scope: !4967)
!4996 = !DILocation(line: 717, column: 35, scope: !4967)
!4997 = !DILocation(line: 717, column: 48, scope: !4967)
!4998 = !DILocation(line: 718, column: 8, scope: !4967)
!4999 = !DILocation(line: 718, column: 22, scope: !4967)
!5000 = !DILocation(line: 717, column: 8, scope: !4967)
!5001 = !DILocation(line: 717, column: 6, scope: !4967)
!5002 = !DILocation(line: 720, column: 14, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !4967, file: !3, line: 720, column: 6)
!5004 = !DILocation(line: 720, column: 7, scope: !5003)
!5005 = !DILocation(line: 720, column: 6, scope: !4967)
!5006 = !DILocation(line: 721, column: 35, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !5003, file: !3, line: 720, column: 20)
!5008 = !DILocation(line: 721, column: 9, scope: !5007)
!5009 = !DILocation(line: 721, column: 7, scope: !5007)
!5010 = !DILocation(line: 722, column: 7, scope: !5011)
!5011 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 722, column: 7)
!5012 = !DILocation(line: 722, column: 11, scope: !5011)
!5013 = !DILocation(line: 722, column: 7, scope: !5007)
!5014 = !DILocation(line: 723, column: 12, scope: !5015)
!5015 = distinct !DILexicalBlock(scope: !5011, file: !3, line: 722, column: 16)
!5016 = !DILocation(line: 723, column: 4, scope: !5015)
!5017 = !DILocation(line: 724, column: 19, scope: !5015)
!5018 = !DILocation(line: 724, column: 11, scope: !5015)
!5019 = !DILocation(line: 724, column: 4, scope: !5015)
!5020 = !DILocation(line: 726, column: 2, scope: !5007)
!5021 = !DILocation(line: 727, column: 9, scope: !4967)
!5022 = !DILocation(line: 727, column: 2, scope: !4967)
!5023 = !DILocation(line: 728, column: 1, scope: !4967)
!5024 = distinct !DISubprogram(name: "request_key_with_auxdata", scope: !3, file: !3, line: 746, type: !5025, scopeLine: 752, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5027)
!5025 = !DISubroutineType(types: !5026)
!5026 = !{!180, !328, !333, !4208, !363, !336, !122}
!5027 = !{!5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035}
!5028 = !DILocalVariable(name: "type", arg: 1, scope: !5024, file: !3, line: 746, type: !328)
!5029 = !DILocalVariable(name: "description", arg: 2, scope: !5024, file: !3, line: 747, type: !333)
!5030 = !DILocalVariable(name: "domain_tag", arg: 3, scope: !5024, file: !3, line: 748, type: !4208)
!5031 = !DILocalVariable(name: "callout_info", arg: 4, scope: !5024, file: !3, line: 749, type: !363)
!5032 = !DILocalVariable(name: "callout_len", arg: 5, scope: !5024, file: !3, line: 750, type: !336)
!5033 = !DILocalVariable(name: "aux", arg: 6, scope: !5024, file: !3, line: 751, type: !122)
!5034 = !DILocalVariable(name: "key", scope: !5024, file: !3, line: 753, type: !180)
!5035 = !DILocalVariable(name: "ret", scope: !5024, file: !3, line: 754, type: !192)
!5036 = !DILocation(line: 746, column: 55, scope: !5024)
!5037 = !DILocation(line: 747, column: 22, scope: !5024)
!5038 = !DILocation(line: 748, column: 26, scope: !5024)
!5039 = !DILocation(line: 749, column: 22, scope: !5024)
!5040 = !DILocation(line: 750, column: 17, scope: !5024)
!5041 = !DILocation(line: 751, column: 16, scope: !5024)
!5042 = !DILocation(line: 753, column: 2, scope: !5024)
!5043 = !DILocation(line: 753, column: 14, scope: !5024)
!5044 = !DILocation(line: 754, column: 2, scope: !5024)
!5045 = !DILocation(line: 754, column: 6, scope: !5024)
!5046 = !DILocation(line: 756, column: 29, scope: !5024)
!5047 = !DILocation(line: 756, column: 35, scope: !5024)
!5048 = !DILocation(line: 756, column: 48, scope: !5024)
!5049 = !DILocation(line: 757, column: 8, scope: !5024)
!5050 = !DILocation(line: 757, column: 22, scope: !5024)
!5051 = !DILocation(line: 758, column: 8, scope: !5024)
!5052 = !DILocation(line: 756, column: 8, scope: !5024)
!5053 = !DILocation(line: 756, column: 6, scope: !5024)
!5054 = !DILocation(line: 759, column: 14, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5024, file: !3, line: 759, column: 6)
!5056 = !DILocation(line: 759, column: 7, scope: !5055)
!5057 = !DILocation(line: 759, column: 6, scope: !5024)
!5058 = !DILocation(line: 760, column: 35, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !5055, file: !3, line: 759, column: 20)
!5060 = !DILocation(line: 760, column: 9, scope: !5059)
!5061 = !DILocation(line: 760, column: 7, scope: !5059)
!5062 = !DILocation(line: 761, column: 7, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5059, file: !3, line: 761, column: 7)
!5064 = !DILocation(line: 761, column: 11, scope: !5063)
!5065 = !DILocation(line: 761, column: 7, scope: !5059)
!5066 = !DILocation(line: 762, column: 12, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 761, column: 16)
!5068 = !DILocation(line: 762, column: 4, scope: !5067)
!5069 = !DILocation(line: 763, column: 19, scope: !5067)
!5070 = !DILocation(line: 763, column: 11, scope: !5067)
!5071 = !DILocation(line: 763, column: 4, scope: !5067)
!5072 = !DILocation(line: 765, column: 2, scope: !5059)
!5073 = !DILocation(line: 766, column: 9, scope: !5024)
!5074 = !DILocation(line: 766, column: 2, scope: !5024)
!5075 = !DILocation(line: 767, column: 1, scope: !5024)
!5076 = distinct !DISubprogram(name: "request_key_rcu", scope: !3, file: !3, line: 782, type: !5077, scopeLine: 785, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5079)
!5077 = !DISubroutineType(types: !5078)
!5078 = !{!180, !328, !333, !4208}
!5079 = !{!5080, !5081, !5082, !5083, !5084, !5085}
!5080 = !DILocalVariable(name: "type", arg: 1, scope: !5076, file: !3, line: 782, type: !328)
!5081 = !DILocalVariable(name: "description", arg: 2, scope: !5076, file: !3, line: 783, type: !333)
!5082 = !DILocalVariable(name: "domain_tag", arg: 3, scope: !5076, file: !3, line: 784, type: !4208)
!5083 = !DILocalVariable(name: "ctx", scope: !5076, file: !3, line: 786, type: !4465)
!5084 = !DILocalVariable(name: "key", scope: !5076, file: !3, line: 798, type: !180)
!5085 = !DILocalVariable(name: "key_ref", scope: !5076, file: !3, line: 799, type: !4287)
!5086 = !DILocation(line: 782, column: 46, scope: !5076)
!5087 = !DILocation(line: 783, column: 20, scope: !5076)
!5088 = !DILocation(line: 784, column: 24, scope: !5076)
!5089 = !DILocation(line: 786, column: 2, scope: !5076)
!5090 = !DILocation(line: 786, column: 32, scope: !5076)
!5091 = !DILocation(line: 786, column: 38, scope: !5076)
!5092 = !DILocation(line: 787, column: 13, scope: !5076)
!5093 = !DILocation(line: 790, column: 13, scope: !5076)
!5094 = !DILocation(line: 790, column: 32, scope: !5076)
!5095 = !DILocation(line: 790, column: 25, scope: !5076)
!5096 = !DILocation(line: 787, column: 22, scope: !5076)
!5097 = !DILocation(line: 788, column: 27, scope: !5076)
!5098 = !DILocation(line: 789, column: 28, scope: !5076)
!5099 = !DILocation(line: 791, column: 13, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !5076, file: !3, line: 791, column: 13)
!5101 = !DILocation(line: 791, column: 13, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 791, column: 13)
!5103 = !DILocation(line: 792, column: 14, scope: !5076)
!5104 = !DILocation(line: 793, column: 26, scope: !5076)
!5105 = !DILocation(line: 798, column: 2, scope: !5076)
!5106 = !DILocation(line: 798, column: 14, scope: !5076)
!5107 = !DILocation(line: 799, column: 2, scope: !5076)
!5108 = !DILocation(line: 799, column: 12, scope: !5076)
!5109 = !DILocation(line: 801, column: 2, scope: !5110)
!5110 = distinct !DILexicalBlock(scope: !5111, file: !3, line: 801, column: 2)
!5111 = distinct !DILexicalBlock(scope: !5076, file: !3, line: 801, column: 2)
!5112 = !DILocation(line: 801, column: 2, scope: !5111)
!5113 = !DILocation(line: 803, column: 8, scope: !5076)
!5114 = !DILocation(line: 803, column: 6, scope: !5076)
!5115 = !DILocation(line: 804, column: 6, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5076, file: !3, line: 804, column: 6)
!5117 = !DILocation(line: 804, column: 6, scope: !5076)
!5118 = !DILocation(line: 805, column: 10, scope: !5116)
!5119 = !DILocation(line: 805, column: 3, scope: !5116)
!5120 = !DILocation(line: 808, column: 12, scope: !5076)
!5121 = !DILocation(line: 808, column: 10, scope: !5076)
!5122 = !DILocation(line: 809, column: 13, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5076, file: !3, line: 809, column: 6)
!5124 = !DILocation(line: 809, column: 6, scope: !5123)
!5125 = !DILocation(line: 809, column: 6, scope: !5076)
!5126 = !DILocation(line: 810, column: 18, scope: !5127)
!5127 = distinct !DILexicalBlock(scope: !5123, file: !3, line: 809, column: 23)
!5128 = !DILocation(line: 810, column: 9, scope: !5127)
!5129 = !DILocation(line: 810, column: 7, scope: !5127)
!5130 = !DILocation(line: 811, column: 15, scope: !5131)
!5131 = distinct !DILexicalBlock(scope: !5127, file: !3, line: 811, column: 7)
!5132 = !DILocation(line: 811, column: 7, scope: !5131)
!5133 = !DILocation(line: 811, column: 24, scope: !5131)
!5134 = !DILocation(line: 811, column: 7, scope: !5127)
!5135 = !DILocation(line: 812, column: 10, scope: !5131)
!5136 = !DILocation(line: 812, column: 8, scope: !5131)
!5137 = !DILocation(line: 812, column: 4, scope: !5131)
!5138 = !DILocation(line: 813, column: 2, scope: !5127)
!5139 = !DILocation(line: 814, column: 24, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5123, file: !3, line: 813, column: 9)
!5141 = !DILocation(line: 814, column: 9, scope: !5140)
!5142 = !DILocation(line: 814, column: 7, scope: !5140)
!5143 = !DILocation(line: 815, column: 23, scope: !5140)
!5144 = !DILocation(line: 815, column: 3, scope: !5140)
!5145 = !DILocation(line: 818, column: 2, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 818, column: 2)
!5147 = distinct !DILexicalBlock(scope: !5076, file: !3, line: 818, column: 2)
!5148 = !DILocation(line: 818, column: 2, scope: !5147)
!5149 = !DILocation(line: 819, column: 9, scope: !5076)
!5150 = !DILocation(line: 819, column: 2, scope: !5076)
!5151 = !DILocation(line: 820, column: 1, scope: !5076)
!5152 = !DISubprogram(name: "key_reject_and_link", scope: !330, file: !330, line: 176, type: !5153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5153 = !DISubroutineType(types: !5154)
!5154 = !{!192, !180, !7, !7, !180, !180}
!5155 = !DISubprogram(name: "__rcu_read_lock", scope: !4682, file: !4682, line: 74, type: !2211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5156 = !DISubprogram(name: "__rcu_read_unlock", scope: !4682, file: !4682, line: 75, type: !2211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5157 = distinct !DISubprogram(name: "construct_get_dest_keyring", scope: !3, file: !3, line: 265, type: !5158, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5161)
!5158 = !DISubroutineType(types: !5159)
!5159 = !{!192, !5160}
!5160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!5161 = !{!5162, !5163, !5164, !5165, !5166, !5167, !5168}
!5162 = !DILocalVariable(name: "_dest_keyring", arg: 1, scope: !5157, file: !3, line: 265, type: !5160)
!5163 = !DILocalVariable(name: "rka", scope: !5157, file: !3, line: 267, type: !4326)
!5164 = !DILocalVariable(name: "cred", scope: !5157, file: !3, line: 268, type: !123)
!5165 = !DILocalVariable(name: "dest_keyring", scope: !5157, file: !3, line: 269, type: !180)
!5166 = !DILocalVariable(name: "authkey", scope: !5157, file: !3, line: 269, type: !180)
!5167 = !DILocalVariable(name: "ret", scope: !5157, file: !3, line: 270, type: !192)
!5168 = !DILocalVariable(name: "do_perm_check", scope: !5169, file: !3, line: 279, type: !388)
!5169 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 278, column: 9)
!5170 = distinct !DILexicalBlock(scope: !5157, file: !3, line: 275, column: 6)
!5171 = !DILocation(line: 265, column: 52, scope: !5157)
!5172 = !DILocation(line: 267, column: 2, scope: !5157)
!5173 = !DILocation(line: 267, column: 27, scope: !5157)
!5174 = !DILocation(line: 268, column: 2, scope: !5157)
!5175 = !DILocation(line: 268, column: 21, scope: !5157)
!5176 = !DILocation(line: 268, column: 28, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5157, file: !3, line: 268, column: 28)
!5178 = !DILocation(line: 268, column: 28, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5177, file: !3, line: 268, column: 28)
!5180 = !DILocation(line: 269, column: 2, scope: !5157)
!5181 = !DILocation(line: 269, column: 14, scope: !5157)
!5182 = !DILocation(line: 269, column: 30, scope: !5157)
!5183 = !DILocation(line: 269, column: 29, scope: !5157)
!5184 = !DILocation(line: 269, column: 46, scope: !5157)
!5185 = !DILocation(line: 270, column: 2, scope: !5157)
!5186 = !DILocation(line: 270, column: 6, scope: !5157)
!5187 = !DILocation(line: 272, column: 2, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5189, file: !3, line: 272, column: 2)
!5189 = distinct !DILexicalBlock(scope: !5157, file: !3, line: 272, column: 2)
!5190 = !DILocation(line: 272, column: 2, scope: !5189)
!5191 = !DILocation(line: 275, column: 6, scope: !5170)
!5192 = !DILocation(line: 275, column: 6, scope: !5157)
!5193 = !DILocation(line: 277, column: 11, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 275, column: 20)
!5195 = !DILocation(line: 277, column: 3, scope: !5194)
!5196 = !DILocation(line: 278, column: 2, scope: !5194)
!5197 = !DILocation(line: 279, column: 3, scope: !5169)
!5198 = !DILocation(line: 279, column: 8, scope: !5169)
!5199 = !DILocation(line: 283, column: 11, scope: !5169)
!5200 = !DILocation(line: 283, column: 17, scope: !5169)
!5201 = !DILocation(line: 283, column: 3, scope: !5169)
!5202 = !DILocation(line: 286, column: 8, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5204, file: !3, line: 286, column: 8)
!5204 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 283, column: 30)
!5205 = !DILocation(line: 286, column: 14, scope: !5203)
!5206 = !DILocation(line: 286, column: 8, scope: !5204)
!5207 = !DILocation(line: 287, column: 15, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5203, file: !3, line: 286, column: 32)
!5209 = !DILocation(line: 287, column: 21, scope: !5208)
!5210 = !DILocation(line: 287, column: 13, scope: !5208)
!5211 = !DILocation(line: 288, column: 16, scope: !5208)
!5212 = !DILocation(line: 288, column: 25, scope: !5208)
!5213 = !DILocation(line: 288, column: 5, scope: !5208)
!5214 = !DILocation(line: 289, column: 32, scope: !5208)
!5215 = !DILocation(line: 289, column: 11, scope: !5208)
!5216 = !DILocation(line: 289, column: 9, scope: !5208)
!5217 = !DILocation(line: 290, column: 10, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5208, file: !3, line: 290, column: 9)
!5219 = !DILocation(line: 290, column: 9, scope: !5208)
!5220 = !DILocation(line: 293, column: 15, scope: !5218)
!5221 = !DILocation(line: 293, column: 20, scope: !5218)
!5222 = !DILocation(line: 293, column: 7, scope: !5218)
!5223 = !DILocation(line: 292, column: 19, scope: !5218)
!5224 = !DILocation(line: 292, column: 6, scope: !5218)
!5225 = !DILocation(line: 294, column: 14, scope: !5208)
!5226 = !DILocation(line: 294, column: 23, scope: !5208)
!5227 = !DILocation(line: 294, column: 5, scope: !5208)
!5228 = !DILocation(line: 295, column: 9, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5208, file: !3, line: 295, column: 9)
!5230 = !DILocation(line: 295, column: 9, scope: !5208)
!5231 = !DILocation(line: 296, column: 20, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5229, file: !3, line: 295, column: 23)
!5233 = !DILocation(line: 297, column: 6, scope: !5232)
!5234 = !DILocation(line: 299, column: 4, scope: !5208)
!5235 = !DILocation(line: 303, column: 27, scope: !5204)
!5236 = !DILocation(line: 303, column: 33, scope: !5204)
!5237 = !DILocation(line: 303, column: 19, scope: !5204)
!5238 = !DILocation(line: 303, column: 17, scope: !5204)
!5239 = !DILocation(line: 304, column: 8, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5204, file: !3, line: 304, column: 8)
!5241 = !DILocation(line: 304, column: 8, scope: !5204)
!5242 = !DILocation(line: 305, column: 5, scope: !5240)
!5243 = !DILocation(line: 309, column: 27, scope: !5204)
!5244 = !DILocation(line: 309, column: 33, scope: !5204)
!5245 = !DILocation(line: 309, column: 19, scope: !5204)
!5246 = !DILocation(line: 309, column: 17, scope: !5204)
!5247 = !DILocation(line: 310, column: 8, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5204, file: !3, line: 310, column: 8)
!5249 = !DILocation(line: 310, column: 8, scope: !5204)
!5250 = !DILocation(line: 311, column: 5, scope: !5248)
!5251 = !DILocation(line: 315, column: 27, scope: !5204)
!5252 = !DILocation(line: 315, column: 33, scope: !5204)
!5253 = !DILocation(line: 315, column: 19, scope: !5204)
!5254 = !DILocation(line: 315, column: 17, scope: !5204)
!5255 = !DILocation(line: 317, column: 8, scope: !5256)
!5256 = distinct !DILexicalBlock(scope: !5204, file: !3, line: 317, column: 8)
!5257 = !DILocation(line: 317, column: 8, scope: !5204)
!5258 = !DILocation(line: 318, column: 5, scope: !5256)
!5259 = !DILocation(line: 322, column: 10, scope: !5204)
!5260 = !DILocation(line: 322, column: 8, scope: !5204)
!5261 = !DILocation(line: 323, column: 8, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5204, file: !3, line: 323, column: 8)
!5263 = !DILocation(line: 323, column: 12, scope: !5262)
!5264 = !DILocation(line: 323, column: 8, scope: !5204)
!5265 = !DILocation(line: 324, column: 12, scope: !5262)
!5266 = !DILocation(line: 324, column: 5, scope: !5262)
!5267 = !DILocation(line: 325, column: 4, scope: !5204)
!5268 = !DILocation(line: 328, column: 10, scope: !5204)
!5269 = !DILocation(line: 328, column: 8, scope: !5204)
!5270 = !DILocation(line: 329, column: 8, scope: !5271)
!5271 = distinct !DILexicalBlock(scope: !5204, file: !3, line: 329, column: 8)
!5272 = !DILocation(line: 329, column: 12, scope: !5271)
!5273 = !DILocation(line: 329, column: 8, scope: !5204)
!5274 = !DILocation(line: 330, column: 12, scope: !5271)
!5275 = !DILocation(line: 330, column: 5, scope: !5271)
!5276 = !DILocation(line: 331, column: 4, scope: !5204)
!5277 = !DILocation(line: 333, column: 3, scope: !5204)
!5278 = !DILocation(line: 335, column: 4, scope: !5204)
!5279 = !DILocation(line: 335, column: 4, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5204, file: !3, line: 335, column: 4)
!5281 = !DILocation(line: 335, column: 4, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 335, column: 4)
!5283 = !DILocation(line: 335, column: 4, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 335, column: 4)
!5285 = !{i64 2155541696, i64 2155541725, i64 2155541771, i64 2155541829, i64 2155541883, i64 2155541937, i64 2155541992, i64 2155542023}
!5286 = !DILocation(line: 336, column: 3, scope: !5204)
!5287 = !DILocation(line: 347, column: 7, scope: !5288)
!5288 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 347, column: 7)
!5289 = !DILocation(line: 347, column: 20, scope: !5288)
!5290 = !DILocation(line: 347, column: 23, scope: !5288)
!5291 = !DILocation(line: 347, column: 7, scope: !5169)
!5292 = !DILocation(line: 348, column: 38, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5288, file: !3, line: 347, column: 38)
!5294 = !DILocation(line: 348, column: 25, scope: !5293)
!5295 = !DILocation(line: 348, column: 10, scope: !5293)
!5296 = !DILocation(line: 348, column: 8, scope: !5293)
!5297 = !DILocation(line: 350, column: 8, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5293, file: !3, line: 350, column: 8)
!5299 = !DILocation(line: 350, column: 8, scope: !5293)
!5300 = !DILocation(line: 351, column: 13, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5298, file: !3, line: 350, column: 13)
!5302 = !DILocation(line: 351, column: 5, scope: !5301)
!5303 = !DILocation(line: 352, column: 12, scope: !5301)
!5304 = !DILocation(line: 352, column: 5, scope: !5301)
!5305 = !DILocation(line: 354, column: 3, scope: !5293)
!5306 = !DILocation(line: 355, column: 2, scope: !5170)
!5307 = !DILocation(line: 357, column: 19, scope: !5157)
!5308 = !DILocation(line: 357, column: 3, scope: !5157)
!5309 = !DILocation(line: 357, column: 17, scope: !5157)
!5310 = !DILocation(line: 358, column: 2, scope: !5311)
!5311 = distinct !DILexicalBlock(scope: !5312, file: !3, line: 358, column: 2)
!5312 = distinct !DILexicalBlock(scope: !5157, file: !3, line: 358, column: 2)
!5313 = !DILocation(line: 358, column: 2, scope: !5312)
!5314 = !DILocation(line: 359, column: 2, scope: !5157)
!5315 = !DILocation(line: 360, column: 1, scope: !5157)
!5316 = !DISubprogram(name: "key_user_lookup", scope: !260, file: !260, line: 70, type: !5317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5317 = !DISubroutineType(types: !5318)
!5318 = !{!258, !142}
!5319 = distinct !DISubprogram(name: "construct_alloc_key", scope: !3, file: !3, line: 369, type: !5320, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5322)
!5320 = !DISubroutineType(types: !5321)
!5321 = !{!192, !4676, !180, !212, !258, !5160}
!5322 = !{!5323, !5324, !5325, !5326, !5327, !5328, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5338, !5339, !5340}
!5323 = !DILocalVariable(name: "ctx", arg: 1, scope: !5319, file: !3, line: 369, type: !4676)
!5324 = !DILocalVariable(name: "dest_keyring", arg: 2, scope: !5319, file: !3, line: 370, type: !180)
!5325 = !DILocalVariable(name: "flags", arg: 3, scope: !5319, file: !3, line: 371, type: !212)
!5326 = !DILocalVariable(name: "user", arg: 4, scope: !5319, file: !3, line: 372, type: !258)
!5327 = !DILocalVariable(name: "_key", arg: 5, scope: !5319, file: !3, line: 373, type: !5160)
!5328 = !DILocalVariable(name: "edit", scope: !5319, file: !3, line: 375, type: !5329)
!5329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5330, size: 64)
!5330 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_edit", file: !4233, line: 52, flags: DIFlagFwdDecl)
!5331 = !DILocalVariable(name: "key", scope: !5319, file: !3, line: 376, type: !180)
!5332 = !DILocalVariable(name: "perm", scope: !5319, file: !3, line: 377, type: !298)
!5333 = !DILocalVariable(name: "key_ref", scope: !5319, file: !3, line: 378, type: !4287)
!5334 = !DILocalVariable(name: "ret", scope: !5319, file: !3, line: 379, type: !192)
!5335 = !DILabel(scope: !5319, name: "key_already_present", file: !3, line: 444)
!5336 = !DILabel(scope: !5319, name: "link_check_failed", file: !3, line: 464)
!5337 = !DILabel(scope: !5319, name: "link_alloc_failed", file: !3, line: 470)
!5338 = !DILabel(scope: !5319, name: "link_alloc_failed_unlocked", file: !3, line: 472)
!5339 = !DILabel(scope: !5319, name: "link_lock_failed", file: !3, line: 474)
!5340 = !DILabel(scope: !5319, name: "alloc_failed", file: !3, line: 480)
!5341 = !DILocation(line: 369, column: 63, scope: !5319)
!5342 = !DILocation(line: 370, column: 23, scope: !5319)
!5343 = !DILocation(line: 371, column: 25, scope: !5319)
!5344 = !DILocation(line: 372, column: 28, scope: !5319)
!5345 = !DILocation(line: 373, column: 24, scope: !5319)
!5346 = !DILocation(line: 375, column: 2, scope: !5319)
!5347 = !DILocation(line: 375, column: 27, scope: !5319)
!5348 = !DILocation(line: 376, column: 2, scope: !5319)
!5349 = !DILocation(line: 376, column: 14, scope: !5319)
!5350 = !DILocation(line: 377, column: 2, scope: !5319)
!5351 = !DILocation(line: 377, column: 13, scope: !5319)
!5352 = !DILocation(line: 378, column: 2, scope: !5319)
!5353 = !DILocation(line: 378, column: 12, scope: !5319)
!5354 = !DILocation(line: 379, column: 2, scope: !5319)
!5355 = !DILocation(line: 379, column: 6, scope: !5319)
!5356 = !DILocation(line: 381, column: 2, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5358, file: !3, line: 381, column: 2)
!5358 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 381, column: 2)
!5359 = !DILocation(line: 381, column: 2, scope: !5358)
!5360 = !DILocation(line: 384, column: 3, scope: !5319)
!5361 = !DILocation(line: 384, column: 8, scope: !5319)
!5362 = !DILocation(line: 385, column: 14, scope: !5319)
!5363 = !DILocation(line: 385, column: 20, scope: !5319)
!5364 = !DILocation(line: 385, column: 2, scope: !5319)
!5365 = !DILocation(line: 387, column: 7, scope: !5319)
!5366 = !DILocation(line: 388, column: 7, scope: !5319)
!5367 = !DILocation(line: 389, column: 6, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 389, column: 6)
!5369 = !DILocation(line: 389, column: 11, scope: !5368)
!5370 = !DILocation(line: 389, column: 21, scope: !5368)
!5371 = !DILocation(line: 389, column: 27, scope: !5368)
!5372 = !DILocation(line: 389, column: 6, scope: !5319)
!5373 = !DILocation(line: 390, column: 8, scope: !5368)
!5374 = !DILocation(line: 390, column: 3, scope: !5368)
!5375 = !DILocation(line: 391, column: 6, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 391, column: 6)
!5377 = !DILocation(line: 391, column: 11, scope: !5376)
!5378 = !DILocation(line: 391, column: 21, scope: !5376)
!5379 = !DILocation(line: 391, column: 26, scope: !5376)
!5380 = !DILocation(line: 391, column: 47, scope: !5376)
!5381 = !DILocation(line: 392, column: 6, scope: !5376)
!5382 = !DILocation(line: 392, column: 11, scope: !5376)
!5383 = !DILocation(line: 392, column: 21, scope: !5376)
!5384 = !DILocation(line: 392, column: 27, scope: !5376)
!5385 = !DILocation(line: 391, column: 6, scope: !5319)
!5386 = !DILocation(line: 393, column: 8, scope: !5376)
!5387 = !DILocation(line: 393, column: 3, scope: !5376)
!5388 = !DILocation(line: 395, column: 18, scope: !5319)
!5389 = !DILocation(line: 395, column: 23, scope: !5319)
!5390 = !DILocation(line: 395, column: 33, scope: !5319)
!5391 = !DILocation(line: 395, column: 39, scope: !5319)
!5392 = !DILocation(line: 395, column: 44, scope: !5319)
!5393 = !DILocation(line: 395, column: 54, scope: !5319)
!5394 = !DILocation(line: 396, column: 4, scope: !5319)
!5395 = !DILocation(line: 396, column: 9, scope: !5319)
!5396 = !DILocation(line: 396, column: 15, scope: !5319)
!5397 = !DILocation(line: 396, column: 22, scope: !5319)
!5398 = !DILocation(line: 396, column: 27, scope: !5319)
!5399 = !DILocation(line: 396, column: 33, scope: !5319)
!5400 = !DILocation(line: 396, column: 40, scope: !5319)
!5401 = !DILocation(line: 396, column: 45, scope: !5319)
!5402 = !DILocation(line: 397, column: 4, scope: !5319)
!5403 = !DILocation(line: 397, column: 10, scope: !5319)
!5404 = !DILocation(line: 395, column: 8, scope: !5319)
!5405 = !DILocation(line: 395, column: 6, scope: !5319)
!5406 = !DILocation(line: 398, column: 13, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 398, column: 6)
!5408 = !DILocation(line: 398, column: 6, scope: !5407)
!5409 = !DILocation(line: 398, column: 6, scope: !5319)
!5410 = !DILocation(line: 399, column: 3, scope: !5407)
!5411 = !DILocation(line: 401, column: 36, scope: !5319)
!5412 = !DILocation(line: 401, column: 41, scope: !5319)
!5413 = !DILocation(line: 401, column: 2, scope: !5319)
!5414 = !DILocation(line: 403, column: 6, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 403, column: 6)
!5416 = !DILocation(line: 403, column: 6, scope: !5319)
!5417 = !DILocation(line: 404, column: 25, scope: !5418)
!5418 = distinct !DILexicalBlock(scope: !5415, file: !3, line: 403, column: 20)
!5419 = !DILocation(line: 404, column: 40, scope: !5418)
!5420 = !DILocation(line: 404, column: 45, scope: !5418)
!5421 = !DILocation(line: 404, column: 9, scope: !5418)
!5422 = !DILocation(line: 404, column: 7, scope: !5418)
!5423 = !DILocation(line: 405, column: 7, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5418, file: !3, line: 405, column: 7)
!5425 = !DILocation(line: 405, column: 11, scope: !5424)
!5426 = !DILocation(line: 405, column: 7, scope: !5418)
!5427 = !DILocation(line: 406, column: 4, scope: !5424)
!5428 = !DILocation(line: 407, column: 2, scope: !5418)
!5429 = !DILocation(line: 419, column: 2, scope: !5319)
!5430 = !DILocation(line: 421, column: 2, scope: !5319)
!5431 = !DILocation(line: 422, column: 40, scope: !5319)
!5432 = !DILocation(line: 422, column: 12, scope: !5319)
!5433 = !DILocation(line: 422, column: 10, scope: !5319)
!5434 = !DILocation(line: 423, column: 2, scope: !5319)
!5435 = !DILocation(line: 424, column: 14, scope: !5436)
!5436 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 424, column: 6)
!5437 = !DILocation(line: 424, column: 7, scope: !5436)
!5438 = !DILocation(line: 424, column: 6, scope: !5319)
!5439 = !DILocation(line: 425, column: 3, scope: !5436)
!5440 = !DILocation(line: 427, column: 6, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 427, column: 6)
!5442 = !DILocation(line: 427, column: 6, scope: !5319)
!5443 = !DILocation(line: 428, column: 26, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5441, file: !3, line: 427, column: 20)
!5445 = !DILocation(line: 428, column: 41, scope: !5444)
!5446 = !DILocation(line: 428, column: 46, scope: !5444)
!5447 = !DILocation(line: 428, column: 9, scope: !5444)
!5448 = !DILocation(line: 428, column: 7, scope: !5444)
!5449 = !DILocation(line: 429, column: 7, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5444, file: !3, line: 429, column: 7)
!5451 = !DILocation(line: 429, column: 11, scope: !5450)
!5452 = !DILocation(line: 429, column: 7, scope: !5444)
!5453 = !DILocation(line: 430, column: 4, scope: !5450)
!5454 = !DILocation(line: 431, column: 14, scope: !5444)
!5455 = !DILocation(line: 431, column: 28, scope: !5444)
!5456 = !DILocation(line: 431, column: 3, scope: !5444)
!5457 = !DILocation(line: 432, column: 2, scope: !5444)
!5458 = !DILocation(line: 434, column: 2, scope: !5319)
!5459 = !DILocation(line: 435, column: 6, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 435, column: 6)
!5461 = !DILocation(line: 435, column: 6, scope: !5319)
!5462 = !DILocation(line: 436, column: 18, scope: !5460)
!5463 = !DILocation(line: 436, column: 33, scope: !5460)
!5464 = !DILocation(line: 436, column: 38, scope: !5460)
!5465 = !DILocation(line: 436, column: 49, scope: !5460)
!5466 = !DILocation(line: 436, column: 3, scope: !5460)
!5467 = !DILocation(line: 437, column: 16, scope: !5319)
!5468 = !DILocation(line: 437, column: 22, scope: !5319)
!5469 = !DILocation(line: 437, column: 2, scope: !5319)
!5470 = !DILocation(line: 438, column: 10, scope: !5319)
!5471 = !DILocation(line: 438, column: 3, scope: !5319)
!5472 = !DILocation(line: 438, column: 8, scope: !5319)
!5473 = !DILocation(line: 439, column: 2, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !5475, file: !3, line: 439, column: 2)
!5475 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 439, column: 2)
!5476 = !DILocation(line: 439, column: 2, scope: !5475)
!5477 = !DILocation(line: 440, column: 2, scope: !5319)
!5478 = !DILocation(line: 444, column: 1, scope: !5319)
!5479 = !DILocation(line: 445, column: 10, scope: !5319)
!5480 = !DILocation(line: 445, column: 2, scope: !5319)
!5481 = !DILocation(line: 446, column: 2, scope: !5319)
!5482 = !DILocation(line: 447, column: 23, scope: !5319)
!5483 = !DILocation(line: 447, column: 8, scope: !5319)
!5484 = !DILocation(line: 447, column: 6, scope: !5319)
!5485 = !DILocation(line: 448, column: 6, scope: !5486)
!5486 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 448, column: 6)
!5487 = !DILocation(line: 448, column: 6, scope: !5319)
!5488 = !DILocation(line: 449, column: 26, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5486, file: !3, line: 448, column: 20)
!5490 = !DILocation(line: 449, column: 41, scope: !5489)
!5491 = !DILocation(line: 449, column: 46, scope: !5489)
!5492 = !DILocation(line: 449, column: 9, scope: !5489)
!5493 = !DILocation(line: 449, column: 7, scope: !5489)
!5494 = !DILocation(line: 450, column: 7, scope: !5495)
!5495 = distinct !DILexicalBlock(scope: !5489, file: !3, line: 450, column: 7)
!5496 = !DILocation(line: 450, column: 11, scope: !5495)
!5497 = !DILocation(line: 450, column: 7, scope: !5489)
!5498 = !DILocation(line: 451, column: 4, scope: !5495)
!5499 = !DILocation(line: 452, column: 35, scope: !5489)
!5500 = !DILocation(line: 452, column: 49, scope: !5489)
!5501 = !DILocation(line: 452, column: 9, scope: !5489)
!5502 = !DILocation(line: 452, column: 7, scope: !5489)
!5503 = !DILocation(line: 453, column: 7, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5489, file: !3, line: 453, column: 7)
!5505 = !DILocation(line: 453, column: 11, scope: !5504)
!5506 = !DILocation(line: 453, column: 7, scope: !5489)
!5507 = !DILocation(line: 454, column: 15, scope: !5504)
!5508 = !DILocation(line: 454, column: 29, scope: !5504)
!5509 = !DILocation(line: 454, column: 4, scope: !5504)
!5510 = !DILocation(line: 455, column: 18, scope: !5489)
!5511 = !DILocation(line: 455, column: 33, scope: !5489)
!5512 = !DILocation(line: 455, column: 38, scope: !5489)
!5513 = !DILocation(line: 455, column: 49, scope: !5489)
!5514 = !DILocation(line: 455, column: 3, scope: !5489)
!5515 = !DILocation(line: 456, column: 7, scope: !5516)
!5516 = distinct !DILexicalBlock(scope: !5489, file: !3, line: 456, column: 7)
!5517 = !DILocation(line: 456, column: 11, scope: !5516)
!5518 = !DILocation(line: 456, column: 7, scope: !5489)
!5519 = !DILocation(line: 457, column: 4, scope: !5516)
!5520 = !DILocation(line: 458, column: 2, scope: !5489)
!5521 = !DILocation(line: 459, column: 16, scope: !5319)
!5522 = !DILocation(line: 459, column: 22, scope: !5319)
!5523 = !DILocation(line: 459, column: 2, scope: !5319)
!5524 = !DILocation(line: 460, column: 10, scope: !5319)
!5525 = !DILocation(line: 460, column: 3, scope: !5319)
!5526 = !DILocation(line: 460, column: 8, scope: !5319)
!5527 = !DILocation(line: 461, column: 2, scope: !5528)
!5528 = distinct !DILexicalBlock(scope: !5529, file: !3, line: 461, column: 2)
!5529 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 461, column: 2)
!5530 = !DILocation(line: 461, column: 2, scope: !5529)
!5531 = !DILocation(line: 462, column: 2, scope: !5319)
!5532 = !DILocation(line: 464, column: 1, scope: !5319)
!5533 = !DILocation(line: 465, column: 16, scope: !5319)
!5534 = !DILocation(line: 465, column: 22, scope: !5319)
!5535 = !DILocation(line: 465, column: 2, scope: !5319)
!5536 = !DILocation(line: 466, column: 10, scope: !5319)
!5537 = !DILocation(line: 466, column: 2, scope: !5319)
!5538 = !DILocation(line: 467, column: 2, scope: !5539)
!5539 = distinct !DILexicalBlock(scope: !5540, file: !3, line: 467, column: 2)
!5540 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 467, column: 2)
!5541 = !DILocation(line: 467, column: 2, scope: !5540)
!5542 = !DILocation(line: 468, column: 9, scope: !5319)
!5543 = !DILocation(line: 468, column: 2, scope: !5319)
!5544 = !DILocation(line: 470, column: 1, scope: !5319)
!5545 = !DILocation(line: 471, column: 2, scope: !5319)
!5546 = !DILocation(line: 472, column: 1, scope: !5319)
!5547 = !DILocation(line: 473, column: 17, scope: !5319)
!5548 = !DILocation(line: 473, column: 32, scope: !5319)
!5549 = !DILocation(line: 473, column: 37, scope: !5319)
!5550 = !DILocation(line: 473, column: 48, scope: !5319)
!5551 = !DILocation(line: 473, column: 2, scope: !5319)
!5552 = !DILocation(line: 474, column: 1, scope: !5319)
!5553 = !DILocation(line: 475, column: 16, scope: !5319)
!5554 = !DILocation(line: 475, column: 22, scope: !5319)
!5555 = !DILocation(line: 475, column: 2, scope: !5319)
!5556 = !DILocation(line: 476, column: 10, scope: !5319)
!5557 = !DILocation(line: 476, column: 2, scope: !5319)
!5558 = !DILocation(line: 477, column: 2, scope: !5559)
!5559 = distinct !DILexicalBlock(scope: !5560, file: !3, line: 477, column: 2)
!5560 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 477, column: 2)
!5561 = !DILocation(line: 477, column: 2, scope: !5560)
!5562 = !DILocation(line: 478, column: 9, scope: !5319)
!5563 = !DILocation(line: 478, column: 2, scope: !5319)
!5564 = !DILocation(line: 480, column: 1, scope: !5319)
!5565 = !DILocation(line: 481, column: 16, scope: !5319)
!5566 = !DILocation(line: 481, column: 22, scope: !5319)
!5567 = !DILocation(line: 481, column: 2, scope: !5319)
!5568 = !DILocation(line: 482, column: 2, scope: !5569)
!5569 = distinct !DILexicalBlock(scope: !5570, file: !3, line: 482, column: 2)
!5570 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 482, column: 2)
!5571 = !DILocation(line: 482, column: 2, scope: !5570)
!5572 = !DILocation(line: 483, column: 17, scope: !5319)
!5573 = !DILocation(line: 483, column: 9, scope: !5319)
!5574 = !DILocation(line: 483, column: 2, scope: !5319)
!5575 = !DILocation(line: 484, column: 1, scope: !5319)
!5576 = !DISubprogram(name: "key_user_put", scope: !260, file: !260, line: 71, type: !5577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5577 = !DISubroutineType(types: !5578)
!5578 = !{null, !258}
!5579 = distinct !DISubprogram(name: "construct_key", scope: !3, file: !3, line: 226, type: !5580, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5582)
!5580 = !DISubroutineType(types: !5581)
!5581 = !{!192, !180, !363, !336, !122, !180}
!5582 = !{!5583, !5584, !5585, !5586, !5587, !5588, !5589, !5590, !5591, !5593}
!5583 = !DILocalVariable(name: "key", arg: 1, scope: !5579, file: !3, line: 226, type: !180)
!5584 = !DILocalVariable(name: "callout_info", arg: 2, scope: !5579, file: !3, line: 226, type: !363)
!5585 = !DILocalVariable(name: "callout_len", arg: 3, scope: !5579, file: !3, line: 227, type: !336)
!5586 = !DILocalVariable(name: "aux", arg: 4, scope: !5579, file: !3, line: 227, type: !122)
!5587 = !DILocalVariable(name: "dest_keyring", arg: 5, scope: !5579, file: !3, line: 228, type: !180)
!5588 = !DILocalVariable(name: "actor", scope: !5579, file: !3, line: 230, type: !4146)
!5589 = !DILocalVariable(name: "authkey", scope: !5579, file: !3, line: 231, type: !180)
!5590 = !DILocalVariable(name: "ret", scope: !5579, file: !3, line: 232, type: !192)
!5591 = !DILocalVariable(name: "__ret_warn_on", scope: !5592, file: !3, line: 251, type: !192)
!5592 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 251, column: 2)
!5593 = !DILocalVariable(name: "__flags", scope: !5594, file: !3, line: 251, type: !192)
!5594 = distinct !DILexicalBlock(scope: !5595, file: !3, line: 251, column: 2)
!5595 = distinct !DILexicalBlock(scope: !5592, file: !3, line: 251, column: 2)
!5596 = !DILocation(line: 226, column: 38, scope: !5579)
!5597 = !DILocation(line: 226, column: 55, scope: !5579)
!5598 = !DILocation(line: 227, column: 12, scope: !5579)
!5599 = !DILocation(line: 227, column: 31, scope: !5579)
!5600 = !DILocation(line: 228, column: 17, scope: !5579)
!5601 = !DILocation(line: 230, column: 2, scope: !5579)
!5602 = !DILocation(line: 230, column: 22, scope: !5579)
!5603 = !DILocation(line: 231, column: 2, scope: !5579)
!5604 = !DILocation(line: 231, column: 14, scope: !5579)
!5605 = !DILocation(line: 232, column: 2, scope: !5579)
!5606 = !DILocation(line: 232, column: 6, scope: !5579)
!5607 = !DILocation(line: 234, column: 2, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5609, file: !3, line: 234, column: 2)
!5609 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 234, column: 2)
!5610 = !DILocation(line: 234, column: 2, scope: !5609)
!5611 = !DILocation(line: 237, column: 33, scope: !5579)
!5612 = !DILocation(line: 237, column: 48, scope: !5579)
!5613 = !DILocation(line: 237, column: 62, scope: !5579)
!5614 = !DILocation(line: 238, column: 12, scope: !5579)
!5615 = !DILocation(line: 237, column: 12, scope: !5579)
!5616 = !DILocation(line: 237, column: 10, scope: !5579)
!5617 = !DILocation(line: 239, column: 13, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 239, column: 6)
!5619 = !DILocation(line: 239, column: 6, scope: !5618)
!5620 = !DILocation(line: 239, column: 6, scope: !5579)
!5621 = !DILocation(line: 240, column: 18, scope: !5618)
!5622 = !DILocation(line: 240, column: 10, scope: !5618)
!5623 = !DILocation(line: 240, column: 3, scope: !5618)
!5624 = !DILocation(line: 243, column: 8, scope: !5579)
!5625 = !DILocation(line: 244, column: 6, scope: !5626)
!5626 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 244, column: 6)
!5627 = !DILocation(line: 244, column: 11, scope: !5626)
!5628 = !DILocation(line: 244, column: 17, scope: !5626)
!5629 = !DILocation(line: 244, column: 6, scope: !5579)
!5630 = !DILocation(line: 245, column: 11, scope: !5626)
!5631 = !DILocation(line: 245, column: 16, scope: !5626)
!5632 = !DILocation(line: 245, column: 22, scope: !5626)
!5633 = !DILocation(line: 245, column: 9, scope: !5626)
!5634 = !DILocation(line: 245, column: 3, scope: !5626)
!5635 = !DILocation(line: 247, column: 8, scope: !5579)
!5636 = !DILocation(line: 247, column: 14, scope: !5579)
!5637 = !DILocation(line: 247, column: 23, scope: !5579)
!5638 = !DILocation(line: 247, column: 6, scope: !5579)
!5639 = !DILocation(line: 251, column: 2, scope: !5592)
!5640 = !DILocation(line: 0, scope: !5592)
!5641 = !DILocation(line: 251, column: 2, scope: !5595)
!5642 = !DILocation(line: 251, column: 2, scope: !5594)
!5643 = !DILocation(line: 251, column: 2, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5594, file: !3, line: 251, column: 2)
!5645 = !DILocation(line: 251, column: 2, scope: !5646)
!5646 = distinct !DILexicalBlock(scope: !5594, file: !3, line: 251, column: 2)
!5647 = !{i64 2155539030, i64 2155539059, i64 2155539105, i64 2155539163, i64 2155539217, i64 2155539271, i64 2155539326, i64 2155539357, i64 2155539665, i64 2155539671, i64 2155539718, i64 2155539741, i64 2155539767}
!5648 = !DILocation(line: 251, column: 2, scope: !5649)
!5649 = distinct !DILexicalBlock(scope: !5594, file: !3, line: 251, column: 2)
!5650 = !DILocation(line: 251, column: 2, scope: !5579)
!5651 = !DILocation(line: 254, column: 10, scope: !5579)
!5652 = !DILocation(line: 254, column: 2, scope: !5579)
!5653 = !DILocation(line: 255, column: 2, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !5655, file: !3, line: 255, column: 2)
!5655 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 255, column: 2)
!5656 = !DILocation(line: 255, column: 2, scope: !5655)
!5657 = !DILocation(line: 256, column: 9, scope: !5579)
!5658 = !DILocation(line: 256, column: 2, scope: !5579)
!5659 = !DILocation(line: 257, column: 1, scope: !5579)
!5660 = distinct !DISubprogram(name: "key_get", scope: !95, file: !95, line: 312, type: !5661, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5663)
!5661 = !DISubroutineType(types: !5662)
!5662 = !{!180, !180}
!5663 = !{!5664}
!5664 = !DILocalVariable(name: "key", arg: 1, scope: !5660, file: !95, line: 312, type: !180)
!5665 = !DILocation(line: 312, column: 47, scope: !5660)
!5666 = !DILocation(line: 314, column: 9, scope: !5660)
!5667 = !DILocation(line: 314, column: 25, scope: !5660)
!5668 = !DILocation(line: 314, column: 15, scope: !5660)
!5669 = !DILocation(line: 314, column: 32, scope: !5660)
!5670 = !DILocation(line: 314, column: 2, scope: !5660)
!5671 = !DISubprogram(name: "down_read", scope: !218, file: !218, line: 175, type: !5672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5672 = !DISubroutineType(types: !5673)
!5673 = !{null, !5674}
!5674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!5675 = distinct !DISubprogram(name: "const_test_bit", scope: !5676, file: !5676, line: 166, type: !5677, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5679)
!5676 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!5677 = !DISubroutineType(types: !5678)
!5678 = !{!388, !212, !4295}
!5679 = !{!5680, !5681, !5682, !5683, !5684}
!5680 = !DILocalVariable(name: "nr", arg: 1, scope: !5675, file: !5676, line: 166, type: !212)
!5681 = !DILocalVariable(name: "addr", arg: 2, scope: !5675, file: !5676, line: 166, type: !4295)
!5682 = !DILocalVariable(name: "p", scope: !5675, file: !5676, line: 168, type: !4286)
!5683 = !DILocalVariable(name: "mask", scope: !5675, file: !5676, line: 169, type: !212)
!5684 = !DILocalVariable(name: "val", scope: !5675, file: !5676, line: 170, type: !212)
!5685 = !DILocation(line: 166, column: 30, scope: !5675)
!5686 = !DILocation(line: 166, column: 64, scope: !5675)
!5687 = !DILocation(line: 168, column: 2, scope: !5675)
!5688 = !DILocation(line: 168, column: 23, scope: !5675)
!5689 = !DILocation(line: 168, column: 50, scope: !5675)
!5690 = !DILocation(line: 168, column: 57, scope: !5675)
!5691 = !DILocation(line: 168, column: 55, scope: !5675)
!5692 = !DILocation(line: 169, column: 2, scope: !5675)
!5693 = !DILocation(line: 169, column: 16, scope: !5675)
!5694 = !DILocation(line: 169, column: 23, scope: !5675)
!5695 = !DILocation(line: 170, column: 2, scope: !5675)
!5696 = !DILocation(line: 170, column: 16, scope: !5675)
!5697 = !DILocation(line: 170, column: 23, scope: !5675)
!5698 = !DILocation(line: 170, column: 22, scope: !5675)
!5699 = !DILocation(line: 172, column: 12, scope: !5675)
!5700 = !DILocation(line: 172, column: 18, scope: !5675)
!5701 = !DILocation(line: 172, column: 16, scope: !5675)
!5702 = !DILocation(line: 172, column: 10, scope: !5675)
!5703 = !DILocation(line: 172, column: 9, scope: !5675)
!5704 = !DILocation(line: 173, column: 1, scope: !5675)
!5705 = !DILocation(line: 172, column: 2, scope: !5675)
!5706 = distinct !DISubprogram(name: "_test_bit", scope: !5707, file: !5707, line: 139, type: !5677, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5708)
!5707 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5708 = !{!5709, !5710}
!5709 = !DILocalVariable(name: "nr", arg: 1, scope: !5706, file: !5707, line: 139, type: !212)
!5710 = !DILocalVariable(name: "addr", arg: 2, scope: !5706, file: !5707, line: 139, type: !4295)
!5711 = !DILocation(line: 139, column: 25, scope: !5706)
!5712 = !DILocation(line: 139, column: 59, scope: !5706)
!5713 = !DILocation(line: 141, column: 25, scope: !5706)
!5714 = !DILocation(line: 141, column: 32, scope: !5706)
!5715 = !DILocation(line: 141, column: 30, scope: !5706)
!5716 = !DILocation(line: 141, column: 2, scope: !5706)
!5717 = !DILocation(line: 142, column: 23, scope: !5706)
!5718 = !DILocation(line: 142, column: 27, scope: !5706)
!5719 = !DILocation(line: 142, column: 9, scope: !5706)
!5720 = !DILocation(line: 142, column: 2, scope: !5706)
!5721 = !DISubprogram(name: "up_read", scope: !218, file: !218, line: 198, type: !5672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5722 = !DISubprogram(name: "look_up_user_keyrings", scope: !260, file: !260, line: 151, type: !5723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5723 = !DISubroutineType(types: !5724)
!5724 = !{!192, !5160, !5160}
!5725 = distinct !DISubprogram(name: "key_permission", scope: !260, file: !260, line: 206, type: !5726, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5728)
!5726 = !DISubroutineType(types: !5727)
!5727 = !{!192, !4714, !94}
!5728 = !{!5729, !5730}
!5729 = !DILocalVariable(name: "key_ref", arg: 1, scope: !5725, file: !260, line: 206, type: !4714)
!5730 = !DILocalVariable(name: "need_perm", arg: 2, scope: !5725, file: !260, line: 207, type: !94)
!5731 = !DILocation(line: 206, column: 50, scope: !5725)
!5732 = !DILocation(line: 207, column: 25, scope: !5725)
!5733 = !DILocation(line: 209, column: 29, scope: !5725)
!5734 = !DILocation(line: 209, column: 38, scope: !5735)
!5735 = distinct !DILexicalBlock(scope: !5725, file: !260, line: 209, column: 38)
!5736 = !DILocation(line: 209, column: 38, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5735, file: !260, line: 209, column: 38)
!5738 = !DILocation(line: 209, column: 54, scope: !5725)
!5739 = !DILocation(line: 209, column: 9, scope: !5725)
!5740 = !DILocation(line: 209, column: 2, scope: !5725)
!5741 = distinct !DISubprogram(name: "make_key_ref", scope: !95, file: !95, line: 155, type: !5742, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5744)
!5742 = !DISubroutineType(types: !5743)
!5743 = !{!4287, !390, !388}
!5744 = !{!5745, !5746}
!5745 = !DILocalVariable(name: "key", arg: 1, scope: !5741, file: !95, line: 155, type: !390)
!5746 = !DILocalVariable(name: "possession", arg: 2, scope: !5741, file: !95, line: 156, type: !388)
!5747 = !DILocation(line: 155, column: 56, scope: !5741)
!5748 = !DILocation(line: 156, column: 15, scope: !5741)
!5749 = !DILocation(line: 158, column: 38, scope: !5741)
!5750 = !DILocation(line: 158, column: 22, scope: !5741)
!5751 = !DILocation(line: 158, column: 44, scope: !5741)
!5752 = !DILocation(line: 158, column: 42, scope: !5741)
!5753 = !DILocation(line: 158, column: 9, scope: !5741)
!5754 = !DILocation(line: 158, column: 2, scope: !5741)
!5755 = distinct !DISubprogram(name: "__key_get", scope: !95, file: !95, line: 306, type: !5661, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5756)
!5756 = !{!5757}
!5757 = !DILocalVariable(name: "key", arg: 1, scope: !5755, file: !95, line: 306, type: !180)
!5758 = !DILocation(line: 306, column: 49, scope: !5755)
!5759 = !DILocation(line: 308, column: 16, scope: !5755)
!5760 = !DILocation(line: 308, column: 21, scope: !5755)
!5761 = !DILocation(line: 308, column: 2, scope: !5755)
!5762 = !DILocation(line: 309, column: 9, scope: !5755)
!5763 = !DILocation(line: 309, column: 2, scope: !5755)
!5764 = distinct !DISubprogram(name: "refcount_inc", scope: !114, file: !114, line: 265, type: !5765, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5768)
!5765 = !DISubroutineType(types: !5766)
!5766 = !{null, !5767}
!5767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!5768 = !{!5769}
!5769 = !DILocalVariable(name: "r", arg: 1, scope: !5764, file: !114, line: 265, type: !5767)
!5770 = !DILocation(line: 265, column: 45, scope: !5764)
!5771 = !DILocation(line: 267, column: 17, scope: !5764)
!5772 = !DILocation(line: 267, column: 2, scope: !5764)
!5773 = !DILocation(line: 268, column: 1, scope: !5764)
!5774 = distinct !DISubprogram(name: "__refcount_inc", scope: !114, file: !114, line: 248, type: !5775, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5777)
!5775 = !DISubroutineType(types: !5776)
!5776 = !{null, !5767, !2006}
!5777 = !{!5778, !5779}
!5778 = !DILocalVariable(name: "r", arg: 1, scope: !5774, file: !114, line: 248, type: !5767)
!5779 = !DILocalVariable(name: "oldp", arg: 2, scope: !5774, file: !114, line: 248, type: !2006)
!5780 = !DILocation(line: 248, column: 47, scope: !5774)
!5781 = !DILocation(line: 248, column: 55, scope: !5774)
!5782 = !DILocation(line: 250, column: 20, scope: !5774)
!5783 = !DILocation(line: 250, column: 23, scope: !5774)
!5784 = !DILocation(line: 250, column: 2, scope: !5774)
!5785 = !DILocation(line: 251, column: 1, scope: !5774)
!5786 = distinct !DISubprogram(name: "__refcount_add", scope: !114, file: !114, line: 191, type: !5787, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5789)
!5787 = !DISubroutineType(types: !5788)
!5788 = !{null, !192, !5767, !2006}
!5789 = !{!5790, !5791, !5792, !5793}
!5790 = !DILocalVariable(name: "i", arg: 1, scope: !5786, file: !114, line: 191, type: !192)
!5791 = !DILocalVariable(name: "r", arg: 2, scope: !5786, file: !114, line: 191, type: !5767)
!5792 = !DILocalVariable(name: "oldp", arg: 3, scope: !5786, file: !114, line: 191, type: !2006)
!5793 = !DILocalVariable(name: "old", scope: !5786, file: !114, line: 193, type: !192)
!5794 = !DILocation(line: 191, column: 39, scope: !5786)
!5795 = !DILocation(line: 191, column: 54, scope: !5786)
!5796 = !DILocation(line: 191, column: 62, scope: !5786)
!5797 = !DILocation(line: 193, column: 2, scope: !5786)
!5798 = !DILocation(line: 193, column: 6, scope: !5786)
!5799 = !DILocation(line: 193, column: 37, scope: !5786)
!5800 = !DILocation(line: 193, column: 41, scope: !5786)
!5801 = !DILocation(line: 193, column: 44, scope: !5786)
!5802 = !DILocation(line: 193, column: 12, scope: !5786)
!5803 = !DILocation(line: 195, column: 6, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5786, file: !114, line: 195, column: 6)
!5805 = !DILocation(line: 195, column: 6, scope: !5786)
!5806 = !DILocation(line: 196, column: 11, scope: !5804)
!5807 = !DILocation(line: 196, column: 4, scope: !5804)
!5808 = !DILocation(line: 196, column: 9, scope: !5804)
!5809 = !DILocation(line: 196, column: 3, scope: !5804)
!5810 = !DILocation(line: 198, column: 6, scope: !5811)
!5811 = distinct !DILexicalBlock(scope: !5786, file: !114, line: 198, column: 6)
!5812 = !DILocation(line: 198, column: 6, scope: !5786)
!5813 = !DILocation(line: 199, column: 26, scope: !5811)
!5814 = !DILocation(line: 199, column: 3, scope: !5811)
!5815 = !DILocation(line: 200, column: 11, scope: !5816)
!5816 = distinct !DILexicalBlock(scope: !5811, file: !114, line: 200, column: 11)
!5817 = !DILocation(line: 200, column: 11, scope: !5811)
!5818 = !DILocation(line: 201, column: 26, scope: !5816)
!5819 = !DILocation(line: 201, column: 3, scope: !5816)
!5820 = !DILocation(line: 202, column: 1, scope: !5786)
!5821 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !5822, file: !5822, line: 250, type: !5823, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5826)
!5822 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5823 = !DISubroutineType(types: !5824)
!5824 = !{!192, !192, !5825}
!5825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!5826 = !{!5827, !5828}
!5827 = !DILocalVariable(name: "i", arg: 1, scope: !5821, file: !5822, line: 250, type: !192)
!5828 = !DILocalVariable(name: "v", arg: 2, scope: !5821, file: !5822, line: 250, type: !5825)
!5829 = !DILocation(line: 250, column: 30, scope: !5821)
!5830 = !DILocation(line: 250, column: 43, scope: !5821)
!5831 = !DILocation(line: 252, column: 31, scope: !5821)
!5832 = !DILocation(line: 252, column: 2, scope: !5821)
!5833 = !DILocation(line: 253, column: 38, scope: !5821)
!5834 = !DILocation(line: 253, column: 41, scope: !5821)
!5835 = !DILocation(line: 253, column: 9, scope: !5821)
!5836 = !DILocation(line: 253, column: 2, scope: !5821)
!5837 = !DISubprogram(name: "refcount_warn_saturate", scope: !114, file: !114, line: 127, type: !5838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5838 = !DISubroutineType(types: !5839)
!5839 = !{null, !5767, !113}
!5840 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5841, file: !5841, line: 94, type: !5842, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5847)
!5841 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5842 = !DISubroutineType(types: !5843)
!5843 = !{null, !5844, !336}
!5844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5845, size: 64)
!5845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5846)
!5846 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5847 = !{!5848, !5849}
!5848 = !DILocalVariable(name: "v", arg: 1, scope: !5840, file: !5841, line: 94, type: !5844)
!5849 = !DILocalVariable(name: "size", arg: 2, scope: !5840, file: !5841, line: 94, type: !336)
!5850 = !DILocation(line: 94, column: 79, scope: !5840)
!5851 = !DILocation(line: 94, column: 89, scope: !5840)
!5852 = !DILocation(line: 96, column: 20, scope: !5840)
!5853 = !DILocation(line: 96, column: 23, scope: !5840)
!5854 = !DILocation(line: 96, column: 2, scope: !5840)
!5855 = !DILocation(line: 97, column: 2, scope: !5840)
!5856 = !DILocation(line: 98, column: 1, scope: !5840)
!5857 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !5858, file: !5858, line: 731, type: !5823, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5859)
!5858 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5859 = !{!5860, !5861}
!5860 = !DILocalVariable(name: "i", arg: 1, scope: !5857, file: !5858, line: 731, type: !192)
!5861 = !DILocalVariable(name: "v", arg: 2, scope: !5857, file: !5858, line: 731, type: !5825)
!5862 = !DILocation(line: 731, column: 34, scope: !5857)
!5863 = !DILocation(line: 731, column: 47, scope: !5857)
!5864 = !DILocation(line: 736, column: 31, scope: !5857)
!5865 = !DILocation(line: 736, column: 34, scope: !5857)
!5866 = !DILocation(line: 736, column: 9, scope: !5857)
!5867 = !DILocation(line: 736, column: 2, scope: !5857)
!5868 = distinct !DISubprogram(name: "kasan_check_write", scope: !5869, file: !5869, line: 44, type: !5870, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5872)
!5869 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5870 = !DISubroutineType(types: !5871)
!5871 = !{!388, !5844, !7}
!5872 = !{!5873, !5874}
!5873 = !DILocalVariable(name: "p", arg: 1, scope: !5868, file: !5869, line: 44, type: !5844)
!5874 = !DILocalVariable(name: "size", arg: 2, scope: !5868, file: !5869, line: 44, type: !7)
!5875 = !DILocation(line: 44, column: 59, scope: !5868)
!5876 = !DILocation(line: 44, column: 75, scope: !5868)
!5877 = !DILocation(line: 46, column: 2, scope: !5868)
!5878 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5879, file: !5879, line: 229, type: !5880, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5882)
!5879 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5880 = !DISubroutineType(types: !5881)
!5881 = !{null, !5844, !336, !192}
!5882 = !{!5883, !5884, !5885}
!5883 = !DILocalVariable(name: "ptr", arg: 1, scope: !5878, file: !5879, line: 229, type: !5844)
!5884 = !DILocalVariable(name: "size", arg: 2, scope: !5878, file: !5879, line: 229, type: !336)
!5885 = !DILocalVariable(name: "type", arg: 3, scope: !5878, file: !5879, line: 230, type: !192)
!5886 = !DILocation(line: 229, column: 60, scope: !5878)
!5887 = !DILocation(line: 229, column: 72, scope: !5878)
!5888 = !DILocation(line: 230, column: 15, scope: !5878)
!5889 = !DILocation(line: 230, column: 23, scope: !5878)
!5890 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !5891, file: !5891, line: 95, type: !5823, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5892)
!5891 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!5892 = !{!5893, !5894, !5895}
!5893 = !DILocalVariable(name: "i", arg: 1, scope: !5890, file: !5891, line: 95, type: !192)
!5894 = !DILocalVariable(name: "v", arg: 2, scope: !5890, file: !5891, line: 95, type: !5825)
!5895 = !DILocalVariable(name: "__ret", scope: !5896, file: !5891, line: 97, type: !192)
!5896 = distinct !DILexicalBlock(scope: !5890, file: !5891, line: 97, column: 9)
!5897 = !DILocation(line: 95, column: 54, scope: !5890)
!5898 = !DILocation(line: 95, column: 67, scope: !5890)
!5899 = !DILocation(line: 97, column: 9, scope: !5896)
!5900 = !{i64 2148421805, i64 2148421844, i64 2148421865, i64 2148421902, i64 2148421925, i64 2148421934}
!5901 = !DILocation(line: 97, column: 9, scope: !5890)
!5902 = !DILocation(line: 97, column: 2, scope: !5890)
!5903 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5841, file: !5841, line: 66, type: !5842, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5904)
!5904 = !{!5905, !5906}
!5905 = !DILocalVariable(name: "v", arg: 1, scope: !5903, file: !5841, line: 66, type: !5844)
!5906 = !DILocalVariable(name: "size", arg: 2, scope: !5903, file: !5841, line: 66, type: !336)
!5907 = !DILocation(line: 66, column: 73, scope: !5903)
!5908 = !DILocation(line: 66, column: 83, scope: !5903)
!5909 = !DILocation(line: 68, column: 19, scope: !5903)
!5910 = !DILocation(line: 68, column: 22, scope: !5903)
!5911 = !DILocation(line: 68, column: 2, scope: !5903)
!5912 = !DILocation(line: 69, column: 2, scope: !5903)
!5913 = !DILocation(line: 70, column: 1, scope: !5903)
!5914 = distinct !DISubprogram(name: "arch_test_bit", scope: !5915, file: !5915, line: 237, type: !5677, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5916)
!5915 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5916 = !{!5917, !5918}
!5917 = !DILocalVariable(name: "nr", arg: 1, scope: !5914, file: !5915, line: 237, type: !212)
!5918 = !DILocalVariable(name: "addr", arg: 2, scope: !5914, file: !5915, line: 237, type: !4295)
!5919 = !DILocation(line: 237, column: 29, scope: !5914)
!5920 = !DILocation(line: 237, column: 63, scope: !5914)
!5921 = !DILocation(line: 239, column: 30, scope: !5914)
!5922 = !DILocation(line: 239, column: 9, scope: !5914)
!5923 = !DILocation(line: 239, column: 54, scope: !5914)
!5924 = !DILocation(line: 239, column: 58, scope: !5914)
!5925 = !DILocation(line: 239, column: 36, scope: !5914)
!5926 = !DILocation(line: 240, column: 26, scope: !5914)
!5927 = !DILocation(line: 240, column: 30, scope: !5914)
!5928 = !DILocation(line: 240, column: 8, scope: !5914)
!5929 = !DILocation(line: 239, column: 2, scope: !5914)
!5930 = distinct !DISubprogram(name: "kasan_check_read", scope: !5869, file: !5869, line: 40, type: !5870, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5931)
!5931 = !{!5932, !5933}
!5932 = !DILocalVariable(name: "p", arg: 1, scope: !5930, file: !5869, line: 40, type: !5844)
!5933 = !DILocalVariable(name: "size", arg: 2, scope: !5930, file: !5869, line: 40, type: !7)
!5934 = !DILocation(line: 40, column: 58, scope: !5930)
!5935 = !DILocation(line: 40, column: 74, scope: !5930)
!5936 = !DILocation(line: 42, column: 2, scope: !5930)
!5937 = distinct !DISubprogram(name: "constant_test_bit", scope: !5915, file: !5915, line: 204, type: !5938, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5940)
!5938 = !DISubroutineType(types: !5939)
!5939 = !{!388, !720, !4295}
!5940 = !{!5941, !5942}
!5941 = !DILocalVariable(name: "nr", arg: 1, scope: !5937, file: !5915, line: 204, type: !720)
!5942 = !DILocalVariable(name: "addr", arg: 2, scope: !5937, file: !5915, line: 204, type: !4295)
!5943 = !DILocation(line: 204, column: 52, scope: !5937)
!5944 = !DILocation(line: 204, column: 86, scope: !5937)
!5945 = !DILocation(line: 206, column: 19, scope: !5937)
!5946 = !DILocation(line: 206, column: 22, scope: !5937)
!5947 = !DILocation(line: 206, column: 15, scope: !5937)
!5948 = !DILocation(line: 207, column: 4, scope: !5937)
!5949 = !DILocation(line: 207, column: 9, scope: !5937)
!5950 = !DILocation(line: 207, column: 12, scope: !5937)
!5951 = !DILocation(line: 206, column: 44, scope: !5937)
!5952 = !DILocation(line: 207, column: 37, scope: !5937)
!5953 = !DILocation(line: 206, column: 2, scope: !5937)
!5954 = distinct !DISubprogram(name: "variable_test_bit", scope: !5915, file: !5915, line: 224, type: !5938, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5955)
!5955 = !{!5956, !5957, !5958}
!5956 = !DILocalVariable(name: "nr", arg: 1, scope: !5954, file: !5915, line: 224, type: !720)
!5957 = !DILocalVariable(name: "addr", arg: 2, scope: !5954, file: !5915, line: 224, type: !4295)
!5958 = !DILocalVariable(name: "oldbit", scope: !5954, file: !5915, line: 226, type: !388)
!5959 = !DILocation(line: 224, column: 52, scope: !5954)
!5960 = !DILocation(line: 224, column: 86, scope: !5954)
!5961 = !DILocation(line: 226, column: 2, scope: !5954)
!5962 = !DILocation(line: 226, column: 7, scope: !5954)
!5963 = !DILocation(line: 231, column: 33, scope: !5954)
!5964 = !DILocation(line: 231, column: 46, scope: !5954)
!5965 = !DILocation(line: 228, column: 2, scope: !5954)
!5966 = !{i64 2147912109, i64 2147912183}
!5967 = !DILocation(line: 233, column: 9, scope: !5954)
!5968 = !DILocation(line: 234, column: 1, scope: !5954)
!5969 = !DILocation(line: 233, column: 2, scope: !5954)
!5970 = !DISubprogram(name: "mutex_lock", scope: !265, file: !265, line: 227, type: !5971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5971 = !DISubroutineType(types: !5972)
!5972 = !{null, !5973}
!5973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!5974 = !DISubprogram(name: "key_alloc", scope: !95, file: !95, line: 283, type: !5975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5975 = !DISubroutineType(types: !5976)
!5976 = !{!180, !328, !333, !142, !151, !123, !298, !212, !4154}
!5977 = distinct !DISubprogram(name: "set_bit", scope: !5978, file: !5978, line: 26, type: !5979, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5982)
!5978 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!5979 = !DISubroutineType(types: !5980)
!5980 = !{null, !720, !5981}
!5981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!5982 = !{!5983, !5984}
!5983 = !DILocalVariable(name: "nr", arg: 1, scope: !5977, file: !5978, line: 26, type: !720)
!5984 = !DILocalVariable(name: "addr", arg: 2, scope: !5977, file: !5978, line: 26, type: !5981)
!5985 = !DILocation(line: 26, column: 42, scope: !5977)
!5986 = !DILocation(line: 26, column: 70, scope: !5977)
!5987 = !DILocation(line: 28, column: 26, scope: !5977)
!5988 = !DILocation(line: 28, column: 33, scope: !5977)
!5989 = !DILocation(line: 28, column: 31, scope: !5977)
!5990 = !DILocation(line: 28, column: 2, scope: !5977)
!5991 = !DILocation(line: 29, column: 15, scope: !5977)
!5992 = !DILocation(line: 29, column: 19, scope: !5977)
!5993 = !DILocation(line: 29, column: 2, scope: !5977)
!5994 = !DILocation(line: 30, column: 1, scope: !5977)
!5995 = !DISubprogram(name: "__key_link_lock", scope: !260, file: !260, line: 95, type: !5996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5996 = !DISubroutineType(types: !5997)
!5997 = !{!192, !180, !5998}
!5998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5999, size: 64)
!5999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!6000 = !DISubprogram(name: "__key_link_begin", scope: !260, file: !260, line: 99, type: !6001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6001 = !DISubroutineType(types: !6002)
!6002 = !{!192, !180, !5998, !6003}
!6003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5329, size: 64)
!6004 = !DISubprogram(name: "__key_link", scope: !260, file: !260, line: 103, type: !6005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6005 = !DISubroutineType(types: !6006)
!6006 = !{null, !180, !180, !6003}
!6007 = !DISubprogram(name: "mutex_unlock", scope: !265, file: !265, line: 246, type: !5971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6008 = !DISubprogram(name: "__key_link_end", scope: !260, file: !260, line: 105, type: !6009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6009 = !DISubroutineType(types: !6010)
!6010 = !{null, !180, !5998, !5329}
!6011 = !DISubprogram(name: "__key_link_check_live_key", scope: !260, file: !260, line: 102, type: !4737, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6012 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5841, file: !5841, line: 80, type: !5842, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6013)
!6013 = !{!6014, !6015}
!6014 = !DILocalVariable(name: "v", arg: 1, scope: !6012, file: !5841, line: 80, type: !5844)
!6015 = !DILocalVariable(name: "size", arg: 2, scope: !6012, file: !5841, line: 80, type: !336)
!6016 = !DILocation(line: 80, column: 74, scope: !6012)
!6017 = !DILocation(line: 80, column: 84, scope: !6012)
!6018 = !DILocation(line: 82, column: 20, scope: !6012)
!6019 = !DILocation(line: 82, column: 23, scope: !6012)
!6020 = !DILocation(line: 82, column: 2, scope: !6012)
!6021 = !DILocation(line: 83, column: 2, scope: !6012)
!6022 = !DILocation(line: 84, column: 1, scope: !6012)
!6023 = distinct !DISubprogram(name: "arch_set_bit", scope: !5915, file: !5915, line: 52, type: !5979, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6024)
!6024 = !{!6025, !6026}
!6025 = !DILocalVariable(name: "nr", arg: 1, scope: !6023, file: !5915, line: 52, type: !720)
!6026 = !DILocalVariable(name: "addr", arg: 2, scope: !6023, file: !5915, line: 52, type: !5981)
!6027 = !DILocation(line: 52, column: 19, scope: !6023)
!6028 = !DILocation(line: 52, column: 47, scope: !6023)
!6029 = !DILocation(line: 54, column: 27, scope: !6030)
!6030 = distinct !DILexicalBlock(scope: !6023, file: !5915, line: 54, column: 6)
!6031 = !DILocation(line: 54, column: 6, scope: !6030)
!6032 = !DILocation(line: 54, column: 6, scope: !6023)
!6033 = !DILocation(line: 56, column: 6, scope: !6034)
!6034 = distinct !DILexicalBlock(scope: !6030, file: !5915, line: 54, column: 32)
!6035 = !DILocation(line: 57, column: 12, scope: !6034)
!6036 = !DILocation(line: 55, column: 3, scope: !6034)
!6037 = !{i64 2147898497, i64 2147898536, i64 2147898557, i64 2147898594, i64 2147898617, i64 2147898487}
!6038 = !DILocation(line: 59, column: 2, scope: !6034)
!6039 = !DILocation(line: 61, column: 8, scope: !6040)
!6040 = distinct !DILexicalBlock(scope: !6030, file: !5915, line: 59, column: 9)
!6041 = !DILocation(line: 61, column: 32, scope: !6040)
!6042 = !DILocation(line: 60, column: 3, scope: !6040)
!6043 = !{i64 2147898782, i64 2147898821, i64 2147898842, i64 2147898879, i64 2147898902, i64 2147898772}
!6044 = !DILocation(line: 63, column: 1, scope: !6023)
!6045 = !DISubprogram(name: "request_key_auth_new", scope: !260, file: !260, line: 213, type: !6046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6046 = !DISubroutineType(types: !6047)
!6047 = !{!180, !180, !333, !363, !336, !180}
!6048 = !DILocation(line: 118, column: 46, scope: !4321)
!6049 = !DILocation(line: 118, column: 61, scope: !4321)
!6050 = !DILocation(line: 121, column: 2, scope: !4321)
!6051 = !DILocation(line: 121, column: 27, scope: !4321)
!6052 = !DILocation(line: 121, column: 54, scope: !4321)
!6053 = !DILocation(line: 121, column: 33, scope: !4321)
!6054 = !DILocation(line: 122, column: 2, scope: !4321)
!6055 = !DILocation(line: 122, column: 21, scope: !4321)
!6056 = !DILocation(line: 122, column: 28, scope: !6057)
!6057 = distinct !DILexicalBlock(scope: !4321, file: !3, line: 122, column: 28)
!6058 = !DILocation(line: 122, column: 28, scope: !6059)
!6059 = distinct !DILexicalBlock(scope: !6057, file: !3, line: 122, column: 28)
!6060 = !DILocation(line: 123, column: 2, scope: !4321)
!6061 = !DILocation(line: 123, column: 15, scope: !4321)
!6062 = !DILocation(line: 123, column: 22, scope: !4321)
!6063 = !DILocation(line: 124, column: 2, scope: !4321)
!6064 = !DILocation(line: 124, column: 14, scope: !4321)
!6065 = !DILocation(line: 124, column: 20, scope: !4321)
!6066 = !DILocation(line: 124, column: 25, scope: !4321)
!6067 = !DILocation(line: 124, column: 38, scope: !4321)
!6068 = !DILocation(line: 124, column: 48, scope: !4321)
!6069 = !DILocation(line: 124, column: 58, scope: !4321)
!6070 = !DILocation(line: 125, column: 2, scope: !4321)
!6071 = !DILocation(line: 125, column: 8, scope: !4321)
!6072 = !DILocation(line: 125, column: 18, scope: !4321)
!6073 = !DILocation(line: 125, column: 27, scope: !4321)
!6074 = !DILocation(line: 125, column: 40, scope: !4321)
!6075 = !DILocation(line: 126, column: 2, scope: !4321)
!6076 = !DILocation(line: 126, column: 7, scope: !4321)
!6077 = !DILocation(line: 126, column: 20, scope: !4321)
!6078 = !DILocation(line: 127, column: 2, scope: !4321)
!6079 = !DILocation(line: 127, column: 7, scope: !4321)
!6080 = !DILocation(line: 128, column: 2, scope: !4321)
!6081 = !DILocation(line: 128, column: 6, scope: !4321)
!6082 = !DILocation(line: 128, column: 11, scope: !4321)
!6083 = !DILocation(line: 130, column: 2, scope: !6084)
!6084 = distinct !DILexicalBlock(scope: !6085, file: !3, line: 130, column: 2)
!6085 = distinct !DILexicalBlock(scope: !4321, file: !3, line: 130, column: 2)
!6086 = !DILocation(line: 130, column: 2, scope: !6085)
!6087 = !DILocation(line: 132, column: 8, scope: !4321)
!6088 = !DILocation(line: 132, column: 6, scope: !4321)
!6089 = !DILocation(line: 133, column: 6, scope: !6090)
!6090 = distinct !DILexicalBlock(scope: !4321, file: !3, line: 133, column: 6)
!6091 = !DILocation(line: 133, column: 10, scope: !6090)
!6092 = !DILocation(line: 133, column: 6, scope: !4321)
!6093 = !DILocation(line: 134, column: 3, scope: !6090)
!6094 = !DILocation(line: 137, column: 10, scope: !4321)
!6095 = !DILocation(line: 137, column: 27, scope: !4321)
!6096 = !DILocation(line: 137, column: 32, scope: !4321)
!6097 = !DILocation(line: 137, column: 2, scope: !4321)
!6098 = !DILocation(line: 139, column: 9, scope: !6099)
!6099 = distinct !DILexicalBlock(scope: !4321, file: !3, line: 139, column: 9)
!6100 = !DILocation(line: 139, column: 9, scope: !6101)
!6101 = distinct !DILexicalBlock(scope: !6099, file: !3, line: 139, column: 9)
!6102 = !DILocation(line: 139, column: 9, scope: !4321)
!6103 = !DILocation(line: 139, column: 7, scope: !4321)
!6104 = !DILocation(line: 140, column: 26, scope: !4321)
!6105 = !DILocation(line: 140, column: 32, scope: !4321)
!6106 = !DILocation(line: 140, column: 38, scope: !4321)
!6107 = !DILocation(line: 140, column: 45, scope: !4321)
!6108 = !DILocation(line: 140, column: 51, scope: !4321)
!6109 = !DILocation(line: 140, column: 58, scope: !4321)
!6110 = !DILocation(line: 140, column: 12, scope: !4321)
!6111 = !DILocation(line: 140, column: 10, scope: !4321)
!6112 = !DILocation(line: 143, column: 11, scope: !4321)
!6113 = !DILocation(line: 143, column: 2, scope: !4321)
!6114 = !DILocation(line: 144, column: 13, scope: !6115)
!6115 = distinct !DILexicalBlock(scope: !4321, file: !3, line: 144, column: 6)
!6116 = !DILocation(line: 144, column: 6, scope: !6115)
!6117 = !DILocation(line: 144, column: 6, scope: !4321)
!6118 = !DILocation(line: 145, column: 17, scope: !6119)
!6119 = distinct !DILexicalBlock(scope: !6115, file: !3, line: 144, column: 23)
!6120 = !DILocation(line: 145, column: 9, scope: !6119)
!6121 = !DILocation(line: 145, column: 7, scope: !6119)
!6122 = !DILocation(line: 146, column: 3, scope: !6119)
!6123 = !DILocation(line: 150, column: 17, scope: !4321)
!6124 = !DILocation(line: 150, column: 26, scope: !4321)
!6125 = !DILocation(line: 150, column: 8, scope: !4321)
!6126 = !DILocation(line: 150, column: 6, scope: !4321)
!6127 = !DILocation(line: 151, column: 6, scope: !6128)
!6128 = distinct !DILexicalBlock(scope: !4321, file: !3, line: 151, column: 6)
!6129 = !DILocation(line: 151, column: 10, scope: !6128)
!6130 = !DILocation(line: 151, column: 6, scope: !4321)
!6131 = !DILocation(line: 152, column: 3, scope: !6128)
!6132 = !DILocation(line: 155, column: 10, scope: !4321)
!6133 = !DILocation(line: 155, column: 50, scope: !4321)
!6134 = !DILocation(line: 155, column: 56, scope: !4321)
!6135 = !DILocation(line: 155, column: 25, scope: !4321)
!6136 = !DILocation(line: 155, column: 2, scope: !4321)
!6137 = !DILocation(line: 156, column: 10, scope: !4321)
!6138 = !DILocation(line: 156, column: 50, scope: !4321)
!6139 = !DILocation(line: 156, column: 56, scope: !4321)
!6140 = !DILocation(line: 156, column: 25, scope: !4321)
!6141 = !DILocation(line: 156, column: 2, scope: !4321)
!6142 = !DILocation(line: 159, column: 10, scope: !4321)
!6143 = !DILocation(line: 159, column: 25, scope: !4321)
!6144 = !DILocation(line: 159, column: 30, scope: !4321)
!6145 = !DILocation(line: 159, column: 2, scope: !4321)
!6146 = !DILocation(line: 162, column: 10, scope: !4321)
!6147 = !DILocation(line: 163, column: 3, scope: !4321)
!6148 = !DILocation(line: 163, column: 9, scope: !4321)
!6149 = !DILocation(line: 163, column: 26, scope: !4321)
!6150 = !DILocation(line: 163, column: 32, scope: !4321)
!6151 = !DILocation(line: 163, column: 48, scope: !4321)
!6152 = !DILocation(line: 162, column: 2, scope: !4321)
!6153 = !DILocation(line: 165, column: 8, scope: !4321)
!6154 = !DILocation(line: 166, column: 6, scope: !6155)
!6155 = distinct !DILexicalBlock(scope: !4321, file: !3, line: 166, column: 6)
!6156 = !DILocation(line: 166, column: 12, scope: !6155)
!6157 = !DILocation(line: 166, column: 6, scope: !4321)
!6158 = !DILocation(line: 167, column: 11, scope: !6155)
!6159 = !DILocation(line: 167, column: 17, scope: !6155)
!6160 = !DILocation(line: 167, column: 34, scope: !6155)
!6161 = !DILocation(line: 167, column: 9, scope: !6155)
!6162 = !DILocation(line: 167, column: 3, scope: !6155)
!6163 = !DILocation(line: 168, column: 10, scope: !4321)
!6164 = !DILocation(line: 168, column: 32, scope: !4321)
!6165 = !DILocation(line: 168, column: 2, scope: !4321)
!6166 = !DILocation(line: 170, column: 12, scope: !4321)
!6167 = !DILocation(line: 170, column: 18, scope: !4321)
!6168 = !DILocation(line: 170, column: 10, scope: !4321)
!6169 = !DILocation(line: 171, column: 7, scope: !6170)
!6170 = distinct !DILexicalBlock(scope: !4321, file: !3, line: 171, column: 6)
!6171 = !DILocation(line: 171, column: 6, scope: !4321)
!6172 = !DILocation(line: 172, column: 13, scope: !6170)
!6173 = !DILocation(line: 172, column: 11, scope: !6170)
!6174 = !DILocation(line: 172, column: 3, scope: !6170)
!6175 = !DILocation(line: 173, column: 10, scope: !4321)
!6176 = !DILocation(line: 173, column: 19, scope: !4321)
!6177 = !DILocation(line: 173, column: 8, scope: !4321)
!6178 = !DILocation(line: 175, column: 10, scope: !4321)
!6179 = !DILocation(line: 175, column: 32, scope: !4321)
!6180 = !DILocation(line: 175, column: 2, scope: !4321)
!6181 = !DILocation(line: 178, column: 4, scope: !4321)
!6182 = !DILocation(line: 179, column: 8, scope: !4321)
!6183 = !DILocation(line: 179, column: 2, scope: !4321)
!6184 = !DILocation(line: 179, column: 12, scope: !4321)
!6185 = !DILocation(line: 180, column: 8, scope: !4321)
!6186 = !DILocation(line: 180, column: 2, scope: !4321)
!6187 = !DILocation(line: 180, column: 12, scope: !4321)
!6188 = !DILocation(line: 181, column: 7, scope: !4321)
!6189 = !DILocation(line: 181, column: 2, scope: !4321)
!6190 = !DILocation(line: 181, column: 10, scope: !4321)
!6191 = !DILocation(line: 184, column: 4, scope: !4321)
!6192 = !DILocation(line: 185, column: 8, scope: !4321)
!6193 = !DILocation(line: 185, column: 2, scope: !4321)
!6194 = !DILocation(line: 185, column: 12, scope: !4321)
!6195 = !DILocation(line: 186, column: 22, scope: !4321)
!6196 = !DILocation(line: 186, column: 27, scope: !4321)
!6197 = !DILocation(line: 186, column: 8, scope: !4321)
!6198 = !DILocation(line: 186, column: 2, scope: !4321)
!6199 = !DILocation(line: 186, column: 12, scope: !4321)
!6200 = !DILocation(line: 187, column: 14, scope: !4321)
!6201 = !DILocation(line: 187, column: 8, scope: !4321)
!6202 = !DILocation(line: 187, column: 2, scope: !4321)
!6203 = !DILocation(line: 187, column: 12, scope: !4321)
!6204 = !DILocation(line: 188, column: 14, scope: !4321)
!6205 = !DILocation(line: 188, column: 8, scope: !4321)
!6206 = !DILocation(line: 188, column: 2, scope: !4321)
!6207 = !DILocation(line: 188, column: 12, scope: !4321)
!6208 = !DILocation(line: 189, column: 14, scope: !4321)
!6209 = !DILocation(line: 189, column: 8, scope: !4321)
!6210 = !DILocation(line: 189, column: 2, scope: !4321)
!6211 = !DILocation(line: 189, column: 12, scope: !4321)
!6212 = !DILocation(line: 190, column: 14, scope: !4321)
!6213 = !DILocation(line: 190, column: 8, scope: !4321)
!6214 = !DILocation(line: 190, column: 2, scope: !4321)
!6215 = !DILocation(line: 190, column: 12, scope: !4321)
!6216 = !DILocation(line: 191, column: 14, scope: !4321)
!6217 = !DILocation(line: 191, column: 8, scope: !4321)
!6218 = !DILocation(line: 191, column: 2, scope: !4321)
!6219 = !DILocation(line: 191, column: 12, scope: !4321)
!6220 = !DILocation(line: 192, column: 14, scope: !4321)
!6221 = !DILocation(line: 192, column: 8, scope: !4321)
!6222 = !DILocation(line: 192, column: 2, scope: !4321)
!6223 = !DILocation(line: 192, column: 12, scope: !4321)
!6224 = !DILocation(line: 193, column: 7, scope: !4321)
!6225 = !DILocation(line: 193, column: 2, scope: !4321)
!6226 = !DILocation(line: 193, column: 10, scope: !4321)
!6227 = !DILocation(line: 196, column: 46, scope: !4321)
!6228 = !DILocation(line: 196, column: 52, scope: !4321)
!6229 = !DILocation(line: 196, column: 58, scope: !4321)
!6230 = !DILocation(line: 196, column: 8, scope: !4321)
!6231 = !DILocation(line: 196, column: 6, scope: !4321)
!6232 = !DILocation(line: 198, column: 2, scope: !6233)
!6233 = distinct !DILexicalBlock(scope: !6234, file: !3, line: 198, column: 2)
!6234 = distinct !DILexicalBlock(scope: !4321, file: !3, line: 198, column: 2)
!6235 = !DILocation(line: 198, column: 2, scope: !6234)
!6236 = !DILocation(line: 199, column: 6, scope: !6237)
!6237 = distinct !DILexicalBlock(scope: !4321, file: !3, line: 199, column: 6)
!6238 = !DILocation(line: 199, column: 10, scope: !6237)
!6239 = !DILocation(line: 199, column: 6, scope: !4321)
!6240 = !DILocation(line: 201, column: 7, scope: !6241)
!6241 = distinct !DILexicalBlock(scope: !6242, file: !3, line: 201, column: 7)
!6242 = distinct !DILexicalBlock(scope: !6237, file: !3, line: 199, column: 16)
!6243 = !DILocation(line: 201, column: 54, scope: !6241)
!6244 = !DILocation(line: 202, column: 20, scope: !6241)
!6245 = !DILocation(line: 202, column: 7, scope: !6241)
!6246 = !DILocation(line: 202, column: 25, scope: !6241)
!6247 = !DILocation(line: 201, column: 7, scope: !6242)
!6248 = !DILocation(line: 203, column: 8, scope: !6241)
!6249 = !DILocation(line: 203, column: 4, scope: !6241)
!6250 = !DILocation(line: 207, column: 8, scope: !6241)
!6251 = !DILocation(line: 208, column: 2, scope: !6242)
!6252 = !DILocation(line: 199, column: 13, scope: !6237)
!6253 = !DILocation(line: 210, column: 1, scope: !4321)
!6254 = !DILocation(line: 211, column: 10, scope: !4321)
!6255 = !DILocation(line: 211, column: 2, scope: !4321)
!6256 = !DILocation(line: 213, column: 1, scope: !4321)
!6257 = !DILocation(line: 214, column: 10, scope: !4321)
!6258 = !DILocation(line: 214, column: 2, scope: !4321)
!6259 = !DILocation(line: 215, column: 1, scope: !4321)
!6260 = !DILocation(line: 216, column: 23, scope: !4321)
!6261 = !DILocation(line: 216, column: 32, scope: !4321)
!6262 = !DILocation(line: 216, column: 2, scope: !4321)
!6263 = !DILocation(line: 217, column: 2, scope: !6264)
!6264 = distinct !DILexicalBlock(scope: !6265, file: !3, line: 217, column: 2)
!6265 = distinct !DILexicalBlock(scope: !4321, file: !3, line: 217, column: 2)
!6266 = !DILocation(line: 217, column: 2, scope: !6265)
!6267 = !DILocation(line: 218, column: 9, scope: !4321)
!6268 = !DILocation(line: 219, column: 1, scope: !4321)
!6269 = !DILocation(line: 218, column: 2, scope: !4321)
!6270 = !DISubprogram(name: "sprintf", scope: !6271, file: !6271, line: 10, type: !6272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6271 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!6272 = !DISubroutineType(types: !6273)
!6273 = !{!192, !353, !333, null}
!6274 = distinct !DISubprogram(name: "get_cred", scope: !126, file: !126, line: 200, type: !6275, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6277)
!6275 = !DISubroutineType(types: !6276)
!6276 = !{!123, !123}
!6277 = !{!6278, !6279}
!6278 = !DILocalVariable(name: "cred", arg: 1, scope: !6274, file: !126, line: 200, type: !123)
!6279 = !DILocalVariable(name: "nonconst_cred", scope: !6274, file: !126, line: 202, type: !4294)
!6280 = !DILocation(line: 200, column: 62, scope: !6274)
!6281 = !DILocation(line: 202, column: 2, scope: !6274)
!6282 = !DILocation(line: 202, column: 15, scope: !6274)
!6283 = !DILocation(line: 202, column: 47, scope: !6274)
!6284 = !DILocation(line: 203, column: 7, scope: !6285)
!6285 = distinct !DILexicalBlock(scope: !6274, file: !126, line: 203, column: 6)
!6286 = !DILocation(line: 203, column: 6, scope: !6274)
!6287 = !DILocation(line: 204, column: 10, scope: !6285)
!6288 = !DILocation(line: 204, column: 3, scope: !6285)
!6289 = !DILocation(line: 205, column: 2, scope: !6274)
!6290 = !DILocation(line: 205, column: 17, scope: !6274)
!6291 = !DILocation(line: 205, column: 25, scope: !6274)
!6292 = !DILocation(line: 206, column: 22, scope: !6274)
!6293 = !DILocation(line: 206, column: 9, scope: !6274)
!6294 = !DILocation(line: 206, column: 2, scope: !6274)
!6295 = !DILocation(line: 207, column: 1, scope: !6274)
!6296 = !DISubprogram(name: "keyring_alloc", scope: !95, file: !95, line: 420, type: !6297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6297 = !DISubroutineType(types: !6298)
!6298 = !{!180, !333, !142, !151, !123, !298, !212, !4154, !180}
!6299 = distinct !DISubprogram(name: "put_cred", scope: !126, file: !126, line: 231, type: !6300, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6302)
!6300 = !DISubroutineType(types: !6301)
!6301 = !{null, !123}
!6302 = !{!6303, !6304}
!6303 = !DILocalVariable(name: "_cred", arg: 1, scope: !6299, file: !126, line: 231, type: !123)
!6304 = !DILocalVariable(name: "cred", scope: !6299, file: !126, line: 233, type: !4294)
!6305 = !DILocation(line: 231, column: 48, scope: !6299)
!6306 = !DILocation(line: 233, column: 2, scope: !6299)
!6307 = !DILocation(line: 233, column: 15, scope: !6299)
!6308 = !DILocation(line: 233, column: 38, scope: !6299)
!6309 = !DILocation(line: 235, column: 6, scope: !6310)
!6310 = distinct !DILexicalBlock(scope: !6299, file: !126, line: 235, column: 6)
!6311 = !DILocation(line: 235, column: 6, scope: !6299)
!6312 = !DILocation(line: 236, column: 34, scope: !6313)
!6313 = distinct !DILexicalBlock(scope: !6314, file: !126, line: 236, column: 7)
!6314 = distinct !DILexicalBlock(scope: !6310, file: !126, line: 235, column: 12)
!6315 = !DILocation(line: 236, column: 41, scope: !6313)
!6316 = !DILocation(line: 236, column: 7, scope: !6313)
!6317 = !DILocation(line: 236, column: 7, scope: !6314)
!6318 = !DILocation(line: 237, column: 15, scope: !6313)
!6319 = !DILocation(line: 237, column: 4, scope: !6313)
!6320 = !DILocation(line: 238, column: 2, scope: !6314)
!6321 = !DILocation(line: 239, column: 1, scope: !6299)
!6322 = distinct !DISubprogram(name: "from_kuid", scope: !143, file: !143, line: 153, type: !6323, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6325)
!6323 = !DISubroutineType(types: !6324)
!6324 = !{!147, !1273, !142}
!6325 = !{!6326, !6327}
!6326 = !DILocalVariable(name: "to", arg: 1, scope: !6322, file: !143, line: 153, type: !1273)
!6327 = !DILocalVariable(name: "kuid", arg: 2, scope: !6322, file: !143, line: 153, type: !142)
!6328 = !DILocation(line: 153, column: 54, scope: !6322)
!6329 = !DILocation(line: 153, column: 65, scope: !6322)
!6330 = !DILocation(line: 155, column: 9, scope: !6322)
!6331 = !DILocation(line: 155, column: 2, scope: !6322)
!6332 = distinct !DISubprogram(name: "from_kgid", scope: !143, file: !143, line: 158, type: !6333, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6335)
!6333 = !DISubroutineType(types: !6334)
!6334 = !{!155, !1273, !151}
!6335 = !{!6336, !6337}
!6336 = !DILocalVariable(name: "to", arg: 1, scope: !6332, file: !143, line: 158, type: !1273)
!6337 = !DILocalVariable(name: "kgid", arg: 2, scope: !6332, file: !143, line: 158, type: !151)
!6338 = !DILocation(line: 158, column: 54, scope: !6332)
!6339 = !DILocation(line: 158, column: 65, scope: !6332)
!6340 = !DILocation(line: 160, column: 9, scope: !6332)
!6341 = !DILocation(line: 160, column: 2, scope: !6332)
!6342 = distinct !DISubprogram(name: "call_usermodehelper_keys", scope: !3, file: !3, line: 99, type: !6343, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6346)
!6343 = !DISubroutineType(types: !6344)
!6344 = !{!192, !333, !6345, !6345, !180, !192}
!6345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!6346 = !{!6347, !6348, !6349, !6350, !6351, !6352}
!6347 = !DILocalVariable(name: "path", arg: 1, scope: !6342, file: !3, line: 99, type: !333)
!6348 = !DILocalVariable(name: "argv", arg: 2, scope: !6342, file: !3, line: 99, type: !6345)
!6349 = !DILocalVariable(name: "envp", arg: 3, scope: !6342, file: !3, line: 99, type: !6345)
!6350 = !DILocalVariable(name: "session_keyring", arg: 4, scope: !6342, file: !3, line: 100, type: !180)
!6351 = !DILocalVariable(name: "wait", arg: 5, scope: !6342, file: !3, line: 100, type: !192)
!6352 = !DILocalVariable(name: "info", scope: !6342, file: !3, line: 102, type: !6353)
!6353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6354, size: 64)
!6354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "subprocess_info", file: !6355, line: 20, size: 768, elements: !6356)
!6355 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9ecec28201063d5e3b04c190bc92649")
!6356 = !{!6357, !6358, !6359, !6360, !6361, !6362, !6363, !6364, !6368, !6372}
!6357 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !6354, file: !6355, line: 21, baseType: !1289, size: 256)
!6358 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !6354, file: !6355, line: 22, baseType: !1869, size: 64, offset: 256)
!6359 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !6354, file: !6355, line: 23, baseType: !333, size: 64, offset: 320)
!6360 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !6354, file: !6355, line: 24, baseType: !6345, size: 64, offset: 384)
!6361 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !6354, file: !6355, line: 25, baseType: !6345, size: 64, offset: 448)
!6362 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !6354, file: !6355, line: 26, baseType: !192, size: 32, offset: 512)
!6363 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !6354, file: !6355, line: 27, baseType: !192, size: 32, offset: 544)
!6364 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !6354, file: !6355, line: 28, baseType: !6365, size: 64, offset: 576)
!6365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6366, size: 64)
!6366 = !DISubroutineType(types: !6367)
!6367 = !{!192, !6353, !4294}
!6368 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !6354, file: !6355, line: 29, baseType: !6369, size: 64, offset: 640)
!6369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6370, size: 64)
!6370 = !DISubroutineType(types: !6371)
!6371 = !{null, !6353}
!6372 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !6354, file: !6355, line: 30, baseType: !122, size: 64, offset: 704)
!6373 = !DILocation(line: 99, column: 49, scope: !6342)
!6374 = !DILocation(line: 99, column: 62, scope: !6342)
!6375 = !DILocation(line: 99, column: 75, scope: !6342)
!6376 = !DILocation(line: 100, column: 18, scope: !6342)
!6377 = !DILocation(line: 100, column: 39, scope: !6342)
!6378 = !DILocation(line: 102, column: 2, scope: !6342)
!6379 = !DILocation(line: 102, column: 26, scope: !6342)
!6380 = !DILocation(line: 104, column: 35, scope: !6342)
!6381 = !DILocation(line: 104, column: 41, scope: !6342)
!6382 = !DILocation(line: 104, column: 47, scope: !6342)
!6383 = !DILocation(line: 106, column: 8, scope: !6342)
!6384 = !DILocation(line: 104, column: 9, scope: !6342)
!6385 = !DILocation(line: 104, column: 7, scope: !6342)
!6386 = !DILocation(line: 107, column: 7, scope: !6387)
!6387 = distinct !DILexicalBlock(scope: !6342, file: !3, line: 107, column: 6)
!6388 = !DILocation(line: 107, column: 6, scope: !6342)
!6389 = !DILocation(line: 108, column: 3, scope: !6387)
!6390 = !DILocation(line: 110, column: 10, scope: !6342)
!6391 = !DILocation(line: 110, column: 2, scope: !6342)
!6392 = !DILocation(line: 111, column: 34, scope: !6342)
!6393 = !DILocation(line: 111, column: 40, scope: !6342)
!6394 = !DILocation(line: 111, column: 9, scope: !6342)
!6395 = !DILocation(line: 111, column: 2, scope: !6342)
!6396 = !DILocation(line: 112, column: 1, scope: !6342)
!6397 = distinct !DISubprogram(name: "get_new_cred", scope: !126, file: !126, line: 181, type: !6398, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6400)
!6398 = !DISubroutineType(types: !6399)
!6399 = !{!4294, !4294}
!6400 = !{!6401}
!6401 = !DILocalVariable(name: "cred", arg: 1, scope: !6397, file: !126, line: 181, type: !4294)
!6402 = !DILocation(line: 181, column: 54, scope: !6397)
!6403 = !DILocation(line: 183, column: 19, scope: !6397)
!6404 = !DILocation(line: 183, column: 25, scope: !6397)
!6405 = !DILocation(line: 183, column: 2, scope: !6397)
!6406 = !DILocation(line: 184, column: 9, scope: !6397)
!6407 = !DILocation(line: 184, column: 2, scope: !6397)
!6408 = distinct !DISubprogram(name: "atomic_long_inc", scope: !5822, file: !5822, line: 3561, type: !6409, scopeLine: 3562, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6411)
!6409 = !DISubroutineType(types: !6410)
!6410 = !{null, !3877}
!6411 = !{!6412}
!6412 = !DILocalVariable(name: "v", arg: 1, scope: !6408, file: !5822, line: 3561, type: !3877)
!6413 = !DILocation(line: 3561, column: 32, scope: !6408)
!6414 = !DILocation(line: 3563, column: 31, scope: !6408)
!6415 = !DILocation(line: 3563, column: 2, scope: !6408)
!6416 = !DILocation(line: 3564, column: 22, scope: !6408)
!6417 = !DILocation(line: 3564, column: 2, scope: !6408)
!6418 = !DILocation(line: 3565, column: 1, scope: !6408)
!6419 = distinct !DISubprogram(name: "raw_atomic_long_inc", scope: !130, file: !130, line: 495, type: !6409, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6420)
!6420 = !{!6421}
!6421 = !DILocalVariable(name: "v", arg: 1, scope: !6419, file: !130, line: 495, type: !3877)
!6422 = !DILocation(line: 495, column: 36, scope: !6419)
!6423 = !DILocation(line: 498, column: 19, scope: !6419)
!6424 = !DILocation(line: 498, column: 2, scope: !6419)
!6425 = !DILocation(line: 502, column: 1, scope: !6419)
!6426 = distinct !DISubprogram(name: "raw_atomic64_inc", scope: !5858, file: !5858, line: 3088, type: !6427, scopeLine: 3089, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6430)
!6427 = !DISubroutineType(types: !6428)
!6428 = !{null, !6429}
!6429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!6430 = !{!6431}
!6431 = !DILocalVariable(name: "v", arg: 1, scope: !6426, file: !5858, line: 3088, type: !6429)
!6432 = !DILocation(line: 3088, column: 30, scope: !6426)
!6433 = !DILocation(line: 3091, column: 20, scope: !6426)
!6434 = !DILocation(line: 3091, column: 2, scope: !6426)
!6435 = !DILocation(line: 3095, column: 1, scope: !6426)
!6436 = distinct !DISubprogram(name: "arch_atomic64_inc", scope: !6437, file: !6437, line: 43, type: !6427, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6438)
!6437 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!6438 = !{!6439}
!6439 = !DILocalVariable(name: "v", arg: 1, scope: !6436, file: !6437, line: 43, type: !6429)
!6440 = !DILocation(line: 43, column: 59, scope: !6436)
!6441 = !DILocation(line: 46, column: 16, scope: !6436)
!6442 = !DILocation(line: 46, column: 19, scope: !6436)
!6443 = !DILocation(line: 47, column: 15, scope: !6436)
!6444 = !DILocation(line: 47, column: 18, scope: !6436)
!6445 = !DILocation(line: 45, column: 2, scope: !6436)
!6446 = !{i64 2148442244, i64 2148442283, i64 2148442304, i64 2148442341, i64 2148442364, i64 2148442234}
!6447 = !DILocation(line: 48, column: 1, scope: !6436)
!6448 = distinct !DISubprogram(name: "atomic_long_dec_and_test", scope: !5822, file: !5822, line: 4500, type: !6449, scopeLine: 4501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6451)
!6449 = !DISubroutineType(types: !6450)
!6450 = !{!388, !3877}
!6451 = !{!6452}
!6452 = !DILocalVariable(name: "v", arg: 1, scope: !6448, file: !5822, line: 4500, type: !3877)
!6453 = !DILocation(line: 4500, column: 41, scope: !6448)
!6454 = !DILocation(line: 4502, column: 2, scope: !6448)
!6455 = !DILocation(line: 4502, column: 2, scope: !6456)
!6456 = distinct !DILexicalBlock(scope: !6448, file: !5822, line: 4502, column: 2)
!6457 = !DILocation(line: 4503, column: 31, scope: !6448)
!6458 = !DILocation(line: 4503, column: 2, scope: !6448)
!6459 = !DILocation(line: 4504, column: 38, scope: !6448)
!6460 = !DILocation(line: 4504, column: 9, scope: !6448)
!6461 = !DILocation(line: 4504, column: 2, scope: !6448)
!6462 = !DISubprogram(name: "__put_cred", scope: !126, file: !126, line: 148, type: !6463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6463 = !DISubroutineType(types: !6464)
!6464 = !{null, !4294}
!6465 = distinct !DISubprogram(name: "raw_atomic_long_dec_and_test", scope: !130, file: !130, line: 1560, type: !6449, scopeLine: 1561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6466)
!6466 = !{!6467}
!6467 = !DILocalVariable(name: "v", arg: 1, scope: !6465, file: !130, line: 1560, type: !3877)
!6468 = !DILocation(line: 1560, column: 45, scope: !6465)
!6469 = !DILocation(line: 1563, column: 35, scope: !6465)
!6470 = !DILocation(line: 1563, column: 9, scope: !6465)
!6471 = !DILocation(line: 1563, column: 2, scope: !6465)
!6472 = distinct !DISubprogram(name: "raw_atomic64_dec_and_test", scope: !5858, file: !5858, line: 4366, type: !6473, scopeLine: 4367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6475)
!6473 = !DISubroutineType(types: !6474)
!6474 = !{!388, !6429}
!6475 = !{!6476}
!6476 = !DILocalVariable(name: "v", arg: 1, scope: !6472, file: !5858, line: 4366, type: !6429)
!6477 = !DILocation(line: 4366, column: 39, scope: !6472)
!6478 = !DILocation(line: 4369, column: 36, scope: !6472)
!6479 = !DILocation(line: 4369, column: 9, scope: !6472)
!6480 = !DILocation(line: 4369, column: 2, scope: !6472)
!6481 = distinct !DISubprogram(name: "arch_atomic64_dec_and_test", scope: !6437, file: !6437, line: 59, type: !6473, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6482)
!6482 = !{!6483, !6484}
!6483 = !DILocalVariable(name: "v", arg: 1, scope: !6481, file: !6437, line: 59, type: !6429)
!6484 = !DILocalVariable(name: "c", scope: !6485, file: !6437, line: 61, type: !388)
!6485 = distinct !DILexicalBlock(scope: !6481, file: !6437, line: 61, column: 9)
!6486 = !DILocation(line: 59, column: 68, scope: !6481)
!6487 = !DILocation(line: 61, column: 9, scope: !6485)
!6488 = !{i64 2148444356, i64 2148444395, i64 2148444416, i64 2148444453, i64 2148444476, i64 2148444485, i64 2148444559}
!6489 = !DILocation(line: 61, column: 9, scope: !6481)
!6490 = !DILocation(line: 61, column: 2, scope: !6481)
!6491 = distinct !DISubprogram(name: "__kuid_val", scope: !143, file: !143, line: 34, type: !6492, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6494)
!6492 = !DISubroutineType(types: !6493)
!6493 = !{!147, !142}
!6494 = !{!6495}
!6495 = !DILocalVariable(name: "uid", arg: 1, scope: !6491, file: !143, line: 34, type: !142)
!6496 = !DILocation(line: 34, column: 39, scope: !6491)
!6497 = !DILocation(line: 36, column: 13, scope: !6491)
!6498 = !DILocation(line: 36, column: 2, scope: !6491)
!6499 = distinct !DISubprogram(name: "__kgid_val", scope: !143, file: !143, line: 39, type: !6500, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6502)
!6500 = !DISubroutineType(types: !6501)
!6501 = !{!155, !151}
!6502 = !{!6503}
!6503 = !DILocalVariable(name: "gid", arg: 1, scope: !6499, file: !143, line: 39, type: !151)
!6504 = !DILocation(line: 39, column: 39, scope: !6499)
!6505 = !DILocation(line: 41, column: 13, scope: !6499)
!6506 = !DILocation(line: 41, column: 2, scope: !6499)
!6507 = !DISubprogram(name: "call_usermodehelper_setup", scope: !6355, file: !6355, line: 37, type: !6508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6508 = !DISubroutineType(types: !6509)
!6509 = !{!6353, !333, !6345, !6345, !812, !6365, !6369, !122}
!6510 = distinct !DISubprogram(name: "umh_keys_init", scope: !3, file: !3, line: 80, type: !6366, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6511)
!6511 = !{!6512, !6513, !6514}
!6512 = !DILocalVariable(name: "info", arg: 1, scope: !6510, file: !3, line: 80, type: !6353)
!6513 = !DILocalVariable(name: "cred", arg: 2, scope: !6510, file: !3, line: 80, type: !4294)
!6514 = !DILocalVariable(name: "keyring", scope: !6510, file: !3, line: 82, type: !180)
!6515 = !DILocation(line: 80, column: 50, scope: !6510)
!6516 = !DILocation(line: 80, column: 69, scope: !6510)
!6517 = !DILocation(line: 82, column: 2, scope: !6510)
!6518 = !DILocation(line: 82, column: 14, scope: !6510)
!6519 = !DILocation(line: 82, column: 24, scope: !6510)
!6520 = !DILocation(line: 82, column: 30, scope: !6510)
!6521 = !DILocation(line: 84, column: 41, scope: !6510)
!6522 = !DILocation(line: 84, column: 47, scope: !6510)
!6523 = !DILocation(line: 84, column: 9, scope: !6510)
!6524 = !DILocation(line: 85, column: 1, scope: !6510)
!6525 = !DILocation(line: 84, column: 2, scope: !6510)
!6526 = distinct !DISubprogram(name: "umh_keys_cleanup", scope: !3, file: !3, line: 90, type: !6370, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6527)
!6527 = !{!6528, !6529}
!6528 = !DILocalVariable(name: "info", arg: 1, scope: !6526, file: !3, line: 90, type: !6353)
!6529 = !DILocalVariable(name: "keyring", scope: !6526, file: !3, line: 92, type: !180)
!6530 = !DILocation(line: 90, column: 54, scope: !6526)
!6531 = !DILocation(line: 92, column: 2, scope: !6526)
!6532 = !DILocation(line: 92, column: 14, scope: !6526)
!6533 = !DILocation(line: 92, column: 24, scope: !6526)
!6534 = !DILocation(line: 92, column: 30, scope: !6526)
!6535 = !DILocation(line: 93, column: 10, scope: !6526)
!6536 = !DILocation(line: 93, column: 2, scope: !6526)
!6537 = !DILocation(line: 94, column: 1, scope: !6526)
!6538 = !DISubprogram(name: "call_usermodehelper_exec", scope: !6355, file: !6355, line: 43, type: !6539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6539 = !DISubroutineType(types: !6540)
!6540 = !{!192, !6353, !192}
!6541 = !DISubprogram(name: "install_session_keyring_to_cred", scope: !260, file: !260, line: 155, type: !6542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6542 = !DISubroutineType(types: !6543)
!6543 = !{!192, !4294, !180}
!6544 = !DILocation(line: 112, column: 2, scope: !6545)
!6545 = distinct !DILexicalBlock(scope: !4381, file: !4382, line: 112, column: 2)
!6546 = !DILocation(line: 112, column: 2, scope: !4381)
!6547 = !DILocation(line: 113, column: 1, scope: !4381)
!6548 = distinct !DISubprogram(name: "generic_test_bit_acquire", scope: !5676, file: !5676, line: 137, type: !5677, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6549)
!6549 = !{!6550, !6551, !6552, !6553}
!6550 = !DILocalVariable(name: "nr", arg: 1, scope: !6548, file: !5676, line: 137, type: !212)
!6551 = !DILocalVariable(name: "addr", arg: 2, scope: !6548, file: !5676, line: 137, type: !4295)
!6552 = !DILocalVariable(name: "p", scope: !6548, file: !5676, line: 139, type: !2197)
!6553 = !DILocalVariable(name: "___p1", scope: !6554, file: !5676, line: 140, type: !212)
!6554 = distinct !DILexicalBlock(scope: !6548, file: !5676, line: 140, column: 16)
!6555 = !DILocation(line: 137, column: 40, scope: !6548)
!6556 = !DILocation(line: 137, column: 74, scope: !6548)
!6557 = !DILocation(line: 139, column: 2, scope: !6548)
!6558 = !DILocation(line: 139, column: 17, scope: !6548)
!6559 = !DILocation(line: 139, column: 39, scope: !6548)
!6560 = !DILocation(line: 139, column: 47, scope: !6548)
!6561 = !DILocation(line: 139, column: 45, scope: !6548)
!6562 = !DILocation(line: 140, column: 16, scope: !6554)
!6563 = !DILocation(line: 140, column: 16, scope: !6564)
!6564 = distinct !DILexicalBlock(scope: !6554, file: !5676, line: 140, column: 16)
!6565 = !DILocation(line: 140, column: 16, scope: !6566)
!6566 = distinct !DILexicalBlock(scope: !6564, file: !5676, line: 140, column: 16)
!6567 = !DILocation(line: 140, column: 16, scope: !6568)
!6568 = distinct !DILexicalBlock(scope: !6554, file: !5676, line: 140, column: 16)
!6569 = !{i64 2147883951}
!6570 = !DILocation(line: 140, column: 16, scope: !6548)
!6571 = !DILocation(line: 140, column: 40, scope: !6548)
!6572 = !DILocation(line: 140, column: 43, scope: !6548)
!6573 = !DILocation(line: 140, column: 36, scope: !6548)
!6574 = !DILocation(line: 140, column: 13, scope: !6548)
!6575 = !DILocation(line: 140, column: 9, scope: !6548)
!6576 = !DILocation(line: 141, column: 1, scope: !6548)
!6577 = !DILocation(line: 140, column: 2, scope: !6548)
!6578 = distinct !DISubprogram(name: "_test_bit_acquire", scope: !5707, file: !5707, line: 151, type: !5677, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6579)
!6579 = !{!6580, !6581}
!6580 = !DILocalVariable(name: "nr", arg: 1, scope: !6578, file: !5707, line: 151, type: !212)
!6581 = !DILocalVariable(name: "addr", arg: 2, scope: !6578, file: !5707, line: 151, type: !4295)
!6582 = !DILocation(line: 151, column: 33, scope: !6578)
!6583 = !DILocation(line: 151, column: 67, scope: !6578)
!6584 = !DILocation(line: 153, column: 25, scope: !6578)
!6585 = !DILocation(line: 153, column: 32, scope: !6578)
!6586 = !DILocation(line: 153, column: 30, scope: !6578)
!6587 = !DILocation(line: 153, column: 2, scope: !6578)
!6588 = !DILocation(line: 154, column: 31, scope: !6578)
!6589 = !DILocation(line: 154, column: 35, scope: !6578)
!6590 = !DILocation(line: 154, column: 9, scope: !6578)
!6591 = !DILocation(line: 154, column: 2, scope: !6578)
!6592 = !DISubprogram(name: "out_of_line_wait_on_bit", scope: !4922, file: !4922, line: 30, type: !6593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6593 = !DISubroutineType(types: !6594)
!6594 = !{!192, !122, !192, !6595, !7}
!6595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6596, size: 64)
!6596 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_bit_action_f", file: !4922, line: 24, baseType: !6597)
!6597 = !DISubroutineType(types: !6598)
!6598 = !{!192, !6599, !192}
!6599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6600, size: 64)
!6600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_bit_key", file: !4922, line: 10, size: 192, elements: !6601)
!6601 = !{!6602, !6603, !6604}
!6602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6600, file: !4922, line: 11, baseType: !122, size: 64)
!6603 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !6600, file: !4922, line: 12, baseType: !192, size: 32, offset: 64)
!6604 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !6600, file: !4922, line: 13, baseType: !212, size: 64, offset: 128)
!6605 = distinct !DISubprogram(name: "arch_test_bit_acquire", scope: !5915, file: !5915, line: 244, type: !5677, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6606)
!6606 = !{!6607, !6608}
!6607 = !DILocalVariable(name: "nr", arg: 1, scope: !6605, file: !5915, line: 244, type: !212)
!6608 = !DILocalVariable(name: "addr", arg: 2, scope: !6605, file: !5915, line: 244, type: !4295)
!6609 = !DILocation(line: 244, column: 37, scope: !6605)
!6610 = !DILocation(line: 244, column: 71, scope: !6605)
!6611 = !DILocation(line: 246, column: 30, scope: !6605)
!6612 = !DILocation(line: 246, column: 9, scope: !6605)
!6613 = !DILocation(line: 246, column: 62, scope: !6605)
!6614 = !DILocation(line: 246, column: 66, scope: !6605)
!6615 = !DILocation(line: 246, column: 36, scope: !6605)
!6616 = !DILocation(line: 247, column: 26, scope: !6605)
!6617 = !DILocation(line: 247, column: 30, scope: !6605)
!6618 = !DILocation(line: 247, column: 8, scope: !6605)
!6619 = !DILocation(line: 246, column: 2, scope: !6605)
!6620 = distinct !DISubprogram(name: "constant_test_bit_acquire", scope: !5915, file: !5915, line: 210, type: !5938, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6621)
!6621 = !{!6622, !6623, !6624}
!6622 = !DILocalVariable(name: "nr", arg: 1, scope: !6620, file: !5915, line: 210, type: !720)
!6623 = !DILocalVariable(name: "addr", arg: 2, scope: !6620, file: !5915, line: 210, type: !4295)
!6624 = !DILocalVariable(name: "oldbit", scope: !6620, file: !5915, line: 212, type: !388)
!6625 = !DILocation(line: 210, column: 60, scope: !6620)
!6626 = !DILocation(line: 210, column: 94, scope: !6620)
!6627 = !DILocation(line: 212, column: 2, scope: !6620)
!6628 = !DILocation(line: 212, column: 7, scope: !6620)
!6629 = !DILocation(line: 217, column: 33, scope: !6620)
!6630 = !DILocation(line: 217, column: 39, scope: !6620)
!6631 = !DILocation(line: 217, column: 42, scope: !6620)
!6632 = !DILocation(line: 217, column: 15, scope: !6620)
!6633 = !DILocation(line: 218, column: 21, scope: !6620)
!6634 = !DILocation(line: 218, column: 24, scope: !6620)
!6635 = !DILocation(line: 218, column: 17, scope: !6620)
!6636 = !DILocation(line: 214, column: 2, scope: !6620)
!6637 = !{i64 406235, i64 2147911748}
!6638 = !DILocation(line: 221, column: 9, scope: !6620)
!6639 = !DILocation(line: 222, column: 1, scope: !6620)
!6640 = !DILocation(line: 221, column: 2, scope: !6620)
