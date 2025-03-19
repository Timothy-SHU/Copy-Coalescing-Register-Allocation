; ModuleID = 'kernel/groups.c'
source_filename = "kernel/groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_groups_alloc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad groups_alloc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_groups_free: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad groups_free ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_groups_sort: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad groups_sort ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_set_groups: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad set_groups ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_set_current_groups: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad set_current_groups ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_in_group_p: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad in_group_p ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_in_egroup_p: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad in_egroup_p ; .previous"

%struct.pcpu_hot = type { %union.anon.22 }
%union.anon.22 = type { %struct.anon.23, [16 x i8] }
%struct.anon.23 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [10 x i64], [4 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25, [48 x i8] }
%struct.anon.25 = type { ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic64_t, ptr, i32, %struct.refcount_struct }
%struct.atomic64_t = type { i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.26, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { ptr, i32, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%struct.cred = type { %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon }
%struct.kernel_cap_t = type { i64 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.0 = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.1 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
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
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.14, i64, i64, %union.anon.15 }
%union.anon.14 = type { i64 }
%union.anon.15 = type { i64 }

@__UNIQUE_ID___addressable_groups_alloc314 = internal global ptr @groups_alloc, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_groups_free315 = internal global ptr @groups_free, section ".discard.addressable", align 8, !dbg !5801
@__UNIQUE_ID___addressable_groups_sort316 = internal global ptr @groups_sort, section ".discard.addressable", align 8, !dbg !5803
@__UNIQUE_ID___addressable_set_groups317 = internal global ptr @set_groups, section ".discard.addressable", align 8, !dbg !5805
@__UNIQUE_ID___addressable_set_current_groups318 = internal global ptr @set_current_groups, section ".discard.addressable", align 8, !dbg !5807
@__UNIQUE_ID___addressable_in_group_p319 = internal global ptr @in_group_p, section ".discard.addressable", align 8, !dbg !5809
@__UNIQUE_ID___addressable_in_egroup_p320 = internal global ptr @in_egroup_p, section ".discard.addressable", align 8, !dbg !5811
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@overflowgid = external dso_local global i32, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID___addressable_groups_alloc314, ptr @__UNIQUE_ID___addressable_groups_free315, ptr @__UNIQUE_ID___addressable_groups_sort316, ptr @__UNIQUE_ID___addressable_set_groups317, ptr @__UNIQUE_ID___addressable_set_current_groups318, ptr @__UNIQUE_ID___addressable_in_group_p319, ptr @__UNIQUE_ID___addressable_in_egroup_p320], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @groups_alloc(i32 noundef %gidsetsize) #0 align 16 !dbg !5823 {
entry:
  %retval = alloca ptr, align 8
  %gidsetsize.addr = alloca i32, align 4
  %gi = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %gidsetsize, ptr %gidsetsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gidsetsize.addr, metadata !5827, metadata !DIExpression()), !dbg !5829
  call void @llvm.lifetime.start.p0(i64 8, ptr %gi) #13, !dbg !5830
  call void @llvm.dbg.declare(metadata ptr %gi, metadata !5828, metadata !DIExpression()), !dbg !5831
  %0 = load i32, ptr %gidsetsize.addr, align 4, !dbg !5832
  %conv = sext i32 %0 to i64, !dbg !5832
  %call = call i64 @size_mul(i64 noundef %conv, i64 noundef 4) #14, !dbg !5832
  %call1 = call i64 @size_add(i64 noundef 8, i64 noundef %call) #14, !dbg !5832
  %call2 = call noalias ptr @kvmalloc(i64 noundef %call1, i32 noundef 4197568) #15, !dbg !5833
  store ptr %call2, ptr %gi, align 8, !dbg !5834
  %1 = load ptr, ptr %gi, align 8, !dbg !5835
  %tobool = icmp ne ptr %1, null, !dbg !5835
  br i1 %tobool, label %if.end, label %if.then, !dbg !5837

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5838
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5838

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %gi, align 8, !dbg !5839
  %usage = getelementptr inbounds %struct.group_info, ptr %2, i32 0, i32 0, !dbg !5840
  call void @atomic_set(ptr noundef %usage, i32 noundef 1) #14, !dbg !5841
  %3 = load i32, ptr %gidsetsize.addr, align 4, !dbg !5842
  %4 = load ptr, ptr %gi, align 8, !dbg !5843
  %ngroups = getelementptr inbounds %struct.group_info, ptr %4, i32 0, i32 1, !dbg !5844
  store i32 %3, ptr %ngroups, align 4, !dbg !5845
  %5 = load ptr, ptr %gi, align 8, !dbg !5846
  store ptr %5, ptr %retval, align 8, !dbg !5847
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5847

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %gi) #13, !dbg !5848
  %6 = load ptr, ptr %retval, align 8, !dbg !5848
  ret ptr %6, !dbg !5848
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kvmalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !5849 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5854, metadata !DIExpression()), !dbg !5856
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5855, metadata !DIExpression()), !dbg !5857
  %0 = load i64, ptr %size.addr, align 8, !dbg !5858
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5859
  %call = call noalias ptr @kvmalloc_node(i64 noundef %0, i32 noundef %1, i32 noundef -1) #15, !dbg !5860
  ret ptr %call, !dbg !5861
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_add(i64 noundef %addend1, i64 noundef %addend2) #4 align 16 !dbg !5862 {
entry:
  %retval = alloca i64, align 8
  %addend1.addr = alloca i64, align 8
  %addend2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addend1, ptr %addend1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend1.addr, metadata !5867, metadata !DIExpression()), !dbg !5870
  store i64 %addend2, ptr %addend2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend2.addr, metadata !5868, metadata !DIExpression()), !dbg !5871
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #13, !dbg !5872
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5869, metadata !DIExpression()), !dbg !5873
  %0 = load i64, ptr %addend1.addr, align 8, !dbg !5874
  %1 = load i64, ptr %addend2.addr, align 8, !dbg !5874
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1), !dbg !5874
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !5874
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !5874
  store i64 %4, ptr %bytes, align 8, !dbg !5874
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #14, !dbg !5874
  br i1 %call, label %if.then, label %if.end, !dbg !5876

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !5877
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5877

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !5878
  store i64 %5, ptr %retval, align 8, !dbg !5879
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5879

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #13, !dbg !5880
  %6 = load i64, ptr %retval, align 8, !dbg !5880
  ret i64 %6, !dbg !5880
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_mul(i64 noundef %factor1, i64 noundef %factor2) #4 align 16 !dbg !5881 {
entry:
  %retval = alloca i64, align 8
  %factor1.addr = alloca i64, align 8
  %factor2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %factor1, ptr %factor1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor1.addr, metadata !5883, metadata !DIExpression()), !dbg !5886
  store i64 %factor2, ptr %factor2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor2.addr, metadata !5884, metadata !DIExpression()), !dbg !5887
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #13, !dbg !5888
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5885, metadata !DIExpression()), !dbg !5889
  %0 = load i64, ptr %factor1.addr, align 8, !dbg !5890
  %1 = load i64, ptr %factor2.addr, align 8, !dbg !5890
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !5890
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !5890
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !5890
  store i64 %4, ptr %bytes, align 8, !dbg !5890
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #14, !dbg !5890
  br i1 %call, label %if.then, label %if.end, !dbg !5892

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !5893
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5893

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !5894
  store i64 %5, ptr %retval, align 8, !dbg !5895
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5895

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #13, !dbg !5896
  %6 = load i64, ptr %retval, align 8, !dbg !5896
  ret i64 %6, !dbg !5896
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !5897 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5903, metadata !DIExpression()), !dbg !5905
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5904, metadata !DIExpression()), !dbg !5906
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5907
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #14, !dbg !5908
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5909
  %2 = load i32, ptr %i.addr, align 4, !dbg !5910
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #14, !dbg !5911
  ret void, !dbg !5912
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @groups_free(ptr noundef %group_info) #0 align 16 !dbg !5913 {
entry:
  %group_info.addr = alloca ptr, align 8
  store ptr %group_info, ptr %group_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group_info.addr, metadata !5917, metadata !DIExpression()), !dbg !5918
  %0 = load ptr, ptr %group_info.addr, align 8, !dbg !5919
  call void @kvfree(ptr noundef %0) #14, !dbg !5920
  ret void, !dbg !5921
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5922 dso_local void @kvfree(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @groups_sort(ptr noundef %group_info) #0 align 16 !dbg !5925 {
entry:
  %group_info.addr = alloca ptr, align 8
  store ptr %group_info, ptr %group_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group_info.addr, metadata !5927, metadata !DIExpression()), !dbg !5928
  %0 = load ptr, ptr %group_info.addr, align 8, !dbg !5929
  %gid = getelementptr inbounds %struct.group_info, ptr %0, i32 0, i32 2, !dbg !5930
  %arraydecay = getelementptr inbounds [0 x %struct.kgid_t], ptr %gid, i64 0, i64 0, !dbg !5929
  %1 = load ptr, ptr %group_info.addr, align 8, !dbg !5931
  %ngroups = getelementptr inbounds %struct.group_info, ptr %1, i32 0, i32 1, !dbg !5932
  %2 = load i32, ptr %ngroups, align 4, !dbg !5932
  %conv = sext i32 %2 to i64, !dbg !5931
  call void @sort(ptr noundef %arraydecay, i64 noundef %conv, i64 noundef 4, ptr noundef @gid_cmp, ptr noundef null) #14, !dbg !5933
  ret void, !dbg !5934
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5935 dso_local void @sort(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @gid_cmp(ptr noundef %_a, ptr noundef %_b) #0 align 16 !dbg !5947 {
entry:
  %_a.addr = alloca ptr, align 8
  %_b.addr = alloca ptr, align 8
  %a = alloca %struct.kgid_t, align 4
  %b = alloca %struct.kgid_t, align 4
  store ptr %_a, ptr %_a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_a.addr, metadata !5949, metadata !DIExpression()), !dbg !5953
  store ptr %_b, ptr %_b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_b.addr, metadata !5950, metadata !DIExpression()), !dbg !5954
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #13, !dbg !5955
  call void @llvm.dbg.declare(metadata ptr %a, metadata !5951, metadata !DIExpression()), !dbg !5956
  %0 = load ptr, ptr %_a.addr, align 8, !dbg !5957
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 4 %0, i64 4, i1 false), !dbg !5958
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #13, !dbg !5959
  call void @llvm.dbg.declare(metadata ptr %b, metadata !5952, metadata !DIExpression()), !dbg !5960
  %1 = load ptr, ptr %_b.addr, align 8, !dbg !5961
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %b, ptr align 4 %1, i64 4, i1 false), !dbg !5962
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %a, i32 0, i32 0, !dbg !5963
  %2 = load i32, ptr %coerce.dive, align 4, !dbg !5963
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %b, i32 0, i32 0, !dbg !5963
  %3 = load i32, ptr %coerce.dive1, align 4, !dbg !5963
  %call = call zeroext i1 @gid_gt(i32 %2, i32 %3) #14, !dbg !5963
  %conv = zext i1 %call to i32, !dbg !5963
  %coerce.dive2 = getelementptr inbounds %struct.kgid_t, ptr %a, i32 0, i32 0, !dbg !5964
  %4 = load i32, ptr %coerce.dive2, align 4, !dbg !5964
  %coerce.dive3 = getelementptr inbounds %struct.kgid_t, ptr %b, i32 0, i32 0, !dbg !5964
  %5 = load i32, ptr %coerce.dive3, align 4, !dbg !5964
  %call4 = call zeroext i1 @gid_lt(i32 %4, i32 %5) #14, !dbg !5964
  %conv5 = zext i1 %call4 to i32, !dbg !5964
  %sub = sub i32 %conv, %conv5, !dbg !5965
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #13, !dbg !5966
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #13, !dbg !5966
  ret i32 %sub, !dbg !5967
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @groups_search(ptr noundef %group_info, i32 %grp.coerce) #0 align 16 !dbg !5968 {
entry:
  %retval = alloca i32, align 4
  %grp = alloca %struct.kgid_t, align 4
  %group_info.addr = alloca ptr, align 8
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %mid = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %grp, i32 0, i32 0
  store i32 %grp.coerce, ptr %coerce.dive, align 4
  store ptr %group_info, ptr %group_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group_info.addr, metadata !5974, metadata !DIExpression()), !dbg !5980
  call void @llvm.dbg.declare(metadata ptr %grp, metadata !5975, metadata !DIExpression()), !dbg !5981
  call void @llvm.lifetime.start.p0(i64 4, ptr %left) #13, !dbg !5982
  call void @llvm.dbg.declare(metadata ptr %left, metadata !5976, metadata !DIExpression()), !dbg !5983
  call void @llvm.lifetime.start.p0(i64 4, ptr %right) #13, !dbg !5982
  call void @llvm.dbg.declare(metadata ptr %right, metadata !5977, metadata !DIExpression()), !dbg !5984
  %0 = load ptr, ptr %group_info.addr, align 8, !dbg !5985
  %tobool = icmp ne ptr %0, null, !dbg !5985
  br i1 %tobool, label %if.end, label %if.then, !dbg !5987

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5988
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup15, !dbg !5988

if.end:                                           ; preds = %entry
  store i32 0, ptr %left, align 4, !dbg !5989
  %1 = load ptr, ptr %group_info.addr, align 8, !dbg !5990
  %ngroups = getelementptr inbounds %struct.group_info, ptr %1, i32 0, i32 1, !dbg !5991
  %2 = load i32, ptr %ngroups, align 4, !dbg !5991
  store i32 %2, ptr %right, align 4, !dbg !5992
  br label %while.cond, !dbg !5993

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %3 = load i32, ptr %left, align 4, !dbg !5994
  %4 = load i32, ptr %right, align 4, !dbg !5995
  %cmp = icmp ult i32 %3, %4, !dbg !5996
  br i1 %cmp, label %while.body, label %while.end, !dbg !5993

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %mid) #13, !dbg !5997
  call void @llvm.dbg.declare(metadata ptr %mid, metadata !5978, metadata !DIExpression()), !dbg !5998
  %5 = load i32, ptr %left, align 4, !dbg !5999
  %6 = load i32, ptr %right, align 4, !dbg !6000
  %add = add i32 %5, %6, !dbg !6001
  %div = udiv i32 %add, 2, !dbg !6002
  store i32 %div, ptr %mid, align 4, !dbg !5998
  %7 = load ptr, ptr %group_info.addr, align 8, !dbg !6003
  %gid = getelementptr inbounds %struct.group_info, ptr %7, i32 0, i32 2, !dbg !6005
  %8 = load i32, ptr %mid, align 4, !dbg !6006
  %idxprom = zext i32 %8 to i64, !dbg !6003
  %arrayidx = getelementptr [0 x %struct.kgid_t], ptr %gid, i64 0, i64 %idxprom, !dbg !6003
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %grp, i32 0, i32 0, !dbg !6007
  %9 = load i32, ptr %coerce.dive1, align 4, !dbg !6007
  %coerce.dive2 = getelementptr inbounds %struct.kgid_t, ptr %arrayidx, i32 0, i32 0, !dbg !6007
  %10 = load i32, ptr %coerce.dive2, align 4, !dbg !6007
  %call = call zeroext i1 @gid_gt(i32 %9, i32 %10) #14, !dbg !6007
  br i1 %call, label %if.then3, label %if.else, !dbg !6008

if.then3:                                         ; preds = %while.body
  %11 = load i32, ptr %mid, align 4, !dbg !6009
  %add4 = add i32 %11, 1, !dbg !6010
  store i32 %add4, ptr %left, align 4, !dbg !6011
  br label %if.end14, !dbg !6012

if.else:                                          ; preds = %while.body
  %12 = load ptr, ptr %group_info.addr, align 8, !dbg !6013
  %gid5 = getelementptr inbounds %struct.group_info, ptr %12, i32 0, i32 2, !dbg !6015
  %13 = load i32, ptr %mid, align 4, !dbg !6016
  %idxprom6 = zext i32 %13 to i64, !dbg !6013
  %arrayidx7 = getelementptr [0 x %struct.kgid_t], ptr %gid5, i64 0, i64 %idxprom6, !dbg !6013
  %coerce.dive8 = getelementptr inbounds %struct.kgid_t, ptr %grp, i32 0, i32 0, !dbg !6017
  %14 = load i32, ptr %coerce.dive8, align 4, !dbg !6017
  %coerce.dive9 = getelementptr inbounds %struct.kgid_t, ptr %arrayidx7, i32 0, i32 0, !dbg !6017
  %15 = load i32, ptr %coerce.dive9, align 4, !dbg !6017
  %call10 = call zeroext i1 @gid_lt(i32 %14, i32 %15) #14, !dbg !6017
  br i1 %call10, label %if.then11, label %if.else12, !dbg !6018

if.then11:                                        ; preds = %if.else
  %16 = load i32, ptr %mid, align 4, !dbg !6019
  store i32 %16, ptr %right, align 4, !dbg !6020
  br label %if.end13, !dbg !6021

if.else12:                                        ; preds = %if.else
  store i32 1, ptr %retval, align 4, !dbg !6022
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6022

if.end13:                                         ; preds = %if.then11
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then3
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6023
  br label %cleanup, !dbg !6023

cleanup:                                          ; preds = %if.end14, %if.else12
  call void @llvm.lifetime.end.p0(i64 4, ptr %mid) #13, !dbg !6023
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup15 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !5993, !llvm.loop !6024

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !6027
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup15, !dbg !6027

cleanup15:                                        ; preds = %while.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %right) #13, !dbg !6028
  call void @llvm.lifetime.end.p0(i64 4, ptr %left) #13, !dbg !6028
  %17 = load i32, ptr %retval, align 4, !dbg !6028
  ret i32 %17, !dbg !6028
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gid_gt(i32 %left.coerce, i32 %right.coerce) #4 align 16 !dbg !6029 {
entry:
  %left = alloca %struct.kgid_t, align 4
  %right = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !6033, metadata !DIExpression()), !dbg !6035
  call void @llvm.dbg.declare(metadata ptr %right, metadata !6034, metadata !DIExpression()), !dbg !6036
  %coerce.dive2 = getelementptr inbounds %struct.kgid_t, ptr %left, i32 0, i32 0, !dbg !6037
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !6037
  %call = call i32 @__kgid_val(i32 %0) #14, !dbg !6037
  %coerce.dive3 = getelementptr inbounds %struct.kgid_t, ptr %right, i32 0, i32 0, !dbg !6038
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !6038
  %call4 = call i32 @__kgid_val(i32 %1) #14, !dbg !6038
  %cmp = icmp ugt i32 %call, %call4, !dbg !6039
  ret i1 %cmp, !dbg !6040
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gid_lt(i32 %left.coerce, i32 %right.coerce) #4 align 16 !dbg !6041 {
entry:
  %left = alloca %struct.kgid_t, align 4
  %right = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !6043, metadata !DIExpression()), !dbg !6045
  call void @llvm.dbg.declare(metadata ptr %right, metadata !6044, metadata !DIExpression()), !dbg !6046
  %coerce.dive2 = getelementptr inbounds %struct.kgid_t, ptr %left, i32 0, i32 0, !dbg !6047
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !6047
  %call = call i32 @__kgid_val(i32 %0) #14, !dbg !6047
  %coerce.dive3 = getelementptr inbounds %struct.kgid_t, ptr %right, i32 0, i32 0, !dbg !6048
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !6048
  %call4 = call i32 @__kgid_val(i32 %1) #14, !dbg !6048
  %cmp = icmp ult i32 %call, %call4, !dbg !6049
  ret i1 %cmp, !dbg !6050
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @set_groups(ptr noundef %new, ptr noundef %group_info) #0 align 16 !dbg !6051 {
entry:
  %new.addr = alloca ptr, align 8
  %group_info.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6056, metadata !DIExpression()), !dbg !6058
  store ptr %group_info, ptr %group_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group_info.addr, metadata !6057, metadata !DIExpression()), !dbg !6059
  br label %do.body, !dbg !6060

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6061
  %group_info1 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 24, !dbg !6061
  %1 = load ptr, ptr %group_info1, align 8, !dbg !6061
  %usage = getelementptr inbounds %struct.group_info, ptr %1, i32 0, i32 0, !dbg !6061
  %call = call zeroext i1 @atomic_dec_and_test(ptr noundef %usage) #14, !dbg !6061
  br i1 %call, label %if.then, label %if.end, !dbg !6064

if.then:                                          ; preds = %do.body
  %2 = load ptr, ptr %new.addr, align 8, !dbg !6061
  %group_info2 = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 24, !dbg !6061
  %3 = load ptr, ptr %group_info2, align 8, !dbg !6061
  call void @groups_free(ptr noundef %3) #14, !dbg !6061
  br label %if.end, !dbg !6061

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6064

do.end:                                           ; preds = %if.end
  %4 = load ptr, ptr %group_info.addr, align 8, !dbg !6065
  %call3 = call ptr @get_group_info(ptr noundef %4) #14, !dbg !6066
  %5 = load ptr, ptr %group_info.addr, align 8, !dbg !6067
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6068
  %group_info4 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 24, !dbg !6069
  store ptr %5, ptr %group_info4, align 8, !dbg !6070
  ret void, !dbg !6071
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_dec_and_test(ptr noundef %v) #5 align 16 !dbg !6072 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6076, metadata !DIExpression()), !dbg !6077
  br label %do.body, !dbg !6078

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6079

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6081
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !6082
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6083
  %call = call zeroext i1 @raw_atomic_dec_and_test(ptr noundef %1) #14, !dbg !6084
  ret i1 %call, !dbg !6085
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_group_info(ptr noundef %gi) #4 align 16 !dbg !6086 {
entry:
  %gi.addr = alloca ptr, align 8
  store ptr %gi, ptr %gi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gi.addr, metadata !6090, metadata !DIExpression()), !dbg !6091
  %0 = load ptr, ptr %gi.addr, align 8, !dbg !6092
  %usage = getelementptr inbounds %struct.group_info, ptr %0, i32 0, i32 0, !dbg !6093
  call void @atomic_inc(ptr noundef %usage) #14, !dbg !6094
  %1 = load ptr, ptr %gi.addr, align 8, !dbg !6095
  ret ptr %1, !dbg !6096
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @set_current_groups(ptr noundef %group_info) #0 align 16 !dbg !6097 {
entry:
  %retval = alloca i32, align 4
  %group_info.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  %old = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store ptr %group_info, ptr %group_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group_info.addr, metadata !6101, metadata !DIExpression()), !dbg !6106
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #13, !dbg !6107
  call void @llvm.dbg.declare(metadata ptr %new, metadata !6102, metadata !DIExpression()), !dbg !6108
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #13, !dbg !6109
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6103, metadata !DIExpression()), !dbg !6110
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #13, !dbg !6111
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !6104, metadata !DIExpression()), !dbg !6112
  %call = call ptr @prepare_creds() #14, !dbg !6113
  store ptr %call, ptr %new, align 8, !dbg !6114
  %0 = load ptr, ptr %new, align 8, !dbg !6115
  %tobool = icmp ne ptr %0, null, !dbg !6115
  br i1 %tobool, label %if.end, label %if.then, !dbg !6117

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6118
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6118

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !6119

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !6121

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6121

do.end:                                           ; preds = %do.cond
  %call2 = call ptr @get_current() #14, !dbg !6119
  %cred = getelementptr inbounds %struct.task_struct, ptr %call2, i32 0, i32 94, !dbg !6119
  %1 = load ptr, ptr %cred, align 32, !dbg !6119
  store ptr %1, ptr %tmp, align 8, !dbg !6121
  %2 = load ptr, ptr %tmp, align 8, !dbg !6119
  store ptr %2, ptr %old, align 8, !dbg !6123
  %3 = load ptr, ptr %new, align 8, !dbg !6124
  %4 = load ptr, ptr %group_info.addr, align 8, !dbg !6125
  call void @set_groups(ptr noundef %3, ptr noundef %4) #14, !dbg !6126
  %5 = load ptr, ptr %new, align 8, !dbg !6127
  %6 = load ptr, ptr %old, align 8, !dbg !6128
  %call3 = call i32 @security_task_fix_setgroups(ptr noundef %5, ptr noundef %6) #14, !dbg !6129
  store i32 %call3, ptr %retval1, align 4, !dbg !6130
  %7 = load i32, ptr %retval1, align 4, !dbg !6131
  %cmp = icmp slt i32 %7, 0, !dbg !6133
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !6134

if.then4:                                         ; preds = %do.end
  br label %error, !dbg !6135

if.end5:                                          ; preds = %do.end
  %8 = load ptr, ptr %new, align 8, !dbg !6136
  %call6 = call i32 @commit_creds(ptr noundef %8) #14, !dbg !6137
  store i32 %call6, ptr %retval, align 4, !dbg !6138
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6138

error:                                            ; preds = %if.then4
  call void @llvm.dbg.label(metadata !6105), !dbg !6139
  %9 = load ptr, ptr %new, align 8, !dbg !6140
  call void @abort_creds(ptr noundef %9) #14, !dbg !6141
  %10 = load i32, ptr %retval1, align 4, !dbg !6142
  store i32 %10, ptr %retval, align 4, !dbg !6143
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6143

cleanup:                                          ; preds = %error, %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #13, !dbg !6144
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #13, !dbg !6144
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #13, !dbg !6144
  %11 = load i32, ptr %retval, align 4, !dbg !6144
  ret i32 %11, !dbg !6144
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6145 dso_local ptr @prepare_creds() #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #5 align 16 !dbg !6148 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #13, !dbg !6159
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6153, metadata !DIExpression()), !dbg !6159
  br label %do.body, !dbg !6159

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !6160
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6155, metadata !DIExpression()), !dbg !6160
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6160
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6160
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !6159
  br label %do.cond, !dbg !6160

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6160

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #13, !dbg !6161
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6157, metadata !DIExpression()), !dbg !6161
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #16, !dbg !6161, !srcloc !6162
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6161
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6161
  %3 = inttoptr i64 %2 to ptr, !dbg !6161
  store ptr %3, ptr %tmp, align 8, !dbg !6161
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #13, !dbg !6159
  %4 = load ptr, ptr %tmp, align 8, !dbg !6161
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6159
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6159
  store ptr %5, ptr %tmp1, align 8, !dbg !6159
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #13, !dbg !6163
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6159
  ret ptr %6, !dbg !6164
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6165 dso_local i32 @security_task_fix_setgroups(ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6168 dso_local i32 @commit_creds(ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6171 dso_local void @abort_creds(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_getgroups(ptr noundef %regs) #0 align 16 !dbg !6174 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6180, metadata !DIExpression()), !dbg !6181
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6181
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6181
  %1 = load i64, ptr %di, align 8, !dbg !6181
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6181
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !6181
  %3 = load i64, ptr %si, align 8, !dbg !6181
  %call = call i64 @__se_sys_getgroups(i64 noundef %1, i64 noundef %3) #14, !dbg !6181
  ret i64 %call, !dbg !6181
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_getgroups(i64 noundef %gidsetsize, i64 noundef %grouplist) #0 align 16 !dbg !6182 {
entry:
  %gidsetsize.addr = alloca i64, align 8
  %grouplist.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %gidsetsize, ptr %gidsetsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gidsetsize.addr, metadata !6186, metadata !DIExpression()), !dbg !6189
  store i64 %grouplist, ptr %grouplist.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grouplist.addr, metadata !6187, metadata !DIExpression()), !dbg !6189
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #13, !dbg !6189
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6188, metadata !DIExpression()), !dbg !6189
  %0 = load i64, ptr %gidsetsize.addr, align 8, !dbg !6189
  %conv = trunc i64 %0 to i32, !dbg !6189
  %1 = load i64, ptr %grouplist.addr, align 8, !dbg !6189
  %2 = inttoptr i64 %1 to ptr, !dbg !6189
  %call = call i64 @__do_sys_getgroups(i32 noundef %conv, ptr noundef %2) #14, !dbg !6189
  store i64 %call, ptr %ret, align 8, !dbg !6189
  br label %do.body, !dbg !6189

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6190

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6190

do.end:                                           ; preds = %do.cond
  %3 = load i64, ptr %ret, align 8, !dbg !6189
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #13, !dbg !6189
  ret i64 %3, !dbg !6189
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_getgroups(ptr noundef %regs) #0 align 16 !dbg !6192 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6194, metadata !DIExpression()), !dbg !6195
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6195
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6195
  %1 = load i64, ptr %bx, align 8, !dbg !6195
  %conv = trunc i64 %1 to i32, !dbg !6195
  %conv1 = zext i32 %conv to i64, !dbg !6195
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6195
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6195
  %3 = load i64, ptr %cx, align 8, !dbg !6195
  %conv2 = trunc i64 %3 to i32, !dbg !6195
  %conv3 = zext i32 %conv2 to i64, !dbg !6195
  %call = call i64 @__se_sys_getgroups(i64 noundef %conv1, i64 noundef %conv3) #14, !dbg !6195
  ret i64 %call, !dbg !6195
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @may_setgroups() #0 align 16 !dbg !6196 {
entry:
  %user_ns = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %user_ns) #13, !dbg !6199
  call void @llvm.dbg.declare(metadata ptr %user_ns, metadata !6198, metadata !DIExpression()), !dbg !6200
  %call = call ptr @current_user_ns() #14, !dbg !6201
  store ptr %call, ptr %user_ns, align 8, !dbg !6200
  %0 = load ptr, ptr %user_ns, align 8, !dbg !6202
  %call1 = call zeroext i1 @ns_capable_setid(ptr noundef %0, i32 noundef 6) #14, !dbg !6203
  br i1 %call1, label %land.rhs, label %land.end, !dbg !6204

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %user_ns, align 8, !dbg !6205
  %call2 = call zeroext i1 @userns_may_setgroups(ptr noundef %1) #14, !dbg !6206
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %call2, %land.rhs ], !dbg !6207
  call void @llvm.lifetime.end.p0(i64 8, ptr %user_ns) #13, !dbg !6208
  ret i1 %2, !dbg !6209
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @current_user_ns() #4 align 16 !dbg !6210 {
entry:
  ret ptr @init_user_ns, !dbg !6213
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6214 dso_local zeroext i1 @ns_capable_setid(ptr noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @userns_may_setgroups(ptr noundef %ns) #4 align 16 !dbg !6217 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !6223, metadata !DIExpression()), !dbg !6224
  ret i1 true, !dbg !6225
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_setgroups(ptr noundef %regs) #0 align 16 !dbg !6226 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6228, metadata !DIExpression()), !dbg !6229
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6229
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6229
  %1 = load i64, ptr %di, align 8, !dbg !6229
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6229
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !6229
  %3 = load i64, ptr %si, align 8, !dbg !6229
  %call = call i64 @__se_sys_setgroups(i64 noundef %1, i64 noundef %3) #14, !dbg !6229
  ret i64 %call, !dbg !6229
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_setgroups(i64 noundef %gidsetsize, i64 noundef %grouplist) #0 align 16 !dbg !6230 {
entry:
  %gidsetsize.addr = alloca i64, align 8
  %grouplist.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %gidsetsize, ptr %gidsetsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gidsetsize.addr, metadata !6232, metadata !DIExpression()), !dbg !6235
  store i64 %grouplist, ptr %grouplist.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grouplist.addr, metadata !6233, metadata !DIExpression()), !dbg !6235
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #13, !dbg !6235
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6234, metadata !DIExpression()), !dbg !6235
  %0 = load i64, ptr %gidsetsize.addr, align 8, !dbg !6235
  %conv = trunc i64 %0 to i32, !dbg !6235
  %1 = load i64, ptr %grouplist.addr, align 8, !dbg !6235
  %2 = inttoptr i64 %1 to ptr, !dbg !6235
  %call = call i64 @__do_sys_setgroups(i32 noundef %conv, ptr noundef %2) #14, !dbg !6235
  store i64 %call, ptr %ret, align 8, !dbg !6235
  br label %do.body, !dbg !6235

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6236

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6236

do.end:                                           ; preds = %do.cond
  %3 = load i64, ptr %ret, align 8, !dbg !6235
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #13, !dbg !6235
  ret i64 %3, !dbg !6235
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_setgroups(ptr noundef %regs) #0 align 16 !dbg !6238 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6240, metadata !DIExpression()), !dbg !6241
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6241
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6241
  %1 = load i64, ptr %bx, align 8, !dbg !6241
  %conv = trunc i64 %1 to i32, !dbg !6241
  %conv1 = zext i32 %conv to i64, !dbg !6241
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6241
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6241
  %3 = load i64, ptr %cx, align 8, !dbg !6241
  %conv2 = trunc i64 %3 to i32, !dbg !6241
  %conv3 = zext i32 %conv2 to i64, !dbg !6241
  %call = call i64 @__se_sys_setgroups(i64 noundef %conv1, i64 noundef %conv3) #14, !dbg !6241
  ret i64 %call, !dbg !6241
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @in_group_p(i32 %grp.coerce) #0 align 16 !dbg !6242 {
entry:
  %grp = alloca %struct.kgid_t, align 4
  %cred = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %retval2 = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %grp, i32 0, i32 0
  store i32 %grp.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %grp, metadata !6246, metadata !DIExpression()), !dbg !6249
  call void @llvm.lifetime.start.p0(i64 8, ptr %cred) #13, !dbg !6250
  call void @llvm.dbg.declare(metadata ptr %cred, metadata !6247, metadata !DIExpression()), !dbg !6251
  br label %do.body, !dbg !6252

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6254

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6254

do.end:                                           ; preds = %do.cond
  %call = call ptr @get_current() #14, !dbg !6252
  %cred1 = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 94, !dbg !6252
  %0 = load ptr, ptr %cred1, align 32, !dbg !6252
  store ptr %0, ptr %tmp, align 8, !dbg !6254
  %1 = load ptr, ptr %tmp, align 8, !dbg !6252
  store ptr %1, ptr %cred, align 8, !dbg !6251
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval2) #13, !dbg !6256
  call void @llvm.dbg.declare(metadata ptr %retval2, metadata !6248, metadata !DIExpression()), !dbg !6257
  store i32 1, ptr %retval2, align 4, !dbg !6257
  %2 = load ptr, ptr %cred, align 8, !dbg !6258
  %fsgid = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 8, !dbg !6260
  %coerce.dive3 = getelementptr inbounds %struct.kgid_t, ptr %grp, i32 0, i32 0, !dbg !6261
  %3 = load i32, ptr %coerce.dive3, align 4, !dbg !6261
  %coerce.dive4 = getelementptr inbounds %struct.kgid_t, ptr %fsgid, i32 0, i32 0, !dbg !6261
  %4 = load i32, ptr %coerce.dive4, align 4, !dbg !6261
  %call5 = call zeroext i1 @gid_eq(i32 %3, i32 %4) #14, !dbg !6261
  br i1 %call5, label %if.end, label %if.then, !dbg !6262

if.then:                                          ; preds = %do.end
  %5 = load ptr, ptr %cred, align 8, !dbg !6263
  %group_info = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 24, !dbg !6264
  %6 = load ptr, ptr %group_info, align 8, !dbg !6264
  %coerce.dive6 = getelementptr inbounds %struct.kgid_t, ptr %grp, i32 0, i32 0, !dbg !6265
  %7 = load i32, ptr %coerce.dive6, align 4, !dbg !6265
  %call7 = call i32 @groups_search(ptr noundef %6, i32 %7) #14, !dbg !6265
  store i32 %call7, ptr %retval2, align 4, !dbg !6266
  br label %if.end, !dbg !6267

if.end:                                           ; preds = %if.then, %do.end
  %8 = load i32, ptr %retval2, align 4, !dbg !6268
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval2) #13, !dbg !6269
  call void @llvm.lifetime.end.p0(i64 8, ptr %cred) #13, !dbg !6269
  ret i32 %8, !dbg !6270
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gid_eq(i32 %left.coerce, i32 %right.coerce) #4 align 16 !dbg !6271 {
entry:
  %left = alloca %struct.kgid_t, align 4
  %right = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !6273, metadata !DIExpression()), !dbg !6275
  call void @llvm.dbg.declare(metadata ptr %right, metadata !6274, metadata !DIExpression()), !dbg !6276
  %coerce.dive2 = getelementptr inbounds %struct.kgid_t, ptr %left, i32 0, i32 0, !dbg !6277
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !6277
  %call = call i32 @__kgid_val(i32 %0) #14, !dbg !6277
  %coerce.dive3 = getelementptr inbounds %struct.kgid_t, ptr %right, i32 0, i32 0, !dbg !6278
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !6278
  %call4 = call i32 @__kgid_val(i32 %1) #14, !dbg !6278
  %cmp = icmp eq i32 %call, %call4, !dbg !6279
  ret i1 %cmp, !dbg !6280
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @in_egroup_p(i32 %grp.coerce) #0 align 16 !dbg !6281 {
entry:
  %grp = alloca %struct.kgid_t, align 4
  %cred = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %retval2 = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %grp, i32 0, i32 0
  store i32 %grp.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %grp, metadata !6283, metadata !DIExpression()), !dbg !6286
  call void @llvm.lifetime.start.p0(i64 8, ptr %cred) #13, !dbg !6287
  call void @llvm.dbg.declare(metadata ptr %cred, metadata !6284, metadata !DIExpression()), !dbg !6288
  br label %do.body, !dbg !6289

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6291

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6291

do.end:                                           ; preds = %do.cond
  %call = call ptr @get_current() #14, !dbg !6289
  %cred1 = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 94, !dbg !6289
  %0 = load ptr, ptr %cred1, align 32, !dbg !6289
  store ptr %0, ptr %tmp, align 8, !dbg !6291
  %1 = load ptr, ptr %tmp, align 8, !dbg !6289
  store ptr %1, ptr %cred, align 8, !dbg !6288
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval2) #13, !dbg !6293
  call void @llvm.dbg.declare(metadata ptr %retval2, metadata !6285, metadata !DIExpression()), !dbg !6294
  store i32 1, ptr %retval2, align 4, !dbg !6294
  %2 = load ptr, ptr %cred, align 8, !dbg !6295
  %egid = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 6, !dbg !6297
  %coerce.dive3 = getelementptr inbounds %struct.kgid_t, ptr %grp, i32 0, i32 0, !dbg !6298
  %3 = load i32, ptr %coerce.dive3, align 4, !dbg !6298
  %coerce.dive4 = getelementptr inbounds %struct.kgid_t, ptr %egid, i32 0, i32 0, !dbg !6298
  %4 = load i32, ptr %coerce.dive4, align 4, !dbg !6298
  %call5 = call zeroext i1 @gid_eq(i32 %3, i32 %4) #14, !dbg !6298
  br i1 %call5, label %if.end, label %if.then, !dbg !6299

if.then:                                          ; preds = %do.end
  %5 = load ptr, ptr %cred, align 8, !dbg !6300
  %group_info = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 24, !dbg !6301
  %6 = load ptr, ptr %group_info, align 8, !dbg !6301
  %coerce.dive6 = getelementptr inbounds %struct.kgid_t, ptr %grp, i32 0, i32 0, !dbg !6302
  %7 = load i32, ptr %coerce.dive6, align 4, !dbg !6302
  %call7 = call i32 @groups_search(ptr noundef %6, i32 %7) #14, !dbg !6302
  store i32 %call7, ptr %retval2, align 4, !dbg !6303
  br label %if.end, !dbg !6304

if.end:                                           ; preds = %if.then, %do.end
  %8 = load i32, ptr %retval2, align 4, !dbg !6305
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval2) #13, !dbg !6306
  call void @llvm.lifetime.end.p0(i64 8, ptr %cred) #13, !dbg !6306
  ret i32 %8, !dbg !6307
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6308 dso_local noalias ptr @kvmalloc_node(i64 noundef, i32 noundef, i32 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #4 align 16 !dbg !6311 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !6315, metadata !DIExpression()), !dbg !6316
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !6317, !range !6318, !noundef !1005
  %tobool = trunc i8 %0 to i1, !dbg !6317
  %lnot = xor i1 %tobool, true, !dbg !6317
  %lnot1 = xor i1 %lnot, true, !dbg !6317
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6317
  %conv = sext i32 %lnot.ext to i64, !dbg !6317
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6317
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6317
  ret i1 %tobool2, !dbg !6319
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6320 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6328, metadata !DIExpression()), !dbg !6330
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6329, metadata !DIExpression()), !dbg !6331
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6332
  %1 = load i64, ptr %size.addr, align 8, !dbg !6333
  %conv = trunc i64 %1 to i32, !dbg !6333
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !6334
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6335
  %3 = load i64, ptr %size.addr, align 8, !dbg !6335
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #14, !dbg !6335
  ret void, !dbg !6336
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !6337 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6340, metadata !DIExpression()), !dbg !6342
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6341, metadata !DIExpression()), !dbg !6343
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6344
  %1 = load i32, ptr %i.addr, align 4, !dbg !6345
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #14, !dbg !6346
  ret void, !dbg !6347
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !6348 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6353, metadata !DIExpression()), !dbg !6355
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6354, metadata !DIExpression()), !dbg !6356
  ret i1 true, !dbg !6357
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !6358 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6363, metadata !DIExpression()), !dbg !6366
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6364, metadata !DIExpression()), !dbg !6367
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6365, metadata !DIExpression()), !dbg !6368
  ret void, !dbg !6369
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !6370 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6373, metadata !DIExpression()), !dbg !6375
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6374, metadata !DIExpression()), !dbg !6376
  br label %do.body, !dbg !6377

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !6378
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6378
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !6378
  store volatile i32 %0, ptr %counter, align 4, !dbg !6378
  br label %do.end, !dbg !6378

do.end:                                           ; preds = %do.body
  ret void, !dbg !6380
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kgid_val(i32 %gid.coerce) #4 align 16 !dbg !6381 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !6385, metadata !DIExpression()), !dbg !6386
  %val = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !6387
  %0 = load i32, ptr %val, align 4, !dbg !6387
  ret i32 %0, !dbg !6388
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6389 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6391, metadata !DIExpression()), !dbg !6393
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6392, metadata !DIExpression()), !dbg !6394
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6395
  %1 = load i64, ptr %size.addr, align 8, !dbg !6396
  %conv = trunc i64 %1 to i32, !dbg !6396
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !6397
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6398
  %3 = load i64, ptr %size.addr, align 8, !dbg !6398
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #14, !dbg !6398
  ret void, !dbg !6399
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_dec_and_test(ptr noundef %v) #5 align 16 !dbg !6400 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6402, metadata !DIExpression()), !dbg !6403
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6404
  %call = call zeroext i1 @arch_atomic_dec_and_test(ptr noundef %0) #14, !dbg !6405
  ret i1 %call, !dbg !6406
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_dec_and_test(ptr noundef %v) #5 align 16 !dbg !6407 {
entry:
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6409, metadata !DIExpression()), !dbg !6412
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #13, !dbg !6413
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6410, metadata !DIExpression()), !dbg !6413
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6413
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6413
  %1 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #13, !dbg !6413, !srcloc !6414
  %2 = icmp ult i8 %1, 2, !dbg !6413
  call void @llvm.assume(i1 %2), !dbg !6413
  store i8 %1, ptr %c, align 1, !dbg !6413
  %3 = load i8, ptr %c, align 1, !dbg !6413, !range !6318, !noundef !1005
  %tobool = trunc i8 %3 to i1, !dbg !6413
  %frombool = zext i1 %tobool to i8, !dbg !6413
  store i8 %frombool, ptr %tmp, align 1, !dbg !6413
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #13, !dbg !6415
  %4 = load i8, ptr %tmp, align 1, !dbg !6413, !range !6318, !noundef !1005
  %tobool1 = trunc i8 %4 to i1, !dbg !6413
  ret i1 %tobool1, !dbg !6416
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #5 align 16 !dbg !6417 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6421, metadata !DIExpression()), !dbg !6422
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6423
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !6424
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6425
  call void @raw_atomic_inc(ptr noundef %1) #14, !dbg !6426
  ret void, !dbg !6427
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #5 align 16 !dbg !6428 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6430, metadata !DIExpression()), !dbg !6431
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6432
  call void @arch_atomic_inc(ptr noundef %0) #14, !dbg !6433
  ret void, !dbg !6434
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #5 align 16 !dbg !6435 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6437, metadata !DIExpression()), !dbg !6438
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6439
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6440
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #13, !dbg !6441, !srcloc !6442
  ret void, !dbg !6443
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_getgroups(i32 noundef %gidsetsize, ptr noundef %grouplist) #4 align 16 !dbg !6444 {
entry:
  %retval = alloca i64, align 8
  %gidsetsize.addr = alloca i32, align 4
  %grouplist.addr = alloca ptr, align 8
  %cred = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %gidsetsize, ptr %gidsetsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gidsetsize.addr, metadata !6448, metadata !DIExpression()), !dbg !6453
  store ptr %grouplist, ptr %grouplist.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grouplist.addr, metadata !6449, metadata !DIExpression()), !dbg !6453
  call void @llvm.lifetime.start.p0(i64 8, ptr %cred) #13, !dbg !6454
  call void @llvm.dbg.declare(metadata ptr %cred, metadata !6450, metadata !DIExpression()), !dbg !6455
  br label %do.body, !dbg !6456

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6458

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6458

do.end:                                           ; preds = %do.cond
  %call = call ptr @get_current() #14, !dbg !6456
  %cred1 = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 94, !dbg !6456
  %0 = load ptr, ptr %cred1, align 32, !dbg !6456
  store ptr %0, ptr %tmp, align 8, !dbg !6458
  %1 = load ptr, ptr %tmp, align 8, !dbg !6456
  store ptr %1, ptr %cred, align 8, !dbg !6455
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !6460
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6451, metadata !DIExpression()), !dbg !6461
  %2 = load i32, ptr %gidsetsize.addr, align 4, !dbg !6462
  %cmp = icmp slt i32 %2, 0, !dbg !6464
  br i1 %cmp, label %if.then, label %if.end, !dbg !6465

if.then:                                          ; preds = %do.end
  store i64 -22, ptr %retval, align 8, !dbg !6466
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6466

if.end:                                           ; preds = %do.end
  %3 = load ptr, ptr %cred, align 8, !dbg !6467
  %group_info = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 24, !dbg !6468
  %4 = load ptr, ptr %group_info, align 8, !dbg !6468
  %ngroups = getelementptr inbounds %struct.group_info, ptr %4, i32 0, i32 1, !dbg !6469
  %5 = load i32, ptr %ngroups, align 4, !dbg !6469
  store i32 %5, ptr %i, align 4, !dbg !6470
  %6 = load i32, ptr %gidsetsize.addr, align 4, !dbg !6471
  %tobool = icmp ne i32 %6, 0, !dbg !6471
  br i1 %tobool, label %if.then2, label %if.end11, !dbg !6473

if.then2:                                         ; preds = %if.end
  %7 = load i32, ptr %i, align 4, !dbg !6474
  %8 = load i32, ptr %gidsetsize.addr, align 4, !dbg !6477
  %cmp3 = icmp sgt i32 %7, %8, !dbg !6478
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !6479

if.then4:                                         ; preds = %if.then2
  store i32 -22, ptr %i, align 4, !dbg !6480
  br label %out, !dbg !6482

if.end5:                                          ; preds = %if.then2
  %9 = load ptr, ptr %grouplist.addr, align 8, !dbg !6483
  %10 = load ptr, ptr %cred, align 8, !dbg !6485
  %group_info6 = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 24, !dbg !6486
  %11 = load ptr, ptr %group_info6, align 8, !dbg !6486
  %call7 = call i32 @groups_to_user(ptr noundef %9, ptr noundef %11) #14, !dbg !6487
  %tobool8 = icmp ne i32 %call7, 0, !dbg !6487
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !6488

if.then9:                                         ; preds = %if.end5
  store i32 -14, ptr %i, align 4, !dbg !6489
  br label %out, !dbg !6491

if.end10:                                         ; preds = %if.end5
  br label %if.end11, !dbg !6492

if.end11:                                         ; preds = %if.end10, %if.end
  br label %out, !dbg !6471

out:                                              ; preds = %if.end11, %if.then9, %if.then4
  call void @llvm.dbg.label(metadata !6452), !dbg !6493
  %12 = load i32, ptr %i, align 4, !dbg !6494
  %conv = sext i32 %12 to i64, !dbg !6494
  store i64 %conv, ptr %retval, align 8, !dbg !6495
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6495

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !6496
  call void @llvm.lifetime.end.p0(i64 8, ptr %cred) #13, !dbg !6496
  %13 = load i64, ptr %retval, align 8, !dbg !6496
  ret i64 %13, !dbg !6496
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @groups_to_user(ptr noundef %grouplist, ptr noundef %group_info) #0 align 16 !dbg !6497 {
entry:
  %retval = alloca i32, align 4
  %grouplist.addr = alloca ptr, align 8
  %group_info.addr = alloca ptr, align 8
  %user_ns = alloca ptr, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %gid = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i32, align 4
  %__x = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp4 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %grouplist, ptr %grouplist.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grouplist.addr, metadata !6501, metadata !DIExpression()), !dbg !6518
  store ptr %group_info, ptr %group_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group_info.addr, metadata !6502, metadata !DIExpression()), !dbg !6519
  call void @llvm.lifetime.start.p0(i64 8, ptr %user_ns) #13, !dbg !6520
  call void @llvm.dbg.declare(metadata ptr %user_ns, metadata !6503, metadata !DIExpression()), !dbg !6521
  %call = call ptr @current_user_ns() #14, !dbg !6522
  store ptr %call, ptr %user_ns, align 8, !dbg !6521
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !6523
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6504, metadata !DIExpression()), !dbg !6524
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #13, !dbg !6525
  call void @llvm.dbg.declare(metadata ptr %count, metadata !6505, metadata !DIExpression()), !dbg !6526
  %0 = load ptr, ptr %group_info.addr, align 8, !dbg !6527
  %ngroups = getelementptr inbounds %struct.group_info, ptr %0, i32 0, i32 1, !dbg !6528
  %1 = load i32, ptr %ngroups, align 4, !dbg !6528
  store i32 %1, ptr %count, align 4, !dbg !6526
  store i32 0, ptr %i, align 4, !dbg !6529
  br label %for.cond, !dbg !6530

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !6531
  %3 = load i32, ptr %count, align 4, !dbg !6532
  %cmp = icmp ult i32 %2, %3, !dbg !6533
  br i1 %cmp, label %for.body, label %for.end, !dbg !6534

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #13, !dbg !6535
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !6506, metadata !DIExpression()), !dbg !6536
  %4 = load ptr, ptr %user_ns, align 8, !dbg !6537
  %5 = load ptr, ptr %group_info.addr, align 8, !dbg !6538
  %gid1 = getelementptr inbounds %struct.group_info, ptr %5, i32 0, i32 2, !dbg !6539
  %6 = load i32, ptr %i, align 4, !dbg !6540
  %idxprom = sext i32 %6 to i64, !dbg !6538
  %arrayidx = getelementptr [0 x %struct.kgid_t], ptr %gid1, i64 0, i64 %idxprom, !dbg !6538
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %arrayidx, i32 0, i32 0, !dbg !6541
  %7 = load i32, ptr %coerce.dive, align 4, !dbg !6541
  %call2 = call i32 @from_kgid_munged(ptr noundef %4, i32 %7) #14, !dbg !6541
  store i32 %call2, ptr %gid, align 4, !dbg !6542
  call void @might_fault() #14, !dbg !6543
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #13, !dbg !6544
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !6510, metadata !DIExpression()), !dbg !6544
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #13, !dbg !6544
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !6514, metadata !DIExpression()), !dbg !6544
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu) #13, !dbg !6544
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !6515, metadata !DIExpression()), !dbg !6544
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #13, !dbg !6544
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !6516, metadata !DIExpression()), !dbg !6544
  %8 = load i32, ptr %gid, align 4, !dbg !6544
  store i32 %8, ptr %__x, align 4, !dbg !6544
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #13, !dbg !6544
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6517, metadata !DIExpression()), !dbg !6544
  %9 = load ptr, ptr %grouplist.addr, align 8, !dbg !6544
  %10 = load i32, ptr %i, align 4, !dbg !6544
  %idx.ext = sext i32 %10 to i64, !dbg !6544
  %add.ptr = getelementptr i32, ptr %9, i64 %idx.ext, !dbg !6544
  store ptr %add.ptr, ptr %__ptr, align 8, !dbg !6544
  %11 = load ptr, ptr %__ptr, align 8, !dbg !6544
  store ptr %11, ptr %__ptr_pu, align 8, !dbg !6544
  %12 = load i32, ptr %__x, align 4, !dbg !6544
  store i32 %12, ptr %__val_pu, align 4, !dbg !6544
  %13 = call i64 @llvm.read_register.i64(metadata !5813), !dbg !6544
  %14 = load ptr, ptr %__ptr_pu, align 8, !dbg !6544
  %15 = load i32, ptr %__val_pu, align 4, !dbg !6544
  %16 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %14, i32 %15, i64 4, i64 %13) #13, !dbg !6544, !srcloc !6545
  %asmresult = extractvalue { ptr, i64 } %16, 0, !dbg !6544
  %asmresult3 = extractvalue { ptr, i64 } %16, 1, !dbg !6544
  %17 = ptrtoint ptr %asmresult to i64, !dbg !6544
  %18 = trunc i64 %17 to i32, !dbg !6544
  store i32 %18, ptr %__ret_pu, align 4, !dbg !6544
  call void @llvm.write_register.i64(metadata !5813, i64 %asmresult3), !dbg !6544
  %19 = load ptr, ptr %__ptr, align 8, !dbg !6546
  call void @kmsan_copy_to_user(ptr noundef %19, ptr noundef %__x, i64 noundef 4, i64 noundef 0) #14, !dbg !6546
  %20 = load i32, ptr %__ret_pu, align 4, !dbg !6544
  %conv = sext i32 %20 to i64, !dbg !6544
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6544
  store i64 %expval, ptr %tmp4, align 8, !dbg !6544
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #13, !dbg !6543
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #13, !dbg !6543
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu) #13, !dbg !6543
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #13, !dbg !6543
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #13, !dbg !6543
  %21 = load i64, ptr %tmp4, align 8, !dbg !6544
  store i64 %21, ptr %tmp, align 8, !dbg !6543
  %22 = load i64, ptr %tmp, align 8, !dbg !6543
  %tobool = icmp ne i64 %22, 0, !dbg !6548
  br i1 %tobool, label %if.then, label %if.end, !dbg !6549

if.then:                                          ; preds = %for.body
  store i32 -14, ptr %retval, align 4, !dbg !6550
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6550

if.end:                                           ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6551
  br label %cleanup, !dbg !6551

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #13, !dbg !6551
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup5 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !6552

for.inc:                                          ; preds = %cleanup.cont
  %23 = load i32, ptr %i, align 4, !dbg !6553
  %inc = add i32 %23, 1, !dbg !6553
  store i32 %inc, ptr %i, align 4, !dbg !6553
  br label %for.cond, !dbg !6554, !llvm.loop !6555

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !6557
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup5, !dbg !6557

cleanup5:                                         ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #13, !dbg !6558
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !6558
  call void @llvm.lifetime.end.p0(i64 8, ptr %user_ns) #13, !dbg !6558
  %24 = load i32, ptr %retval, align 4, !dbg !6558
  ret i32 %24, !dbg !6558
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid_munged(ptr noundef %to, i32 %kgid.coerce) #4 align 16 !dbg !6559 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %gid = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6563, metadata !DIExpression()), !dbg !6566
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !6564, metadata !DIExpression()), !dbg !6567
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #13, !dbg !6568
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !6565, metadata !DIExpression()), !dbg !6569
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6570
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !6571
  %1 = load i32, ptr %coerce.dive1, align 4, !dbg !6571
  %call = call i32 @from_kgid(ptr noundef %0, i32 %1) #14, !dbg !6571
  store i32 %call, ptr %gid, align 4, !dbg !6569
  %2 = load i32, ptr %gid, align 4, !dbg !6572
  %cmp = icmp eq i32 %2, -1, !dbg !6574
  br i1 %cmp, label %if.then, label %if.end, !dbg !6575

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @overflowgid, align 4, !dbg !6576
  store i32 %3, ptr %gid, align 4, !dbg !6577
  br label %if.end, !dbg !6578

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %gid, align 4, !dbg !6579
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #13, !dbg !6580
  ret i32 %4, !dbg !6581
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #4 align 16 !dbg !6582 {
entry:
  ret void, !dbg !6584
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #11

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %to_copy, i64 noundef %left) #4 align 16 !dbg !6585 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to_copy.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6590, metadata !DIExpression()), !dbg !6594
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6591, metadata !DIExpression()), !dbg !6595
  store i64 %to_copy, ptr %to_copy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_copy.addr, metadata !6592, metadata !DIExpression()), !dbg !6596
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !6593, metadata !DIExpression()), !dbg !6597
  ret void, !dbg !6598
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid(ptr noundef %to, i32 %kgid.coerce) #4 align 16 !dbg !6599 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6601, metadata !DIExpression()), !dbg !6603
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !6602, metadata !DIExpression()), !dbg !6604
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !6605
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !6605
  %call = call i32 @__kgid_val(i32 %0) #14, !dbg !6605
  ret i32 %call, !dbg !6606
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_setgroups(i32 noundef %gidsetsize, ptr noundef %grouplist) #4 align 16 !dbg !6607 {
entry:
  %retval = alloca i64, align 8
  %gidsetsize.addr = alloca i32, align 4
  %grouplist.addr = alloca ptr, align 8
  %group_info = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %gidsetsize, ptr %gidsetsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gidsetsize.addr, metadata !6609, metadata !DIExpression()), !dbg !6613
  store ptr %grouplist, ptr %grouplist.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grouplist.addr, metadata !6610, metadata !DIExpression()), !dbg !6613
  call void @llvm.lifetime.start.p0(i64 8, ptr %group_info) #13, !dbg !6614
  call void @llvm.dbg.declare(metadata ptr %group_info, metadata !6611, metadata !DIExpression()), !dbg !6615
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #13, !dbg !6616
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !6612, metadata !DIExpression()), !dbg !6617
  %call = call zeroext i1 @may_setgroups() #14, !dbg !6618
  br i1 %call, label %if.end, label %if.then, !dbg !6620

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !6621
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6621

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %gidsetsize.addr, align 4, !dbg !6622
  %cmp = icmp ugt i32 %0, 65536, !dbg !6624
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6625

if.then2:                                         ; preds = %if.end
  store i64 -22, ptr %retval, align 8, !dbg !6626
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6626

if.end3:                                          ; preds = %if.end
  %1 = load i32, ptr %gidsetsize.addr, align 4, !dbg !6627
  %call4 = call ptr @groups_alloc(i32 noundef %1) #14, !dbg !6628
  store ptr %call4, ptr %group_info, align 8, !dbg !6629
  %2 = load ptr, ptr %group_info, align 8, !dbg !6630
  %tobool = icmp ne ptr %2, null, !dbg !6630
  br i1 %tobool, label %if.end6, label %if.then5, !dbg !6632

if.then5:                                         ; preds = %if.end3
  store i64 -12, ptr %retval, align 8, !dbg !6633
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6633

if.end6:                                          ; preds = %if.end3
  %3 = load ptr, ptr %group_info, align 8, !dbg !6634
  %4 = load ptr, ptr %grouplist.addr, align 8, !dbg !6635
  %call7 = call i32 @groups_from_user(ptr noundef %3, ptr noundef %4) #14, !dbg !6636
  store i32 %call7, ptr %retval1, align 4, !dbg !6637
  %5 = load i32, ptr %retval1, align 4, !dbg !6638
  %tobool8 = icmp ne i32 %5, 0, !dbg !6638
  br i1 %tobool8, label %if.then9, label %if.end13, !dbg !6640

if.then9:                                         ; preds = %if.end6
  br label %do.body, !dbg !6641

do.body:                                          ; preds = %if.then9
  %6 = load ptr, ptr %group_info, align 8, !dbg !6643
  %usage = getelementptr inbounds %struct.group_info, ptr %6, i32 0, i32 0, !dbg !6643
  %call10 = call zeroext i1 @atomic_dec_and_test(ptr noundef %usage) #14, !dbg !6643
  br i1 %call10, label %if.then11, label %if.end12, !dbg !6646

if.then11:                                        ; preds = %do.body
  %7 = load ptr, ptr %group_info, align 8, !dbg !6643
  call void @groups_free(ptr noundef %7) #14, !dbg !6643
  br label %if.end12, !dbg !6643

if.end12:                                         ; preds = %if.then11, %do.body
  br label %do.cond, !dbg !6646

do.cond:                                          ; preds = %if.end12
  br label %do.end, !dbg !6646

do.end:                                           ; preds = %do.cond
  %8 = load i32, ptr %retval1, align 4, !dbg !6647
  %conv = sext i32 %8 to i64, !dbg !6647
  store i64 %conv, ptr %retval, align 8, !dbg !6648
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6648

if.end13:                                         ; preds = %if.end6
  %9 = load ptr, ptr %group_info, align 8, !dbg !6649
  call void @groups_sort(ptr noundef %9) #14, !dbg !6650
  %10 = load ptr, ptr %group_info, align 8, !dbg !6651
  %call14 = call i32 @set_current_groups(ptr noundef %10) #14, !dbg !6652
  store i32 %call14, ptr %retval1, align 4, !dbg !6653
  br label %do.body15, !dbg !6654

do.body15:                                        ; preds = %if.end13
  %11 = load ptr, ptr %group_info, align 8, !dbg !6655
  %usage16 = getelementptr inbounds %struct.group_info, ptr %11, i32 0, i32 0, !dbg !6655
  %call17 = call zeroext i1 @atomic_dec_and_test(ptr noundef %usage16) #14, !dbg !6655
  br i1 %call17, label %if.then18, label %if.end19, !dbg !6658

if.then18:                                        ; preds = %do.body15
  %12 = load ptr, ptr %group_info, align 8, !dbg !6655
  call void @groups_free(ptr noundef %12) #14, !dbg !6655
  br label %if.end19, !dbg !6655

if.end19:                                         ; preds = %if.then18, %do.body15
  br label %do.cond20, !dbg !6658

do.cond20:                                        ; preds = %if.end19
  br label %do.end21, !dbg !6658

do.end21:                                         ; preds = %do.cond20
  %13 = load i32, ptr %retval1, align 4, !dbg !6659
  %conv22 = sext i32 %13 to i64, !dbg !6659
  store i64 %conv22, ptr %retval, align 8, !dbg !6660
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6660

cleanup:                                          ; preds = %do.end21, %do.end, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #13, !dbg !6661
  call void @llvm.lifetime.end.p0(i64 8, ptr %group_info) #13, !dbg !6661
  %14 = load i64, ptr %retval, align 8, !dbg !6661
  ret i64 %14, !dbg !6661
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @groups_from_user(ptr noundef %group_info, ptr noundef %grouplist) #0 align 16 !dbg !6662 {
entry:
  %retval = alloca i32, align 4
  %group_info.addr = alloca ptr, align 8
  %grouplist.addr = alloca ptr, align 8
  %user_ns = alloca ptr, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %gid = alloca i32, align 4
  %kgid = alloca %struct.kgid_t, align 4
  %tmp = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %tmp5 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp7 = alloca %struct.kgid_t, align 4
  store ptr %group_info, ptr %group_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group_info.addr, metadata !6666, metadata !DIExpression()), !dbg !6683
  store ptr %grouplist, ptr %grouplist.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grouplist.addr, metadata !6667, metadata !DIExpression()), !dbg !6684
  call void @llvm.lifetime.start.p0(i64 8, ptr %user_ns) #13, !dbg !6685
  call void @llvm.dbg.declare(metadata ptr %user_ns, metadata !6668, metadata !DIExpression()), !dbg !6686
  %call = call ptr @current_user_ns() #14, !dbg !6687
  store ptr %call, ptr %user_ns, align 8, !dbg !6686
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !6688
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6669, metadata !DIExpression()), !dbg !6689
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #13, !dbg !6690
  call void @llvm.dbg.declare(metadata ptr %count, metadata !6670, metadata !DIExpression()), !dbg !6691
  %0 = load ptr, ptr %group_info.addr, align 8, !dbg !6692
  %ngroups = getelementptr inbounds %struct.group_info, ptr %0, i32 0, i32 1, !dbg !6693
  %1 = load i32, ptr %ngroups, align 4, !dbg !6693
  store i32 %1, ptr %count, align 4, !dbg !6691
  store i32 0, ptr %i, align 4, !dbg !6694
  br label %for.cond, !dbg !6695

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !6696
  %3 = load i32, ptr %count, align 4, !dbg !6697
  %cmp = icmp ult i32 %2, %3, !dbg !6698
  br i1 %cmp, label %for.body, label %for.end, !dbg !6699

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #13, !dbg !6700
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !6671, metadata !DIExpression()), !dbg !6701
  call void @llvm.lifetime.start.p0(i64 4, ptr %kgid) #13, !dbg !6702
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !6675, metadata !DIExpression()), !dbg !6703
  call void @might_fault() #14, !dbg !6704
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #13, !dbg !6705
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !6676, metadata !DIExpression()), !dbg !6705
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu) #13, !dbg !6705
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !6680, metadata !DIExpression()), !dbg !6705
  %4 = call i64 @llvm.read_register.i64(metadata !5813), !dbg !6705
  %5 = load ptr, ptr %grouplist.addr, align 8, !dbg !6705
  %6 = load i32, ptr %i, align 4, !dbg !6705
  %idx.ext = sext i32 %6 to i64, !dbg !6705
  %add.ptr = getelementptr i32, ptr %5, i64 %idx.ext, !dbg !6705
  %7 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %add.ptr, i64 4, i64 %4) #13, !dbg !6705, !srcloc !6706
  %asmresult = extractvalue { ptr, i32, i64 } %7, 0, !dbg !6705
  %asmresult1 = extractvalue { ptr, i32, i64 } %7, 1, !dbg !6705
  %asmresult2 = extractvalue { ptr, i32, i64 } %7, 2, !dbg !6705
  %8 = ptrtoint ptr %asmresult to i64, !dbg !6705
  %9 = trunc i64 %8 to i32, !dbg !6705
  store i32 %9, ptr %__ret_gu, align 4, !dbg !6705
  store i32 %asmresult1, ptr %__val_gu, align 4, !dbg !6705
  call void @llvm.write_register.i64(metadata !5813, i64 %asmresult2), !dbg !6705
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #13, !dbg !6707
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !6681, metadata !DIExpression()), !dbg !6707
  %10 = load i32, ptr %__val_gu, align 4, !dbg !6707
  %conv = zext i32 %10 to i64, !dbg !6707
  store i64 %conv, ptr %__tmp, align 8, !dbg !6707
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #14, !dbg !6707
  %11 = load i64, ptr %__tmp, align 8, !dbg !6707
  %conv4 = trunc i64 %11 to i32, !dbg !6707
  store i32 %conv4, ptr %__val_gu, align 4, !dbg !6707
  store i32 %conv4, ptr %tmp3, align 4, !dbg !6707
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #13, !dbg !6705
  %12 = load i32, ptr %tmp3, align 4, !dbg !6707
  %13 = load i32, ptr %__val_gu, align 4, !dbg !6705
  store i32 %13, ptr %gid, align 4, !dbg !6705
  %14 = load i32, ptr %__ret_gu, align 4, !dbg !6705
  %conv6 = sext i32 %14 to i64, !dbg !6705
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !6705
  store i64 %expval, ptr %tmp5, align 8, !dbg !6705
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu) #13, !dbg !6704
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #13, !dbg !6704
  %15 = load i64, ptr %tmp5, align 8, !dbg !6705
  store i64 %15, ptr %tmp, align 8, !dbg !6704
  %16 = load i64, ptr %tmp, align 8, !dbg !6704
  %tobool = icmp ne i64 %16, 0, !dbg !6708
  br i1 %tobool, label %if.then, label %if.end, !dbg !6709

if.then:                                          ; preds = %for.body
  store i32 -14, ptr %retval, align 4, !dbg !6710
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6710

if.end:                                           ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp7) #13, !dbg !6711
  %17 = load ptr, ptr %user_ns, align 8, !dbg !6712
  %18 = load i32, ptr %gid, align 4, !dbg !6713
  %call8 = call i32 @make_kgid(ptr noundef %17, i32 noundef %18) #14, !dbg !6711
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %tmp7, i32 0, i32 0, !dbg !6711
  store i32 %call8, ptr %coerce.dive, align 4, !dbg !6711
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %kgid, ptr align 4 %tmp7, i64 4, i1 false), !dbg !6711
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp7) #13, !dbg !6711
  %coerce.dive9 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !6714
  %19 = load i32, ptr %coerce.dive9, align 4, !dbg !6714
  %call10 = call zeroext i1 @gid_valid(i32 %19) #14, !dbg !6714
  br i1 %call10, label %if.end12, label %if.then11, !dbg !6716

if.then11:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6717
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6717

if.end12:                                         ; preds = %if.end
  %20 = load ptr, ptr %group_info.addr, align 8, !dbg !6718
  %gid13 = getelementptr inbounds %struct.group_info, ptr %20, i32 0, i32 2, !dbg !6719
  %21 = load i32, ptr %i, align 4, !dbg !6720
  %idxprom = sext i32 %21 to i64, !dbg !6718
  %arrayidx = getelementptr [0 x %struct.kgid_t], ptr %gid13, i64 0, i64 %idxprom, !dbg !6718
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx, ptr align 4 %kgid, i64 4, i1 false), !dbg !6721
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6722
  br label %cleanup, !dbg !6722

cleanup:                                          ; preds = %if.end12, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %kgid) #13, !dbg !6722
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #13, !dbg !6722
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup15 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !6723

for.inc:                                          ; preds = %cleanup.cont
  %22 = load i32, ptr %i, align 4, !dbg !6724
  %inc = add i32 %22, 1, !dbg !6724
  store i32 %inc, ptr %i, align 4, !dbg !6724
  br label %for.cond, !dbg !6725, !llvm.loop !6726

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !6728
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup15, !dbg !6728

cleanup15:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #13, !dbg !6729
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !6729
  call void @llvm.lifetime.end.p0(i64 8, ptr %user_ns) #13, !dbg !6729
  %23 = load i32, ptr %retval, align 4, !dbg !6729
  ret i32 %23, !dbg !6729
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #4 align 16 !dbg !6730 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6734, metadata !DIExpression()), !dbg !6736
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6735, metadata !DIExpression()), !dbg !6737
  ret void, !dbg !6738
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kgid(ptr noundef %from, i32 noundef %gid) #4 align 16 !dbg !6739 {
entry:
  %retval = alloca %struct.kgid_t, align 4
  %from.addr = alloca ptr, align 8
  %gid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6743, metadata !DIExpression()), !dbg !6745
  store i32 %gid, ptr %gid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gid.addr, metadata !6744, metadata !DIExpression()), !dbg !6746
  %val = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !6747
  %0 = load i32, ptr %gid.addr, align 4, !dbg !6747
  store i32 %0, ptr %val, align 4, !dbg !6747
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !6748
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !6748
  ret i32 %1, !dbg !6748
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gid_valid(i32 %gid.coerce) #4 align 16 !dbg !6749 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !6753, metadata !DIExpression()), !dbg !6754
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !6755
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !6755
  %call = call i32 @__kgid_val(i32 %0) #14, !dbg !6755
  %cmp = icmp ne i32 %call, -1, !dbg !6756
  ret i1 %cmp, !dbg !6757
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #12 = { nocallback nounwind }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!5813}
!llvm.module.flags = !{!5814, !5815, !5816, !5817, !5818, !5819, !5820, !5821}
!llvm.ident = !{!5822}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_groups_alloc314", scope: !2, file: !3, line: 27, type: !14, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.groups.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/groups\22 -D KBUILD_BASENAME=\22groups\22 -D KBUILD_MODNAME=\22groups\22 -D __KBUILD_MODNAME=kmod_groups -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/groups.ll kernel/groups.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !267, globals: !5800, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/groups.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d3cfa6d304d3b7909811fa8abaccdd4")
!4 = !{!5, !102, !107, !112, !120, !127, !135, !151, !158, !164, !175, !181, !187, !194, !202, !209, !218, !223, !228, !234, !243, !248, !254, !260}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !7, file: !6, line: 147, baseType: !98, size: 32, elements: !99)
!6 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !6, line: 135, size: 512, elements: !8)
!8 = !{!9, !13, !15, !17, !21, !22, !38, !96, !97}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !7, file: !6, line: 136, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !7, file: !6, line: 137, baseType: !14, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !7, file: !6, line: 138, baseType: !16, size: 32, offset: 128)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !7, file: !6, line: 139, baseType: !18, size: 16, offset: 160)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !19, line: 24, baseType: !20)
!19 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!20 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7, file: !6, line: 150, baseType: !5, size: 32, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !7, file: !6, line: 151, baseType: !23, size: 64, offset: 256)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !6, line: 64, baseType: !25)
!25 = !DISubroutineType(types: !26)
!26 = !{!16, !27, !16, !14, !28, !34}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 61, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !31, line: 72, baseType: !32)
!31 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !31, line: 16, baseType: !33)
!33 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !19, line: 52, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !31, line: 88, baseType: !37)
!37 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !7, file: !6, line: 152, baseType: !39, size: 64, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !6, line: 117, size: 256, elements: !41)
!41 = !{!42, !47}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !40, file: !6, line: 118, baseType: !43, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !19, line: 174, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 172, size: 32, elements: !45)
!45 = !{!46}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !44, file: !19, line: 173, baseType: !16, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !40, file: !6, line: 119, baseType: !48, size: 192, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !49, line: 41, baseType: !50)
!49 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !49, line: 37, size: 192, elements: !51)
!51 = !{!52, !90}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !50, file: !49, line: 38, baseType: !53, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !54, line: 29, baseType: !55)
!54 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !54, line: 17, size: 32, elements: !56)
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_member, scope: !55, file: !54, line: 18, baseType: !58, size: 32)
!58 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !55, file: !54, line: 18, size: 32, elements: !59)
!59 = !{!60}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !58, file: !54, line: 19, baseType: !61, size: 32)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !62, line: 14, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !61, file: !62, line: 15, baseType: !65, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !66, line: 44, baseType: !67)
!66 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !66, line: 14, size: 32, elements: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, scope: !67, file: !66, line: 15, baseType: !70, size: 32)
!70 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !67, file: !66, line: 15, size: 32, elements: !71)
!71 = !{!72, !73, !83}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !70, file: !66, line: 16, baseType: !43, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, scope: !70, file: !66, line: 24, baseType: !74, size: 16)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !70, file: !66, line: 24, size: 16, elements: !75)
!75 = !{!76, !82}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !74, file: !66, line: 25, baseType: !77, size: 8)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !78, line: 17, baseType: !79)
!78 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !80, line: 21, baseType: !81)
!80 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!81 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !74, file: !66, line: 26, baseType: !77, size: 8, offset: 8)
!83 = !DIDerivedType(tag: DW_TAG_member, scope: !70, file: !66, line: 28, baseType: !84, size: 32)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !70, file: !66, line: 28, size: 32, elements: !85)
!85 = !{!86, !89}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !84, file: !66, line: 29, baseType: !87, size: 16)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !78, line: 19, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !80, line: 24, baseType: !20)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !84, file: !66, line: 30, baseType: !87, size: 16, offset: 16)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !50, file: !49, line: 39, baseType: !91, size: 128, offset: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !19, line: 190, size: 128, elements: !92)
!92 = !{!93, !95}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !91, file: !19, line: 191, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !91, file: !19, line: 191, baseType: !94, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !7, file: !6, line: 153, baseType: !14, size: 64, offset: 384)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !7, file: !6, line: 154, baseType: !14, size: 64, offset: 448)
!98 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!99 = !{!100, !101}
!100 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!101 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !103, line: 10, baseType: !98, size: 32, elements: !104)
!103 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!104 = !{!105, !106}
!105 = !DIEnumerator(name: "false", value: 0)
!106 = !DIEnumerator(name: "true", value: 1)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !108, line: 65, baseType: !98, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!109 = !{!110, !111}
!110 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!111 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !113, line: 9, baseType: !98, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!114 = !{!115, !116, !117, !118, !119}
!115 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!116 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!117 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!118 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!119 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !121, line: 312, baseType: !98, size: 32, elements: !122)
!121 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!122 = !{!123, !124, !125, !126}
!123 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!124 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!125 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!126 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !128, line: 68, baseType: !98, size: 32, elements: !129)
!128 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!129 = !{!130, !131, !132, !133, !134}
!130 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!131 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!132 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!133 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!134 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !136, line: 1325, baseType: !98, size: 32, elements: !137)
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
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !152, line: 15, baseType: !98, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!153 = !{!154, !155, !156, !157}
!154 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!155 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!156 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!157 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !159, line: 26, baseType: !98, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!160 = !{!161, !162, !163}
!161 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!162 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!163 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !165, line: 253, baseType: !98, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!166 = !{!167, !168, !169, !170, !171, !172, !173, !174}
!167 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!168 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!169 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!170 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!171 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!172 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!173 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!174 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !165, line: 158, baseType: !98, size: 32, elements: !176)
!176 = !{!177, !178, !179, !180}
!177 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!178 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!179 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!180 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !182, line: 45, baseType: !98, size: 32, elements: !183)
!182 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!183 = !{!184, !185, !186}
!184 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!185 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!186 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !188, line: 487, baseType: !98, size: 32, elements: !189)
!188 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!189 = !{!190, !191, !192, !193}
!190 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!191 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!192 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!193 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!194 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !195, line: 620, baseType: !98, size: 32, elements: !196)
!195 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!196 = !{!197, !198, !199, !200, !201}
!197 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!198 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!199 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!200 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!201 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!202 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !195, line: 597, baseType: !16, size: 32, elements: !203)
!203 = !{!204, !205, !206, !207, !208}
!204 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!205 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!206 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!207 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!208 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!209 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !188, line: 547, baseType: !98, size: 32, elements: !210)
!210 = !{!211, !212, !213, !214, !215, !216, !217}
!211 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!212 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!213 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!214 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!215 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!216 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!217 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!218 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !188, line: 564, baseType: !98, size: 32, elements: !219)
!219 = !{!220, !221, !222}
!220 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!221 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!222 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!223 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !188, line: 577, baseType: !98, size: 32, elements: !224)
!224 = !{!225, !226, !227}
!225 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!226 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!227 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !188, line: 503, baseType: !98, size: 32, elements: !229)
!229 = !{!230, !231, !232, !233}
!230 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!231 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!232 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!233 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!234 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !235, line: 593, baseType: !16, size: 32, elements: !236)
!235 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!236 = !{!237, !238, !239, !240, !241, !242}
!237 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!238 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!239 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!240 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!241 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!242 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !244, line: 2052, baseType: !98, size: 32, elements: !245)
!244 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!245 = !{!246, !247}
!246 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!247 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!248 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !249, line: 54, baseType: !98, size: 32, elements: !250)
!249 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!250 = !{!251, !252, !253}
!251 = !DIEnumerator(name: "USRQUOTA", value: 0)
!252 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!253 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!254 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !255, line: 16, baseType: !98, size: 32, elements: !256)
!255 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!256 = !{!257, !258, !259}
!257 = !DIEnumerator(name: "TT_NONE", value: 0)
!258 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!259 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!260 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !261, line: 51, baseType: !98, size: 32, elements: !262)
!261 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!262 = !{!263, !264, !265, !266}
!263 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!264 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!265 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!266 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!267 = !{!16, !268, !14, !269, !98, !29, !686, !628, !688, !689, !33, !5799, !296, !311}
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !19, line: 154, baseType: !98)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !272, line: 110, size: 1472, elements: !273)
!272 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!273 = !{!274, !283, !291, !298, !299, !300, !301, !302, !303, !304, !305, !314, !315, !316, !317, !318, !319, !472, !473, !474, !475, !476, !513, !670, !671, !681}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !271, file: !272, line: 111, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !276, line: 13, baseType: !277)
!276 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !19, line: 181, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 179, size: 64, elements: !279)
!279 = !{!280}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !278, file: !19, line: 180, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !78, line: 22, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !80, line: 30, baseType: !37)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !271, file: !272, line: 112, baseType: !284, size: 32, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !285, line: 23, baseType: !286)
!285 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !285, line: 21, size: 32, elements: !287)
!287 = !{!288}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !286, file: !285, line: 22, baseType: !289, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !19, line: 37, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !31, line: 49, baseType: !98)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !271, file: !272, line: 113, baseType: !292, size: 32, offset: 96)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !285, line: 28, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !285, line: 26, size: 32, elements: !294)
!294 = !{!295}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !293, file: !285, line: 27, baseType: !296, size: 32)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !19, line: 38, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !31, line: 50, baseType: !98)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !271, file: !272, line: 114, baseType: !284, size: 32, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !271, file: !272, line: 115, baseType: !292, size: 32, offset: 160)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !271, file: !272, line: 116, baseType: !284, size: 32, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !271, file: !272, line: 117, baseType: !292, size: 32, offset: 224)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !271, file: !272, line: 118, baseType: !284, size: 32, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !271, file: !272, line: 119, baseType: !292, size: 32, offset: 288)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !271, file: !272, line: 120, baseType: !98, size: 32, offset: 320)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !271, file: !272, line: 121, baseType: !306, size: 64, offset: 384)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !307, line: 24, baseType: !308)
!307 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !307, line: 24, size: 64, elements: !309)
!309 = !{!310}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !308, file: !307, line: 24, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !78, line: 23, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !80, line: 31, baseType: !313)
!313 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !271, file: !272, line: 122, baseType: !306, size: 64, offset: 448)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !271, file: !272, line: 123, baseType: !306, size: 64, offset: 512)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !271, file: !272, line: 124, baseType: !306, size: 64, offset: 576)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !271, file: !272, line: 125, baseType: !306, size: 64, offset: 640)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !271, file: !272, line: 127, baseType: !81, size: 8, offset: 704)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !271, file: !272, line: 129, baseType: !320, size: 64, offset: 768)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !322, line: 195, size: 1728, elements: !323)
!322 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!323 = !{!324, !330, !335, !347, !361, !364, !365, !372, !373, !374, !375, !380, !381, !382, !384, !385, !434, !457}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !321, file: !322, line: 196, baseType: !325, size: 32)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !326, line: 113, baseType: !327)
!326 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !326, line: 111, size: 32, elements: !328)
!328 = !{!329}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !327, file: !326, line: 112, baseType: !43, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !321, file: !322, line: 197, baseType: !331, size: 32, offset: 32)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !322, line: 28, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !19, line: 104, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !78, line: 20, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !80, line: 26, baseType: !16)
!335 = !DIDerivedType(tag: DW_TAG_member, scope: !321, file: !322, line: 198, baseType: !336, size: 192, offset: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !321, file: !322, line: 198, size: 192, elements: !337)
!337 = !{!338, !339}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !336, file: !322, line: 199, baseType: !91, size: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !336, file: !322, line: 200, baseType: !340, size: 192, align: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !341, line: 5, size: 192, align: 64, elements: !342)
!341 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!342 = !{!343, !344, !346}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !340, file: !341, line: 6, baseType: !33, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !340, file: !341, line: 7, baseType: !345, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !340, file: !341, line: 8, baseType: !345, size: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !321, file: !322, line: 205, baseType: !348, size: 320, offset: 256)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !349, line: 48, size: 320, elements: !350)
!349 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!350 = !{!351, !352, !353, !358, !360}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !348, file: !349, line: 49, baseType: !275, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !348, file: !349, line: 55, baseType: !275, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !348, file: !349, line: 57, baseType: !354, size: 32, offset: 128)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !355, line: 15, size: 32, elements: !356)
!355 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !354, file: !355, line: 20, baseType: !43, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !348, file: !349, line: 59, baseType: !359, size: 32, offset: 160)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !62, line: 23, baseType: !61)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !348, file: !349, line: 60, baseType: !91, size: 128, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !321, file: !322, line: 206, baseType: !362, size: 64, offset: 576)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !322, line: 206, flags: DIFlagFwdDecl)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !321, file: !322, line: 207, baseType: !14, size: 64, offset: 640)
!365 = !DIDerivedType(tag: DW_TAG_member, scope: !321, file: !322, line: 208, baseType: !366, size: 64, offset: 704)
!366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !321, file: !322, line: 208, size: 64, elements: !367)
!367 = !{!368, !371}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !366, file: !322, line: 209, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !370, line: 8, baseType: !282)
!370 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!371 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !366, file: !322, line: 210, baseType: !369, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !321, file: !322, line: 212, baseType: !369, size: 64, offset: 768)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !321, file: !322, line: 213, baseType: !284, size: 32, offset: 832)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !321, file: !322, line: 214, baseType: !292, size: 32, offset: 864)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !321, file: !322, line: 215, baseType: !376, size: 32, offset: 896)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !322, line: 31, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !19, line: 110, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !78, line: 21, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !80, line: 27, baseType: !98)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !321, file: !322, line: 216, baseType: !20, size: 16, offset: 928)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !321, file: !322, line: 217, baseType: !20, size: 16, offset: 944)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !321, file: !322, line: 221, baseType: !383, size: 16, offset: 960)
!383 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !321, file: !322, line: 228, baseType: !33, size: 64, offset: 1024)
!385 = !DIDerivedType(tag: DW_TAG_member, scope: !321, file: !322, line: 245, baseType: !386, size: 320, offset: 1088)
!386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !321, file: !322, line: 245, size: 320, elements: !387)
!387 = !{!388, !425}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !386, file: !322, line: 246, baseType: !389, size: 320)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !322, line: 114, size: 320, elements: !390)
!390 = !{!391, !392, !404, !407, !424}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !389, file: !322, line: 116, baseType: !33, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, scope: !389, file: !322, line: 117, baseType: !393, size: 64, offset: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !389, file: !322, line: 117, size: 64, elements: !394)
!394 = !{!395, !403}
!395 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !322, line: 118, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !393, file: !322, line: 118, size: 64, elements: !397)
!397 = !{!398, !399}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !396, file: !322, line: 120, baseType: !87, size: 16)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !396, file: !322, line: 121, baseType: !400, size: 48, offset: 16)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 48, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 6)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !393, file: !322, line: 127, baseType: !33, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !389, file: !322, line: 129, baseType: !405, size: 64, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !322, line: 102, flags: DIFlagFwdDecl)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !389, file: !322, line: 130, baseType: !408, size: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !322, line: 108, size: 192, elements: !410)
!410 = !{!411, !420, !421}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !409, file: !322, line: 109, baseType: !412, size: 128, align: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !19, line: 232, size: 128, align: 64, elements: !413)
!413 = !{!414, !416}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !412, file: !19, line: 233, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !412, file: !19, line: 234, baseType: !417, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !415}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !409, file: !322, line: 110, baseType: !325, size: 32, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !409, file: !322, line: 111, baseType: !422, size: 8, offset: 160)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !19, line: 35, baseType: !423)
!423 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !389, file: !322, line: 131, baseType: !10, size: 64, offset: 256)
!425 = !DIDerivedType(tag: DW_TAG_member, scope: !386, file: !322, line: 247, baseType: !426, size: 320)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !386, file: !322, line: 247, size: 320, elements: !427)
!427 = !{!428, !429, !430, !431, !432}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !426, file: !322, line: 248, baseType: !33, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !426, file: !322, line: 249, baseType: !33, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !426, file: !322, line: 250, baseType: !405, size: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !426, file: !322, line: 251, baseType: !408, size: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !426, file: !322, line: 252, baseType: !433, size: 64, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, scope: !321, file: !322, line: 260, baseType: !435, size: 256, offset: 1408)
!435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !321, file: !322, line: 260, size: 256, elements: !436)
!436 = !{!437, !445}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !435, file: !322, line: 261, baseType: !438, size: 256)
!438 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !322, line: 134, size: 256, elements: !439)
!439 = !{!440, !441}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !438, file: !322, line: 135, baseType: !14, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !438, file: !322, line: 136, baseType: !442, size: 256)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !443)
!443 = !{!444}
!444 = !DISubrange(count: 4)
!445 = !DIDerivedType(tag: DW_TAG_member, scope: !435, file: !322, line: 262, baseType: !446, size: 256)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !435, file: !322, line: 262, size: 256, elements: !447)
!447 = !{!448, !449}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !446, file: !322, line: 264, baseType: !91, size: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !446, file: !322, line: 265, baseType: !450, size: 128, offset: 128)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !451, line: 22, size: 128, elements: !452)
!451 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!452 = !{!453, !456}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !450, file: !451, line: 23, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !451, line: 23, flags: DIFlagFwdDecl)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !450, file: !451, line: 24, baseType: !33, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !321, file: !322, line: 280, baseType: !458, size: 64, offset: 1664)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !322, line: 176, size: 192, elements: !460)
!460 = !{!461, !470, !471}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !459, file: !322, line: 177, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !322, line: 171, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!16, !320, !466, !468, !320}
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !459, file: !322, line: 178, baseType: !320, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !459, file: !322, line: 179, baseType: !405, size: 64, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !271, file: !272, line: 130, baseType: !320, size: 64, offset: 832)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !271, file: !272, line: 131, baseType: !320, size: 64, offset: 896)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !271, file: !272, line: 132, baseType: !320, size: 64, offset: 960)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !271, file: !272, line: 135, baseType: !14, size: 64, offset: 1024)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !271, file: !272, line: 137, baseType: !477, size: 64, offset: 1088)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !479, line: 14, size: 1088, elements: !480)
!479 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!480 = !{!481, !482, !491, !492, !493, !500, !501, !502}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !478, file: !479, line: 15, baseType: !325, size: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !478, file: !479, line: 17, baseType: !483, size: 320, offset: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !484, line: 22, size: 320, elements: !485)
!484 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!485 = !{!486, !487, !488, !489}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !483, file: !484, line: 23, baseType: !359, size: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !483, file: !484, line: 24, baseType: !281, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !483, file: !484, line: 26, baseType: !91, size: 128, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !483, file: !484, line: 28, baseType: !490, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !478, file: !479, line: 19, baseType: !33, size: 64, offset: 384)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !478, file: !479, line: 20, baseType: !275, size: 64, offset: 448)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !478, file: !479, line: 23, baseType: !494, size: 128, offset: 512)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !19, line: 198, size: 128, elements: !495)
!495 = !{!496, !498}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !494, file: !19, line: 199, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !494, file: !19, line: 199, baseType: !499, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !478, file: !479, line: 24, baseType: !284, size: 32, offset: 640)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !478, file: !479, line: 29, baseType: !275, size: 64, offset: 704)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !478, file: !479, line: 36, baseType: !503, size: 320, offset: 768)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !504, line: 15, size: 320, elements: !505)
!504 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!505 = !{!506, !507, !508, !509, !510, !511, !512}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !503, file: !504, line: 16, baseType: !359, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !503, file: !504, line: 18, baseType: !16, size: 32, offset: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !503, file: !504, line: 19, baseType: !16, size: 32, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !503, file: !504, line: 20, baseType: !16, size: 32, offset: 96)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !503, file: !504, line: 21, baseType: !16, size: 32, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !503, file: !504, line: 22, baseType: !33, size: 64, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !503, file: !504, line: 23, baseType: !33, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !271, file: !272, line: 138, baseType: !514, size: 64, offset: 1152)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !516, line: 68, size: 4800, elements: !517)
!516 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!517 = !{!518, !540, !541, !542, !543, !544, !545, !546, !557, !558, !559, !560, !561, !562, !574, !650, !651, !665, !668}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !515, file: !516, line: 69, baseType: !519, size: 576)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !516, line: 23, size: 576, elements: !520)
!520 = !{!521, !522}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !519, file: !516, line: 24, baseType: !378, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, scope: !519, file: !516, line: 25, baseType: !523, size: 512, offset: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !519, file: !516, line: 25, size: 512, elements: !524)
!524 = !{!525, !534}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !523, file: !516, line: 26, baseType: !526, size: 480)
!526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !527, size: 480, elements: !532)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !516, line: 17, size: 96, elements: !528)
!528 = !{!529, !530, !531}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !527, file: !516, line: 18, baseType: !378, size: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !527, file: !516, line: 19, baseType: !378, size: 32, offset: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !527, file: !516, line: 20, baseType: !378, size: 32, offset: 64)
!532 = !{!533}
!533 = !DISubrange(count: 5)
!534 = !DIDerivedType(tag: DW_TAG_member, scope: !523, file: !516, line: 27, baseType: !535, size: 128)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !523, file: !516, line: 27, size: 128, elements: !536)
!536 = !{!537, !539}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !535, file: !516, line: 28, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !535, file: !516, line: 29, baseType: !538, size: 64, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !515, file: !516, line: 70, baseType: !519, size: 576, offset: 576)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !515, file: !516, line: 71, baseType: !519, size: 576, offset: 1152)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !515, file: !516, line: 72, baseType: !514, size: 64, offset: 1728)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !515, file: !516, line: 73, baseType: !16, size: 32, offset: 1792)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !515, file: !516, line: 74, baseType: !284, size: 32, offset: 1824)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !515, file: !516, line: 75, baseType: !292, size: 32, offset: 1856)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !515, file: !516, line: 76, baseType: !547, size: 192, offset: 1920)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !548, line: 9, size: 192, elements: !549)
!548 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!549 = !{!550, !551, !555, !556}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !547, file: !548, line: 10, baseType: !275, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !547, file: !548, line: 11, baseType: !552, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !554)
!554 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !548, line: 7, flags: DIFlagFwdDecl)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !547, file: !548, line: 12, baseType: !98, size: 32, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !547, file: !548, line: 13, baseType: !325, size: 32, offset: 160)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !515, file: !516, line: 77, baseType: !33, size: 64, offset: 2112)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !515, file: !516, line: 80, baseType: !422, size: 8, offset: 2176)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !515, file: !516, line: 88, baseType: !91, size: 128, offset: 2240)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !515, file: !516, line: 89, baseType: !320, size: 64, offset: 2368)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !515, file: !516, line: 90, baseType: !348, size: 320, offset: 2432)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !515, file: !516, line: 97, baseType: !563, size: 256, offset: 2752)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !564, line: 98, size: 256, elements: !565)
!564 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!565 = !{!566, !567, !568}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !563, file: !564, line: 99, baseType: !275, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !563, file: !564, line: 100, baseType: !91, size: 128, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !563, file: !564, line: 101, baseType: !569, size: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !564, line: 21, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !573}
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !515, file: !516, line: 99, baseType: !575, size: 768, offset: 3008)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !6, line: 199, size: 768, elements: !576)
!576 = !{!577, !582}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !575, file: !6, line: 200, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!16, !581}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !575, file: !6, line: 201, baseType: !583, size: 704, offset: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !6, line: 193, size: 704, elements: !584)
!584 = !{!585, !646}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !583, file: !6, line: 195, baseType: !586, size: 640)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !6, line: 173, size: 640, elements: !587)
!587 = !{!588, !600, !612, !613, !633, !634, !636, !642}
!588 = !DIDerivedType(tag: DW_TAG_member, scope: !586, file: !6, line: 174, baseType: !589, size: 192)
!589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !586, file: !6, line: 174, size: 192, elements: !590)
!590 = !{!591, !599}
!591 = !DIDerivedType(tag: DW_TAG_member, scope: !589, file: !6, line: 175, baseType: !592, size: 192)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !589, file: !6, line: 175, size: 192, elements: !593)
!593 = !{!594, !595, !596, !597, !598}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !592, file: !6, line: 176, baseType: !27, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !592, file: !6, line: 177, baseType: !16, size: 32, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !592, file: !6, line: 178, baseType: !16, size: 32, offset: 96)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !592, file: !6, line: 179, baseType: !16, size: 32, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !592, file: !6, line: 180, baseType: !16, size: 32, offset: 160)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !589, file: !6, line: 182, baseType: !412, size: 128, align: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !586, file: !6, line: 184, baseType: !601, size: 64, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !603, line: 26, size: 256, elements: !604)
!603 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!604 = !{!605, !606}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !602, file: !603, line: 27, baseType: !98, size: 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !602, file: !603, line: 28, baseType: !607, size: 192, offset: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !608, line: 43, size: 192, elements: !609)
!608 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!609 = !{!610, !611}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !607, file: !608, line: 44, baseType: !359, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !607, file: !608, line: 45, baseType: !91, size: 128, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !586, file: !6, line: 185, baseType: !27, size: 64, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !586, file: !6, line: 186, baseType: !614, size: 64, offset: 320)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !6, line: 204, size: 960, elements: !616)
!616 = !{!617, !618, !622, !629}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !615, file: !6, line: 205, baseType: !575, size: 768)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !615, file: !6, line: 206, baseType: !619, size: 64, offset: 768)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!581, !614}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !615, file: !6, line: 207, baseType: !623, size: 64, offset: 832)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !626, !627, !628}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !615, file: !6, line: 209, baseType: !630, size: 64, offset: 896)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!16, !626, !27}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !586, file: !6, line: 187, baseType: !581, size: 64, offset: 384)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !586, file: !6, line: 188, baseType: !635, size: 64, offset: 448)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !586, file: !6, line: 189, baseType: !637, size: 64, offset: 512)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !6, line: 157, size: 256, elements: !639)
!639 = !{!640, !641}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !638, file: !6, line: 158, baseType: !340, size: 192, align: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !638, file: !6, line: 159, baseType: !626, size: 64, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !586, file: !6, line: 190, baseType: !643, size: 64, offset: 576)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !19, line: 194, size: 64, elements: !644)
!644 = !{!645}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !643, file: !19, line: 195, baseType: !497, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !583, file: !6, line: 196, baseType: !647, size: 64, offset: 640)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !341, line: 12, size: 64, elements: !648)
!648 = !{!649}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !647, file: !341, line: 13, baseType: !345, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !515, file: !516, line: 100, baseType: !626, size: 64, offset: 3776)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !515, file: !516, line: 102, baseType: !652, size: 64, offset: 3840)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !516, line: 107, size: 1152, elements: !654)
!654 = !{!655, !656, !657, !658, !659, !663}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !653, file: !516, line: 108, baseType: !494, size: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !653, file: !516, line: 109, baseType: !514, size: 64, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !653, file: !516, line: 110, baseType: !284, size: 32, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !653, file: !516, line: 111, baseType: !43, size: 32, offset: 224)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !653, file: !516, line: 112, baseType: !660, size: 640, offset: 256)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 640, elements: !661)
!661 = !{!662}
!662 = !DISubrange(count: 10)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !653, file: !516, line: 113, baseType: !664, size: 256, offset: 896)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 256, elements: !443)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !515, file: !516, line: 103, baseType: !666, size: 640, offset: 3904)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !667, size: 640, elements: !661)
!667 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !515, file: !516, line: 104, baseType: !669, size: 256, offset: 4544)
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !667, size: 256, elements: !443)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !271, file: !272, line: 139, baseType: !652, size: 64, offset: 1216)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !271, file: !272, line: 140, baseType: !672, size: 64, offset: 1280)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !272, line: 25, size: 64, elements: !674)
!674 = !{!675, !676, !677}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !673, file: !272, line: 26, baseType: !43, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !673, file: !272, line: 27, baseType: !16, size: 32, offset: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !673, file: !272, line: 28, baseType: !678, offset: 64)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, elements: !679)
!679 = !{!680}
!680 = !DISubrange(count: -1)
!681 = !DIDerivedType(tag: DW_TAG_member, scope: !271, file: !272, line: 142, baseType: !682, size: 128, offset: 1344)
!682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !271, file: !272, line: 142, size: 128, elements: !683)
!683 = !{!684, !685}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !682, file: !272, line: 143, baseType: !16, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !682, file: !272, line: 144, baseType: !412, size: 128, align: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !16)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !691, line: 746, size: 58368, elements: !692)
!691 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!692 = !{!693, !701, !702, !703, !704, !705, !706, !707, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !778, !789, !886, !890, !893, !924, !925, !926, !927, !938, !940, !941, !942, !943, !944, !945, !956, !957, !960, !961, !962, !963, !964, !965, !966, !967, !974, !975, !982, !983, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4952, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4995, !5001, !5002, !5003, !5004, !5005, !5007, !5010, !5017, !5022, !5025, !5028, !5031, !5063, !5261, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5299, !5300, !5301, !5310, !5318, !5319, !5320, !5321, !5322, !5327, !5328, !5329, !5332, !5333, !5336, !5339, !5342, !5350, !5353, !5354, !5440, !5441, !5442, !5443, !5444, !5450, !5451, !5452, !5453, !5454, !5455, !5458, !5461, !5462, !5465, !5466, !5467, !5468, !5469, !5470, !5471, !5472, !5473, !5486, !5487, !5488, !5489, !5490, !5491, !5492, !5493, !5494, !5505, !5506, !5512, !5515, !5516, !5517, !5518, !5519, !5520, !5521, !5524, !5596, !5598, !5599, !5600, !5601, !5602, !5603, !5618, !5619, !5620, !5621, !5622, !5623, !5624, !5625, !5626, !5627, !5628, !5632, !5633, !5634}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !690, file: !691, line: 752, baseType: !694, size: 192)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !695, line: 56, size: 192, elements: !696)
!695 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!696 = !{!697, !698, !699, !700}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !694, file: !695, line: 57, baseType: !33, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !694, file: !695, line: 58, baseType: !33, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !694, file: !695, line: 59, baseType: !378, size: 32, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !694, file: !695, line: 61, baseType: !378, size: 32, offset: 160)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !690, file: !691, line: 754, baseType: !98, size: 32, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !690, file: !691, line: 767, baseType: !14, size: 64, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !690, file: !691, line: 768, baseType: !325, size: 32, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !690, file: !691, line: 770, baseType: !98, size: 32, offset: 352)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !690, file: !691, line: 771, baseType: !98, size: 32, offset: 384)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !690, file: !691, line: 774, baseType: !16, size: 32, offset: 416)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !690, file: !691, line: 775, baseType: !708, size: 128, offset: 448)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !709, line: 58, size: 128, elements: !710)
!709 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!710 = !{!711, !717, !722, !723}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !708, file: !709, line: 59, baseType: !712, size: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !713, line: 60, size: 64, elements: !714)
!713 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!714 = !{!715}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !712, file: !713, line: 61, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, scope: !708, file: !709, line: 60, baseType: !718, size: 32, offset: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !708, file: !709, line: 60, size: 32, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !718, file: !709, line: 61, baseType: !98, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !718, file: !709, line: 62, baseType: !43, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !708, file: !709, line: 65, baseType: !87, size: 16, offset: 96)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !708, file: !709, line: 65, baseType: !87, size: 16, offset: 112)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !690, file: !691, line: 776, baseType: !98, size: 32, offset: 576)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !690, file: !691, line: 777, baseType: !33, size: 64, offset: 640)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !690, file: !691, line: 778, baseType: !689, size: 64, offset: 704)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !690, file: !691, line: 787, baseType: !16, size: 32, offset: 768)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !690, file: !691, line: 788, baseType: !16, size: 32, offset: 800)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !690, file: !691, line: 790, baseType: !16, size: 32, offset: 832)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !690, file: !691, line: 792, baseType: !16, size: 32, offset: 864)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !690, file: !691, line: 793, baseType: !16, size: 32, offset: 896)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !690, file: !691, line: 794, baseType: !16, size: 32, offset: 928)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !690, file: !691, line: 795, baseType: !98, size: 32, offset: 960)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !690, file: !691, line: 797, baseType: !735, size: 2048, offset: 1024)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !691, line: 551, size: 2048, elements: !736)
!736 = !{!737, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !757, !760, !761, !762}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !735, file: !691, line: 553, baseType: !738, size: 128)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !691, line: 411, size: 128, elements: !739)
!739 = !{!740, !741}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !738, file: !691, line: 412, baseType: !33, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !738, file: !691, line: 413, baseType: !378, size: 32, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !735, file: !691, line: 554, baseType: !340, size: 192, align: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !735, file: !691, line: 555, baseType: !311, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !735, file: !691, line: 556, baseType: !311, size: 64, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !735, file: !691, line: 558, baseType: !91, size: 128, offset: 448)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !735, file: !691, line: 559, baseType: !98, size: 32, offset: 576)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !735, file: !691, line: 561, baseType: !311, size: 64, offset: 640)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !735, file: !691, line: 562, baseType: !311, size: 64, offset: 704)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !735, file: !691, line: 563, baseType: !311, size: 64, offset: 768)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !735, file: !691, line: 564, baseType: !311, size: 64, offset: 832)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !735, file: !691, line: 565, baseType: !281, size: 64, offset: 896)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !735, file: !691, line: 566, baseType: !311, size: 64, offset: 960)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !735, file: !691, line: 568, baseType: !311, size: 64, offset: 1024)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !735, file: !691, line: 571, baseType: !16, size: 32, offset: 1088)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !735, file: !691, line: 572, baseType: !756, size: 64, offset: 1152)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !735, file: !691, line: 574, baseType: !758, size: 64, offset: 1216)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !691, line: 49, flags: DIFlagFwdDecl)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !735, file: !691, line: 576, baseType: !758, size: 64, offset: 1280)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !735, file: !691, line: 578, baseType: !33, size: 64, offset: 1344)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !735, file: !691, line: 588, baseType: !763, size: 512, align: 512, offset: 1536)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !691, line: 497, size: 512, align: 512, elements: !764)
!764 = !{!765, !766, !767, !768, !769, !770, !771, !772, !773}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !763, file: !691, line: 498, baseType: !311, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !763, file: !691, line: 499, baseType: !311, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !763, file: !691, line: 500, baseType: !311, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !763, file: !691, line: 501, baseType: !378, size: 32, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !763, file: !691, line: 502, baseType: !378, size: 32, offset: 224)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !763, file: !691, line: 503, baseType: !33, size: 64, offset: 256)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !763, file: !691, line: 504, baseType: !33, size: 64, offset: 320)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !763, file: !691, line: 505, baseType: !33, size: 64, offset: 384)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !763, file: !691, line: 506, baseType: !774, size: 64, align: 64, offset: 448)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !691, line: 445, size: 64, align: 64, elements: !775)
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !774, file: !691, line: 446, baseType: !98, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !774, file: !691, line: 447, baseType: !98, size: 32, offset: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !690, file: !691, line: 798, baseType: !779, size: 384, offset: 3072)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !691, line: 592, size: 384, elements: !780)
!780 = !{!781, !782, !783, !784, !785, !786, !787}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !779, file: !691, line: 593, baseType: !91, size: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !779, file: !691, line: 594, baseType: !33, size: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !779, file: !691, line: 595, baseType: !33, size: 64, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !779, file: !691, line: 596, baseType: !98, size: 32, offset: 256)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !779, file: !691, line: 597, baseType: !20, size: 16, offset: 288)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !779, file: !691, line: 598, baseType: !20, size: 16, offset: 304)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !779, file: !691, line: 600, baseType: !788, size: 64, offset: 320)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !690, file: !691, line: 799, baseType: !790, size: 1792, offset: 3456)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !691, line: 610, size: 1792, elements: !791)
!791 = !{!792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !883, !884}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !790, file: !691, line: 611, baseType: !340, size: 192, align: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !790, file: !691, line: 618, baseType: !311, size: 64, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !790, file: !691, line: 619, baseType: !311, size: 64, offset: 256)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !790, file: !691, line: 620, baseType: !311, size: 64, offset: 320)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !790, file: !691, line: 621, baseType: !311, size: 64, offset: 384)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !790, file: !691, line: 622, baseType: !311, size: 64, offset: 448)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !790, file: !691, line: 629, baseType: !281, size: 64, offset: 512)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !790, file: !691, line: 630, baseType: !311, size: 64, offset: 576)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !790, file: !691, line: 631, baseType: !98, size: 32, offset: 640)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !790, file: !691, line: 653, baseType: !98, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !790, file: !691, line: 654, baseType: !98, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !790, file: !691, line: 655, baseType: !98, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !790, file: !691, line: 656, baseType: !98, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !790, file: !691, line: 662, baseType: !806, size: 512, offset: 704)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !108, line: 118, size: 512, elements: !807)
!807 = !{!808, !816, !817, !822, !879, !880, !881, !882}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !806, file: !108, line: 119, baseType: !809, size: 256)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !810, line: 9, size: 256, elements: !811)
!810 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!811 = !{!812, !813}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !809, file: !810, line: 10, baseType: !340, size: 192, align: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !809, file: !810, line: 11, baseType: !814, size: 64, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !815, line: 29, baseType: !281)
!815 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !806, file: !108, line: 120, baseType: !814, size: 64, offset: 256)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !806, file: !108, line: 121, baseType: !818, size: 64, offset: 320)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!107, !821}
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !806, file: !108, line: 122, baseType: !823, size: 64, offset: 384)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !108, line: 159, size: 512, align: 512, elements: !825)
!825 = !{!826, !851, !852, !855, !865, !866, !874, !878}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !824, file: !108, line: 160, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !108, line: 215, size: 4608, align: 512, elements: !829)
!829 = !{!830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !828, file: !108, line: 216, baseType: !359, size: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !828, file: !108, line: 217, baseType: !98, size: 32, offset: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !828, file: !108, line: 218, baseType: !98, size: 32, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !828, file: !108, line: 219, baseType: !98, size: 32, offset: 96)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !828, file: !108, line: 220, baseType: !98, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !828, file: !108, line: 221, baseType: !98, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !828, file: !108, line: 222, baseType: !98, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !828, file: !108, line: 223, baseType: !98, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !828, file: !108, line: 224, baseType: !98, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !828, file: !108, line: 226, baseType: !98, size: 32, offset: 160)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !828, file: !108, line: 227, baseType: !20, size: 16, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !828, file: !108, line: 228, baseType: !20, size: 16, offset: 208)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !828, file: !108, line: 229, baseType: !98, size: 32, offset: 224)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !828, file: !108, line: 235, baseType: !814, size: 64, offset: 256)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !828, file: !108, line: 236, baseType: !821, size: 64, offset: 320)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !828, file: !108, line: 237, baseType: !814, size: 64, offset: 384)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !828, file: !108, line: 238, baseType: !821, size: 64, offset: 448)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !828, file: !108, line: 239, baseType: !848, size: 4096, align: 512, offset: 512)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 4096, align: 512, elements: !849)
!849 = !{!850}
!850 = !DISubrange(count: 8)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !824, file: !108, line: 161, baseType: !98, size: 32, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !824, file: !108, line: 162, baseType: !853, size: 32, offset: 96)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !19, line: 32, baseType: !854)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !31, line: 96, baseType: !16)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !824, file: !108, line: 163, baseType: !856, size: 32, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !857, line: 274, baseType: !858)
!857 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !857, line: 274, size: 32, elements: !859)
!859 = !{!860}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !858, file: !857, line: 274, baseType: !861, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !857, line: 69, baseType: !862)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !857, line: 64, size: 32, elements: !863)
!863 = !{!864}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !862, file: !857, line: 65, baseType: !98, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !824, file: !108, line: 164, baseType: !821, size: 64, offset: 192)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !824, file: !108, line: 165, baseType: !867, size: 128, offset: 256)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !810, line: 14, size: 128, elements: !868)
!868 = !{!869}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !867, file: !810, line: 15, baseType: !870, size: 128)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !341, line: 26, size: 128, elements: !871)
!871 = !{!872, !873}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !870, file: !341, line: 27, baseType: !647, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !870, file: !341, line: 28, baseType: !345, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !824, file: !108, line: 166, baseType: !875, size: 64, offset: 384)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{!814}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !824, file: !108, line: 167, baseType: !814, size: 64, offset: 448)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !806, file: !108, line: 123, baseType: !77, size: 8, offset: 448)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !806, file: !108, line: 124, baseType: !77, size: 8, offset: 456)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !806, file: !108, line: 125, baseType: !77, size: 8, offset: 464)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !806, file: !108, line: 126, baseType: !77, size: 8, offset: 472)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !790, file: !691, line: 671, baseType: !806, size: 512, offset: 1216)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !790, file: !691, line: 679, baseType: !885, size: 64, offset: 1728)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !690, file: !691, line: 800, baseType: !887, size: 64, offset: 5248)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !889)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !691, line: 800, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !690, file: !691, line: 809, baseType: !891, size: 64, offset: 5312)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !691, line: 70, flags: DIFlagFwdDecl)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !690, file: !691, line: 825, baseType: !894, size: 2048, align: 512, offset: 5632)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !691, line: 509, size: 2048, align: 512, elements: !895)
!895 = !{!896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !894, file: !691, line: 511, baseType: !311, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !894, file: !691, line: 512, baseType: !311, size: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !894, file: !691, line: 513, baseType: !311, size: 64, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !894, file: !691, line: 514, baseType: !311, size: 64, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !894, file: !691, line: 515, baseType: !311, size: 64, offset: 256)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !894, file: !691, line: 516, baseType: !311, size: 64, offset: 320)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !894, file: !691, line: 518, baseType: !311, size: 64, offset: 384)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !894, file: !691, line: 519, baseType: !311, size: 64, offset: 448)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !894, file: !691, line: 520, baseType: !281, size: 64, offset: 512)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !894, file: !691, line: 522, baseType: !311, size: 64, offset: 576)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !894, file: !691, line: 523, baseType: !311, size: 64, offset: 640)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !894, file: !691, line: 524, baseType: !281, size: 64, offset: 704)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !894, file: !691, line: 526, baseType: !281, size: 64, offset: 768)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !894, file: !691, line: 527, baseType: !311, size: 64, offset: 832)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !894, file: !691, line: 529, baseType: !311, size: 64, offset: 896)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !894, file: !691, line: 530, baseType: !311, size: 64, offset: 960)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !894, file: !691, line: 531, baseType: !311, size: 64, offset: 1024)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !894, file: !691, line: 532, baseType: !311, size: 64, offset: 1088)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !894, file: !691, line: 533, baseType: !311, size: 64, offset: 1152)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !894, file: !691, line: 535, baseType: !311, size: 64, offset: 1216)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !894, file: !691, line: 536, baseType: !311, size: 64, offset: 1280)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !894, file: !691, line: 537, baseType: !311, size: 64, offset: 1344)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !894, file: !691, line: 538, baseType: !311, size: 64, offset: 1408)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !894, file: !691, line: 539, baseType: !311, size: 64, offset: 1472)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !894, file: !691, line: 540, baseType: !311, size: 64, offset: 1536)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !894, file: !691, line: 541, baseType: !311, size: 64, offset: 1600)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !894, file: !691, line: 542, baseType: !311, size: 64, offset: 1664)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !894, file: !691, line: 543, baseType: !311, size: 64, offset: 1728)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !690, file: !691, line: 833, baseType: !98, size: 32, offset: 7680)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !690, file: !691, line: 836, baseType: !98, size: 32, offset: 7712)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !690, file: !691, line: 837, baseType: !16, size: 32, offset: 7744)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !690, file: !691, line: 838, baseType: !928, size: 64, offset: 7808)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !930)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !931, line: 19, baseType: !932)
!931 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !931, line: 19, size: 64, elements: !933)
!933 = !{!934}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !932, file: !931, line: 19, baseType: !935, size: 64)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 64, elements: !936)
!936 = !{!937}
!937 = !DISubrange(count: 1)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !690, file: !691, line: 839, baseType: !939, size: 64, offset: 7872)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !690, file: !691, line: 840, baseType: !930, size: 64, offset: 7936)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !690, file: !691, line: 841, baseType: !14, size: 64, offset: 8000)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !690, file: !691, line: 843, baseType: !20, size: 16, offset: 8064)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !690, file: !691, line: 845, baseType: !20, size: 16, offset: 8080)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !690, file: !691, line: 848, baseType: !16, size: 32, offset: 8096)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !690, file: !691, line: 849, baseType: !946, size: 32, offset: 8128)
!946 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !691, line: 718, size: 32, elements: !947)
!947 = !{!948, !955}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !946, file: !691, line: 724, baseType: !949, size: 32)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !946, file: !691, line: 719, size: 32, elements: !950)
!950 = !{!951, !952, !953, !954}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !949, file: !691, line: 720, baseType: !77, size: 8)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !949, file: !691, line: 721, baseType: !77, size: 8, offset: 8)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !949, file: !691, line: 722, baseType: !77, size: 8, offset: 16)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !949, file: !691, line: 723, baseType: !77, size: 8, offset: 24)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !946, file: !691, line: 725, baseType: !378, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !690, file: !691, line: 850, baseType: !91, size: 128, offset: 8192)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !690, file: !691, line: 851, baseType: !958, size: 64, offset: 8320)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !691, line: 60, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !690, file: !691, line: 855, baseType: !33, size: 64, offset: 8384)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !690, file: !691, line: 856, baseType: !77, size: 8, offset: 8448)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !690, file: !691, line: 857, baseType: !77, size: 8, offset: 8456)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !690, file: !691, line: 858, baseType: !16, size: 32, offset: 8480)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !690, file: !691, line: 859, baseType: !91, size: 128, offset: 8512)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !690, file: !691, line: 860, baseType: !16, size: 32, offset: 8640)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !690, file: !691, line: 861, baseType: !91, size: 128, offset: 8704)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !690, file: !691, line: 873, baseType: !968, size: 256, offset: 8832)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !691, line: 376, size: 256, elements: !969)
!969 = !{!970, !971, !972, !973}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !968, file: !691, line: 381, baseType: !33, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !968, file: !691, line: 384, baseType: !313, size: 64, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !968, file: !691, line: 389, baseType: !313, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !968, file: !691, line: 392, baseType: !313, size: 64, offset: 192)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !690, file: !691, line: 875, baseType: !91, size: 128, offset: 9088)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !690, file: !691, line: 877, baseType: !976, size: 320, offset: 9216)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !977, line: 86, size: 320, elements: !978)
!977 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!978 = !{!979, !980, !981}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !976, file: !977, line: 87, baseType: !16, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !976, file: !977, line: 88, baseType: !91, size: 128, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !976, file: !977, line: 89, baseType: !91, size: 128, offset: 192)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !690, file: !691, line: 878, baseType: !340, size: 192, align: 64, offset: 9536)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !690, file: !691, line: 881, baseType: !984, size: 64, offset: 9728)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !136, line: 733, size: 10240, elements: !986)
!986 = !{!987, !4866}
!987 = !DIDerivedType(tag: DW_TAG_member, scope: !985, file: !136, line: 734, baseType: !988, size: 10240)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !985, file: !136, line: 734, size: 10240, elements: !989)
!989 = !{!990, !994, !1008, !4745, !4746, !4747, !4748, !4749, !4750, !4757, !4758, !4759, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4798, !4800, !4803, !4846, !4847, !4848, !4851, !4852, !4853, !4856, !4857, !4858, !4864, !4865}
!990 = !DIDerivedType(tag: DW_TAG_member, scope: !988, file: !136, line: 739, baseType: !991, size: 512, align: 512)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !988, file: !136, line: 739, size: 512, align: 512, elements: !992)
!992 = !{!993}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !991, file: !136, line: 747, baseType: !43, size: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !988, file: !136, line: 750, baseType: !995, size: 128, offset: 512)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !996, line: 218, size: 128, elements: !997)
!996 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!997 = !{!998, !1006, !1007}
!998 = !DIDerivedType(tag: DW_TAG_member, scope: !995, file: !996, line: 219, baseType: !999, size: 32)
!999 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !995, file: !996, line: 219, size: 32, elements: !1000)
!1000 = !{!1001, !1002}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !999, file: !996, line: 220, baseType: !53, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !999, file: !996, line: 221, baseType: !1003)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !996, line: 197, baseType: !1004)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !996, line: 197, elements: !1005)
!1005 = !{}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !995, file: !996, line: 223, baseType: !98, size: 32, offset: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !995, file: !996, line: 224, baseType: !14, size: 64, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !988, file: !136, line: 752, baseType: !1009, size: 64, offset: 640)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!33, !1012, !33, !33, !33, !33}
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !244, line: 994, size: 1856, align: 64, elements: !1014)
!1014 = !{!1015, !1021, !1022, !1024, !1025, !1033, !1034, !1035, !1117, !1118, !1127, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744}
!1015 = !DIDerivedType(tag: DW_TAG_member, scope: !1013, file: !244, line: 995, baseType: !1016, size: 128)
!1016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1013, file: !244, line: 995, size: 128, elements: !1017)
!1017 = !{!1018, !1019, !1020}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1016, file: !244, line: 996, baseType: !712, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1016, file: !244, line: 997, baseType: !412, size: 128, align: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1016, file: !244, line: 998, baseType: !98, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1013, file: !244, line: 1005, baseType: !53, size: 32, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1013, file: !244, line: 1006, baseType: !1023, size: 32, offset: 160)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !19, line: 156, baseType: !98)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1013, file: !244, line: 1007, baseType: !275, size: 64, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1013, file: !244, line: 1008, baseType: !1026, size: 256, offset: 256)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1027, line: 66, size: 256, elements: !1028)
!1027 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!1028 = !{!1029, !1030, !1031, !1032}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1026, file: !1027, line: 67, baseType: !275, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1026, file: !1027, line: 68, baseType: !359, size: 32, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1026, file: !1027, line: 70, baseType: !354, size: 32, offset: 96)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1026, file: !1027, line: 72, baseType: !91, size: 128, offset: 128)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1013, file: !244, line: 1009, baseType: !35, size: 64, offset: 512)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1013, file: !244, line: 1010, baseType: !98, size: 32, offset: 576)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1013, file: !244, line: 1011, baseType: !1036, size: 256, offset: 640)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !244, line: 948, size: 256, elements: !1037)
!1037 = !{!1038, !1061, !1113, !1114, !1115, !1116}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1036, file: !244, line: 949, baseType: !1039, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1040, line: 34, baseType: !1041)
!1040 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1040, line: 25, size: 64, elements: !1042)
!1042 = !{!1043}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1041, file: !1040, line: 26, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1045, line: 27, baseType: !1046)
!1045 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1045, line: 13, size: 64, elements: !1047)
!1047 = !{!1048, !1060}
!1048 = !DIDerivedType(tag: DW_TAG_member, scope: !1046, file: !1045, line: 14, baseType: !1049, size: 32)
!1049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1046, file: !1045, line: 14, size: 32, elements: !1050)
!1050 = !{!1051, !1052}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1049, file: !1045, line: 15, baseType: !43, size: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, scope: !1049, file: !1045, line: 16, baseType: !1053, size: 32)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1049, file: !1045, line: 16, size: 32, elements: !1054)
!1054 = !{!1055, !1056}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1053, file: !1045, line: 18, baseType: !77, size: 8)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1053, file: !1045, line: 19, baseType: !1057, size: 24, offset: 8)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 24, elements: !1058)
!1058 = !{!1059}
!1059 = !DISubrange(count: 3)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1046, file: !1045, line: 26, baseType: !65, size: 32, offset: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1036, file: !244, line: 950, baseType: !1062, size: 64, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !113, line: 59, size: 768, elements: !1064)
!1064 = !{!1065, !1066, !1067, !1068, !1070, !1071, !1072, !1073}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1063, file: !113, line: 61, baseType: !325, size: 32)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1063, file: !113, line: 62, baseType: !98, size: 32, offset: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1063, file: !113, line: 63, baseType: !53, size: 32, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1063, file: !113, line: 65, baseType: !1069, size: 256, offset: 128)
!1069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !643, size: 256, elements: !443)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1063, file: !113, line: 66, baseType: !643, size: 64, offset: 384)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1063, file: !113, line: 68, baseType: !48, size: 192, offset: 448)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1063, file: !113, line: 69, baseType: !412, size: 128, align: 64, offset: 640)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1063, file: !113, line: 70, baseType: !1074, offset: 768)
!1074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1075, elements: !679)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !113, line: 54, size: 128, elements: !1076)
!1076 = !{!1077, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1075, file: !113, line: 55, baseType: !16, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1075, file: !113, line: 56, baseType: !1079, size: 64, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1081, line: 26, size: 1152, elements: !1082)
!1081 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!1082 = !{!1083, !1096, !1097, !1098, !1099, !1103, !1104, !1105, !1108, !1109, !1110, !1111, !1112}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1080, file: !1081, line: 27, baseType: !1084, size: 192)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1085, line: 19, size: 192, elements: !1086)
!1085 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1086 = !{!1087, !1094, !1095}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1084, file: !1085, line: 20, baseType: !1088, size: 128)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1089, line: 296, size: 128, elements: !1090)
!1089 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1090 = !{!1091, !1092, !1093}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1088, file: !1089, line: 297, baseType: !53, size: 32)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1088, file: !1089, line: 299, baseType: !268, size: 32, offset: 32)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1088, file: !1089, line: 300, baseType: !14, size: 64, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1084, file: !1085, line: 21, baseType: !98, size: 32, offset: 128)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1084, file: !1085, line: 22, baseType: !98, size: 32, offset: 160)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1080, file: !1081, line: 28, baseType: !412, size: 128, align: 64, offset: 192)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1080, file: !1081, line: 29, baseType: !98, size: 32, offset: 320)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1080, file: !1081, line: 30, baseType: !689, size: 64, offset: 384)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1080, file: !1081, line: 31, baseType: !1100, size: 64, offset: 448)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1102, line: 11, flags: DIFlagFwdDecl)
!1102 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1080, file: !1081, line: 32, baseType: !98, size: 32, offset: 512)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1080, file: !1081, line: 33, baseType: !1079, size: 64, offset: 576)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !1080, file: !1081, line: 35, baseType: !1106, size: 64, offset: 640)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !1081, line: 17, flags: DIFlagFwdDecl)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1080, file: !1081, line: 37, baseType: !514, size: 64, offset: 704)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1080, file: !1081, line: 38, baseType: !652, size: 64, offset: 768)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1080, file: !1081, line: 39, baseType: !16, size: 32, offset: 832)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1080, file: !1081, line: 40, baseType: !547, size: 192, offset: 896)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !1080, file: !1081, line: 42, baseType: !16, size: 32, offset: 1088)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1036, file: !244, line: 951, baseType: !112, size: 32, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1036, file: !244, line: 952, baseType: !284, size: 32, offset: 160)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1036, file: !244, line: 952, baseType: !284, size: 32, offset: 192)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1036, file: !244, line: 953, baseType: !16, size: 32, offset: 224)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1013, file: !244, line: 1012, baseType: !269, size: 64, offset: 896)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1013, file: !244, line: 1013, baseType: !1119, size: 256, offset: 960)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !244, line: 970, size: 256, elements: !1120)
!1120 = !{!1121, !1122, !1123, !1124, !1125, !1126}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1119, file: !244, line: 971, baseType: !33, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1119, file: !244, line: 972, baseType: !98, size: 32, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1119, file: !244, line: 973, baseType: !98, size: 32, offset: 96)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1119, file: !244, line: 974, baseType: !98, size: 32, offset: 128)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1119, file: !244, line: 975, baseType: !98, size: 32, offset: 160)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1119, file: !244, line: 976, baseType: !35, size: 64, offset: 192)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1013, file: !244, line: 1014, baseType: !1128, size: 128, offset: 1216)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1129, line: 8, size: 128, elements: !1130)
!1129 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1130 = !{!1131, !4735}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1128, file: !1129, line: 9, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1134, line: 70, size: 256, elements: !1135)
!1134 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1135 = !{!1136, !4732, !4733, !4734}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1133, file: !1134, line: 71, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1139, line: 82, size: 1536, elements: !1140)
!1139 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1140 = !{!1141, !1142, !1147, !1155, !1156, !1171, !4700, !4702, !4715, !4716, !4717, !4718, !4719, !4724, !4725, !4726}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1138, file: !1139, line: 84, baseType: !98, size: 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1138, file: !1139, line: 85, baseType: !1143, size: 32, offset: 32)
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !857, line: 275, baseType: !1144)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !857, line: 275, size: 32, elements: !1145)
!1145 = !{!1146}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1144, file: !857, line: 275, baseType: !861, size: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1138, file: !1139, line: 86, baseType: !1148, size: 128, offset: 64)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1149, line: 38, size: 128, elements: !1150)
!1149 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1150 = !{!1151, !1153}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1148, file: !1149, line: 39, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1148, file: !1149, line: 39, baseType: !1154, size: 64, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1138, file: !1139, line: 87, baseType: !1137, size: 64, offset: 192)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1138, file: !1139, line: 88, baseType: !1157, size: 128, offset: 256)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1139, line: 49, size: 128, elements: !1158)
!1158 = !{!1159, !1168}
!1159 = !DIDerivedType(tag: DW_TAG_member, scope: !1157, file: !1139, line: 50, baseType: !1160, size: 64)
!1160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1157, file: !1139, line: 50, size: 64, elements: !1161)
!1161 = !{!1162, !1167}
!1162 = !DIDerivedType(tag: DW_TAG_member, scope: !1160, file: !1139, line: 51, baseType: !1163, size: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1160, file: !1139, line: 51, size: 64, elements: !1164)
!1164 = !{!1165, !1166}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1163, file: !1139, line: 52, baseType: !378, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1163, file: !1139, line: 52, baseType: !378, size: 32, offset: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1160, file: !1139, line: 54, baseType: !311, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1157, file: !1139, line: 56, baseType: !1169, size: 64, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1138, file: !1139, line: 89, baseType: !1172, size: 64, offset: 384)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !244, line: 641, size: 4800, elements: !1174)
!1174 = !{!1175, !1176, !1177, !1178, !1179, !1180, !1181, !1184, !1185, !1372, !4515, !4516, !4517, !4518, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4682, !4685, !4686, !4687, !4696, !4697, !4698, !4699}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1173, file: !244, line: 642, baseType: !18, size: 16)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1173, file: !244, line: 643, baseType: !20, size: 16, offset: 16)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1173, file: !244, line: 644, baseType: !284, size: 32, offset: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1173, file: !244, line: 645, baseType: !91, size: 128, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1173, file: !244, line: 646, baseType: !292, size: 32, offset: 192)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1173, file: !244, line: 647, baseType: !98, size: 32, offset: 224)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1173, file: !244, line: 650, baseType: !1182, size: 64, offset: 256)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !244, line: 607, flags: DIFlagFwdDecl)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1173, file: !244, line: 651, baseType: !1182, size: 64, offset: 320)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1173, file: !244, line: 654, baseType: !1186, size: 64, offset: 384)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1188)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !244, line: 1966, size: 2048, align: 512, elements: !1189)
!1189 = !{!1190, !1194, !1207, !1213, !1217, !1221, !1225, !1229, !1233, !1237, !1241, !1242, !1248, !1252, !1289, !1320, !1327, !1333, !1337, !1341, !1345, !1349, !1353, !1359, !1363}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1188, file: !244, line: 1967, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!1137, !1172, !1137, !98}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1188, file: !244, line: 1968, baseType: !1195, size: 64, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!10, !1137, !1172, !1198}
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1200, line: 10, size: 128, elements: !1201)
!1200 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1201 = !{!1202, !1206}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1199, file: !1200, line: 11, baseType: !1203, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null, !14}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1199, file: !1200, line: 12, baseType: !14, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1188, file: !244, line: 1969, baseType: !1208, size: 64, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!16, !1211, !1172, !16}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !307, line: 42, flags: DIFlagFwdDecl)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1188, file: !244, line: 1970, baseType: !1214, size: 64, offset: 192)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!1182, !1172, !16, !422}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1188, file: !244, line: 1972, baseType: !1218, size: 64, offset: 256)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!16, !1137, !433, !16}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1188, file: !244, line: 1974, baseType: !1222, size: 64, offset: 320)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!16, !1211, !1172, !1137, !18, !422}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1188, file: !244, line: 1976, baseType: !1226, size: 64, offset: 384)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!16, !1137, !1172, !1137}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1188, file: !244, line: 1977, baseType: !1230, size: 64, offset: 448)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!16, !1172, !1137}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1188, file: !244, line: 1978, baseType: !1234, size: 64, offset: 512)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!16, !1211, !1172, !1137, !10}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1188, file: !244, line: 1980, baseType: !1238, size: 64, offset: 576)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!16, !1211, !1172, !1137, !18}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1188, file: !244, line: 1982, baseType: !1230, size: 64, offset: 640)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1188, file: !244, line: 1983, baseType: !1243, size: 64, offset: 704)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!16, !1211, !1172, !1137, !18, !1246}
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !19, line: 21, baseType: !1247)
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !19, line: 18, baseType: !378)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1188, file: !244, line: 1985, baseType: !1249, size: 64, offset: 768)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!16, !1211, !1172, !1137, !1172, !1137, !98}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1188, file: !244, line: 1987, baseType: !1253, size: 64, offset: 832)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!16, !1211, !1137, !1256}
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !244, line: 226, size: 640, elements: !1258)
!1258 = !{!1259, !1260, !1261, !1271, !1280, !1281, !1286, !1287, !1288}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1257, file: !244, line: 227, baseType: !98, size: 32)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1257, file: !244, line: 228, baseType: !18, size: 16, offset: 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, scope: !1257, file: !244, line: 241, baseType: !1262, size: 32, offset: 64)
!1262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1257, file: !244, line: 241, size: 32, elements: !1263)
!1263 = !{!1264, !1265}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1262, file: !244, line: 242, baseType: !284, size: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1262, file: !244, line: 243, baseType: !1266, size: 32)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1267, line: 16, baseType: !1268)
!1267 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1267, line: 14, size: 32, elements: !1269)
!1269 = !{!1270}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1268, file: !1267, line: 15, baseType: !289, size: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, scope: !1257, file: !244, line: 245, baseType: !1272, size: 32, offset: 96)
!1272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1257, file: !244, line: 245, size: 32, elements: !1273)
!1273 = !{!1274, !1275}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1272, file: !244, line: 246, baseType: !292, size: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1272, file: !244, line: 247, baseType: !1276, size: 32)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1267, line: 20, baseType: !1277)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1267, line: 18, size: 32, elements: !1278)
!1278 = !{!1279}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1277, file: !1267, line: 19, baseType: !296, size: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1257, file: !244, line: 249, baseType: !35, size: 64, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1257, file: !244, line: 250, baseType: !1282, size: 128, offset: 192)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !370, line: 13, size: 128, elements: !1283)
!1283 = !{!1284, !1285}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1282, file: !370, line: 14, baseType: !369, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1282, file: !370, line: 15, baseType: !667, size: 64, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1257, file: !244, line: 251, baseType: !1282, size: 128, offset: 320)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1257, file: !244, line: 252, baseType: !1282, size: 128, offset: 448)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1257, file: !244, line: 259, baseType: !1012, size: 64, offset: 576)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1188, file: !244, line: 1988, baseType: !1290, size: 64, offset: 896)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!16, !1211, !1293, !1295, !378, !98}
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1128)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1297, line: 22, size: 1280, elements: !1298)
!1297 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1298 = !{!1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1296, file: !1297, line: 23, baseType: !378, size: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1296, file: !1297, line: 24, baseType: !18, size: 16, offset: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1296, file: !1297, line: 25, baseType: !98, size: 32, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1296, file: !1297, line: 26, baseType: !377, size: 32, offset: 96)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1296, file: !1297, line: 27, baseType: !311, size: 64, offset: 128)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1296, file: !1297, line: 28, baseType: !311, size: 64, offset: 192)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1296, file: !1297, line: 41, baseType: !311, size: 64, offset: 256)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1296, file: !1297, line: 42, baseType: !1246, size: 32, offset: 320)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1296, file: !1297, line: 43, baseType: !1246, size: 32, offset: 352)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1296, file: !1297, line: 44, baseType: !284, size: 32, offset: 384)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1296, file: !1297, line: 45, baseType: !292, size: 32, offset: 416)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1296, file: !1297, line: 46, baseType: !35, size: 64, offset: 448)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1296, file: !1297, line: 47, baseType: !1282, size: 128, offset: 512)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1296, file: !1297, line: 48, baseType: !1282, size: 128, offset: 640)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1296, file: !1297, line: 49, baseType: !1282, size: 128, offset: 768)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1296, file: !1297, line: 50, baseType: !1282, size: 128, offset: 896)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1296, file: !1297, line: 51, baseType: !311, size: 64, offset: 1024)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1296, file: !1297, line: 52, baseType: !311, size: 64, offset: 1088)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1296, file: !1297, line: 53, baseType: !378, size: 32, offset: 1152)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1296, file: !1297, line: 54, baseType: !378, size: 32, offset: 1184)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1296, file: !1297, line: 55, baseType: !311, size: 64, offset: 1216)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1188, file: !244, line: 1990, baseType: !1321, size: 64, offset: 960)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!1324, !1137, !433, !29}
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !19, line: 66, baseType: !1325)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !31, line: 73, baseType: !1326)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !31, line: 15, baseType: !667)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1188, file: !244, line: 1991, baseType: !1328, size: 64, offset: 1024)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!16, !1172, !1331, !311, !311}
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !244, line: 55, flags: DIFlagFwdDecl)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1188, file: !244, line: 1993, baseType: !1334, size: 64, offset: 1088)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!16, !1172, !16}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1188, file: !244, line: 1994, baseType: !1338, size: 64, offset: 1152)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!16, !1172, !1137, !1012, !98, !18}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1188, file: !244, line: 1997, baseType: !1342, size: 64, offset: 1216)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!16, !1211, !1172, !1012, !18}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1188, file: !244, line: 1999, baseType: !1346, size: 64, offset: 1280)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!1182, !1211, !1137, !16}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1188, file: !244, line: 2001, baseType: !1350, size: 64, offset: 1344)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!16, !1211, !1137, !1182, !16}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1188, file: !244, line: 2003, baseType: !1354, size: 64, offset: 1408)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!16, !1211, !1137, !1357}
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !244, line: 76, flags: DIFlagFwdDecl)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1188, file: !244, line: 2005, baseType: !1360, size: 64, offset: 1472)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!16, !1137, !1357}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1188, file: !244, line: 2006, baseType: !1364, size: 64, offset: 1536)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!1367, !1172}
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !244, line: 3192, size: 192, elements: !1369)
!1369 = !{!1370, !1371}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1368, file: !244, line: 3193, baseType: !1088, size: 128)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1368, file: !244, line: 3194, baseType: !378, size: 32, offset: 128)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1173, file: !244, line: 655, baseType: !1373, size: 64, offset: 448)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !244, line: 1190, size: 10752, elements: !1375)
!1375 = !{!1376, !1377, !1378, !1379, !1380, !1381, !4032, !4164, !4204, !4287, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4304, !4308, !4309, !4312, !4315, !4318, !4321, !4322, !4323, !4364, !4386, !4387, !4388, !4389, !4390, !4391, !4394, !4398, !4407, !4408, !4409, !4410, !4469, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1374, file: !244, line: 1191, baseType: !91, size: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1374, file: !244, line: 1192, baseType: !1246, size: 32, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1374, file: !244, line: 1193, baseType: !81, size: 8, offset: 160)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1374, file: !244, line: 1194, baseType: !33, size: 64, offset: 192)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1374, file: !244, line: 1195, baseType: !35, size: 64, offset: 256)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1374, file: !244, line: 1196, baseType: !1382, size: 64, offset: 320)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !244, line: 2366, size: 576, elements: !1384)
!1384 = !{!1385, !1386, !1387, !1393, !1397, !1401, !1405, !4020, !4021, !4022, !4024, !4025, !4026, !4028, !4029, !4030, !4031}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1383, file: !244, line: 2367, baseType: !10, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1383, file: !244, line: 2368, baseType: !16, size: 32, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1383, file: !244, line: 2376, baseType: !1388, size: 64, offset: 128)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!16, !1391}
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1134, line: 21, flags: DIFlagFwdDecl)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1383, file: !244, line: 2377, baseType: !1394, size: 64, offset: 192)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1396)
!1396 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !244, line: 75, flags: DIFlagFwdDecl)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1383, file: !244, line: 2378, baseType: !1398, size: 64, offset: 256)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!1137, !1382, !16, !10, !14}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1383, file: !244, line: 2380, baseType: !1402, size: 64, offset: 320)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{null, !1373}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1383, file: !244, line: 2381, baseType: !1406, size: 64, offset: 384)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !121, line: 402, size: 9216, align: 512, elements: !1408)
!1408 = !{!1409, !1410, !1411, !1415, !2226, !2252, !2253, !2254, !2255, !2259, !2262, !2263, !2264, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2332, !2336, !2356, !2376, !2377, !2378, !2379, !2388, !2411, !2412, !2415, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2429, !2430, !2529, !2537, !2538, !2539, !2541, !3998, !3999, !4008, !4009, !4010, !4011, !4013, !4014, !4015, !4016, !4017, !4018, !4019}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1407, file: !121, line: 403, baseType: !120, size: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1407, file: !121, line: 406, baseType: !91, size: 128, offset: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1407, file: !121, line: 409, baseType: !1412, size: 448, offset: 192)
!1412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 448, elements: !1413)
!1413 = !{!1414}
!1414 = !DISubrange(count: 56)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1407, file: !121, line: 417, baseType: !1416, size: 768, offset: 640)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !121, line: 45, size: 768, elements: !1417)
!1417 = !{!1418, !2220, !2221, !2222, !2225}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1416, file: !121, line: 46, baseType: !1419, size: 512)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1420, line: 64, size: 512, elements: !1421)
!1420 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1421 = !{!1422, !1423, !1424, !1426, !1470, !2067, !2210, !2215, !2216, !2217, !2218, !2219}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1419, file: !1420, line: 65, baseType: !10, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1419, file: !1420, line: 66, baseType: !91, size: 128, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1419, file: !1420, line: 67, baseType: !1425, size: 64, offset: 192)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1419, file: !1420, line: 68, baseType: !1427, size: 64, offset: 256)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1420, line: 168, size: 768, elements: !1429)
!1429 = !{!1430, !1431, !1432, !1433}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1428, file: !1420, line: 169, baseType: !91, size: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1428, file: !1420, line: 170, baseType: !53, size: 32, offset: 128)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1428, file: !1420, line: 171, baseType: !1419, size: 512, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1428, file: !1420, line: 172, baseType: !1434, size: 64, offset: 704)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1436)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1420, line: 133, size: 192, elements: !1437)
!1437 = !{!1438, !1445, !1450}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1436, file: !1420, line: 134, baseType: !1439, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1440)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!16, !1443}
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1419)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1436, file: !1420, line: 135, baseType: !1446, size: 64, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1447)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!10, !1443}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1436, file: !1420, line: 136, baseType: !1451, size: 64, offset: 128)
!1451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1452)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!16, !1443, !1455}
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1420, line: 125, size: 20736, elements: !1457)
!1457 = !{!1458, !1460, !1464, !1465, !1469}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1456, file: !1420, line: 126, baseType: !1459, size: 192)
!1459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 192, elements: !1058)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1456, file: !1420, line: 127, baseType: !1461, size: 4096, offset: 192)
!1461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 4096, elements: !1462)
!1462 = !{!1463}
!1463 = !DISubrange(count: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1456, file: !1420, line: 128, baseType: !16, size: 32, offset: 4288)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1456, file: !1420, line: 129, baseType: !1466, size: 16384, offset: 4320)
!1466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 16384, elements: !1467)
!1467 = !{!1468}
!1468 = !DISubrange(count: 2048)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1456, file: !1420, line: 130, baseType: !16, size: 32, offset: 20704)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1419, file: !1420, line: 69, baseType: !1471, size: 64, offset: 320)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1473)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1420, line: 116, size: 384, elements: !1474)
!1474 = !{!1475, !1479, !1498, !2028, !2059, !2063}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1473, file: !1420, line: 117, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{null, !1425}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1473, file: !1420, line: 118, baseType: !1480, size: 64, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1482)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1483, line: 254, size: 128, elements: !1484)
!1483 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1484 = !{!1485, !1494}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1482, file: !1483, line: 255, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!1324, !1425, !1489, !433}
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1483, line: 30, size: 128, elements: !1491)
!1491 = !{!1492, !1493}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1490, file: !1483, line: 31, baseType: !10, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1490, file: !1483, line: 32, baseType: !18, size: 16, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1482, file: !1483, line: 256, baseType: !1495, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!1324, !1425, !1489, !10, !29}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1473, file: !1420, line: 119, baseType: !1499, size: 64, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1502)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1483, line: 84, size: 320, elements: !1503)
!1503 = !{!1504, !1505, !1509, !2024, !2026}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1502, file: !1483, line: 85, baseType: !10, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1502, file: !1483, line: 86, baseType: !1506, size: 64, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!18, !1425, !1489, !16}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1502, file: !1483, line: 88, baseType: !1510, size: 64, offset: 128)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!18, !1425, !1513, !16}
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1483, line: 175, size: 512, elements: !1515)
!1515 = !{!1516, !1517, !1518, !1519, !2015, !2019, !2020}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1514, file: !1483, line: 176, baseType: !1490, size: 128)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1514, file: !1483, line: 177, baseType: !29, size: 64, offset: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1514, file: !1483, line: 178, baseType: !14, size: 64, offset: 192)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1514, file: !1483, line: 179, baseType: !1520, size: 64, offset: 256)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!1523}
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !244, line: 472, size: 1536, align: 64, elements: !1525)
!1525 = !{!1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !2007, !2008, !2009, !2012, !2013, !2014}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1524, file: !244, line: 473, baseType: !1172, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1524, file: !244, line: 474, baseType: !1088, size: 128, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1524, file: !244, line: 475, baseType: !348, size: 320, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1524, file: !244, line: 476, baseType: !268, size: 32, offset: 512)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1524, file: !244, line: 477, baseType: !43, size: 32, offset: 544)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1524, file: !244, line: 482, baseType: !870, size: 128, offset: 576)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1524, file: !244, line: 483, baseType: !33, size: 64, offset: 704)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1524, file: !244, line: 484, baseType: !33, size: 64, offset: 768)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1524, file: !244, line: 485, baseType: !1535, size: 64, offset: 832)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1537)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !244, line: 404, size: 1280, elements: !1538)
!1538 = !{!1539, !1832, !1902, !1906, !1910, !1916, !1922, !1926, !1931, !1935, !1939, !1943, !1971, !1975, !1979, !1983, !1988, !1992, !1999, !2003}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1537, file: !244, line: 405, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!16, !1543, !1830}
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !136, line: 74, size: 512, align: 128, elements: !1545)
!1545 = !{!1546, !1547, !1824, !1829}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1544, file: !136, line: 75, baseType: !33, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, scope: !1544, file: !136, line: 83, baseType: !1548, size: 320, offset: 64)
!1548 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1544, file: !136, line: 83, size: 320, elements: !1549)
!1549 = !{!1550, !1571, !1585, !1589, !1823}
!1550 = !DIDerivedType(tag: DW_TAG_member, scope: !1548, file: !136, line: 84, baseType: !1551, size: 320)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1548, file: !136, line: 84, size: 320, elements: !1552)
!1552 = !{!1553, !1564, !1565, !1570}
!1553 = !DIDerivedType(tag: DW_TAG_member, scope: !1551, file: !136, line: 90, baseType: !1554, size: 128)
!1554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1551, file: !136, line: 90, size: 128, elements: !1555)
!1555 = !{!1556, !1557, !1562, !1563}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1554, file: !136, line: 91, baseType: !91, size: 128)
!1557 = !DIDerivedType(tag: DW_TAG_member, scope: !1554, file: !136, line: 94, baseType: !1558, size: 128)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1554, file: !136, line: 94, size: 128, elements: !1559)
!1559 = !{!1560, !1561}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1558, file: !136, line: 96, baseType: !14, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1558, file: !136, line: 98, baseType: !98, size: 32, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1554, file: !136, line: 102, baseType: !91, size: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1554, file: !136, line: 103, baseType: !91, size: 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1551, file: !136, line: 106, baseType: !1523, size: 64, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_member, scope: !1551, file: !136, line: 107, baseType: !1566, size: 64, offset: 192)
!1566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1551, file: !136, line: 107, size: 64, elements: !1567)
!1567 = !{!1568, !1569}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1566, file: !136, line: 108, baseType: !33, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1566, file: !136, line: 109, baseType: !33, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1551, file: !136, line: 117, baseType: !33, size: 64, offset: 256)
!1571 = !DIDerivedType(tag: DW_TAG_member, scope: !1548, file: !136, line: 119, baseType: !1572, size: 320)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1548, file: !136, line: 119, size: 320, elements: !1573)
!1573 = !{!1574, !1575, !1578, !1579, !1580}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1572, file: !136, line: 124, baseType: !33, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1572, file: !136, line: 125, baseType: !1576, size: 64, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !136, line: 125, flags: DIFlagFwdDecl)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1572, file: !136, line: 126, baseType: !33, size: 64, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1572, file: !136, line: 127, baseType: !33, size: 64, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, scope: !1572, file: !136, line: 128, baseType: !1581, size: 64, offset: 256)
!1581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1572, file: !136, line: 128, size: 64, elements: !1582)
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1581, file: !136, line: 133, baseType: !33, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1581, file: !136, line: 138, baseType: !275, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, scope: !1548, file: !136, line: 141, baseType: !1586, size: 64)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1548, file: !136, line: 141, size: 64, elements: !1587)
!1587 = !{!1588}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1586, file: !136, line: 142, baseType: !33, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, scope: !1548, file: !136, line: 144, baseType: !1590, size: 128)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1548, file: !136, line: 144, size: 128, elements: !1591)
!1591 = !{!1592, !1822}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1590, file: !136, line: 146, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !128, line: 126, size: 1216, elements: !1595)
!1595 = !{!1596, !1606, !1627, !1628, !1629, !1630, !1631, !1804, !1805, !1806}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1594, file: !128, line: 127, baseType: !1597, size: 384)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !128, line: 21, size: 384, elements: !1598)
!1598 = !{!1599, !1600, !1602, !1603, !1604, !1605}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1597, file: !128, line: 22, baseType: !33, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1597, file: !128, line: 23, baseType: !1601, size: 64, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1597, file: !128, line: 24, baseType: !1601, size: 64, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1597, file: !128, line: 25, baseType: !33, size: 64, offset: 192)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1597, file: !128, line: 26, baseType: !33, size: 64, offset: 256)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1597, file: !128, line: 27, baseType: !33, size: 64, offset: 320)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1594, file: !128, line: 128, baseType: !1607, size: 128, offset: 384)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1608, line: 105, size: 128, elements: !1609)
!1608 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1609 = !{!1610, !1611}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1607, file: !1608, line: 110, baseType: !33, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1607, file: !1608, line: 118, baseType: !1612, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1608, line: 95, size: 448, elements: !1614)
!1614 = !{!1615, !1616, !1622, !1623, !1624, !1625, !1626}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1613, file: !1608, line: 96, baseType: !275, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1613, file: !1608, line: 97, baseType: !1617, size: 64, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1608, line: 60, baseType: !1619)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{null, !1621}
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1613, file: !1608, line: 98, baseType: !1617, size: 64, offset: 128)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1613, file: !1608, line: 99, baseType: !422, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1613, file: !1608, line: 100, baseType: !422, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1613, file: !1608, line: 101, baseType: !412, size: 128, align: 64, offset: 256)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1613, file: !1608, line: 102, baseType: !1621, size: 64, offset: 384)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1594, file: !128, line: 129, baseType: !602, size: 256, offset: 512)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1594, file: !128, line: 130, baseType: !127, size: 32, offset: 768)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1594, file: !128, line: 131, baseType: !98, size: 32, offset: 800)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1594, file: !128, line: 132, baseType: !33, size: 64, offset: 832)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1594, file: !128, line: 133, baseType: !1632, size: 64, offset: 896)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1634)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !128, line: 77, size: 192, elements: !1635)
!1635 = !{!1636, !1640, !1800}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1634, file: !128, line: 83, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{null, !1543}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1634, file: !128, line: 89, baseType: !1641, size: 64, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!1644, !1645}
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !136, line: 1184, baseType: !98)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1647, line: 512, size: 896, elements: !1648)
!1647 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1648 = !{!1649, !1767, !1768, !1775, !1782, !1792, !1793, !1794, !1796, !1798}
!1649 = !DIDerivedType(tag: DW_TAG_member, scope: !1646, file: !1647, line: 513, baseType: !1650, size: 320)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1646, file: !1647, line: 513, size: 320, elements: !1651)
!1651 = !{!1652, !1763, !1764, !1765, !1766}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1650, file: !1647, line: 514, baseType: !1653, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !136, line: 625, size: 1344, elements: !1655)
!1655 = !{!1656, !1665, !1666, !1674, !1681, !1682, !1687, !1688, !1693, !1694, !1697, !1756, !1757, !1758, !1759, !1760, !1761}
!1656 = !DIDerivedType(tag: DW_TAG_member, scope: !1654, file: !136, line: 628, baseType: !1657, size: 128)
!1657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1654, file: !136, line: 628, size: 128, elements: !1658)
!1658 = !{!1659, !1664}
!1659 = !DIDerivedType(tag: DW_TAG_member, scope: !1657, file: !136, line: 629, baseType: !1660, size: 128)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1657, file: !136, line: 629, size: 128, elements: !1661)
!1661 = !{!1662, !1663}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1660, file: !136, line: 631, baseType: !33, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1660, file: !136, line: 632, baseType: !33, size: 64, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1657, file: !136, line: 635, baseType: !412, size: 128, align: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1654, file: !136, line: 639, baseType: !984, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1654, file: !136, line: 640, baseType: !1667, size: 64, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1668, line: 297, baseType: !1669)
!1668 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1668, line: 297, size: 64, elements: !1670)
!1670 = !{!1671}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1669, file: !1668, line: 297, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1673, line: 19, baseType: !33)
!1673 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1674 = !DIDerivedType(tag: DW_TAG_member, scope: !1654, file: !136, line: 646, baseType: !1675, size: 64, offset: 256)
!1675 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1654, file: !136, line: 646, size: 64, elements: !1676)
!1676 = !{!1677, !1680}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1675, file: !136, line: 647, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1679)
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !136, line: 542, baseType: !33)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1675, file: !136, line: 648, baseType: !1679, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1654, file: !136, line: 666, baseType: !16, size: 32, offset: 320)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1654, file: !136, line: 667, baseType: !1683, size: 64, offset: 384)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !136, line: 579, size: 320, elements: !1685)
!1685 = !{!1686}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1684, file: !136, line: 580, baseType: !348, size: 320)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1654, file: !136, line: 670, baseType: !422, size: 8, offset: 448)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1654, file: !136, line: 681, baseType: !1689, size: 256, offset: 512)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1654, file: !136, line: 678, size: 256, elements: !1690)
!1690 = !{!1691, !1692}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1689, file: !136, line: 679, baseType: !340, size: 192, align: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1689, file: !136, line: 680, baseType: !33, size: 64, offset: 192)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1654, file: !136, line: 689, baseType: !91, size: 128, offset: 768)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1654, file: !136, line: 691, baseType: !1695, size: 64, offset: 896)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !136, line: 691, flags: DIFlagFwdDecl)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1654, file: !136, line: 694, baseType: !1698, size: 64, offset: 960)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1700)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1647, line: 563, size: 1024, elements: !1701)
!1701 = !{!1702, !1706, !1707, !1711, !1715, !1719, !1720, !1724, !1728, !1732, !1733, !1734, !1738, !1742, !1748, !1752}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1700, file: !1647, line: 564, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{null, !1653}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1700, file: !1647, line: 569, baseType: !1703, size: 64, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1700, file: !1647, line: 571, baseType: !1708, size: 64, offset: 128)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!16, !1653, !33}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1700, file: !1647, line: 572, baseType: !1712, size: 64, offset: 192)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!16, !1653}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1700, file: !1647, line: 578, baseType: !1716, size: 64, offset: 256)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!16, !1653, !33, !33, !33}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1700, file: !1647, line: 580, baseType: !1641, size: 64, offset: 320)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1700, file: !1647, line: 581, baseType: !1721, size: 64, offset: 384)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!1644, !1645, !98}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1700, file: !1647, line: 582, baseType: !1725, size: 64, offset: 448)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!1644, !1645, !33, !33}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1700, file: !1647, line: 584, baseType: !1729, size: 64, offset: 512)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!33, !1653}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1700, file: !1647, line: 588, baseType: !1641, size: 64, offset: 576)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1700, file: !1647, line: 591, baseType: !1641, size: 64, offset: 640)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1700, file: !1647, line: 597, baseType: !1735, size: 64, offset: 704)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!16, !1653, !33, !14, !16, !16}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1700, file: !1647, line: 603, baseType: !1739, size: 64, offset: 768)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!10, !1653}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1700, file: !1647, line: 613, baseType: !1743, size: 64, offset: 832)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!16, !1653, !1746}
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !691, line: 54, flags: DIFlagFwdDecl)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1700, file: !1647, line: 625, baseType: !1749, size: 64, offset: 896)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!1746, !1653, !33}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1700, file: !1647, line: 633, baseType: !1753, size: 64, offset: 960)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!1543, !1653, !33}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1654, file: !136, line: 697, baseType: !33, size: 64, offset: 1024)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1654, file: !136, line: 699, baseType: !1012, size: 64, offset: 1088)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1654, file: !136, line: 700, baseType: !14, size: 64, offset: 1152)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1654, file: !136, line: 711, baseType: !275, size: 64, offset: 1216)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1654, file: !136, line: 717, baseType: !1746, size: 64, offset: 1280)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1654, file: !136, line: 722, baseType: !1762, offset: 1344)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !136, line: 570, elements: !1005)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1650, file: !1647, line: 515, baseType: !268, size: 32, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1650, file: !1647, line: 516, baseType: !33, size: 64, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1650, file: !1647, line: 517, baseType: !33, size: 64, offset: 192)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1650, file: !1647, line: 518, baseType: !33, size: 64, offset: 256)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1646, file: !1647, line: 520, baseType: !135, size: 32, offset: 320)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1646, file: !1647, line: 522, baseType: !1769, size: 64, offset: 384)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1673, line: 22, baseType: !1771)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1673, line: 22, size: 64, elements: !1772)
!1772 = !{!1773}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1771, file: !1673, line: 22, baseType: !1774, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1673, line: 15, baseType: !33)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1646, file: !1647, line: 524, baseType: !1776, size: 64, offset: 448)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1668, line: 372, baseType: !1778)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1668, line: 372, size: 64, elements: !1779)
!1779 = !{!1780}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1778, file: !1668, line: 372, baseType: !1781, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1673, line: 16, baseType: !33)
!1782 = !DIDerivedType(tag: DW_TAG_member, scope: !1646, file: !1647, line: 527, baseType: !1783, size: 64, offset: 512)
!1783 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1646, file: !1647, line: 527, size: 64, elements: !1784)
!1784 = !{!1785, !1791}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1783, file: !1647, line: 528, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1673, line: 21, baseType: !1787)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1673, line: 21, size: 64, elements: !1788)
!1788 = !{!1789}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1787, file: !1673, line: 21, baseType: !1790, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1673, line: 14, baseType: !33)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1783, file: !1647, line: 529, baseType: !1770, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1646, file: !1647, line: 534, baseType: !1543, size: 64, offset: 576)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1646, file: !1647, line: 535, baseType: !1543, size: 64, offset: 640)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1646, file: !1647, line: 541, baseType: !1795, size: 64, offset: 704)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1646, file: !1647, line: 545, baseType: !1797, size: 64, offset: 768)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1646, file: !1647, line: 549, baseType: !1799, size: 64, offset: 832)
!1799 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1668, line: 520, baseType: !1543)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1634, file: !128, line: 100, baseType: !1801, size: 64, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!16, !1593, !33, !33, !16}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1594, file: !128, line: 134, baseType: !14, size: 64, offset: 960)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1594, file: !128, line: 135, baseType: !16, size: 32, offset: 1024)
!1806 = !DIDerivedType(tag: DW_TAG_member, scope: !1594, file: !128, line: 136, baseType: !1807, size: 128, offset: 1088)
!1807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1594, file: !128, line: 136, size: 128, elements: !1808)
!1808 = !{!1809, !1815}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1807, file: !128, line: 137, baseType: !1810, size: 128)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1811, line: 6, size: 128, elements: !1812)
!1811 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1812 = !{!1813, !1814}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1810, file: !1811, line: 7, baseType: !311, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1810, file: !1811, line: 8, baseType: !311, size: 64, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, scope: !1807, file: !128, line: 138, baseType: !1816)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1807, file: !128, line: 138, elements: !1817)
!1817 = !{!1818, !1820}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1816, file: !128, line: 138, baseType: !1819)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1816, file: !128, line: 138, elements: !1005)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1816, file: !128, line: 138, baseType: !1821)
!1821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1810, elements: !679)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1590, file: !136, line: 147, baseType: !14, size: 64, offset: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1548, file: !136, line: 161, baseType: !412, size: 128, align: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, scope: !1544, file: !136, line: 164, baseType: !1825, size: 32, offset: 384)
!1825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1544, file: !136, line: 164, size: 32, elements: !1826)
!1826 = !{!1827, !1828}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1825, file: !136, line: 169, baseType: !43, size: 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1825, file: !136, line: 177, baseType: !98, size: 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1544, file: !136, line: 181, baseType: !43, size: 32, offset: 416)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !244, line: 309, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1537, file: !244, line: 406, baseType: !1833, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!16, !1012, !1836}
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !136, line: 293, size: 1536, elements: !1838)
!1838 = !{!1839, !1869, !1883}
!1839 = !DIDerivedType(tag: DW_TAG_member, scope: !1837, file: !136, line: 295, baseType: !1840, size: 512)
!1840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1837, file: !136, line: 295, size: 512, elements: !1841)
!1841 = !{!1842, !1868}
!1842 = !DIDerivedType(tag: DW_TAG_member, scope: !1840, file: !136, line: 296, baseType: !1843, size: 448)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1840, file: !136, line: 296, size: 448, elements: !1844)
!1844 = !{!1845, !1846, !1855, !1856, !1857, !1866, !1867}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1843, file: !136, line: 298, baseType: !33, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, scope: !1843, file: !136, line: 299, baseType: !1847, size: 128, offset: 64)
!1847 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1843, file: !136, line: 299, size: 128, elements: !1848)
!1848 = !{!1849, !1850}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1847, file: !136, line: 300, baseType: !91, size: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, scope: !1847, file: !136, line: 302, baseType: !1851, size: 128)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1847, file: !136, line: 302, size: 128, elements: !1852)
!1852 = !{!1853, !1854}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1851, file: !136, line: 303, baseType: !14, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1851, file: !136, line: 305, baseType: !98, size: 32, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1843, file: !136, line: 310, baseType: !1523, size: 64, offset: 192)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1843, file: !136, line: 311, baseType: !33, size: 64, offset: 256)
!1857 = !DIDerivedType(tag: DW_TAG_member, scope: !1843, file: !136, line: 312, baseType: !1858, size: 64, offset: 320)
!1858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1843, file: !136, line: 312, size: 64, elements: !1859)
!1859 = !{!1860, !1861}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1858, file: !136, line: 313, baseType: !14, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1858, file: !136, line: 314, baseType: !1862, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !136, line: 257, baseType: !1863)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !136, line: 255, size: 64, elements: !1864)
!1864 = !{!1865}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1863, file: !136, line: 256, baseType: !33, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1843, file: !136, line: 316, baseType: !43, size: 32, offset: 384)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1843, file: !136, line: 317, baseType: !43, size: 32, offset: 416)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1840, file: !136, line: 323, baseType: !1544, size: 512, align: 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, scope: !1837, file: !136, line: 325, baseType: !1870, size: 512, offset: 512)
!1870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1837, file: !136, line: 325, size: 512, elements: !1871)
!1871 = !{!1872, !1882}
!1872 = !DIDerivedType(tag: DW_TAG_member, scope: !1870, file: !136, line: 326, baseType: !1873, size: 320)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1870, file: !136, line: 326, size: 320, elements: !1874)
!1874 = !{!1875, !1876, !1877, !1878, !1879, !1880, !1881}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1873, file: !136, line: 327, baseType: !33, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1873, file: !136, line: 328, baseType: !33, size: 64, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1873, file: !136, line: 329, baseType: !33, size: 64, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1873, file: !136, line: 331, baseType: !43, size: 32, offset: 192)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1873, file: !136, line: 332, baseType: !43, size: 32, offset: 224)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1873, file: !136, line: 333, baseType: !43, size: 32, offset: 256)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1873, file: !136, line: 335, baseType: !98, size: 32, offset: 288)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1870, file: !136, line: 339, baseType: !1544, size: 512, align: 128)
!1883 = !DIDerivedType(tag: DW_TAG_member, scope: !1837, file: !136, line: 341, baseType: !1884, size: 512, offset: 1024)
!1884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1837, file: !136, line: 341, size: 512, elements: !1885)
!1885 = !{!1886, !1895, !1901}
!1886 = !DIDerivedType(tag: DW_TAG_member, scope: !1884, file: !136, line: 342, baseType: !1887, size: 384)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1884, file: !136, line: 342, size: 384, elements: !1888)
!1888 = !{!1889, !1890, !1891, !1892, !1893, !1894}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1887, file: !136, line: 343, baseType: !33, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1887, file: !136, line: 344, baseType: !33, size: 64, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1887, file: !136, line: 346, baseType: !14, size: 64, offset: 128)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1887, file: !136, line: 347, baseType: !14, size: 64, offset: 192)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1887, file: !136, line: 348, baseType: !14, size: 64, offset: 256)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1887, file: !136, line: 349, baseType: !14, size: 64, offset: 320)
!1895 = !DIDerivedType(tag: DW_TAG_member, scope: !1884, file: !136, line: 352, baseType: !1896, size: 256)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1884, file: !136, line: 352, size: 256, elements: !1897)
!1897 = !{!1898, !1899, !1900}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1896, file: !136, line: 353, baseType: !33, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1896, file: !136, line: 354, baseType: !33, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1896, file: !136, line: 356, baseType: !91, size: 128, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1884, file: !136, line: 359, baseType: !1544, size: 512, align: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1537, file: !244, line: 409, baseType: !1903, size: 64, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!16, !1523, !1830}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1537, file: !244, line: 412, baseType: !1907, size: 64, offset: 192)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!422, !1523, !1836}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1537, file: !244, line: 414, baseType: !1911, size: 64, offset: 256)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{null, !1914}
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !244, line: 310, flags: DIFlagFwdDecl)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1537, file: !244, line: 416, baseType: !1917, size: 64, offset: 320)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!16, !1012, !1523, !35, !98, !1920, !1921}
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1537, file: !244, line: 419, baseType: !1923, size: 64, offset: 384)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!16, !1012, !1523, !35, !98, !98, !1543, !14}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1537, file: !244, line: 424, baseType: !1927, size: 64, offset: 448)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!1930, !1523, !1930}
!1930 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !19, line: 131, baseType: !311)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1537, file: !244, line: 425, baseType: !1932, size: 64, offset: 512)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{null, !1836, !29, !29}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1537, file: !244, line: 426, baseType: !1936, size: 64, offset: 576)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!422, !1836, !268}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1537, file: !244, line: 427, baseType: !1940, size: 64, offset: 640)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{null, !1836}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1537, file: !244, line: 428, baseType: !1944, size: 64, offset: 704)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!1324, !1947, !1969}
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !244, line: 373, size: 384, elements: !1949)
!1949 = !{!1950, !1951, !1952, !1956, !1957, !1958, !1959}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1948, file: !244, line: 374, baseType: !1012, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1948, file: !244, line: 375, baseType: !35, size: 64, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1948, file: !244, line: 376, baseType: !1953, size: 64, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{null, !1947, !667}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1948, file: !244, line: 377, baseType: !14, size: 64, offset: 192)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1948, file: !244, line: 378, baseType: !16, size: 32, offset: 256)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1948, file: !244, line: 379, baseType: !87, size: 16, offset: 288)
!1959 = !DIDerivedType(tag: DW_TAG_member, scope: !1948, file: !244, line: 380, baseType: !1960, size: 64, offset: 320)
!1960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1948, file: !244, line: 380, size: 64, elements: !1961)
!1961 = !{!1962, !1965}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1960, file: !244, line: 386, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !244, line: 386, flags: DIFlagFwdDecl)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1960, file: !244, line: 395, baseType: !1966, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!1324, !14}
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !244, line: 69, flags: DIFlagFwdDecl)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1537, file: !244, line: 433, baseType: !1972, size: 64, offset: 768)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!16, !1523, !1836, !1836, !151}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1537, file: !244, line: 435, baseType: !1976, size: 64, offset: 832)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!16, !1836}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1537, file: !244, line: 436, baseType: !1980, size: 64, offset: 896)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!422, !1836, !29, !29}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1537, file: !244, line: 438, baseType: !1984, size: 64, offset: 960)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{null, !1836, !1987, !1987}
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1537, file: !244, line: 439, baseType: !1989, size: 64, offset: 1024)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!16, !1523, !1543}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1537, file: !244, line: 442, baseType: !1993, size: 64, offset: 1088)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!16, !1996, !1012, !1998}
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !244, line: 66, flags: DIFlagFwdDecl)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1537, file: !244, line: 444, baseType: !2000, size: 64, offset: 1152)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{null, !1012}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1537, file: !244, line: 445, baseType: !2004, size: 64, offset: 1216)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!16, !1947, !1969}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1524, file: !244, line: 486, baseType: !33, size: 64, offset: 896)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1524, file: !244, line: 487, baseType: !348, size: 320, offset: 960)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1524, file: !244, line: 488, baseType: !2010, size: 32, offset: 1280)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2011, line: 8, baseType: !378)
!2011 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1524, file: !244, line: 489, baseType: !53, size: 32, offset: 1312)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1524, file: !244, line: 490, baseType: !91, size: 128, offset: 1344)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1524, file: !244, line: 491, baseType: !14, size: 64, offset: 1472)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1514, file: !1483, line: 180, baseType: !2016, size: 64, offset: 320)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!1324, !1012, !1425, !1513, !433, !35, !29}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1514, file: !1483, line: 182, baseType: !2016, size: 64, offset: 384)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1514, file: !1483, line: 184, baseType: !2021, size: 64, offset: 448)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!16, !1012, !1425, !1513, !1653}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1502, file: !1483, line: 90, baseType: !2025, size: 64, offset: 192)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1502, file: !1483, line: 91, baseType: !2027, size: 64, offset: 256)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1473, file: !1420, line: 120, baseType: !2029, size: 64, offset: 192)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!2032, !1443}
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2034)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !159, line: 39, size: 384, elements: !2035)
!2035 = !{!2036, !2037, !2041, !2045, !2054, !2058}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2034, file: !159, line: 40, baseType: !158, size: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2034, file: !159, line: 41, baseType: !2038, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!422}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2034, file: !159, line: 42, baseType: !2042, size: 64, offset: 128)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!14}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2034, file: !159, line: 43, baseType: !2046, size: 64, offset: 192)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!2049, !2051}
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !2053, line: 177, flags: DIFlagFwdDecl)
!2053 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2034, file: !159, line: 44, baseType: !2055, size: 64, offset: 256)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!2049}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2034, file: !159, line: 45, baseType: !1203, size: 64, offset: 320)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1473, file: !1420, line: 121, baseType: !2060, size: 64, offset: 256)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!2049, !1443}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1473, file: !1420, line: 122, baseType: !2064, size: 64, offset: 320)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{null, !1443, !627, !628}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1419, file: !1420, line: 70, baseType: !2068, size: 64, offset: 384)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2070, line: 190, size: 1152, elements: !2071)
!2070 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2071 = !{!2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2202, !2203, !2204, !2205, !2206, !2209}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2069, file: !2070, line: 191, baseType: !43, size: 32)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2069, file: !2070, line: 192, baseType: !43, size: 32, offset: 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2069, file: !2070, line: 202, baseType: !2068, size: 64, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2069, file: !2070, line: 203, baseType: !10, size: 64, offset: 128)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2069, file: !2070, line: 205, baseType: !340, size: 192, align: 64, offset: 192)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2069, file: !2070, line: 207, baseType: !2049, size: 64, offset: 384)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2069, file: !2070, line: 208, baseType: !98, size: 32, offset: 448)
!2079 = !DIDerivedType(tag: DW_TAG_member, scope: !2069, file: !2070, line: 209, baseType: !2080, size: 256, offset: 512)
!2080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2069, file: !2070, line: 209, size: 256, elements: !2081)
!2081 = !{!2082, !2091, !2095}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2080, file: !2070, line: 210, baseType: !2083, size: 256)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2070, line: 153, size: 256, elements: !2084)
!2084 = !{!2085, !2086, !2087, !2090}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2083, file: !2070, line: 154, baseType: !33, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2083, file: !2070, line: 156, baseType: !647, size: 64, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2083, file: !2070, line: 162, baseType: !2088, size: 64, offset: 128)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2070, line: 162, flags: DIFlagFwdDecl)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2083, file: !2070, line: 167, baseType: !33, size: 64, offset: 192)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2080, file: !2070, line: 211, baseType: !2092, size: 64)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2070, line: 170, size: 64, elements: !2093)
!2093 = !{!2094}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2092, file: !2070, line: 171, baseType: !2068, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2080, file: !2070, line: 212, baseType: !2096, size: 256)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2070, line: 174, size: 256, elements: !2097)
!2097 = !{!2098, !2197, !2200, !2201}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2096, file: !2070, line: 175, baseType: !2099, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2101)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2070, line: 271, size: 768, elements: !2102)
!2102 = !{!2103, !2161, !2165, !2166, !2167, !2168, !2169, !2173, !2174, !2175, !2176, !2193}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2101, file: !2070, line: 276, baseType: !2104, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!16, !2107}
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2070, line: 251, size: 1216, elements: !2109)
!2109 = !{!2110, !2111, !2112, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2108, file: !2070, line: 253, baseType: !2068, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2108, file: !2070, line: 254, baseType: !1012, size: 64, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2108, file: !2070, line: 255, baseType: !2113, size: 64, offset: 128)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2115, line: 17, size: 960, elements: !2116)
!2115 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2116 = !{!2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2146, !2147, !2150}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2114, file: !2115, line: 18, baseType: !433, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2114, file: !2115, line: 19, baseType: !29, size: 64, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2114, file: !2115, line: 20, baseType: !29, size: 64, offset: 128)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2114, file: !2115, line: 21, baseType: !29, size: 64, offset: 192)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2114, file: !2115, line: 22, baseType: !29, size: 64, offset: 256)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2114, file: !2115, line: 23, baseType: !35, size: 64, offset: 320)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2114, file: !2115, line: 24, baseType: !35, size: 64, offset: 384)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2114, file: !2115, line: 25, baseType: !1026, size: 256, offset: 448)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2114, file: !2115, line: 26, baseType: !2126, size: 64, offset: 704)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2128)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2115, line: 32, size: 256, elements: !2129)
!2129 = !{!2130, !2134, !2138, !2142}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2128, file: !2115, line: 33, baseType: !2131, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!14, !2113, !34}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2128, file: !2115, line: 34, baseType: !2135, size: 64, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{null, !2113, !14}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2128, file: !2115, line: 35, baseType: !2139, size: 64, offset: 128)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!14, !2113, !14, !34}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2128, file: !2115, line: 36, baseType: !2143, size: 64, offset: 192)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!16, !2113, !14}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2114, file: !2115, line: 27, baseType: !16, size: 32, offset: 768)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2114, file: !2115, line: 28, baseType: !2148, size: 64, offset: 832)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1013)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2114, file: !2115, line: 29, baseType: !14, size: 64, offset: 896)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2108, file: !2070, line: 256, baseType: !14, size: 64, offset: 192)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2108, file: !2070, line: 259, baseType: !1026, size: 256, offset: 256)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2108, file: !2070, line: 260, baseType: !1026, size: 256, offset: 512)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2108, file: !2070, line: 261, baseType: !16, size: 32, offset: 768)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2108, file: !2070, line: 262, baseType: !91, size: 128, offset: 832)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2108, file: !2070, line: 263, baseType: !433, size: 64, offset: 960)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2108, file: !2070, line: 265, baseType: !29, size: 64, offset: 1024)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2108, file: !2070, line: 266, baseType: !422, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2108, file: !2070, line: 267, baseType: !422, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2108, file: !2070, line: 268, baseType: !1698, size: 64, offset: 1152)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2101, file: !2070, line: 277, baseType: !2162, size: 64, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{null, !2107}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2101, file: !2070, line: 290, baseType: !2143, size: 64, offset: 128)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2101, file: !2070, line: 292, baseType: !2131, size: 64, offset: 192)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2101, file: !2070, line: 293, baseType: !2139, size: 64, offset: 256)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2101, file: !2070, line: 294, baseType: !2135, size: 64, offset: 320)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2101, file: !2070, line: 296, baseType: !2170, size: 64, offset: 384)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!1324, !2107, !433, !29, !35}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2101, file: !2070, line: 306, baseType: !29, size: 64, offset: 448)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2101, file: !2070, line: 313, baseType: !422, size: 8, offset: 512)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2101, file: !2070, line: 314, baseType: !2170, size: 64, offset: 576)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2101, file: !2070, line: 317, baseType: !2177, size: 64, offset: 640)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!2180, !2107, !2182}
!2180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2181, line: 59, baseType: !98)
!2181 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2184, line: 37, size: 128, elements: !2185)
!2184 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2185 = !{!2186, !2192}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2183, file: !2184, line: 38, baseType: !2187, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2184, line: 31, baseType: !2188)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{null, !1012, !2191, !2182}
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2183, file: !2184, line: 39, baseType: !2180, size: 32, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2101, file: !2070, line: 320, baseType: !2194, size: 64, offset: 704)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!16, !2107, !1653}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2096, file: !2070, line: 176, baseType: !2198, size: 64, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2070, line: 35, flags: DIFlagFwdDecl)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2096, file: !2070, line: 177, baseType: !35, size: 64, offset: 128)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2096, file: !2070, line: 178, baseType: !2068, size: 64, offset: 192)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2069, file: !2070, line: 215, baseType: !14, size: 64, offset: 768)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2069, file: !2070, line: 221, baseType: !311, size: 64, offset: 832)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2069, file: !2070, line: 223, baseType: !20, size: 16, offset: 896)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2069, file: !2070, line: 224, baseType: !18, size: 16, offset: 912)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2069, file: !2070, line: 225, baseType: !2207, size: 64, offset: 960)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2070, line: 36, flags: DIFlagFwdDecl)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2069, file: !2070, line: 227, baseType: !412, size: 128, align: 64, offset: 1024)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1419, file: !1420, line: 71, baseType: !2211, size: 32, offset: 448)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2212, line: 19, size: 32, elements: !2213)
!2212 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2213 = !{!2214}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2211, file: !2212, line: 20, baseType: !325, size: 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1419, file: !1420, line: 73, baseType: !98, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1419, file: !1420, line: 74, baseType: !98, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1419, file: !1420, line: 75, baseType: !98, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1419, file: !1420, line: 76, baseType: !98, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1419, file: !1420, line: 77, baseType: !98, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1416, file: !121, line: 47, baseType: !1406, size: 64, offset: 512)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1416, file: !121, line: 48, baseType: !1425, size: 64, offset: 576)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1416, file: !121, line: 49, baseType: !2223, size: 64, offset: 640)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !121, line: 49, flags: DIFlagFwdDecl)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1416, file: !121, line: 50, baseType: !601, size: 64, offset: 704)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1407, file: !121, line: 418, baseType: !2227, size: 64, offset: 1408)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !121, line: 53, size: 448, elements: !2229)
!2229 = !{!2230, !2231, !2236, !2240, !2244, !2248}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2228, file: !121, line: 54, baseType: !1490, size: 128)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2228, file: !121, line: 55, baseType: !2232, size: 64, offset: 128)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!1324, !2227, !2235, !433}
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2228, file: !121, line: 57, baseType: !2237, size: 64, offset: 192)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!1324, !2227, !2235, !10, !29}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2228, file: !121, line: 59, baseType: !2241, size: 64, offset: 256)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{null, !1406, !10}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2228, file: !121, line: 60, baseType: !2245, size: 64, offset: 320)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!16, !1406}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2228, file: !121, line: 61, baseType: !2249, size: 64, offset: 384)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{null, !1406}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1407, file: !121, line: 419, baseType: !10, size: 64, offset: 1472)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1407, file: !121, line: 420, baseType: !10, size: 64, offset: 1536)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1407, file: !121, line: 421, baseType: !1425, size: 64, offset: 1600)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1407, file: !121, line: 424, baseType: !2256, size: 64, offset: 1664)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2258)
!2258 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !121, line: 424, flags: DIFlagFwdDecl)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1407, file: !121, line: 425, baseType: !2260, size: 64, offset: 1728)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1407, file: !121, line: 426, baseType: !98, size: 32, offset: 1792)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1407, file: !121, line: 435, baseType: !1026, size: 256, offset: 1856)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1407, file: !121, line: 437, baseType: !2265, size: 64, offset: 2112)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2267, line: 69, size: 320, elements: !2268)
!2267 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2268 = !{!2269, !2270, !2271, !2288, !2290, !2294, !2295}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2266, file: !2267, line: 70, baseType: !10, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2266, file: !2267, line: 71, baseType: !1406, size: 64, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2266, file: !2267, line: 72, baseType: !2272, size: 64, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2274)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2267, line: 47, size: 256, elements: !2275)
!2275 = !{!2276, !2277, !2283, !2287}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2274, file: !2267, line: 49, baseType: !98, size: 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2274, file: !2267, line: 51, baseType: !2278, size: 64, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!16, !10, !2281}
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2266)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2274, file: !2267, line: 53, baseType: !2284, size: 64, offset: 128)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!16, !433, !2281}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2274, file: !2267, line: 55, baseType: !1203, size: 64, offset: 192)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2266, file: !2267, line: 73, baseType: !2289, size: 16, offset: 192)
!2289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2266, file: !2267, line: 74, baseType: !2291, size: 8, offset: 208)
!2291 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !78, line: 16, baseType: !2292)
!2292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !80, line: 20, baseType: !2293)
!2293 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2266, file: !2267, line: 75, baseType: !77, size: 8, offset: 216)
!2295 = !DIDerivedType(tag: DW_TAG_member, scope: !2266, file: !2267, line: 76, baseType: !2296, size: 64, offset: 256)
!2296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2266, file: !2267, line: 76, size: 64, elements: !2297)
!2297 = !{!2298, !2299, !2306}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2296, file: !2267, line: 77, baseType: !14, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2296, file: !2267, line: 78, baseType: !2300, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2302)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2267, line: 86, size: 128, elements: !2303)
!2303 = !{!2304, !2305}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2302, file: !2267, line: 87, baseType: !98, size: 32)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2302, file: !2267, line: 88, baseType: !433, size: 64, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2296, file: !2267, line: 79, baseType: !2307, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2309)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2267, line: 92, size: 256, elements: !2310)
!2310 = !{!2311, !2312, !2313, !2315, !2316}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2309, file: !2267, line: 94, baseType: !98, size: 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2309, file: !2267, line: 95, baseType: !98, size: 32, offset: 32)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2309, file: !2267, line: 96, baseType: !2314, size: 64, offset: 64)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2309, file: !2267, line: 97, baseType: !2272, size: 64, offset: 128)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2309, file: !2267, line: 98, baseType: !14, size: 64, offset: 192)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1407, file: !121, line: 438, baseType: !98, size: 32, offset: 2176)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1407, file: !121, line: 441, baseType: !98, size: 32, offset: 2208)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1407, file: !121, line: 442, baseType: !2256, size: 64, offset: 2240)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1407, file: !121, line: 443, baseType: !2260, size: 64, offset: 2304)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1407, file: !121, line: 444, baseType: !422, size: 8, offset: 2368)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1407, file: !121, line: 451, baseType: !422, size: 8, offset: 2376)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1407, file: !121, line: 454, baseType: !98, size: 32, offset: 2400)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1407, file: !121, line: 455, baseType: !2325, size: 64, offset: 2432)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2327, line: 23, size: 96, elements: !2328)
!2327 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2328 = !{!2329, !2330, !2331}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2326, file: !2327, line: 24, baseType: !16, size: 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2326, file: !2327, line: 24, baseType: !16, size: 32, offset: 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2326, file: !2327, line: 24, baseType: !16, size: 32, offset: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1407, file: !121, line: 458, baseType: !2333, size: 64, offset: 2496)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!16}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1407, file: !121, line: 460, baseType: !2337, size: 4032, align: 512, offset: 2560)
!2337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2338, size: 4032, elements: !2354)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !121, line: 362, size: 576, elements: !2339)
!2339 = !{!2340, !2341, !2342}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2338, file: !121, line: 363, baseType: !14, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2338, file: !121, line: 364, baseType: !98, size: 32, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2338, file: !121, line: 367, baseType: !2343, size: 448, offset: 128)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !121, line: 319, size: 448, elements: !2344)
!2344 = !{!2345, !2346}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2343, file: !121, line: 320, baseType: !1406, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2343, file: !121, line: 321, baseType: !2347, size: 384, offset: 64)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2348, line: 40, size: 384, elements: !2349)
!2348 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2349 = !{!2350}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2347, file: !2348, line: 41, baseType: !2351, size: 384, align: 64)
!2351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 384, align: 64, elements: !2352)
!2352 = !{!2353}
!2353 = !DISubrange(count: 2)
!2354 = !{!2355}
!2355 = !DISubrange(count: 7)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1407, file: !121, line: 463, baseType: !2357, size: 192, offset: 6592)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2358, line: 8, size: 192, elements: !2359)
!2358 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2359 = !{!2360, !2361, !2363}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2357, file: !2358, line: 10, baseType: !98, size: 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2357, file: !2358, line: 11, baseType: !2362, size: 64, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2357, file: !2358, line: 12, baseType: !2364, size: 64, offset: 128)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2366, line: 59, size: 48, elements: !2367)
!2366 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2367 = !{!2368, !2371, !2372, !2373, !2374, !2375}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2365, file: !2366, line: 60, baseType: !2369, size: 16)
!2369 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !78, line: 18, baseType: !2370)
!2370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !80, line: 23, baseType: !383)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2365, file: !2366, line: 61, baseType: !2369, size: 16, offset: 16)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2365, file: !2366, line: 63, baseType: !98, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2365, file: !2366, line: 64, baseType: !98, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2365, file: !2366, line: 65, baseType: !98, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2365, file: !2366, line: 66, baseType: !98, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1407, file: !121, line: 465, baseType: !33, size: 64, offset: 6784)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1407, file: !121, line: 469, baseType: !98, size: 32, offset: 6848)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1407, file: !121, line: 470, baseType: !91, size: 128, offset: 6912)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1407, file: !121, line: 471, baseType: !2380, size: 64, offset: 7040)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2382, line: 33, size: 96, elements: !2383)
!2382 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2383 = !{!2384, !2385, !2386, !2387}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2381, file: !2382, line: 37, baseType: !16, size: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2381, file: !2382, line: 43, baseType: !16, size: 32, offset: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2381, file: !2382, line: 45, baseType: !20, size: 16, offset: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2381, file: !2382, line: 47, baseType: !20, size: 16, offset: 80)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1407, file: !121, line: 476, baseType: !2389, size: 64, offset: 7104)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !121, line: 378, size: 256, elements: !2391)
!2391 = !{!2392, !2408, !2409, !2410}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2390, file: !121, line: 379, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2395, line: 204, baseType: !2396)
!2395 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2395, line: 197, size: 192, elements: !2397)
!2397 = !{!2398, !2400, !2401, !2402, !2404, !2406}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2396, file: !2395, line: 198, baseType: !2399, size: 32)
!2399 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2395, line: 21, baseType: !379)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2396, file: !2395, line: 199, baseType: !81, size: 8, offset: 32)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2396, file: !2395, line: 200, baseType: !81, size: 8, offset: 40)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2396, file: !2395, line: 201, baseType: !2403, size: 16, offset: 48)
!2403 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2395, line: 17, baseType: !88)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2396, file: !2395, line: 202, baseType: !2405, size: 64, offset: 64)
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2395, line: 16, baseType: !312)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2396, file: !2395, line: 203, baseType: !2407, size: 64, offset: 128)
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2395, line: 22, baseType: !312)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2390, file: !121, line: 380, baseType: !98, size: 32, offset: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2390, file: !121, line: 381, baseType: !433, size: 64, offset: 128)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2390, file: !121, line: 382, baseType: !433, size: 64, offset: 192)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1407, file: !121, line: 477, baseType: !2390, size: 256, offset: 7168)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1407, file: !121, line: 480, baseType: !2413, size: 64, offset: 7424)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !121, line: 480, flags: DIFlagFwdDecl)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1407, file: !121, line: 483, baseType: !2416, size: 64, offset: 7488)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !121, line: 483, flags: DIFlagFwdDecl)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1407, file: !121, line: 488, baseType: !433, size: 64, offset: 7552)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1407, file: !121, line: 492, baseType: !14, size: 64, offset: 7616)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1407, file: !121, line: 493, baseType: !98, size: 32, offset: 7680)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1407, file: !121, line: 495, baseType: !14, size: 64, offset: 7744)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1407, file: !121, line: 496, baseType: !98, size: 32, offset: 7808)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1407, file: !121, line: 499, baseType: !98, size: 32, offset: 7840)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1407, file: !121, line: 500, baseType: !2425, size: 64, offset: 7872)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2427, line: 45, baseType: !2428)
!2427 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1407, file: !121, line: 503, baseType: !98, size: 32, offset: 7936)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1407, file: !121, line: 504, baseType: !2431, size: 64, offset: 8000)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2434, line: 96, size: 192, elements: !2435)
!2434 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2435 = !{!2436, !2437, !2490, !2493}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2433, file: !2434, line: 97, baseType: !98, size: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2433, file: !2434, line: 98, baseType: !2438, size: 64, offset: 64)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2434, line: 24, size: 3072, elements: !2440)
!2440 = !{!2441, !2443, !2444, !2445, !2446, !2459, !2460, !2461, !2462, !2474, !2475, !2476, !2487, !2488, !2489}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2439, file: !2434, line: 26, baseType: !2442, size: 128)
!2442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 128, elements: !2352)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2439, file: !2434, line: 27, baseType: !2442, size: 128, offset: 128)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2439, file: !2434, line: 28, baseType: !16, size: 32, offset: 256)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2439, file: !2434, line: 31, baseType: !53, size: 32, align: 512, offset: 512)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2439, file: !2434, line: 32, baseType: !2447, size: 960, offset: 576)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2448, line: 206, size: 960, elements: !2449)
!2448 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2449 = !{!2450, !2451, !2454, !2456, !2457, !2458}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2447, file: !2448, line: 207, baseType: !415, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2447, file: !2448, line: 208, baseType: !2452, size: 256, offset: 64)
!2452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2453, size: 256, elements: !443)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2447, file: !2448, line: 209, baseType: !2455, size: 256, offset: 320)
!2455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 256, elements: !443)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2447, file: !2448, line: 213, baseType: !667, size: 64, offset: 576)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2447, file: !2448, line: 215, baseType: !669, size: 256, offset: 640)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2447, file: !2448, line: 216, baseType: !77, size: 8, offset: 896)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2439, file: !2434, line: 33, baseType: !33, size: 64, offset: 1536)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2439, file: !2434, line: 34, baseType: !33, size: 64, offset: 1600)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2439, file: !2434, line: 35, baseType: !422, size: 8, offset: 1664)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2439, file: !2434, line: 36, baseType: !2463, size: 320, offset: 1728)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2464, line: 11, size: 320, elements: !2465)
!2464 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2465 = !{!2466, !2467, !2468, !2473}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2463, file: !2464, line: 16, baseType: !494, size: 128)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2463, file: !2464, line: 17, baseType: !33, size: 64, offset: 128)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2463, file: !2464, line: 18, baseType: !2469, size: 64, offset: 192)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{null, !2472}
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2463, file: !2464, line: 19, baseType: !378, size: 32, offset: 256)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2439, file: !2434, line: 37, baseType: !563, size: 256, offset: 2048)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2439, file: !2434, line: 38, baseType: !412, size: 128, align: 64, offset: 2304)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2439, file: !2434, line: 39, baseType: !2477, size: 64, offset: 2432)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2434, line: 49, size: 768, elements: !2479)
!2479 = !{!2480, !2481, !2482, !2483, !2484, !2485, !2486}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2478, file: !2434, line: 50, baseType: !53, size: 32)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2478, file: !2434, line: 51, baseType: !2455, size: 256, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2478, file: !2434, line: 53, baseType: !2455, size: 256, offset: 320)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2478, file: !2434, line: 54, baseType: !33, size: 64, offset: 576)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2478, file: !2434, line: 55, baseType: !2477, size: 64, offset: 640)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2478, file: !2434, line: 56, baseType: !16, size: 32, offset: 704)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2478, file: !2434, line: 57, baseType: !16, size: 32, offset: 736)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2439, file: !2434, line: 40, baseType: !33, size: 64, offset: 2496)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2439, file: !2434, line: 42, baseType: !16, size: 32, offset: 2560)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2439, file: !2434, line: 43, baseType: !2432, size: 64, offset: 2624)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2433, file: !2434, line: 99, baseType: !2491, offset: 128)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2492, line: 211, elements: !1005)
!2492 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2433, file: !2434, line: 100, baseType: !2494, size: 64, offset: 128)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2434, line: 63, size: 3008, elements: !2496)
!2496 = !{!2497, !2498, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2528}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2495, file: !2434, line: 64, baseType: !2477, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2495, file: !2434, line: 65, baseType: !2499, size: 192, offset: 64)
!2499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2477, size: 192, elements: !1058)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2495, file: !2434, line: 67, baseType: !16, size: 32, offset: 256)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2495, file: !2434, line: 68, baseType: !1026, size: 256, offset: 320)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2495, file: !2434, line: 69, baseType: !53, size: 32, offset: 576)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2495, file: !2434, line: 70, baseType: !1026, size: 256, offset: 640)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2495, file: !2434, line: 71, baseType: !33, size: 64, offset: 896)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2495, file: !2434, line: 72, baseType: !33, size: 64, offset: 960)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2495, file: !2434, line: 73, baseType: !33, size: 64, offset: 1024)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2495, file: !2434, line: 74, baseType: !33, size: 64, offset: 1088)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2495, file: !2434, line: 75, baseType: !33, size: 64, offset: 1152)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2495, file: !2434, line: 76, baseType: !33, size: 64, offset: 1216)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2495, file: !2434, line: 77, baseType: !33, size: 64, offset: 1280)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2495, file: !2434, line: 78, baseType: !33, size: 64, offset: 1344)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2495, file: !2434, line: 79, baseType: !422, size: 8, offset: 1408)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2495, file: !2434, line: 80, baseType: !33, size: 64, offset: 1472)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2495, file: !2434, line: 81, baseType: !1026, size: 256, offset: 1536)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2495, file: !2434, line: 82, baseType: !602, size: 256, offset: 1792)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2495, file: !2434, line: 84, baseType: !43, size: 32, offset: 2048)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2495, file: !2434, line: 87, baseType: !33, size: 64, offset: 2112)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2495, file: !2434, line: 88, baseType: !33, size: 64, offset: 2176)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2495, file: !2434, line: 89, baseType: !2520, size: 704, offset: 2240)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !564, line: 111, size: 704, elements: !2521)
!2521 = !{!2522, !2523, !2524, !2527}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2520, file: !564, line: 112, baseType: !563, size: 256)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2520, file: !564, line: 113, baseType: !2463, size: 320, offset: 256)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2520, file: !564, line: 116, baseType: !2525, size: 64, offset: 576)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !564, line: 18, flags: DIFlagFwdDecl)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2520, file: !564, line: 117, baseType: !16, size: 32, offset: 640)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2495, file: !2434, line: 90, baseType: !2432, size: 64, offset: 2944)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1407, file: !121, line: 515, baseType: !2530, size: 64, offset: 8064)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2532, line: 117, size: 128, elements: !2533)
!2532 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2533 = !{!2534, !2535, !2536}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2531, file: !2532, line: 118, baseType: !333, size: 32)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2531, file: !2532, line: 119, baseType: !333, size: 32, offset: 32)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2531, file: !2532, line: 120, baseType: !667, size: 64, offset: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1407, file: !121, line: 516, baseType: !98, size: 32, offset: 8128)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1407, file: !121, line: 519, baseType: !98, size: 32, offset: 8160)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1407, file: !121, line: 520, baseType: !2540, size: 64, offset: 8192)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1407, file: !121, line: 523, baseType: !2542, size: 64, offset: 8256)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !165, line: 372, size: 1024, elements: !2545)
!2545 = !{!2546, !2547, !2587, !2647, !2728, !2729, !2732, !2737, !2738, !2739, !2740, !2742, !2745}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2544, file: !165, line: 373, baseType: !91, size: 128)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2544, file: !165, line: 374, baseType: !2548, size: 64, offset: 128)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !165, line: 291, size: 576, elements: !2550)
!2550 = !{!2551, !2552, !2553, !2554, !2558, !2581, !2585, !2586}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2549, file: !165, line: 292, baseType: !10, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2549, file: !165, line: 293, baseType: !14, size: 64, offset: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !2549, file: !165, line: 295, baseType: !14, size: 64, offset: 128)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2549, file: !165, line: 297, baseType: !2555, size: 64, offset: 192)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!16, !2543, !164, !14}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !2549, file: !165, line: 299, baseType: !2559, size: 64, offset: 256)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !165, line: 275, size: 320, elements: !2561)
!2561 = !{!2562, !2563}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2560, file: !165, line: 276, baseType: !10, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, scope: !2560, file: !165, line: 277, baseType: !2564, size: 256, offset: 64)
!2564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2560, file: !165, line: 277, size: 256, elements: !2565)
!2565 = !{!2566, !2577}
!2566 = !DIDerivedType(tag: DW_TAG_member, scope: !2564, file: !165, line: 278, baseType: !2567, size: 256)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2564, file: !165, line: 278, size: 256, elements: !2568)
!2568 = !{!2569, !2570, !2571, !2572, !2574, !2575, !2576}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2567, file: !165, line: 279, baseType: !10, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2567, file: !165, line: 280, baseType: !2428, size: 32, offset: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2567, file: !165, line: 281, baseType: !2428, size: 32, offset: 96)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !2567, file: !165, line: 282, baseType: !2573, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !2567, file: !165, line: 283, baseType: !98, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !2567, file: !165, line: 284, baseType: !2428, size: 32, offset: 160)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2567, file: !165, line: 285, baseType: !2428, size: 32, offset: 192)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !2564, file: !165, line: 287, baseType: !2578, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!16, !2543}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !2549, file: !165, line: 300, baseType: !2582, size: 64, offset: 320)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!94, !2543}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !2549, file: !165, line: 301, baseType: !91, size: 128, offset: 384)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !2549, file: !165, line: 302, baseType: !2578, size: 64, offset: 512)
!2587 = !DIDerivedType(tag: DW_TAG_member, scope: !2544, file: !165, line: 375, baseType: !2588, size: 64, offset: 192)
!2588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2544, file: !165, line: 375, size: 64, elements: !2589)
!2589 = !{!2590, !2591}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2588, file: !165, line: 376, baseType: !10, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !2588, file: !165, line: 378, baseType: !2592, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !2427, line: 32, size: 640, elements: !2594)
!2594 = !{!2595, !2596, !2608, !2632, !2633, !2634, !2635, !2636, !2640}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2593, file: !2427, line: 33, baseType: !10, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2593, file: !2427, line: 34, baseType: !2597, size: 128, offset: 64)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2532, line: 85, size: 128, elements: !2598)
!2598 = !{!2599, !2600}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2597, file: !2532, line: 86, baseType: !43, size: 32)
!2600 = !DIDerivedType(tag: DW_TAG_member, scope: !2597, file: !2532, line: 101, baseType: !2601, size: 64, offset: 64)
!2601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2597, file: !2532, line: 101, size: 64, elements: !2602)
!2602 = !{!2603, !2604, !2605}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2601, file: !2532, line: 102, baseType: !33, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2601, file: !2532, line: 103, baseType: !2530, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2601, file: !2532, line: 104, baseType: !2606, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2532, line: 104, flags: DIFlagFwdDecl)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !2593, file: !2427, line: 35, baseType: !2609, size: 64, offset: 192)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !2611, line: 61, size: 128, elements: !2612)
!2611 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2612 = !{!2613, !2614}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2610, file: !2611, line: 62, baseType: !14, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, scope: !2610, file: !2611, line: 63, baseType: !2615, size: 64, offset: 64)
!2615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2610, file: !2611, line: 63, size: 64, elements: !2616)
!2616 = !{!2617, !2618, !2631}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2615, file: !2611, line: 65, baseType: !33, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !2615, file: !2611, line: 66, baseType: !2619, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !2621, line: 169, size: 192, elements: !2622)
!2621 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!2622 = !{!2623, !2624, !2625}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2620, file: !2621, line: 170, baseType: !2619, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2620, file: !2621, line: 171, baseType: !1406, size: 64, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2620, file: !2621, line: 172, baseType: !2626, size: 64, offset: 128)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2611, line: 32, size: 64, elements: !2628)
!2628 = !{!2629, !2630}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2627, file: !2611, line: 33, baseType: !333, size: 32)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2627, file: !2611, line: 34, baseType: !333, size: 32, offset: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2615, file: !2611, line: 67, baseType: !2626, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !2593, file: !2427, line: 36, baseType: !14, size: 64, offset: 256)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !2593, file: !2427, line: 37, baseType: !14, size: 64, offset: 320)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !2593, file: !2427, line: 38, baseType: !14, size: 64, offset: 384)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !2593, file: !2427, line: 39, baseType: !2333, size: 64, offset: 448)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !2593, file: !2427, line: 40, baseType: !2637, size: 64, offset: 512)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{null}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2593, file: !2427, line: 41, baseType: !2641, size: 64, offset: 576)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !2427, line: 26, size: 192, elements: !2643)
!2643 = !{!2644, !2645, !2646}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2642, file: !2427, line: 27, baseType: !14, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2642, file: !2427, line: 28, baseType: !14, size: 64, offset: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2642, file: !2427, line: 29, baseType: !16, size: 32, offset: 128)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2544, file: !165, line: 380, baseType: !2648, size: 256, offset: 256)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !165, line: 148, size: 256, elements: !2649)
!2649 = !{!2650, !2651, !2652}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2648, file: !165, line: 149, baseType: !494, size: 128)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2648, file: !165, line: 150, baseType: !16, size: 32, offset: 128)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2648, file: !165, line: 151, baseType: !2653, size: 64, offset: 192)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !165, line: 141, size: 256, elements: !2655)
!2655 = !{!2656, !2725, !2726, !2727}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2654, file: !165, line: 142, baseType: !2657, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !165, line: 138, baseType: !2658)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!175, !2661, !16, !2724}
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !165, line: 93, size: 67776, elements: !2663)
!2663 = !{!2664, !2667, !2670, !2673, !2674, !2675, !2676, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2704, !2707, !2708, !2709, !2717, !2718, !2719, !2720, !2721, !2722, !2723}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2662, file: !165, line: 94, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !165, line: 13, flags: DIFlagFwdDecl)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2662, file: !165, line: 95, baseType: !2668, size: 64, offset: 64)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !165, line: 15, flags: DIFlagFwdDecl)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !2662, file: !165, line: 96, baseType: !2671, size: 64, offset: 128)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !165, line: 14, flags: DIFlagFwdDecl)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2662, file: !165, line: 97, baseType: !14, size: 64, offset: 192)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !2662, file: !165, line: 98, baseType: !16, size: 32, offset: 256)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2662, file: !165, line: 99, baseType: !1026, size: 256, offset: 320)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !2662, file: !165, line: 100, baseType: !2677, size: 64, offset: 576)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !2680, line: 10, flags: DIFlagFwdDecl)
!2680 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !2662, file: !165, line: 101, baseType: !33, size: 64, offset: 640)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2662, file: !165, line: 102, baseType: !14, size: 64, offset: 704)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !2662, file: !165, line: 103, baseType: !98, size: 32, offset: 768)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !2662, file: !165, line: 104, baseType: !433, size: 64, offset: 832)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !2662, file: !165, line: 105, baseType: !98, size: 32, offset: 896)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !2662, file: !165, line: 106, baseType: !667, size: 64, offset: 960)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !2662, file: !165, line: 109, baseType: !2688, size: 33088, offset: 1024)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !2689, line: 14, size: 33088, elements: !2690)
!2689 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!2690 = !{!2691, !2695, !2702, !2703}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2688, file: !2689, line: 15, baseType: !2692, size: 32768)
!2692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 32768, elements: !2693)
!2693 = !{!2694}
!2694 = !DISubrange(count: 4096)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2688, file: !2689, line: 16, baseType: !2696, size: 192, offset: 32768)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !2697, line: 18, size: 192, elements: !2698)
!2697 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!2698 = !{!2699, !2700, !2701}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2696, file: !2697, line: 19, baseType: !433, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2696, file: !2697, line: 20, baseType: !29, size: 64, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2696, file: !2697, line: 21, baseType: !29, size: 64, offset: 128)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !2688, file: !2689, line: 17, baseType: !29, size: 64, offset: 32960)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !2688, file: !2689, line: 18, baseType: !16, size: 32, offset: 33024)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !2662, file: !165, line: 111, baseType: !2705, size: 64, offset: 34112)
!2705 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !931, line: 913, baseType: !2706)
!2706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !932, size: 64, elements: !936)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !2662, file: !165, line: 114, baseType: !422, size: 8, offset: 34176)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2662, file: !165, line: 117, baseType: !2688, size: 33088, offset: 34240)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !2662, file: !165, line: 118, baseType: !2710, size: 64, offset: 67328)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !165, line: 79, size: 64, elements: !2712)
!2712 = !{!2713, !2714, !2715, !2716}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2711, file: !165, line: 80, baseType: !20, size: 16)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2711, file: !165, line: 81, baseType: !81, size: 8, offset: 16)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !2711, file: !165, line: 82, baseType: !81, size: 8, offset: 24)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2711, file: !165, line: 83, baseType: !16, size: 32, offset: 32)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !2662, file: !165, line: 119, baseType: !33, size: 64, offset: 67392)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !2662, file: !165, line: 120, baseType: !16, size: 32, offset: 67456)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !2662, file: !165, line: 121, baseType: !16, size: 32, offset: 67488)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2662, file: !165, line: 122, baseType: !16, size: 32, offset: 67520)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !2662, file: !165, line: 123, baseType: !311, size: 64, offset: 67584)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2662, file: !165, line: 125, baseType: !35, size: 64, offset: 67648)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2662, file: !165, line: 126, baseType: !667, size: 64, offset: 67712)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2654, file: !165, line: 143, baseType: !2657, size: 64, offset: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !2654, file: !165, line: 144, baseType: !2657, size: 64, offset: 128)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !2654, file: !165, line: 145, baseType: !2657, size: 64, offset: 192)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !2544, file: !165, line: 381, baseType: !433, size: 64, offset: 512)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2544, file: !165, line: 382, baseType: !2730, size: 64, offset: 576)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !235, line: 821, flags: DIFlagFwdDecl)
!2732 = !DIDerivedType(tag: DW_TAG_member, scope: !2544, file: !165, line: 387, baseType: !2733, size: 64, offset: 640)
!2733 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2544, file: !165, line: 387, size: 64, elements: !2734)
!2734 = !{!2735, !2736}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2733, file: !165, line: 388, baseType: !14, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2733, file: !165, line: 389, baseType: !43, size: 32)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2544, file: !165, line: 391, baseType: !14, size: 64, offset: 704)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2544, file: !165, line: 394, baseType: !16, size: 32, offset: 768)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !2544, file: !165, line: 397, baseType: !16, size: 32, offset: 800)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !2544, file: !165, line: 398, baseType: !2741, size: 64, offset: 832)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !2544, file: !165, line: 399, baseType: !2743, size: 64, offset: 896)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !165, line: 399, flags: DIFlagFwdDecl)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !2544, file: !165, line: 401, baseType: !2746, size: 64, offset: 960)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!16, !2543, !2749}
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !235, line: 671, size: 8512, elements: !2751)
!2751 = !{!2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !3284, !3285, !3286, !3287, !3293, !3294, !3295, !3296, !3297, !3381, !3382, !3383, !3384, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3504, !3505, !3506, !3507, !3508, !3509, !3524, !3525, !3526, !3527, !3528, !3534, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3551, !3722, !3723, !3724, !3725, !3995, !3996, !3997}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !2750, file: !235, line: 678, baseType: !91, size: 128)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !2750, file: !235, line: 684, baseType: !91, size: 128, offset: 128)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !2750, file: !235, line: 685, baseType: !91, size: 128, offset: 256)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2750, file: !235, line: 689, baseType: !340, size: 192, align: 64, offset: 384)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !2750, file: !235, line: 690, baseType: !311, size: 64, offset: 576)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !2750, file: !235, line: 696, baseType: !91, size: 128, offset: 640)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !2750, file: !235, line: 698, baseType: !494, size: 128, offset: 768)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !2750, file: !235, line: 699, baseType: !91, size: 128, offset: 896)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !2750, file: !235, line: 700, baseType: !16, size: 32, offset: 1024)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !2750, file: !235, line: 703, baseType: !16, size: 32, offset: 1056)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !2750, file: !235, line: 705, baseType: !16, size: 32, offset: 1088)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !2750, file: !235, line: 707, baseType: !98, size: 32, offset: 1120)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2750, file: !235, line: 708, baseType: !2749, size: 64, offset: 1152)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !2750, file: !235, line: 714, baseType: !2766, size: 64, offset: 1216)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !235, line: 302, size: 2432, elements: !2768)
!2768 = !{!2769, !2770, !2771, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3194, !3195, !3196, !3197, !3198, !3202, !3203, !3207, !3211, !3212, !3216, !3220, !3221, !3222, !3226, !3230, !3234, !3235, !3236, !3240, !3241, !3245, !3249, !3250, !3270, !3274, !3275, !3276, !3280}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2767, file: !235, line: 303, baseType: !91, size: 128)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2767, file: !235, line: 305, baseType: !1406, size: 64, offset: 128)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2767, file: !235, line: 306, baseType: !2772, size: 64, offset: 192)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !188, line: 705, size: 5824, elements: !2774)
!2774 = !{!2775, !2776, !2777, !2780, !2781, !2834, !2904, !2905, !2906, !2907, !2908, !2915, !3007, !3020, !3030, !3034, !3036, !3037, !3038, !3042, !3049, !3050, !3053, !3056, !3060, !3063, !3064, !3065, !3066, !3067, !3068, !3098, !3099, !3100, !3103, !3106, !3115, !3116, !3117, !3118, !3119, !3120}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2773, file: !188, line: 706, baseType: !1419, size: 512)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2773, file: !188, line: 707, baseType: !2772, size: 64, offset: 512)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2773, file: !188, line: 709, baseType: !2778, size: 64, offset: 576)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !188, line: 37, flags: DIFlagFwdDecl)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2773, file: !188, line: 711, baseType: !10, size: 64, offset: 640)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2773, file: !188, line: 712, baseType: !2782, size: 64, offset: 704)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2784)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !188, line: 89, size: 384, elements: !2785)
!2785 = !{!2786, !2787, !2788, !2794, !2799, !2803}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2784, file: !188, line: 90, baseType: !10, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2784, file: !188, line: 91, baseType: !1499, size: 64, offset: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2784, file: !188, line: 92, baseType: !2789, size: 64, offset: 128)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!16, !2792, !1455}
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2773)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2784, file: !188, line: 93, baseType: !2795, size: 64, offset: 192)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!433, !2792, !2798, !627, !628}
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2784, file: !188, line: 95, baseType: !2800, size: 64, offset: 256)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{null, !2772}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2784, file: !188, line: 97, baseType: !2804, size: 64, offset: 320)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2806)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !195, line: 286, size: 1472, elements: !2807)
!2807 = !{!2808, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2806, file: !195, line: 287, baseType: !2809, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!16, !2772}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2806, file: !195, line: 288, baseType: !2800, size: 64, offset: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2806, file: !195, line: 289, baseType: !2809, size: 64, offset: 128)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2806, file: !195, line: 290, baseType: !2809, size: 64, offset: 192)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2806, file: !195, line: 291, baseType: !2809, size: 64, offset: 256)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2806, file: !195, line: 292, baseType: !2809, size: 64, offset: 320)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2806, file: !195, line: 293, baseType: !2809, size: 64, offset: 384)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2806, file: !195, line: 294, baseType: !2809, size: 64, offset: 448)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2806, file: !195, line: 295, baseType: !2809, size: 64, offset: 512)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2806, file: !195, line: 296, baseType: !2809, size: 64, offset: 576)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2806, file: !195, line: 297, baseType: !2809, size: 64, offset: 640)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2806, file: !195, line: 298, baseType: !2809, size: 64, offset: 704)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2806, file: !195, line: 299, baseType: !2809, size: 64, offset: 768)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2806, file: !195, line: 300, baseType: !2809, size: 64, offset: 832)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2806, file: !195, line: 301, baseType: !2809, size: 64, offset: 896)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2806, file: !195, line: 302, baseType: !2809, size: 64, offset: 960)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2806, file: !195, line: 303, baseType: !2809, size: 64, offset: 1024)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2806, file: !195, line: 304, baseType: !2809, size: 64, offset: 1088)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2806, file: !195, line: 305, baseType: !2809, size: 64, offset: 1152)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2806, file: !195, line: 306, baseType: !2809, size: 64, offset: 1216)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2806, file: !195, line: 307, baseType: !2809, size: 64, offset: 1280)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2806, file: !195, line: 308, baseType: !2809, size: 64, offset: 1344)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2806, file: !195, line: 309, baseType: !2809, size: 64, offset: 1408)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2773, file: !188, line: 714, baseType: !2835, size: 64, offset: 768)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2837)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2838, line: 80, size: 1344, elements: !2839)
!2838 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2839 = !{!2840, !2841, !2842, !2843, !2844, !2845, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2903}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2837, file: !2838, line: 81, baseType: !10, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2837, file: !2838, line: 82, baseType: !10, size: 64, offset: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2837, file: !2838, line: 83, baseType: !1499, size: 64, offset: 128)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2837, file: !2838, line: 84, baseType: !1499, size: 64, offset: 192)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2837, file: !2838, line: 85, baseType: !1499, size: 64, offset: 256)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2837, file: !2838, line: 87, baseType: !2846, size: 64, offset: 320)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!16, !2772, !2849}
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !182, line: 96, size: 1152, elements: !2851)
!2851 = !{!2852, !2853, !2854, !2855, !2856, !2857, !2858, !2862, !2866, !2867, !2868, !2869, !2870, !2878, !2879, !2880, !2881, !2882, !2883}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2850, file: !182, line: 97, baseType: !10, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2850, file: !182, line: 98, baseType: !2835, size: 64, offset: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2850, file: !182, line: 100, baseType: !1406, size: 64, offset: 128)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2850, file: !182, line: 101, baseType: !10, size: 64, offset: 192)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2850, file: !182, line: 103, baseType: !422, size: 8, offset: 256)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2850, file: !182, line: 104, baseType: !181, size: 32, offset: 288)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2850, file: !182, line: 106, baseType: !2859, size: 64, offset: 320)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2861)
!2861 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !182, line: 106, flags: DIFlagFwdDecl)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2850, file: !182, line: 107, baseType: !2863, size: 64, offset: 384)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2865)
!2865 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !182, line: 107, flags: DIFlagFwdDecl)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2850, file: !182, line: 109, baseType: !2809, size: 64, offset: 448)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2850, file: !182, line: 110, baseType: !2800, size: 64, offset: 512)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2850, file: !182, line: 111, baseType: !2809, size: 64, offset: 576)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2850, file: !182, line: 112, baseType: !2800, size: 64, offset: 640)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2850, file: !182, line: 113, baseType: !2871, size: 64, offset: 704)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!16, !2772, !2874}
!2874 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !195, line: 60, baseType: !2875)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !195, line: 58, size: 32, elements: !2876)
!2876 = !{!2877}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2875, file: !195, line: 59, baseType: !16, size: 32)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2850, file: !182, line: 114, baseType: !2809, size: 64, offset: 768)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2850, file: !182, line: 115, baseType: !1499, size: 64, offset: 832)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2850, file: !182, line: 116, baseType: !1499, size: 64, offset: 896)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2850, file: !182, line: 118, baseType: !2804, size: 64, offset: 960)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2850, file: !182, line: 119, baseType: !2800, size: 64, offset: 1024)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2850, file: !182, line: 121, baseType: !2884, size: 64, offset: 1088)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !182, line: 121, flags: DIFlagFwdDecl)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2837, file: !2838, line: 88, baseType: !2789, size: 64, offset: 384)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2837, file: !2838, line: 89, baseType: !2809, size: 64, offset: 448)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2837, file: !2838, line: 90, baseType: !2800, size: 64, offset: 512)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2837, file: !2838, line: 91, baseType: !2800, size: 64, offset: 576)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2837, file: !2838, line: 92, baseType: !2800, size: 64, offset: 640)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2837, file: !2838, line: 94, baseType: !2809, size: 64, offset: 704)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2837, file: !2838, line: 95, baseType: !2809, size: 64, offset: 768)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2837, file: !2838, line: 97, baseType: !2871, size: 64, offset: 832)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2837, file: !2838, line: 98, baseType: !2809, size: 64, offset: 896)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2837, file: !2838, line: 100, baseType: !2809, size: 64, offset: 960)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2837, file: !2838, line: 102, baseType: !2809, size: 64, offset: 1024)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2837, file: !2838, line: 103, baseType: !2800, size: 64, offset: 1088)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2837, file: !2838, line: 105, baseType: !2804, size: 64, offset: 1152)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2837, file: !2838, line: 107, baseType: !2900, size: 64, offset: 1216)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2902)
!2902 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2838, line: 107, flags: DIFlagFwdDecl)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2837, file: !2838, line: 109, baseType: !422, size: 8, offset: 1280)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2773, file: !188, line: 715, baseType: !2849, size: 64, offset: 832)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2773, file: !188, line: 717, baseType: !14, size: 64, offset: 896)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2773, file: !188, line: 719, baseType: !14, size: 64, offset: 960)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2773, file: !188, line: 721, baseType: !1026, size: 256, offset: 1024)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2773, file: !188, line: 725, baseType: !2909, size: 448, offset: 1280)
!2909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !188, line: 517, size: 448, elements: !2910)
!2910 = !{!2911, !2912, !2913, !2914}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2909, file: !188, line: 518, baseType: !91, size: 128)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2909, file: !188, line: 519, baseType: !91, size: 128, offset: 128)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2909, file: !188, line: 520, baseType: !91, size: 128, offset: 256)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2909, file: !188, line: 521, baseType: !187, size: 32, offset: 384)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2773, file: !188, line: 726, baseType: !2916, size: 2496, offset: 1728)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !195, line: 663, size: 2496, elements: !2917)
!2917 = !{!2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !3000, !3004}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2916, file: !195, line: 664, baseType: !2874, size: 32)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2916, file: !195, line: 665, baseType: !98, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2916, file: !195, line: 666, baseType: !98, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2916, file: !195, line: 667, baseType: !422, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2916, file: !195, line: 668, baseType: !422, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2916, file: !195, line: 669, baseType: !422, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2916, file: !195, line: 670, baseType: !422, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2916, file: !195, line: 671, baseType: !422, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2916, file: !195, line: 672, baseType: !422, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2916, file: !195, line: 673, baseType: !422, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2916, file: !195, line: 674, baseType: !422, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2916, file: !195, line: 675, baseType: !378, size: 32, offset: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2916, file: !195, line: 676, baseType: !53, size: 32, offset: 96)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2916, file: !195, line: 678, baseType: !91, size: 128, offset: 128)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2916, file: !195, line: 679, baseType: !602, size: 256, offset: 256)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2916, file: !195, line: 680, baseType: !2934, size: 64, offset: 512)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2936, line: 43, size: 1536, elements: !2937)
!2936 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2937 = !{!2938, !2939, !2940, !2941, !2942, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2935, file: !2936, line: 44, baseType: !10, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2935, file: !2936, line: 45, baseType: !16, size: 32, offset: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2935, file: !2936, line: 46, baseType: !91, size: 128, offset: 128)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2935, file: !2936, line: 47, baseType: !53, size: 32, offset: 256)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2935, file: !2936, line: 48, baseType: !2943, size: 64, offset: 320)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !195, line: 629, flags: DIFlagFwdDecl)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2935, file: !2936, line: 49, baseType: !2463, size: 320, offset: 384)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2935, file: !2936, line: 50, baseType: !33, size: 64, offset: 704)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2935, file: !2936, line: 51, baseType: !814, size: 64, offset: 768)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2935, file: !2936, line: 52, baseType: !814, size: 64, offset: 832)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2935, file: !2936, line: 53, baseType: !814, size: 64, offset: 896)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2935, file: !2936, line: 54, baseType: !814, size: 64, offset: 960)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2935, file: !2936, line: 55, baseType: !814, size: 64, offset: 1024)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2935, file: !2936, line: 56, baseType: !33, size: 64, offset: 1088)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2935, file: !2936, line: 57, baseType: !33, size: 64, offset: 1152)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2935, file: !2936, line: 58, baseType: !33, size: 64, offset: 1216)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2935, file: !2936, line: 59, baseType: !33, size: 64, offset: 1280)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2935, file: !2936, line: 60, baseType: !33, size: 64, offset: 1344)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2935, file: !2936, line: 61, baseType: !2772, size: 64, offset: 1408)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2935, file: !2936, line: 62, baseType: !422, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2935, file: !2936, line: 63, baseType: !422, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2916, file: !195, line: 681, baseType: !422, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2916, file: !195, line: 682, baseType: !422, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2916, file: !195, line: 683, baseType: !422, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2916, file: !195, line: 684, baseType: !98, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2916, file: !195, line: 685, baseType: !98, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2916, file: !195, line: 690, baseType: !806, size: 512, offset: 640)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2916, file: !195, line: 691, baseType: !311, size: 64, offset: 1152)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2916, file: !195, line: 692, baseType: !563, size: 256, offset: 1216)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2916, file: !195, line: 693, baseType: !48, size: 192, offset: 1472)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2916, file: !195, line: 694, baseType: !2943, size: 64, offset: 1664)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2916, file: !195, line: 695, baseType: !43, size: 32, offset: 1728)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2916, file: !195, line: 696, baseType: !43, size: 32, offset: 1760)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2916, file: !195, line: 697, baseType: !98, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2916, file: !195, line: 698, baseType: !98, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2916, file: !195, line: 699, baseType: !98, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2916, file: !195, line: 700, baseType: !98, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2916, file: !195, line: 701, baseType: !98, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2916, file: !195, line: 702, baseType: !98, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2916, file: !195, line: 703, baseType: !422, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2916, file: !195, line: 704, baseType: !98, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2916, file: !195, line: 705, baseType: !98, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2916, file: !195, line: 706, baseType: !98, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2916, file: !195, line: 707, baseType: !98, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2916, file: !195, line: 708, baseType: !98, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2916, file: !195, line: 709, baseType: !98, size: 32, offset: 1824)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2916, file: !195, line: 710, baseType: !194, size: 32, offset: 1856)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2916, file: !195, line: 711, baseType: !202, size: 32, offset: 1888)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2916, file: !195, line: 712, baseType: !202, size: 32, offset: 1920)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2916, file: !195, line: 713, baseType: !16, size: 32, offset: 1952)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2916, file: !195, line: 714, baseType: !16, size: 32, offset: 1984)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2916, file: !195, line: 715, baseType: !311, size: 64, offset: 2048)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2916, file: !195, line: 716, baseType: !311, size: 64, offset: 2112)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2916, file: !195, line: 717, baseType: !311, size: 64, offset: 2176)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2916, file: !195, line: 718, baseType: !311, size: 64, offset: 2240)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2916, file: !195, line: 720, baseType: !2995, size: 64, offset: 2304)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !195, line: 632, size: 64, elements: !2997)
!2997 = !{!2998, !2999}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2996, file: !195, line: 633, baseType: !53, size: 32)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2996, file: !195, line: 634, baseType: !98, size: 32, offset: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2916, file: !195, line: 721, baseType: !3001, size: 64, offset: 2368)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{null, !2772, !333}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2916, file: !195, line: 722, baseType: !3005, size: 64, offset: 2432)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !195, line: 722, flags: DIFlagFwdDecl)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2773, file: !188, line: 727, baseType: !3008, size: 64, offset: 4224)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !195, line: 742, size: 1792, elements: !3010)
!3010 = !{!3011, !3012, !3013, !3017, !3018, !3019}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3009, file: !195, line: 743, baseType: !2806, size: 1472)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3009, file: !195, line: 744, baseType: !2809, size: 64, offset: 1472)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3009, file: !195, line: 745, baseType: !3014, size: 64, offset: 1536)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{null, !2772, !422}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3009, file: !195, line: 746, baseType: !2809, size: 64, offset: 1600)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3009, file: !195, line: 747, baseType: !2800, size: 64, offset: 1664)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3009, file: !195, line: 748, baseType: !2800, size: 64, offset: 1728)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2773, file: !188, line: 736, baseType: !3021, size: 128, offset: 4288)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !188, line: 529, size: 128, elements: !3022)
!3022 = !{!3023, !3027}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3021, file: !188, line: 531, baseType: !3024, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3026, line: 13, flags: DIFlagFwdDecl)
!3026 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3021, file: !188, line: 532, baseType: !3028, size: 64, offset: 64)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !188, line: 49, flags: DIFlagFwdDecl)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2773, file: !188, line: 738, baseType: !3031, size: 64, offset: 4416)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3033)
!3033 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !188, line: 738, flags: DIFlagFwdDecl)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2773, file: !188, line: 740, baseType: !3035, size: 64, offset: 4480)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2773, file: !188, line: 741, baseType: !311, size: 64, offset: 4544)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2773, file: !188, line: 746, baseType: !311, size: 64, offset: 4608)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2773, file: !188, line: 747, baseType: !3039, size: 64, offset: 4672)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3041)
!3041 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !188, line: 747, flags: DIFlagFwdDecl)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2773, file: !188, line: 749, baseType: !3043, size: 64, offset: 4736)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !188, line: 428, size: 128, elements: !3045)
!3045 = !{!3046, !3047, !3048}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3044, file: !188, line: 433, baseType: !98, size: 32)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3044, file: !188, line: 434, baseType: !98, size: 32, offset: 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3044, file: !188, line: 435, baseType: !33, size: 64, offset: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2773, file: !188, line: 751, baseType: !91, size: 128, offset: 4800)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2773, file: !188, line: 762, baseType: !3051, size: 64, offset: 4928)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !188, line: 762, flags: DIFlagFwdDecl)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2773, file: !188, line: 770, baseType: !3054, offset: 4992)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3055, line: 5, elements: !1005)
!3055 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2773, file: !188, line: 772, baseType: !3057, size: 64, offset: 4992)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3059, line: 18, flags: DIFlagFwdDecl)
!3059 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2773, file: !188, line: 773, baseType: !3061, size: 64, offset: 5056)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2838, line: 22, flags: DIFlagFwdDecl)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2773, file: !188, line: 776, baseType: !16, size: 32, offset: 5120)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2773, file: !188, line: 778, baseType: !1246, size: 32, offset: 5152)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2773, file: !188, line: 779, baseType: !378, size: 32, offset: 5184)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2773, file: !188, line: 781, baseType: !53, size: 32, offset: 5216)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2773, file: !188, line: 782, baseType: !91, size: 128, offset: 5248)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2773, file: !188, line: 784, baseType: !3069, size: 64, offset: 5376)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3071)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3072, line: 52, size: 768, elements: !3073)
!3072 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3073 = !{!3074, !3075, !3076, !3077, !3078, !3082, !3086, !3087, !3088, !3089, !3093, !3097}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3071, file: !3072, line: 53, baseType: !10, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3071, file: !3072, line: 55, baseType: !1499, size: 64, offset: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3071, file: !3072, line: 56, baseType: !1499, size: 64, offset: 128)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3071, file: !3072, line: 58, baseType: !2789, size: 64, offset: 192)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3071, file: !3072, line: 59, baseType: !3079, size: 64, offset: 256)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!433, !2792, !2798}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3071, file: !3072, line: 61, baseType: !3083, size: 64, offset: 320)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{null, !3069}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3071, file: !3072, line: 62, baseType: !2800, size: 64, offset: 384)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3071, file: !3072, line: 64, baseType: !2809, size: 64, offset: 448)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3071, file: !3072, line: 66, baseType: !2032, size: 64, offset: 512)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3071, file: !3072, line: 67, baseType: !3090, size: 64, offset: 576)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!2049, !2792}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3071, file: !3072, line: 69, baseType: !3094, size: 64, offset: 640)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{null, !2792, !627, !628}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3071, file: !3072, line: 71, baseType: !2804, size: 64, offset: 704)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2773, file: !188, line: 785, baseType: !1499, size: 64, offset: 5440)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2773, file: !188, line: 787, baseType: !2800, size: 64, offset: 5504)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2773, file: !188, line: 788, baseType: !3101, size: 64, offset: 5568)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !188, line: 46, flags: DIFlagFwdDecl)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2773, file: !188, line: 789, baseType: !3104, size: 64, offset: 5632)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !188, line: 48, flags: DIFlagFwdDecl)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2773, file: !188, line: 791, baseType: !3107, size: 64, offset: 5696)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !188, line: 597, size: 128, elements: !3109)
!3109 = !{!3110, !3111, !3112, !3113, !3114}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3108, file: !188, line: 598, baseType: !209, size: 32)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3108, file: !188, line: 599, baseType: !218, size: 32, offset: 32)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3108, file: !188, line: 600, baseType: !223, size: 32, offset: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3108, file: !188, line: 601, baseType: !422, size: 8, offset: 96)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3108, file: !188, line: 602, baseType: !422, size: 8, offset: 104)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2773, file: !188, line: 793, baseType: !228, size: 32, offset: 5760)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2773, file: !188, line: 795, baseType: !422, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2773, file: !188, line: 796, baseType: !422, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2773, file: !188, line: 797, baseType: !422, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2773, file: !188, line: 798, baseType: !422, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2773, file: !188, line: 799, baseType: !422, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2767, file: !235, line: 307, baseType: !2772, size: 64, offset: 256)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !2767, file: !235, line: 308, baseType: !1499, size: 64, offset: 320)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !2767, file: !235, line: 309, baseType: !1499, size: 64, offset: 384)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2767, file: !235, line: 310, baseType: !10, size: 64, offset: 448)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2767, file: !235, line: 311, baseType: !16, size: 32, offset: 512)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2767, file: !235, line: 316, baseType: !16, size: 32, offset: 544)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !2767, file: !235, line: 318, baseType: !2362, size: 64, offset: 576)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !2767, file: !235, line: 319, baseType: !3129, size: 64, offset: 640)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !235, line: 977, size: 1856, elements: !3131)
!3131 = !{!3132, !3184, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3130, file: !235, line: 978, baseType: !3133, size: 896)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !235, line: 873, size: 896, elements: !3134)
!3134 = !{!3135, !3136, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3133, file: !235, line: 874, baseType: !2766, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3133, file: !235, line: 875, baseType: !3137, size: 64, offset: 64)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !235, line: 912, size: 1792, elements: !3139)
!3139 = !{!3140, !3141, !3142, !3143, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3138, file: !235, line: 917, baseType: !359, size: 32)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3138, file: !235, line: 923, baseType: !1026, size: 256, offset: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3138, file: !235, line: 925, baseType: !91, size: 128, offset: 320)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3138, file: !235, line: 926, baseType: !3144, size: 128, offset: 448)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !235, line: 901, size: 128, elements: !3145)
!3145 = !{!3146, !3147}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3144, file: !235, line: 902, baseType: !647, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3144, file: !235, line: 903, baseType: !311, size: 64, offset: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3138, file: !235, line: 927, baseType: !3144, size: 128, offset: 576)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3138, file: !235, line: 928, baseType: !91, size: 128, offset: 704)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3138, file: !235, line: 930, baseType: !16, size: 32, offset: 832)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3138, file: !235, line: 931, baseType: !16, size: 32, offset: 864)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3138, file: !235, line: 932, baseType: !16, size: 32, offset: 896)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3138, file: !235, line: 934, baseType: !16, size: 32, offset: 928)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3138, file: !235, line: 935, baseType: !16, size: 32, offset: 960)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3138, file: !235, line: 936, baseType: !16, size: 32, offset: 992)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3138, file: !235, line: 937, baseType: !16, size: 32, offset: 1024)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3138, file: !235, line: 939, baseType: !325, size: 32, offset: 1056)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3138, file: !235, line: 940, baseType: !689, size: 64, offset: 1088)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3138, file: !235, line: 945, baseType: !311, size: 64, offset: 1152)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3138, file: !235, line: 946, baseType: !311, size: 64, offset: 1216)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3138, file: !235, line: 947, baseType: !311, size: 64, offset: 1280)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3138, file: !235, line: 953, baseType: !3137, size: 64, offset: 1344)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3138, file: !235, line: 954, baseType: !311, size: 64, offset: 1408)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3138, file: !235, line: 955, baseType: !311, size: 64, offset: 1472)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3138, file: !235, line: 956, baseType: !16, size: 32, offset: 1536)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3138, file: !235, line: 958, baseType: !16, size: 32, offset: 1568)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3138, file: !235, line: 960, baseType: !412, size: 128, align: 64, offset: 1600)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3138, file: !235, line: 968, baseType: !3169, size: 64, offset: 1728)
!3169 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3170, line: 12, baseType: !3171)
!3170 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3170, line: 10, size: 64, elements: !3172)
!3172 = !{!3173}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3171, file: !3170, line: 11, baseType: !275, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3133, file: !235, line: 877, baseType: !91, size: 128, offset: 128)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3133, file: !235, line: 879, baseType: !91, size: 128, offset: 256)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3133, file: !235, line: 880, baseType: !91, size: 128, offset: 384)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3133, file: !235, line: 883, baseType: !98, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3133, file: !235, line: 885, baseType: !98, size: 32, offset: 544)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3133, file: !235, line: 886, baseType: !98, size: 32, offset: 576)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3133, file: !235, line: 888, baseType: !43, size: 32, offset: 608)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3133, file: !235, line: 889, baseType: !412, size: 128, align: 64, offset: 640)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3133, file: !235, line: 891, baseType: !14, size: 64, offset: 768)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3133, file: !235, line: 898, baseType: !16, size: 32, offset: 832)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3130, file: !235, line: 979, baseType: !3185, size: 64, offset: 896)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3130, file: !235, line: 981, baseType: !91, size: 128, offset: 960)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3130, file: !235, line: 982, baseType: !16, size: 32, offset: 1088)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3130, file: !235, line: 984, baseType: !16, size: 32, offset: 1120)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3130, file: !235, line: 985, baseType: !16, size: 32, offset: 1152)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3130, file: !235, line: 987, baseType: !359, size: 32, offset: 1184)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3130, file: !235, line: 988, baseType: !806, size: 512, offset: 1216)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3130, file: !235, line: 989, baseType: !814, size: 64, offset: 1728)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3130, file: !235, line: 990, baseType: !98, size: 32, offset: 1792)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !2767, file: !235, line: 320, baseType: !43, size: 32, offset: 704)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !2767, file: !235, line: 321, baseType: !16, size: 32, offset: 736)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !2767, file: !235, line: 322, baseType: !16, size: 32, offset: 768)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !2767, file: !235, line: 325, baseType: !98, size: 32, offset: 800)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !2767, file: !235, line: 331, baseType: !3199, size: 64, offset: 832)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{null, !2766}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !2767, file: !235, line: 332, baseType: !3199, size: 64, offset: 896)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !2767, file: !235, line: 350, baseType: !3204, size: 64, offset: 960)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!16, !2749}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !2767, file: !235, line: 356, baseType: !3208, size: 64, offset: 1024)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{null, !2749, !984}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !2767, file: !235, line: 357, baseType: !3208, size: 64, offset: 1088)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2767, file: !235, line: 385, baseType: !3213, size: 64, offset: 1152)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!16, !2749, !16}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !2767, file: !235, line: 386, baseType: !3217, size: 64, offset: 1216)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{null, !2749, !16}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2767, file: !235, line: 406, baseType: !3217, size: 64, offset: 1280)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2767, file: !235, line: 407, baseType: !3217, size: 64, offset: 1344)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2767, file: !235, line: 415, baseType: !3223, size: 64, offset: 1408)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{null, !2749}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !2767, file: !235, line: 427, baseType: !3227, size: 64, offset: 1472)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{null, !2766, !98}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !2767, file: !235, line: 436, baseType: !3231, size: 64, offset: 1536)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!16, !2766}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !2767, file: !235, line: 443, baseType: !3199, size: 64, offset: 1600)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !2767, file: !235, line: 450, baseType: !3204, size: 64, offset: 1664)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !2767, file: !235, line: 455, baseType: !3237, size: 64, offset: 1728)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{null, !3185, !422}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !2767, file: !235, line: 461, baseType: !1100, size: 64, offset: 1792)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !2767, file: !235, line: 469, baseType: !3242, size: 64, offset: 1856)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{null, !3185, !3185}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !2767, file: !235, line: 476, baseType: !3246, size: 64, offset: 1920)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!14, !2749, !1921, !16, !422}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !2767, file: !235, line: 483, baseType: !1203, size: 64, offset: 1984)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !2767, file: !235, line: 494, baseType: !3251, size: 64, offset: 2048)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!667, !2749, !3254, !33}
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !235, line: 1014, size: 448, elements: !3256)
!3256 = !{!3257, !3258, !3261, !3262, !3263, !3264, !3269}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3255, file: !235, line: 1015, baseType: !2749, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3255, file: !235, line: 1016, baseType: !3259, size: 64, offset: 64)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !235, line: 641, flags: DIFlagFwdDecl)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3255, file: !235, line: 1017, baseType: !33, size: 64, offset: 128)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3255, file: !235, line: 1018, baseType: !33, size: 64, offset: 192)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3255, file: !235, line: 1019, baseType: !311, size: 64, offset: 256)
!3264 = !DIDerivedType(tag: DW_TAG_member, scope: !3255, file: !235, line: 1020, baseType: !3265, size: 64, offset: 320)
!3265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3255, file: !235, line: 1020, size: 64, elements: !3266)
!3266 = !{!3267, !3268}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3265, file: !235, line: 1021, baseType: !14, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3265, file: !235, line: 1022, baseType: !33, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3255, file: !235, line: 1024, baseType: !16, size: 32, offset: 384)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !2767, file: !235, line: 506, baseType: !3271, size: 64, offset: 2112)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!16, !94}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !2767, file: !235, line: 520, baseType: !3223, size: 64, offset: 2176)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !2767, file: !235, line: 530, baseType: !3204, size: 64, offset: 2240)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2767, file: !235, line: 537, baseType: !3277, size: 64, offset: 2304)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!422, !2766, !16}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !2767, file: !235, line: 542, baseType: !3281, size: 64, offset: 2368)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!16, !2749, !311}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !2750, file: !235, line: 715, baseType: !14, size: 64, offset: 1280)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2750, file: !235, line: 717, baseType: !234, size: 32, offset: 1344)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !2750, file: !235, line: 718, baseType: !98, size: 32, offset: 1376)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2750, file: !235, line: 719, baseType: !3288, size: 64, offset: 1408)
!3288 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3289, line: 26, baseType: !3290)
!3289 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3289, line: 24, size: 64, elements: !3291)
!3291 = !{!3292}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3290, file: !3289, line: 25, baseType: !3169, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2750, file: !235, line: 720, baseType: !277, size: 64, offset: 1472)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !2750, file: !235, line: 728, baseType: !311, size: 64, offset: 1536)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !2750, file: !235, line: 729, baseType: !311, size: 64, offset: 1600)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !2750, file: !235, line: 730, baseType: !311, size: 64, offset: 1664)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2750, file: !235, line: 732, baseType: !3298, size: 1088, offset: 1728)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3299, line: 385, size: 1088, elements: !3300)
!3299 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3300 = !{!3301, !3302, !3303, !3304, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3354, !3355, !3362, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3298, file: !3299, line: 390, baseType: !379, size: 32)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3298, file: !3299, line: 395, baseType: !379, size: 32, offset: 32)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3298, file: !3299, line: 400, baseType: !312, size: 64, offset: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, scope: !3298, file: !3299, line: 402, baseType: !3305, size: 64, offset: 128)
!3305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3298, file: !3299, line: 402, size: 64, elements: !3306)
!3306 = !{!3307, !3308}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3305, file: !3299, line: 403, baseType: !312, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3305, file: !3299, line: 404, baseType: !312, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3298, file: !3299, line: 407, baseType: !312, size: 64, offset: 192)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3298, file: !3299, line: 408, baseType: !312, size: 64, offset: 256)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3298, file: !3299, line: 410, baseType: !312, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3298, file: !3299, line: 411, baseType: !312, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3298, file: !3299, line: 412, baseType: !312, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3298, file: !3299, line: 413, baseType: !312, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3298, file: !3299, line: 414, baseType: !312, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3298, file: !3299, line: 415, baseType: !312, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3298, file: !3299, line: 416, baseType: !312, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3298, file: !3299, line: 417, baseType: !312, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3298, file: !3299, line: 418, baseType: !312, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3298, file: !3299, line: 419, baseType: !312, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3298, file: !3299, line: 420, baseType: !312, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3298, file: !3299, line: 421, baseType: !312, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3298, file: !3299, line: 422, baseType: !312, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3298, file: !3299, line: 423, baseType: !312, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3298, file: !3299, line: 424, baseType: !312, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3298, file: !3299, line: 435, baseType: !312, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3298, file: !3299, line: 436, baseType: !312, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3298, file: !3299, line: 437, baseType: !312, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3298, file: !3299, line: 439, baseType: !312, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3298, file: !3299, line: 440, baseType: !312, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3298, file: !3299, line: 442, baseType: !312, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3298, file: !3299, line: 443, baseType: !312, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3298, file: !3299, line: 444, baseType: !312, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3298, file: !3299, line: 445, baseType: !312, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3298, file: !3299, line: 446, baseType: !312, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3298, file: !3299, line: 447, baseType: !312, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3298, file: !3299, line: 448, baseType: !312, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3298, file: !3299, line: 449, baseType: !312, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3298, file: !3299, line: 450, baseType: !312, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3298, file: !3299, line: 451, baseType: !312, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3298, file: !3299, line: 452, baseType: !312, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3298, file: !3299, line: 453, baseType: !312, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3298, file: !3299, line: 454, baseType: !312, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3298, file: !3299, line: 455, baseType: !312, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3298, file: !3299, line: 456, baseType: !312, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3298, file: !3299, line: 457, baseType: !312, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3298, file: !3299, line: 458, baseType: !312, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3298, file: !3299, line: 459, baseType: !312, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3349 = !DIDerivedType(tag: DW_TAG_member, scope: !3298, file: !3299, line: 461, baseType: !3350, size: 32, offset: 384)
!3350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3298, file: !3299, line: 461, size: 32, elements: !3351)
!3351 = !{!3352, !3353}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3350, file: !3299, line: 462, baseType: !379, size: 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3350, file: !3299, line: 463, baseType: !379, size: 32)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3298, file: !3299, line: 466, baseType: !379, size: 32, offset: 416)
!3355 = !DIDerivedType(tag: DW_TAG_member, scope: !3298, file: !3299, line: 467, baseType: !3356, size: 64, offset: 448)
!3356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3298, file: !3299, line: 467, size: 64, elements: !3357)
!3357 = !{!3358, !3359, !3360, !3361}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3356, file: !3299, line: 468, baseType: !312, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3356, file: !3299, line: 469, baseType: !312, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3356, file: !3299, line: 470, baseType: !312, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3356, file: !3299, line: 471, baseType: !312, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, scope: !3298, file: !3299, line: 473, baseType: !3363, size: 64, offset: 512)
!3363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3298, file: !3299, line: 473, size: 64, elements: !3364)
!3364 = !{!3365, !3366, !3367, !3368}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3363, file: !3299, line: 474, baseType: !312, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3363, file: !3299, line: 475, baseType: !312, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3363, file: !3299, line: 476, baseType: !312, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3363, file: !3299, line: 477, baseType: !312, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3298, file: !3299, line: 479, baseType: !312, size: 64, offset: 576)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3298, file: !3299, line: 485, baseType: !312, size: 64, offset: 640)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3298, file: !3299, line: 490, baseType: !379, size: 32, offset: 704)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3298, file: !3299, line: 492, baseType: !334, size: 32, offset: 736)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3298, file: !3299, line: 501, baseType: !312, size: 64, offset: 768)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3298, file: !3299, line: 506, baseType: !379, size: 32, offset: 832)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3298, file: !3299, line: 507, baseType: !88, size: 16, offset: 864)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3298, file: !3299, line: 508, baseType: !88, size: 16, offset: 880)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3298, file: !3299, line: 509, baseType: !379, size: 32, offset: 896)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3298, file: !3299, line: 510, baseType: !379, size: 32, offset: 928)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3298, file: !3299, line: 518, baseType: !312, size: 64, offset: 960)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3298, file: !3299, line: 520, baseType: !312, size: 64, offset: 1024)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !2750, file: !235, line: 733, baseType: !87, size: 16, offset: 2816)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !2750, file: !235, line: 734, baseType: !87, size: 16, offset: 2832)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !2750, file: !235, line: 735, baseType: !87, size: 16, offset: 2848)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !2750, file: !235, line: 736, baseType: !3385, size: 1536, offset: 2880)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !235, line: 155, size: 1536, elements: !3386)
!3386 = !{!3387, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3471, !3472, !3473, !3474}
!3387 = !DIDerivedType(tag: DW_TAG_member, scope: !3385, file: !235, line: 157, baseType: !3388, size: 768)
!3388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3385, file: !235, line: 157, size: 768, elements: !3389)
!3389 = !{!3390, !3409, !3413, !3417, !3422, !3444}
!3390 = !DIDerivedType(tag: DW_TAG_member, scope: !3388, file: !235, line: 158, baseType: !3391, size: 768)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3388, file: !235, line: 158, size: 768, elements: !3392)
!3392 = !{!3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3408}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3391, file: !235, line: 159, baseType: !311, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3391, file: !235, line: 160, baseType: !311, size: 64, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3391, file: !235, line: 161, baseType: !33, size: 64, offset: 128)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3391, file: !235, line: 162, baseType: !33, size: 64, offset: 192)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3391, file: !235, line: 163, baseType: !16, size: 32, offset: 256)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3391, file: !235, line: 164, baseType: !16, size: 32, offset: 288)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3391, file: !235, line: 165, baseType: !16, size: 32, offset: 320)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3391, file: !235, line: 166, baseType: !16, size: 32, offset: 352)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3391, file: !235, line: 168, baseType: !3402, size: 192, offset: 384)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !235, line: 134, size: 192, elements: !3403)
!3403 = !{!3404, !3405, !3406, !3407}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3402, file: !235, line: 135, baseType: !311, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3402, file: !235, line: 136, baseType: !98, size: 32, offset: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3402, file: !235, line: 137, baseType: !16, size: 32, offset: 96)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3402, file: !235, line: 138, baseType: !16, size: 32, offset: 128)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3391, file: !235, line: 169, baseType: !3402, size: 192, offset: 576)
!3409 = !DIDerivedType(tag: DW_TAG_member, scope: !3388, file: !235, line: 171, baseType: !3410, size: 512)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3388, file: !235, line: 171, size: 512, elements: !3411)
!3411 = !{!3412}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3410, file: !235, line: 172, baseType: !806, size: 512)
!3413 = !DIDerivedType(tag: DW_TAG_member, scope: !3388, file: !235, line: 174, baseType: !3414, size: 128)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3388, file: !235, line: 174, size: 128, elements: !3415)
!3415 = !{!3416}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3414, file: !235, line: 176, baseType: !91, size: 128)
!3417 = !DIDerivedType(tag: DW_TAG_member, scope: !3388, file: !235, line: 178, baseType: !3418, size: 128)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3388, file: !235, line: 178, size: 128, elements: !3419)
!3419 = !{!3420, !3421}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3418, file: !235, line: 179, baseType: !311, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3418, file: !235, line: 180, baseType: !311, size: 64, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, scope: !3388, file: !235, line: 183, baseType: !3423, size: 320)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3388, file: !235, line: 183, size: 320, elements: !3424)
!3424 = !{!3425, !3433}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3423, file: !235, line: 189, baseType: !3426, size: 192)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3427, line: 14, size: 192, elements: !3428)
!3427 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3428 = !{!3429, !3430, !3431, !3432}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3426, file: !3427, line: 15, baseType: !33, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3426, file: !3427, line: 16, baseType: !33, size: 64, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3426, file: !3427, line: 17, baseType: !77, size: 8, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3426, file: !3427, line: 18, baseType: !77, size: 8, offset: 136)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3423, file: !235, line: 190, baseType: !3434, size: 128, offset: 192)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3435, line: 21, size: 128, elements: !3436)
!3435 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3436 = !{!3437, !3442}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3434, file: !3435, line: 22, baseType: !3438, size: 64)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3435, line: 17, size: 64, elements: !3439)
!3439 = !{!3440}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3438, file: !3435, line: 18, baseType: !3441, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3434, file: !3435, line: 23, baseType: !3443, size: 64, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, scope: !3388, file: !235, line: 193, baseType: !3445, size: 192)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3388, file: !235, line: 193, size: 192, elements: !3446)
!3446 = !{!3447, !3448, !3449, !3450, !3451}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3445, file: !235, line: 194, baseType: !77, size: 8)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3445, file: !235, line: 195, baseType: !77, size: 8, offset: 8)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3445, file: !235, line: 196, baseType: !87, size: 16, offset: 16)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3445, file: !235, line: 197, baseType: !311, size: 64, offset: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3445, file: !235, line: 198, baseType: !311, size: 64, offset: 128)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3385, file: !235, line: 205, baseType: !689, size: 64, offset: 768)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3385, file: !235, line: 211, baseType: !14, size: 64, offset: 832)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3385, file: !235, line: 214, baseType: !33, size: 64, offset: 896)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3385, file: !235, line: 223, baseType: !16, size: 32, offset: 960)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3385, file: !235, line: 229, baseType: !3288, size: 64, offset: 1024)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3385, file: !235, line: 234, baseType: !311, size: 64, offset: 1088)
!3458 = !DIDerivedType(tag: DW_TAG_member, scope: !3385, file: !235, line: 236, baseType: !3459, size: 128, offset: 1152)
!3459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3385, file: !235, line: 236, size: 128, elements: !3460)
!3460 = !{!3461, !3466}
!3461 = !DIDerivedType(tag: DW_TAG_member, scope: !3459, file: !235, line: 237, baseType: !3462, size: 128)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3459, file: !235, line: 237, size: 128, elements: !3463)
!3463 = !{!3464, !3465}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3462, file: !235, line: 241, baseType: !311, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3462, file: !235, line: 249, baseType: !3288, size: 64, offset: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, scope: !3459, file: !235, line: 251, baseType: !3467, size: 128)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3459, file: !235, line: 251, size: 128, elements: !3468)
!3468 = !{!3469, !3470}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3467, file: !235, line: 252, baseType: !311, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3467, file: !235, line: 253, baseType: !311, size: 64, offset: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3385, file: !235, line: 261, baseType: !311, size: 64, offset: 1280)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3385, file: !235, line: 262, baseType: !311, size: 64, offset: 1344)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3385, file: !235, line: 268, baseType: !311, size: 64, offset: 1408)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3385, file: !235, line: 269, baseType: !311, size: 64, offset: 1472)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2750, file: !235, line: 738, baseType: !3137, size: 64, offset: 4416)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !2750, file: !235, line: 744, baseType: !3185, size: 64, offset: 4480)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2750, file: !235, line: 745, baseType: !275, size: 64, offset: 4544)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !2750, file: !235, line: 751, baseType: !277, size: 64, offset: 4608)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !2750, file: !235, line: 752, baseType: !277, size: 64, offset: 4672)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !2750, file: !235, line: 757, baseType: !1026, size: 256, offset: 4736)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !2750, file: !235, line: 758, baseType: !91, size: 128, offset: 4992)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2750, file: !235, line: 759, baseType: !2749, size: 64, offset: 5120)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !2750, file: !235, line: 761, baseType: !16, size: 32, offset: 5184)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2750, file: !235, line: 762, baseType: !16, size: 32, offset: 5216)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !2750, file: !235, line: 764, baseType: !91, size: 128, offset: 5248)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2750, file: !235, line: 765, baseType: !689, size: 64, offset: 5376)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !2750, file: !235, line: 768, baseType: !1026, size: 256, offset: 5440)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !2750, file: !235, line: 769, baseType: !43, size: 32, offset: 5696)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2750, file: !235, line: 771, baseType: !3259, size: 64, offset: 5760)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !2750, file: !235, line: 772, baseType: !91, size: 128, offset: 5824)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !2750, file: !235, line: 773, baseType: !33, size: 64, offset: 5952)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !2750, file: !235, line: 774, baseType: !16, size: 32, offset: 6016)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !2750, file: !235, line: 777, baseType: !48, size: 192, offset: 6080)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2750, file: !235, line: 778, baseType: !3495, size: 64, offset: 6272)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !244, line: 1083, size: 384, elements: !3497)
!3497 = !{!3498, !3499, !3500, !3501, !3502, !3503}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3496, file: !244, line: 1084, baseType: !1039, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3496, file: !244, line: 1085, baseType: !16, size: 32, offset: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3496, file: !244, line: 1086, baseType: !16, size: 32, offset: 96)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3496, file: !244, line: 1087, baseType: !3495, size: 64, offset: 128)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3496, file: !244, line: 1088, baseType: !1012, size: 64, offset: 192)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3496, file: !244, line: 1089, baseType: !412, size: 128, align: 64, offset: 256)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !2750, file: !235, line: 781, baseType: !98, size: 32, offset: 6336)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !2750, file: !235, line: 782, baseType: !98, size: 32, offset: 6368)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !2750, file: !235, line: 783, baseType: !98, size: 32, offset: 6400)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !2750, file: !235, line: 784, baseType: !98, size: 32, offset: 6432)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !2750, file: !235, line: 785, baseType: !33, size: 64, offset: 6464)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !2750, file: !235, line: 786, baseType: !3510, size: 256, offset: 6528)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !3511, line: 17, size: 256, elements: !3512)
!3511 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!3512 = !{!3513, !3514, !3519}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3510, file: !3511, line: 18, baseType: !708, size: 128)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3510, file: !3511, line: 19, baseType: !3515, size: 64, offset: 128)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{null, !3518}
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !3510, file: !3511, line: 20, baseType: !3520, size: 64, offset: 192)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3521, line: 16, size: 64, elements: !3522)
!3521 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3522 = !{!3523}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3520, file: !3521, line: 17, baseType: !689, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !2750, file: !235, line: 787, baseType: !412, size: 128, align: 64, offset: 6784)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !2750, file: !235, line: 788, baseType: !98, size: 32, offset: 6912)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !2750, file: !235, line: 789, baseType: !3520, size: 64, offset: 6976)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !2750, file: !235, line: 791, baseType: !43, size: 32, offset: 7040)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !2750, file: !235, line: 794, baseType: !3529, size: 192, offset: 7104)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !235, line: 579, size: 192, elements: !3530)
!3530 = !{!3531, !3532, !3533}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3529, file: !235, line: 580, baseType: !91, size: 128)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3529, file: !235, line: 581, baseType: !359, size: 32, offset: 128)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3529, file: !235, line: 582, baseType: !98, size: 32, offset: 160)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !2750, file: !235, line: 796, baseType: !3535, size: 64, offset: 7296)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !235, line: 585, size: 128, elements: !3537)
!3537 = !{!3538, !3539}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3536, file: !235, line: 586, baseType: !33, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3536, file: !235, line: 587, baseType: !33, size: 64, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !2750, file: !235, line: 797, baseType: !33, size: 64, offset: 7360)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !2750, file: !235, line: 800, baseType: !2749, size: 64, offset: 7424)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2750, file: !235, line: 802, baseType: !3223, size: 64, offset: 7488)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2750, file: !235, line: 803, baseType: !412, size: 128, align: 64, offset: 7552)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2750, file: !235, line: 805, baseType: !1079, size: 64, offset: 7680)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2750, file: !235, line: 806, baseType: !311, size: 64, offset: 7744)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !2750, file: !235, line: 808, baseType: !277, size: 64, offset: 7808)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !2750, file: !235, line: 810, baseType: !3548, size: 64, offset: 7872)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!311}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !2750, file: !235, line: 811, baseType: !3552, size: 64, offset: 7936)
!3552 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !235, line: 605, baseType: !3553)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{null, !2749, !3556, !3661}
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !235, line: 1148, size: 2048, align: 512, elements: !3558)
!3558 = !{!3559, !3560, !3561, !3562, !3563, !3568, !3569, !3570, !3575, !3576, !3583, !3604, !3626, !3636, !3654, !3655, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !3557, file: !235, line: 1153, baseType: !311, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3557, file: !235, line: 1154, baseType: !311, size: 64, offset: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !3557, file: !235, line: 1155, baseType: !311, size: 64, offset: 128)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3557, file: !235, line: 1161, baseType: !311, size: 64, offset: 192)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3557, file: !235, line: 1165, baseType: !3564, size: 64, offset: 256)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3557, file: !235, line: 1162, size: 64, elements: !3565)
!3565 = !{!3566, !3567}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3564, file: !235, line: 1163, baseType: !378, size: 32)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3564, file: !235, line: 1164, baseType: !378, size: 32, offset: 32)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3557, file: !235, line: 1166, baseType: !311, size: 64, offset: 320)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3557, file: !235, line: 1167, baseType: !311, size: 64, offset: 384)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3557, file: !235, line: 1171, baseType: !3571, size: 64, offset: 448)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3557, file: !235, line: 1168, size: 64, elements: !3572)
!3572 = !{!3573, !3574}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3571, file: !235, line: 1169, baseType: !378, size: 32)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3571, file: !235, line: 1170, baseType: !378, size: 32, offset: 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3557, file: !235, line: 1177, baseType: !311, size: 64, offset: 512)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3557, file: !235, line: 1178, baseType: !3577, size: 64, offset: 576)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !235, line: 67, size: 64, elements: !3579)
!3579 = !{!3580, !3581}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3578, file: !235, line: 68, baseType: !312, size: 64)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3578, file: !235, line: 69, baseType: !3582, offset: 64)
!3582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, elements: !679)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3557, file: !235, line: 1179, baseType: !3584, size: 64, offset: 640)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !235, line: 93, size: 256, elements: !3586)
!3586 = !{!3587, !3603}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3585, file: !235, line: 94, baseType: !3588, size: 224)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !235, line: 83, size: 224, elements: !3589)
!3589 = !{!3590, !3596, !3601, !3602}
!3590 = !DIDerivedType(tag: DW_TAG_member, scope: !3588, file: !235, line: 84, baseType: !3591, size: 64)
!3591 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3588, file: !235, line: 84, size: 64, elements: !3592)
!3592 = !{!3593, !3595}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3591, file: !235, line: 85, baseType: !3594, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3591, file: !235, line: 86, baseType: !33, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3588, file: !235, line: 88, baseType: !3597, size: 64, offset: 64)
!3597 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !235, line: 80, baseType: !3598)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!33, !14, !2049, !33, !33}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3588, file: !235, line: 89, baseType: !14, size: 64, offset: 128)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3588, file: !235, line: 90, baseType: !378, size: 32, offset: 192)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3585, file: !235, line: 95, baseType: !378, size: 32, offset: 224)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3557, file: !235, line: 1180, baseType: !3605, size: 64, offset: 704)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !235, line: 123, size: 128, elements: !3607)
!3607 = !{!3608, !3609, !3610}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3606, file: !235, line: 124, baseType: !312, size: 64)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3606, file: !235, line: 125, baseType: !312, size: 64, offset: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3606, file: !235, line: 126, baseType: !3611, offset: 128)
!3611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3612, elements: !679)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3299, line: 1415, size: 192, elements: !3613)
!3613 = !{!3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3612, file: !3299, line: 1416, baseType: !312, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3612, file: !3299, line: 1417, baseType: !312, size: 64, offset: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3612, file: !3299, line: 1418, baseType: !312, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3612, file: !3299, line: 1419, baseType: !312, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3612, file: !3299, line: 1420, baseType: !312, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3612, file: !3299, line: 1421, baseType: !312, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3612, file: !3299, line: 1422, baseType: !312, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3612, file: !3299, line: 1423, baseType: !312, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !3612, file: !3299, line: 1424, baseType: !312, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !3612, file: !3299, line: 1425, baseType: !312, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3612, file: !3299, line: 1426, baseType: !312, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3612, file: !3299, line: 1427, baseType: !312, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3557, file: !235, line: 1181, baseType: !3627, size: 64, offset: 768)
!3627 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3299, line: 1430, size: 64, elements: !3628)
!3628 = !{!3629, !3630}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3627, file: !3299, line: 1431, baseType: !312, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, scope: !3627, file: !3299, line: 1433, baseType: !3631, size: 64)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3627, file: !3299, line: 1433, size: 64, elements: !3632)
!3632 = !{!3633, !3634, !3635}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !3631, file: !3299, line: 1434, baseType: !379, size: 32)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !3631, file: !3299, line: 1435, baseType: !88, size: 16, offset: 32)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !3631, file: !3299, line: 1436, baseType: !88, size: 16, offset: 48)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3557, file: !235, line: 1182, baseType: !3637, size: 64, offset: 832)
!3637 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3299, line: 1267, size: 64, elements: !3638)
!3638 = !{!3639, !3640}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3637, file: !3299, line: 1268, baseType: !312, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, scope: !3637, file: !3299, line: 1269, baseType: !3641, size: 64)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3637, file: !3299, line: 1269, size: 64, elements: !3642)
!3642 = !{!3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !3641, file: !3299, line: 1270, baseType: !312, size: 5, flags: DIFlagBitField, extraData: i64 0)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !3641, file: !3299, line: 1271, baseType: !312, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !3641, file: !3299, line: 1272, baseType: !312, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !3641, file: !3299, line: 1273, baseType: !312, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !3641, file: !3299, line: 1274, baseType: !312, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !3641, file: !3299, line: 1275, baseType: !312, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !3641, file: !3299, line: 1276, baseType: !312, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !3641, file: !3299, line: 1277, baseType: !312, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !3641, file: !3299, line: 1278, baseType: !312, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !3641, file: !3299, line: 1279, baseType: !312, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !3641, file: !3299, line: 1280, baseType: !312, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3557, file: !235, line: 1183, baseType: !311, size: 64, offset: 896)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3557, file: !235, line: 1185, baseType: !3656, size: 128, offset: 960)
!3656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !3657, line: 7, size: 128, elements: !3658)
!3657 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!3658 = !{!3659, !3660}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !3656, file: !3657, line: 8, baseType: !312, size: 64)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3656, file: !3657, line: 9, baseType: !3661, size: 64, offset: 64)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3663, line: 103, size: 1344, elements: !3664)
!3663 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3664 = !{!3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3693, !3694, !3695}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3662, file: !3663, line: 109, baseType: !33, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3662, file: !3663, line: 110, baseType: !33, size: 64, offset: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3662, file: !3663, line: 111, baseType: !33, size: 64, offset: 128)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3662, file: !3663, line: 112, baseType: !33, size: 64, offset: 192)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3662, file: !3663, line: 113, baseType: !33, size: 64, offset: 256)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3662, file: !3663, line: 114, baseType: !33, size: 64, offset: 320)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3662, file: !3663, line: 117, baseType: !33, size: 64, offset: 384)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3662, file: !3663, line: 118, baseType: !33, size: 64, offset: 448)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3662, file: !3663, line: 119, baseType: !33, size: 64, offset: 512)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3662, file: !3663, line: 120, baseType: !33, size: 64, offset: 576)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3662, file: !3663, line: 121, baseType: !33, size: 64, offset: 640)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3662, file: !3663, line: 122, baseType: !33, size: 64, offset: 704)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3662, file: !3663, line: 123, baseType: !33, size: 64, offset: 768)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3662, file: !3663, line: 124, baseType: !33, size: 64, offset: 832)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3662, file: !3663, line: 125, baseType: !33, size: 64, offset: 896)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3662, file: !3663, line: 139, baseType: !33, size: 64, offset: 960)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3662, file: !3663, line: 142, baseType: !33, size: 64, offset: 1024)
!3682 = !DIDerivedType(tag: DW_TAG_member, scope: !3662, file: !3663, line: 144, baseType: !3683, size: 64, offset: 1088)
!3683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3662, file: !3663, line: 144, size: 64, elements: !3684)
!3684 = !{!3685, !3686, !3687}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3683, file: !3663, line: 146, baseType: !87, size: 16)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3683, file: !3663, line: 148, baseType: !311, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3683, file: !3663, line: 150, baseType: !3688, size: 64)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3663, line: 59, size: 64, elements: !3689)
!3689 = !{!3690, !3691, !3692}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3688, file: !3663, line: 61, baseType: !311, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3688, file: !3663, line: 63, baseType: !311, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3688, file: !3663, line: 65, baseType: !311, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3662, file: !3663, line: 153, baseType: !33, size: 64, offset: 1152)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3662, file: !3663, line: 154, baseType: !33, size: 64, offset: 1216)
!3695 = !DIDerivedType(tag: DW_TAG_member, scope: !3662, file: !3663, line: 156, baseType: !3696, size: 64, offset: 1280)
!3696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3662, file: !3663, line: 156, size: 64, elements: !3697)
!3697 = !{!3698, !3699, !3700}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3696, file: !3663, line: 158, baseType: !87, size: 16)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3696, file: !3663, line: 160, baseType: !311, size: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3696, file: !3663, line: 162, baseType: !3701, size: 64)
!3701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3663, line: 69, size: 64, elements: !3702)
!3702 = !{!3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3701, file: !3663, line: 71, baseType: !311, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3701, file: !3663, line: 73, baseType: !311, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3701, file: !3663, line: 75, baseType: !311, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3701, file: !3663, line: 77, baseType: !311, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3701, file: !3663, line: 80, baseType: !311, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3701, file: !3663, line: 83, baseType: !311, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3701, file: !3663, line: 86, baseType: !311, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3701, file: !3663, line: 88, baseType: !311, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3701, file: !3663, line: 93, baseType: !311, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3701, file: !3663, line: 100, baseType: !311, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3557, file: !235, line: 1186, baseType: !3656, size: 128, offset: 1088)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3557, file: !235, line: 1187, baseType: !311, size: 64, offset: 1216)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3557, file: !235, line: 1189, baseType: !311, size: 64, offset: 1280)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3557, file: !235, line: 1190, baseType: !311, size: 64, offset: 1344)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3557, file: !235, line: 1191, baseType: !311, size: 64, offset: 1408)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3557, file: !235, line: 1192, baseType: !311, size: 64, offset: 1472)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !3557, file: !235, line: 1193, baseType: !311, size: 64, offset: 1536)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !3557, file: !235, line: 1194, baseType: !311, size: 64, offset: 1600)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3557, file: !235, line: 1195, baseType: !311, size: 64, offset: 1664)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !2750, file: !235, line: 812, baseType: !14, size: 64, offset: 8000)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !2750, file: !235, line: 820, baseType: !2543, size: 64, offset: 8064)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2750, file: !235, line: 821, baseType: !2730, size: 64, offset: 8128)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2750, file: !235, line: 828, baseType: !3726, size: 64, offset: 8192)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !235, line: 1046, size: 1664, elements: !3728)
!3728 = !{!3729, !3987}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !3727, file: !235, line: 1047, baseType: !3730, size: 1600)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3731, line: 152, size: 1600, elements: !3732)
!3731 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3732 = !{!3733, !3843, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3986}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3730, file: !3731, line: 154, baseType: !3734, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3731, line: 389, size: 7872, elements: !3736)
!3736 = !{!3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3756, !3757, !3761, !3762, !3763, !3764, !3765, !3770, !3786, !3787, !3789, !3790, !3791, !3813, !3814, !3815, !3816, !3822, !3823, !3824, !3825, !3826, !3830, !3833, !3834, !3841}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3735, file: !3731, line: 391, baseType: !3730, size: 1600)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3735, file: !3731, line: 393, baseType: !33, size: 64, offset: 1600)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3735, file: !3731, line: 401, baseType: !16, size: 32, offset: 1664)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3735, file: !3731, line: 404, baseType: !16, size: 32, offset: 1696)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3735, file: !3731, line: 417, baseType: !16, size: 32, offset: 1728)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3735, file: !3731, line: 418, baseType: !16, size: 32, offset: 1760)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3735, file: !3731, line: 419, baseType: !16, size: 32, offset: 1792)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3735, file: !3731, line: 432, baseType: !16, size: 32, offset: 1824)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3735, file: !3731, line: 433, baseType: !16, size: 32, offset: 1856)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3735, file: !3731, line: 434, baseType: !16, size: 32, offset: 1888)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3735, file: !3731, line: 436, baseType: !16, size: 32, offset: 1920)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3735, file: !3731, line: 439, baseType: !98, size: 32, offset: 1952)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3735, file: !3731, line: 441, baseType: !2068, size: 64, offset: 1984)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3735, file: !3731, line: 442, baseType: !3751, size: 448, offset: 2048)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3731, line: 138, size: 448, elements: !3752)
!3752 = !{!3753, !3754, !3755}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3751, file: !3731, line: 140, baseType: !2068, size: 64)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3751, file: !3731, line: 141, baseType: !33, size: 64, offset: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3751, file: !3731, line: 142, baseType: !2463, size: 320, offset: 128)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3735, file: !3731, line: 443, baseType: !3751, size: 448, offset: 2496)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3735, file: !3731, line: 446, baseType: !3758, offset: 2944)
!3758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3751, elements: !3759)
!3759 = !{!3760}
!3760 = !DISubrange(count: 0)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3735, file: !3731, line: 455, baseType: !87, size: 16, offset: 2944)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3735, file: !3731, line: 456, baseType: !87, size: 16, offset: 2960)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3735, file: !3731, line: 457, baseType: !87, size: 16, offset: 2976)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3735, file: !3731, line: 458, baseType: !87, size: 16, offset: 2992)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3735, file: !3731, line: 461, baseType: !3766, size: 896, offset: 3008)
!3766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3767, size: 896, elements: !3768)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3768 = !{!3769}
!3769 = !DISubrange(count: 14)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3735, file: !3731, line: 463, baseType: !3771, size: 64, offset: 3904)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3731, line: 537, size: 41664, elements: !3773)
!3773 = !{!3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3772, file: !3731, line: 538, baseType: !2088, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3772, file: !3731, line: 541, baseType: !98, size: 32, offset: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3772, file: !3731, line: 544, baseType: !16, size: 32, offset: 96)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3772, file: !3731, line: 547, baseType: !91, size: 128, offset: 128)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3772, file: !3731, line: 548, baseType: !412, size: 128, align: 64, offset: 256)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3772, file: !3731, line: 555, baseType: !3735, size: 7872, offset: 384)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3772, file: !3731, line: 558, baseType: !3734, size: 64, offset: 8256)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3772, file: !3731, line: 561, baseType: !43, size: 32, offset: 8320)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3772, file: !3731, line: 564, baseType: !98, size: 32, offset: 8352)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3772, file: !3731, line: 567, baseType: !2692, size: 32768, offset: 8384)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3772, file: !3731, line: 570, baseType: !3785, size: 512, offset: 41152)
!3785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 512, elements: !1462)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3735, file: !3731, line: 469, baseType: !91, size: 128, offset: 3968)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3735, file: !3731, line: 478, baseType: !3788, size: 1792, offset: 4096)
!3788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 1792, elements: !3768)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3735, file: !3731, line: 487, baseType: !3734, size: 64, offset: 5888)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3735, file: !3731, line: 488, baseType: !3734, size: 64, offset: 5952)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3735, file: !3731, line: 491, baseType: !3792, size: 64, offset: 6016)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3731, line: 327, size: 896, elements: !3794)
!3794 = !{!3795, !3798, !3808, !3809, !3810, !3811, !3812}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3793, file: !3731, line: 332, baseType: !3796)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3797, line: 64, elements: !1005)
!3797 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3793, file: !3731, line: 333, baseType: !3799, size: 192)
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3731, line: 299, size: 192, elements: !3800)
!3800 = !{!3801}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3799, file: !3731, line: 300, baseType: !3802, size: 192)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3803, line: 17, size: 192, elements: !3804)
!3803 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3804 = !{!3805, !3806, !3807}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3802, file: !3803, line: 18, baseType: !311, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3802, file: !3803, line: 19, baseType: !311, size: 64, offset: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3802, file: !3803, line: 20, baseType: !313, size: 64, offset: 128)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3793, file: !3731, line: 339, baseType: !3799, size: 192, offset: 192)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3793, file: !3731, line: 347, baseType: !3799, size: 192, offset: 384)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3793, file: !3731, line: 353, baseType: !3799, size: 192, offset: 576)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3793, file: !3731, line: 366, baseType: !3734, size: 64, offset: 768)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3793, file: !3731, line: 367, baseType: !3734, size: 64, offset: 832)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3735, file: !3731, line: 492, baseType: !91, size: 128, offset: 6080)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3735, file: !3731, line: 495, baseType: !3799, size: 192, offset: 6208)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3735, file: !3731, line: 496, baseType: !3799, size: 192, offset: 6400)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3735, file: !3731, line: 497, baseType: !3817, size: 192, offset: 6592)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !691, line: 324, size: 192, elements: !3818)
!3818 = !{!3819, !3820, !3821}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3817, file: !691, line: 326, baseType: !311, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3817, file: !691, line: 327, baseType: !311, size: 64, offset: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3817, file: !691, line: 328, baseType: !359, size: 32, offset: 128)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3735, file: !3731, line: 503, baseType: !91, size: 128, offset: 6784)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3735, file: !3731, line: 504, baseType: !1026, size: 256, offset: 6912)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3735, file: !3731, line: 507, baseType: !48, size: 192, offset: 7168)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3735, file: !3731, line: 510, baseType: !563, size: 256, offset: 7360)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3735, file: !3731, line: 513, baseType: !3827, size: 64, offset: 7616)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3829, line: 214, elements: !1005)
!3829 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3735, file: !3731, line: 516, baseType: !3831, offset: 7680)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3832, line: 76, elements: !1005)
!3832 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3735, file: !3731, line: 519, baseType: !43, size: 32, offset: 7680)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3735, file: !3731, line: 522, baseType: !3835, size: 128, offset: 7712)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3731, line: 370, size: 128, elements: !3836)
!3836 = !{!3837, !3838, !3839, !3840}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3835, file: !3731, line: 372, baseType: !422, size: 8)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3835, file: !3731, line: 375, baseType: !16, size: 32, offset: 32)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3835, file: !3731, line: 380, baseType: !16, size: 32, offset: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3835, file: !3731, line: 386, baseType: !16, size: 32, offset: 96)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3735, file: !3731, line: 529, baseType: !3842, offset: 7872)
!3842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3734, elements: !679)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3730, file: !3731, line: 157, baseType: !3844, size: 64, offset: 64)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3731, line: 669, size: 1984, elements: !3846)
!3846 = !{!3847, !3851, !3855, !3859, !3860, !3861, !3862, !3866, !3870, !3871, !3877, !3881, !3882, !3883, !3912, !3916, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3969, !3970}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3845, file: !3731, line: 670, baseType: !3848, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!3767, !3767}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3845, file: !3731, line: 671, baseType: !3852, size: 64, offset: 64)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!16, !3767}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3845, file: !3731, line: 672, baseType: !3856, size: 64, offset: 128)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{null, !3767}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3845, file: !3731, line: 673, baseType: !3856, size: 64, offset: 192)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3845, file: !3731, line: 674, baseType: !3856, size: 64, offset: 256)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3845, file: !3731, line: 675, baseType: !3856, size: 64, offset: 320)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3845, file: !3731, line: 676, baseType: !3863, size: 64, offset: 384)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{null, !3767, !16}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3845, file: !3731, line: 677, baseType: !3867, size: 64, offset: 448)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!16, !2113, !3767}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3845, file: !3731, line: 679, baseType: !3867, size: 64, offset: 512)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3845, file: !3731, line: 682, baseType: !3872, size: 64, offset: 576)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!16, !3875}
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3731, line: 30, flags: DIFlagFwdDecl)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3845, file: !3731, line: 683, baseType: !3878, size: 64, offset: 640)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{null, !3875}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3845, file: !3731, line: 684, baseType: !3878, size: 64, offset: 704)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3845, file: !3731, line: 685, baseType: !2637, size: 64, offset: 768)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3845, file: !3731, line: 686, baseType: !3884, size: 64, offset: 832)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!16, !689, !3887}
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3731, line: 209, size: 4736, elements: !3889)
!3889 = !{!3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3888, file: !3731, line: 215, baseType: !3766, size: 896)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3888, file: !3731, line: 218, baseType: !325, size: 32, offset: 896)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !3888, file: !3731, line: 226, baseType: !3887, size: 64, offset: 960)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !3888, file: !3731, line: 229, baseType: !3734, size: 64, offset: 1024)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3888, file: !3731, line: 232, baseType: !16, size: 32, offset: 1088)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3888, file: !3731, line: 241, baseType: !91, size: 128, offset: 1152)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !3888, file: !3731, line: 242, baseType: !91, size: 128, offset: 1280)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !3888, file: !3731, line: 243, baseType: !91, size: 128, offset: 1408)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !3888, file: !3731, line: 246, baseType: !91, size: 128, offset: 1536)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !3888, file: !3731, line: 255, baseType: !3788, size: 1792, offset: 1664)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !3888, file: !3731, line: 258, baseType: !91, size: 128, offset: 3456)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !3888, file: !3731, line: 259, baseType: !91, size: 128, offset: 3584)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !3888, file: !3731, line: 265, baseType: !494, size: 128, offset: 3712)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !3888, file: !3731, line: 271, baseType: !91, size: 128, offset: 3840)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !3888, file: !3731, line: 277, baseType: !91, size: 128, offset: 3968)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !3888, file: !3731, line: 278, baseType: !91, size: 128, offset: 4096)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !3888, file: !3731, line: 279, baseType: !91, size: 128, offset: 4224)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !3888, file: !3731, line: 288, baseType: !3734, size: 64, offset: 4352)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !3888, file: !3731, line: 289, baseType: !3734, size: 64, offset: 4416)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !3888, file: !3731, line: 290, baseType: !3887, size: 64, offset: 4480)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3888, file: !3731, line: 293, baseType: !422, size: 8, offset: 4544)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3888, file: !3731, line: 296, baseType: !412, size: 128, align: 64, offset: 4608)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3845, file: !3731, line: 688, baseType: !3913, size: 64, offset: 896)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{null, !689, !3887}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3845, file: !3731, line: 689, baseType: !3917, size: 64, offset: 960)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{null, !689}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3845, file: !3731, line: 690, baseType: !3917, size: 64, offset: 1024)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3845, file: !3731, line: 691, baseType: !3917, size: 64, offset: 1088)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3845, file: !3731, line: 692, baseType: !3856, size: 64, offset: 1152)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3845, file: !3731, line: 694, baseType: !422, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3845, file: !3731, line: 707, baseType: !422, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3845, file: !3731, line: 719, baseType: !422, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3845, file: !3731, line: 722, baseType: !16, size: 32, offset: 1248)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3845, file: !3731, line: 723, baseType: !10, size: 64, offset: 1280)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3845, file: !3731, line: 726, baseType: !10, size: 64, offset: 1344)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3845, file: !3731, line: 729, baseType: !3771, size: 64, offset: 1408)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3845, file: !3731, line: 732, baseType: !1084, size: 192, offset: 1472)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3845, file: !3731, line: 738, baseType: !91, size: 128, offset: 1664)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3845, file: !3731, line: 744, baseType: !3933, size: 64, offset: 1792)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3731, line: 580, size: 1728, elements: !3935)
!3935 = !{!3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3945, !3946, !3947, !3951, !3955, !3956, !3957, !3958, !3959, !3963, !3967, !3968}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3934, file: !3731, line: 586, baseType: !3785, size: 512)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3934, file: !3731, line: 587, baseType: !33, size: 64, offset: 512)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !3934, file: !3731, line: 593, baseType: !29, size: 64, offset: 576)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3934, file: !3731, line: 596, baseType: !98, size: 32, offset: 640)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !3934, file: !3731, line: 604, baseType: !98, size: 32, offset: 672)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3934, file: !3731, line: 610, baseType: !3844, size: 64, offset: 704)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3934, file: !3731, line: 611, baseType: !91, size: 128, offset: 768)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !3934, file: !3731, line: 612, baseType: !3944, size: 64, offset: 896)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3934, file: !3731, line: 614, baseType: !2104, size: 64, offset: 960)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3934, file: !3731, line: 615, baseType: !2162, size: 64, offset: 1024)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !3934, file: !3731, line: 621, baseType: !3948, size: 64, offset: 1088)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!311, !3767, !3933}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !3934, file: !3731, line: 625, baseType: !3952, size: 64, offset: 1152)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!281, !3767, !3933}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3934, file: !3731, line: 628, baseType: !2143, size: 64, offset: 1216)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3934, file: !3731, line: 631, baseType: !2131, size: 64, offset: 1280)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3934, file: !3731, line: 632, baseType: !2139, size: 64, offset: 1344)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3934, file: !3731, line: 633, baseType: !2135, size: 64, offset: 1408)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !3934, file: !3731, line: 640, baseType: !3960, size: 64, offset: 1472)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!16, !3767, !3933, !311}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !3934, file: !3731, line: 645, baseType: !3964, size: 64, offset: 1536)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{!16, !3767, !3933, !281}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3934, file: !3731, line: 654, baseType: !2170, size: 64, offset: 1600)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3934, file: !3731, line: 657, baseType: !2177, size: 64, offset: 1664)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3845, file: !3731, line: 745, baseType: !3933, size: 64, offset: 1856)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3845, file: !3731, line: 754, baseType: !98, size: 32, offset: 1920)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3730, file: !3731, line: 160, baseType: !1607, size: 128, offset: 128)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3730, file: !3731, line: 163, baseType: !91, size: 128, offset: 256)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3730, file: !3731, line: 164, baseType: !91, size: 128, offset: 384)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3730, file: !3731, line: 167, baseType: !91, size: 128, offset: 512)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3730, file: !3731, line: 173, baseType: !16, size: 32, offset: 640)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3730, file: !3731, line: 175, baseType: !98, size: 32, offset: 672)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3730, file: !3731, line: 183, baseType: !311, size: 64, offset: 704)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3730, file: !3731, line: 189, baseType: !43, size: 32, offset: 768)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3730, file: !3731, line: 192, baseType: !563, size: 256, offset: 832)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3730, file: !3731, line: 193, baseType: !3981, size: 448, offset: 1088)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !564, line: 120, size: 448, elements: !3982)
!3982 = !{!3983, !3984, !3985}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3981, file: !564, line: 121, baseType: !563, size: 256)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3981, file: !564, line: 122, baseType: !412, size: 128, align: 64, offset: 256)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3981, file: !564, line: 125, baseType: !2525, size: 64, offset: 384)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3730, file: !3731, line: 199, baseType: !3767, size: 64, offset: 1536)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3727, file: !235, line: 1048, baseType: !3988, size: 64, offset: 1600)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !235, line: 1039, size: 256, elements: !3990)
!3990 = !{!3991, !3992, !3993, !3994}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3989, file: !235, line: 1040, baseType: !311, size: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3989, file: !235, line: 1041, baseType: !311, size: 64, offset: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3989, file: !235, line: 1042, baseType: !311, size: 64, offset: 128)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3989, file: !235, line: 1043, baseType: !16, size: 32, offset: 192)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2750, file: !235, line: 832, baseType: !14, size: 64, offset: 8256)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !2750, file: !235, line: 834, baseType: !91, size: 128, offset: 8320)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !2750, file: !235, line: 842, baseType: !379, size: 32, offset: 8448)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1407, file: !121, line: 524, baseType: !98, size: 32, offset: 8320)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1407, file: !121, line: 525, baseType: !4000, size: 64, offset: 8384)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !4003, line: 28, size: 192, elements: !4004)
!4003 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!4004 = !{!4005, !4006, !4007}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4002, file: !4003, line: 29, baseType: !10, size: 64)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !4002, file: !4003, line: 30, baseType: !10, size: 64, offset: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !4002, file: !4003, line: 31, baseType: !33, size: 64, offset: 128)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1407, file: !121, line: 526, baseType: !98, size: 32, offset: 8448)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1407, file: !121, line: 533, baseType: !14, size: 64, offset: 8512)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1407, file: !121, line: 534, baseType: !98, size: 32, offset: 8576)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1407, file: !121, line: 535, baseType: !4012, size: 64, offset: 8640)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1407, file: !121, line: 536, baseType: !98, size: 32, offset: 8704)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1407, file: !121, line: 539, baseType: !16, size: 32, offset: 8736)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1407, file: !121, line: 540, baseType: !2626, size: 64, offset: 8768)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1407, file: !121, line: 563, baseType: !91, size: 128, offset: 8832)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1407, file: !121, line: 565, baseType: !91, size: 128, offset: 8960)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1407, file: !121, line: 568, baseType: !2637, size: 64, offset: 9088)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1407, file: !121, line: 570, baseType: !43, size: 32, offset: 9152)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1383, file: !244, line: 2382, baseType: !1382, size: 64, offset: 448)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1383, file: !244, line: 2383, baseType: !643, size: 64, offset: 512)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1383, file: !244, line: 2385, baseType: !4023, offset: 576)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2492, line: 206, elements: !1005)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1383, file: !244, line: 2386, baseType: !4023, offset: 576)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1383, file: !244, line: 2387, baseType: !4023, offset: 576)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1383, file: !244, line: 2388, baseType: !4027, offset: 576)
!4027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4023, elements: !1058)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1383, file: !244, line: 2390, baseType: !4023, offset: 576)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1383, file: !244, line: 2391, baseType: !4023, offset: 576)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1383, file: !244, line: 2392, baseType: !4023, offset: 576)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1383, file: !244, line: 2393, baseType: !4023, offset: 576)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1374, file: !244, line: 1197, baseType: !4033, size: 64, offset: 384)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4035)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !244, line: 2057, size: 1664, elements: !4036)
!4036 = !{!4037, !4041, !4045, !4046, !4050, !4054, !4058, !4059, !4060, !4064, !4068, !4072, !4073, !4074, !4080, !4084, !4085, !4089, !4090, !4091, !4092, !4096, !4100, !4147, !4162, !4163}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !4035, file: !244, line: 2058, baseType: !4038, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!1172, !1373}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !4035, file: !244, line: 2059, baseType: !4042, size: 64, offset: 64)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{null, !1172}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4035, file: !244, line: 2060, baseType: !4042, size: 64, offset: 128)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !4035, file: !244, line: 2062, baseType: !4047, size: 64, offset: 192)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{null, !1172, !16}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !4035, file: !244, line: 2063, baseType: !4051, size: 64, offset: 256)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!16, !1172, !1830}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !4035, file: !244, line: 2064, baseType: !4055, size: 64, offset: 320)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!16, !1172}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !4035, file: !244, line: 2065, baseType: !4042, size: 64, offset: 384)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !4035, file: !244, line: 2066, baseType: !1402, size: 64, offset: 448)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !4035, file: !244, line: 2067, baseType: !4061, size: 64, offset: 512)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!16, !1373, !16}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !4035, file: !244, line: 2068, baseType: !4065, size: 64, offset: 576)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!16, !1373, !243}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !4035, file: !244, line: 2069, baseType: !4069, size: 64, offset: 640)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!16, !1373}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !4035, file: !244, line: 2070, baseType: !4065, size: 64, offset: 704)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !4035, file: !244, line: 2071, baseType: !4069, size: 64, offset: 768)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !4035, file: !244, line: 2072, baseType: !4075, size: 64, offset: 832)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!16, !1137, !4078}
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !244, line: 62, flags: DIFlagFwdDecl)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !4035, file: !244, line: 2073, baseType: !4081, size: 64, offset: 896)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!16, !1373, !2362, !433}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !4035, file: !244, line: 2074, baseType: !1402, size: 64, offset: 960)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4035, file: !244, line: 2076, baseType: !4086, size: 64, offset: 1024)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!16, !2113, !1137}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !4035, file: !244, line: 2077, baseType: !4086, size: 64, offset: 1088)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4035, file: !244, line: 2078, baseType: !4086, size: 64, offset: 1152)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !4035, file: !244, line: 2079, baseType: !4086, size: 64, offset: 1216)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !4035, file: !244, line: 2081, baseType: !4093, size: 64, offset: 1280)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!1324, !1373, !16, !433, !29, !35}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !4035, file: !244, line: 2082, baseType: !4097, size: 64, offset: 1344)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{!1324, !1373, !16, !10, !29, !35}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !4035, file: !244, line: 2083, baseType: !4101, size: 64, offset: 1408)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!4104, !1172}
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !249, line: 296, size: 1664, elements: !4107)
!4107 = !{!4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4132, !4133, !4134}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4106, file: !249, line: 297, baseType: !494, size: 128)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4106, file: !249, line: 298, baseType: !91, size: 128, offset: 128)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4106, file: !249, line: 299, baseType: !91, size: 128, offset: 256)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4106, file: !249, line: 300, baseType: !91, size: 128, offset: 384)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4106, file: !249, line: 301, baseType: !1026, size: 256, offset: 512)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4106, file: !249, line: 302, baseType: !53, size: 32, offset: 768)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4106, file: !249, line: 303, baseType: !43, size: 32, offset: 800)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4106, file: !249, line: 304, baseType: !1373, size: 64, offset: 832)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4106, file: !249, line: 305, baseType: !4117, size: 64, offset: 896)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !249, line: 68, size: 64, elements: !4118)
!4118 = !{!4119, !4131}
!4119 = !DIDerivedType(tag: DW_TAG_member, scope: !4117, file: !249, line: 69, baseType: !4120, size: 32)
!4120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4117, file: !249, line: 69, size: 32, elements: !4121)
!4121 = !{!4122, !4123, !4124}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4120, file: !249, line: 70, baseType: !284, size: 32)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4120, file: !249, line: 71, baseType: !292, size: 32)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4120, file: !249, line: 72, baseType: !4125, size: 32)
!4125 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4126, line: 24, baseType: !4127)
!4126 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4126, line: 22, size: 32, elements: !4128)
!4128 = !{!4129}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4127, file: !4126, line: 23, baseType: !4130, size: 32)
!4130 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4126, line: 20, baseType: !290)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4117, file: !249, line: 74, baseType: !248, size: 32, offset: 32)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4106, file: !249, line: 306, baseType: !35, size: 64, offset: 960)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4106, file: !249, line: 307, baseType: !33, size: 64, offset: 1024)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4106, file: !249, line: 308, baseType: !4135, size: 576, offset: 1088)
!4135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !249, line: 205, size: 576, elements: !4136)
!4136 = !{!4137, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4135, file: !249, line: 206, baseType: !4138, size: 64)
!4138 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !249, line: 66, baseType: !37)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4135, file: !249, line: 207, baseType: !4138, size: 64, offset: 64)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4135, file: !249, line: 208, baseType: !4138, size: 64, offset: 128)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4135, file: !249, line: 209, baseType: !4138, size: 64, offset: 192)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4135, file: !249, line: 210, baseType: !4138, size: 64, offset: 256)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4135, file: !249, line: 211, baseType: !4138, size: 64, offset: 320)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4135, file: !249, line: 212, baseType: !4138, size: 64, offset: 384)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4135, file: !249, line: 213, baseType: !369, size: 64, offset: 448)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4135, file: !249, line: 214, baseType: !369, size: 64, offset: 512)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !4035, file: !244, line: 2085, baseType: !4148, size: 64, offset: 1472)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!667, !1373, !4151}
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4153, line: 15, size: 256, elements: !4154)
!4153 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4154 = !{!4155, !4156, !4157, !4158, !4159}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4152, file: !4153, line: 16, baseType: !268, size: 32)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4152, file: !4153, line: 19, baseType: !16, size: 32, offset: 32)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4152, file: !4153, line: 26, baseType: !33, size: 64, offset: 64)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4152, file: !4153, line: 33, baseType: !33, size: 64, offset: 128)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4152, file: !4153, line: 36, baseType: !4160, size: 64, offset: 192)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !136, line: 33, flags: DIFlagFwdDecl)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !4035, file: !244, line: 2087, baseType: !4148, size: 64, offset: 1536)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4035, file: !244, line: 2089, baseType: !1402, size: 64, offset: 1600)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1374, file: !244, line: 1198, baseType: !4165, size: 64, offset: 448)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4167)
!4167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !249, line: 324, size: 704, elements: !4168)
!4168 = !{!4169, !4173, !4177, !4181, !4182, !4183, !4184, !4185, !4190, !4195, !4199}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4167, file: !249, line: 325, baseType: !4170, size: 64)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!16, !4105}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4167, file: !249, line: 326, baseType: !4174, size: 64, offset: 64)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!4105, !1373, !16}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4167, file: !249, line: 327, baseType: !4178, size: 64, offset: 128)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{null, !4105}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4167, file: !249, line: 328, baseType: !4170, size: 64, offset: 192)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4167, file: !249, line: 329, baseType: !4170, size: 64, offset: 256)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4167, file: !249, line: 330, baseType: !4170, size: 64, offset: 320)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4167, file: !249, line: 331, baseType: !4061, size: 64, offset: 384)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4167, file: !249, line: 334, baseType: !4186, size: 64, offset: 448)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!4189, !1172}
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4167, file: !249, line: 335, baseType: !4191, size: 64, offset: 512)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!16, !1172, !4194}
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4167, file: !249, line: 337, baseType: !4196, size: 64, offset: 576)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!16, !1172, !4189}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4167, file: !249, line: 339, baseType: !4200, size: 64, offset: 640)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!16, !1373, !4203}
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1374, file: !244, line: 1199, baseType: !4205, size: 64, offset: 512)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4207)
!4207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !249, line: 430, size: 704, elements: !4208)
!4208 = !{!4209, !4213, !4214, !4218, !4219, !4220, !4235, !4258, !4262, !4263, !4286}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4207, file: !249, line: 431, baseType: !4210, size: 64)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!16, !1373, !16, !16, !1293}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4207, file: !249, line: 432, baseType: !4061, size: 64, offset: 64)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4207, file: !249, line: 433, baseType: !4215, size: 64, offset: 128)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{!16, !1373, !98}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4207, file: !249, line: 434, baseType: !4215, size: 64, offset: 192)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4207, file: !249, line: 435, baseType: !4061, size: 64, offset: 256)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4207, file: !249, line: 436, baseType: !4221, size: 64, offset: 320)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{!16, !1373, !16, !4224}
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !249, line: 417, size: 256, elements: !4226)
!4226 = !{!4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4225, file: !249, line: 418, baseType: !16, size: 32)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4225, file: !249, line: 419, baseType: !98, size: 32, offset: 32)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4225, file: !249, line: 420, baseType: !98, size: 32, offset: 64)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4225, file: !249, line: 422, baseType: !98, size: 32, offset: 96)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4225, file: !249, line: 423, baseType: !98, size: 32, offset: 128)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4225, file: !249, line: 424, baseType: !98, size: 32, offset: 160)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4225, file: !249, line: 425, baseType: !98, size: 32, offset: 192)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4225, file: !249, line: 426, baseType: !98, size: 32, offset: 224)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4207, file: !249, line: 437, baseType: !4236, size: 64, offset: 384)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!16, !1373, !4117, !4239}
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !249, line: 345, size: 960, elements: !4241)
!4241 = !{!4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4240, file: !249, line: 346, baseType: !16, size: 32)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4240, file: !249, line: 347, baseType: !311, size: 64, offset: 64)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4240, file: !249, line: 348, baseType: !311, size: 64, offset: 128)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4240, file: !249, line: 349, baseType: !311, size: 64, offset: 192)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4240, file: !249, line: 350, baseType: !311, size: 64, offset: 256)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4240, file: !249, line: 351, baseType: !311, size: 64, offset: 320)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4240, file: !249, line: 352, baseType: !311, size: 64, offset: 384)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4240, file: !249, line: 353, baseType: !281, size: 64, offset: 448)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4240, file: !249, line: 355, baseType: !281, size: 64, offset: 512)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4240, file: !249, line: 356, baseType: !16, size: 32, offset: 576)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4240, file: !249, line: 357, baseType: !16, size: 32, offset: 608)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4240, file: !249, line: 358, baseType: !311, size: 64, offset: 640)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4240, file: !249, line: 359, baseType: !311, size: 64, offset: 704)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4240, file: !249, line: 360, baseType: !311, size: 64, offset: 768)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4240, file: !249, line: 361, baseType: !281, size: 64, offset: 832)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4240, file: !249, line: 362, baseType: !16, size: 32, offset: 896)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4207, file: !249, line: 438, baseType: !4259, size: 64, offset: 448)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!16, !1373, !4203, !4239}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4207, file: !249, line: 440, baseType: !4236, size: 64, offset: 512)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4207, file: !249, line: 441, baseType: !4264, size: 64, offset: 576)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{!16, !1373, !4267}
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !249, line: 411, size: 1408, elements: !4269)
!4269 = !{!4270, !4271}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4268, file: !249, line: 412, baseType: !98, size: 32)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4268, file: !249, line: 413, baseType: !4272, size: 1344, offset: 64)
!4272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4273, size: 1344, elements: !1058)
!4273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !249, line: 397, size: 448, elements: !4274)
!4274 = !{!4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4285}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4273, file: !249, line: 398, baseType: !98, size: 32)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4273, file: !249, line: 399, baseType: !98, size: 32, offset: 32)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4273, file: !249, line: 401, baseType: !98, size: 32, offset: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4273, file: !249, line: 402, baseType: !98, size: 32, offset: 96)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4273, file: !249, line: 403, baseType: !98, size: 32, offset: 128)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4273, file: !249, line: 404, baseType: !98, size: 32, offset: 160)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4273, file: !249, line: 405, baseType: !98, size: 32, offset: 192)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4273, file: !249, line: 406, baseType: !313, size: 64, offset: 256)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4273, file: !249, line: 407, baseType: !4284, size: 64, offset: 320)
!4284 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !19, line: 132, baseType: !311)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4273, file: !249, line: 408, baseType: !4284, size: 64, offset: 384)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4207, file: !249, line: 442, baseType: !4215, size: 64, offset: 640)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1374, file: !244, line: 1200, baseType: !4288, size: 64, offset: 576)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4290)
!4290 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !244, line: 54, flags: DIFlagFwdDecl)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1374, file: !244, line: 1201, baseType: !33, size: 64, offset: 640)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1374, file: !244, line: 1202, baseType: !33, size: 64, offset: 704)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1374, file: !244, line: 1203, baseType: !33, size: 64, offset: 768)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1374, file: !244, line: 1204, baseType: !1137, size: 64, offset: 832)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1374, file: !244, line: 1205, baseType: !348, size: 320, offset: 896)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1374, file: !244, line: 1206, baseType: !16, size: 32, offset: 1216)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1374, file: !244, line: 1207, baseType: !43, size: 32, offset: 1248)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1374, file: !244, line: 1209, baseType: !14, size: 64, offset: 1280)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1374, file: !244, line: 1211, baseType: !4300, size: 64, offset: 1344)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4303)
!4303 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !244, line: 1211, flags: DIFlagFwdDecl)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1374, file: !244, line: 1223, baseType: !4305, size: 64, offset: 1408)
!4305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1149, line: 34, size: 64, elements: !4306)
!4306 = !{!4307}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4305, file: !1149, line: 35, baseType: !1152, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1374, file: !244, line: 1224, baseType: !91, size: 128, offset: 1472)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1374, file: !244, line: 1225, baseType: !4310, size: 64, offset: 1600)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !244, line: 1225, flags: DIFlagFwdDecl)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1374, file: !244, line: 1226, baseType: !4313, size: 64, offset: 1664)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !244, line: 1226, flags: DIFlagFwdDecl)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1374, file: !244, line: 1227, baseType: !4316, size: 64, offset: 1728)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !244, line: 50, flags: DIFlagFwdDecl)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1374, file: !244, line: 1228, baseType: !4319, size: 64, offset: 1792)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !244, line: 1228, flags: DIFlagFwdDecl)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1374, file: !244, line: 1229, baseType: !494, size: 128, offset: 1856)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1374, file: !244, line: 1230, baseType: !98, size: 32, offset: 1984)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1374, file: !244, line: 1231, baseType: !4324, size: 2496, offset: 2048)
!4324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !249, line: 521, size: 2496, elements: !4325)
!4325 = !{!4326, !4327, !4328, !4330, !4362}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4324, file: !249, line: 522, baseType: !98, size: 32)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4324, file: !249, line: 523, baseType: !348, size: 320, offset: 64)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4324, file: !249, line: 524, baseType: !4329, size: 192, offset: 384)
!4329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1172, size: 192, elements: !1058)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4324, file: !249, line: 525, baseType: !4331, size: 1728, offset: 576)
!4331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4332, size: 1728, elements: !1058)
!4332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !249, line: 222, size: 576, elements: !4333)
!4333 = !{!4334, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4332, file: !249, line: 223, baseType: !4335, size: 64)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !249, line: 445, size: 256, elements: !4337)
!4337 = !{!4338, !4339, !4352, !4353}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4336, file: !249, line: 446, baseType: !16, size: 32)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4336, file: !249, line: 447, baseType: !4340, size: 64, offset: 64)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4342)
!4342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !249, line: 312, size: 512, elements: !4343)
!4343 = !{!4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4342, file: !249, line: 313, baseType: !4061, size: 64)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4342, file: !249, line: 314, baseType: !4061, size: 64, offset: 64)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4342, file: !249, line: 315, baseType: !4061, size: 64, offset: 128)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4342, file: !249, line: 316, baseType: !4061, size: 64, offset: 192)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4342, file: !249, line: 317, baseType: !4170, size: 64, offset: 256)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4342, file: !249, line: 318, baseType: !4170, size: 64, offset: 320)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4342, file: !249, line: 319, baseType: !4170, size: 64, offset: 384)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4342, file: !249, line: 320, baseType: !4200, size: 64, offset: 448)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4336, file: !249, line: 448, baseType: !1406, size: 64, offset: 128)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4336, file: !249, line: 449, baseType: !4335, size: 64, offset: 192)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4332, file: !249, line: 224, baseType: !16, size: 32, offset: 64)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4332, file: !249, line: 226, baseType: !91, size: 128, offset: 128)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4332, file: !249, line: 227, baseType: !33, size: 64, offset: 256)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4332, file: !249, line: 228, baseType: !98, size: 32, offset: 320)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4332, file: !249, line: 229, baseType: !98, size: 32, offset: 352)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4332, file: !249, line: 230, baseType: !4138, size: 64, offset: 384)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4332, file: !249, line: 231, baseType: !4138, size: 64, offset: 448)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4332, file: !249, line: 232, baseType: !14, size: 64, offset: 512)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4324, file: !249, line: 526, baseType: !4363, size: 192, offset: 2304)
!4363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4340, size: 192, elements: !1058)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1374, file: !244, line: 1233, baseType: !4365, size: 2368, offset: 4544)
!4365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !244, line: 1184, size: 2368, elements: !4366)
!4366 = !{!4367, !4368, !4369}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4365, file: !244, line: 1185, baseType: !20, size: 16)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4365, file: !244, line: 1186, baseType: !20, size: 16, offset: 16)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4365, file: !244, line: 1187, baseType: !4370, size: 2304, offset: 64)
!4370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4371, size: 2304, elements: !1058)
!4371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4372, line: 12, size: 768, elements: !4373)
!4372 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4373 = !{!4374, !4382, !4383, !4384, !4385}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4371, file: !4372, line: 13, baseType: !4375, size: 384)
!4375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4376, line: 17, size: 384, elements: !4377)
!4376 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4377 = !{!4378, !4379, !4380, !4381}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4375, file: !4376, line: 18, baseType: !16, size: 32)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4375, file: !4376, line: 19, baseType: !16, size: 32, offset: 32)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4375, file: !4376, line: 20, baseType: !48, size: 192, offset: 64)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4375, file: !4376, line: 22, baseType: !412, size: 128, align: 64, offset: 256)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4371, file: !4372, line: 14, baseType: !2314, size: 64, offset: 384)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4371, file: !4372, line: 15, baseType: !3520, size: 64, offset: 448)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4371, file: !4372, line: 16, baseType: !48, size: 192, offset: 512)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4371, file: !4372, line: 17, baseType: !43, size: 32, offset: 704)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1374, file: !244, line: 1240, baseType: !14, size: 64, offset: 6912)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1374, file: !244, line: 1243, baseType: !378, size: 32, offset: 6976)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1374, file: !244, line: 1245, baseType: !369, size: 64, offset: 7040)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1374, file: !244, line: 1246, baseType: !369, size: 64, offset: 7104)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1374, file: !244, line: 1248, baseType: !379, size: 32, offset: 7168)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1374, file: !244, line: 1249, baseType: !4392, size: 64, offset: 7232)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !244, line: 634, flags: DIFlagFwdDecl)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1374, file: !244, line: 1252, baseType: !4395, size: 256, offset: 7296)
!4395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 256, elements: !4396)
!4396 = !{!4397}
!4397 = !DISubrange(count: 32)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1374, file: !244, line: 1253, baseType: !4399, size: 128, offset: 7552)
!4399 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4400, line: 21, baseType: !4401)
!4400 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4400, line: 19, size: 128, elements: !4402)
!4402 = !{!4403}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4401, file: !4400, line: 20, baseType: !4404, size: 128)
!4404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 128, elements: !4405)
!4405 = !{!4406}
!4406 = !DISubrange(count: 16)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1374, file: !244, line: 1255, baseType: !98, size: 32, offset: 7680)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1374, file: !244, line: 1261, baseType: !1026, size: 256, offset: 7744)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1374, file: !244, line: 1267, baseType: !10, size: 64, offset: 8000)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1374, file: !244, line: 1269, baseType: !4411, size: 64, offset: 8064)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4413)
!4413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1139, line: 128, size: 1024, align: 512, elements: !4414)
!4414 = !{!4415, !4419, !4420, !4427, !4433, !4437, !4441, !4445, !4446, !4450, !4454, !4459, !4463}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4413, file: !1139, line: 129, baseType: !4416, size: 64)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DISubroutineType(types: !4418)
!4418 = !{!16, !1137, !98}
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4413, file: !1139, line: 130, baseType: !4416, size: 64, offset: 64)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4413, file: !1139, line: 131, baseType: !4421, size: 64, offset: 128)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DISubroutineType(types: !4423)
!4423 = !{!16, !4424, !4426}
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1138)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4413, file: !1139, line: 132, baseType: !4428, size: 64, offset: 192)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!16, !4424, !98, !10, !4431}
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1157)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4413, file: !1139, line: 134, baseType: !4434, size: 64, offset: 256)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{!16, !4424}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4413, file: !1139, line: 135, baseType: !4438, size: 64, offset: 320)
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{!16, !1137}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4413, file: !1139, line: 136, baseType: !4442, size: 64, offset: 384)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{null, !1137}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4413, file: !1139, line: 137, baseType: !4442, size: 64, offset: 448)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4413, file: !1139, line: 138, baseType: !4447, size: 64, offset: 512)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{null, !1137, !1172}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4413, file: !1139, line: 139, baseType: !4451, size: 64, offset: 576)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!433, !1137, !433, !16}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4413, file: !1139, line: 140, baseType: !4455, size: 64, offset: 640)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = !DISubroutineType(types: !4457)
!4457 = !{!1132, !4458}
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4413, file: !1139, line: 141, baseType: !4460, size: 64, offset: 704)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DISubroutineType(types: !4462)
!4462 = !{!16, !1293, !422}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4413, file: !1139, line: 142, baseType: !4464, size: 64, offset: 768)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{!1137, !1137, !4467}
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1173)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1374, file: !244, line: 1271, baseType: !4470, size: 448, offset: 8128)
!4470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4153, line: 63, size: 448, elements: !4471)
!4471 = !{!4472, !4477, !4478, !4479, !4480, !4481, !4482}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4470, file: !4153, line: 64, baseType: !4473, size: 64)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!33, !4476, !4151}
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4470, file: !4153, line: 66, baseType: !4473, size: 64, offset: 64)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4470, file: !4153, line: 69, baseType: !667, size: 64, offset: 128)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4470, file: !4153, line: 70, baseType: !16, size: 32, offset: 192)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4470, file: !4153, line: 71, baseType: !98, size: 32, offset: 224)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4470, file: !4153, line: 74, baseType: !91, size: 128, offset: 256)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4470, file: !4153, line: 85, baseType: !4483, size: 64, offset: 384)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1374, file: !244, line: 1274, baseType: !275, size: 64, offset: 8576)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1374, file: !244, line: 1280, baseType: !275, size: 64, offset: 8640)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1374, file: !244, line: 1283, baseType: !16, size: 32, offset: 8704)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1374, file: !244, line: 1286, baseType: !2010, size: 32, offset: 8736)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1374, file: !244, line: 1289, baseType: !2525, size: 64, offset: 8768)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1374, file: !244, line: 1290, baseType: !643, size: 64, offset: 8832)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1374, file: !244, line: 1297, baseType: !514, size: 64, offset: 8896)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1374, file: !244, line: 1304, baseType: !4492, size: 64, offset: 8960)
!4492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4493, line: 49, size: 64, elements: !4494)
!4493 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4494 = !{!4495}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4492, file: !4493, line: 50, baseType: !4496, size: 64)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4493, line: 41, size: 512, align: 512, elements: !4498)
!4498 = !{!4499, !4500, !4505}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4497, file: !4493, line: 43, baseType: !53, size: 32)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4497, file: !4493, line: 45, baseType: !4501, size: 192, offset: 64)
!4501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4493, line: 29, size: 192, elements: !4502)
!4502 = !{!4503, !4504}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4501, file: !4493, line: 30, baseType: !91, size: 128)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4501, file: !4493, line: 32, baseType: !667, size: 64, offset: 128)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4497, file: !4493, line: 46, baseType: !667, size: 64, offset: 256)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1374, file: !244, line: 1305, baseType: !4492, size: 64, offset: 9024)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1374, file: !244, line: 1306, baseType: !412, size: 128, align: 64, offset: 9088)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1374, file: !244, line: 1307, baseType: !563, size: 256, offset: 9216)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1374, file: !244, line: 1309, baseType: !1026, size: 256, offset: 9472)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1374, file: !244, line: 1314, baseType: !16, size: 32, offset: 9728)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1374, file: !244, line: 1317, baseType: !53, size: 32, align: 512, offset: 10240)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1374, file: !244, line: 1318, baseType: !91, size: 128, offset: 10304)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1374, file: !244, line: 1320, baseType: !53, size: 32, offset: 10432)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1374, file: !244, line: 1321, baseType: !91, size: 128, offset: 10496)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1173, file: !244, line: 656, baseType: !1523, size: 64, offset: 512)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1173, file: !244, line: 659, baseType: !14, size: 64, offset: 576)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1173, file: !244, line: 663, baseType: !33, size: 64, offset: 640)
!4518 = !DIDerivedType(tag: DW_TAG_member, scope: !1173, file: !244, line: 671, baseType: !4519, size: 32, offset: 704)
!4519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1173, file: !244, line: 671, size: 32, elements: !4520)
!4520 = !{!4521, !4522}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4519, file: !244, line: 672, baseType: !2573, size: 32)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4519, file: !244, line: 673, baseType: !98, size: 32)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1173, file: !244, line: 675, baseType: !1246, size: 32, offset: 736)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1173, file: !244, line: 676, baseType: !35, size: 64, offset: 768)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1173, file: !244, line: 677, baseType: !1282, size: 128, offset: 832)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1173, file: !244, line: 678, baseType: !1282, size: 128, offset: 960)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1173, file: !244, line: 679, baseType: !1282, size: 128, offset: 1088)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1173, file: !244, line: 680, baseType: !53, size: 32, offset: 1216)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1173, file: !244, line: 681, baseType: !20, size: 16, offset: 1248)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1173, file: !244, line: 682, baseType: !77, size: 8, offset: 1264)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1173, file: !244, line: 683, baseType: !77, size: 8, offset: 1272)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1173, file: !244, line: 684, baseType: !4284, size: 64, offset: 1280)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1173, file: !244, line: 691, baseType: !33, size: 64, offset: 1344)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1173, file: !244, line: 692, baseType: !348, size: 320, offset: 1408)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1173, file: !244, line: 694, baseType: !33, size: 64, offset: 1728)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1173, file: !244, line: 695, baseType: !33, size: 64, offset: 1792)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1173, file: !244, line: 697, baseType: !494, size: 128, offset: 1856)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1173, file: !244, line: 698, baseType: !91, size: 128, offset: 1984)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1173, file: !244, line: 707, baseType: !91, size: 128, offset: 2112)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1173, file: !244, line: 708, baseType: !91, size: 128, offset: 2240)
!4541 = !DIDerivedType(tag: DW_TAG_member, scope: !1173, file: !244, line: 709, baseType: !4542, size: 128, offset: 2368)
!4542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1173, file: !244, line: 709, size: 128, elements: !4543)
!4543 = !{!4544, !4545}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4542, file: !244, line: 710, baseType: !643, size: 64)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4542, file: !244, line: 711, baseType: !412, size: 128, align: 64)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1173, file: !244, line: 713, baseType: !277, size: 64, offset: 2496)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1173, file: !244, line: 714, baseType: !277, size: 64, offset: 2560)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1173, file: !244, line: 715, baseType: !43, size: 32, offset: 2624)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1173, file: !244, line: 716, baseType: !43, size: 32, offset: 2656)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1173, file: !244, line: 717, baseType: !43, size: 32, offset: 2688)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1173, file: !244, line: 719, baseType: !43, size: 32, offset: 2720)
!4552 = !DIDerivedType(tag: DW_TAG_member, scope: !1173, file: !244, line: 721, baseType: !4553, size: 64, offset: 2752)
!4553 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1173, file: !244, line: 721, size: 64, elements: !4554)
!4554 = !{!4555, !4681}
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4553, file: !244, line: 722, baseType: !4556, size: 64)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4557, size: 64)
!4557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4558)
!4558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !244, line: 1914, size: 2112, elements: !4559)
!4559 = !{!4560, !4561, !4565, !4569, !4573, !4574, !4575, !4581, !4594, !4598, !4602, !4603, !4607, !4608, !4612, !4617, !4618, !4622, !4626, !4632, !4633, !4637, !4638, !4644, !4648, !4649, !4654, !4658, !4662, !4666, !4670, !4671, !4677}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4558, file: !244, line: 1915, baseType: !1406, size: 64)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4558, file: !244, line: 1916, baseType: !4562, size: 64, offset: 64)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{!35, !1012, !35, !16}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4558, file: !244, line: 1917, baseType: !4566, size: 64, offset: 128)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!1324, !1012, !433, !29, !34}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4558, file: !244, line: 1918, baseType: !4570, size: 64, offset: 192)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!1324, !1012, !10, !29, !34}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4558, file: !244, line: 1919, baseType: !1944, size: 64, offset: 256)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4558, file: !244, line: 1920, baseType: !1944, size: 64, offset: 320)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4558, file: !244, line: 1921, baseType: !4576, size: 64, offset: 384)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!16, !1947, !4579, !98}
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !244, line: 53, flags: DIFlagFwdDecl)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4558, file: !244, line: 1923, baseType: !4582, size: 64, offset: 448)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!16, !1012, !4585}
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !244, line: 1858, size: 128, elements: !4587)
!4587 = !{!4588, !4593}
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4586, file: !244, line: 1859, baseType: !4589, size: 64)
!4589 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !244, line: 1855, baseType: !4590)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{!422, !4585, !10, !16, !35, !311, !98}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4586, file: !244, line: 1860, baseType: !35, size: 64, offset: 64)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4558, file: !244, line: 1924, baseType: !4595, size: 64, offset: 512)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{!2180, !1012, !2182}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4558, file: !244, line: 1925, baseType: !4599, size: 64, offset: 576)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DISubroutineType(types: !4601)
!4601 = !{!667, !1012, !98, !33}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4558, file: !244, line: 1926, baseType: !4599, size: 64, offset: 640)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4558, file: !244, line: 1927, baseType: !4604, size: 64, offset: 704)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{!16, !1012, !1653}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4558, file: !244, line: 1928, baseType: !33, size: 64, offset: 768)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4558, file: !244, line: 1929, baseType: !4609, size: 64, offset: 832)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!16, !1172, !1012}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4558, file: !244, line: 1930, baseType: !4613, size: 64, offset: 896)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{!16, !1012, !4616}
!4616 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !244, line: 1061, baseType: !14)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4558, file: !244, line: 1931, baseType: !4609, size: 64, offset: 960)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4558, file: !244, line: 1932, baseType: !4619, size: 64, offset: 1024)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!16, !1012, !35, !35, !16}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4558, file: !244, line: 1933, baseType: !4623, size: 64, offset: 1088)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = !DISubroutineType(types: !4625)
!4625 = !{!16, !16, !1012, !16}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4558, file: !244, line: 1934, baseType: !4627, size: 64, offset: 1152)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!16, !1012, !16, !4630}
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !244, line: 1063, flags: DIFlagFwdDecl)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4558, file: !244, line: 1935, baseType: !1009, size: 64, offset: 1216)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4558, file: !244, line: 1936, baseType: !4634, size: 64, offset: 1280)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!16, !16}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4558, file: !244, line: 1937, baseType: !4627, size: 64, offset: 1344)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4558, file: !244, line: 1938, baseType: !4639, size: 64, offset: 1408)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!1324, !4642, !1012, !34, !29, !98}
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !691, line: 59, flags: DIFlagFwdDecl)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4558, file: !244, line: 1939, baseType: !4645, size: 64, offset: 1472)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = !DISubroutineType(types: !4647)
!4647 = !{!1324, !1012, !34, !4642, !29, !98}
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4558, file: !244, line: 1940, baseType: !2000, size: 64, offset: 1536)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4558, file: !244, line: 1941, baseType: !4650, size: 64, offset: 1600)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = !DISubroutineType(types: !4652)
!4652 = !{!16, !1012, !16, !4653, !1921}
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4630, size: 64)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4558, file: !244, line: 1942, baseType: !4655, size: 64, offset: 1664)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = !DISubroutineType(types: !4657)
!4657 = !{!667, !1012, !16, !35, !35}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4558, file: !244, line: 1944, baseType: !4659, size: 64, offset: 1728)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{null, !2113, !1012}
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4558, file: !244, line: 1948, baseType: !4663, size: 64, offset: 1792)
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = !DISubroutineType(types: !4665)
!4665 = !{!1324, !1012, !35, !1012, !35, !29, !98}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4558, file: !244, line: 1950, baseType: !4667, size: 64, offset: 1856)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{!35, !1012, !35, !1012, !35, !35, !98}
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4558, file: !244, line: 1953, baseType: !4619, size: 64, offset: 1920)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4558, file: !244, line: 1954, baseType: !4672, size: 64, offset: 1984)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = !DISubroutineType(types: !4674)
!4674 = !{!16, !4675, !98}
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !244, line: 1911, flags: DIFlagFwdDecl)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4558, file: !244, line: 1955, baseType: !4678, size: 64, offset: 2048)
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = !DISubroutineType(types: !4680)
!4680 = !{!16, !4675, !4579, !98}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4553, file: !244, line: 723, baseType: !4042, size: 64)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1173, file: !244, line: 725, baseType: !4683, size: 64, offset: 2816)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !244, line: 725, flags: DIFlagFwdDecl)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1173, file: !244, line: 726, baseType: !1524, size: 1536, align: 64, offset: 2880)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1173, file: !244, line: 727, baseType: !91, size: 128, offset: 4416)
!4687 = !DIDerivedType(tag: DW_TAG_member, scope: !1173, file: !244, line: 728, baseType: !4688, size: 64, offset: 4544)
!4688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1173, file: !244, line: 728, size: 64, elements: !4689)
!4689 = !{!4690, !4691, !4694, !4695}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4688, file: !244, line: 729, baseType: !4642, size: 64)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4688, file: !244, line: 730, baseType: !4692, size: 64)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !244, line: 730, flags: DIFlagFwdDecl)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4688, file: !244, line: 731, baseType: !433, size: 64)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4688, file: !244, line: 732, baseType: !98, size: 32)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1173, file: !244, line: 735, baseType: !379, size: 32, offset: 4608)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1173, file: !244, line: 738, baseType: !379, size: 32, offset: 4640)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1173, file: !244, line: 739, baseType: !4392, size: 64, offset: 4672)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1173, file: !244, line: 750, baseType: !14, size: 64, offset: 4736)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1138, file: !1139, line: 91, baseType: !4701, size: 256, offset: 448)
!4701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 256, elements: !4396)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1138, file: !1139, line: 94, baseType: !4703, size: 64, offset: 704)
!4703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4704, line: 25, size: 64, elements: !4705)
!4704 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4705 = !{!4706}
!4706 = !DIDerivedType(tag: DW_TAG_member, scope: !4703, file: !4704, line: 26, baseType: !4707, size: 64)
!4707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4703, file: !4704, line: 26, size: 64, elements: !4708)
!4708 = !{!4709, !4710}
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4707, file: !4704, line: 28, baseType: !312, size: 64, align: 64)
!4710 = !DIDerivedType(tag: DW_TAG_member, scope: !4707, file: !4704, line: 30, baseType: !4711, size: 64)
!4711 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4707, file: !4704, line: 30, size: 64, elements: !4712)
!4712 = !{!4713, !4714}
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4711, file: !4704, line: 31, baseType: !53, size: 32)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4711, file: !4704, line: 32, baseType: !16, size: 32, offset: 32)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1138, file: !1139, line: 95, baseType: !4411, size: 64, offset: 768)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1138, file: !1139, line: 96, baseType: !1373, size: 64, offset: 832)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1138, file: !1139, line: 97, baseType: !33, size: 64, offset: 896)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1138, file: !1139, line: 98, baseType: !14, size: 64, offset: 960)
!4719 = !DIDerivedType(tag: DW_TAG_member, scope: !1138, file: !1139, line: 100, baseType: !4720, size: 128, offset: 1024)
!4720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1138, file: !1139, line: 100, size: 128, elements: !4721)
!4721 = !{!4722, !4723}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4720, file: !1139, line: 101, baseType: !91, size: 128)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4720, file: !1139, line: 102, baseType: !2191, size: 64)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1138, file: !1139, line: 104, baseType: !91, size: 128, offset: 1152)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1138, file: !1139, line: 105, baseType: !91, size: 128, offset: 1280)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1138, file: !1139, line: 113, baseType: !4727, size: 128, offset: 1408)
!4727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1138, file: !1139, line: 109, size: 128, elements: !4728)
!4728 = !{!4729, !4730, !4731}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4727, file: !1139, line: 110, baseType: !494, size: 128)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4727, file: !1139, line: 111, baseType: !1148, size: 128)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4727, file: !1139, line: 112, baseType: !412, size: 128, align: 64)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1133, file: !1134, line: 72, baseType: !1373, size: 64, offset: 64)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1133, file: !1134, line: 73, baseType: !16, size: 32, offset: 128)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1133, file: !1134, line: 74, baseType: !1211, size: 64, offset: 192)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1128, file: !1129, line: 10, baseType: !1137, size: 64, offset: 64)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1013, file: !244, line: 1015, baseType: !1172, size: 64, offset: 1344)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1013, file: !244, line: 1016, baseType: !4556, size: 64, offset: 1408)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1013, file: !244, line: 1018, baseType: !311, size: 64, offset: 1472)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1013, file: !244, line: 1020, baseType: !14, size: 64, offset: 1536)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1013, file: !244, line: 1023, baseType: !14, size: 64, offset: 1600)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1013, file: !244, line: 1027, baseType: !2741, size: 64, offset: 1664)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1013, file: !244, line: 1029, baseType: !1523, size: 64, offset: 1728)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1013, file: !244, line: 1030, baseType: !2010, size: 32, offset: 1792)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1013, file: !244, line: 1031, baseType: !2010, size: 32, offset: 1824)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !988, file: !136, line: 756, baseType: !33, size: 64, offset: 704)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !988, file: !136, line: 757, baseType: !33, size: 64, offset: 768)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !988, file: !136, line: 760, baseType: !33, size: 64, offset: 832)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !988, file: !136, line: 761, baseType: !33, size: 64, offset: 896)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !988, file: !136, line: 763, baseType: !33, size: 64, offset: 960)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !988, file: !136, line: 764, baseType: !4751, size: 64, offset: 1024)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1668, line: 299, baseType: !4753)
!4753 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1668, line: 299, size: 64, elements: !4754)
!4754 = !{!4755}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !4753, file: !1668, line: 299, baseType: !4756, size: 64)
!4756 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1673, line: 18, baseType: !33)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !988, file: !136, line: 773, baseType: !43, size: 32, offset: 1088)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !988, file: !136, line: 785, baseType: !43, size: 32, offset: 1120)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !988, file: !136, line: 795, baseType: !4760, size: 64, offset: 1152)
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !136, line: 726, size: 128, elements: !4762)
!4762 = !{!4763, !4764}
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4761, file: !136, line: 727, baseType: !311, size: 64)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !4761, file: !136, line: 728, baseType: !16, size: 32, offset: 64)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !988, file: !136, line: 801, baseType: !33, size: 64, offset: 1216)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !988, file: !136, line: 804, baseType: !275, size: 64, offset: 1280)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !988, file: !136, line: 806, baseType: !16, size: 32, offset: 1344)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !988, file: !136, line: 808, baseType: !53, size: 32, offset: 1376)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !988, file: !136, line: 823, baseType: !348, size: 320, offset: 1408)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !988, file: !136, line: 825, baseType: !91, size: 128, offset: 1728)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !988, file: !136, line: 845, baseType: !16, size: 32, offset: 1856)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !988, file: !136, line: 849, baseType: !33, size: 64, offset: 1920)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !988, file: !136, line: 850, baseType: !33, size: 64, offset: 1984)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !988, file: !136, line: 852, baseType: !33, size: 64, offset: 2048)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !988, file: !136, line: 853, baseType: !33, size: 64, offset: 2112)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !988, file: !136, line: 854, baseType: !277, size: 64, offset: 2176)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !988, file: !136, line: 855, baseType: !33, size: 64, offset: 2240)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !988, file: !136, line: 856, baseType: !33, size: 64, offset: 2304)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !988, file: !136, line: 857, baseType: !33, size: 64, offset: 2368)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !988, file: !136, line: 858, baseType: !33, size: 64, offset: 2432)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !988, file: !136, line: 865, baseType: !861, size: 32, offset: 2496)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !988, file: !136, line: 867, baseType: !53, size: 32, offset: 2528)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !988, file: !136, line: 869, baseType: !33, size: 64, offset: 2560)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !988, file: !136, line: 869, baseType: !33, size: 64, offset: 2624)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !988, file: !136, line: 869, baseType: !33, size: 64, offset: 2688)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !988, file: !136, line: 869, baseType: !33, size: 64, offset: 2752)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !988, file: !136, line: 870, baseType: !33, size: 64, offset: 2816)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !988, file: !136, line: 870, baseType: !33, size: 64, offset: 2880)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !988, file: !136, line: 870, baseType: !33, size: 64, offset: 2944)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !988, file: !136, line: 871, baseType: !33, size: 64, offset: 3008)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !988, file: !136, line: 871, baseType: !33, size: 64, offset: 3072)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !988, file: !136, line: 871, baseType: !33, size: 64, offset: 3136)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !988, file: !136, line: 871, baseType: !33, size: 64, offset: 3200)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !988, file: !136, line: 873, baseType: !4795, size: 3328, offset: 3264)
!4795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 3328, elements: !4796)
!4796 = !{!4797}
!4797 = !DISubrange(count: 52)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !988, file: !136, line: 875, baseType: !4799, size: 1280, offset: 6592)
!4799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 1280, elements: !443)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !988, file: !136, line: 877, baseType: !4801, size: 64, offset: 7872)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !136, line: 877, flags: DIFlagFwdDecl)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !988, file: !136, line: 880, baseType: !4804, size: 1088, offset: 7936)
!4804 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !4805, line: 72, baseType: !4806)
!4805 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!4806 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4805, line: 23, size: 1088, elements: !4807)
!4807 = !{!4808, !4809, !4810, !4811, !4812, !4815, !4816, !4817, !4818, !4843, !4844, !4845}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !4806, file: !4805, line: 28, baseType: !311, size: 64)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !4806, file: !4805, line: 38, baseType: !277, size: 64, offset: 64)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !4806, file: !4805, line: 40, baseType: !33, size: 64, offset: 128)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !4806, file: !4805, line: 43, baseType: !348, size: 320, offset: 192)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !4806, file: !4805, line: 44, baseType: !4813, size: 64, offset: 512)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !4805, line: 44, flags: DIFlagFwdDecl)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4806, file: !4805, line: 48, baseType: !33, size: 64, offset: 576)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4806, file: !4805, line: 59, baseType: !1026, size: 256, offset: 640)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !4806, file: !4805, line: 60, baseType: !14, size: 64, offset: 896)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !4806, file: !4805, line: 61, baseType: !4819, size: 64, offset: 960)
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4821)
!4821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !4822, line: 13, size: 1216, elements: !4823)
!4822 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!4823 = !{!4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842}
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4821, file: !4822, line: 14, baseType: !14, size: 64)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4821, file: !4822, line: 15, baseType: !33, size: 64, offset: 64)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !4821, file: !4822, line: 17, baseType: !33, size: 64, offset: 128)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !4821, file: !4822, line: 17, baseType: !33, size: 64, offset: 192)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !4821, file: !4822, line: 18, baseType: !33, size: 64, offset: 256)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !4821, file: !4822, line: 18, baseType: !33, size: 64, offset: 320)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !4821, file: !4822, line: 19, baseType: !2049, size: 64, offset: 384)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !4821, file: !4822, line: 21, baseType: !667, size: 64, offset: 448)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !4821, file: !4822, line: 23, baseType: !667, size: 64, offset: 512)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !4821, file: !4822, line: 24, baseType: !667, size: 64, offset: 576)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !4821, file: !4822, line: 25, baseType: !667, size: 64, offset: 640)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !4821, file: !4822, line: 26, baseType: !667, size: 64, offset: 704)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !4821, file: !4822, line: 27, baseType: !667, size: 64, offset: 768)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !4821, file: !4822, line: 28, baseType: !667, size: 64, offset: 832)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !4821, file: !4822, line: 29, baseType: !667, size: 64, offset: 896)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !4821, file: !4822, line: 30, baseType: !667, size: 64, offset: 960)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !4821, file: !4822, line: 31, baseType: !667, size: 64, offset: 1024)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !4821, file: !4822, line: 32, baseType: !667, size: 64, offset: 1088)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !4821, file: !4822, line: 33, baseType: !667, size: 64, offset: 1152)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !4806, file: !4805, line: 63, baseType: !43, size: 32, offset: 1024)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !4806, file: !4805, line: 69, baseType: !87, size: 16, offset: 1056)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !4806, file: !4805, line: 70, baseType: !2369, size: 16, offset: 1072)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !988, file: !136, line: 882, baseType: !33, size: 64, offset: 9024)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !988, file: !136, line: 885, baseType: !53, size: 32, offset: 9088)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !988, file: !136, line: 886, baseType: !4849, size: 64, offset: 9152)
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4850, size: 64)
!4850 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !136, line: 732, flags: DIFlagFwdDecl)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !988, file: !136, line: 901, baseType: !514, size: 64, offset: 9216)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !988, file: !136, line: 904, baseType: !1012, size: 64, offset: 9280)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !988, file: !136, line: 906, baseType: !4854, size: 64, offset: 9344)
!4854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4855, size: 64)
!4855 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !136, line: 906, flags: DIFlagFwdDecl)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !988, file: !136, line: 930, baseType: !43, size: 32, offset: 9408)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !988, file: !136, line: 933, baseType: !43, size: 32, offset: 9440)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !988, file: !136, line: 935, baseType: !4859, size: 64, offset: 9472)
!4859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !261, line: 103, size: 64, elements: !4860)
!4860 = !{!4861}
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !4859, file: !261, line: 104, baseType: !4862, size: 64)
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !261, line: 101, flags: DIFlagFwdDecl)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !988, file: !136, line: 940, baseType: !275, size: 64, offset: 9536)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !988, file: !136, line: 942, baseType: !563, size: 256, offset: 9600)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !985, file: !136, line: 986, baseType: !4867, offset: 10240)
!4867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, elements: !679)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !690, file: !691, line: 882, baseType: !984, size: 64, offset: 9792)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !690, file: !691, line: 884, baseType: !16, size: 32, offset: 9856)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !690, file: !691, line: 885, baseType: !16, size: 32, offset: 9888)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !690, file: !691, line: 886, baseType: !16, size: 32, offset: 9920)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !690, file: !691, line: 888, baseType: !16, size: 32, offset: 9952)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !690, file: !691, line: 890, baseType: !33, size: 64, offset: 9984)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !690, file: !691, line: 893, baseType: !98, size: 32, offset: 10048)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !690, file: !691, line: 896, baseType: !98, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !690, file: !691, line: 897, baseType: !98, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !690, file: !691, line: 898, baseType: !98, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !690, file: !691, line: 899, baseType: !98, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !690, file: !691, line: 919, baseType: !98, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !690, file: !691, line: 922, baseType: !98, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !690, file: !691, line: 923, baseType: !98, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !690, file: !691, line: 925, baseType: !98, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !690, file: !691, line: 939, baseType: !98, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !690, file: !691, line: 941, baseType: !98, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !690, file: !691, line: 944, baseType: !98, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !690, file: !691, line: 956, baseType: !98, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !690, file: !691, line: 962, baseType: !98, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !690, file: !691, line: 966, baseType: !98, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !690, file: !691, line: 969, baseType: !33, size: 64, offset: 10176)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !690, file: !691, line: 971, baseType: !4891, size: 448, offset: 10240)
!4891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !255, line: 25, size: 448, elements: !4892)
!4892 = !{!4893, !4894, !4899}
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !4891, file: !255, line: 26, baseType: !33, size: 64)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4891, file: !255, line: 27, baseType: !4895, size: 64, offset: 64)
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4896 = !DISubroutineType(types: !4897)
!4897 = !{!667, !4898}
!4898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4899 = !DIDerivedType(tag: DW_TAG_member, scope: !4891, file: !255, line: 28, baseType: !4900, size: 320, offset: 128)
!4900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4891, file: !255, line: 28, size: 320, elements: !4901)
!4901 = !{!4902, !4912, !4937}
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !4900, file: !255, line: 37, baseType: !4903, size: 320)
!4903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4900, file: !255, line: 30, size: 320, elements: !4904)
!4904 = !{!4905, !4907, !4908, !4909, !4910, !4911}
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !4903, file: !255, line: 31, baseType: !4906, size: 64)
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4903, file: !255, line: 32, baseType: !378, size: 32, offset: 64)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4903, file: !255, line: 33, baseType: !378, size: 32, offset: 96)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !4903, file: !255, line: 34, baseType: !378, size: 32, offset: 128)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4903, file: !255, line: 35, baseType: !311, size: 64, offset: 192)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !4903, file: !255, line: 36, baseType: !4906, size: 64, offset: 256)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !4900, file: !255, line: 47, baseType: !4913, size: 192)
!4913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4900, file: !255, line: 39, size: 192, elements: !4914)
!4914 = !{!4915, !4916, !4917, !4936}
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4913, file: !255, line: 40, baseType: !853, size: 32)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4913, file: !255, line: 41, baseType: !254, size: 32, offset: 32)
!4917 = !DIDerivedType(tag: DW_TAG_member, scope: !4913, file: !255, line: 42, baseType: !4918, size: 64, offset: 64)
!4918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4913, file: !255, line: 42, size: 64, elements: !4919)
!4919 = !{!4920, !4928}
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !4918, file: !255, line: 43, baseType: !4921, size: 64)
!4921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4922, size: 64)
!4922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !4923, line: 7, size: 128, elements: !4924)
!4923 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!4924 = !{!4925, !4927}
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4922, file: !4923, line: 8, baseType: !4926, size: 64)
!4926 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !31, line: 93, baseType: !37)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4922, file: !4923, line: 9, baseType: !37, size: 64, offset: 64)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !4918, file: !255, line: 44, baseType: !4929, size: 64)
!4929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4930, size: 64)
!4930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !4931, line: 7, size: 64, elements: !4932)
!4931 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!4932 = !{!4933, !4935}
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4930, file: !4931, line: 8, baseType: !4934, size: 32)
!4934 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !4931, line: 5, baseType: !333)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4930, file: !4931, line: 9, baseType: !333, size: 32, offset: 32)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4913, file: !255, line: 46, baseType: !311, size: 64, offset: 128)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4900, file: !255, line: 55, baseType: !4938, size: 256)
!4938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4900, file: !255, line: 49, size: 256, elements: !4939)
!4939 = !{!4940, !4948, !4949, !4950, !4951}
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !4938, file: !255, line: 50, baseType: !4941, size: 64)
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 64)
!4942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !4943, line: 36, size: 64, elements: !4944)
!4943 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!4944 = !{!4945, !4946, !4947}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !4942, file: !4943, line: 37, baseType: !16, size: 32)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4942, file: !4943, line: 38, baseType: !383, size: 16, offset: 32)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !4942, file: !4943, line: 39, baseType: !383, size: 16, offset: 48)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !4938, file: !255, line: 51, baseType: !16, size: 32, offset: 64)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !4938, file: !255, line: 52, baseType: !16, size: 32, offset: 96)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4938, file: !255, line: 53, baseType: !33, size: 64, offset: 128)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4938, file: !255, line: 54, baseType: !33, size: 64, offset: 192)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !690, file: !691, line: 973, baseType: !4953, size: 32, offset: 10688)
!4953 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !19, line: 27, baseType: !4954)
!4954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !31, line: 28, baseType: !16)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !690, file: !691, line: 974, baseType: !4953, size: 32, offset: 10720)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !690, file: !691, line: 978, baseType: !33, size: 64, offset: 10752)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !690, file: !691, line: 987, baseType: !689, size: 64, offset: 10816)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !690, file: !691, line: 990, baseType: !689, size: 64, offset: 10880)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !690, file: !691, line: 995, baseType: !91, size: 128, offset: 10944)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !690, file: !691, line: 996, baseType: !91, size: 128, offset: 11072)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !690, file: !691, line: 997, baseType: !689, size: 64, offset: 11200)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !690, file: !691, line: 1005, baseType: !91, size: 128, offset: 11264)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !690, file: !691, line: 1006, baseType: !91, size: 128, offset: 11392)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !690, file: !691, line: 1009, baseType: !1062, size: 64, offset: 11520)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !690, file: !691, line: 1010, baseType: !4966, size: 512, offset: 11584)
!4966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 512, elements: !443)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !690, file: !691, line: 1011, baseType: !91, size: 128, offset: 12096)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !690, file: !691, line: 1012, baseType: !91, size: 128, offset: 12224)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !690, file: !691, line: 1014, baseType: !601, size: 64, offset: 12352)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !690, file: !691, line: 1017, baseType: !2362, size: 64, offset: 12416)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !690, file: !691, line: 1020, baseType: !2362, size: 64, offset: 12480)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !690, file: !691, line: 1023, baseType: !14, size: 64, offset: 12544)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !690, file: !691, line: 1025, baseType: !311, size: 64, offset: 12608)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !690, file: !691, line: 1026, baseType: !311, size: 64, offset: 12672)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !690, file: !691, line: 1031, baseType: !311, size: 64, offset: 12736)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !690, file: !691, line: 1032, baseType: !3817, size: 192, offset: 12800)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !690, file: !691, line: 1041, baseType: !33, size: 64, offset: 12992)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !690, file: !691, line: 1042, baseType: !33, size: 64, offset: 13056)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !690, file: !691, line: 1045, baseType: !311, size: 64, offset: 13120)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !690, file: !691, line: 1048, baseType: !311, size: 64, offset: 13184)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !690, file: !691, line: 1051, baseType: !33, size: 64, offset: 13248)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !690, file: !691, line: 1052, baseType: !33, size: 64, offset: 13312)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !690, file: !691, line: 1055, baseType: !4984, size: 640, offset: 13376)
!4984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !4985, line: 132, size: 640, elements: !4986)
!4985 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!4986 = !{!4987, !4993, !4994}
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !4984, file: !4985, line: 133, baseType: !4988, size: 576)
!4988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4989, size: 576, elements: !1058)
!4989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !4985, line: 117, size: 192, elements: !4990)
!4990 = !{!4991, !4992}
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !4989, file: !4985, line: 118, baseType: !311, size: 64)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !4989, file: !4985, line: 119, baseType: !867, size: 128, offset: 64)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !4984, file: !4985, line: 134, baseType: !98, size: 32, offset: 576)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !4984, file: !4985, line: 135, baseType: !98, size: 32, offset: 608)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !690, file: !691, line: 1058, baseType: !4996, size: 448, offset: 14016)
!4996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !4985, line: 144, size: 448, elements: !4997)
!4997 = !{!4998, !4999, !5000}
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4996, file: !4985, line: 145, baseType: !412, size: 128, align: 64)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4996, file: !4985, line: 146, baseType: !1026, size: 256, offset: 128)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !4996, file: !4985, line: 147, baseType: !98, size: 32, offset: 384)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !690, file: !691, line: 1064, baseType: !269, size: 64, offset: 14464)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !690, file: !691, line: 1067, baseType: !269, size: 64, offset: 14528)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !690, file: !691, line: 1070, baseType: !269, size: 64, offset: 14592)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !690, file: !691, line: 1074, baseType: !320, size: 64, offset: 14656)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !690, file: !691, line: 1084, baseType: !5006, size: 128, offset: 14720)
!5006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 128, elements: !4405)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !690, file: !691, line: 1086, baseType: !5008, size: 64, offset: 14848)
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5009 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !691, line: 55, flags: DIFlagFwdDecl)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !690, file: !691, line: 1089, baseType: !5011, size: 64, offset: 14912)
!5011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !5012, line: 12, size: 64, elements: !5013)
!5012 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!5013 = !{!5014}
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !5011, file: !5012, line: 13, baseType: !5015, size: 64)
!5015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5016, size: 64)
!5016 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !5012, line: 8, flags: DIFlagFwdDecl)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !690, file: !691, line: 1090, baseType: !5018, size: 128, offset: 14976)
!5018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !5019, line: 13, size: 128, elements: !5020)
!5019 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!5020 = !{!5021}
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !5018, file: !5019, line: 14, baseType: !91, size: 128)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !690, file: !691, line: 1097, baseType: !5023, size: 64, offset: 15104)
!5023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5024, size: 64)
!5024 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !691, line: 50, flags: DIFlagFwdDecl)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !690, file: !691, line: 1100, baseType: !5026, size: 64, offset: 15168)
!5026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5027, size: 64)
!5027 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !691, line: 1100, flags: DIFlagFwdDecl)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !690, file: !691, line: 1103, baseType: !5029, size: 64, offset: 15232)
!5029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5030, size: 64)
!5030 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !691, line: 53, flags: DIFlagFwdDecl)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !690, file: !691, line: 1107, baseType: !5032, size: 64, offset: 15296)
!5032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5033, size: 64)
!5033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !5034, line: 31, size: 576, elements: !5035)
!5034 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!5035 = !{!5036, !5037, !5040, !5043, !5046, !5047, !5050, !5053, !5054}
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5033, file: !5034, line: 32, baseType: !325, size: 32)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !5033, file: !5034, line: 33, baseType: !5038, size: 64, offset: 64)
!5038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5039, size: 64)
!5039 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !5034, line: 9, flags: DIFlagFwdDecl)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !5033, file: !5034, line: 34, baseType: !5041, size: 64, offset: 128)
!5041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5042, size: 64)
!5042 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !5034, line: 10, flags: DIFlagFwdDecl)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !5033, file: !5034, line: 35, baseType: !5044, size: 64, offset: 192)
!5044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5045, size: 64)
!5045 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !5034, line: 8, flags: DIFlagFwdDecl)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !5033, file: !5034, line: 36, baseType: !1079, size: 64, offset: 256)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !5033, file: !5034, line: 37, baseType: !5048, size: 64, offset: 320)
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !322, line: 34, flags: DIFlagFwdDecl)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !5033, file: !5034, line: 38, baseType: !5051, size: 64, offset: 384)
!5051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5052, size: 64)
!5052 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !5034, line: 38, flags: DIFlagFwdDecl)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !5033, file: !5034, line: 39, baseType: !5051, size: 64, offset: 448)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !5033, file: !5034, line: 40, baseType: !5055, size: 64, offset: 512)
!5055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5056, size: 64)
!5056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !5057, line: 771, size: 384, elements: !5058)
!5057 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!5058 = !{!5059, !5060, !5061, !5062}
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5056, file: !5057, line: 772, baseType: !547, size: 192)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !5056, file: !5057, line: 773, baseType: !514, size: 64, offset: 192)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !5056, file: !5057, line: 774, baseType: !652, size: 64, offset: 256)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !5056, file: !5057, line: 775, baseType: !3887, size: 64, offset: 320)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !690, file: !691, line: 1110, baseType: !5064, size: 64, offset: 15360)
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5065, size: 64)
!5065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !5066, line: 93, size: 8768, elements: !5067)
!5066 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!5067 = !{!5068, !5069, !5070, !5071, !5072, !5073, !5074, !5075, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5104, !5105, !5106, !5107, !5108, !5109, !5110, !5116, !5125, !5126, !5128, !5129, !5130, !5133, !5139, !5140, !5141, !5142, !5143, !5144, !5145, !5146, !5147, !5148, !5149, !5150, !5151, !5152, !5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5171, !5172, !5179, !5189, !5251, !5252, !5255, !5256, !5257, !5258, !5259, !5260}
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !5065, file: !5066, line: 94, baseType: !325, size: 32)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !5065, file: !5066, line: 95, baseType: !43, size: 32, offset: 32)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5065, file: !5066, line: 96, baseType: !16, size: 32, offset: 64)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !5065, file: !5066, line: 97, baseType: !16, size: 32, offset: 96)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !5065, file: !5066, line: 98, baseType: !91, size: 128, offset: 128)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !5065, file: !5066, line: 100, baseType: !48, size: 192, offset: 256)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !5065, file: !5066, line: 103, baseType: !689, size: 64, offset: 448)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !5065, file: !5066, line: 106, baseType: !5076, size: 192, offset: 512)
!5076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !5077, line: 32, size: 192, elements: !5078)
!5077 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!5078 = !{!5079, !5080}
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5076, file: !5077, line: 33, baseType: !91, size: 128)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5076, file: !5077, line: 34, baseType: !5081, size: 64, offset: 128)
!5081 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !5082, line: 25, baseType: !5083)
!5082 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!5083 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5082, line: 23, size: 64, elements: !5084)
!5084 = !{!5085}
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5083, file: !5082, line: 24, baseType: !935, size: 64)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !5065, file: !5066, line: 109, baseType: !643, size: 64, offset: 704)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !5065, file: !5066, line: 112, baseType: !16, size: 32, offset: 768)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !5065, file: !5066, line: 114, baseType: !16, size: 32, offset: 800)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !5065, file: !5066, line: 115, baseType: !689, size: 64, offset: 832)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !5065, file: !5066, line: 118, baseType: !16, size: 32, offset: 896)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5065, file: !5066, line: 119, baseType: !98, size: 32, offset: 928)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !5065, file: !5066, line: 121, baseType: !5093, size: 64, offset: 960)
!5093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5094, size: 64)
!5094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !5066, line: 80, size: 448, elements: !5095)
!5095 = !{!5096, !5097, !5103}
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5094, file: !5066, line: 81, baseType: !43, size: 32)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5094, file: !5066, line: 82, baseType: !5098, size: 128, offset: 64)
!5098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !5066, line: 75, size: 128, elements: !5099)
!5099 = !{!5100, !5101}
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5098, file: !5066, line: 76, baseType: !689, size: 64)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5098, file: !5066, line: 77, baseType: !5102, size: 64, offset: 64)
!5102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5098, size: 64)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5094, file: !5066, line: 83, baseType: !602, size: 256, offset: 192)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !5065, file: !5066, line: 132, baseType: !98, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !5065, file: !5066, line: 133, baseType: !98, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !5065, file: !5066, line: 138, baseType: !98, size: 32, offset: 1056)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !5065, file: !5066, line: 139, baseType: !91, size: 128, offset: 1088)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !5065, file: !5066, line: 142, baseType: !806, size: 512, offset: 1216)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !5065, file: !5066, line: 143, baseType: !814, size: 64, offset: 1728)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !5065, file: !5066, line: 150, baseType: !5111, size: 256, offset: 1792)
!5111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5112, size: 256, elements: !2352)
!5112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !5066, line: 38, size: 128, elements: !5113)
!5113 = !{!5114, !5115}
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5112, file: !5066, line: 39, baseType: !311, size: 64)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5112, file: !5066, line: 40, baseType: !311, size: 64, offset: 64)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !5065, file: !5066, line: 156, baseType: !5117, size: 192, offset: 2048)
!5117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !5066, line: 66, size: 192, elements: !5118)
!5118 = !{!5119}
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5117, file: !5066, line: 67, baseType: !5120, size: 192)
!5120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !5066, line: 47, size: 192, elements: !5121)
!5121 = !{!5122, !5123, !5124}
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5120, file: !5066, line: 48, baseType: !277, size: 64)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5120, file: !5066, line: 49, baseType: !277, size: 64, offset: 64)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5120, file: !5066, line: 50, baseType: !277, size: 64, offset: 128)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !5065, file: !5066, line: 160, baseType: !4984, size: 640, offset: 2240)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5065, file: !5066, line: 163, baseType: !5127, size: 256, offset: 2880)
!5127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1062, size: 256, elements: !443)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !5065, file: !5066, line: 169, baseType: !1062, size: 64, offset: 3136)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !5065, file: !5066, line: 172, baseType: !16, size: 32, offset: 3200)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5065, file: !5066, line: 174, baseType: !5131, size: 64, offset: 3264)
!5131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5132, size: 64)
!5132 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !5066, line: 174, flags: DIFlagFwdDecl)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !5065, file: !5066, line: 185, baseType: !5134, size: 64, offset: 3328)
!5134 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !857, line: 860, baseType: !5135)
!5135 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !857, line: 853, size: 64, elements: !5136)
!5136 = !{!5137, !5138}
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5135, file: !857, line: 858, baseType: !1143, size: 32)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5135, file: !857, line: 859, baseType: !53, size: 32, offset: 32)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5065, file: !5066, line: 186, baseType: !311, size: 64, offset: 3392)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5065, file: !5066, line: 186, baseType: !311, size: 64, offset: 3456)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !5065, file: !5066, line: 186, baseType: !311, size: 64, offset: 3520)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !5065, file: !5066, line: 186, baseType: !311, size: 64, offset: 3584)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !5065, file: !5066, line: 187, baseType: !311, size: 64, offset: 3648)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !5065, file: !5066, line: 188, baseType: !311, size: 64, offset: 3712)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !5065, file: !5066, line: 189, baseType: !3817, size: 192, offset: 3776)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5065, file: !5066, line: 190, baseType: !33, size: 64, offset: 3968)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5065, file: !5066, line: 190, baseType: !33, size: 64, offset: 4032)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !5065, file: !5066, line: 190, baseType: !33, size: 64, offset: 4096)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !5065, file: !5066, line: 190, baseType: !33, size: 64, offset: 4160)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !5065, file: !5066, line: 191, baseType: !33, size: 64, offset: 4224)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !5065, file: !5066, line: 191, baseType: !33, size: 64, offset: 4288)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !5065, file: !5066, line: 191, baseType: !33, size: 64, offset: 4352)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !5065, file: !5066, line: 191, baseType: !33, size: 64, offset: 4416)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !5065, file: !5066, line: 192, baseType: !33, size: 64, offset: 4480)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !5065, file: !5066, line: 192, baseType: !33, size: 64, offset: 4544)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !5065, file: !5066, line: 192, baseType: !33, size: 64, offset: 4608)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !5065, file: !5066, line: 192, baseType: !33, size: 64, offset: 4672)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !5065, file: !5066, line: 193, baseType: !33, size: 64, offset: 4736)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !5065, file: !5066, line: 193, baseType: !33, size: 64, offset: 4800)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !5065, file: !5066, line: 194, baseType: !5161, size: 448, offset: 4864)
!5161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5162, line: 12, size: 448, elements: !5163)
!5162 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5163 = !{!5164, !5165, !5166, !5167, !5168, !5169, !5170}
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5161, file: !5162, line: 15, baseType: !311, size: 64)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5161, file: !5162, line: 17, baseType: !311, size: 64, offset: 64)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5161, file: !5162, line: 19, baseType: !311, size: 64, offset: 128)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5161, file: !5162, line: 21, baseType: !311, size: 64, offset: 192)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5161, file: !5162, line: 29, baseType: !311, size: 64, offset: 256)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5161, file: !5162, line: 35, baseType: !311, size: 64, offset: 320)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5161, file: !5162, line: 44, baseType: !311, size: 64, offset: 384)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !5065, file: !5066, line: 202, baseType: !313, size: 64, offset: 5312)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !5065, file: !5066, line: 213, baseType: !5173, size: 2048, offset: 5376)
!5173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5174, size: 2048, elements: !4405)
!5174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5175, line: 43, size: 128, elements: !5176)
!5175 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5176 = !{!5177, !5178}
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5174, file: !5175, line: 44, baseType: !32, size: 64)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5174, file: !5175, line: 45, baseType: !32, size: 64, offset: 64)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !5065, file: !5066, line: 216, baseType: !5180, size: 448, offset: 7424)
!5180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !5066, line: 30, size: 448, elements: !5181)
!5181 = !{!5182, !5183, !5184, !5185, !5186, !5187, !5188}
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5180, file: !5066, line: 31, baseType: !16, size: 32)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5180, file: !5066, line: 32, baseType: !667, size: 64, offset: 64)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5180, file: !5066, line: 33, baseType: !33, size: 64, offset: 128)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5180, file: !5066, line: 34, baseType: !311, size: 64, offset: 192)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5180, file: !5066, line: 34, baseType: !311, size: 64, offset: 256)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5180, file: !5066, line: 35, baseType: !33, size: 64, offset: 320)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5180, file: !5066, line: 35, baseType: !33, size: 64, offset: 384)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5065, file: !5066, line: 219, baseType: !5190, size: 64, offset: 7872)
!5190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5191, size: 64)
!5191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5192, line: 41, size: 3456, elements: !5193)
!5192 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5193 = !{!5194, !5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250}
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5191, file: !5192, line: 47, baseType: !88, size: 16)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5191, file: !5192, line: 48, baseType: !379, size: 32, offset: 32)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5191, file: !5192, line: 54, baseType: !79, size: 8, offset: 64)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5191, file: !5192, line: 55, baseType: !79, size: 8, offset: 72)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5191, file: !5192, line: 73, baseType: !312, size: 64, align: 64, offset: 128)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5191, file: !5192, line: 74, baseType: !312, size: 64, offset: 192)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5191, file: !5192, line: 81, baseType: !312, size: 64, offset: 256)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5191, file: !5192, line: 82, baseType: !312, size: 64, offset: 320)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5191, file: !5192, line: 85, baseType: !312, size: 64, offset: 384)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5191, file: !5192, line: 86, baseType: !312, size: 64, offset: 448)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5191, file: !5192, line: 94, baseType: !312, size: 64, offset: 512)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5191, file: !5192, line: 102, baseType: !312, size: 64, offset: 576)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5191, file: !5192, line: 107, baseType: !4395, size: 256, offset: 640)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5191, file: !5192, line: 108, baseType: !79, size: 8, align: 64, offset: 896)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5191, file: !5192, line: 110, baseType: !5209, size: 24, offset: 904)
!5209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 24, elements: !1058)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5191, file: !5192, line: 111, baseType: !379, size: 32, align: 64, offset: 960)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5191, file: !5192, line: 113, baseType: !379, size: 32, offset: 992)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5191, file: !5192, line: 114, baseType: !379, size: 32, offset: 1024)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5191, file: !5192, line: 115, baseType: !379, size: 32, offset: 1056)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5191, file: !5192, line: 117, baseType: !379, size: 32, offset: 1088)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5191, file: !5192, line: 118, baseType: !312, size: 64, align: 64, offset: 1152)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5191, file: !5192, line: 120, baseType: !312, size: 64, offset: 1216)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5191, file: !5192, line: 121, baseType: !312, size: 64, offset: 1280)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5191, file: !5192, line: 122, baseType: !312, size: 64, offset: 1344)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5191, file: !5192, line: 123, baseType: !312, size: 64, offset: 1408)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5191, file: !5192, line: 133, baseType: !312, size: 64, offset: 1472)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5191, file: !5192, line: 137, baseType: !312, size: 64, offset: 1536)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5191, file: !5192, line: 142, baseType: !312, size: 64, offset: 1600)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5191, file: !5192, line: 143, baseType: !312, size: 64, offset: 1664)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5191, file: !5192, line: 146, baseType: !312, size: 64, offset: 1728)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5191, file: !5192, line: 147, baseType: !312, size: 64, offset: 1792)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5191, file: !5192, line: 148, baseType: !312, size: 64, offset: 1856)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5191, file: !5192, line: 149, baseType: !312, size: 64, offset: 1920)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5191, file: !5192, line: 154, baseType: !312, size: 64, offset: 1984)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5191, file: !5192, line: 155, baseType: !312, size: 64, offset: 2048)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5191, file: !5192, line: 156, baseType: !312, size: 64, offset: 2112)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5191, file: !5192, line: 158, baseType: !312, size: 64, offset: 2176)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5191, file: !5192, line: 159, baseType: !312, size: 64, offset: 2240)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5191, file: !5192, line: 162, baseType: !312, size: 64, offset: 2304)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5191, file: !5192, line: 163, baseType: !312, size: 64, offset: 2368)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5191, file: !5192, line: 164, baseType: !312, size: 64, offset: 2432)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5191, file: !5192, line: 167, baseType: !312, size: 64, offset: 2496)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5191, file: !5192, line: 168, baseType: !312, size: 64, offset: 2560)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5191, file: !5192, line: 171, baseType: !312, size: 64, offset: 2624)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5191, file: !5192, line: 172, baseType: !312, size: 64, offset: 2688)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5191, file: !5192, line: 175, baseType: !312, size: 64, offset: 2752)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5191, file: !5192, line: 178, baseType: !312, size: 64, offset: 2816)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5191, file: !5192, line: 179, baseType: !312, size: 64, offset: 2880)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5191, file: !5192, line: 182, baseType: !379, size: 32, offset: 2944)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5191, file: !5192, line: 186, baseType: !312, size: 64, align: 64, offset: 3008)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5191, file: !5192, line: 194, baseType: !312, size: 64, offset: 3072)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5191, file: !5192, line: 195, baseType: !312, size: 64, offset: 3136)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5191, file: !5192, line: 199, baseType: !312, size: 64, offset: 3200)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5191, file: !5192, line: 200, baseType: !312, size: 64, offset: 3264)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5191, file: !5192, line: 203, baseType: !312, size: 64, offset: 3328)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5191, file: !5192, line: 204, baseType: !312, size: 64, offset: 3392)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !5065, file: !5066, line: 222, baseType: !98, size: 32, offset: 7936)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !5065, file: !5066, line: 223, baseType: !5253, size: 64, offset: 8000)
!5253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5254, size: 64)
!5254 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !5066, line: 223, flags: DIFlagFwdDecl)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !5065, file: !5066, line: 230, baseType: !422, size: 8, offset: 8064)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !5065, file: !5066, line: 231, baseType: !383, size: 16, offset: 8080)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !5065, file: !5066, line: 232, baseType: !383, size: 16, offset: 8096)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !5065, file: !5066, line: 234, baseType: !984, size: 64, offset: 8128)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !5065, file: !5066, line: 237, baseType: !1026, size: 256, offset: 8192)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !5065, file: !5066, line: 243, baseType: !348, size: 320, offset: 8448)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !690, file: !691, line: 1111, baseType: !5262, size: 64, offset: 15424)
!5262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5263, size: 64)
!5263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !5066, line: 20, size: 16640, elements: !5264)
!5264 = !{!5265, !5266, !5267, !5268}
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5263, file: !5066, line: 21, baseType: !53, size: 32)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5263, file: !5066, line: 22, baseType: !325, size: 32, offset: 32)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5263, file: !5066, line: 23, baseType: !48, size: 192, offset: 64)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5263, file: !5066, line: 24, baseType: !5269, size: 16384, offset: 256)
!5269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5270, size: 16384, elements: !1462)
!5270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !5077, line: 51, size: 256, elements: !5271)
!5271 = !{!5272}
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5270, file: !5077, line: 52, baseType: !5273, size: 256)
!5273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !5077, line: 37, size: 256, elements: !5274)
!5274 = !{!5275, !5282, !5283, !5287}
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5273, file: !5077, line: 39, baseType: !5276, size: 64)
!5276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5277, line: 83, baseType: !5278)
!5277 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5279, size: 64)
!5279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5277, line: 82, baseType: !5280)
!5280 = !DISubroutineType(types: !5281)
!5281 = !{null, !16}
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5273, file: !5077, line: 40, baseType: !33, size: 64, offset: 64)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5273, file: !5077, line: 46, baseType: !5284, size: 64, offset: 128)
!5284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5277, line: 86, baseType: !5285)
!5285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5286, size: 64)
!5286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5277, line: 85, baseType: !2638)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5273, file: !5077, line: 48, baseType: !5081, size: 64, offset: 192)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !690, file: !691, line: 1112, baseType: !5081, size: 64, offset: 15488)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !690, file: !691, line: 1113, baseType: !5081, size: 64, offset: 15552)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !690, file: !691, line: 1115, baseType: !5081, size: 64, offset: 15616)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !690, file: !691, line: 1116, baseType: !5076, size: 192, offset: 15680)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !690, file: !691, line: 1117, baseType: !33, size: 64, offset: 15872)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !690, file: !691, line: 1118, baseType: !29, size: 64, offset: 15936)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !690, file: !691, line: 1119, baseType: !98, size: 32, offset: 16000)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !690, file: !691, line: 1121, baseType: !415, size: 64, offset: 16064)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !690, file: !691, line: 1125, baseType: !5297, size: 64, offset: 16128)
!5297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5298, size: 64)
!5298 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !691, line: 43, flags: DIFlagFwdDecl)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !690, file: !691, line: 1127, baseType: !284, size: 32, offset: 16192)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !690, file: !691, line: 1128, baseType: !98, size: 32, offset: 16224)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !690, file: !691, line: 1130, baseType: !5302, size: 128, offset: 16256)
!5302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5303, line: 37, size: 128, elements: !5304)
!5303 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5304 = !{!5305, !5306, !5307}
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5302, file: !5303, line: 38, baseType: !16, size: 32)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5302, file: !5303, line: 39, baseType: !43, size: 32, offset: 32)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5302, file: !5303, line: 40, baseType: !5308, size: 64, offset: 64)
!5308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5309, size: 64)
!5309 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5303, line: 24, flags: DIFlagFwdDecl)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !690, file: !691, line: 1131, baseType: !5311, size: 256, offset: 16384)
!5311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5312, line: 12, size: 256, elements: !5313)
!5312 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5313 = !{!5314, !5315, !5316, !5317}
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5311, file: !5312, line: 13, baseType: !433, size: 64)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5311, file: !5312, line: 14, baseType: !33, size: 64, offset: 64)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5311, file: !5312, line: 15, baseType: !33, size: 64, offset: 128)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5311, file: !5312, line: 16, baseType: !422, size: 8, offset: 192)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !690, file: !691, line: 1134, baseType: !311, size: 64, offset: 16640)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !690, file: !691, line: 1135, baseType: !311, size: 64, offset: 16704)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !690, file: !691, line: 1138, baseType: !53, size: 32, offset: 16768)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !690, file: !691, line: 1141, baseType: !359, size: 32, offset: 16800)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !690, file: !691, line: 1143, baseType: !5323, size: 64, offset: 16832)
!5323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !691, line: 735, size: 64, elements: !5324)
!5324 = !{!5325}
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5323, file: !691, line: 736, baseType: !5326, size: 64)
!5326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5323, size: 64)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !690, file: !691, line: 1147, baseType: !870, size: 128, offset: 16896)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !690, file: !691, line: 1149, baseType: !689, size: 64, offset: 17024)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !690, file: !691, line: 1151, baseType: !5330, size: 64, offset: 17088)
!5330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5331, size: 64)
!5331 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !691, line: 1151, flags: DIFlagFwdDecl)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !690, file: !691, line: 1188, baseType: !14, size: 64, offset: 17152)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !690, file: !691, line: 1191, baseType: !5334, size: 64, offset: 17216)
!5334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5335, size: 64)
!5335 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !691, line: 44, flags: DIFlagFwdDecl)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !690, file: !691, line: 1194, baseType: !5337, size: 64, offset: 17280)
!5337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5338, size: 64)
!5338 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !691, line: 45, flags: DIFlagFwdDecl)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !690, file: !691, line: 1197, baseType: !5340, size: 64, offset: 17344)
!5340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5341, size: 64)
!5341 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !691, line: 61, flags: DIFlagFwdDecl)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !690, file: !691, line: 1199, baseType: !5343, size: 64, offset: 17408)
!5343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5344, size: 64)
!5344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !5345, line: 99, size: 128, elements: !5346)
!5345 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!5346 = !{!5347, !5348, !5349}
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5344, file: !5345, line: 100, baseType: !275, size: 64)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5344, file: !5345, line: 101, baseType: !43, size: 32, offset: 64)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5344, file: !5345, line: 103, baseType: !20, size: 16, offset: 96)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !690, file: !691, line: 1202, baseType: !5351, size: 64, offset: 17472)
!5351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5352, size: 64)
!5352 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !691, line: 48, flags: DIFlagFwdDecl)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !690, file: !691, line: 1205, baseType: !33, size: 64, offset: 17536)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !690, file: !691, line: 1206, baseType: !5355, size: 64, offset: 17600)
!5355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5356, size: 64)
!5356 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !5077, line: 14, baseType: !5357)
!5357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !5077, line: 12, size: 384, elements: !5358)
!5358 = !{!5359}
!5359 = !DIDerivedType(tag: DW_TAG_member, scope: !5357, file: !5077, line: 13, baseType: !5360, size: 384)
!5360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5357, file: !5077, line: 13, size: 384, elements: !5361)
!5361 = !{!5362, !5363, !5364, !5365}
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5360, file: !5077, line: 13, baseType: !16, size: 32)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5360, file: !5077, line: 13, baseType: !16, size: 32, offset: 32)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5360, file: !5077, line: 13, baseType: !16, size: 32, offset: 64)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5360, file: !5077, line: 13, baseType: !5366, size: 256, offset: 128)
!5366 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5367, line: 37, size: 256, elements: !5368)
!5367 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5368 = !{!5369, !5374, !5387, !5393, !5402, !5429, !5434}
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5366, file: !5367, line: 42, baseType: !5370, size: 64)
!5370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5366, file: !5367, line: 39, size: 64, elements: !5371)
!5371 = !{!5372, !5373}
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5370, file: !5367, line: 40, baseType: !4954, size: 32)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5370, file: !5367, line: 41, baseType: !290, size: 32, offset: 32)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5366, file: !5367, line: 50, baseType: !5375, size: 192)
!5375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5366, file: !5367, line: 45, size: 192, elements: !5376)
!5376 = !{!5377, !5379, !5380, !5386}
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5375, file: !5367, line: 46, baseType: !5378, size: 32)
!5378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !31, line: 95, baseType: !16)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5375, file: !5367, line: 47, baseType: !16, size: 32, offset: 32)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5375, file: !5367, line: 48, baseType: !5381, size: 64, offset: 64)
!5381 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5367, line: 11, baseType: !5382)
!5382 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5367, line: 8, size: 64, elements: !5383)
!5383 = !{!5384, !5385}
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5382, file: !5367, line: 9, baseType: !16, size: 32)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5382, file: !5367, line: 10, baseType: !14, size: 64)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5375, file: !5367, line: 49, baseType: !16, size: 32, offset: 128)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5366, file: !5367, line: 57, baseType: !5388, size: 128)
!5388 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5366, file: !5367, line: 53, size: 128, elements: !5389)
!5389 = !{!5390, !5391, !5392}
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5388, file: !5367, line: 54, baseType: !4954, size: 32)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5388, file: !5367, line: 55, baseType: !290, size: 32, offset: 32)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5388, file: !5367, line: 56, baseType: !5381, size: 64, offset: 64)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5366, file: !5367, line: 66, baseType: !5394, size: 256)
!5394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5366, file: !5367, line: 60, size: 256, elements: !5395)
!5395 = !{!5396, !5397, !5398, !5399, !5401}
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5394, file: !5367, line: 61, baseType: !4954, size: 32)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5394, file: !5367, line: 62, baseType: !290, size: 32, offset: 32)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5394, file: !5367, line: 63, baseType: !16, size: 32, offset: 64)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5394, file: !5367, line: 64, baseType: !5400, size: 64, offset: 128)
!5400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !31, line: 94, baseType: !1326)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5394, file: !5367, line: 65, baseType: !5400, size: 64, offset: 192)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5366, file: !5367, line: 105, baseType: !5403, size: 256)
!5403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5366, file: !5367, line: 69, size: 256, elements: !5404)
!5404 = !{!5405, !5406}
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5403, file: !5367, line: 70, baseType: !14, size: 64)
!5406 = !DIDerivedType(tag: DW_TAG_member, scope: !5403, file: !5367, line: 79, baseType: !5407, size: 192, offset: 64)
!5407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5403, file: !5367, line: 79, size: 192, elements: !5408)
!5408 = !{!5409, !5410, !5411, !5418, !5423}
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5407, file: !5367, line: 81, baseType: !16, size: 32)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5407, file: !5367, line: 86, baseType: !383, size: 16)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5407, file: !5367, line: 92, baseType: !5412, size: 192)
!5412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5407, file: !5367, line: 88, size: 192, elements: !5413)
!5413 = !{!5414, !5416, !5417}
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5412, file: !5367, line: 89, baseType: !5415, size: 64)
!5415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 64, elements: !849)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5412, file: !5367, line: 90, baseType: !14, size: 64, offset: 64)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5412, file: !5367, line: 91, baseType: !14, size: 64, offset: 128)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5407, file: !5367, line: 97, baseType: !5419, size: 96)
!5419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5407, file: !5367, line: 94, size: 96, elements: !5420)
!5420 = !{!5421, !5422}
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5419, file: !5367, line: 95, baseType: !5415, size: 64)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5419, file: !5367, line: 96, baseType: !379, size: 32, offset: 64)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5407, file: !5367, line: 103, baseType: !5424, size: 128)
!5424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5407, file: !5367, line: 99, size: 128, elements: !5425)
!5425 = !{!5426, !5427, !5428}
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5424, file: !5367, line: 100, baseType: !33, size: 64)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5424, file: !5367, line: 101, baseType: !379, size: 32, offset: 64)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5424, file: !5367, line: 102, baseType: !379, size: 32, offset: 96)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5366, file: !5367, line: 111, baseType: !5430, size: 128)
!5430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5366, file: !5367, line: 108, size: 128, elements: !5431)
!5431 = !{!5432, !5433}
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5430, file: !5367, line: 109, baseType: !667, size: 64)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5430, file: !5367, line: 110, baseType: !16, size: 32, offset: 64)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5366, file: !5367, line: 118, baseType: !5435, size: 128)
!5435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5366, file: !5367, line: 114, size: 128, elements: !5436)
!5436 = !{!5437, !5438, !5439}
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5435, file: !5367, line: 115, baseType: !14, size: 64)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5435, file: !5367, line: 116, baseType: !16, size: 32, offset: 64)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5435, file: !5367, line: 117, baseType: !98, size: 32, offset: 96)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !690, file: !691, line: 1208, baseType: !5161, size: 448, offset: 17664)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !690, file: !691, line: 1215, baseType: !311, size: 64, offset: 18112)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !690, file: !691, line: 1217, baseType: !311, size: 64, offset: 18176)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !690, file: !691, line: 1219, baseType: !311, size: 64, offset: 18240)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !690, file: !691, line: 1223, baseType: !5445, size: 64, offset: 18304)
!5445 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5446, line: 99, baseType: !5447)
!5446 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5447 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5446, line: 99, size: 64, elements: !5448)
!5448 = !{!5449}
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5447, file: !5446, line: 99, baseType: !935, size: 64)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !690, file: !691, line: 1225, baseType: !1143, size: 32, offset: 18368)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !690, file: !691, line: 1226, baseType: !16, size: 32, offset: 18400)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !690, file: !691, line: 1227, baseType: !16, size: 32, offset: 18432)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !690, file: !691, line: 1231, baseType: !3887, size: 64, offset: 18496)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !690, file: !691, line: 1233, baseType: !91, size: 128, offset: 18560)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !690, file: !691, line: 1240, baseType: !5456, size: 64, offset: 18688)
!5456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5457, size: 64)
!5457 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !691, line: 62, flags: DIFlagFwdDecl)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !690, file: !691, line: 1242, baseType: !5459, size: 64, offset: 18752)
!5459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5460, size: 64)
!5460 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !691, line: 1242, flags: DIFlagFwdDecl)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !690, file: !691, line: 1244, baseType: !91, size: 128, offset: 18816)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !690, file: !691, line: 1245, baseType: !5463, size: 64, offset: 18944)
!5463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5464, size: 64)
!5464 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !691, line: 51, flags: DIFlagFwdDecl)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !690, file: !691, line: 1246, baseType: !1026, size: 256, offset: 19008)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !690, file: !691, line: 1247, baseType: !98, size: 32, offset: 19264)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !690, file: !691, line: 1250, baseType: !3137, size: 64, offset: 19328)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !690, file: !691, line: 1251, baseType: !1026, size: 256, offset: 19392)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !690, file: !691, line: 1252, baseType: !91, size: 128, offset: 19648)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !690, file: !691, line: 1259, baseType: !1746, size: 64, offset: 19776)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !690, file: !691, line: 1260, baseType: !383, size: 16, offset: 19840)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !690, file: !691, line: 1261, baseType: !383, size: 16, offset: 19856)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !690, file: !691, line: 1314, baseType: !5474, size: 64, offset: 19904)
!5474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5475, size: 64)
!5475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5476, line: 62, size: 256, align: 256, elements: !5477)
!5476 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5477 = !{!5478, !5479, !5480, !5481, !5482, !5483, !5484}
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5475, file: !5476, line: 75, baseType: !379, size: 32)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5475, file: !5476, line: 90, baseType: !379, size: 32, offset: 32)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5475, file: !5476, line: 112, baseType: !312, size: 64, offset: 64)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5475, file: !5476, line: 132, baseType: !379, size: 32, offset: 128)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5475, file: !5476, line: 140, baseType: !379, size: 32, offset: 160)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5475, file: !5476, line: 149, baseType: !379, size: 32, offset: 192)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5475, file: !5476, line: 154, baseType: !5485, offset: 224)
!5485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, elements: !679)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !690, file: !691, line: 1315, baseType: !378, size: 32, offset: 19968)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !690, file: !691, line: 1316, baseType: !378, size: 32, offset: 20000)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !690, file: !691, line: 1321, baseType: !33, size: 64, offset: 20032)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !690, file: !691, line: 1325, baseType: !16, size: 32, offset: 20096)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !690, file: !691, line: 1326, baseType: !16, size: 32, offset: 20128)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !690, file: !691, line: 1327, baseType: !16, size: 32, offset: 20160)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !690, file: !691, line: 1328, baseType: !16, size: 32, offset: 20192)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !690, file: !691, line: 1329, baseType: !412, size: 128, align: 64, offset: 20224)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !690, file: !691, line: 1332, baseType: !5495, size: 128, offset: 20352)
!5495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5496, line: 51, size: 128, elements: !5497)
!5496 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5497 = !{!5498, !5503, !5504}
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5495, file: !5496, line: 60, baseType: !5499, size: 64)
!5499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5500, line: 7, size: 64, elements: !5501)
!5500 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5501 = !{!5502}
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5499, file: !5500, line: 12, baseType: !932, size: 64)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5495, file: !5496, line: 63, baseType: !422, size: 8, offset: 64)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5495, file: !5496, line: 70, baseType: !422, size: 8, offset: 72)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !690, file: !691, line: 1335, baseType: !4642, size: 64, offset: 20480)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !690, file: !691, line: 1337, baseType: !5507, size: 128, offset: 20544)
!5507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5496, line: 39, size: 128, elements: !5508)
!5508 = !{!5509, !5510, !5511}
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5507, file: !5496, line: 40, baseType: !1543, size: 64)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5507, file: !5496, line: 42, baseType: !379, size: 32, offset: 64)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5507, file: !5496, line: 43, baseType: !379, size: 32, offset: 96)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !690, file: !691, line: 1340, baseType: !5513, size: 64, offset: 20672)
!5513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5514, size: 64)
!5514 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !691, line: 69, flags: DIFlagFwdDecl)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !690, file: !691, line: 1351, baseType: !16, size: 32, offset: 20736)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !690, file: !691, line: 1352, baseType: !16, size: 32, offset: 20768)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !690, file: !691, line: 1354, baseType: !33, size: 64, offset: 20800)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !690, file: !691, line: 1364, baseType: !311, size: 64, offset: 20864)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !690, file: !691, line: 1365, baseType: !311, size: 64, offset: 20928)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !690, file: !691, line: 1412, baseType: !33, size: 64, offset: 20992)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !690, file: !691, line: 1453, baseType: !5522, size: 64, offset: 21056)
!5522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5523, size: 64)
!5523 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !691, line: 1453, flags: DIFlagFwdDecl)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !690, file: !691, line: 1457, baseType: !5525, size: 64, offset: 21120)
!5525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5526, size: 64)
!5526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !261, line: 61, size: 576, elements: !5527)
!5527 = !{!5528, !5529, !5548, !5551, !5552, !5585, !5595}
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5526, file: !261, line: 62, baseType: !260, size: 32)
!5529 = !DIDerivedType(tag: DW_TAG_member, scope: !5526, file: !261, line: 64, baseType: !5530, size: 192, offset: 64)
!5530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5526, file: !261, line: 64, size: 192, elements: !5531)
!5531 = !{!5532, !5543}
!5532 = !DIDerivedType(tag: DW_TAG_member, scope: !5530, file: !261, line: 65, baseType: !5533, size: 192)
!5533 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5530, file: !261, line: 65, size: 192, elements: !5534)
!5534 = !{!5535, !5542}
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5533, file: !261, line: 66, baseType: !5536, size: 128)
!5536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5537, line: 50, size: 128, elements: !5538)
!5537 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5538 = !{!5539, !5540, !5541}
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5536, file: !5537, line: 52, baseType: !33, size: 64)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5536, file: !5537, line: 54, baseType: !98, size: 32, offset: 64)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5536, file: !5537, line: 55, baseType: !98, size: 32, offset: 96)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5533, file: !261, line: 67, baseType: !33, size: 64, offset: 128)
!5543 = !DIDerivedType(tag: DW_TAG_member, scope: !5530, file: !261, line: 70, baseType: !5544, size: 192)
!5544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5530, file: !261, line: 70, size: 192, elements: !5545)
!5545 = !{!5546, !5547}
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5544, file: !261, line: 71, baseType: !412, size: 128, align: 64)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5544, file: !261, line: 72, baseType: !33, size: 64, offset: 128)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5526, file: !261, line: 76, baseType: !5549, size: 64, offset: 256)
!5549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5550, size: 64)
!5550 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !261, line: 76, flags: DIFlagFwdDecl)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5526, file: !261, line: 77, baseType: !33, size: 64, offset: 320)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5526, file: !261, line: 79, baseType: !5553, size: 64, offset: 384)
!5553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5554, size: 64)
!5554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5537, line: 25, size: 256, elements: !5555)
!5555 = !{!5556, !5562, !5566}
!5556 = !DIDerivedType(tag: DW_TAG_member, scope: !5554, file: !5537, line: 26, baseType: !5557, size: 128)
!5557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5554, file: !5537, line: 26, size: 128, elements: !5558)
!5558 = !{!5559, !5561}
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5557, file: !5537, line: 27, baseType: !5560, size: 128)
!5560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 128, elements: !4405)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5557, file: !5537, line: 28, baseType: !5560, size: 128)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5554, file: !5537, line: 31, baseType: !5563, size: 64, offset: 128)
!5563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5564, size: 64)
!5564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5565)
!5565 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5537, line: 23, flags: DIFlagFwdDecl)
!5566 = !DIDerivedType(tag: DW_TAG_member, scope: !5554, file: !5537, line: 33, baseType: !5567, size: 64, offset: 192)
!5567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5554, file: !5537, line: 33, size: 64, elements: !5568)
!5568 = !{!5569, !5575, !5580}
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5567, file: !5537, line: 38, baseType: !5570, size: 64)
!5570 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5567, file: !5537, line: 34, size: 64, elements: !5571)
!5571 = !{!5572, !5573, !5574}
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5570, file: !5537, line: 35, baseType: !333, size: 32)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5570, file: !5537, line: 36, baseType: !77, size: 8, offset: 32)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5570, file: !5537, line: 37, baseType: !77, size: 8, offset: 40)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5567, file: !5537, line: 42, baseType: !5576, size: 16)
!5576 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5567, file: !5537, line: 39, size: 16, elements: !5577)
!5577 = !{!5578, !5579}
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5576, file: !5537, line: 40, baseType: !77, size: 8)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5576, file: !5537, line: 41, baseType: !77, size: 8, offset: 8)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5567, file: !5537, line: 46, baseType: !5581, size: 16)
!5581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5567, file: !5537, line: 43, size: 16, elements: !5582)
!5582 = !{!5583, !5584}
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5581, file: !5537, line: 44, baseType: !77, size: 8)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5581, file: !5537, line: 45, baseType: !77, size: 8, offset: 8)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5526, file: !261, line: 81, baseType: !5586, size: 64, offset: 448)
!5586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5587, size: 64)
!5587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !261, line: 85, size: 384, elements: !5588)
!5588 = !{!5589, !5590, !5591, !5592, !5593, !5594}
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5587, file: !261, line: 86, baseType: !5549, size: 64)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5587, file: !261, line: 87, baseType: !33, size: 64, offset: 64)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5587, file: !261, line: 88, baseType: !33, size: 64, offset: 128)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5587, file: !261, line: 89, baseType: !33, size: 64, offset: 192)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5587, file: !261, line: 90, baseType: !422, size: 8, offset: 256)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5587, file: !261, line: 92, baseType: !5586, size: 64, offset: 320)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5526, file: !261, line: 82, baseType: !98, size: 32, offset: 512)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !690, file: !691, line: 1463, baseType: !5597, offset: 21184)
!5597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !691, line: 739, elements: !1005)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !690, file: !691, line: 1470, baseType: !412, size: 128, align: 64, offset: 21184)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !690, file: !691, line: 1471, baseType: !325, size: 32, offset: 21312)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !690, file: !691, line: 1472, baseType: !16, size: 32, offset: 21344)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !690, file: !691, line: 1474, baseType: !689, size: 64, offset: 21376)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !690, file: !691, line: 1475, baseType: !2463, size: 320, offset: 21440)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !690, file: !691, line: 1478, baseType: !5604, size: 64, offset: 21760)
!5604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5605, size: 64)
!5605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !5606, line: 49, size: 512, elements: !5607)
!5606 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!5607 = !{!5608, !5609, !5610, !5611, !5612, !5613, !5614, !5615, !5617}
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5605, file: !5606, line: 50, baseType: !5604, size: 64)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5605, file: !5606, line: 51, baseType: !14, size: 64, offset: 64)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5605, file: !5606, line: 52, baseType: !33, size: 64, offset: 128)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5605, file: !5606, line: 53, baseType: !33, size: 64, offset: 192)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5605, file: !5606, line: 54, baseType: !1920, size: 64, offset: 256)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !5605, file: !5606, line: 56, baseType: !98, size: 32, offset: 320)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !5605, file: !5606, line: 58, baseType: !98, size: 32, offset: 352)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !5605, file: !5606, line: 59, baseType: !5616, size: 64, offset: 384)
!5616 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !19, line: 159, baseType: !311)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !5605, file: !5606, line: 60, baseType: !2049, size: 64, offset: 448)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !690, file: !691, line: 1482, baseType: !325, size: 32, offset: 21824)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !690, file: !691, line: 1489, baseType: !14, size: 64, offset: 21888)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !690, file: !691, line: 1504, baseType: !14, size: 64, offset: 21952)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !690, file: !691, line: 1505, baseType: !312, size: 64, offset: 22016)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !690, file: !691, line: 1506, baseType: !311, size: 64, offset: 22080)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !690, file: !691, line: 1507, baseType: !312, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !690, file: !691, line: 1508, baseType: !312, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !690, file: !691, line: 1509, baseType: !312, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !690, file: !691, line: 1510, baseType: !412, size: 128, align: 64, offset: 22208)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !690, file: !691, line: 1511, baseType: !16, size: 32, offset: 22336)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !690, file: !691, line: 1515, baseType: !5629, size: 64, offset: 22400)
!5629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !713, line: 56, size: 64, elements: !5630)
!5630 = !{!5631}
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5629, file: !713, line: 57, baseType: !716, size: 64)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !690, file: !691, line: 1518, baseType: !5629, size: 64, offset: 22464)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !690, file: !691, line: 1528, baseType: !412, size: 128, align: 64, offset: 22528)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !690, file: !691, line: 1552, baseType: !5635, size: 35328, offset: 23040)
!5635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5636, line: 430, size: 35328, elements: !5637)
!5636 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5637 = !{!5638, !5656, !5657, !5658, !5659, !5660, !5661, !5662, !5663, !5665, !5666, !5667, !5668, !5669, !5670, !5673, !5674, !5675, !5676}
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5635, file: !5636, line: 432, baseType: !5639, size: 192)
!5639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5640, size: 192, elements: !1058)
!5640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5641, line: 16, size: 64, elements: !5642)
!5641 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5642 = !{!5643, !5644, !5645, !5646, !5647, !5648, !5649, !5650, !5651, !5652, !5653, !5654, !5655}
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5640, file: !5641, line: 17, baseType: !87, size: 16)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5640, file: !5641, line: 18, baseType: !87, size: 16, offset: 16)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5640, file: !5641, line: 19, baseType: !87, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5640, file: !5641, line: 19, baseType: !87, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5640, file: !5641, line: 19, baseType: !87, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5640, file: !5641, line: 19, baseType: !87, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5640, file: !5641, line: 19, baseType: !87, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5640, file: !5641, line: 20, baseType: !87, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5640, file: !5641, line: 20, baseType: !87, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5640, file: !5641, line: 20, baseType: !87, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5640, file: !5641, line: 20, baseType: !87, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5640, file: !5641, line: 20, baseType: !87, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5640, file: !5641, line: 20, baseType: !87, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5635, file: !5636, line: 436, baseType: !33, size: 64, offset: 192)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5635, file: !5636, line: 440, baseType: !20, size: 16, offset: 256)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5635, file: !5636, line: 441, baseType: !20, size: 16, offset: 272)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5635, file: !5636, line: 442, baseType: !20, size: 16, offset: 288)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5635, file: !5636, line: 443, baseType: !20, size: 16, offset: 304)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5635, file: !5636, line: 447, baseType: !33, size: 64, offset: 320)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5635, file: !5636, line: 448, baseType: !33, size: 64, offset: 384)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5635, file: !5636, line: 459, baseType: !5664, size: 256, offset: 448)
!5664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2749, size: 256, elements: !443)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5635, file: !5636, line: 461, baseType: !33, size: 64, offset: 704)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5635, file: !5636, line: 463, baseType: !33, size: 64, offset: 768)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5635, file: !5636, line: 465, baseType: !33, size: 64, offset: 832)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5635, file: !5636, line: 466, baseType: !33, size: 64, offset: 896)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5635, file: !5636, line: 467, baseType: !33, size: 64, offset: 960)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5635, file: !5636, line: 473, baseType: !5671, size: 64, offset: 1024)
!5671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5672, size: 64)
!5672 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5636, line: 10, flags: DIFlagFwdDecl)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5635, file: !5636, line: 480, baseType: !33, size: 64, offset: 1088)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5635, file: !5636, line: 482, baseType: !98, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5635, file: !5636, line: 491, baseType: !378, size: 32, offset: 1184)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5635, file: !5636, line: 501, baseType: !5677, size: 33792, offset: 1536)
!5677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5678, line: 448, size: 33792, elements: !5679)
!5678 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5679 = !{!5680, !5681, !5682, !5790, !5791, !5797, !5798}
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5677, file: !5678, line: 461, baseType: !98, size: 32)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5677, file: !5678, line: 468, baseType: !33, size: 64, offset: 64)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5677, file: !5678, line: 476, baseType: !5683, size: 64, offset: 128)
!5683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5684, size: 64)
!5684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5678, line: 356, size: 33280, align: 512, elements: !5685)
!5685 = !{!5686, !5687, !5688, !5689, !5690, !5691, !5692, !5693, !5694, !5695}
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5684, file: !5678, line: 358, baseType: !98, size: 32)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5684, file: !5678, line: 361, baseType: !98, size: 32, offset: 32)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5684, file: !5678, line: 364, baseType: !311, size: 64, offset: 64)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5684, file: !5678, line: 367, baseType: !311, size: 64, offset: 128)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5684, file: !5678, line: 370, baseType: !311, size: 64, offset: 192)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5684, file: !5678, line: 373, baseType: !98, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5684, file: !5678, line: 376, baseType: !98, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5684, file: !5678, line: 391, baseType: !98, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5684, file: !5678, line: 394, baseType: !98, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5684, file: !5678, line: 397, baseType: !5696, size: 32768, offset: 512)
!5696 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5678, line: 348, size: 32768, elements: !5697)
!5697 = !{!5698, !5713, !5750, !5775, !5788}
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5696, file: !5678, line: 349, baseType: !5699, size: 896)
!5699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5678, line: 12, size: 896, elements: !5700)
!5700 = !{!5701, !5702, !5703, !5704, !5705, !5706, !5707, !5708, !5712}
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5699, file: !5678, line: 13, baseType: !378, size: 32)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5699, file: !5678, line: 14, baseType: !378, size: 32, offset: 32)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5699, file: !5678, line: 15, baseType: !378, size: 32, offset: 64)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5699, file: !5678, line: 16, baseType: !378, size: 32, offset: 96)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5699, file: !5678, line: 17, baseType: !378, size: 32, offset: 128)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5699, file: !5678, line: 18, baseType: !378, size: 32, offset: 160)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5699, file: !5678, line: 19, baseType: !378, size: 32, offset: 192)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5699, file: !5678, line: 22, baseType: !5709, size: 640, offset: 224)
!5709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 640, elements: !5710)
!5710 = !{!5711}
!5711 = !DISubrange(count: 20)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5699, file: !5678, line: 25, baseType: !378, size: 32, offset: 864)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5696, file: !5678, line: 350, baseType: !5714, size: 4096, align: 128)
!5714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5678, line: 34, size: 4096, align: 128, elements: !5715)
!5715 = !{!5716, !5717, !5718, !5719, !5720, !5735, !5736, !5737, !5739, !5741, !5745}
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5714, file: !5678, line: 35, baseType: !87, size: 16)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5714, file: !5678, line: 36, baseType: !87, size: 16, offset: 16)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5714, file: !5678, line: 37, baseType: !87, size: 16, offset: 32)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5714, file: !5678, line: 38, baseType: !87, size: 16, offset: 48)
!5720 = !DIDerivedType(tag: DW_TAG_member, scope: !5714, file: !5678, line: 39, baseType: !5721, size: 128, offset: 64)
!5721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5714, file: !5678, line: 39, size: 128, elements: !5722)
!5722 = !{!5723, !5728}
!5723 = !DIDerivedType(tag: DW_TAG_member, scope: !5721, file: !5678, line: 40, baseType: !5724, size: 128)
!5724 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5721, file: !5678, line: 40, size: 128, elements: !5725)
!5725 = !{!5726, !5727}
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5724, file: !5678, line: 41, baseType: !311, size: 64)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5724, file: !5678, line: 42, baseType: !311, size: 64, offset: 64)
!5728 = !DIDerivedType(tag: DW_TAG_member, scope: !5721, file: !5678, line: 44, baseType: !5729, size: 128)
!5729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5721, file: !5678, line: 44, size: 128, elements: !5730)
!5730 = !{!5731, !5732, !5733, !5734}
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5729, file: !5678, line: 45, baseType: !378, size: 32)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5729, file: !5678, line: 46, baseType: !378, size: 32, offset: 32)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5729, file: !5678, line: 47, baseType: !378, size: 32, offset: 64)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5729, file: !5678, line: 48, baseType: !378, size: 32, offset: 96)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5714, file: !5678, line: 51, baseType: !378, size: 32, offset: 192)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5714, file: !5678, line: 52, baseType: !378, size: 32, offset: 224)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5714, file: !5678, line: 55, baseType: !5738, size: 1024, offset: 256)
!5738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 1024, elements: !4396)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5714, file: !5678, line: 58, baseType: !5740, size: 2048, offset: 1280)
!5740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 2048, elements: !1462)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5714, file: !5678, line: 60, baseType: !5742, size: 384, offset: 3328)
!5742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 384, elements: !5743)
!5743 = !{!5744}
!5744 = !DISubrange(count: 12)
!5745 = !DIDerivedType(tag: DW_TAG_member, scope: !5714, file: !5678, line: 62, baseType: !5746, size: 384, offset: 3712)
!5746 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5714, file: !5678, line: 62, size: 384, elements: !5747)
!5747 = !{!5748, !5749}
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5746, file: !5678, line: 63, baseType: !5742, size: 384)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5746, file: !5678, line: 64, baseType: !5742, size: 384)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5696, file: !5678, line: 351, baseType: !5751, size: 1088)
!5751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5678, line: 79, size: 1088, elements: !5752)
!5752 = !{!5753, !5754, !5755, !5756, !5757, !5758, !5759, !5760, !5761, !5762, !5763, !5764, !5765, !5766, !5767, !5774}
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5751, file: !5678, line: 80, baseType: !378, size: 32)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5751, file: !5678, line: 81, baseType: !378, size: 32, offset: 32)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5751, file: !5678, line: 82, baseType: !378, size: 32, offset: 64)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5751, file: !5678, line: 83, baseType: !378, size: 32, offset: 96)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5751, file: !5678, line: 84, baseType: !378, size: 32, offset: 128)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5751, file: !5678, line: 85, baseType: !378, size: 32, offset: 160)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5751, file: !5678, line: 86, baseType: !378, size: 32, offset: 192)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5751, file: !5678, line: 88, baseType: !5709, size: 640, offset: 224)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5751, file: !5678, line: 89, baseType: !77, size: 8, offset: 864)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5751, file: !5678, line: 90, baseType: !77, size: 8, offset: 872)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5751, file: !5678, line: 91, baseType: !77, size: 8, offset: 880)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5751, file: !5678, line: 92, baseType: !77, size: 8, offset: 888)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5751, file: !5678, line: 93, baseType: !77, size: 8, offset: 896)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5751, file: !5678, line: 94, baseType: !77, size: 8, offset: 904)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5751, file: !5678, line: 95, baseType: !5768, size: 64, offset: 960)
!5768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5769, size: 64)
!5769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5770, line: 11, size: 128, elements: !5771)
!5770 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5771 = !{!5772, !5773}
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5769, file: !5770, line: 12, baseType: !667, size: 64)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5769, file: !5770, line: 13, baseType: !3661, size: 64, offset: 64)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5751, file: !5678, line: 96, baseType: !378, size: 32, offset: 1024)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5696, file: !5678, line: 352, baseType: !5776, size: 4608, align: 512)
!5776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5678, line: 333, size: 4608, align: 512, elements: !5777)
!5777 = !{!5778, !5779, !5786}
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5776, file: !5678, line: 334, baseType: !5714, size: 4096, align: 128)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5776, file: !5678, line: 335, baseType: !5780, size: 512, offset: 4096)
!5780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5678, line: 312, size: 512, elements: !5781)
!5781 = !{!5782, !5783, !5784}
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5780, file: !5678, line: 313, baseType: !311, size: 64)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5780, file: !5678, line: 314, baseType: !311, size: 64, offset: 64)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5780, file: !5678, line: 315, baseType: !5785, size: 384, offset: 128)
!5785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 384, elements: !401)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5776, file: !5678, line: 336, baseType: !5787, offset: 4608)
!5787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, elements: !679)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5696, file: !5678, line: 353, baseType: !5789, size: 32768)
!5789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 32768, elements: !2693)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5677, file: !5678, line: 484, baseType: !5683, size: 64, offset: 192)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5677, file: !5678, line: 491, baseType: !5792, size: 128, offset: 256)
!5792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5678, line: 404, size: 128, elements: !5793)
!5793 = !{!5794, !5795, !5796}
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5792, file: !5678, line: 424, baseType: !311, size: 64)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5792, file: !5678, line: 432, baseType: !98, size: 32, offset: 64)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5792, file: !5678, line: 440, baseType: !98, size: 32, offset: 96)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5677, file: !5678, line: 498, baseType: !5792, size: 128, offset: 384)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5677, file: !5678, line: 508, baseType: !5684, size: 33280, align: 512, offset: 512)
!5799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!5800 = !{!0, !5801, !5803, !5805, !5807, !5809, !5811}
!5801 = !DIGlobalVariableExpression(var: !5802, expr: !DIExpression())
!5802 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_groups_free315", scope: !2, file: !3, line: 34, type: !14, isLocal: true, isDefinition: true)
!5803 = !DIGlobalVariableExpression(var: !5804, expr: !DIExpression())
!5804 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_groups_sort316", scope: !2, file: !3, line: 89, type: !14, isLocal: true, isDefinition: true)
!5805 = !DIGlobalVariableExpression(var: !5806, expr: !DIExpression())
!5806 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_set_groups317", scope: !2, file: !3, line: 125, type: !14, isLocal: true, isDefinition: true)
!5807 = !DIGlobalVariableExpression(var: !5808, expr: !DIExpression())
!5808 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_set_current_groups318", scope: !2, file: !3, line: 159, type: !14, isLocal: true, isDefinition: true)
!5809 = !DIGlobalVariableExpression(var: !5810, expr: !DIExpression())
!5810 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_in_group_p319", scope: !2, file: !3, line: 237, type: !14, isLocal: true, isDefinition: true)
!5811 = !DIGlobalVariableExpression(var: !5812, expr: !DIExpression())
!5812 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_in_egroup_p320", scope: !2, file: !3, line: 249, type: !14, isLocal: true, isDefinition: true)
!5813 = !{!"rsp"}
!5814 = !{i32 7, !"Dwarf Version", i32 5}
!5815 = !{i32 2, !"Debug Info Version", i32 3}
!5816 = !{i32 1, !"wchar_size", i32 2}
!5817 = !{i32 8, !"cf-protection-branch", i32 1}
!5818 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5819 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5820 = !{i32 1, !"Code Model", i32 2}
!5821 = !{i32 1, !"override-stack-alignment", i32 8}
!5822 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5823 = distinct !DISubprogram(name: "groups_alloc", scope: !3, file: !3, line: 15, type: !5824, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5826)
!5824 = !DISubroutineType(types: !5825)
!5825 = !{!672, !16}
!5826 = !{!5827, !5828}
!5827 = !DILocalVariable(name: "gidsetsize", arg: 1, scope: !5823, file: !3, line: 15, type: !16)
!5828 = !DILocalVariable(name: "gi", scope: !5823, file: !3, line: 17, type: !672)
!5829 = !DILocation(line: 15, column: 37, scope: !5823)
!5830 = !DILocation(line: 17, column: 2, scope: !5823)
!5831 = !DILocation(line: 17, column: 21, scope: !5823)
!5832 = !DILocation(line: 18, column: 16, scope: !5823)
!5833 = !DILocation(line: 18, column: 7, scope: !5823)
!5834 = !DILocation(line: 18, column: 5, scope: !5823)
!5835 = !DILocation(line: 19, column: 7, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !5823, file: !3, line: 19, column: 6)
!5837 = !DILocation(line: 19, column: 6, scope: !5823)
!5838 = !DILocation(line: 20, column: 3, scope: !5836)
!5839 = !DILocation(line: 22, column: 14, scope: !5823)
!5840 = !DILocation(line: 22, column: 18, scope: !5823)
!5841 = !DILocation(line: 22, column: 2, scope: !5823)
!5842 = !DILocation(line: 23, column: 16, scope: !5823)
!5843 = !DILocation(line: 23, column: 2, scope: !5823)
!5844 = !DILocation(line: 23, column: 6, scope: !5823)
!5845 = !DILocation(line: 23, column: 14, scope: !5823)
!5846 = !DILocation(line: 24, column: 9, scope: !5823)
!5847 = !DILocation(line: 24, column: 2, scope: !5823)
!5848 = !DILocation(line: 25, column: 1, scope: !5823)
!5849 = distinct !DISubprogram(name: "kvmalloc", scope: !5850, file: !5850, line: 736, type: !5851, scopeLine: 737, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5853)
!5850 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!5851 = !DISubroutineType(types: !5852)
!5852 = !{!14, !29, !268}
!5853 = !{!5854, !5855}
!5854 = !DILocalVariable(name: "size", arg: 1, scope: !5849, file: !5850, line: 736, type: !29)
!5855 = !DILocalVariable(name: "flags", arg: 2, scope: !5849, file: !5850, line: 736, type: !268)
!5856 = !DILocation(line: 736, column: 53, scope: !5849)
!5857 = !DILocation(line: 736, column: 65, scope: !5849)
!5858 = !DILocation(line: 738, column: 23, scope: !5849)
!5859 = !DILocation(line: 738, column: 29, scope: !5849)
!5860 = !DILocation(line: 738, column: 9, scope: !5849)
!5861 = !DILocation(line: 738, column: 2, scope: !5849)
!5862 = distinct !DISubprogram(name: "size_add", scope: !5863, file: !5863, line: 208, type: !5864, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5866)
!5863 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!5864 = !DISubroutineType(types: !5865)
!5865 = !{!29, !29, !29}
!5866 = !{!5867, !5868, !5869}
!5867 = !DILocalVariable(name: "addend1", arg: 1, scope: !5862, file: !5863, line: 208, type: !29)
!5868 = !DILocalVariable(name: "addend2", arg: 2, scope: !5862, file: !5863, line: 208, type: !29)
!5869 = !DILocalVariable(name: "bytes", scope: !5862, file: !5863, line: 210, type: !29)
!5870 = !DILocation(line: 208, column: 51, scope: !5862)
!5871 = !DILocation(line: 208, column: 67, scope: !5862)
!5872 = !DILocation(line: 210, column: 2, scope: !5862)
!5873 = !DILocation(line: 210, column: 9, scope: !5862)
!5874 = !DILocation(line: 212, column: 6, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !5862, file: !5863, line: 212, column: 6)
!5876 = !DILocation(line: 212, column: 6, scope: !5862)
!5877 = !DILocation(line: 213, column: 3, scope: !5875)
!5878 = !DILocation(line: 215, column: 9, scope: !5862)
!5879 = !DILocation(line: 215, column: 2, scope: !5862)
!5880 = !DILocation(line: 216, column: 1, scope: !5862)
!5881 = distinct !DISubprogram(name: "size_mul", scope: !5863, file: !5863, line: 189, type: !5864, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5882)
!5882 = !{!5883, !5884, !5885}
!5883 = !DILocalVariable(name: "factor1", arg: 1, scope: !5881, file: !5863, line: 189, type: !29)
!5884 = !DILocalVariable(name: "factor2", arg: 2, scope: !5881, file: !5863, line: 189, type: !29)
!5885 = !DILocalVariable(name: "bytes", scope: !5881, file: !5863, line: 191, type: !29)
!5886 = !DILocation(line: 189, column: 51, scope: !5881)
!5887 = !DILocation(line: 189, column: 67, scope: !5881)
!5888 = !DILocation(line: 191, column: 2, scope: !5881)
!5889 = !DILocation(line: 191, column: 9, scope: !5881)
!5890 = !DILocation(line: 193, column: 6, scope: !5891)
!5891 = distinct !DILexicalBlock(scope: !5881, file: !5863, line: 193, column: 6)
!5892 = !DILocation(line: 193, column: 6, scope: !5881)
!5893 = !DILocation(line: 194, column: 3, scope: !5891)
!5894 = !DILocation(line: 196, column: 9, scope: !5881)
!5895 = !DILocation(line: 196, column: 2, scope: !5881)
!5896 = !DILocation(line: 197, column: 1, scope: !5881)
!5897 = distinct !DISubprogram(name: "atomic_set", scope: !5898, file: !5898, line: 65, type: !5899, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5902)
!5898 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5899 = !DISubroutineType(types: !5900)
!5900 = !{null, !5901, !16}
!5901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!5902 = !{!5903, !5904}
!5903 = !DILocalVariable(name: "v", arg: 1, scope: !5897, file: !5898, line: 65, type: !5901)
!5904 = !DILocalVariable(name: "i", arg: 2, scope: !5897, file: !5898, line: 65, type: !16)
!5905 = !DILocation(line: 65, column: 22, scope: !5897)
!5906 = !DILocation(line: 65, column: 29, scope: !5897)
!5907 = !DILocation(line: 67, column: 26, scope: !5897)
!5908 = !DILocation(line: 67, column: 2, scope: !5897)
!5909 = !DILocation(line: 68, column: 17, scope: !5897)
!5910 = !DILocation(line: 68, column: 20, scope: !5897)
!5911 = !DILocation(line: 68, column: 2, scope: !5897)
!5912 = !DILocation(line: 69, column: 1, scope: !5897)
!5913 = distinct !DISubprogram(name: "groups_free", scope: !3, file: !3, line: 29, type: !5914, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5916)
!5914 = !DISubroutineType(types: !5915)
!5915 = !{null, !672}
!5916 = !{!5917}
!5917 = !DILocalVariable(name: "group_info", arg: 1, scope: !5913, file: !3, line: 29, type: !672)
!5918 = !DILocation(line: 29, column: 37, scope: !5913)
!5919 = !DILocation(line: 31, column: 9, scope: !5913)
!5920 = !DILocation(line: 31, column: 2, scope: !5913)
!5921 = !DILocation(line: 32, column: 1, scope: !5913)
!5922 = !DISubprogram(name: "kvfree", scope: !5850, file: !5850, line: 766, type: !5923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5923 = !DISubroutineType(types: !5924)
!5924 = !{null, !2049}
!5925 = distinct !DISubprogram(name: "groups_sort", scope: !3, file: !3, line: 84, type: !5914, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5926)
!5926 = !{!5927}
!5927 = !DILocalVariable(name: "group_info", arg: 1, scope: !5925, file: !3, line: 84, type: !672)
!5928 = !DILocation(line: 84, column: 37, scope: !5925)
!5929 = !DILocation(line: 86, column: 7, scope: !5925)
!5930 = !DILocation(line: 86, column: 19, scope: !5925)
!5931 = !DILocation(line: 86, column: 24, scope: !5925)
!5932 = !DILocation(line: 86, column: 36, scope: !5925)
!5933 = !DILocation(line: 86, column: 2, scope: !5925)
!5934 = !DILocation(line: 88, column: 1, scope: !5925)
!5935 = !DISubprogram(name: "sort", scope: !5936, file: !5936, line: 12, type: !5937, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5936 = !DIFile(filename: "./include/linux/sort.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3534dcfbb4117f954507eae129cf588")
!5937 = !DISubroutineType(types: !5938)
!5938 = !{null, !14, !29, !29, !5939, !5943}
!5939 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmp_func_t", file: !19, line: 245, baseType: !5940)
!5940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5941, size: 64)
!5941 = !DISubroutineType(types: !5942)
!5942 = !{!16, !2049, !2049}
!5943 = !DIDerivedType(tag: DW_TAG_typedef, name: "swap_func_t", file: !19, line: 242, baseType: !5944)
!5944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5945, size: 64)
!5945 = !DISubroutineType(types: !5946)
!5946 = !{null, !14, !14, !16}
!5947 = distinct !DISubprogram(name: "gid_cmp", scope: !3, file: !3, line: 76, type: !5941, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5948)
!5948 = !{!5949, !5950, !5951, !5952}
!5949 = !DILocalVariable(name: "_a", arg: 1, scope: !5947, file: !3, line: 76, type: !2049)
!5950 = !DILocalVariable(name: "_b", arg: 2, scope: !5947, file: !3, line: 76, type: !2049)
!5951 = !DILocalVariable(name: "a", scope: !5947, file: !3, line: 78, type: !292)
!5952 = !DILocalVariable(name: "b", scope: !5947, file: !3, line: 79, type: !292)
!5953 = !DILocation(line: 76, column: 32, scope: !5947)
!5954 = !DILocation(line: 76, column: 48, scope: !5947)
!5955 = !DILocation(line: 78, column: 2, scope: !5947)
!5956 = !DILocation(line: 78, column: 9, scope: !5947)
!5957 = !DILocation(line: 78, column: 24, scope: !5947)
!5958 = !DILocation(line: 78, column: 13, scope: !5947)
!5959 = !DILocation(line: 79, column: 2, scope: !5947)
!5960 = !DILocation(line: 79, column: 9, scope: !5947)
!5961 = !DILocation(line: 79, column: 24, scope: !5947)
!5962 = !DILocation(line: 79, column: 13, scope: !5947)
!5963 = !DILocation(line: 81, column: 9, scope: !5947)
!5964 = !DILocation(line: 81, column: 24, scope: !5947)
!5965 = !DILocation(line: 81, column: 22, scope: !5947)
!5966 = !DILocation(line: 82, column: 1, scope: !5947)
!5967 = !DILocation(line: 81, column: 2, scope: !5947)
!5968 = distinct !DISubprogram(name: "groups_search", scope: !3, file: !3, line: 92, type: !5969, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5973)
!5969 = !DISubroutineType(types: !5970)
!5970 = !{!16, !5971, !292}
!5971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5972, size: 64)
!5972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !673)
!5973 = !{!5974, !5975, !5976, !5977, !5978}
!5974 = !DILocalVariable(name: "group_info", arg: 1, scope: !5968, file: !3, line: 92, type: !5971)
!5975 = !DILocalVariable(name: "grp", arg: 2, scope: !5968, file: !3, line: 92, type: !292)
!5976 = !DILocalVariable(name: "left", scope: !5968, file: !3, line: 94, type: !98)
!5977 = !DILocalVariable(name: "right", scope: !5968, file: !3, line: 94, type: !98)
!5978 = !DILocalVariable(name: "mid", scope: !5979, file: !3, line: 102, type: !98)
!5979 = distinct !DILexicalBlock(scope: !5968, file: !3, line: 101, column: 23)
!5980 = !DILocation(line: 92, column: 44, scope: !5968)
!5981 = !DILocation(line: 92, column: 63, scope: !5968)
!5982 = !DILocation(line: 94, column: 2, scope: !5968)
!5983 = !DILocation(line: 94, column: 15, scope: !5968)
!5984 = !DILocation(line: 94, column: 21, scope: !5968)
!5985 = !DILocation(line: 96, column: 7, scope: !5986)
!5986 = distinct !DILexicalBlock(scope: !5968, file: !3, line: 96, column: 6)
!5987 = !DILocation(line: 96, column: 6, scope: !5968)
!5988 = !DILocation(line: 97, column: 3, scope: !5986)
!5989 = !DILocation(line: 99, column: 7, scope: !5968)
!5990 = !DILocation(line: 100, column: 10, scope: !5968)
!5991 = !DILocation(line: 100, column: 22, scope: !5968)
!5992 = !DILocation(line: 100, column: 8, scope: !5968)
!5993 = !DILocation(line: 101, column: 2, scope: !5968)
!5994 = !DILocation(line: 101, column: 9, scope: !5968)
!5995 = !DILocation(line: 101, column: 16, scope: !5968)
!5996 = !DILocation(line: 101, column: 14, scope: !5968)
!5997 = !DILocation(line: 102, column: 3, scope: !5979)
!5998 = !DILocation(line: 102, column: 16, scope: !5979)
!5999 = !DILocation(line: 102, column: 23, scope: !5979)
!6000 = !DILocation(line: 102, column: 28, scope: !5979)
!6001 = !DILocation(line: 102, column: 27, scope: !5979)
!6002 = !DILocation(line: 102, column: 34, scope: !5979)
!6003 = !DILocation(line: 103, column: 19, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !5979, file: !3, line: 103, column: 7)
!6005 = !DILocation(line: 103, column: 31, scope: !6004)
!6006 = !DILocation(line: 103, column: 35, scope: !6004)
!6007 = !DILocation(line: 103, column: 7, scope: !6004)
!6008 = !DILocation(line: 103, column: 7, scope: !5979)
!6009 = !DILocation(line: 104, column: 11, scope: !6004)
!6010 = !DILocation(line: 104, column: 15, scope: !6004)
!6011 = !DILocation(line: 104, column: 9, scope: !6004)
!6012 = !DILocation(line: 104, column: 4, scope: !6004)
!6013 = !DILocation(line: 105, column: 24, scope: !6014)
!6014 = distinct !DILexicalBlock(scope: !6004, file: !3, line: 105, column: 12)
!6015 = !DILocation(line: 105, column: 36, scope: !6014)
!6016 = !DILocation(line: 105, column: 40, scope: !6014)
!6017 = !DILocation(line: 105, column: 12, scope: !6014)
!6018 = !DILocation(line: 105, column: 12, scope: !6004)
!6019 = !DILocation(line: 106, column: 12, scope: !6014)
!6020 = !DILocation(line: 106, column: 10, scope: !6014)
!6021 = !DILocation(line: 106, column: 4, scope: !6014)
!6022 = !DILocation(line: 108, column: 4, scope: !6014)
!6023 = !DILocation(line: 109, column: 2, scope: !5968)
!6024 = distinct !{!6024, !5993, !6023, !6025, !6026}
!6025 = !{!"llvm.loop.mustprogress"}
!6026 = !{!"llvm.loop.unroll.disable"}
!6027 = !DILocation(line: 110, column: 2, scope: !5968)
!6028 = !DILocation(line: 111, column: 1, scope: !5968)
!6029 = distinct !DISubprogram(name: "gid_gt", scope: !285, file: !285, line: 76, type: !6030, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6032)
!6030 = !DISubroutineType(types: !6031)
!6031 = !{!422, !292, !292}
!6032 = !{!6033, !6034}
!6033 = !DILocalVariable(name: "left", arg: 1, scope: !6029, file: !285, line: 76, type: !292)
!6034 = !DILocalVariable(name: "right", arg: 2, scope: !6029, file: !285, line: 76, type: !292)
!6035 = !DILocation(line: 76, column: 34, scope: !6029)
!6036 = !DILocation(line: 76, column: 47, scope: !6029)
!6037 = !DILocation(line: 78, column: 9, scope: !6029)
!6038 = !DILocation(line: 78, column: 28, scope: !6029)
!6039 = !DILocation(line: 78, column: 26, scope: !6029)
!6040 = !DILocation(line: 78, column: 2, scope: !6029)
!6041 = distinct !DISubprogram(name: "gid_lt", scope: !285, file: !285, line: 96, type: !6030, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6042)
!6042 = !{!6043, !6044}
!6043 = !DILocalVariable(name: "left", arg: 1, scope: !6041, file: !285, line: 96, type: !292)
!6044 = !DILocalVariable(name: "right", arg: 2, scope: !6041, file: !285, line: 96, type: !292)
!6045 = !DILocation(line: 96, column: 34, scope: !6041)
!6046 = !DILocation(line: 96, column: 47, scope: !6041)
!6047 = !DILocation(line: 98, column: 9, scope: !6041)
!6048 = !DILocation(line: 98, column: 28, scope: !6041)
!6049 = !DILocation(line: 98, column: 26, scope: !6041)
!6050 = !DILocation(line: 98, column: 2, scope: !6041)
!6051 = distinct !DISubprogram(name: "set_groups", scope: !3, file: !3, line: 118, type: !6052, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6055)
!6052 = !DISubroutineType(types: !6053)
!6053 = !{null, !6054, !672}
!6054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!6055 = !{!6056, !6057}
!6056 = !DILocalVariable(name: "new", arg: 1, scope: !6051, file: !3, line: 118, type: !6054)
!6057 = !DILocalVariable(name: "group_info", arg: 2, scope: !6051, file: !3, line: 118, type: !672)
!6058 = !DILocation(line: 118, column: 30, scope: !6051)
!6059 = !DILocation(line: 118, column: 54, scope: !6051)
!6060 = !DILocation(line: 120, column: 2, scope: !6051)
!6061 = !DILocation(line: 120, column: 2, scope: !6062)
!6062 = distinct !DILexicalBlock(scope: !6063, file: !3, line: 120, column: 2)
!6063 = distinct !DILexicalBlock(scope: !6051, file: !3, line: 120, column: 2)
!6064 = !DILocation(line: 120, column: 2, scope: !6063)
!6065 = !DILocation(line: 121, column: 17, scope: !6051)
!6066 = !DILocation(line: 121, column: 2, scope: !6051)
!6067 = !DILocation(line: 122, column: 20, scope: !6051)
!6068 = !DILocation(line: 122, column: 2, scope: !6051)
!6069 = !DILocation(line: 122, column: 7, scope: !6051)
!6070 = !DILocation(line: 122, column: 18, scope: !6051)
!6071 = !DILocation(line: 123, column: 1, scope: !6051)
!6072 = distinct !DISubprogram(name: "atomic_dec_and_test", scope: !5898, file: !5898, line: 1372, type: !6073, scopeLine: 1373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6075)
!6073 = !DISubroutineType(types: !6074)
!6074 = !{!422, !5901}
!6075 = !{!6076}
!6076 = !DILocalVariable(name: "v", arg: 1, scope: !6072, file: !5898, line: 1372, type: !5901)
!6077 = !DILocation(line: 1372, column: 31, scope: !6072)
!6078 = !DILocation(line: 1374, column: 2, scope: !6072)
!6079 = !DILocation(line: 1374, column: 2, scope: !6080)
!6080 = distinct !DILexicalBlock(scope: !6072, file: !5898, line: 1374, column: 2)
!6081 = !DILocation(line: 1375, column: 31, scope: !6072)
!6082 = !DILocation(line: 1375, column: 2, scope: !6072)
!6083 = !DILocation(line: 1376, column: 33, scope: !6072)
!6084 = !DILocation(line: 1376, column: 9, scope: !6072)
!6085 = !DILocation(line: 1376, column: 2, scope: !6072)
!6086 = distinct !DISubprogram(name: "get_group_info", scope: !272, file: !272, line: 40, type: !6087, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6089)
!6087 = !DISubroutineType(types: !6088)
!6088 = !{!672, !672}
!6089 = !{!6090}
!6090 = !DILocalVariable(name: "gi", arg: 1, scope: !6086, file: !272, line: 40, type: !672)
!6091 = !DILocation(line: 40, column: 68, scope: !6086)
!6092 = !DILocation(line: 42, column: 14, scope: !6086)
!6093 = !DILocation(line: 42, column: 18, scope: !6086)
!6094 = !DILocation(line: 42, column: 2, scope: !6086)
!6095 = !DILocation(line: 43, column: 9, scope: !6086)
!6096 = !DILocation(line: 43, column: 2, scope: !6086)
!6097 = distinct !DISubprogram(name: "set_current_groups", scope: !3, file: !3, line: 134, type: !6098, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6100)
!6098 = !DISubroutineType(types: !6099)
!6099 = !{!16, !672}
!6100 = !{!6101, !6102, !6103, !6104, !6105}
!6101 = !DILocalVariable(name: "group_info", arg: 1, scope: !6097, file: !3, line: 134, type: !672)
!6102 = !DILocalVariable(name: "new", scope: !6097, file: !3, line: 136, type: !6054)
!6103 = !DILocalVariable(name: "old", scope: !6097, file: !3, line: 137, type: !269)
!6104 = !DILocalVariable(name: "retval", scope: !6097, file: !3, line: 138, type: !16)
!6105 = !DILabel(scope: !6097, name: "error", file: !3, line: 154)
!6106 = !DILocation(line: 134, column: 43, scope: !6097)
!6107 = !DILocation(line: 136, column: 2, scope: !6097)
!6108 = !DILocation(line: 136, column: 15, scope: !6097)
!6109 = !DILocation(line: 137, column: 2, scope: !6097)
!6110 = !DILocation(line: 137, column: 21, scope: !6097)
!6111 = !DILocation(line: 138, column: 2, scope: !6097)
!6112 = !DILocation(line: 138, column: 6, scope: !6097)
!6113 = !DILocation(line: 140, column: 8, scope: !6097)
!6114 = !DILocation(line: 140, column: 6, scope: !6097)
!6115 = !DILocation(line: 141, column: 7, scope: !6116)
!6116 = distinct !DILexicalBlock(scope: !6097, file: !3, line: 141, column: 6)
!6117 = !DILocation(line: 141, column: 6, scope: !6097)
!6118 = !DILocation(line: 142, column: 3, scope: !6116)
!6119 = !DILocation(line: 144, column: 8, scope: !6120)
!6120 = distinct !DILexicalBlock(scope: !6097, file: !3, line: 144, column: 8)
!6121 = !DILocation(line: 144, column: 8, scope: !6122)
!6122 = distinct !DILexicalBlock(scope: !6120, file: !3, line: 144, column: 8)
!6123 = !DILocation(line: 144, column: 6, scope: !6097)
!6124 = !DILocation(line: 146, column: 13, scope: !6097)
!6125 = !DILocation(line: 146, column: 18, scope: !6097)
!6126 = !DILocation(line: 146, column: 2, scope: !6097)
!6127 = !DILocation(line: 148, column: 39, scope: !6097)
!6128 = !DILocation(line: 148, column: 44, scope: !6097)
!6129 = !DILocation(line: 148, column: 11, scope: !6097)
!6130 = !DILocation(line: 148, column: 9, scope: !6097)
!6131 = !DILocation(line: 149, column: 6, scope: !6132)
!6132 = distinct !DILexicalBlock(scope: !6097, file: !3, line: 149, column: 6)
!6133 = !DILocation(line: 149, column: 13, scope: !6132)
!6134 = !DILocation(line: 149, column: 6, scope: !6097)
!6135 = !DILocation(line: 150, column: 3, scope: !6132)
!6136 = !DILocation(line: 152, column: 22, scope: !6097)
!6137 = !DILocation(line: 152, column: 9, scope: !6097)
!6138 = !DILocation(line: 152, column: 2, scope: !6097)
!6139 = !DILocation(line: 154, column: 1, scope: !6097)
!6140 = !DILocation(line: 155, column: 14, scope: !6097)
!6141 = !DILocation(line: 155, column: 2, scope: !6097)
!6142 = !DILocation(line: 156, column: 9, scope: !6097)
!6143 = !DILocation(line: 156, column: 2, scope: !6097)
!6144 = !DILocation(line: 157, column: 1, scope: !6097)
!6145 = !DISubprogram(name: "prepare_creds", scope: !272, file: !272, line: 153, type: !6146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6146 = !DISubroutineType(types: !6147)
!6147 = !{!6054}
!6148 = distinct !DISubprogram(name: "get_current", scope: !6149, file: !6149, line: 39, type: !6150, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6152)
!6149 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6150 = !DISubroutineType(types: !6151)
!6151 = !{!689}
!6152 = !{!6153, !6155, !6157}
!6153 = !DILocalVariable(name: "pscr_ret__", scope: !6154, file: !6149, line: 41, type: !689)
!6154 = distinct !DILexicalBlock(scope: !6148, file: !6149, line: 41, column: 9)
!6155 = !DILocalVariable(name: "__vpp_verify", scope: !6156, file: !6149, line: 41, type: !2049)
!6156 = distinct !DILexicalBlock(scope: !6154, file: !6149, line: 41, column: 9)
!6157 = !DILocalVariable(name: "pfo_val__", scope: !6158, file: !6149, line: 41, type: !311)
!6158 = distinct !DILexicalBlock(scope: !6154, file: !6149, line: 41, column: 9)
!6159 = !DILocation(line: 41, column: 9, scope: !6154)
!6160 = !DILocation(line: 41, column: 9, scope: !6156)
!6161 = !DILocation(line: 41, column: 9, scope: !6158)
!6162 = !{i64 2148990819}
!6163 = !DILocation(line: 41, column: 9, scope: !6148)
!6164 = !DILocation(line: 41, column: 2, scope: !6148)
!6165 = !DISubprogram(name: "security_task_fix_setgroups", scope: !2053, file: !2053, line: 429, type: !6166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6166 = !DISubroutineType(types: !6167)
!6167 = !{!16, !6054, !269}
!6168 = !DISubprogram(name: "commit_creds", scope: !272, file: !272, line: 155, type: !6169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6169 = !DISubroutineType(types: !6170)
!6170 = !{!16, !6054}
!6171 = !DISubprogram(name: "abort_creds", scope: !272, file: !272, line: 156, type: !6172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6172 = !DISubroutineType(types: !6173)
!6173 = !{null, !6054}
!6174 = distinct !DISubprogram(name: "__x64_sys_getgroups", scope: !3, file: !3, line: 161, type: !6175, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6179)
!6175 = !DISubroutineType(types: !6176)
!6176 = !{!667, !6177}
!6177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6178, size: 64)
!6178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3662)
!6179 = !{!6180}
!6180 = !DILocalVariable(name: "regs", arg: 1, scope: !6174, file: !3, line: 161, type: !6177)
!6181 = !DILocation(line: 161, column: 1, scope: !6174)
!6182 = distinct !DISubprogram(name: "__se_sys_getgroups", scope: !3, file: !3, line: 161, type: !6183, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6185)
!6183 = !DISubroutineType(types: !6184)
!6184 = !{!667, !667, !667}
!6185 = !{!6186, !6187, !6188}
!6186 = !DILocalVariable(name: "gidsetsize", arg: 1, scope: !6182, file: !3, line: 161, type: !667)
!6187 = !DILocalVariable(name: "grouplist", arg: 2, scope: !6182, file: !3, line: 161, type: !667)
!6188 = !DILocalVariable(name: "ret", scope: !6182, file: !3, line: 161, type: !667)
!6189 = !DILocation(line: 161, column: 1, scope: !6182)
!6190 = !DILocation(line: 161, column: 1, scope: !6191)
!6191 = distinct !DILexicalBlock(scope: !6182, file: !3, line: 161, column: 1)
!6192 = distinct !DISubprogram(name: "__ia32_sys_getgroups", scope: !3, file: !3, line: 161, type: !6175, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6193)
!6193 = !{!6194}
!6194 = !DILocalVariable(name: "regs", arg: 1, scope: !6192, file: !3, line: 161, type: !6177)
!6195 = !DILocation(line: 161, column: 1, scope: !6192)
!6196 = distinct !DISubprogram(name: "may_setgroups", scope: !3, file: !3, line: 185, type: !2039, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6197)
!6197 = !{!6198}
!6198 = !DILocalVariable(name: "user_ns", scope: !6196, file: !3, line: 187, type: !514)
!6199 = !DILocation(line: 187, column: 2, scope: !6196)
!6200 = !DILocation(line: 187, column: 25, scope: !6196)
!6201 = !DILocation(line: 187, column: 35, scope: !6196)
!6202 = !DILocation(line: 189, column: 26, scope: !6196)
!6203 = !DILocation(line: 189, column: 9, scope: !6196)
!6204 = !DILocation(line: 189, column: 47, scope: !6196)
!6205 = !DILocation(line: 190, column: 24, scope: !6196)
!6206 = !DILocation(line: 190, column: 3, scope: !6196)
!6207 = !DILocation(line: 0, scope: !6196)
!6208 = !DILocation(line: 191, column: 1, scope: !6196)
!6209 = !DILocation(line: 189, column: 2, scope: !6196)
!6210 = distinct !DISubprogram(name: "current_user_ns", scope: !272, file: !272, line: 346, type: !6211, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6211 = !DISubroutineType(types: !6212)
!6212 = !{!514}
!6213 = !DILocation(line: 348, column: 2, scope: !6210)
!6214 = !DISubprogram(name: "ns_capable_setid", scope: !307, file: !307, line: 151, type: !6215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6215 = !DISubroutineType(types: !6216)
!6216 = !{!422, !514, !16}
!6217 = distinct !DISubprogram(name: "userns_may_setgroups", scope: !516, file: !516, line: 207, type: !6218, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6222)
!6218 = !DISubroutineType(types: !6219)
!6219 = !{!422, !6220}
!6220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6221, size: 64)
!6221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!6222 = !{!6223}
!6223 = !DILocalVariable(name: "ns", arg: 1, scope: !6217, file: !516, line: 207, type: !6220)
!6224 = !DILocation(line: 207, column: 70, scope: !6217)
!6225 = !DILocation(line: 209, column: 2, scope: !6217)
!6226 = distinct !DISubprogram(name: "__x64_sys_setgroups", scope: !3, file: !3, line: 198, type: !6175, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6227)
!6227 = !{!6228}
!6228 = !DILocalVariable(name: "regs", arg: 1, scope: !6226, file: !3, line: 198, type: !6177)
!6229 = !DILocation(line: 198, column: 1, scope: !6226)
!6230 = distinct !DISubprogram(name: "__se_sys_setgroups", scope: !3, file: !3, line: 198, type: !6183, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6231)
!6231 = !{!6232, !6233, !6234}
!6232 = !DILocalVariable(name: "gidsetsize", arg: 1, scope: !6230, file: !3, line: 198, type: !667)
!6233 = !DILocalVariable(name: "grouplist", arg: 2, scope: !6230, file: !3, line: 198, type: !667)
!6234 = !DILocalVariable(name: "ret", scope: !6230, file: !3, line: 198, type: !667)
!6235 = !DILocation(line: 198, column: 1, scope: !6230)
!6236 = !DILocation(line: 198, column: 1, scope: !6237)
!6237 = distinct !DILexicalBlock(scope: !6230, file: !3, line: 198, column: 1)
!6238 = distinct !DISubprogram(name: "__ia32_sys_setgroups", scope: !3, file: !3, line: 198, type: !6175, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6239)
!6239 = !{!6240}
!6240 = !DILocalVariable(name: "regs", arg: 1, scope: !6238, file: !3, line: 198, type: !6177)
!6241 = !DILocation(line: 198, column: 1, scope: !6238)
!6242 = distinct !DISubprogram(name: "in_group_p", scope: !3, file: !3, line: 227, type: !6243, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6245)
!6243 = !DISubroutineType(types: !6244)
!6244 = !{!16, !292}
!6245 = !{!6246, !6247, !6248}
!6246 = !DILocalVariable(name: "grp", arg: 1, scope: !6242, file: !3, line: 227, type: !292)
!6247 = !DILocalVariable(name: "cred", scope: !6242, file: !3, line: 229, type: !269)
!6248 = !DILocalVariable(name: "retval", scope: !6242, file: !3, line: 230, type: !16)
!6249 = !DILocation(line: 227, column: 23, scope: !6242)
!6250 = !DILocation(line: 229, column: 2, scope: !6242)
!6251 = !DILocation(line: 229, column: 21, scope: !6242)
!6252 = !DILocation(line: 229, column: 28, scope: !6253)
!6253 = distinct !DILexicalBlock(scope: !6242, file: !3, line: 229, column: 28)
!6254 = !DILocation(line: 229, column: 28, scope: !6255)
!6255 = distinct !DILexicalBlock(scope: !6253, file: !3, line: 229, column: 28)
!6256 = !DILocation(line: 230, column: 2, scope: !6242)
!6257 = !DILocation(line: 230, column: 6, scope: !6242)
!6258 = !DILocation(line: 232, column: 19, scope: !6259)
!6259 = distinct !DILexicalBlock(scope: !6242, file: !3, line: 232, column: 6)
!6260 = !DILocation(line: 232, column: 25, scope: !6259)
!6261 = !DILocation(line: 232, column: 7, scope: !6259)
!6262 = !DILocation(line: 232, column: 6, scope: !6242)
!6263 = !DILocation(line: 233, column: 26, scope: !6259)
!6264 = !DILocation(line: 233, column: 32, scope: !6259)
!6265 = !DILocation(line: 233, column: 12, scope: !6259)
!6266 = !DILocation(line: 233, column: 10, scope: !6259)
!6267 = !DILocation(line: 233, column: 3, scope: !6259)
!6268 = !DILocation(line: 234, column: 9, scope: !6242)
!6269 = !DILocation(line: 235, column: 1, scope: !6242)
!6270 = !DILocation(line: 234, column: 2, scope: !6242)
!6271 = distinct !DISubprogram(name: "gid_eq", scope: !285, file: !285, line: 66, type: !6030, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6272)
!6272 = !{!6273, !6274}
!6273 = !DILocalVariable(name: "left", arg: 1, scope: !6271, file: !285, line: 66, type: !292)
!6274 = !DILocalVariable(name: "right", arg: 2, scope: !6271, file: !285, line: 66, type: !292)
!6275 = !DILocation(line: 66, column: 34, scope: !6271)
!6276 = !DILocation(line: 66, column: 47, scope: !6271)
!6277 = !DILocation(line: 68, column: 9, scope: !6271)
!6278 = !DILocation(line: 68, column: 29, scope: !6271)
!6279 = !DILocation(line: 68, column: 26, scope: !6271)
!6280 = !DILocation(line: 68, column: 2, scope: !6271)
!6281 = distinct !DISubprogram(name: "in_egroup_p", scope: !3, file: !3, line: 239, type: !6243, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6282)
!6282 = !{!6283, !6284, !6285}
!6283 = !DILocalVariable(name: "grp", arg: 1, scope: !6281, file: !3, line: 239, type: !292)
!6284 = !DILocalVariable(name: "cred", scope: !6281, file: !3, line: 241, type: !269)
!6285 = !DILocalVariable(name: "retval", scope: !6281, file: !3, line: 242, type: !16)
!6286 = !DILocation(line: 239, column: 24, scope: !6281)
!6287 = !DILocation(line: 241, column: 2, scope: !6281)
!6288 = !DILocation(line: 241, column: 21, scope: !6281)
!6289 = !DILocation(line: 241, column: 28, scope: !6290)
!6290 = distinct !DILexicalBlock(scope: !6281, file: !3, line: 241, column: 28)
!6291 = !DILocation(line: 241, column: 28, scope: !6292)
!6292 = distinct !DILexicalBlock(scope: !6290, file: !3, line: 241, column: 28)
!6293 = !DILocation(line: 242, column: 2, scope: !6281)
!6294 = !DILocation(line: 242, column: 6, scope: !6281)
!6295 = !DILocation(line: 244, column: 19, scope: !6296)
!6296 = distinct !DILexicalBlock(scope: !6281, file: !3, line: 244, column: 6)
!6297 = !DILocation(line: 244, column: 25, scope: !6296)
!6298 = !DILocation(line: 244, column: 7, scope: !6296)
!6299 = !DILocation(line: 244, column: 6, scope: !6281)
!6300 = !DILocation(line: 245, column: 26, scope: !6296)
!6301 = !DILocation(line: 245, column: 32, scope: !6296)
!6302 = !DILocation(line: 245, column: 12, scope: !6296)
!6303 = !DILocation(line: 245, column: 10, scope: !6296)
!6304 = !DILocation(line: 245, column: 3, scope: !6296)
!6305 = !DILocation(line: 246, column: 9, scope: !6281)
!6306 = !DILocation(line: 247, column: 1, scope: !6281)
!6307 = !DILocation(line: 246, column: 2, scope: !6281)
!6308 = !DISubprogram(name: "kvmalloc_node", scope: !5850, file: !5850, line: 735, type: !6309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6309 = !DISubroutineType(types: !6310)
!6310 = !{!14, !29, !268, !16}
!6311 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5863, file: !5863, line: 51, type: !6312, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6314)
!6312 = !DISubroutineType(types: !6313)
!6313 = !{!422, !422}
!6314 = !{!6315}
!6315 = !DILocalVariable(name: "overflow", arg: 1, scope: !6311, file: !5863, line: 51, type: !422)
!6316 = !DILocation(line: 51, column: 60, scope: !6311)
!6317 = !DILocation(line: 53, column: 9, scope: !6311)
!6318 = !{i8 0, i8 2}
!6319 = !DILocation(line: 53, column: 2, scope: !6311)
!6320 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6321, file: !6321, line: 80, type: !6322, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6327)
!6321 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6322 = !DISubroutineType(types: !6323)
!6323 = !{null, !6324, !29}
!6324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6325, size: 64)
!6325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6326)
!6326 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6327 = !{!6328, !6329}
!6328 = !DILocalVariable(name: "v", arg: 1, scope: !6320, file: !6321, line: 80, type: !6324)
!6329 = !DILocalVariable(name: "size", arg: 2, scope: !6320, file: !6321, line: 80, type: !29)
!6330 = !DILocation(line: 80, column: 74, scope: !6320)
!6331 = !DILocation(line: 80, column: 84, scope: !6320)
!6332 = !DILocation(line: 82, column: 20, scope: !6320)
!6333 = !DILocation(line: 82, column: 23, scope: !6320)
!6334 = !DILocation(line: 82, column: 2, scope: !6320)
!6335 = !DILocation(line: 83, column: 2, scope: !6320)
!6336 = !DILocation(line: 84, column: 1, scope: !6320)
!6337 = distinct !DISubprogram(name: "raw_atomic_set", scope: !6338, file: !6338, line: 488, type: !5899, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6339)
!6338 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6339 = !{!6340, !6341}
!6340 = !DILocalVariable(name: "v", arg: 1, scope: !6337, file: !6338, line: 488, type: !5901)
!6341 = !DILocalVariable(name: "i", arg: 2, scope: !6337, file: !6338, line: 488, type: !16)
!6342 = !DILocation(line: 488, column: 26, scope: !6337)
!6343 = !DILocation(line: 488, column: 33, scope: !6337)
!6344 = !DILocation(line: 490, column: 18, scope: !6337)
!6345 = !DILocation(line: 490, column: 21, scope: !6337)
!6346 = !DILocation(line: 490, column: 2, scope: !6337)
!6347 = !DILocation(line: 491, column: 1, scope: !6337)
!6348 = distinct !DISubprogram(name: "kasan_check_write", scope: !6349, file: !6349, line: 44, type: !6350, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6352)
!6349 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6350 = !DISubroutineType(types: !6351)
!6351 = !{!422, !6324, !98}
!6352 = !{!6353, !6354}
!6353 = !DILocalVariable(name: "p", arg: 1, scope: !6348, file: !6349, line: 44, type: !6324)
!6354 = !DILocalVariable(name: "size", arg: 2, scope: !6348, file: !6349, line: 44, type: !98)
!6355 = !DILocation(line: 44, column: 59, scope: !6348)
!6356 = !DILocation(line: 44, column: 75, scope: !6348)
!6357 = !DILocation(line: 46, column: 2, scope: !6348)
!6358 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6359, file: !6359, line: 229, type: !6360, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6362)
!6359 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6360 = !DISubroutineType(types: !6361)
!6361 = !{null, !6324, !29, !16}
!6362 = !{!6363, !6364, !6365}
!6363 = !DILocalVariable(name: "ptr", arg: 1, scope: !6358, file: !6359, line: 229, type: !6324)
!6364 = !DILocalVariable(name: "size", arg: 2, scope: !6358, file: !6359, line: 229, type: !29)
!6365 = !DILocalVariable(name: "type", arg: 3, scope: !6358, file: !6359, line: 230, type: !16)
!6366 = !DILocation(line: 229, column: 60, scope: !6358)
!6367 = !DILocation(line: 229, column: 72, scope: !6358)
!6368 = !DILocation(line: 230, column: 15, scope: !6358)
!6369 = !DILocation(line: 230, column: 23, scope: !6358)
!6370 = distinct !DISubprogram(name: "arch_atomic_set", scope: !6371, file: !6371, line: 26, type: !5899, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6372)
!6371 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6372 = !{!6373, !6374}
!6373 = !DILocalVariable(name: "v", arg: 1, scope: !6370, file: !6371, line: 26, type: !5901)
!6374 = !DILocalVariable(name: "i", arg: 2, scope: !6370, file: !6371, line: 26, type: !16)
!6375 = !DILocation(line: 26, column: 55, scope: !6370)
!6376 = !DILocation(line: 26, column: 62, scope: !6370)
!6377 = !DILocation(line: 28, column: 2, scope: !6370)
!6378 = !DILocation(line: 28, column: 2, scope: !6379)
!6379 = distinct !DILexicalBlock(scope: !6370, file: !6371, line: 28, column: 2)
!6380 = !DILocation(line: 29, column: 1, scope: !6370)
!6381 = distinct !DISubprogram(name: "__kgid_val", scope: !285, file: !285, line: 39, type: !6382, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6384)
!6382 = !DISubroutineType(types: !6383)
!6383 = !{!296, !292}
!6384 = !{!6385}
!6385 = !DILocalVariable(name: "gid", arg: 1, scope: !6381, file: !285, line: 39, type: !292)
!6386 = !DILocation(line: 39, column: 39, scope: !6381)
!6387 = !DILocation(line: 41, column: 13, scope: !6381)
!6388 = !DILocation(line: 41, column: 2, scope: !6381)
!6389 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6321, file: !6321, line: 94, type: !6322, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6390)
!6390 = !{!6391, !6392}
!6391 = !DILocalVariable(name: "v", arg: 1, scope: !6389, file: !6321, line: 94, type: !6324)
!6392 = !DILocalVariable(name: "size", arg: 2, scope: !6389, file: !6321, line: 94, type: !29)
!6393 = !DILocation(line: 94, column: 79, scope: !6389)
!6394 = !DILocation(line: 94, column: 89, scope: !6389)
!6395 = !DILocation(line: 96, column: 20, scope: !6389)
!6396 = !DILocation(line: 96, column: 23, scope: !6389)
!6397 = !DILocation(line: 96, column: 2, scope: !6389)
!6398 = !DILocation(line: 97, column: 2, scope: !6389)
!6399 = !DILocation(line: 98, column: 1, scope: !6389)
!6400 = distinct !DISubprogram(name: "raw_atomic_dec_and_test", scope: !6338, file: !6338, line: 2254, type: !6073, scopeLine: 2255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6401)
!6401 = !{!6402}
!6402 = !DILocalVariable(name: "v", arg: 1, scope: !6400, file: !6338, line: 2254, type: !5901)
!6403 = !DILocation(line: 2254, column: 35, scope: !6400)
!6404 = !DILocation(line: 2257, column: 34, scope: !6400)
!6405 = !DILocation(line: 2257, column: 9, scope: !6400)
!6406 = !DILocation(line: 2257, column: 2, scope: !6400)
!6407 = distinct !DISubprogram(name: "arch_atomic_dec_and_test", scope: !6371, file: !6371, line: 65, type: !6073, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6408)
!6408 = !{!6409, !6410}
!6409 = !DILocalVariable(name: "v", arg: 1, scope: !6407, file: !6371, line: 65, type: !5901)
!6410 = !DILocalVariable(name: "c", scope: !6411, file: !6371, line: 67, type: !422)
!6411 = distinct !DILexicalBlock(scope: !6407, file: !6371, line: 67, column: 9)
!6412 = !DILocation(line: 65, column: 64, scope: !6407)
!6413 = !DILocation(line: 67, column: 9, scope: !6411)
!6414 = !{i64 2148009609, i64 2148009648, i64 2148009669, i64 2148009706, i64 2148009729, i64 2148009738, i64 2148009812}
!6415 = !DILocation(line: 67, column: 9, scope: !6407)
!6416 = !DILocation(line: 67, column: 2, scope: !6407)
!6417 = distinct !DISubprogram(name: "atomic_inc", scope: !5898, file: !5898, line: 433, type: !6418, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6420)
!6418 = !DISubroutineType(types: !6419)
!6419 = !{null, !5901}
!6420 = !{!6421}
!6421 = !DILocalVariable(name: "v", arg: 1, scope: !6417, file: !5898, line: 433, type: !5901)
!6422 = !DILocation(line: 433, column: 22, scope: !6417)
!6423 = !DILocation(line: 435, column: 31, scope: !6417)
!6424 = !DILocation(line: 435, column: 2, scope: !6417)
!6425 = !DILocation(line: 436, column: 17, scope: !6417)
!6426 = !DILocation(line: 436, column: 2, scope: !6417)
!6427 = !DILocation(line: 437, column: 1, scope: !6417)
!6428 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !6338, file: !6338, line: 976, type: !6418, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6429)
!6429 = !{!6430}
!6430 = !DILocalVariable(name: "v", arg: 1, scope: !6428, file: !6338, line: 976, type: !5901)
!6431 = !DILocation(line: 976, column: 26, scope: !6428)
!6432 = !DILocation(line: 979, column: 18, scope: !6428)
!6433 = !DILocation(line: 979, column: 2, scope: !6428)
!6434 = !DILocation(line: 983, column: 1, scope: !6428)
!6435 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !6371, file: !6371, line: 51, type: !6418, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6436)
!6436 = !{!6437}
!6437 = !DILocalVariable(name: "v", arg: 1, scope: !6435, file: !6371, line: 51, type: !5901)
!6438 = !DILocation(line: 51, column: 55, scope: !6435)
!6439 = !DILocation(line: 54, column: 16, scope: !6435)
!6440 = !DILocation(line: 54, column: 19, scope: !6435)
!6441 = !DILocation(line: 53, column: 2, scope: !6435)
!6442 = !{i64 2148007489, i64 2148007528, i64 2148007549, i64 2148007586, i64 2148007609, i64 2148007479}
!6443 = !DILocation(line: 55, column: 1, scope: !6435)
!6444 = distinct !DISubprogram(name: "__do_sys_getgroups", scope: !3, file: !3, line: 161, type: !6445, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6447)
!6445 = !DISubroutineType(types: !6446)
!6446 = !{!667, !16, !5799}
!6447 = !{!6448, !6449, !6450, !6451, !6452}
!6448 = !DILocalVariable(name: "gidsetsize", arg: 1, scope: !6444, file: !3, line: 161, type: !16)
!6449 = !DILocalVariable(name: "grouplist", arg: 2, scope: !6444, file: !3, line: 161, type: !5799)
!6450 = !DILocalVariable(name: "cred", scope: !6444, file: !3, line: 163, type: !269)
!6451 = !DILocalVariable(name: "i", scope: !6444, file: !3, line: 164, type: !16)
!6452 = !DILabel(scope: !6444, name: "out", file: !3, line: 181)
!6453 = !DILocation(line: 161, column: 1, scope: !6444)
!6454 = !DILocation(line: 163, column: 2, scope: !6444)
!6455 = !DILocation(line: 163, column: 21, scope: !6444)
!6456 = !DILocation(line: 163, column: 28, scope: !6457)
!6457 = distinct !DILexicalBlock(scope: !6444, file: !3, line: 163, column: 28)
!6458 = !DILocation(line: 163, column: 28, scope: !6459)
!6459 = distinct !DILexicalBlock(scope: !6457, file: !3, line: 163, column: 28)
!6460 = !DILocation(line: 164, column: 2, scope: !6444)
!6461 = !DILocation(line: 164, column: 6, scope: !6444)
!6462 = !DILocation(line: 166, column: 6, scope: !6463)
!6463 = distinct !DILexicalBlock(scope: !6444, file: !3, line: 166, column: 6)
!6464 = !DILocation(line: 166, column: 17, scope: !6463)
!6465 = !DILocation(line: 166, column: 6, scope: !6444)
!6466 = !DILocation(line: 167, column: 3, scope: !6463)
!6467 = !DILocation(line: 170, column: 6, scope: !6444)
!6468 = !DILocation(line: 170, column: 12, scope: !6444)
!6469 = !DILocation(line: 170, column: 24, scope: !6444)
!6470 = !DILocation(line: 170, column: 4, scope: !6444)
!6471 = !DILocation(line: 171, column: 6, scope: !6472)
!6472 = distinct !DILexicalBlock(scope: !6444, file: !3, line: 171, column: 6)
!6473 = !DILocation(line: 171, column: 6, scope: !6444)
!6474 = !DILocation(line: 172, column: 7, scope: !6475)
!6475 = distinct !DILexicalBlock(scope: !6476, file: !3, line: 172, column: 7)
!6476 = distinct !DILexicalBlock(scope: !6472, file: !3, line: 171, column: 18)
!6477 = !DILocation(line: 172, column: 11, scope: !6475)
!6478 = !DILocation(line: 172, column: 9, scope: !6475)
!6479 = !DILocation(line: 172, column: 7, scope: !6476)
!6480 = !DILocation(line: 173, column: 6, scope: !6481)
!6481 = distinct !DILexicalBlock(scope: !6475, file: !3, line: 172, column: 23)
!6482 = !DILocation(line: 174, column: 4, scope: !6481)
!6483 = !DILocation(line: 176, column: 22, scope: !6484)
!6484 = distinct !DILexicalBlock(scope: !6476, file: !3, line: 176, column: 7)
!6485 = !DILocation(line: 176, column: 33, scope: !6484)
!6486 = !DILocation(line: 176, column: 39, scope: !6484)
!6487 = !DILocation(line: 176, column: 7, scope: !6484)
!6488 = !DILocation(line: 176, column: 7, scope: !6476)
!6489 = !DILocation(line: 177, column: 6, scope: !6490)
!6490 = distinct !DILexicalBlock(scope: !6484, file: !3, line: 176, column: 52)
!6491 = !DILocation(line: 178, column: 4, scope: !6490)
!6492 = !DILocation(line: 180, column: 2, scope: !6476)
!6493 = !DILocation(line: 181, column: 1, scope: !6444)
!6494 = !DILocation(line: 182, column: 9, scope: !6444)
!6495 = !DILocation(line: 182, column: 2, scope: !6444)
!6496 = !DILocation(line: 183, column: 1, scope: !6444)
!6497 = distinct !DISubprogram(name: "groups_to_user", scope: !3, file: !3, line: 37, type: !6498, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6500)
!6498 = !DISubroutineType(types: !6499)
!6499 = !{!16, !5799, !5971}
!6500 = !{!6501, !6502, !6503, !6504, !6505, !6506, !6510, !6514, !6515, !6516, !6517}
!6501 = !DILocalVariable(name: "grouplist", arg: 1, scope: !6497, file: !3, line: 37, type: !5799)
!6502 = !DILocalVariable(name: "group_info", arg: 2, scope: !6497, file: !3, line: 38, type: !5971)
!6503 = !DILocalVariable(name: "user_ns", scope: !6497, file: !3, line: 40, type: !514)
!6504 = !DILocalVariable(name: "i", scope: !6497, file: !3, line: 41, type: !16)
!6505 = !DILocalVariable(name: "count", scope: !6497, file: !3, line: 42, type: !98)
!6506 = !DILocalVariable(name: "gid", scope: !6507, file: !3, line: 45, type: !296)
!6507 = distinct !DILexicalBlock(scope: !6508, file: !3, line: 44, column: 30)
!6508 = distinct !DILexicalBlock(scope: !6509, file: !3, line: 44, column: 2)
!6509 = distinct !DILexicalBlock(scope: !6497, file: !3, line: 44, column: 2)
!6510 = !DILocalVariable(name: "__ret_pu", scope: !6511, file: !3, line: 47, type: !16)
!6511 = distinct !DILexicalBlock(scope: !6512, file: !3, line: 47, column: 7)
!6512 = distinct !DILexicalBlock(scope: !6513, file: !3, line: 47, column: 7)
!6513 = distinct !DILexicalBlock(scope: !6507, file: !3, line: 47, column: 7)
!6514 = !DILocalVariable(name: "__ptr_pu", scope: !6511, file: !3, line: 47, type: !14)
!6515 = !DILocalVariable(name: "__val_pu", scope: !6511, file: !3, line: 47, type: !296)
!6516 = !DILocalVariable(name: "__x", scope: !6511, file: !3, line: 47, type: !296)
!6517 = !DILocalVariable(name: "__ptr", scope: !6511, file: !3, line: 47, type: !5799)
!6518 = !DILocation(line: 37, column: 41, scope: !6497)
!6519 = !DILocation(line: 38, column: 31, scope: !6497)
!6520 = !DILocation(line: 40, column: 2, scope: !6497)
!6521 = !DILocation(line: 40, column: 25, scope: !6497)
!6522 = !DILocation(line: 40, column: 35, scope: !6497)
!6523 = !DILocation(line: 41, column: 2, scope: !6497)
!6524 = !DILocation(line: 41, column: 6, scope: !6497)
!6525 = !DILocation(line: 42, column: 2, scope: !6497)
!6526 = !DILocation(line: 42, column: 15, scope: !6497)
!6527 = !DILocation(line: 42, column: 23, scope: !6497)
!6528 = !DILocation(line: 42, column: 35, scope: !6497)
!6529 = !DILocation(line: 44, column: 9, scope: !6509)
!6530 = !DILocation(line: 44, column: 7, scope: !6509)
!6531 = !DILocation(line: 44, column: 14, scope: !6508)
!6532 = !DILocation(line: 44, column: 18, scope: !6508)
!6533 = !DILocation(line: 44, column: 16, scope: !6508)
!6534 = !DILocation(line: 44, column: 2, scope: !6509)
!6535 = !DILocation(line: 45, column: 3, scope: !6507)
!6536 = !DILocation(line: 45, column: 9, scope: !6507)
!6537 = !DILocation(line: 46, column: 26, scope: !6507)
!6538 = !DILocation(line: 46, column: 35, scope: !6507)
!6539 = !DILocation(line: 46, column: 47, scope: !6507)
!6540 = !DILocation(line: 46, column: 51, scope: !6507)
!6541 = !DILocation(line: 46, column: 9, scope: !6507)
!6542 = !DILocation(line: 46, column: 7, scope: !6507)
!6543 = !DILocation(line: 47, column: 7, scope: !6512)
!6544 = !DILocation(line: 47, column: 7, scope: !6511)
!6545 = !{i64 2155490384}
!6546 = !DILocation(line: 47, column: 7, scope: !6547)
!6547 = distinct !DILexicalBlock(scope: !6511, file: !3, line: 47, column: 7)
!6548 = !DILocation(line: 47, column: 7, scope: !6513)
!6549 = !DILocation(line: 47, column: 7, scope: !6507)
!6550 = !DILocation(line: 48, column: 4, scope: !6513)
!6551 = !DILocation(line: 49, column: 2, scope: !6508)
!6552 = !DILocation(line: 49, column: 2, scope: !6507)
!6553 = !DILocation(line: 44, column: 26, scope: !6508)
!6554 = !DILocation(line: 44, column: 2, scope: !6508)
!6555 = distinct !{!6555, !6534, !6556, !6025, !6026}
!6556 = !DILocation(line: 49, column: 2, scope: !6509)
!6557 = !DILocation(line: 50, column: 2, scope: !6497)
!6558 = !DILocation(line: 51, column: 1, scope: !6497)
!6559 = distinct !DISubprogram(name: "from_kgid_munged", scope: !285, file: !285, line: 171, type: !6560, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6562)
!6560 = !DISubroutineType(types: !6561)
!6561 = !{!296, !514, !292}
!6562 = !{!6563, !6564, !6565}
!6563 = !DILocalVariable(name: "to", arg: 1, scope: !6559, file: !285, line: 171, type: !514)
!6564 = !DILocalVariable(name: "kgid", arg: 2, scope: !6559, file: !285, line: 171, type: !292)
!6565 = !DILocalVariable(name: "gid", scope: !6559, file: !285, line: 173, type: !296)
!6566 = !DILocation(line: 171, column: 61, scope: !6559)
!6567 = !DILocation(line: 171, column: 72, scope: !6559)
!6568 = !DILocation(line: 173, column: 2, scope: !6559)
!6569 = !DILocation(line: 173, column: 8, scope: !6559)
!6570 = !DILocation(line: 173, column: 24, scope: !6559)
!6571 = !DILocation(line: 173, column: 14, scope: !6559)
!6572 = !DILocation(line: 174, column: 6, scope: !6573)
!6573 = distinct !DILexicalBlock(scope: !6559, file: !285, line: 174, column: 6)
!6574 = !DILocation(line: 174, column: 10, scope: !6573)
!6575 = !DILocation(line: 174, column: 6, scope: !6559)
!6576 = !DILocation(line: 175, column: 9, scope: !6573)
!6577 = !DILocation(line: 175, column: 7, scope: !6573)
!6578 = !DILocation(line: 175, column: 3, scope: !6573)
!6579 = !DILocation(line: 176, column: 9, scope: !6559)
!6580 = !DILocation(line: 177, column: 1, scope: !6559)
!6581 = !DILocation(line: 176, column: 2, scope: !6559)
!6582 = distinct !DISubprogram(name: "might_fault", scope: !6583, file: !6583, line: 202, type: !2638, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6583 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!6584 = !DILocation(line: 202, column: 40, scope: !6582)
!6585 = distinct !DISubprogram(name: "kmsan_copy_to_user", scope: !6586, file: !6586, line: 76, type: !6587, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6589)
!6586 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!6587 = !DISubroutineType(types: !6588)
!6588 = !{null, !14, !2049, !29, !29}
!6589 = !{!6590, !6591, !6592, !6593}
!6590 = !DILocalVariable(name: "to", arg: 1, scope: !6585, file: !6586, line: 76, type: !14)
!6591 = !DILocalVariable(name: "from", arg: 2, scope: !6585, file: !6586, line: 76, type: !2049)
!6592 = !DILocalVariable(name: "to_copy", arg: 3, scope: !6585, file: !6586, line: 77, type: !29)
!6593 = !DILocalVariable(name: "left", arg: 4, scope: !6585, file: !6586, line: 77, type: !29)
!6594 = !DILocation(line: 76, column: 52, scope: !6585)
!6595 = !DILocation(line: 76, column: 68, scope: !6585)
!6596 = !DILocation(line: 77, column: 18, scope: !6585)
!6597 = !DILocation(line: 77, column: 34, scope: !6585)
!6598 = !DILocation(line: 79, column: 1, scope: !6585)
!6599 = distinct !DISubprogram(name: "from_kgid", scope: !285, file: !285, line: 158, type: !6560, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6600)
!6600 = !{!6601, !6602}
!6601 = !DILocalVariable(name: "to", arg: 1, scope: !6599, file: !285, line: 158, type: !514)
!6602 = !DILocalVariable(name: "kgid", arg: 2, scope: !6599, file: !285, line: 158, type: !292)
!6603 = !DILocation(line: 158, column: 54, scope: !6599)
!6604 = !DILocation(line: 158, column: 65, scope: !6599)
!6605 = !DILocation(line: 160, column: 9, scope: !6599)
!6606 = !DILocation(line: 160, column: 2, scope: !6599)
!6607 = distinct !DISubprogram(name: "__do_sys_setgroups", scope: !3, file: !3, line: 198, type: !6445, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6608)
!6608 = !{!6609, !6610, !6611, !6612}
!6609 = !DILocalVariable(name: "gidsetsize", arg: 1, scope: !6607, file: !3, line: 198, type: !16)
!6610 = !DILocalVariable(name: "grouplist", arg: 2, scope: !6607, file: !3, line: 198, type: !5799)
!6611 = !DILocalVariable(name: "group_info", scope: !6607, file: !3, line: 200, type: !672)
!6612 = !DILocalVariable(name: "retval", scope: !6607, file: !3, line: 201, type: !16)
!6613 = !DILocation(line: 198, column: 1, scope: !6607)
!6614 = !DILocation(line: 200, column: 2, scope: !6607)
!6615 = !DILocation(line: 200, column: 21, scope: !6607)
!6616 = !DILocation(line: 201, column: 2, scope: !6607)
!6617 = !DILocation(line: 201, column: 6, scope: !6607)
!6618 = !DILocation(line: 203, column: 7, scope: !6619)
!6619 = distinct !DILexicalBlock(scope: !6607, file: !3, line: 203, column: 6)
!6620 = !DILocation(line: 203, column: 6, scope: !6607)
!6621 = !DILocation(line: 204, column: 3, scope: !6619)
!6622 = !DILocation(line: 205, column: 16, scope: !6623)
!6623 = distinct !DILexicalBlock(scope: !6607, file: !3, line: 205, column: 6)
!6624 = !DILocation(line: 205, column: 27, scope: !6623)
!6625 = !DILocation(line: 205, column: 6, scope: !6607)
!6626 = !DILocation(line: 206, column: 3, scope: !6623)
!6627 = !DILocation(line: 208, column: 28, scope: !6607)
!6628 = !DILocation(line: 208, column: 15, scope: !6607)
!6629 = !DILocation(line: 208, column: 13, scope: !6607)
!6630 = !DILocation(line: 209, column: 7, scope: !6631)
!6631 = distinct !DILexicalBlock(scope: !6607, file: !3, line: 209, column: 6)
!6632 = !DILocation(line: 209, column: 6, scope: !6607)
!6633 = !DILocation(line: 210, column: 3, scope: !6631)
!6634 = !DILocation(line: 211, column: 28, scope: !6607)
!6635 = !DILocation(line: 211, column: 40, scope: !6607)
!6636 = !DILocation(line: 211, column: 11, scope: !6607)
!6637 = !DILocation(line: 211, column: 9, scope: !6607)
!6638 = !DILocation(line: 212, column: 6, scope: !6639)
!6639 = distinct !DILexicalBlock(scope: !6607, file: !3, line: 212, column: 6)
!6640 = !DILocation(line: 212, column: 6, scope: !6607)
!6641 = !DILocation(line: 213, column: 3, scope: !6642)
!6642 = distinct !DILexicalBlock(scope: !6639, file: !3, line: 212, column: 14)
!6643 = !DILocation(line: 213, column: 3, scope: !6644)
!6644 = distinct !DILexicalBlock(scope: !6645, file: !3, line: 213, column: 3)
!6645 = distinct !DILexicalBlock(scope: !6642, file: !3, line: 213, column: 3)
!6646 = !DILocation(line: 213, column: 3, scope: !6645)
!6647 = !DILocation(line: 214, column: 10, scope: !6642)
!6648 = !DILocation(line: 214, column: 3, scope: !6642)
!6649 = !DILocation(line: 217, column: 14, scope: !6607)
!6650 = !DILocation(line: 217, column: 2, scope: !6607)
!6651 = !DILocation(line: 218, column: 30, scope: !6607)
!6652 = !DILocation(line: 218, column: 11, scope: !6607)
!6653 = !DILocation(line: 218, column: 9, scope: !6607)
!6654 = !DILocation(line: 219, column: 2, scope: !6607)
!6655 = !DILocation(line: 219, column: 2, scope: !6656)
!6656 = distinct !DILexicalBlock(scope: !6657, file: !3, line: 219, column: 2)
!6657 = distinct !DILexicalBlock(scope: !6607, file: !3, line: 219, column: 2)
!6658 = !DILocation(line: 219, column: 2, scope: !6657)
!6659 = !DILocation(line: 221, column: 9, scope: !6607)
!6660 = !DILocation(line: 221, column: 2, scope: !6607)
!6661 = !DILocation(line: 222, column: 1, scope: !6607)
!6662 = distinct !DISubprogram(name: "groups_from_user", scope: !3, file: !3, line: 54, type: !6663, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6665)
!6663 = !DISubroutineType(types: !6664)
!6664 = !{!16, !672, !5799}
!6665 = !{!6666, !6667, !6668, !6669, !6670, !6671, !6675, !6676, !6680, !6681}
!6666 = !DILocalVariable(name: "group_info", arg: 1, scope: !6662, file: !3, line: 54, type: !672)
!6667 = !DILocalVariable(name: "grouplist", arg: 2, scope: !6662, file: !3, line: 55, type: !5799)
!6668 = !DILocalVariable(name: "user_ns", scope: !6662, file: !3, line: 57, type: !514)
!6669 = !DILocalVariable(name: "i", scope: !6662, file: !3, line: 58, type: !16)
!6670 = !DILocalVariable(name: "count", scope: !6662, file: !3, line: 59, type: !98)
!6671 = !DILocalVariable(name: "gid", scope: !6672, file: !3, line: 62, type: !296)
!6672 = distinct !DILexicalBlock(scope: !6673, file: !3, line: 61, column: 30)
!6673 = distinct !DILexicalBlock(scope: !6674, file: !3, line: 61, column: 2)
!6674 = distinct !DILexicalBlock(scope: !6662, file: !3, line: 61, column: 2)
!6675 = !DILocalVariable(name: "kgid", scope: !6672, file: !3, line: 63, type: !292)
!6676 = !DILocalVariable(name: "__ret_gu", scope: !6677, file: !3, line: 64, type: !16)
!6677 = distinct !DILexicalBlock(scope: !6678, file: !3, line: 64, column: 7)
!6678 = distinct !DILexicalBlock(scope: !6679, file: !3, line: 64, column: 7)
!6679 = distinct !DILexicalBlock(scope: !6672, file: !3, line: 64, column: 7)
!6680 = !DILocalVariable(name: "__val_gu", scope: !6677, file: !3, line: 64, type: !98)
!6681 = !DILocalVariable(name: "__tmp", scope: !6682, file: !3, line: 64, type: !311)
!6682 = distinct !DILexicalBlock(scope: !6677, file: !3, line: 64, column: 7)
!6683 = !DILocation(line: 54, column: 48, scope: !6662)
!6684 = !DILocation(line: 55, column: 19, scope: !6662)
!6685 = !DILocation(line: 57, column: 2, scope: !6662)
!6686 = !DILocation(line: 57, column: 25, scope: !6662)
!6687 = !DILocation(line: 57, column: 35, scope: !6662)
!6688 = !DILocation(line: 58, column: 2, scope: !6662)
!6689 = !DILocation(line: 58, column: 6, scope: !6662)
!6690 = !DILocation(line: 59, column: 2, scope: !6662)
!6691 = !DILocation(line: 59, column: 15, scope: !6662)
!6692 = !DILocation(line: 59, column: 23, scope: !6662)
!6693 = !DILocation(line: 59, column: 35, scope: !6662)
!6694 = !DILocation(line: 61, column: 9, scope: !6674)
!6695 = !DILocation(line: 61, column: 7, scope: !6674)
!6696 = !DILocation(line: 61, column: 14, scope: !6673)
!6697 = !DILocation(line: 61, column: 18, scope: !6673)
!6698 = !DILocation(line: 61, column: 16, scope: !6673)
!6699 = !DILocation(line: 61, column: 2, scope: !6674)
!6700 = !DILocation(line: 62, column: 3, scope: !6672)
!6701 = !DILocation(line: 62, column: 9, scope: !6672)
!6702 = !DILocation(line: 63, column: 3, scope: !6672)
!6703 = !DILocation(line: 63, column: 10, scope: !6672)
!6704 = !DILocation(line: 64, column: 7, scope: !6678)
!6705 = !DILocation(line: 64, column: 7, scope: !6677)
!6706 = !{i64 2155491295}
!6707 = !DILocation(line: 64, column: 7, scope: !6682)
!6708 = !DILocation(line: 64, column: 7, scope: !6679)
!6709 = !DILocation(line: 64, column: 7, scope: !6672)
!6710 = !DILocation(line: 65, column: 4, scope: !6679)
!6711 = !DILocation(line: 67, column: 10, scope: !6672)
!6712 = !DILocation(line: 67, column: 20, scope: !6672)
!6713 = !DILocation(line: 67, column: 29, scope: !6672)
!6714 = !DILocation(line: 68, column: 8, scope: !6715)
!6715 = distinct !DILexicalBlock(scope: !6672, file: !3, line: 68, column: 7)
!6716 = !DILocation(line: 68, column: 7, scope: !6672)
!6717 = !DILocation(line: 69, column: 4, scope: !6715)
!6718 = !DILocation(line: 71, column: 3, scope: !6672)
!6719 = !DILocation(line: 71, column: 15, scope: !6672)
!6720 = !DILocation(line: 71, column: 19, scope: !6672)
!6721 = !DILocation(line: 71, column: 24, scope: !6672)
!6722 = !DILocation(line: 72, column: 2, scope: !6673)
!6723 = !DILocation(line: 72, column: 2, scope: !6672)
!6724 = !DILocation(line: 61, column: 26, scope: !6673)
!6725 = !DILocation(line: 61, column: 2, scope: !6673)
!6726 = distinct !{!6726, !6699, !6727, !6025, !6026}
!6727 = !DILocation(line: 72, column: 2, scope: !6674)
!6728 = !DILocation(line: 73, column: 2, scope: !6662)
!6729 = !DILocation(line: 74, column: 1, scope: !6662)
!6730 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !6586, file: !6586, line: 70, type: !6731, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6733)
!6731 = !DISubroutineType(types: !6732)
!6732 = !{null, !2049, !29}
!6733 = !{!6734, !6735}
!6734 = !DILocalVariable(name: "address", arg: 1, scope: !6730, file: !6586, line: 70, type: !2049)
!6735 = !DILocalVariable(name: "size", arg: 2, scope: !6730, file: !6586, line: 70, type: !29)
!6736 = !DILocation(line: 70, column: 54, scope: !6730)
!6737 = !DILocation(line: 70, column: 70, scope: !6730)
!6738 = !DILocation(line: 72, column: 1, scope: !6730)
!6739 = distinct !DISubprogram(name: "make_kgid", scope: !285, file: !285, line: 148, type: !6740, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6742)
!6740 = !DISubroutineType(types: !6741)
!6741 = !{!292, !514, !296}
!6742 = !{!6743, !6744}
!6743 = !DILocalVariable(name: "from", arg: 1, scope: !6739, file: !285, line: 148, type: !514)
!6744 = !DILocalVariable(name: "gid", arg: 2, scope: !6739, file: !285, line: 148, type: !296)
!6745 = !DILocation(line: 148, column: 55, scope: !6739)
!6746 = !DILocation(line: 148, column: 67, scope: !6739)
!6747 = !DILocation(line: 150, column: 9, scope: !6739)
!6748 = !DILocation(line: 150, column: 2, scope: !6739)
!6749 = distinct !DISubprogram(name: "gid_valid", scope: !285, file: !285, line: 116, type: !6750, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6752)
!6750 = !DISubroutineType(types: !6751)
!6751 = !{!422, !292}
!6752 = !{!6753}
!6753 = !DILocalVariable(name: "gid", arg: 1, scope: !6749, file: !285, line: 116, type: !292)
!6754 = !DILocation(line: 116, column: 37, scope: !6749)
!6755 = !DILocation(line: 118, column: 9, scope: !6749)
!6756 = !DILocation(line: 118, column: 25, scope: !6749)
!6757 = !DILocation(line: 118, column: 2, scope: !6749)
