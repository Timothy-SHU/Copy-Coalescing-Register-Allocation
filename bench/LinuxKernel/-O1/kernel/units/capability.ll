; ModuleID = 'kernel/capability.c'
source_filename = "kernel/capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_has_capability: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad has_capability ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_has_capability_noaudit: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad has_capability_noaudit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ns_capable: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ns_capable ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ns_capable_noaudit: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ns_capable_noaudit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ns_capable_setid: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ns_capable_setid ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_capable: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad capable ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_file_ns_capable: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad file_ns_capable ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_capable_wrt_inode_uidgid: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad capable_wrt_inode_uidgid ; .previous"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [10 x i64], [4 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.21 }
%union.anon.21 = type { %struct.anon.22, [48 x i8] }
%struct.anon.22 = type { ptr, ptr }
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
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.23, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { ptr, i32, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.pcpu_hot = type { %union.anon.28 }
%union.anon.28 = type { %struct.anon.29, [16 x i8] }
%struct.anon.29 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon, i64, i64, %union.anon.0 }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
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
%struct.callback_head = type { ptr, ptr }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x ptr], i64, i64, i64, i64, i64, ptr, i64, i8, i32, [40 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.fpu = type { i32, i64, ptr, ptr, %struct.fpu_state_perm, %struct.fpu_state_perm, %struct.fpstate }
%struct.fpu_state_perm = type { i64, i32, i32 }
%struct.fpstate = type { i32, i32, i64, i64, i64, i8, [31 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.17, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.20 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { i64, i64 }
%union.anon.20 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.file = type { %union.anon.25, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.25 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.26, %struct.qspinlock }
%union.anon.26 = type { %struct.atomic_t }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.vfsuid_t = type { i32 }
%struct.vfsgid_t = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.30, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.31, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.32, ptr, %struct.address_space, %struct.list_head, %union.anon.33, i32, i32, ptr, ptr }
%union.anon.30 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.31 = type { %struct.callback_head }
%union.anon.32 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.33 = type { ptr }
%struct.kernel_cap_t = type { i64 }
%struct.__user_cap_data_struct = type { i32, i32, i32 }
%struct.__user_cap_header_struct = type { i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i64, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i16, i16, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i64, i32, i32, %struct.list_head, ptr }
%struct.list_lru = type { ptr }

@file_caps_enabled = hidden global i32 1, align 4, !dbg !0
@__setup_str_file_caps_disable = internal constant [13 x i8] c"no_file_caps\00", section ".init.rodata", align 1, !dbg !5833
@__setup_file_caps_disable = internal global %struct.obs_kernel_param { ptr @__setup_str_file_caps_disable, ptr @file_caps_disable, i32 0 }, section ".init.setup", align 8, !dbg !5803
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@__UNIQUE_ID___addressable_has_capability318 = internal global ptr @has_capability, section ".discard.addressable", align 8, !dbg !5814
@__UNIQUE_ID___addressable_has_capability_noaudit321 = internal global ptr @has_capability_noaudit, section ".discard.addressable", align 8, !dbg !5816
@__UNIQUE_ID___addressable_ns_capable322 = internal global ptr @ns_capable, section ".discard.addressable", align 8, !dbg !5818
@__UNIQUE_ID___addressable_ns_capable_noaudit323 = internal global ptr @ns_capable_noaudit, section ".discard.addressable", align 8, !dbg !5820
@__UNIQUE_ID___addressable_ns_capable_setid324 = internal global ptr @ns_capable_setid, section ".discard.addressable", align 8, !dbg !5822
@__UNIQUE_ID___addressable_capable325 = internal global ptr @capable, section ".discard.addressable", align 8, !dbg !5824
@.str = private unnamed_addr constant [20 x i8] c"kernel/capability.c\00", align 1, !dbg !5826
@__UNIQUE_ID___addressable_file_ns_capable326 = internal global ptr @file_ns_capable, section ".discard.addressable", align 8, !dbg !5829
@__UNIQUE_ID___addressable_capable_wrt_inode_uidgid327 = internal global ptr @capable_wrt_inode_uidgid, section ".discard.addressable", align 8, !dbg !5831
@warn_legacy_capability_use.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !5838
@.str.1 = private unnamed_addr constant [78 x i8] c"\016capability: warning: `%s' uses 32-bit capabilities (legacy support in use)\0A\00", align 1, !dbg !5849
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@warn_deprecated_v2.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !5854
@.str.2 = private unnamed_addr constant [91 x i8] c"\016capability: warning: `%s' uses deprecated v2 capabilities in a way that may be insecure\0A\00", align 1, !dbg !5865
@.str.3 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !5870
@.str.4 = private unnamed_addr constant [52 x i8] c"\012capability: capable() called with invalid cap=%u\0A\00", align 1, !dbg !5876
@llvm.compiler.used = appending global [9 x ptr] [ptr @__setup_file_caps_disable, ptr @__UNIQUE_ID___addressable_has_capability318, ptr @__UNIQUE_ID___addressable_has_capability_noaudit321, ptr @__UNIQUE_ID___addressable_ns_capable322, ptr @__UNIQUE_ID___addressable_ns_capable_noaudit323, ptr @__UNIQUE_ID___addressable_ns_capable_setid324, ptr @__UNIQUE_ID___addressable_capable325, ptr @__UNIQUE_ID___addressable_file_ns_capable326, ptr @__UNIQUE_ID___addressable_capable_wrt_inode_uidgid327], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @file_caps_disable(ptr noundef %str) #0 section ".init.text" align 16 !dbg !5889 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !5891, metadata !DIExpression()), !dbg !5892
  store i32 0, ptr @file_caps_enabled, align 4, !dbg !5893
  ret i32 1, !dbg !5894
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_capget(ptr noundef %regs) #1 align 16 !dbg !5895 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5901, metadata !DIExpression()), !dbg !5902
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5902
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !5902
  %1 = load i64, ptr %di, align 8, !dbg !5902
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5902
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !5902
  %3 = load i64, ptr %si, align 8, !dbg !5902
  %call = call i64 @__se_sys_capget(i64 noundef %1, i64 noundef %3) #16, !dbg !5902
  ret i64 %call, !dbg !5902
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_capget(i64 noundef %header, i64 noundef %dataptr) #1 align 16 !dbg !5903 {
entry:
  %header.addr = alloca i64, align 8
  %dataptr.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %header.addr, metadata !5907, metadata !DIExpression()), !dbg !5910
  store i64 %dataptr, ptr %dataptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dataptr.addr, metadata !5908, metadata !DIExpression()), !dbg !5910
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #17, !dbg !5910
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5909, metadata !DIExpression()), !dbg !5910
  %0 = load i64, ptr %header.addr, align 8, !dbg !5910
  %1 = inttoptr i64 %0 to ptr, !dbg !5910
  %2 = load i64, ptr %dataptr.addr, align 8, !dbg !5910
  %3 = inttoptr i64 %2 to ptr, !dbg !5910
  %call = call i64 @__do_sys_capget(ptr noundef %1, ptr noundef %3) #16, !dbg !5910
  store i64 %call, ptr %ret, align 8, !dbg !5910
  br label %do.body, !dbg !5910

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5911

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5911

do.end:                                           ; preds = %do.cond
  %4 = load i64, ptr %ret, align 8, !dbg !5910
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #17, !dbg !5910
  ret i64 %4, !dbg !5910
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_capget(ptr noundef %regs) #1 align 16 !dbg !5913 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5915, metadata !DIExpression()), !dbg !5916
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5916
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !5916
  %1 = load i64, ptr %bx, align 8, !dbg !5916
  %conv = trunc i64 %1 to i32, !dbg !5916
  %conv1 = zext i32 %conv to i64, !dbg !5916
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5916
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !5916
  %3 = load i64, ptr %cx, align 8, !dbg !5916
  %conv2 = trunc i64 %3 to i32, !dbg !5916
  %conv3 = zext i32 %conv2 to i64, !dbg !5916
  %call = call i64 @__se_sys_capget(i64 noundef %conv1, i64 noundef %conv3) #16, !dbg !5916
  ret i64 %call, !dbg !5916
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_capset(ptr noundef %regs) #1 align 16 !dbg !5917 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5919, metadata !DIExpression()), !dbg !5920
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5920
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !5920
  %1 = load i64, ptr %di, align 8, !dbg !5920
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5920
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !5920
  %3 = load i64, ptr %si, align 8, !dbg !5920
  %call = call i64 @__se_sys_capset(i64 noundef %1, i64 noundef %3) #16, !dbg !5920
  ret i64 %call, !dbg !5920
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_capset(i64 noundef %header, i64 noundef %data) #1 align 16 !dbg !5921 {
entry:
  %header.addr = alloca i64, align 8
  %data.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %header, ptr %header.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %header.addr, metadata !5923, metadata !DIExpression()), !dbg !5926
  store i64 %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5924, metadata !DIExpression()), !dbg !5926
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #17, !dbg !5926
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5925, metadata !DIExpression()), !dbg !5926
  %0 = load i64, ptr %header.addr, align 8, !dbg !5926
  %1 = inttoptr i64 %0 to ptr, !dbg !5926
  %2 = load i64, ptr %data.addr, align 8, !dbg !5926
  %3 = inttoptr i64 %2 to ptr, !dbg !5926
  %call = call i64 @__do_sys_capset(ptr noundef %1, ptr noundef %3) #16, !dbg !5926
  store i64 %call, ptr %ret, align 8, !dbg !5926
  br label %do.body, !dbg !5926

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5927

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5927

do.end:                                           ; preds = %do.cond
  %4 = load i64, ptr %ret, align 8, !dbg !5926
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #17, !dbg !5926
  ret i64 %4, !dbg !5926
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_capset(ptr noundef %regs) #1 align 16 !dbg !5929 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5931, metadata !DIExpression()), !dbg !5932
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5932
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !5932
  %1 = load i64, ptr %bx, align 8, !dbg !5932
  %conv = trunc i64 %1 to i32, !dbg !5932
  %conv1 = zext i32 %conv to i64, !dbg !5932
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5932
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !5932
  %3 = load i64, ptr %cx, align 8, !dbg !5932
  %conv2 = trunc i64 %3 to i32, !dbg !5932
  %conv3 = zext i32 %conv2 to i64, !dbg !5932
  %call = call i64 @__se_sys_capset(i64 noundef %conv1, i64 noundef %conv3) #16, !dbg !5932
  ret i64 %call, !dbg !5932
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @has_ns_capability(ptr noundef %t, ptr noundef %ns, i32 noundef %cap) #1 align 16 !dbg !5933 {
entry:
  %t.addr = alloca ptr, align 8
  %ns.addr = alloca ptr, align 8
  %cap.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %__UNIQUE_ID_rcu316 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !5937, metadata !DIExpression()), !dbg !5943
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !5938, metadata !DIExpression()), !dbg !5944
  store i32 %cap, ptr %cap.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cap.addr, metadata !5939, metadata !DIExpression()), !dbg !5945
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !5946
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5940, metadata !DIExpression()), !dbg !5947
  call void @rcu_read_lock() #16, !dbg !5948
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu316) #17, !dbg !5949
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu316, metadata !5941, metadata !DIExpression()), !dbg !5949
  br label %do.body, !dbg !5950

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5952

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5952

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %t.addr, align 8, !dbg !5950
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93, !dbg !5950
  %1 = load volatile ptr, ptr %real_cred, align 8, !dbg !5950
  store ptr %1, ptr %tmp, align 8, !dbg !5952
  %2 = load ptr, ptr %tmp, align 8, !dbg !5950
  store ptr %2, ptr %__UNIQUE_ID_rcu316, align 8, !dbg !5949
  br label %do.body1, !dbg !5949

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !5954

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !5954

do.end3:                                          ; preds = %do.cond2
  %3 = load ptr, ptr %__UNIQUE_ID_rcu316, align 8, !dbg !5949
  store ptr %3, ptr %tmp4, align 8, !dbg !5954
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu316) #17, !dbg !5956
  %4 = load ptr, ptr %tmp4, align 8, !dbg !5949
  %5 = load ptr, ptr %ns.addr, align 8, !dbg !5957
  %6 = load i32, ptr %cap.addr, align 4, !dbg !5958
  %call = call i32 @security_capable(ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef 0) #16, !dbg !5959
  store i32 %call, ptr %ret, align 4, !dbg !5960
  call void @rcu_read_unlock() #16, !dbg !5961
  %7 = load i32, ptr %ret, align 4, !dbg !5962
  %cmp = icmp eq i32 %7, 0, !dbg !5963
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !5964
  ret i1 %cmp, !dbg !5965
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #4 align 16 !dbg !5966 {
entry:
  call void @__rcu_read_lock() #16, !dbg !5968
  br label %do.body, !dbg !5969

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5970

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !5972

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !5973

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !5975
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5976 dso_local i32 @security_capable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #6 align 16 !dbg !5979 {
entry:
  br label %do.body, !dbg !5980

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5981

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #16, !dbg !5983
  br label %do.body1, !dbg !5984

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !5985

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !5987
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @has_capability(ptr noundef %t, i32 noundef %cap) #1 align 16 !dbg !5988 {
entry:
  %t.addr = alloca ptr, align 8
  %cap.addr = alloca i32, align 4
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !5992, metadata !DIExpression()), !dbg !5994
  store i32 %cap, ptr %cap.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cap.addr, metadata !5993, metadata !DIExpression()), !dbg !5995
  %0 = load ptr, ptr %t.addr, align 8, !dbg !5996
  %1 = load i32, ptr %cap.addr, align 4, !dbg !5997
  %call = call zeroext i1 @has_ns_capability(ptr noundef %0, ptr noundef @init_user_ns, i32 noundef %1) #16, !dbg !5998
  ret i1 %call, !dbg !5999
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @has_ns_capability_noaudit(ptr noundef %t, ptr noundef %ns, i32 noundef %cap) #1 align 16 !dbg !6000 {
entry:
  %t.addr = alloca ptr, align 8
  %ns.addr = alloca ptr, align 8
  %cap.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %__UNIQUE_ID_rcu319 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !6002, metadata !DIExpression()), !dbg !6008
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !6003, metadata !DIExpression()), !dbg !6009
  store i32 %cap, ptr %cap.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cap.addr, metadata !6004, metadata !DIExpression()), !dbg !6010
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !6011
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6005, metadata !DIExpression()), !dbg !6012
  call void @rcu_read_lock() #16, !dbg !6013
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu319) #17, !dbg !6014
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu319, metadata !6006, metadata !DIExpression()), !dbg !6014
  br label %do.body, !dbg !6015

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6017

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6017

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %t.addr, align 8, !dbg !6015
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93, !dbg !6015
  %1 = load volatile ptr, ptr %real_cred, align 8, !dbg !6015
  store ptr %1, ptr %tmp, align 8, !dbg !6017
  %2 = load ptr, ptr %tmp, align 8, !dbg !6015
  store ptr %2, ptr %__UNIQUE_ID_rcu319, align 8, !dbg !6014
  br label %do.body1, !dbg !6014

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !6019

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !6019

do.end3:                                          ; preds = %do.cond2
  %3 = load ptr, ptr %__UNIQUE_ID_rcu319, align 8, !dbg !6014
  store ptr %3, ptr %tmp4, align 8, !dbg !6019
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu319) #17, !dbg !6021
  %4 = load ptr, ptr %tmp4, align 8, !dbg !6014
  %5 = load ptr, ptr %ns.addr, align 8, !dbg !6022
  %6 = load i32, ptr %cap.addr, align 4, !dbg !6023
  %call = call i32 @security_capable(ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef 2) #16, !dbg !6024
  store i32 %call, ptr %ret, align 4, !dbg !6025
  call void @rcu_read_unlock() #16, !dbg !6026
  %7 = load i32, ptr %ret, align 4, !dbg !6027
  %cmp = icmp eq i32 %7, 0, !dbg !6028
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !6029
  ret i1 %cmp, !dbg !6030
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @has_capability_noaudit(ptr noundef %t, i32 noundef %cap) #1 align 16 !dbg !6031 {
entry:
  %t.addr = alloca ptr, align 8
  %cap.addr = alloca i32, align 4
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !6033, metadata !DIExpression()), !dbg !6035
  store i32 %cap, ptr %cap.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cap.addr, metadata !6034, metadata !DIExpression()), !dbg !6036
  %0 = load ptr, ptr %t.addr, align 8, !dbg !6037
  %1 = load i32, ptr %cap.addr, align 4, !dbg !6038
  %call = call zeroext i1 @has_ns_capability_noaudit(ptr noundef %0, ptr noundef @init_user_ns, i32 noundef %1) #16, !dbg !6039
  ret i1 %call, !dbg !6040
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @ns_capable(ptr noundef %ns, i32 noundef %cap) #1 align 16 !dbg !6041 {
entry:
  %ns.addr = alloca ptr, align 8
  %cap.addr = alloca i32, align 4
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !6045, metadata !DIExpression()), !dbg !6047
  store i32 %cap, ptr %cap.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cap.addr, metadata !6046, metadata !DIExpression()), !dbg !6048
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !6049
  %1 = load i32, ptr %cap.addr, align 4, !dbg !6050
  %call = call zeroext i1 @ns_capable_common(ptr noundef %0, i32 noundef %1, i32 noundef 0) #16, !dbg !6051
  ret i1 %call, !dbg !6052
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ns_capable_common(ptr noundef %ns, i32 noundef %cap, i32 noundef %opts) #1 align 16 !dbg !6053 {
entry:
  %retval = alloca i1, align 1
  %ns.addr = alloca ptr, align 8
  %cap.addr = alloca i32, align 4
  %opts.addr = alloca i32, align 4
  %capable = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp16 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !6057, metadata !DIExpression()), !dbg !6061
  store i32 %cap, ptr %cap.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cap.addr, metadata !6058, metadata !DIExpression()), !dbg !6062
  store i32 %opts, ptr %opts.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %opts.addr, metadata !6059, metadata !DIExpression()), !dbg !6063
  call void @llvm.lifetime.start.p0(i64 4, ptr %capable) #17, !dbg !6064
  call void @llvm.dbg.declare(metadata ptr %capable, metadata !6060, metadata !DIExpression()), !dbg !6065
  %0 = load i32, ptr %cap.addr, align 4, !dbg !6066
  %cmp = icmp sge i32 %0, 0, !dbg !6066
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6066

land.rhs:                                         ; preds = %entry
  %1 = load i32, ptr %cap.addr, align 4, !dbg !6066
  %cmp1 = icmp sle i32 %1, 40, !dbg !6066
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !6068
  %lnot = xor i1 %2, true, !dbg !6066
  %lnot2 = xor i1 %lnot, true, !dbg !6066
  %lnot3 = xor i1 %lnot2, true, !dbg !6066
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6066
  %conv = sext i32 %lnot.ext to i64, !dbg !6066
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6066
  %tobool = icmp ne i64 %expval, 0, !dbg !6066
  br i1 %tobool, label %if.then, label %if.end, !dbg !6069

if.then:                                          ; preds = %land.end
  br label %do.body, !dbg !6070

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !6073

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6073

do.end:                                           ; preds = %do.cond
  %3 = load i32, ptr %cap.addr, align 4, !dbg !6070
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, i32 noundef %3) #18, !dbg !6070
  store i32 %call, ptr %tmp, align 4, !dbg !6073
  %4 = load i32, ptr %tmp, align 4, !dbg !6070
  br label %do.body4, !dbg !6075

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !6076

do.body5:                                         ; preds = %do.body4
  br label %do.cond6, !dbg !6078

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6078

do.end7:                                          ; preds = %do.cond6
  br label %do.body8, !dbg !6076

do.body8:                                         ; preds = %do.end7
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 359, i32 0, i64 12) #17, !dbg !6080, !srcloc !6082
  br label %do.cond9, !dbg !6080

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !6080

do.end10:                                         ; preds = %do.cond9
  unreachable, !dbg !6076

do.cond11:                                        ; No predecessors!
  br label %do.end12, !dbg !6076

do.end12:                                         ; preds = %do.cond11
  br label %if.end, !dbg !6083

if.end:                                           ; preds = %do.end12, %land.end
  br label %do.body13, !dbg !6084

do.body13:                                        ; preds = %if.end
  br label %do.cond14, !dbg !6086

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6086

do.end15:                                         ; preds = %do.cond14
  %call17 = call ptr @get_current() #16, !dbg !6084
  %cred = getelementptr inbounds %struct.task_struct, ptr %call17, i32 0, i32 94, !dbg !6084
  %5 = load ptr, ptr %cred, align 32, !dbg !6084
  store ptr %5, ptr %tmp16, align 8, !dbg !6086
  %6 = load ptr, ptr %tmp16, align 8, !dbg !6084
  %7 = load ptr, ptr %ns.addr, align 8, !dbg !6088
  %8 = load i32, ptr %cap.addr, align 4, !dbg !6089
  %9 = load i32, ptr %opts.addr, align 4, !dbg !6090
  %call18 = call i32 @security_capable(ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9) #16, !dbg !6091
  store i32 %call18, ptr %capable, align 4, !dbg !6092
  %10 = load i32, ptr %capable, align 4, !dbg !6093
  %cmp19 = icmp eq i32 %10, 0, !dbg !6095
  br i1 %cmp19, label %if.then21, label %if.end23, !dbg !6096

if.then21:                                        ; preds = %do.end15
  %call22 = call ptr @get_current() #16, !dbg !6097
  %flags = getelementptr inbounds %struct.task_struct, ptr %call22, i32 0, i32 4, !dbg !6099
  %11 = load i32, ptr %flags, align 4, !dbg !6100
  %or = or i32 %11, 256, !dbg !6100
  store i32 %or, ptr %flags, align 4, !dbg !6100
  store i1 true, ptr %retval, align 1, !dbg !6101
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6101

if.end23:                                         ; preds = %do.end15
  store i1 false, ptr %retval, align 1, !dbg !6102
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6102

cleanup:                                          ; preds = %if.end23, %if.then21
  call void @llvm.lifetime.end.p0(i64 4, ptr %capable) #17, !dbg !6103
  %12 = load i1, ptr %retval, align 1, !dbg !6103
  ret i1 %12, !dbg !6103
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @ns_capable_noaudit(ptr noundef %ns, i32 noundef %cap) #1 align 16 !dbg !6104 {
entry:
  %ns.addr = alloca ptr, align 8
  %cap.addr = alloca i32, align 4
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !6106, metadata !DIExpression()), !dbg !6108
  store i32 %cap, ptr %cap.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cap.addr, metadata !6107, metadata !DIExpression()), !dbg !6109
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !6110
  %1 = load i32, ptr %cap.addr, align 4, !dbg !6111
  %call = call zeroext i1 @ns_capable_common(ptr noundef %0, i32 noundef %1, i32 noundef 2) #16, !dbg !6112
  ret i1 %call, !dbg !6113
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @ns_capable_setid(ptr noundef %ns, i32 noundef %cap) #1 align 16 !dbg !6114 {
entry:
  %ns.addr = alloca ptr, align 8
  %cap.addr = alloca i32, align 4
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !6116, metadata !DIExpression()), !dbg !6118
  store i32 %cap, ptr %cap.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cap.addr, metadata !6117, metadata !DIExpression()), !dbg !6119
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !6120
  %1 = load i32, ptr %cap.addr, align 4, !dbg !6121
  %call = call zeroext i1 @ns_capable_common(ptr noundef %0, i32 noundef %1, i32 noundef 4) #16, !dbg !6122
  ret i1 %call, !dbg !6123
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @capable(i32 noundef %cap) #1 align 16 !dbg !6124 {
entry:
  %cap.addr = alloca i32, align 4
  store i32 %cap, ptr %cap.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cap.addr, metadata !6128, metadata !DIExpression()), !dbg !6129
  %0 = load i32, ptr %cap.addr, align 4, !dbg !6130
  %call = call zeroext i1 @ns_capable(ptr noundef @init_user_ns, i32 noundef %0) #16, !dbg !6131
  ret i1 %call, !dbg !6132
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @file_ns_capable(ptr noundef %file, ptr noundef %ns, i32 noundef %cap) #1 align 16 !dbg !6133 {
entry:
  %retval = alloca i1, align 1
  %file.addr = alloca ptr, align 8
  %ns.addr = alloca ptr, align 8
  %cap.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6137, metadata !DIExpression()), !dbg !6146
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !6138, metadata !DIExpression()), !dbg !6147
  store i32 %cap, ptr %cap.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cap.addr, metadata !6139, metadata !DIExpression()), !dbg !6148
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6149
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6140, metadata !DIExpression()), !dbg !6149
  %0 = load i32, ptr %cap.addr, align 4, !dbg !6149
  %cmp = icmp sge i32 %0, 0, !dbg !6149
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6149

land.rhs:                                         ; preds = %entry
  %1 = load i32, ptr %cap.addr, align 4, !dbg !6149
  %cmp1 = icmp sle i32 %1, 40, !dbg !6149
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !6150
  %lnot = xor i1 %2, true, !dbg !6149
  %lnot2 = xor i1 %lnot, true, !dbg !6149
  %lnot3 = xor i1 %lnot2, true, !dbg !6149
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6149
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6149
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !6151
  %tobool = icmp ne i32 %3, 0, !dbg !6151
  %lnot4 = xor i1 %tobool, true, !dbg !6151
  %lnot6 = xor i1 %lnot4, true, !dbg !6151
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !6151
  %conv = sext i32 %lnot.ext7 to i64, !dbg !6151
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6151
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6151
  br i1 %tobool8, label %if.then, label %if.end, !dbg !6149

if.then:                                          ; preds = %land.end
  br label %do.body, !dbg !6151

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !6152
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6143, metadata !DIExpression()), !dbg !6152
  store i32 2307, ptr %__flags, align 4, !dbg !6152
  br label %do.body9, !dbg !6152

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !6153

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !6153

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !6152

do.body10:                                        ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !6155
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 457, i32 %4, i64 12) #17, !dbg !6155, !srcloc !6157
  br label %do.cond11, !dbg !6155

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !6155

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !6152

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !6158

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6158

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !6151
  br label %do.cond16, !dbg !6152

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !6152

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !6152

if.end:                                           ; preds = %do.end17, %land.end
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !6149
  %tobool18 = icmp ne i32 %5, 0, !dbg !6149
  %lnot19 = xor i1 %tobool18, true, !dbg !6149
  %lnot21 = xor i1 %lnot19, true, !dbg !6149
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !6149
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !6149
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !6149
  store i64 %expval24, ptr %tmp, align 8, !dbg !6151
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6160
  %6 = load i64, ptr %tmp, align 8, !dbg !6149
  %tobool25 = icmp ne i64 %6, 0, !dbg !6160
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !6161

if.then26:                                        ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !6162
  br label %return, !dbg !6162

if.end27:                                         ; preds = %if.end
  %7 = load ptr, ptr %file.addr, align 8, !dbg !6163
  %f_cred = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 8, !dbg !6165
  %8 = load ptr, ptr %f_cred, align 8, !dbg !6165
  %9 = load ptr, ptr %ns.addr, align 8, !dbg !6166
  %10 = load i32, ptr %cap.addr, align 4, !dbg !6167
  %call = call i32 @security_capable(ptr noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef 0) #16, !dbg !6168
  %cmp28 = icmp eq i32 %call, 0, !dbg !6169
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !6170

if.then30:                                        ; preds = %if.end27
  store i1 true, ptr %retval, align 1, !dbg !6171
  br label %return, !dbg !6171

if.end31:                                         ; preds = %if.end27
  store i1 false, ptr %retval, align 1, !dbg !6172
  br label %return, !dbg !6172

return:                                           ; preds = %if.end31, %if.then30, %if.then26
  %11 = load i1, ptr %retval, align 1, !dbg !6173
  ret i1 %11, !dbg !6173
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @privileged_wrt_inode_uidgid(ptr noundef %ns, ptr noundef %idmap, ptr noundef %inode) #1 align 16 !dbg !6174 {
entry:
  %ns.addr = alloca ptr, align 8
  %idmap.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.vfsuid_t, align 4
  %agg.tmp3 = alloca %struct.vfsgid_t, align 4
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !6178, metadata !DIExpression()), !dbg !6181
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !6179, metadata !DIExpression()), !dbg !6182
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6180, metadata !DIExpression()), !dbg !6183
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !6184
  %1 = load ptr, ptr %idmap.addr, align 8, !dbg !6185
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !6186
  %call = call i32 @i_uid_into_vfsuid(ptr noundef %1, ptr noundef %2) #16, !dbg !6187
  %coerce.dive = getelementptr inbounds %struct.vfsuid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !6187
  store i32 %call, ptr %coerce.dive, align 4, !dbg !6187
  %coerce.dive1 = getelementptr inbounds %struct.vfsuid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !6188
  %3 = load i32, ptr %coerce.dive1, align 4, !dbg !6188
  %call2 = call zeroext i1 @vfsuid_has_mapping(ptr noundef %0, i32 %3) #16, !dbg !6188
  br i1 %call2, label %land.rhs, label %land.end, !dbg !6189

land.rhs:                                         ; preds = %entry
  %4 = load ptr, ptr %ns.addr, align 8, !dbg !6190
  %5 = load ptr, ptr %idmap.addr, align 8, !dbg !6191
  %6 = load ptr, ptr %inode.addr, align 8, !dbg !6192
  %call4 = call i32 @i_gid_into_vfsgid(ptr noundef %5, ptr noundef %6) #16, !dbg !6193
  %coerce.dive5 = getelementptr inbounds %struct.vfsgid_t, ptr %agg.tmp3, i32 0, i32 0, !dbg !6193
  store i32 %call4, ptr %coerce.dive5, align 4, !dbg !6193
  %coerce.dive6 = getelementptr inbounds %struct.vfsgid_t, ptr %agg.tmp3, i32 0, i32 0, !dbg !6194
  %7 = load i32, ptr %coerce.dive6, align 4, !dbg !6194
  %call7 = call zeroext i1 @vfsgid_has_mapping(ptr noundef %4, i32 %7) #16, !dbg !6194
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %call7, %land.rhs ], !dbg !6195
  ret i1 %8, !dbg !6196
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @vfsuid_has_mapping(ptr noundef %userns, i32 %vfsuid.coerce) #6 align 16 !dbg !6197 {
entry:
  %vfsuid = alloca %struct.vfsuid_t, align 4
  %userns.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.vfsuid_t, ptr %vfsuid, i32 0, i32 0
  store i32 %vfsuid.coerce, ptr %coerce.dive, align 4
  store ptr %userns, ptr %userns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %userns.addr, metadata !6201, metadata !DIExpression()), !dbg !6203
  call void @llvm.dbg.declare(metadata ptr %vfsuid, metadata !6202, metadata !DIExpression()), !dbg !6204
  %0 = load ptr, ptr %userns.addr, align 8, !dbg !6205
  %val = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !6206
  %coerce.dive1 = getelementptr inbounds %struct.vfsuid_t, ptr %vfsuid, i32 0, i32 0, !dbg !6206
  %1 = load i32, ptr %coerce.dive1, align 4, !dbg !6206
  %call = call i32 @__vfsuid_val(i32 %1) #16, !dbg !6206
  store i32 %call, ptr %val, align 4, !dbg !6206
  %coerce.dive2 = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !6207
  %2 = load i32, ptr %coerce.dive2, align 4, !dbg !6207
  %call3 = call i32 @from_kuid(ptr noundef %0, i32 %2) #16, !dbg !6207
  %cmp = icmp ne i32 %call3, -1, !dbg !6208
  ret i1 %cmp, !dbg !6209
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @i_uid_into_vfsuid(ptr noundef %idmap, ptr noundef %inode) #6 align 16 !dbg !6210 {
entry:
  %retval = alloca %struct.vfsuid_t, align 4
  %idmap.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !6214, metadata !DIExpression()), !dbg !6216
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6215, metadata !DIExpression()), !dbg !6217
  %0 = load ptr, ptr %idmap.addr, align 8, !dbg !6218
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !6219
  %call = call ptr @i_user_ns(ptr noundef %1) #16, !dbg !6220
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !6221
  %i_uid = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 2, !dbg !6222
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %i_uid, i32 0, i32 0, !dbg !6223
  %3 = load i32, ptr %coerce.dive, align 4, !dbg !6223
  %call1 = call i32 @make_vfsuid(ptr noundef %0, ptr noundef %call, i32 %3) #16, !dbg !6223
  %coerce.dive2 = getelementptr inbounds %struct.vfsuid_t, ptr %retval, i32 0, i32 0, !dbg !6223
  store i32 %call1, ptr %coerce.dive2, align 4, !dbg !6223
  %coerce.dive3 = getelementptr inbounds %struct.vfsuid_t, ptr %retval, i32 0, i32 0, !dbg !6224
  %4 = load i32, ptr %coerce.dive3, align 4, !dbg !6224
  ret i32 %4, !dbg !6224
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @vfsgid_has_mapping(ptr noundef %userns, i32 %vfsgid.coerce) #6 align 16 !dbg !6225 {
entry:
  %vfsgid = alloca %struct.vfsgid_t, align 4
  %userns.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.vfsgid_t, ptr %vfsgid, i32 0, i32 0
  store i32 %vfsgid.coerce, ptr %coerce.dive, align 4
  store ptr %userns, ptr %userns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %userns.addr, metadata !6229, metadata !DIExpression()), !dbg !6231
  call void @llvm.dbg.declare(metadata ptr %vfsgid, metadata !6230, metadata !DIExpression()), !dbg !6232
  %0 = load ptr, ptr %userns.addr, align 8, !dbg !6233
  %val = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !6234
  %coerce.dive1 = getelementptr inbounds %struct.vfsgid_t, ptr %vfsgid, i32 0, i32 0, !dbg !6234
  %1 = load i32, ptr %coerce.dive1, align 4, !dbg !6234
  %call = call i32 @__vfsgid_val(i32 %1) #16, !dbg !6234
  store i32 %call, ptr %val, align 4, !dbg !6234
  %coerce.dive2 = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !6235
  %2 = load i32, ptr %coerce.dive2, align 4, !dbg !6235
  %call3 = call i32 @from_kgid(ptr noundef %0, i32 %2) #16, !dbg !6235
  %cmp = icmp ne i32 %call3, -1, !dbg !6236
  ret i1 %cmp, !dbg !6237
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @i_gid_into_vfsgid(ptr noundef %idmap, ptr noundef %inode) #6 align 16 !dbg !6238 {
entry:
  %retval = alloca %struct.vfsgid_t, align 4
  %idmap.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !6242, metadata !DIExpression()), !dbg !6244
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6243, metadata !DIExpression()), !dbg !6245
  %0 = load ptr, ptr %idmap.addr, align 8, !dbg !6246
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !6247
  %call = call ptr @i_user_ns(ptr noundef %1) #16, !dbg !6248
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !6249
  %i_gid = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 4, !dbg !6250
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %i_gid, i32 0, i32 0, !dbg !6251
  %3 = load i32, ptr %coerce.dive, align 8, !dbg !6251
  %call1 = call i32 @make_vfsgid(ptr noundef %0, ptr noundef %call, i32 %3) #16, !dbg !6251
  %coerce.dive2 = getelementptr inbounds %struct.vfsgid_t, ptr %retval, i32 0, i32 0, !dbg !6251
  store i32 %call1, ptr %coerce.dive2, align 4, !dbg !6251
  %coerce.dive3 = getelementptr inbounds %struct.vfsgid_t, ptr %retval, i32 0, i32 0, !dbg !6252
  %4 = load i32, ptr %coerce.dive3, align 4, !dbg !6252
  ret i32 %4, !dbg !6252
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @capable_wrt_inode_uidgid(ptr noundef %idmap, ptr noundef %inode, i32 noundef %cap) #1 align 16 !dbg !6253 {
entry:
  %idmap.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %cap.addr = alloca i32, align 4
  %ns = alloca ptr, align 8
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !6257, metadata !DIExpression()), !dbg !6261
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6258, metadata !DIExpression()), !dbg !6262
  store i32 %cap, ptr %cap.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cap.addr, metadata !6259, metadata !DIExpression()), !dbg !6263
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #17, !dbg !6264
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !6260, metadata !DIExpression()), !dbg !6265
  %call = call ptr @current_user_ns() #16, !dbg !6266
  store ptr %call, ptr %ns, align 8, !dbg !6265
  %0 = load ptr, ptr %ns, align 8, !dbg !6267
  %1 = load i32, ptr %cap.addr, align 4, !dbg !6268
  %call1 = call zeroext i1 @ns_capable(ptr noundef %0, i32 noundef %1) #16, !dbg !6269
  br i1 %call1, label %land.rhs, label %land.end, !dbg !6270

land.rhs:                                         ; preds = %entry
  %2 = load ptr, ptr %ns, align 8, !dbg !6271
  %3 = load ptr, ptr %idmap.addr, align 8, !dbg !6272
  %4 = load ptr, ptr %inode.addr, align 8, !dbg !6273
  %call2 = call zeroext i1 @privileged_wrt_inode_uidgid(ptr noundef %2, ptr noundef %3, ptr noundef %4) #16, !dbg !6274
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %call2, %land.rhs ], !dbg !6275
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #17, !dbg !6276
  ret i1 %5, !dbg !6277
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @current_user_ns() #6 align 16 !dbg !6278 {
entry:
  ret ptr @init_user_ns, !dbg !6281
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @ptracer_capable(ptr noundef %tsk, ptr noundef %ns) #1 align 16 !dbg !6282 {
entry:
  %tsk.addr = alloca ptr, align 8
  %ns.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cred = alloca ptr, align 8
  %__UNIQUE_ID_rcu328 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !6286, metadata !DIExpression()), !dbg !6292
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !6287, metadata !DIExpression()), !dbg !6293
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !6294
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6288, metadata !DIExpression()), !dbg !6295
  store i32 0, ptr %ret, align 4, !dbg !6295
  call void @llvm.lifetime.start.p0(i64 8, ptr %cred) #17, !dbg !6296
  call void @llvm.dbg.declare(metadata ptr %cred, metadata !6289, metadata !DIExpression()), !dbg !6297
  call void @rcu_read_lock() #16, !dbg !6298
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu328) #17, !dbg !6299
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu328, metadata !6290, metadata !DIExpression()), !dbg !6299
  br label %do.body, !dbg !6300

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6302

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6302

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !6300
  %ptracer_cred = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 92, !dbg !6300
  %1 = load volatile ptr, ptr %ptracer_cred, align 16, !dbg !6300
  store ptr %1, ptr %tmp, align 8, !dbg !6302
  %2 = load ptr, ptr %tmp, align 8, !dbg !6300
  store ptr %2, ptr %__UNIQUE_ID_rcu328, align 8, !dbg !6299
  br label %do.body1, !dbg !6299

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !6304

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !6304

do.end3:                                          ; preds = %do.cond2
  %3 = load ptr, ptr %__UNIQUE_ID_rcu328, align 8, !dbg !6299
  store ptr %3, ptr %tmp4, align 8, !dbg !6304
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu328) #17, !dbg !6306
  %4 = load ptr, ptr %tmp4, align 8, !dbg !6299
  store ptr %4, ptr %cred, align 8, !dbg !6307
  %5 = load ptr, ptr %cred, align 8, !dbg !6308
  %tobool = icmp ne ptr %5, null, !dbg !6308
  br i1 %tobool, label %if.then, label %if.end, !dbg !6310

if.then:                                          ; preds = %do.end3
  %6 = load ptr, ptr %cred, align 8, !dbg !6311
  %7 = load ptr, ptr %ns.addr, align 8, !dbg !6312
  %call = call i32 @security_capable(ptr noundef %6, ptr noundef %7, i32 noundef 19, i32 noundef 2) #16, !dbg !6313
  store i32 %call, ptr %ret, align 4, !dbg !6314
  br label %if.end, !dbg !6315

if.end:                                           ; preds = %if.then, %do.end3
  call void @rcu_read_unlock() #16, !dbg !6316
  %8 = load i32, ptr %ret, align 4, !dbg !6317
  %cmp = icmp eq i32 %8, 0, !dbg !6318
  call void @llvm.lifetime.end.p0(i64 8, ptr %cred) #17, !dbg !6319
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !6319
  ret i1 %cmp, !dbg !6320
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_capget(ptr noundef %header, ptr noundef %dataptr) #6 align 16 !dbg !6321 {
entry:
  %retval = alloca i64, align 8
  %header.addr = alloca ptr, align 8
  %dataptr.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %pid = alloca i32, align 4
  %tocopy = alloca i32, align 4
  %pE = alloca %struct.kernel_cap_t, align 8
  %pI = alloca %struct.kernel_cap_t, align 8
  %pP = alloca %struct.kernel_cap_t, align 8
  %kdata = alloca [2 x %struct.__user_cap_data_struct], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  %tmp10 = alloca i64, align 8
  store ptr %header, ptr %header.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %header.addr, metadata !6325, metadata !DIExpression()), !dbg !6342
  store ptr %dataptr, ptr %dataptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dataptr.addr, metadata !6326, metadata !DIExpression()), !dbg !6342
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !6343
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6327, metadata !DIExpression()), !dbg !6344
  store i32 0, ptr %ret, align 4, !dbg !6344
  call void @llvm.lifetime.start.p0(i64 4, ptr %pid) #17, !dbg !6345
  call void @llvm.dbg.declare(metadata ptr %pid, metadata !6328, metadata !DIExpression()), !dbg !6346
  call void @llvm.lifetime.start.p0(i64 4, ptr %tocopy) #17, !dbg !6347
  call void @llvm.dbg.declare(metadata ptr %tocopy, metadata !6329, metadata !DIExpression()), !dbg !6348
  call void @llvm.lifetime.start.p0(i64 8, ptr %pE) #17, !dbg !6349
  call void @llvm.dbg.declare(metadata ptr %pE, metadata !6330, metadata !DIExpression()), !dbg !6350
  call void @llvm.lifetime.start.p0(i64 8, ptr %pI) #17, !dbg !6349
  call void @llvm.dbg.declare(metadata ptr %pI, metadata !6331, metadata !DIExpression()), !dbg !6351
  call void @llvm.lifetime.start.p0(i64 8, ptr %pP) #17, !dbg !6349
  call void @llvm.dbg.declare(metadata ptr %pP, metadata !6332, metadata !DIExpression()), !dbg !6352
  call void @llvm.lifetime.start.p0(i64 24, ptr %kdata) #17, !dbg !6353
  call void @llvm.dbg.declare(metadata ptr %kdata, metadata !6333, metadata !DIExpression()), !dbg !6354
  %0 = load ptr, ptr %header.addr, align 8, !dbg !6355
  %call = call i32 @cap_validate_magic(ptr noundef %0, ptr noundef %tocopy) #16, !dbg !6356
  store i32 %call, ptr %ret, align 4, !dbg !6357
  %1 = load ptr, ptr %dataptr.addr, align 8, !dbg !6358
  %cmp = icmp eq ptr %1, null, !dbg !6360
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6361

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %ret, align 4, !dbg !6362
  %cmp1 = icmp ne i32 %2, 0, !dbg !6363
  br i1 %cmp1, label %if.then, label %if.end, !dbg !6364

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %dataptr.addr, align 8, !dbg !6365
  %cmp2 = icmp eq ptr %3, null, !dbg !6366
  br i1 %cmp2, label %land.lhs.true, label %cond.false, !dbg !6367

land.lhs.true:                                    ; preds = %if.then
  %4 = load i32, ptr %ret, align 4, !dbg !6368
  %cmp3 = icmp eq i32 %4, -22, !dbg !6369
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !6370

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end, !dbg !6370

cond.false:                                       ; preds = %land.lhs.true, %if.then
  %5 = load i32, ptr %ret, align 4, !dbg !6371
  br label %cond.end, !dbg !6370

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %5, %cond.false ], !dbg !6370
  %conv = sext i32 %cond to i64, !dbg !6370
  store i64 %conv, ptr %retval, align 8, !dbg !6372
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6372

if.end:                                           ; preds = %lor.lhs.false
  call void @might_fault() #16, !dbg !6373
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #17, !dbg !6374
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !6335, metadata !DIExpression()), !dbg !6374
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu) #17, !dbg !6374
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !6339, metadata !DIExpression()), !dbg !6374
  %6 = call i64 @llvm.read_register.i64(metadata !5879), !dbg !6374
  %7 = load ptr, ptr %header.addr, align 8, !dbg !6374
  %pid4 = getelementptr inbounds %struct.__user_cap_header_struct, ptr %7, i32 0, i32 1, !dbg !6374
  %8 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %pid4, i64 4, i64 %6) #17, !dbg !6374, !srcloc !6375
  %asmresult = extractvalue { ptr, i32, i64 } %8, 0, !dbg !6374
  %asmresult5 = extractvalue { ptr, i32, i64 } %8, 1, !dbg !6374
  %asmresult6 = extractvalue { ptr, i32, i64 } %8, 2, !dbg !6374
  %9 = ptrtoint ptr %asmresult to i64, !dbg !6374
  %10 = trunc i64 %9 to i32, !dbg !6374
  store i32 %10, ptr %__ret_gu, align 4, !dbg !6374
  store i32 %asmresult5, ptr %__val_gu, align 4, !dbg !6374
  call void @llvm.write_register.i64(metadata !5879, i64 %asmresult6), !dbg !6374
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #17, !dbg !6376
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !6340, metadata !DIExpression()), !dbg !6376
  %11 = load i32, ptr %__val_gu, align 4, !dbg !6376
  %conv7 = zext i32 %11 to i64, !dbg !6376
  store i64 %conv7, ptr %__tmp, align 8, !dbg !6376
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #16, !dbg !6376
  %12 = load i64, ptr %__tmp, align 8, !dbg !6376
  %conv9 = trunc i64 %12 to i32, !dbg !6376
  store i32 %conv9, ptr %__val_gu, align 4, !dbg !6376
  store i32 %conv9, ptr %tmp8, align 4, !dbg !6376
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #17, !dbg !6374
  %13 = load i32, ptr %tmp8, align 4, !dbg !6376
  %14 = load i32, ptr %__val_gu, align 4, !dbg !6374
  store i32 %14, ptr %pid, align 4, !dbg !6374
  %15 = load i32, ptr %__ret_gu, align 4, !dbg !6374
  %conv11 = sext i32 %15 to i64, !dbg !6374
  %expval = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !6374
  store i64 %expval, ptr %tmp10, align 8, !dbg !6374
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu) #17, !dbg !6373
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #17, !dbg !6373
  %16 = load i64, ptr %tmp10, align 8, !dbg !6374
  store i64 %16, ptr %tmp, align 8, !dbg !6373
  %17 = load i64, ptr %tmp, align 8, !dbg !6373
  %tobool = icmp ne i64 %17, 0, !dbg !6377
  br i1 %tobool, label %if.then12, label %if.end13, !dbg !6378

if.then12:                                        ; preds = %if.end
  store i64 -14, ptr %retval, align 8, !dbg !6379
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6379

if.end13:                                         ; preds = %if.end
  %18 = load i32, ptr %pid, align 4, !dbg !6380
  %cmp14 = icmp slt i32 %18, 0, !dbg !6382
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !6383

if.then16:                                        ; preds = %if.end13
  store i64 -22, ptr %retval, align 8, !dbg !6384
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6384

if.end17:                                         ; preds = %if.end13
  %19 = load i32, ptr %pid, align 4, !dbg !6385
  %call18 = call i32 @cap_get_target_pid(i32 noundef %19, ptr noundef %pE, ptr noundef %pI, ptr noundef %pP) #16, !dbg !6386
  store i32 %call18, ptr %ret, align 4, !dbg !6387
  %20 = load i32, ptr %ret, align 4, !dbg !6388
  %tobool19 = icmp ne i32 %20, 0, !dbg !6388
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !6390

if.then20:                                        ; preds = %if.end17
  %21 = load i32, ptr %ret, align 4, !dbg !6391
  %conv21 = sext i32 %21 to i64, !dbg !6391
  store i64 %conv21, ptr %retval, align 8, !dbg !6392
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6392

if.end22:                                         ; preds = %if.end17
  %val = getelementptr inbounds %struct.kernel_cap_t, ptr %pE, i32 0, i32 0, !dbg !6393
  %22 = load i64, ptr %val, align 8, !dbg !6393
  %conv23 = trunc i64 %22 to i32, !dbg !6394
  %arrayidx = getelementptr [2 x %struct.__user_cap_data_struct], ptr %kdata, i64 0, i64 0, !dbg !6395
  %effective = getelementptr inbounds %struct.__user_cap_data_struct, ptr %arrayidx, i32 0, i32 0, !dbg !6396
  store i32 %conv23, ptr %effective, align 16, !dbg !6397
  %val24 = getelementptr inbounds %struct.kernel_cap_t, ptr %pE, i32 0, i32 0, !dbg !6398
  %23 = load i64, ptr %val24, align 8, !dbg !6398
  %shr = lshr i64 %23, 32, !dbg !6399
  %conv25 = trunc i64 %shr to i32, !dbg !6400
  %arrayidx26 = getelementptr [2 x %struct.__user_cap_data_struct], ptr %kdata, i64 0, i64 1, !dbg !6401
  %effective27 = getelementptr inbounds %struct.__user_cap_data_struct, ptr %arrayidx26, i32 0, i32 0, !dbg !6402
  store i32 %conv25, ptr %effective27, align 4, !dbg !6403
  %val28 = getelementptr inbounds %struct.kernel_cap_t, ptr %pP, i32 0, i32 0, !dbg !6404
  %24 = load i64, ptr %val28, align 8, !dbg !6404
  %conv29 = trunc i64 %24 to i32, !dbg !6405
  %arrayidx30 = getelementptr [2 x %struct.__user_cap_data_struct], ptr %kdata, i64 0, i64 0, !dbg !6406
  %permitted = getelementptr inbounds %struct.__user_cap_data_struct, ptr %arrayidx30, i32 0, i32 1, !dbg !6407
  store i32 %conv29, ptr %permitted, align 4, !dbg !6408
  %val31 = getelementptr inbounds %struct.kernel_cap_t, ptr %pP, i32 0, i32 0, !dbg !6409
  %25 = load i64, ptr %val31, align 8, !dbg !6409
  %shr32 = lshr i64 %25, 32, !dbg !6410
  %conv33 = trunc i64 %shr32 to i32, !dbg !6411
  %arrayidx34 = getelementptr [2 x %struct.__user_cap_data_struct], ptr %kdata, i64 0, i64 1, !dbg !6412
  %permitted35 = getelementptr inbounds %struct.__user_cap_data_struct, ptr %arrayidx34, i32 0, i32 1, !dbg !6413
  store i32 %conv33, ptr %permitted35, align 4, !dbg !6414
  %val36 = getelementptr inbounds %struct.kernel_cap_t, ptr %pI, i32 0, i32 0, !dbg !6415
  %26 = load i64, ptr %val36, align 8, !dbg !6415
  %conv37 = trunc i64 %26 to i32, !dbg !6416
  %arrayidx38 = getelementptr [2 x %struct.__user_cap_data_struct], ptr %kdata, i64 0, i64 0, !dbg !6417
  %inheritable = getelementptr inbounds %struct.__user_cap_data_struct, ptr %arrayidx38, i32 0, i32 2, !dbg !6418
  store i32 %conv37, ptr %inheritable, align 8, !dbg !6419
  %val39 = getelementptr inbounds %struct.kernel_cap_t, ptr %pI, i32 0, i32 0, !dbg !6420
  %27 = load i64, ptr %val39, align 8, !dbg !6420
  %shr40 = lshr i64 %27, 32, !dbg !6421
  %conv41 = trunc i64 %shr40 to i32, !dbg !6422
  %arrayidx42 = getelementptr [2 x %struct.__user_cap_data_struct], ptr %kdata, i64 0, i64 1, !dbg !6423
  %inheritable43 = getelementptr inbounds %struct.__user_cap_data_struct, ptr %arrayidx42, i32 0, i32 2, !dbg !6424
  store i32 %conv41, ptr %inheritable43, align 4, !dbg !6425
  %28 = load ptr, ptr %dataptr.addr, align 8, !dbg !6426
  %arraydecay = getelementptr inbounds [2 x %struct.__user_cap_data_struct], ptr %kdata, i64 0, i64 0, !dbg !6428
  %29 = load i32, ptr %tocopy, align 4, !dbg !6429
  %conv44 = zext i32 %29 to i64, !dbg !6429
  %mul = mul i64 %conv44, 12, !dbg !6430
  %call45 = call i64 @copy_to_user(ptr noundef %28, ptr noundef %arraydecay, i64 noundef %mul) #16, !dbg !6431
  %tobool46 = icmp ne i64 %call45, 0, !dbg !6431
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !6432

if.then47:                                        ; preds = %if.end22
  store i64 -14, ptr %retval, align 8, !dbg !6433
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6433

if.end48:                                         ; preds = %if.end22
  store i64 0, ptr %retval, align 8, !dbg !6434
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6434

cleanup:                                          ; preds = %if.end48, %if.then47, %if.then20, %if.then16, %if.then12, %cond.end
  call void @llvm.lifetime.end.p0(i64 24, ptr %kdata) #17, !dbg !6435
  call void @llvm.lifetime.end.p0(i64 8, ptr %pP) #17, !dbg !6435
  call void @llvm.lifetime.end.p0(i64 8, ptr %pI) #17, !dbg !6435
  call void @llvm.lifetime.end.p0(i64 8, ptr %pE) #17, !dbg !6435
  call void @llvm.lifetime.end.p0(i64 4, ptr %tocopy) #17, !dbg !6435
  call void @llvm.lifetime.end.p0(i64 4, ptr %pid) #17, !dbg !6435
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !6435
  %30 = load i64, ptr %retval, align 8, !dbg !6435
  ret i64 %30, !dbg !6435
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cap_validate_magic(ptr noundef %header, ptr noundef %tocopy) #1 align 16 !dbg !6436 {
entry:
  %retval = alloca i32, align 4
  %header.addr = alloca ptr, align 8
  %tocopy.addr = alloca ptr, align 8
  %version = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %tmp4 = alloca i32, align 4
  %tmp6 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp10 = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i32, align 4
  %__x = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp14 = alloca i64, align 8
  store ptr %header, ptr %header.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %header.addr, metadata !6440, metadata !DIExpression()), !dbg !6460
  store ptr %tocopy, ptr %tocopy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tocopy.addr, metadata !6441, metadata !DIExpression()), !dbg !6461
  call void @llvm.lifetime.start.p0(i64 4, ptr %version) #17, !dbg !6462
  call void @llvm.dbg.declare(metadata ptr %version, metadata !6442, metadata !DIExpression()), !dbg !6463
  call void @might_fault() #16, !dbg !6464
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #17, !dbg !6465
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !6443, metadata !DIExpression()), !dbg !6465
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu) #17, !dbg !6465
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !6447, metadata !DIExpression()), !dbg !6465
  %0 = call i64 @llvm.read_register.i64(metadata !5879), !dbg !6465
  %1 = load ptr, ptr %header.addr, align 8, !dbg !6465
  %version1 = getelementptr inbounds %struct.__user_cap_header_struct, ptr %1, i32 0, i32 0, !dbg !6465
  %2 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %version1, i64 4, i64 %0) #17, !dbg !6465, !srcloc !6466
  %asmresult = extractvalue { ptr, i32, i64 } %2, 0, !dbg !6465
  %asmresult2 = extractvalue { ptr, i32, i64 } %2, 1, !dbg !6465
  %asmresult3 = extractvalue { ptr, i32, i64 } %2, 2, !dbg !6465
  %3 = ptrtoint ptr %asmresult to i64, !dbg !6465
  %4 = trunc i64 %3 to i32, !dbg !6465
  store i32 %4, ptr %__ret_gu, align 4, !dbg !6465
  store i32 %asmresult2, ptr %__val_gu, align 4, !dbg !6465
  call void @llvm.write_register.i64(metadata !5879, i64 %asmresult3), !dbg !6465
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #17, !dbg !6467
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !6448, metadata !DIExpression()), !dbg !6467
  %5 = load i32, ptr %__val_gu, align 4, !dbg !6467
  %conv = zext i32 %5 to i64, !dbg !6467
  store i64 %conv, ptr %__tmp, align 8, !dbg !6467
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #16, !dbg !6467
  %6 = load i64, ptr %__tmp, align 8, !dbg !6467
  %conv5 = trunc i64 %6 to i32, !dbg !6467
  store i32 %conv5, ptr %__val_gu, align 4, !dbg !6467
  store i32 %conv5, ptr %tmp4, align 4, !dbg !6467
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #17, !dbg !6465
  %7 = load i32, ptr %tmp4, align 4, !dbg !6467
  %8 = load i32, ptr %__val_gu, align 4, !dbg !6465
  store i32 %8, ptr %version, align 4, !dbg !6465
  %9 = load i32, ptr %__ret_gu, align 4, !dbg !6465
  %conv7 = sext i32 %9 to i64, !dbg !6465
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !6465
  store i64 %expval, ptr %tmp6, align 8, !dbg !6465
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu) #17, !dbg !6464
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #17, !dbg !6464
  %10 = load i64, ptr %tmp6, align 8, !dbg !6465
  store i64 %10, ptr %tmp, align 8, !dbg !6464
  %11 = load i64, ptr %tmp, align 8, !dbg !6464
  %tobool = icmp ne i64 %11, 0, !dbg !6468
  br i1 %tobool, label %if.then, label %if.end, !dbg !6469

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !6470
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6470

if.end:                                           ; preds = %entry
  %12 = load i32, ptr %version, align 4, !dbg !6471
  switch i32 %12, label %sw.default [
    i32 429392688, label %sw.bb
    i32 537333798, label %sw.bb8
    i32 537396514, label %sw.bb9
  ], !dbg !6472

sw.bb:                                            ; preds = %if.end
  call void @warn_legacy_capability_use() #16, !dbg !6473
  %13 = load ptr, ptr %tocopy.addr, align 8, !dbg !6474
  store i32 1, ptr %13, align 4, !dbg !6475
  br label %sw.epilog, !dbg !6476

sw.bb8:                                           ; preds = %if.end
  call void @warn_deprecated_v2() #16, !dbg !6477
  br label %sw.bb9, !dbg !6477

sw.bb9:                                           ; preds = %if.end, %sw.bb8
  %14 = load ptr, ptr %tocopy.addr, align 8, !dbg !6478
  store i32 2, ptr %14, align 4, !dbg !6479
  br label %sw.epilog, !dbg !6480

sw.default:                                       ; preds = %if.end
  call void @might_fault() #16, !dbg !6481
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #17, !dbg !6482
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !6450, metadata !DIExpression()), !dbg !6482
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #17, !dbg !6482
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !6455, metadata !DIExpression()), !dbg !6482
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu) #17, !dbg !6482
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !6456, metadata !DIExpression()), !dbg !6482
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #17, !dbg !6482
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !6457, metadata !DIExpression()), !dbg !6482
  store i32 537396514, ptr %__x, align 4, !dbg !6482
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #17, !dbg !6482
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6458, metadata !DIExpression()), !dbg !6482
  %15 = load ptr, ptr %header.addr, align 8, !dbg !6482
  %version11 = getelementptr inbounds %struct.__user_cap_header_struct, ptr %15, i32 0, i32 0, !dbg !6482
  store ptr %version11, ptr %__ptr, align 8, !dbg !6482
  %16 = load ptr, ptr %__ptr, align 8, !dbg !6482
  store ptr %16, ptr %__ptr_pu, align 8, !dbg !6482
  %17 = load i32, ptr %__x, align 4, !dbg !6482
  store i32 %17, ptr %__val_pu, align 4, !dbg !6482
  %18 = call i64 @llvm.read_register.i64(metadata !5879), !dbg !6482
  %19 = load ptr, ptr %__ptr_pu, align 8, !dbg !6482
  %20 = load i32, ptr %__val_pu, align 4, !dbg !6482
  %21 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %19, i32 %20, i64 4, i64 %18) #17, !dbg !6482, !srcloc !6483
  %asmresult12 = extractvalue { ptr, i64 } %21, 0, !dbg !6482
  %asmresult13 = extractvalue { ptr, i64 } %21, 1, !dbg !6482
  %22 = ptrtoint ptr %asmresult12 to i64, !dbg !6482
  %23 = trunc i64 %22 to i32, !dbg !6482
  store i32 %23, ptr %__ret_pu, align 4, !dbg !6482
  call void @llvm.write_register.i64(metadata !5879, i64 %asmresult13), !dbg !6482
  %24 = load ptr, ptr %__ptr, align 8, !dbg !6484
  call void @kmsan_copy_to_user(ptr noundef %24, ptr noundef %__x, i64 noundef 4, i64 noundef 0) #16, !dbg !6484
  %25 = load i32, ptr %__ret_pu, align 4, !dbg !6482
  %conv15 = sext i32 %25 to i64, !dbg !6482
  %expval16 = call i64 @llvm.expect.i64(i64 %conv15, i64 0), !dbg !6482
  store i64 %expval16, ptr %tmp14, align 8, !dbg !6482
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #17, !dbg !6481
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #17, !dbg !6481
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu) #17, !dbg !6481
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #17, !dbg !6481
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #17, !dbg !6481
  %26 = load i64, ptr %tmp14, align 8, !dbg !6482
  store i64 %26, ptr %tmp10, align 8, !dbg !6481
  %27 = load i64, ptr %tmp10, align 8, !dbg !6481
  %tobool17 = icmp ne i64 %27, 0, !dbg !6486
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !6487

if.then18:                                        ; preds = %sw.default
  store i32 -14, ptr %retval, align 4, !dbg !6488
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6488

if.end19:                                         ; preds = %sw.default
  store i32 -22, ptr %retval, align 4, !dbg !6489
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6489

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb
  store i32 0, ptr %retval, align 4, !dbg !6490
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6490

cleanup:                                          ; preds = %sw.epilog, %if.end19, %if.then18, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %version) #17, !dbg !6491
  %28 = load i32, ptr %retval, align 4, !dbg !6491
  ret i32 %28, !dbg !6491
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #6 align 16 !dbg !6492 {
entry:
  ret void, !dbg !6494
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #6 align 16 !dbg !6495 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6500, metadata !DIExpression()), !dbg !6502
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6501, metadata !DIExpression()), !dbg !6503
  ret void, !dbg !6504
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cap_get_target_pid(i32 noundef %pid, ptr noundef %pEp, ptr noundef %pIp, ptr noundef %pPp) #6 align 16 !dbg !6505 {
entry:
  %pid.addr = alloca i32, align 4
  %pEp.addr = alloca ptr, align 8
  %pIp.addr = alloca ptr, align 8
  %pPp.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %target = alloca ptr, align 8
  store i32 %pid, ptr %pid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !6510, metadata !DIExpression()), !dbg !6520
  store ptr %pEp, ptr %pEp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pEp.addr, metadata !6511, metadata !DIExpression()), !dbg !6521
  store ptr %pIp, ptr %pIp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pIp.addr, metadata !6512, metadata !DIExpression()), !dbg !6522
  store ptr %pPp, ptr %pPp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pPp.addr, metadata !6513, metadata !DIExpression()), !dbg !6523
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !6524
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6514, metadata !DIExpression()), !dbg !6525
  %0 = load i32, ptr %pid.addr, align 4, !dbg !6526
  %tobool = icmp ne i32 %0, 0, !dbg !6526
  br i1 %tobool, label %land.lhs.true, label %if.else6, !dbg !6527

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %pid.addr, align 4, !dbg !6528
  %call = call ptr @get_current() #16, !dbg !6529
  %call1 = call i32 @task_pid_vnr(ptr noundef %call) #16, !dbg !6530
  %cmp = icmp ne i32 %1, %call1, !dbg !6531
  br i1 %cmp, label %if.then, label %if.else6, !dbg !6532

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %target) #17, !dbg !6533
  call void @llvm.dbg.declare(metadata ptr %target, metadata !6515, metadata !DIExpression()), !dbg !6534
  call void @rcu_read_lock() #16, !dbg !6535
  %2 = load i32, ptr %pid.addr, align 4, !dbg !6536
  %call2 = call ptr @find_task_by_vpid(i32 noundef %2) #16, !dbg !6537
  store ptr %call2, ptr %target, align 8, !dbg !6538
  %3 = load ptr, ptr %target, align 8, !dbg !6539
  %tobool3 = icmp ne ptr %3, null, !dbg !6539
  br i1 %tobool3, label %if.else, label %if.then4, !dbg !6541

if.then4:                                         ; preds = %if.then
  store i32 -3, ptr %ret, align 4, !dbg !6542
  br label %if.end, !dbg !6543

if.else:                                          ; preds = %if.then
  %4 = load ptr, ptr %target, align 8, !dbg !6544
  %5 = load ptr, ptr %pEp.addr, align 8, !dbg !6545
  %6 = load ptr, ptr %pIp.addr, align 8, !dbg !6546
  %7 = load ptr, ptr %pPp.addr, align 8, !dbg !6547
  %call5 = call i32 @security_capget(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #16, !dbg !6548
  store i32 %call5, ptr %ret, align 4, !dbg !6549
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  call void @rcu_read_unlock() #16, !dbg !6550
  call void @llvm.lifetime.end.p0(i64 8, ptr %target) #17, !dbg !6551
  br label %if.end9, !dbg !6552

if.else6:                                         ; preds = %land.lhs.true, %entry
  %call7 = call ptr @get_current() #16, !dbg !6553
  %8 = load ptr, ptr %pEp.addr, align 8, !dbg !6554
  %9 = load ptr, ptr %pIp.addr, align 8, !dbg !6555
  %10 = load ptr, ptr %pPp.addr, align 8, !dbg !6556
  %call8 = call i32 @security_capget(ptr noundef %call7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #16, !dbg !6557
  store i32 %call8, ptr %ret, align 4, !dbg !6558
  br label %if.end9

if.end9:                                          ; preds = %if.else6, %if.end
  %11 = load i32, ptr %ret, align 4, !dbg !6559
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !6560
  ret i32 %11, !dbg !6561
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #4 align 16 !dbg !6562 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6567, metadata !DIExpression()), !dbg !6570
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6568, metadata !DIExpression()), !dbg !6571
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6569, metadata !DIExpression()), !dbg !6572
  %0 = load ptr, ptr %from.addr, align 8, !dbg !6573
  %1 = load i64, ptr %n.addr, align 8, !dbg !6575
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #16, !dbg !6576
  br i1 %call, label %if.then, label %if.end, !dbg !6577

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6578
  %3 = load ptr, ptr %from.addr, align 8, !dbg !6579
  %4 = load i64, ptr %n.addr, align 8, !dbg !6580
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #16, !dbg !6581
  store i64 %call1, ptr %n.addr, align 8, !dbg !6582
  br label %if.end, !dbg !6583

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6584
  ret i64 %5, !dbg !6585
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @warn_legacy_capability_use() #1 align 16 !dbg !5840 {
entry:
  %name = alloca [16 x i8], align 16
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %tmp17 = alloca i32, align 4
  %tmp21 = alloca ptr, align 8
  %tmp25 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %name) #17, !dbg !6586
  call void @llvm.dbg.declare(metadata ptr %name, metadata !5842, metadata !DIExpression()), !dbg !6587
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #17, !dbg !6588
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !5843, metadata !DIExpression()), !dbg !6588
  store i8 1, ptr %__ret_do_once, align 1, !dbg !6588
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #17, !dbg !6589
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !5845, metadata !DIExpression()), !dbg !6589
  %0 = load i8, ptr %__ret_do_once, align 1, !dbg !6589, !range !6590, !noundef !1019
  %tobool = trunc i8 %0 to i1, !dbg !6589
  %lnot = xor i1 %tobool, true, !dbg !6589
  %lnot1 = xor i1 %lnot, true, !dbg !6589
  %frombool = zext i1 %lnot1 to i8, !dbg !6589
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !6589
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #17, !dbg !6589
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !5848, metadata !DIExpression()), !dbg !6589
  store i8 0, ptr %__ret_once, align 1, !dbg !6589
  %1 = load i8, ptr %__ret_cond, align 1, !dbg !6591, !range !6590, !noundef !1019
  %tobool2 = trunc i8 %1 to i1, !dbg !6591
  br i1 %tobool2, label %land.rhs, label %land.end, !dbg !6591

land.rhs:                                         ; preds = %entry
  %2 = load i8, ptr @warn_legacy_capability_use.__already_done, align 1, !dbg !6591, !range !6590, !noundef !1019
  %tobool3 = trunc i8 %2 to i1, !dbg !6591
  %lnot4 = xor i1 %tobool3, true, !dbg !6591
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %lnot4, %land.rhs ], !dbg !6593
  %lnot5 = xor i1 %3, true, !dbg !6591
  %lnot6 = xor i1 %lnot5, true, !dbg !6591
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6591
  %conv = sext i32 %lnot.ext to i64, !dbg !6591
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6591
  %tobool7 = icmp ne i64 %expval, 0, !dbg !6591
  br i1 %tobool7, label %if.then, label %if.end, !dbg !6589

if.then:                                          ; preds = %land.end
  store i8 1, ptr @warn_legacy_capability_use.__already_done, align 1, !dbg !6594
  store i8 1, ptr %__ret_once, align 1, !dbg !6594
  br label %if.end, !dbg !6594

if.end:                                           ; preds = %if.then, %land.end
  %4 = load i8, ptr %__ret_once, align 1, !dbg !6589, !range !6590, !noundef !1019
  %tobool8 = trunc i8 %4 to i1, !dbg !6589
  %lnot9 = xor i1 %tobool8, true, !dbg !6589
  %lnot11 = xor i1 %lnot9, true, !dbg !6589
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !6589
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !6589
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !6589
  store i64 %expval14, ptr %tmp, align 8, !dbg !6591
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #17, !dbg !6596
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #17, !dbg !6596
  %5 = load i64, ptr %tmp, align 8, !dbg !6589
  %tobool15 = icmp ne i64 %5, 0, !dbg !6596
  br i1 %tobool15, label %if.then16, label %if.end24, !dbg !6588

if.then16:                                        ; preds = %if.end
  br label %do.body, !dbg !6597

do.body:                                          ; preds = %if.then16
  br label %do.cond, !dbg !6599

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6599

do.end:                                           ; preds = %do.cond
  br label %do.body18, !dbg !6601

do.body18:                                        ; preds = %do.end
  br label %do.cond19, !dbg !6603

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !6603

do.end20:                                         ; preds = %do.cond19
  %arraydecay = getelementptr inbounds [16 x i8], ptr %name, i64 0, i64 0, !dbg !6601
  %call = call ptr @get_current() #16, !dbg !6601
  %call22 = call ptr @__get_task_comm(ptr noundef %arraydecay, i64 noundef 16, ptr noundef %call) #16, !dbg !6601
  store ptr %call22, ptr %tmp21, align 8, !dbg !6603
  %6 = load ptr, ptr %tmp21, align 8, !dbg !6601
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, ptr noundef %6) #18, !dbg !6597
  store i32 %call23, ptr %tmp17, align 4, !dbg !6599
  %7 = load i32, ptr %tmp17, align 4, !dbg !6597
  br label %if.end24, !dbg !6596

if.end24:                                         ; preds = %do.end20, %if.end
  %8 = load i8, ptr %__ret_do_once, align 1, !dbg !6588, !range !6590, !noundef !1019
  %tobool26 = trunc i8 %8 to i1, !dbg !6588
  %lnot27 = xor i1 %tobool26, true, !dbg !6588
  %lnot29 = xor i1 %lnot27, true, !dbg !6588
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !6588
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !6588
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !6588
  store i64 %expval32, ptr %tmp25, align 8, !dbg !6596
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #17, !dbg !6605
  %9 = load i64, ptr %tmp25, align 8, !dbg !6588
  call void @llvm.lifetime.end.p0(i64 16, ptr %name) #17, !dbg !6606
  ret void, !dbg !6606
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @warn_deprecated_v2() #1 align 16 !dbg !5856 {
entry:
  %name = alloca [16 x i8], align 16
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %tmp17 = alloca i32, align 4
  %tmp21 = alloca ptr, align 8
  %tmp25 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %name) #17, !dbg !6607
  call void @llvm.dbg.declare(metadata ptr %name, metadata !5858, metadata !DIExpression()), !dbg !6608
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #17, !dbg !6609
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !5859, metadata !DIExpression()), !dbg !6609
  store i8 1, ptr %__ret_do_once, align 1, !dbg !6609
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #17, !dbg !6610
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !5861, metadata !DIExpression()), !dbg !6610
  %0 = load i8, ptr %__ret_do_once, align 1, !dbg !6610, !range !6590, !noundef !1019
  %tobool = trunc i8 %0 to i1, !dbg !6610
  %lnot = xor i1 %tobool, true, !dbg !6610
  %lnot1 = xor i1 %lnot, true, !dbg !6610
  %frombool = zext i1 %lnot1 to i8, !dbg !6610
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !6610
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #17, !dbg !6610
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !5864, metadata !DIExpression()), !dbg !6610
  store i8 0, ptr %__ret_once, align 1, !dbg !6610
  %1 = load i8, ptr %__ret_cond, align 1, !dbg !6611, !range !6590, !noundef !1019
  %tobool2 = trunc i8 %1 to i1, !dbg !6611
  br i1 %tobool2, label %land.rhs, label %land.end, !dbg !6611

land.rhs:                                         ; preds = %entry
  %2 = load i8, ptr @warn_deprecated_v2.__already_done, align 1, !dbg !6611, !range !6590, !noundef !1019
  %tobool3 = trunc i8 %2 to i1, !dbg !6611
  %lnot4 = xor i1 %tobool3, true, !dbg !6611
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %lnot4, %land.rhs ], !dbg !6613
  %lnot5 = xor i1 %3, true, !dbg !6611
  %lnot6 = xor i1 %lnot5, true, !dbg !6611
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6611
  %conv = sext i32 %lnot.ext to i64, !dbg !6611
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6611
  %tobool7 = icmp ne i64 %expval, 0, !dbg !6611
  br i1 %tobool7, label %if.then, label %if.end, !dbg !6610

if.then:                                          ; preds = %land.end
  store i8 1, ptr @warn_deprecated_v2.__already_done, align 1, !dbg !6614
  store i8 1, ptr %__ret_once, align 1, !dbg !6614
  br label %if.end, !dbg !6614

if.end:                                           ; preds = %if.then, %land.end
  %4 = load i8, ptr %__ret_once, align 1, !dbg !6610, !range !6590, !noundef !1019
  %tobool8 = trunc i8 %4 to i1, !dbg !6610
  %lnot9 = xor i1 %tobool8, true, !dbg !6610
  %lnot11 = xor i1 %lnot9, true, !dbg !6610
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !6610
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !6610
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !6610
  store i64 %expval14, ptr %tmp, align 8, !dbg !6611
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #17, !dbg !6616
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #17, !dbg !6616
  %5 = load i64, ptr %tmp, align 8, !dbg !6610
  %tobool15 = icmp ne i64 %5, 0, !dbg !6616
  br i1 %tobool15, label %if.then16, label %if.end24, !dbg !6609

if.then16:                                        ; preds = %if.end
  br label %do.body, !dbg !6617

do.body:                                          ; preds = %if.then16
  br label %do.cond, !dbg !6619

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6619

do.end:                                           ; preds = %do.cond
  br label %do.body18, !dbg !6621

do.body18:                                        ; preds = %do.end
  br label %do.cond19, !dbg !6623

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !6623

do.end20:                                         ; preds = %do.cond19
  %arraydecay = getelementptr inbounds [16 x i8], ptr %name, i64 0, i64 0, !dbg !6621
  %call = call ptr @get_current() #16, !dbg !6621
  %call22 = call ptr @__get_task_comm(ptr noundef %arraydecay, i64 noundef 16, ptr noundef %call) #16, !dbg !6621
  store ptr %call22, ptr %tmp21, align 8, !dbg !6623
  %6 = load ptr, ptr %tmp21, align 8, !dbg !6621
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef %6) #18, !dbg !6617
  store i32 %call23, ptr %tmp17, align 4, !dbg !6619
  %7 = load i32, ptr %tmp17, align 4, !dbg !6617
  br label %if.end24, !dbg !6616

if.end24:                                         ; preds = %do.end20, %if.end
  %8 = load i8, ptr %__ret_do_once, align 1, !dbg !6609, !range !6590, !noundef !1019
  %tobool26 = trunc i8 %8 to i1, !dbg !6609
  %lnot27 = xor i1 %tobool26, true, !dbg !6609
  %lnot29 = xor i1 %lnot27, true, !dbg !6609
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !6609
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !6609
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !6609
  store i64 %expval32, ptr %tmp25, align 8, !dbg !6616
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #17, !dbg !6625
  %9 = load i64, ptr %tmp25, align 8, !dbg !6609
  call void @llvm.lifetime.end.p0(i64 16, ptr %name) #17, !dbg !6626
  ret void, !dbg !6626
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %to_copy, i64 noundef %left) #6 align 16 !dbg !6627 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to_copy.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6631, metadata !DIExpression()), !dbg !6635
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6632, metadata !DIExpression()), !dbg !6636
  store i64 %to_copy, ptr %to_copy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_copy.addr, metadata !6633, metadata !DIExpression()), !dbg !6637
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !6634, metadata !DIExpression()), !dbg !6638
  ret void, !dbg !6639
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6640 dso_local i32 @_printk(ptr noundef, ...) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6644 dso_local ptr @__get_task_comm(ptr noundef, i64 noundef, ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #4 align 16 !dbg !6647 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #17, !dbg !6658
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6652, metadata !DIExpression()), !dbg !6658
  br label %do.body, !dbg !6658

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !6659
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6654, metadata !DIExpression()), !dbg !6659
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6659
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6659
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !6658
  br label %do.cond, !dbg !6659

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6659

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #17, !dbg !6660
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6656, metadata !DIExpression()), !dbg !6660
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #19, !dbg !6660, !srcloc !6661
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6660
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6660
  %3 = inttoptr i64 %2 to ptr, !dbg !6660
  store ptr %3, ptr %tmp, align 8, !dbg !6660
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #17, !dbg !6658
  %4 = load ptr, ptr %tmp, align 8, !dbg !6660
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6658
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6658
  store ptr %5, ptr %tmp1, align 8, !dbg !6658
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #17, !dbg !6662
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6658
  ret ptr %6, !dbg !6663
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_pid_vnr(ptr noundef %tsk) #6 align 16 !dbg !6664 {
entry:
  %tsk.addr = alloca ptr, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !6668, metadata !DIExpression()), !dbg !6669
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !6670
  %call = call i32 @__task_pid_nr_ns(ptr noundef %0, i32 noundef 0, ptr noundef null) #16, !dbg !6671
  ret i32 %call, !dbg !6672
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6673 dso_local ptr @find_task_by_vpid(i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6676 dso_local i32 @security_capget(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6679 dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #4 align 16 !dbg !6682 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6686, metadata !DIExpression()), !dbg !6696
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6687, metadata !DIExpression()), !dbg !6697
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !6688, metadata !DIExpression()), !dbg !6698
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #17, !dbg !6699
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !6689, metadata !DIExpression()), !dbg !6700
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6701
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !6702
  %conv = trunc i64 %1 to i32, !dbg !6702
  store i32 %conv, ptr %sz, align 4, !dbg !6700
  %2 = load i32, ptr %sz, align 4, !dbg !6703
  %cmp = icmp sge i32 %2, 0, !dbg !6703
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6703

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !6703
  %conv2 = sext i32 %3 to i64, !dbg !6703
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !6703
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !6703
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !6705
  %lnot = xor i1 %5, true, !dbg !6703
  %lnot5 = xor i1 %lnot, true, !dbg !6703
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6703
  %conv6 = sext i32 %lnot.ext to i64, !dbg !6703
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !6703
  %tobool = icmp ne i64 %expval, 0, !dbg !6703
  br i1 %tobool, label %if.then, label %if.end12, !dbg !6706

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !6707
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6710
  br i1 %7, label %if.else, label %if.then7, !dbg !6711

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !6712
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !6713
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #16, !dbg !6714
  br label %if.end11, !dbg !6714

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !6715, !range !6590, !noundef !1019
  %tobool8 = trunc i8 %10 to i1, !dbg !6715
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !6717

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #16, !dbg !6718, !srcloc !6719
  br label %if.end, !dbg !6718

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #16, !dbg !6720, !srcloc !6721
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !6722
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6722

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6723
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6690, metadata !DIExpression()), !dbg !6723
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !6723
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !6723
  %lnot15 = xor i1 %cmp13, true, !dbg !6723
  %lnot17 = xor i1 %lnot15, true, !dbg !6723
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !6723
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !6723
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6724
  %tobool19 = icmp ne i32 %12, 0, !dbg !6724
  %lnot20 = xor i1 %tobool19, true, !dbg !6724
  %lnot22 = xor i1 %lnot20, true, !dbg !6724
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6724
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !6724
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !6724
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !6724
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !6723

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !6724

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !6725
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6693, metadata !DIExpression()), !dbg !6725
  store i32 2307, ptr %__flags, align 4, !dbg !6725
  br label %do.body28, !dbg !6725

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !6726

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !6726

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !6725

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !6728
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 249, i32 %13, i64 12) #17, !dbg !6728, !srcloc !6730
  br label %do.cond30, !dbg !6728

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6728

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !6725

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !6731

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6731

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !6724
  br label %do.cond35, !dbg !6725

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !6725

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !6725

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !6723
  %tobool38 = icmp ne i32 %14, 0, !dbg !6723
  %lnot39 = xor i1 %tobool38, true, !dbg !6723
  %lnot41 = xor i1 %lnot39, true, !dbg !6723
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !6723
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !6723
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !6723
  store i64 %expval44, ptr %tmp, align 8, !dbg !6724
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6733
  %15 = load i64, ptr %tmp, align 8, !dbg !6723
  %tobool45 = icmp ne i64 %15, 0, !dbg !6733
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !6734

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !6735
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6735

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !6736
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !6737
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !6738, !range !6590, !noundef !1019
  %tobool48 = trunc i8 %18 to i1, !dbg !6738
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #16, !dbg !6739
  store i1 true, ptr %retval, align 1, !dbg !6740
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6740

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #17, !dbg !6741
  %19 = load i1, ptr %retval, align 1, !dbg !6741
  ret i1 %19, !dbg !6741
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6742 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #6 align 16 !dbg !6743 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6747, metadata !DIExpression()), !dbg !6749
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6748, metadata !DIExpression()), !dbg !6750
  %0 = load i32, ptr %size.addr, align 4, !dbg !6751
  %1 = load i64, ptr %count.addr, align 8, !dbg !6753
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #16, !dbg !6754
  ret void, !dbg !6755
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6756 dso_local void @__bad_copy_from() #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6757 dso_local void @__bad_copy_to() #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #6 align 16 !dbg !6758 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6762, metadata !DIExpression()), !dbg !6765
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6763, metadata !DIExpression()), !dbg !6766
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !6764, metadata !DIExpression()), !dbg !6767
  ret void, !dbg !6768
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6769 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_capset(ptr noundef %header, ptr noundef %data) #6 align 16 !dbg !6770 {
entry:
  %retval = alloca i64, align 8
  %header.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %kdata = alloca [2 x %struct.__user_cap_data_struct], align 16
  %tocopy = alloca i32, align 4
  %copybytes = alloca i32, align 4
  %inheritable = alloca %struct.kernel_cap_t, align 8
  %permitted = alloca %struct.kernel_cap_t, align 8
  %effective = alloca %struct.kernel_cap_t, align 8
  %new = alloca ptr, align 8
  %ret = alloca i32, align 4
  %pid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %tmp5 = alloca i32, align 4
  %tmp7 = alloca i64, align 8
  %tmp31 = alloca %struct.kernel_cap_t, align 8
  %tmp36 = alloca %struct.kernel_cap_t, align 8
  %tmp43 = alloca %struct.kernel_cap_t, align 8
  %tmp54 = alloca ptr, align 8
  %tmp64 = alloca ptr, align 8
  store ptr %header, ptr %header.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %header.addr, metadata !6775, metadata !DIExpression()), !dbg !6795
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6776, metadata !DIExpression()), !dbg !6795
  call void @llvm.lifetime.start.p0(i64 24, ptr %kdata) #17, !dbg !6796
  call void @llvm.dbg.declare(metadata ptr %kdata, metadata !6777, metadata !DIExpression()), !dbg !6797
  call void @llvm.memset.p0.i64(ptr align 16 %kdata, i8 0, i64 24, i1 false), !dbg !6797
  call void @llvm.lifetime.start.p0(i64 4, ptr %tocopy) #17, !dbg !6798
  call void @llvm.dbg.declare(metadata ptr %tocopy, metadata !6778, metadata !DIExpression()), !dbg !6799
  call void @llvm.lifetime.start.p0(i64 4, ptr %copybytes) #17, !dbg !6798
  call void @llvm.dbg.declare(metadata ptr %copybytes, metadata !6779, metadata !DIExpression()), !dbg !6800
  call void @llvm.lifetime.start.p0(i64 8, ptr %inheritable) #17, !dbg !6801
  call void @llvm.dbg.declare(metadata ptr %inheritable, metadata !6780, metadata !DIExpression()), !dbg !6802
  call void @llvm.lifetime.start.p0(i64 8, ptr %permitted) #17, !dbg !6801
  call void @llvm.dbg.declare(metadata ptr %permitted, metadata !6781, metadata !DIExpression()), !dbg !6803
  call void @llvm.lifetime.start.p0(i64 8, ptr %effective) #17, !dbg !6801
  call void @llvm.dbg.declare(metadata ptr %effective, metadata !6782, metadata !DIExpression()), !dbg !6804
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #17, !dbg !6805
  call void @llvm.dbg.declare(metadata ptr %new, metadata !6783, metadata !DIExpression()), !dbg !6806
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !6807
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6785, metadata !DIExpression()), !dbg !6808
  call void @llvm.lifetime.start.p0(i64 4, ptr %pid) #17, !dbg !6809
  call void @llvm.dbg.declare(metadata ptr %pid, metadata !6786, metadata !DIExpression()), !dbg !6810
  %0 = load ptr, ptr %header.addr, align 8, !dbg !6811
  %call = call i32 @cap_validate_magic(ptr noundef %0, ptr noundef %tocopy) #16, !dbg !6812
  store i32 %call, ptr %ret, align 4, !dbg !6813
  %1 = load i32, ptr %ret, align 4, !dbg !6814
  %cmp = icmp ne i32 %1, 0, !dbg !6816
  br i1 %cmp, label %if.then, label %if.end, !dbg !6817

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ret, align 4, !dbg !6818
  %conv = sext i32 %2 to i64, !dbg !6818
  store i64 %conv, ptr %retval, align 8, !dbg !6819
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6819

if.end:                                           ; preds = %entry
  call void @might_fault() #16, !dbg !6820
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #17, !dbg !6821
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !6787, metadata !DIExpression()), !dbg !6821
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu) #17, !dbg !6821
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !6791, metadata !DIExpression()), !dbg !6821
  %3 = call i64 @llvm.read_register.i64(metadata !5879), !dbg !6821
  %4 = load ptr, ptr %header.addr, align 8, !dbg !6821
  %pid1 = getelementptr inbounds %struct.__user_cap_header_struct, ptr %4, i32 0, i32 1, !dbg !6821
  %5 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %pid1, i64 4, i64 %3) #17, !dbg !6821, !srcloc !6822
  %asmresult = extractvalue { ptr, i32, i64 } %5, 0, !dbg !6821
  %asmresult2 = extractvalue { ptr, i32, i64 } %5, 1, !dbg !6821
  %asmresult3 = extractvalue { ptr, i32, i64 } %5, 2, !dbg !6821
  %6 = ptrtoint ptr %asmresult to i64, !dbg !6821
  %7 = trunc i64 %6 to i32, !dbg !6821
  store i32 %7, ptr %__ret_gu, align 4, !dbg !6821
  store i32 %asmresult2, ptr %__val_gu, align 4, !dbg !6821
  call void @llvm.write_register.i64(metadata !5879, i64 %asmresult3), !dbg !6821
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #17, !dbg !6823
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !6792, metadata !DIExpression()), !dbg !6823
  %8 = load i32, ptr %__val_gu, align 4, !dbg !6823
  %conv4 = zext i32 %8 to i64, !dbg !6823
  store i64 %conv4, ptr %__tmp, align 8, !dbg !6823
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #16, !dbg !6823
  %9 = load i64, ptr %__tmp, align 8, !dbg !6823
  %conv6 = trunc i64 %9 to i32, !dbg !6823
  store i32 %conv6, ptr %__val_gu, align 4, !dbg !6823
  store i32 %conv6, ptr %tmp5, align 4, !dbg !6823
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #17, !dbg !6821
  %10 = load i32, ptr %tmp5, align 4, !dbg !6823
  %11 = load i32, ptr %__val_gu, align 4, !dbg !6821
  store i32 %11, ptr %pid, align 4, !dbg !6821
  %12 = load i32, ptr %__ret_gu, align 4, !dbg !6821
  %conv8 = sext i32 %12 to i64, !dbg !6821
  %expval = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !6821
  store i64 %expval, ptr %tmp7, align 8, !dbg !6821
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu) #17, !dbg !6820
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #17, !dbg !6820
  %13 = load i64, ptr %tmp7, align 8, !dbg !6821
  store i64 %13, ptr %tmp, align 8, !dbg !6820
  %14 = load i64, ptr %tmp, align 8, !dbg !6820
  %tobool = icmp ne i64 %14, 0, !dbg !6824
  br i1 %tobool, label %if.then9, label %if.end10, !dbg !6825

if.then9:                                         ; preds = %if.end
  store i64 -14, ptr %retval, align 8, !dbg !6826
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6826

if.end10:                                         ; preds = %if.end
  %15 = load i32, ptr %pid, align 4, !dbg !6827
  %cmp11 = icmp ne i32 %15, 0, !dbg !6829
  br i1 %cmp11, label %land.lhs.true, label %if.end18, !dbg !6830

land.lhs.true:                                    ; preds = %if.end10
  %16 = load i32, ptr %pid, align 4, !dbg !6831
  %call13 = call ptr @get_current() #16, !dbg !6832
  %call14 = call i32 @task_pid_vnr(ptr noundef %call13) #16, !dbg !6833
  %cmp15 = icmp ne i32 %16, %call14, !dbg !6834
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !6835

if.then17:                                        ; preds = %land.lhs.true
  store i64 -1, ptr %retval, align 8, !dbg !6836
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6836

if.end18:                                         ; preds = %land.lhs.true, %if.end10
  %17 = load i32, ptr %tocopy, align 4, !dbg !6837
  %conv19 = zext i32 %17 to i64, !dbg !6837
  %mul = mul i64 %conv19, 12, !dbg !6838
  %conv20 = trunc i64 %mul to i32, !dbg !6837
  store i32 %conv20, ptr %copybytes, align 4, !dbg !6839
  %18 = load i32, ptr %copybytes, align 4, !dbg !6840
  %conv21 = zext i32 %18 to i64, !dbg !6840
  %cmp22 = icmp ugt i64 %conv21, 24, !dbg !6842
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !6843

if.then24:                                        ; preds = %if.end18
  store i64 -14, ptr %retval, align 8, !dbg !6844
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6844

if.end25:                                         ; preds = %if.end18
  %19 = load ptr, ptr %data.addr, align 8, !dbg !6845
  %20 = load i32, ptr %copybytes, align 4, !dbg !6847
  %conv26 = zext i32 %20 to i64, !dbg !6847
  %call27 = call i64 @copy_from_user(ptr noundef %kdata, ptr noundef %19, i64 noundef %conv26) #16, !dbg !6848
  %tobool28 = icmp ne i64 %call27, 0, !dbg !6848
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !6849

if.then29:                                        ; preds = %if.end25
  store i64 -14, ptr %retval, align 8, !dbg !6850
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6850

if.end30:                                         ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp31) #17, !dbg !6851
  %arrayidx = getelementptr [2 x %struct.__user_cap_data_struct], ptr %kdata, i64 0, i64 0, !dbg !6852
  %effective32 = getelementptr inbounds %struct.__user_cap_data_struct, ptr %arrayidx, i32 0, i32 0, !dbg !6853
  %21 = load i32, ptr %effective32, align 16, !dbg !6853
  %arrayidx33 = getelementptr [2 x %struct.__user_cap_data_struct], ptr %kdata, i64 0, i64 1, !dbg !6854
  %effective34 = getelementptr inbounds %struct.__user_cap_data_struct, ptr %arrayidx33, i32 0, i32 0, !dbg !6855
  %22 = load i32, ptr %effective34, align 4, !dbg !6855
  %call35 = call i64 @mk_kernel_cap(i32 noundef %21, i32 noundef %22) #16, !dbg !6851
  %coerce.dive = getelementptr inbounds %struct.kernel_cap_t, ptr %tmp31, i32 0, i32 0, !dbg !6851
  store i64 %call35, ptr %coerce.dive, align 8, !dbg !6851
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %effective, ptr align 8 %tmp31, i64 8, i1 false), !dbg !6851
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp31) #17, !dbg !6851
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp36) #17, !dbg !6856
  %arrayidx37 = getelementptr [2 x %struct.__user_cap_data_struct], ptr %kdata, i64 0, i64 0, !dbg !6857
  %permitted38 = getelementptr inbounds %struct.__user_cap_data_struct, ptr %arrayidx37, i32 0, i32 1, !dbg !6858
  %23 = load i32, ptr %permitted38, align 4, !dbg !6858
  %arrayidx39 = getelementptr [2 x %struct.__user_cap_data_struct], ptr %kdata, i64 0, i64 1, !dbg !6859
  %permitted40 = getelementptr inbounds %struct.__user_cap_data_struct, ptr %arrayidx39, i32 0, i32 1, !dbg !6860
  %24 = load i32, ptr %permitted40, align 4, !dbg !6860
  %call41 = call i64 @mk_kernel_cap(i32 noundef %23, i32 noundef %24) #16, !dbg !6856
  %coerce.dive42 = getelementptr inbounds %struct.kernel_cap_t, ptr %tmp36, i32 0, i32 0, !dbg !6856
  store i64 %call41, ptr %coerce.dive42, align 8, !dbg !6856
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %permitted, ptr align 8 %tmp36, i64 8, i1 false), !dbg !6856
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp36) #17, !dbg !6856
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp43) #17, !dbg !6861
  %arrayidx44 = getelementptr [2 x %struct.__user_cap_data_struct], ptr %kdata, i64 0, i64 0, !dbg !6862
  %inheritable45 = getelementptr inbounds %struct.__user_cap_data_struct, ptr %arrayidx44, i32 0, i32 2, !dbg !6863
  %25 = load i32, ptr %inheritable45, align 8, !dbg !6863
  %arrayidx46 = getelementptr [2 x %struct.__user_cap_data_struct], ptr %kdata, i64 0, i64 1, !dbg !6864
  %inheritable47 = getelementptr inbounds %struct.__user_cap_data_struct, ptr %arrayidx46, i32 0, i32 2, !dbg !6865
  %26 = load i32, ptr %inheritable47, align 4, !dbg !6865
  %call48 = call i64 @mk_kernel_cap(i32 noundef %25, i32 noundef %26) #16, !dbg !6861
  %coerce.dive49 = getelementptr inbounds %struct.kernel_cap_t, ptr %tmp43, i32 0, i32 0, !dbg !6861
  store i64 %call48, ptr %coerce.dive49, align 8, !dbg !6861
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %inheritable, ptr align 8 %tmp43, i64 8, i1 false), !dbg !6861
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp43) #17, !dbg !6861
  %call50 = call ptr @prepare_creds() #16, !dbg !6866
  store ptr %call50, ptr %new, align 8, !dbg !6867
  %27 = load ptr, ptr %new, align 8, !dbg !6868
  %tobool51 = icmp ne ptr %27, null, !dbg !6868
  br i1 %tobool51, label %if.end53, label %if.then52, !dbg !6870

if.then52:                                        ; preds = %if.end30
  store i64 -12, ptr %retval, align 8, !dbg !6871
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6871

if.end53:                                         ; preds = %if.end30
  %28 = load ptr, ptr %new, align 8, !dbg !6872
  br label %do.body, !dbg !6873

do.body:                                          ; preds = %if.end53
  br label %do.cond, !dbg !6875

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6875

do.end:                                           ; preds = %do.cond
  %call55 = call ptr @get_current() #16, !dbg !6873
  %cred = getelementptr inbounds %struct.task_struct, ptr %call55, i32 0, i32 94, !dbg !6873
  %29 = load ptr, ptr %cred, align 32, !dbg !6873
  store ptr %29, ptr %tmp54, align 8, !dbg !6875
  %30 = load ptr, ptr %tmp54, align 8, !dbg !6873
  %call56 = call i32 @security_capset(ptr noundef %28, ptr noundef %30, ptr noundef %effective, ptr noundef %inheritable, ptr noundef %permitted) #16, !dbg !6877
  store i32 %call56, ptr %ret, align 4, !dbg !6878
  %31 = load i32, ptr %ret, align 4, !dbg !6879
  %cmp57 = icmp slt i32 %31, 0, !dbg !6881
  br i1 %cmp57, label %if.then59, label %if.end60, !dbg !6882

if.then59:                                        ; preds = %do.end
  br label %error, !dbg !6883

if.end60:                                         ; preds = %do.end
  %32 = load ptr, ptr %new, align 8, !dbg !6884
  br label %do.body61, !dbg !6885

do.body61:                                        ; preds = %if.end60
  br label %do.cond62, !dbg !6887

do.cond62:                                        ; preds = %do.body61
  br label %do.end63, !dbg !6887

do.end63:                                         ; preds = %do.cond62
  %call65 = call ptr @get_current() #16, !dbg !6885
  %cred66 = getelementptr inbounds %struct.task_struct, ptr %call65, i32 0, i32 94, !dbg !6885
  %33 = load ptr, ptr %cred66, align 32, !dbg !6885
  store ptr %33, ptr %tmp64, align 8, !dbg !6887
  %34 = load ptr, ptr %tmp64, align 8, !dbg !6885
  call void @audit_log_capset(ptr noundef %32, ptr noundef %34) #16, !dbg !6889
  %35 = load ptr, ptr %new, align 8, !dbg !6890
  %call67 = call i32 @commit_creds(ptr noundef %35) #16, !dbg !6891
  %conv68 = sext i32 %call67 to i64, !dbg !6891
  store i64 %conv68, ptr %retval, align 8, !dbg !6892
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6892

error:                                            ; preds = %if.then59
  call void @llvm.dbg.label(metadata !6794), !dbg !6893
  %36 = load ptr, ptr %new, align 8, !dbg !6894
  call void @abort_creds(ptr noundef %36) #16, !dbg !6895
  %37 = load i32, ptr %ret, align 4, !dbg !6896
  %conv69 = sext i32 %37 to i64, !dbg !6896
  store i64 %conv69, ptr %retval, align 8, !dbg !6897
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6897

cleanup:                                          ; preds = %error, %do.end63, %if.then52, %if.then29, %if.then24, %if.then17, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pid) #17, !dbg !6898
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !6898
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #17, !dbg !6898
  call void @llvm.lifetime.end.p0(i64 8, ptr %effective) #17, !dbg !6898
  call void @llvm.lifetime.end.p0(i64 8, ptr %permitted) #17, !dbg !6898
  call void @llvm.lifetime.end.p0(i64 8, ptr %inheritable) #17, !dbg !6898
  call void @llvm.lifetime.end.p0(i64 4, ptr %copybytes) #17, !dbg !6898
  call void @llvm.lifetime.end.p0(i64 4, ptr %tocopy) #17, !dbg !6898
  call void @llvm.lifetime.end.p0(i64 24, ptr %kdata) #17, !dbg !6898
  %38 = load i64, ptr %retval, align 8, !dbg !6898
  ret i64 %38, !dbg !6898
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #4 align 16 !dbg !6899 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6901, metadata !DIExpression()), !dbg !6904
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6902, metadata !DIExpression()), !dbg !6905
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6903, metadata !DIExpression()), !dbg !6906
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6907
  %1 = load i64, ptr %n.addr, align 8, !dbg !6909
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #16, !dbg !6910
  br i1 %call, label %if.then, label %if.end, !dbg !6911

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6912
  %3 = load ptr, ptr %from.addr, align 8, !dbg !6913
  %4 = load i64, ptr %n.addr, align 8, !dbg !6914
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #16, !dbg !6915
  store i64 %call1, ptr %n.addr, align 8, !dbg !6916
  br label %if.end, !dbg !6917

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6918
  ret i64 %5, !dbg !6919
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @mk_kernel_cap(i32 noundef %low, i32 noundef %high) #1 align 16 !dbg !6920 {
entry:
  %retval = alloca %struct.kernel_cap_t, align 8
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !6924, metadata !DIExpression()), !dbg !6926
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !6925, metadata !DIExpression()), !dbg !6927
  %val = getelementptr inbounds %struct.kernel_cap_t, ptr %retval, i32 0, i32 0, !dbg !6928
  %0 = load i32, ptr %low.addr, align 4, !dbg !6929
  %conv = zext i32 %0 to i64, !dbg !6929
  %1 = load i32, ptr %high.addr, align 4, !dbg !6930
  %conv1 = zext i32 %1 to i64, !dbg !6931
  %shl = shl i64 %conv1, 32, !dbg !6932
  %or = or i64 %conv, %shl, !dbg !6933
  %and = and i64 %or, 2199023255551, !dbg !6934
  store i64 %and, ptr %val, align 8, !dbg !6928
  %coerce.dive = getelementptr inbounds %struct.kernel_cap_t, ptr %retval, i32 0, i32 0, !dbg !6935
  %2 = load i64, ptr %coerce.dive, align 8, !dbg !6935
  ret i64 %2, !dbg !6935
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6936 dso_local ptr @prepare_creds() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6939 dso_local i32 @security_capset(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @audit_log_capset(ptr noundef %new, ptr noundef %old) #6 align 16 !dbg !6944 {
entry:
  %new.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6949, metadata !DIExpression()), !dbg !6951
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6950, metadata !DIExpression()), !dbg !6952
  %call = call zeroext i1 @audit_dummy_context() #16, !dbg !6953
  %lnot = xor i1 %call, true, !dbg !6953
  %lnot1 = xor i1 %lnot, true, !dbg !6953
  %lnot2 = xor i1 %lnot1, true, !dbg !6953
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6953
  %conv = sext i32 %lnot.ext to i64, !dbg !6953
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6953
  %tobool = icmp ne i64 %expval, 0, !dbg !6953
  br i1 %tobool, label %if.then, label %if.end, !dbg !6955

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6956
  %1 = load ptr, ptr %old.addr, align 8, !dbg !6957
  call void @__audit_log_capset(ptr noundef %0, ptr noundef %1) #16, !dbg !6958
  br label %if.end, !dbg !6958

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6959
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6960 dso_local i32 @commit_creds(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6963 dso_local void @abort_creds(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6966 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @audit_dummy_context() #6 align 16 !dbg !6967 {
entry:
  %p = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !6970
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6969, metadata !DIExpression()), !dbg !6971
  %call = call ptr @audit_context() #16, !dbg !6972
  store ptr %call, ptr %p, align 8, !dbg !6971
  %0 = load ptr, ptr %p, align 8, !dbg !6973
  %tobool = icmp ne ptr %0, null, !dbg !6973
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !6974

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %p, align 8, !dbg !6975
  %2 = load i32, ptr %1, align 4, !dbg !6976
  %tobool1 = icmp ne i32 %2, 0, !dbg !6974
  br label %lor.end, !dbg !6974

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %tobool1, %lor.rhs ]
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !6977
  ret i1 %3, !dbg !6978
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6979 dso_local void @__audit_log_capset(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @audit_context() #6 align 16 !dbg !6980 {
entry:
  %call = call ptr @get_current() #16, !dbg !6983
  %audit_context = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 114, !dbg !6984
  %0 = load ptr, ptr %audit_context, align 32, !dbg !6984
  ret ptr %0, !dbg !6985
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6986 dso_local void @__rcu_read_lock() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6987 dso_local void @__rcu_read_unlock() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid(ptr noundef %to, i32 %kuid.coerce) #6 align 16 !dbg !6988 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6992, metadata !DIExpression()), !dbg !6994
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !6993, metadata !DIExpression()), !dbg !6995
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !6996
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !6996
  %call = call i32 @__kuid_val(i32 %0) #16, !dbg !6996
  ret i32 %call, !dbg !6997
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__vfsuid_val(i32 %uid.coerce) #6 align 16 !dbg !6998 {
entry:
  %uid = alloca %struct.vfsuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.vfsuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !7002, metadata !DIExpression()), !dbg !7003
  %val = getelementptr inbounds %struct.vfsuid_t, ptr %uid, i32 0, i32 0, !dbg !7004
  %0 = load i32, ptr %val, align 4, !dbg !7004
  ret i32 %0, !dbg !7005
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kuid_val(i32 %uid.coerce) #6 align 16 !dbg !7006 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !7010, metadata !DIExpression()), !dbg !7011
  %val = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !7012
  %0 = load i32, ptr %val, align 4, !dbg !7012
  ret i32 %0, !dbg !7013
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7014 dso_local i32 @make_vfsuid(ptr noundef, ptr noundef, i32) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @i_user_ns(ptr noundef %inode) #6 align 16 !dbg !7017 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !7021, metadata !DIExpression()), !dbg !7022
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !7023
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !7024
  %1 = load ptr, ptr %i_sb, align 8, !dbg !7024
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 48, !dbg !7025
  %2 = load ptr, ptr %s_user_ns, align 8, !dbg !7025
  ret ptr %2, !dbg !7026
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid(ptr noundef %to, i32 %kgid.coerce) #6 align 16 !dbg !7027 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !7031, metadata !DIExpression()), !dbg !7033
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !7032, metadata !DIExpression()), !dbg !7034
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !7035
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !7035
  %call = call i32 @__kgid_val(i32 %0) #16, !dbg !7035
  ret i32 %call, !dbg !7036
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__vfsgid_val(i32 %gid.coerce) #6 align 16 !dbg !7037 {
entry:
  %gid = alloca %struct.vfsgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.vfsgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !7041, metadata !DIExpression()), !dbg !7042
  %val = getelementptr inbounds %struct.vfsgid_t, ptr %gid, i32 0, i32 0, !dbg !7043
  %0 = load i32, ptr %val, align 4, !dbg !7043
  ret i32 %0, !dbg !7044
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kgid_val(i32 %gid.coerce) #6 align 16 !dbg !7045 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !7049, metadata !DIExpression()), !dbg !7050
  %val = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !7051
  %0 = load i32, ptr %val, align 4, !dbg !7051
  ret i32 %0, !dbg !7052
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7053 dso_local i32 @make_vfsgid(ptr noundef, ptr noundef, i32) #5

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #9 = { nocallback nounwind }
attributes #10 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { noredzone }
attributes #17 = { nounwind }
attributes #18 = { cold noredzone }
attributes #19 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!5879}
!llvm.module.flags = !{!5880, !5881, !5882, !5883, !5884, !5885, !5886, !5887}
!llvm.ident = !{!5888}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "file_caps_enabled", scope: !2, file: !3, line: 23, type: !22, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.capability.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/capability\22 -D KBUILD_BASENAME=\22capability\22 -D KBUILD_MODNAME=\22capability\22 -D __KBUILD_MODNAME=kmod_capability -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/capability.ll kernel/capability.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !267, globals: !5802, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/capability.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d8fc76b4f6b9fab5b2731275efcfde04")
!4 = !{!5, !11, !107, !115, !122, !130, !146, !153, !159, !170, !176, !182, !189, !197, !204, !213, !218, !223, !229, !238, !243, !249, !255, !262}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !13, file: !12, line: 147, baseType: !7, size: 32, elements: !104)
!12 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !12, line: 135, size: 512, elements: !14)
!14 = !{!15, !19, !21, !23, !27, !28, !44, !102, !103}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !13, file: !12, line: 136, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !13, file: !12, line: 137, baseType: !20, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !13, file: !12, line: 138, baseType: !22, size: 32, offset: 128)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !13, file: !12, line: 139, baseType: !24, size: 16, offset: 160)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !25, line: 24, baseType: !26)
!25 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!26 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !13, file: !12, line: 150, baseType: !11, size: 32, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !13, file: !12, line: 151, baseType: !29, size: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !12, line: 64, baseType: !31)
!31 = !DISubroutineType(types: !32)
!32 = !{!22, !33, !22, !20, !34, !40}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !25, line: 61, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !37, line: 72, baseType: !38)
!37 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !37, line: 16, baseType: !39)
!39 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !25, line: 52, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !37, line: 88, baseType: !43)
!43 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !13, file: !12, line: 152, baseType: !45, size: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !12, line: 117, size: 256, elements: !47)
!47 = !{!48, !53}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !46, file: !12, line: 118, baseType: !49, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !25, line: 174, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 172, size: 32, elements: !51)
!51 = !{!52}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !50, file: !25, line: 173, baseType: !22, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !46, file: !12, line: 119, baseType: !54, size: 192, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !55, line: 41, baseType: !56)
!55 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !55, line: 37, size: 192, elements: !57)
!57 = !{!58, !96}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !56, file: !55, line: 38, baseType: !59, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !60, line: 29, baseType: !61)
!60 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !60, line: 17, size: 32, elements: !62)
!62 = !{!63}
!63 = !DIDerivedType(tag: DW_TAG_member, scope: !61, file: !60, line: 18, baseType: !64, size: 32)
!64 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !61, file: !60, line: 18, size: 32, elements: !65)
!65 = !{!66}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !64, file: !60, line: 19, baseType: !67, size: 32)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !68, line: 14, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!69 = !{!70}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !67, file: !68, line: 15, baseType: !71, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !72, line: 44, baseType: !73)
!72 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !72, line: 14, size: 32, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, scope: !73, file: !72, line: 15, baseType: !76, size: 32)
!76 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !73, file: !72, line: 15, size: 32, elements: !77)
!77 = !{!78, !79, !89}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !76, file: !72, line: 16, baseType: !49, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !72, line: 24, baseType: !80, size: 16)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !76, file: !72, line: 24, size: 16, elements: !81)
!81 = !{!82, !88}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !80, file: !72, line: 25, baseType: !83, size: 8)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !84, line: 17, baseType: !85)
!84 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !86, line: 21, baseType: !87)
!86 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!87 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !80, file: !72, line: 26, baseType: !83, size: 8, offset: 8)
!89 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !72, line: 28, baseType: !90, size: 32)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !76, file: !72, line: 28, size: 32, elements: !91)
!91 = !{!92, !95}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !90, file: !72, line: 29, baseType: !93, size: 16)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !84, line: 19, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !86, line: 24, baseType: !26)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !90, file: !72, line: 30, baseType: !93, size: 16, offset: 16)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !56, file: !55, line: 39, baseType: !97, size: 128, offset: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !25, line: 190, size: 128, elements: !98)
!98 = !{!99, !101}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !97, file: !25, line: 191, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !97, file: !25, line: 191, baseType: !100, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !13, file: !12, line: 153, baseType: !20, size: 64, offset: 384)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !13, file: !12, line: 154, baseType: !20, size: 64, offset: 448)
!104 = !{!105, !106}
!105 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!106 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !108, line: 9, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!109 = !{!110, !111, !112, !113, !114}
!110 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!111 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!112 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!113 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!114 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !116, line: 312, baseType: !7, size: 32, elements: !117)
!116 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!117 = !{!118, !119, !120, !121}
!118 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!119 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!120 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!121 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !123, line: 68, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!124 = !{!125, !126, !127, !128, !129}
!125 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!126 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!127 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!128 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!129 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !131, line: 1325, baseType: !7, size: 32, elements: !132)
!131 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!132 = !{!133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145}
!133 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!134 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!135 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!136 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!137 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!138 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!139 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!140 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!141 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!142 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!143 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!144 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!145 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !147, line: 15, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!148 = !{!149, !150, !151, !152}
!149 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!150 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!151 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!152 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !154, line: 26, baseType: !7, size: 32, elements: !155)
!154 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!155 = !{!156, !157, !158}
!156 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!157 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!158 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !160, line: 253, baseType: !7, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!161 = !{!162, !163, !164, !165, !166, !167, !168, !169}
!162 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!163 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!164 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!165 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!166 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!167 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!168 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!169 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !160, line: 158, baseType: !7, size: 32, elements: !171)
!171 = !{!172, !173, !174, !175}
!172 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!173 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!174 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!175 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !177, line: 45, baseType: !7, size: 32, elements: !178)
!177 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!178 = !{!179, !180, !181}
!179 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!180 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!181 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !183, line: 487, baseType: !7, size: 32, elements: !184)
!183 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!184 = !{!185, !186, !187, !188}
!185 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!186 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!187 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!188 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !190, line: 620, baseType: !7, size: 32, elements: !191)
!190 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!191 = !{!192, !193, !194, !195, !196}
!192 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!193 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!194 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!195 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!196 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !190, line: 597, baseType: !22, size: 32, elements: !198)
!198 = !{!199, !200, !201, !202, !203}
!199 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!200 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!201 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!202 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!203 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !183, line: 547, baseType: !7, size: 32, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211, !212}
!206 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!207 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!208 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!209 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!210 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!211 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!212 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!213 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !183, line: 564, baseType: !7, size: 32, elements: !214)
!214 = !{!215, !216, !217}
!215 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!216 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!217 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!218 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !183, line: 577, baseType: !7, size: 32, elements: !219)
!219 = !{!220, !221, !222}
!220 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!221 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!222 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!223 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !183, line: 503, baseType: !7, size: 32, elements: !224)
!224 = !{!225, !226, !227, !228}
!225 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!226 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!227 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!228 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !230, line: 593, baseType: !22, size: 32, elements: !231)
!230 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!231 = !{!232, !233, !234, !235, !236, !237}
!232 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!233 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!234 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!235 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!236 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!237 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !239, line: 2052, baseType: !7, size: 32, elements: !240)
!239 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!240 = !{!241, !242}
!241 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!242 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !244, line: 54, baseType: !7, size: 32, elements: !245)
!244 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!245 = !{!246, !247, !248}
!246 = !DIEnumerator(name: "USRQUOTA", value: 0)
!247 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!248 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !250, line: 16, baseType: !7, size: 32, elements: !251)
!250 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!251 = !{!252, !253, !254}
!252 = !DIEnumerator(name: "TT_NONE", value: 0)
!253 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!254 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!255 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !256, line: 51, baseType: !7, size: 32, elements: !257)
!256 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!257 = !{!258, !259, !260, !261}
!258 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!259 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!260 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!261 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !263, line: 10, baseType: !7, size: 32, elements: !264)
!263 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!264 = !{!265, !266}
!265 = !DIEnumerator(name: "false", value: 0)
!266 = !DIEnumerator(name: "true", value: 1)
!267 = !{!7, !268, !685, !20, !688, !695, !22, !310, !378, !377, !702, !703, !39, !2377, !288, !295}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !271, line: 110, size: 1472, elements: !272)
!271 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!272 = !{!273, !282, !290, !297, !298, !299, !300, !301, !302, !303, !304, !313, !314, !315, !316, !317, !318, !471, !472, !473, !474, !475, !512, !669, !670, !680}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !270, file: !271, line: 111, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !275, line: 13, baseType: !276)
!275 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !25, line: 181, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 179, size: 64, elements: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !277, file: !25, line: 180, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !84, line: 22, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !86, line: 30, baseType: !43)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !270, file: !271, line: 112, baseType: !283, size: 32, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !284, line: 23, baseType: !285)
!284 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !284, line: 21, size: 32, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !285, file: !284, line: 22, baseType: !288, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !25, line: 37, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !37, line: 49, baseType: !7)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !270, file: !271, line: 113, baseType: !291, size: 32, offset: 96)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !284, line: 28, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !284, line: 26, size: 32, elements: !293)
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !292, file: !284, line: 27, baseType: !295, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !25, line: 38, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !37, line: 50, baseType: !7)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !270, file: !271, line: 114, baseType: !283, size: 32, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !270, file: !271, line: 115, baseType: !291, size: 32, offset: 160)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !270, file: !271, line: 116, baseType: !283, size: 32, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !270, file: !271, line: 117, baseType: !291, size: 32, offset: 224)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !270, file: !271, line: 118, baseType: !283, size: 32, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !270, file: !271, line: 119, baseType: !291, size: 32, offset: 288)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !270, file: !271, line: 120, baseType: !7, size: 32, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !270, file: !271, line: 121, baseType: !305, size: 64, offset: 384)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !306, line: 24, baseType: !307)
!306 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !306, line: 24, size: 64, elements: !308)
!308 = !{!309}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !307, file: !306, line: 24, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !84, line: 23, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !86, line: 31, baseType: !312)
!312 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !270, file: !271, line: 122, baseType: !305, size: 64, offset: 448)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !270, file: !271, line: 123, baseType: !305, size: 64, offset: 512)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !270, file: !271, line: 124, baseType: !305, size: 64, offset: 576)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !270, file: !271, line: 125, baseType: !305, size: 64, offset: 640)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !270, file: !271, line: 127, baseType: !87, size: 8, offset: 704)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !270, file: !271, line: 129, baseType: !319, size: 64, offset: 768)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !321, line: 195, size: 1728, elements: !322)
!321 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!322 = !{!323, !329, !334, !346, !360, !363, !364, !371, !372, !373, !374, !379, !380, !381, !383, !384, !433, !456}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !320, file: !321, line: 196, baseType: !324, size: 32)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !325, line: 113, baseType: !326)
!325 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !325, line: 111, size: 32, elements: !327)
!327 = !{!328}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !326, file: !325, line: 112, baseType: !49, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !320, file: !321, line: 197, baseType: !330, size: 32, offset: 32)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !321, line: 28, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !25, line: 104, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !84, line: 20, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !86, line: 26, baseType: !22)
!334 = !DIDerivedType(tag: DW_TAG_member, scope: !320, file: !321, line: 198, baseType: !335, size: 192, offset: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !320, file: !321, line: 198, size: 192, elements: !336)
!336 = !{!337, !338}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !335, file: !321, line: 199, baseType: !97, size: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !335, file: !321, line: 200, baseType: !339, size: 192, align: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !340, line: 5, size: 192, align: 64, elements: !341)
!340 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!341 = !{!342, !343, !345}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !339, file: !340, line: 6, baseType: !39, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !339, file: !340, line: 7, baseType: !344, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !339, file: !340, line: 8, baseType: !344, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !320, file: !321, line: 205, baseType: !347, size: 320, offset: 256)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !348, line: 48, size: 320, elements: !349)
!348 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!349 = !{!350, !351, !352, !357, !359}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !347, file: !348, line: 49, baseType: !274, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !347, file: !348, line: 55, baseType: !274, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !347, file: !348, line: 57, baseType: !353, size: 32, offset: 128)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !354, line: 15, size: 32, elements: !355)
!354 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!355 = !{!356}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !353, file: !354, line: 20, baseType: !49, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !347, file: !348, line: 59, baseType: !358, size: 32, offset: 160)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !68, line: 23, baseType: !67)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !347, file: !348, line: 60, baseType: !97, size: 128, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !320, file: !321, line: 206, baseType: !361, size: 64, offset: 576)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !321, line: 206, flags: DIFlagFwdDecl)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !320, file: !321, line: 207, baseType: !20, size: 64, offset: 640)
!364 = !DIDerivedType(tag: DW_TAG_member, scope: !320, file: !321, line: 208, baseType: !365, size: 64, offset: 704)
!365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !320, file: !321, line: 208, size: 64, elements: !366)
!366 = !{!367, !370}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !365, file: !321, line: 209, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !369, line: 8, baseType: !281)
!369 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!370 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !365, file: !321, line: 210, baseType: !368, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !320, file: !321, line: 212, baseType: !368, size: 64, offset: 768)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !320, file: !321, line: 213, baseType: !283, size: 32, offset: 832)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !320, file: !321, line: 214, baseType: !291, size: 32, offset: 864)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !320, file: !321, line: 215, baseType: !375, size: 32, offset: 896)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !321, line: 31, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !25, line: 110, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !84, line: 21, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !86, line: 27, baseType: !7)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !320, file: !321, line: 216, baseType: !26, size: 16, offset: 928)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !320, file: !321, line: 217, baseType: !26, size: 16, offset: 944)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !320, file: !321, line: 221, baseType: !382, size: 16, offset: 960)
!382 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !320, file: !321, line: 228, baseType: !39, size: 64, offset: 1024)
!384 = !DIDerivedType(tag: DW_TAG_member, scope: !320, file: !321, line: 245, baseType: !385, size: 320, offset: 1088)
!385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !320, file: !321, line: 245, size: 320, elements: !386)
!386 = !{!387, !424}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !385, file: !321, line: 246, baseType: !388, size: 320)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !321, line: 114, size: 320, elements: !389)
!389 = !{!390, !391, !403, !406, !423}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !388, file: !321, line: 116, baseType: !39, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, scope: !388, file: !321, line: 117, baseType: !392, size: 64, offset: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !388, file: !321, line: 117, size: 64, elements: !393)
!393 = !{!394, !402}
!394 = !DIDerivedType(tag: DW_TAG_member, scope: !392, file: !321, line: 118, baseType: !395, size: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !321, line: 118, size: 64, elements: !396)
!396 = !{!397, !398}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !395, file: !321, line: 120, baseType: !93, size: 16)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !395, file: !321, line: 121, baseType: !399, size: 48, offset: 16)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 48, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 6)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !392, file: !321, line: 127, baseType: !39, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !388, file: !321, line: 129, baseType: !404, size: 64, offset: 128)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !321, line: 102, flags: DIFlagFwdDecl)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !388, file: !321, line: 130, baseType: !407, size: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !321, line: 108, size: 192, elements: !409)
!409 = !{!410, !419, !420}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !408, file: !321, line: 109, baseType: !411, size: 128, align: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !25, line: 232, size: 128, align: 64, elements: !412)
!412 = !{!413, !415}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !411, file: !25, line: 233, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !411, file: !25, line: 234, baseType: !416, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !414}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !408, file: !321, line: 110, baseType: !324, size: 32, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !408, file: !321, line: 111, baseType: !421, size: 8, offset: 160)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !25, line: 35, baseType: !422)
!422 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !388, file: !321, line: 131, baseType: !16, size: 64, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_member, scope: !385, file: !321, line: 247, baseType: !425, size: 320)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !385, file: !321, line: 247, size: 320, elements: !426)
!426 = !{!427, !428, !429, !430, !431}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !425, file: !321, line: 248, baseType: !39, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !425, file: !321, line: 249, baseType: !39, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !425, file: !321, line: 250, baseType: !404, size: 64, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !425, file: !321, line: 251, baseType: !407, size: 64, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !425, file: !321, line: 252, baseType: !432, size: 64, offset: 256)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, scope: !320, file: !321, line: 260, baseType: !434, size: 256, offset: 1408)
!434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !320, file: !321, line: 260, size: 256, elements: !435)
!435 = !{!436, !444}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !434, file: !321, line: 261, baseType: !437, size: 256)
!437 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !321, line: 134, size: 256, elements: !438)
!438 = !{!439, !440}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !437, file: !321, line: 135, baseType: !20, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !437, file: !321, line: 136, baseType: !441, size: 256)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 256, elements: !442)
!442 = !{!443}
!443 = !DISubrange(count: 4)
!444 = !DIDerivedType(tag: DW_TAG_member, scope: !434, file: !321, line: 262, baseType: !445, size: 256)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !434, file: !321, line: 262, size: 256, elements: !446)
!446 = !{!447, !448}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !445, file: !321, line: 264, baseType: !97, size: 128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !445, file: !321, line: 265, baseType: !449, size: 128, offset: 128)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !450, line: 22, size: 128, elements: !451)
!450 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!451 = !{!452, !455}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !449, file: !450, line: 23, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !450, line: 23, flags: DIFlagFwdDecl)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !449, file: !450, line: 24, baseType: !39, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !320, file: !321, line: 280, baseType: !457, size: 64, offset: 1664)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !321, line: 176, size: 192, elements: !459)
!459 = !{!460, !469, !470}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !458, file: !321, line: 177, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !321, line: 171, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!22, !319, !465, !467, !319}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !458, file: !321, line: 178, baseType: !319, size: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !458, file: !321, line: 179, baseType: !404, size: 64, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !270, file: !271, line: 130, baseType: !319, size: 64, offset: 832)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !270, file: !271, line: 131, baseType: !319, size: 64, offset: 896)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !270, file: !271, line: 132, baseType: !319, size: 64, offset: 960)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !270, file: !271, line: 135, baseType: !20, size: 64, offset: 1024)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !270, file: !271, line: 137, baseType: !476, size: 64, offset: 1088)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !478, line: 14, size: 1088, elements: !479)
!478 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!479 = !{!480, !481, !490, !491, !492, !499, !500, !501}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !477, file: !478, line: 15, baseType: !324, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !477, file: !478, line: 17, baseType: !482, size: 320, offset: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !483, line: 22, size: 320, elements: !484)
!483 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!484 = !{!485, !486, !487, !488}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !482, file: !483, line: 23, baseType: !358, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !482, file: !483, line: 24, baseType: !280, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !482, file: !483, line: 26, baseType: !97, size: 128, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !482, file: !483, line: 28, baseType: !489, size: 64, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !477, file: !478, line: 19, baseType: !39, size: 64, offset: 384)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !477, file: !478, line: 20, baseType: !274, size: 64, offset: 448)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !477, file: !478, line: 23, baseType: !493, size: 128, offset: 512)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !25, line: 198, size: 128, elements: !494)
!494 = !{!495, !497}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !493, file: !25, line: 199, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !493, file: !25, line: 199, baseType: !498, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !477, file: !478, line: 24, baseType: !283, size: 32, offset: 640)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !477, file: !478, line: 29, baseType: !274, size: 64, offset: 704)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !477, file: !478, line: 36, baseType: !502, size: 320, offset: 768)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !503, line: 15, size: 320, elements: !504)
!503 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!504 = !{!505, !506, !507, !508, !509, !510, !511}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !502, file: !503, line: 16, baseType: !358, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !502, file: !503, line: 18, baseType: !22, size: 32, offset: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !502, file: !503, line: 19, baseType: !22, size: 32, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !502, file: !503, line: 20, baseType: !22, size: 32, offset: 96)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !502, file: !503, line: 21, baseType: !22, size: 32, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !502, file: !503, line: 22, baseType: !39, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !502, file: !503, line: 23, baseType: !39, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !270, file: !271, line: 138, baseType: !513, size: 64, offset: 1152)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !515, line: 68, size: 4800, elements: !516)
!515 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!516 = !{!517, !539, !540, !541, !542, !543, !544, !545, !556, !557, !558, !559, !560, !561, !573, !649, !650, !664, !667}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !514, file: !515, line: 69, baseType: !518, size: 576)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !515, line: 23, size: 576, elements: !519)
!519 = !{!520, !521}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !518, file: !515, line: 24, baseType: !377, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, scope: !518, file: !515, line: 25, baseType: !522, size: 512, offset: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !518, file: !515, line: 25, size: 512, elements: !523)
!523 = !{!524, !533}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !522, file: !515, line: 26, baseType: !525, size: 480)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 480, elements: !531)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !515, line: 17, size: 96, elements: !527)
!527 = !{!528, !529, !530}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !526, file: !515, line: 18, baseType: !377, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !526, file: !515, line: 19, baseType: !377, size: 32, offset: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !526, file: !515, line: 20, baseType: !377, size: 32, offset: 64)
!531 = !{!532}
!532 = !DISubrange(count: 5)
!533 = !DIDerivedType(tag: DW_TAG_member, scope: !522, file: !515, line: 27, baseType: !534, size: 128)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !522, file: !515, line: 27, size: 128, elements: !535)
!535 = !{!536, !538}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !534, file: !515, line: 28, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !534, file: !515, line: 29, baseType: !537, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !514, file: !515, line: 70, baseType: !518, size: 576, offset: 576)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !514, file: !515, line: 71, baseType: !518, size: 576, offset: 1152)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !514, file: !515, line: 72, baseType: !513, size: 64, offset: 1728)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !514, file: !515, line: 73, baseType: !22, size: 32, offset: 1792)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !514, file: !515, line: 74, baseType: !283, size: 32, offset: 1824)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !514, file: !515, line: 75, baseType: !291, size: 32, offset: 1856)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !514, file: !515, line: 76, baseType: !546, size: 192, offset: 1920)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !547, line: 9, size: 192, elements: !548)
!547 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!548 = !{!549, !550, !554, !555}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !546, file: !547, line: 10, baseType: !274, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !546, file: !547, line: 11, baseType: !551, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !553)
!553 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !547, line: 7, flags: DIFlagFwdDecl)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !546, file: !547, line: 12, baseType: !7, size: 32, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !546, file: !547, line: 13, baseType: !324, size: 32, offset: 160)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !514, file: !515, line: 77, baseType: !39, size: 64, offset: 2112)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !514, file: !515, line: 80, baseType: !421, size: 8, offset: 2176)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !514, file: !515, line: 88, baseType: !97, size: 128, offset: 2240)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !514, file: !515, line: 89, baseType: !319, size: 64, offset: 2368)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !514, file: !515, line: 90, baseType: !347, size: 320, offset: 2432)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !514, file: !515, line: 97, baseType: !562, size: 256, offset: 2752)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !563, line: 98, size: 256, elements: !564)
!563 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!564 = !{!565, !566, !567}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !562, file: !563, line: 99, baseType: !274, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !562, file: !563, line: 100, baseType: !97, size: 128, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !562, file: !563, line: 101, baseType: !568, size: 64, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !563, line: 21, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{null, !572}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !514, file: !515, line: 99, baseType: !574, size: 768, offset: 3008)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !12, line: 199, size: 768, elements: !575)
!575 = !{!576, !581}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !574, file: !12, line: 200, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!22, !580}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !574, file: !12, line: 201, baseType: !582, size: 704, offset: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !12, line: 193, size: 704, elements: !583)
!583 = !{!584, !645}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !582, file: !12, line: 195, baseType: !585, size: 640)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !12, line: 173, size: 640, elements: !586)
!586 = !{!587, !599, !611, !612, !632, !633, !635, !641}
!587 = !DIDerivedType(tag: DW_TAG_member, scope: !585, file: !12, line: 174, baseType: !588, size: 192)
!588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !585, file: !12, line: 174, size: 192, elements: !589)
!589 = !{!590, !598}
!590 = !DIDerivedType(tag: DW_TAG_member, scope: !588, file: !12, line: 175, baseType: !591, size: 192)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !588, file: !12, line: 175, size: 192, elements: !592)
!592 = !{!593, !594, !595, !596, !597}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !591, file: !12, line: 176, baseType: !33, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !591, file: !12, line: 177, baseType: !22, size: 32, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !591, file: !12, line: 178, baseType: !22, size: 32, offset: 96)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !591, file: !12, line: 179, baseType: !22, size: 32, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !591, file: !12, line: 180, baseType: !22, size: 32, offset: 160)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !588, file: !12, line: 182, baseType: !411, size: 128, align: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !585, file: !12, line: 184, baseType: !600, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !602, line: 26, size: 256, elements: !603)
!602 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!603 = !{!604, !605}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !601, file: !602, line: 27, baseType: !7, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !601, file: !602, line: 28, baseType: !606, size: 192, offset: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !607, line: 43, size: 192, elements: !608)
!607 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!608 = !{!609, !610}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !606, file: !607, line: 44, baseType: !358, size: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !606, file: !607, line: 45, baseType: !97, size: 128, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !585, file: !12, line: 185, baseType: !33, size: 64, offset: 256)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !585, file: !12, line: 186, baseType: !613, size: 64, offset: 320)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !12, line: 204, size: 960, elements: !615)
!615 = !{!616, !617, !621, !628}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !614, file: !12, line: 205, baseType: !574, size: 768)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !614, file: !12, line: 206, baseType: !618, size: 64, offset: 768)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!580, !613}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !614, file: !12, line: 207, baseType: !622, size: 64, offset: 832)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{null, !625, !626, !627}
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !614, file: !12, line: 209, baseType: !629, size: 64, offset: 896)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!22, !625, !33}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !585, file: !12, line: 187, baseType: !580, size: 64, offset: 384)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !585, file: !12, line: 188, baseType: !634, size: 64, offset: 448)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !585, file: !12, line: 189, baseType: !636, size: 64, offset: 512)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !12, line: 157, size: 256, elements: !638)
!638 = !{!639, !640}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !637, file: !12, line: 158, baseType: !339, size: 192, align: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !637, file: !12, line: 159, baseType: !625, size: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !585, file: !12, line: 190, baseType: !642, size: 64, offset: 576)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !25, line: 194, size: 64, elements: !643)
!643 = !{!644}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !642, file: !25, line: 195, baseType: !496, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !582, file: !12, line: 196, baseType: !646, size: 64, offset: 640)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !340, line: 12, size: 64, elements: !647)
!647 = !{!648}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !646, file: !340, line: 13, baseType: !344, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !514, file: !515, line: 100, baseType: !625, size: 64, offset: 3776)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !514, file: !515, line: 102, baseType: !651, size: 64, offset: 3840)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !515, line: 107, size: 1152, elements: !653)
!653 = !{!654, !655, !656, !657, !658, !662}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !652, file: !515, line: 108, baseType: !493, size: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !652, file: !515, line: 109, baseType: !513, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !652, file: !515, line: 110, baseType: !283, size: 32, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !652, file: !515, line: 111, baseType: !49, size: 32, offset: 224)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !652, file: !515, line: 112, baseType: !659, size: 640, offset: 256)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 640, elements: !660)
!660 = !{!661}
!661 = !DISubrange(count: 10)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !652, file: !515, line: 113, baseType: !663, size: 256, offset: 896)
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 256, elements: !442)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !514, file: !515, line: 103, baseType: !665, size: 640, offset: 3904)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 640, elements: !660)
!666 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !514, file: !515, line: 104, baseType: !668, size: 256, offset: 4544)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 256, elements: !442)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !270, file: !271, line: 139, baseType: !651, size: 64, offset: 1216)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !270, file: !271, line: 140, baseType: !671, size: 64, offset: 1280)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !271, line: 25, size: 64, elements: !673)
!673 = !{!674, !675, !676}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !672, file: !271, line: 26, baseType: !49, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !672, file: !271, line: 27, baseType: !22, size: 32, offset: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !672, file: !271, line: 28, baseType: !677, offset: 64)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, elements: !678)
!678 = !{!679}
!679 = !DISubrange(count: -1)
!680 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !271, line: 142, baseType: !681, size: 128, offset: 1344)
!681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !270, file: !271, line: 142, size: 128, elements: !682)
!682 = !{!683, !684}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !681, file: !271, line: 143, baseType: !22, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !681, file: !271, line: 144, baseType: !411, size: 128, align: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !687)
!687 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !268)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "cap_user_header_t", file: !689, line: 42, baseType: !690)
!689 = !DIFile(filename: "./include/uapi/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee1e6cef4158704792a3326966027c97")
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__user_cap_header_struct", file: !689, line: 39, size: 64, elements: !692)
!692 = !{!693, !694}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !691, file: !689, line: 40, baseType: !378, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !691, file: !689, line: 41, baseType: !22, size: 32, offset: 32)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "cap_user_data_t", file: !689, line: 49, baseType: !696)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__user_cap_data_struct", file: !689, line: 44, size: 96, elements: !698)
!698 = !{!699, !700, !701}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "effective", scope: !697, file: !689, line: 45, baseType: !378, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "permitted", scope: !697, file: !689, line: 46, baseType: !378, size: 32, offset: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "inheritable", scope: !697, file: !689, line: 47, baseType: !378, size: 32, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !705, line: 746, size: 58368, elements: !706)
!705 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!706 = !{!707, !715, !716, !717, !718, !719, !720, !721, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !792, !803, !900, !904, !907, !938, !939, !940, !941, !952, !954, !955, !956, !957, !958, !959, !970, !971, !974, !975, !976, !977, !978, !979, !980, !981, !988, !989, !996, !997, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4967, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !5010, !5016, !5017, !5018, !5019, !5020, !5022, !5025, !5032, !5037, !5040, !5043, !5046, !5078, !5276, !5303, !5304, !5305, !5306, !5307, !5308, !5309, !5310, !5311, !5314, !5315, !5316, !5325, !5333, !5334, !5335, !5336, !5337, !5342, !5343, !5344, !5347, !5348, !5351, !5354, !5357, !5365, !5368, !5369, !5455, !5456, !5457, !5458, !5459, !5465, !5466, !5467, !5468, !5469, !5470, !5473, !5476, !5477, !5480, !5481, !5482, !5483, !5484, !5485, !5486, !5487, !5488, !5501, !5502, !5503, !5504, !5505, !5506, !5507, !5508, !5509, !5520, !5521, !5527, !5530, !5531, !5532, !5533, !5534, !5535, !5536, !5539, !5611, !5613, !5614, !5615, !5616, !5617, !5618, !5621, !5622, !5623, !5624, !5625, !5626, !5627, !5628, !5629, !5630, !5631, !5635, !5636, !5637}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !704, file: !705, line: 752, baseType: !708, size: 192)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !709, line: 56, size: 192, elements: !710)
!709 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!710 = !{!711, !712, !713, !714}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !708, file: !709, line: 57, baseType: !39, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !708, file: !709, line: 58, baseType: !39, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !708, file: !709, line: 59, baseType: !377, size: 32, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !708, file: !709, line: 61, baseType: !377, size: 32, offset: 160)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !704, file: !705, line: 754, baseType: !7, size: 32, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !704, file: !705, line: 767, baseType: !20, size: 64, offset: 256)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !704, file: !705, line: 768, baseType: !324, size: 32, offset: 320)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !704, file: !705, line: 770, baseType: !7, size: 32, offset: 352)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !704, file: !705, line: 771, baseType: !7, size: 32, offset: 384)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !704, file: !705, line: 774, baseType: !22, size: 32, offset: 416)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !704, file: !705, line: 775, baseType: !722, size: 128, offset: 448)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !723, line: 58, size: 128, elements: !724)
!723 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!724 = !{!725, !731, !736, !737}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !722, file: !723, line: 59, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !727, line: 60, size: 64, elements: !728)
!727 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!728 = !{!729}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !726, file: !727, line: 61, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, scope: !722, file: !723, line: 60, baseType: !732, size: 32, offset: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !722, file: !723, line: 60, size: 32, elements: !733)
!733 = !{!734, !735}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !732, file: !723, line: 61, baseType: !7, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !732, file: !723, line: 62, baseType: !49, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !722, file: !723, line: 65, baseType: !93, size: 16, offset: 96)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !722, file: !723, line: 65, baseType: !93, size: 16, offset: 112)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !704, file: !705, line: 776, baseType: !7, size: 32, offset: 576)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !704, file: !705, line: 777, baseType: !39, size: 64, offset: 640)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !704, file: !705, line: 778, baseType: !703, size: 64, offset: 704)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !704, file: !705, line: 787, baseType: !22, size: 32, offset: 768)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !704, file: !705, line: 788, baseType: !22, size: 32, offset: 800)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !704, file: !705, line: 790, baseType: !22, size: 32, offset: 832)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !704, file: !705, line: 792, baseType: !22, size: 32, offset: 864)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !704, file: !705, line: 793, baseType: !22, size: 32, offset: 896)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !704, file: !705, line: 794, baseType: !22, size: 32, offset: 928)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !704, file: !705, line: 795, baseType: !7, size: 32, offset: 960)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !704, file: !705, line: 797, baseType: !749, size: 2048, offset: 1024)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !705, line: 551, size: 2048, elements: !750)
!750 = !{!751, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !771, !774, !775, !776}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !749, file: !705, line: 553, baseType: !752, size: 128)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !705, line: 411, size: 128, elements: !753)
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !752, file: !705, line: 412, baseType: !39, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !752, file: !705, line: 413, baseType: !377, size: 32, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !749, file: !705, line: 554, baseType: !339, size: 192, align: 64, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !749, file: !705, line: 555, baseType: !310, size: 64, offset: 320)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !749, file: !705, line: 556, baseType: !310, size: 64, offset: 384)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !749, file: !705, line: 558, baseType: !97, size: 128, offset: 448)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !749, file: !705, line: 559, baseType: !7, size: 32, offset: 576)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !749, file: !705, line: 561, baseType: !310, size: 64, offset: 640)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !749, file: !705, line: 562, baseType: !310, size: 64, offset: 704)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !749, file: !705, line: 563, baseType: !310, size: 64, offset: 768)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !749, file: !705, line: 564, baseType: !310, size: 64, offset: 832)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !749, file: !705, line: 565, baseType: !280, size: 64, offset: 896)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !749, file: !705, line: 566, baseType: !310, size: 64, offset: 960)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !749, file: !705, line: 568, baseType: !310, size: 64, offset: 1024)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !749, file: !705, line: 571, baseType: !22, size: 32, offset: 1088)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !749, file: !705, line: 572, baseType: !770, size: 64, offset: 1152)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !749, file: !705, line: 574, baseType: !772, size: 64, offset: 1216)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !705, line: 49, flags: DIFlagFwdDecl)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !749, file: !705, line: 576, baseType: !772, size: 64, offset: 1280)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !749, file: !705, line: 578, baseType: !39, size: 64, offset: 1344)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !749, file: !705, line: 588, baseType: !777, size: 512, align: 512, offset: 1536)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !705, line: 497, size: 512, align: 512, elements: !778)
!778 = !{!779, !780, !781, !782, !783, !784, !785, !786, !787}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !777, file: !705, line: 498, baseType: !310, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !777, file: !705, line: 499, baseType: !310, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !777, file: !705, line: 500, baseType: !310, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !777, file: !705, line: 501, baseType: !377, size: 32, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !777, file: !705, line: 502, baseType: !377, size: 32, offset: 224)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !777, file: !705, line: 503, baseType: !39, size: 64, offset: 256)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !777, file: !705, line: 504, baseType: !39, size: 64, offset: 320)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !777, file: !705, line: 505, baseType: !39, size: 64, offset: 384)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !777, file: !705, line: 506, baseType: !788, size: 64, align: 64, offset: 448)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !705, line: 445, size: 64, align: 64, elements: !789)
!789 = !{!790, !791}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !788, file: !705, line: 446, baseType: !7, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !788, file: !705, line: 447, baseType: !7, size: 32, offset: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !704, file: !705, line: 798, baseType: !793, size: 384, offset: 3072)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !705, line: 592, size: 384, elements: !794)
!794 = !{!795, !796, !797, !798, !799, !800, !801}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !793, file: !705, line: 593, baseType: !97, size: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !793, file: !705, line: 594, baseType: !39, size: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !793, file: !705, line: 595, baseType: !39, size: 64, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !793, file: !705, line: 596, baseType: !7, size: 32, offset: 256)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !793, file: !705, line: 597, baseType: !26, size: 16, offset: 288)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !793, file: !705, line: 598, baseType: !26, size: 16, offset: 304)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !793, file: !705, line: 600, baseType: !802, size: 64, offset: 320)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !704, file: !705, line: 799, baseType: !804, size: 1792, offset: 3456)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !705, line: 610, size: 1792, elements: !805)
!805 = !{!806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !897, !898}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !804, file: !705, line: 611, baseType: !339, size: 192, align: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !804, file: !705, line: 618, baseType: !310, size: 64, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !804, file: !705, line: 619, baseType: !310, size: 64, offset: 256)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !804, file: !705, line: 620, baseType: !310, size: 64, offset: 320)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !804, file: !705, line: 621, baseType: !310, size: 64, offset: 384)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !804, file: !705, line: 622, baseType: !310, size: 64, offset: 448)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !804, file: !705, line: 629, baseType: !280, size: 64, offset: 512)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !804, file: !705, line: 630, baseType: !310, size: 64, offset: 576)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !804, file: !705, line: 631, baseType: !7, size: 32, offset: 640)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !804, file: !705, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !804, file: !705, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !804, file: !705, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !804, file: !705, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !804, file: !705, line: 662, baseType: !820, size: 512, offset: 704)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !821)
!821 = !{!822, !830, !831, !836, !893, !894, !895, !896}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !820, file: !6, line: 119, baseType: !823, size: 256)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !824, line: 9, size: 256, elements: !825)
!824 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !823, file: !824, line: 10, baseType: !339, size: 192, align: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !823, file: !824, line: 11, baseType: !828, size: 64, offset: 192)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !829, line: 29, baseType: !280)
!829 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !820, file: !6, line: 120, baseType: !828, size: 64, offset: 256)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !820, file: !6, line: 121, baseType: !832, size: 64, offset: 320)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!5, !835}
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !820, file: !6, line: 122, baseType: !837, size: 64, offset: 384)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !839)
!839 = !{!840, !865, !866, !869, !879, !880, !888, !892}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !838, file: !6, line: 160, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !843)
!843 = !{!844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !842, file: !6, line: 216, baseType: !358, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !842, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !842, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !842, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !842, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !842, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !842, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !842, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !842, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !842, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !842, file: !6, line: 227, baseType: !26, size: 16, offset: 192)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !842, file: !6, line: 228, baseType: !26, size: 16, offset: 208)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !842, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !842, file: !6, line: 235, baseType: !828, size: 64, offset: 256)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !842, file: !6, line: 236, baseType: !835, size: 64, offset: 320)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !842, file: !6, line: 237, baseType: !828, size: 64, offset: 384)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !842, file: !6, line: 238, baseType: !835, size: 64, offset: 448)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !842, file: !6, line: 239, baseType: !862, size: 4096, align: 512, offset: 512)
!862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !838, size: 4096, align: 512, elements: !863)
!863 = !{!864}
!864 = !DISubrange(count: 8)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !838, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !838, file: !6, line: 162, baseType: !867, size: 32, offset: 96)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !25, line: 32, baseType: !868)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !37, line: 96, baseType: !22)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !838, file: !6, line: 163, baseType: !870, size: 32, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !871, line: 274, baseType: !872)
!871 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !871, line: 274, size: 32, elements: !873)
!873 = !{!874}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !872, file: !871, line: 274, baseType: !875, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !871, line: 69, baseType: !876)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !871, line: 64, size: 32, elements: !877)
!877 = !{!878}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !876, file: !871, line: 65, baseType: !7, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !838, file: !6, line: 164, baseType: !835, size: 64, offset: 192)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !838, file: !6, line: 165, baseType: !881, size: 128, offset: 256)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !824, line: 14, size: 128, elements: !882)
!882 = !{!883}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !881, file: !824, line: 15, baseType: !884, size: 128)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !340, line: 26, size: 128, elements: !885)
!885 = !{!886, !887}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !884, file: !340, line: 27, baseType: !646, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !884, file: !340, line: 28, baseType: !344, size: 64, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !838, file: !6, line: 166, baseType: !889, size: 64, offset: 384)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{!828}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !838, file: !6, line: 167, baseType: !828, size: 64, offset: 448)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !820, file: !6, line: 123, baseType: !83, size: 8, offset: 448)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !820, file: !6, line: 124, baseType: !83, size: 8, offset: 456)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !820, file: !6, line: 125, baseType: !83, size: 8, offset: 464)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !820, file: !6, line: 126, baseType: !83, size: 8, offset: 472)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !804, file: !705, line: 671, baseType: !820, size: 512, offset: 1216)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !804, file: !705, line: 679, baseType: !899, size: 64, offset: 1728)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !704, file: !705, line: 800, baseType: !901, size: 64, offset: 5248)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !903)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !705, line: 800, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !704, file: !705, line: 809, baseType: !905, size: 64, offset: 5312)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !705, line: 70, flags: DIFlagFwdDecl)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !704, file: !705, line: 825, baseType: !908, size: 2048, align: 512, offset: 5632)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !705, line: 509, size: 2048, align: 512, elements: !909)
!909 = !{!910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !908, file: !705, line: 511, baseType: !310, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !908, file: !705, line: 512, baseType: !310, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !908, file: !705, line: 513, baseType: !310, size: 64, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !908, file: !705, line: 514, baseType: !310, size: 64, offset: 192)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !908, file: !705, line: 515, baseType: !310, size: 64, offset: 256)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !908, file: !705, line: 516, baseType: !310, size: 64, offset: 320)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !908, file: !705, line: 518, baseType: !310, size: 64, offset: 384)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !908, file: !705, line: 519, baseType: !310, size: 64, offset: 448)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !908, file: !705, line: 520, baseType: !280, size: 64, offset: 512)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !908, file: !705, line: 522, baseType: !310, size: 64, offset: 576)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !908, file: !705, line: 523, baseType: !310, size: 64, offset: 640)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !908, file: !705, line: 524, baseType: !280, size: 64, offset: 704)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !908, file: !705, line: 526, baseType: !280, size: 64, offset: 768)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !908, file: !705, line: 527, baseType: !310, size: 64, offset: 832)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !908, file: !705, line: 529, baseType: !310, size: 64, offset: 896)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !908, file: !705, line: 530, baseType: !310, size: 64, offset: 960)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !908, file: !705, line: 531, baseType: !310, size: 64, offset: 1024)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !908, file: !705, line: 532, baseType: !310, size: 64, offset: 1088)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !908, file: !705, line: 533, baseType: !310, size: 64, offset: 1152)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !908, file: !705, line: 535, baseType: !310, size: 64, offset: 1216)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !908, file: !705, line: 536, baseType: !310, size: 64, offset: 1280)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !908, file: !705, line: 537, baseType: !310, size: 64, offset: 1344)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !908, file: !705, line: 538, baseType: !310, size: 64, offset: 1408)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !908, file: !705, line: 539, baseType: !310, size: 64, offset: 1472)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !908, file: !705, line: 540, baseType: !310, size: 64, offset: 1536)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !908, file: !705, line: 541, baseType: !310, size: 64, offset: 1600)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !908, file: !705, line: 542, baseType: !310, size: 64, offset: 1664)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !908, file: !705, line: 543, baseType: !310, size: 64, offset: 1728)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !704, file: !705, line: 833, baseType: !7, size: 32, offset: 7680)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !704, file: !705, line: 836, baseType: !7, size: 32, offset: 7712)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !704, file: !705, line: 837, baseType: !22, size: 32, offset: 7744)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !704, file: !705, line: 838, baseType: !942, size: 64, offset: 7808)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !944)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !945, line: 19, baseType: !946)
!945 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !945, line: 19, size: 64, elements: !947)
!947 = !{!948}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !946, file: !945, line: 19, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !950)
!950 = !{!951}
!951 = !DISubrange(count: 1)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !704, file: !705, line: 839, baseType: !953, size: 64, offset: 7872)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !704, file: !705, line: 840, baseType: !944, size: 64, offset: 7936)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !704, file: !705, line: 841, baseType: !20, size: 64, offset: 8000)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !704, file: !705, line: 843, baseType: !26, size: 16, offset: 8064)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !704, file: !705, line: 845, baseType: !26, size: 16, offset: 8080)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !704, file: !705, line: 848, baseType: !22, size: 32, offset: 8096)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !704, file: !705, line: 849, baseType: !960, size: 32, offset: 8128)
!960 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !705, line: 718, size: 32, elements: !961)
!961 = !{!962, !969}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !960, file: !705, line: 724, baseType: !963, size: 32)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !960, file: !705, line: 719, size: 32, elements: !964)
!964 = !{!965, !966, !967, !968}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !963, file: !705, line: 720, baseType: !83, size: 8)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !963, file: !705, line: 721, baseType: !83, size: 8, offset: 8)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !963, file: !705, line: 722, baseType: !83, size: 8, offset: 16)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !963, file: !705, line: 723, baseType: !83, size: 8, offset: 24)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !960, file: !705, line: 725, baseType: !377, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !704, file: !705, line: 850, baseType: !97, size: 128, offset: 8192)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !704, file: !705, line: 851, baseType: !972, size: 64, offset: 8320)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !705, line: 60, flags: DIFlagFwdDecl)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !704, file: !705, line: 855, baseType: !39, size: 64, offset: 8384)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !704, file: !705, line: 856, baseType: !83, size: 8, offset: 8448)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !704, file: !705, line: 857, baseType: !83, size: 8, offset: 8456)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !704, file: !705, line: 858, baseType: !22, size: 32, offset: 8480)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !704, file: !705, line: 859, baseType: !97, size: 128, offset: 8512)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !704, file: !705, line: 860, baseType: !22, size: 32, offset: 8640)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !704, file: !705, line: 861, baseType: !97, size: 128, offset: 8704)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !704, file: !705, line: 873, baseType: !982, size: 256, offset: 8832)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !705, line: 376, size: 256, elements: !983)
!983 = !{!984, !985, !986, !987}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !982, file: !705, line: 381, baseType: !39, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !982, file: !705, line: 384, baseType: !312, size: 64, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !982, file: !705, line: 389, baseType: !312, size: 64, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !982, file: !705, line: 392, baseType: !312, size: 64, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !704, file: !705, line: 875, baseType: !97, size: 128, offset: 9088)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !704, file: !705, line: 877, baseType: !990, size: 320, offset: 9216)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !991, line: 86, size: 320, elements: !992)
!991 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!992 = !{!993, !994, !995}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !990, file: !991, line: 87, baseType: !22, size: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !990, file: !991, line: 88, baseType: !97, size: 128, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !990, file: !991, line: 89, baseType: !97, size: 128, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !704, file: !705, line: 878, baseType: !339, size: 192, align: 64, offset: 9536)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !704, file: !705, line: 881, baseType: !998, size: 64, offset: 9728)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !131, line: 733, size: 10240, elements: !1000)
!1000 = !{!1001, !4881}
!1001 = !DIDerivedType(tag: DW_TAG_member, scope: !999, file: !131, line: 734, baseType: !1002, size: 10240)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !999, file: !131, line: 734, size: 10240, elements: !1003)
!1003 = !{!1004, !1008, !1022, !4760, !4761, !4762, !4763, !4764, !4765, !4772, !4773, !4774, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4813, !4815, !4818, !4861, !4862, !4863, !4866, !4867, !4868, !4871, !4872, !4873, !4879, !4880}
!1004 = !DIDerivedType(tag: DW_TAG_member, scope: !1002, file: !131, line: 739, baseType: !1005, size: 512, align: 512)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1002, file: !131, line: 739, size: 512, align: 512, elements: !1006)
!1006 = !{!1007}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1005, file: !131, line: 747, baseType: !49, size: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1002, file: !131, line: 750, baseType: !1009, size: 128, offset: 512)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1010, line: 218, size: 128, elements: !1011)
!1010 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1011 = !{!1012, !1020, !1021}
!1012 = !DIDerivedType(tag: DW_TAG_member, scope: !1009, file: !1010, line: 219, baseType: !1013, size: 32)
!1013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1009, file: !1010, line: 219, size: 32, elements: !1014)
!1014 = !{!1015, !1016}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1013, file: !1010, line: 220, baseType: !59, size: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1013, file: !1010, line: 221, baseType: !1017)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1010, line: 197, baseType: !1018)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1010, line: 197, elements: !1019)
!1019 = !{}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1009, file: !1010, line: 223, baseType: !7, size: 32, offset: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1009, file: !1010, line: 224, baseType: !20, size: 64, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1002, file: !131, line: 752, baseType: !1023, size: 64, offset: 640)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!39, !1026, !39, !39, !39, !39}
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !239, line: 994, size: 1856, align: 64, elements: !1028)
!1028 = !{!1029, !1035, !1036, !1038, !1039, !1047, !1048, !1049, !1132, !1133, !1142, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759}
!1029 = !DIDerivedType(tag: DW_TAG_member, scope: !1027, file: !239, line: 995, baseType: !1030, size: 128)
!1030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1027, file: !239, line: 995, size: 128, elements: !1031)
!1031 = !{!1032, !1033, !1034}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1030, file: !239, line: 996, baseType: !726, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1030, file: !239, line: 997, baseType: !411, size: 128, align: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1030, file: !239, line: 998, baseType: !7, size: 32)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1027, file: !239, line: 1005, baseType: !59, size: 32, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1027, file: !239, line: 1006, baseType: !1037, size: 32, offset: 160)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !25, line: 156, baseType: !7)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1027, file: !239, line: 1007, baseType: !274, size: 64, offset: 192)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1027, file: !239, line: 1008, baseType: !1040, size: 256, offset: 256)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1041, line: 66, size: 256, elements: !1042)
!1041 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!1042 = !{!1043, !1044, !1045, !1046}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1040, file: !1041, line: 67, baseType: !274, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1040, file: !1041, line: 68, baseType: !358, size: 32, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1040, file: !1041, line: 70, baseType: !353, size: 32, offset: 96)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1040, file: !1041, line: 72, baseType: !97, size: 128, offset: 128)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1027, file: !239, line: 1009, baseType: !41, size: 64, offset: 512)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1027, file: !239, line: 1010, baseType: !7, size: 32, offset: 576)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1027, file: !239, line: 1011, baseType: !1050, size: 256, offset: 640)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !239, line: 948, size: 256, elements: !1051)
!1051 = !{!1052, !1075, !1128, !1129, !1130, !1131}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1050, file: !239, line: 949, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1054, line: 34, baseType: !1055)
!1054 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1054, line: 25, size: 64, elements: !1056)
!1056 = !{!1057}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1055, file: !1054, line: 26, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1059, line: 27, baseType: !1060)
!1059 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1059, line: 13, size: 64, elements: !1061)
!1061 = !{!1062, !1074}
!1062 = !DIDerivedType(tag: DW_TAG_member, scope: !1060, file: !1059, line: 14, baseType: !1063, size: 32)
!1063 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1060, file: !1059, line: 14, size: 32, elements: !1064)
!1064 = !{!1065, !1066}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1063, file: !1059, line: 15, baseType: !49, size: 32)
!1066 = !DIDerivedType(tag: DW_TAG_member, scope: !1063, file: !1059, line: 16, baseType: !1067, size: 32)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1063, file: !1059, line: 16, size: 32, elements: !1068)
!1068 = !{!1069, !1070}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1067, file: !1059, line: 18, baseType: !83, size: 8)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1067, file: !1059, line: 19, baseType: !1071, size: 24, offset: 8)
!1071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 24, elements: !1072)
!1072 = !{!1073}
!1073 = !DISubrange(count: 3)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1060, file: !1059, line: 26, baseType: !71, size: 32, offset: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1050, file: !239, line: 950, baseType: !1076, size: 64, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !108, line: 59, size: 768, elements: !1078)
!1078 = !{!1079, !1080, !1081, !1082, !1084, !1085, !1086, !1087}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1077, file: !108, line: 61, baseType: !324, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1077, file: !108, line: 62, baseType: !7, size: 32, offset: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1077, file: !108, line: 63, baseType: !59, size: 32, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1077, file: !108, line: 65, baseType: !1083, size: 256, offset: 128)
!1083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 256, elements: !442)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1077, file: !108, line: 66, baseType: !642, size: 64, offset: 384)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1077, file: !108, line: 68, baseType: !54, size: 192, offset: 448)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1077, file: !108, line: 69, baseType: !411, size: 128, align: 64, offset: 640)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1077, file: !108, line: 70, baseType: !1088, offset: 768)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1089, elements: !678)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !108, line: 54, size: 128, elements: !1090)
!1090 = !{!1091, !1092}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1089, file: !108, line: 55, baseType: !22, size: 32)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1089, file: !108, line: 56, baseType: !1093, size: 64, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1095, line: 26, size: 1152, elements: !1096)
!1095 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!1096 = !{!1097, !1111, !1112, !1113, !1114, !1118, !1119, !1120, !1123, !1124, !1125, !1126, !1127}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1094, file: !1095, line: 27, baseType: !1098, size: 192)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1099, line: 19, size: 192, elements: !1100)
!1099 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1100 = !{!1101, !1109, !1110}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1098, file: !1099, line: 20, baseType: !1102, size: 128)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1103, line: 296, size: 128, elements: !1104)
!1103 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1104 = !{!1105, !1106, !1108}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1102, file: !1103, line: 297, baseType: !59, size: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1102, file: !1103, line: 299, baseType: !1107, size: 32, offset: 32)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !25, line: 154, baseType: !7)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1102, file: !1103, line: 300, baseType: !20, size: 64, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1098, file: !1099, line: 21, baseType: !7, size: 32, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1098, file: !1099, line: 22, baseType: !7, size: 32, offset: 160)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1094, file: !1095, line: 28, baseType: !411, size: 128, align: 64, offset: 192)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1094, file: !1095, line: 29, baseType: !7, size: 32, offset: 320)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1094, file: !1095, line: 30, baseType: !703, size: 64, offset: 384)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1094, file: !1095, line: 31, baseType: !1115, size: 64, offset: 448)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1117, line: 325, flags: DIFlagFwdDecl)
!1117 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1094, file: !1095, line: 32, baseType: !7, size: 32, offset: 512)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1094, file: !1095, line: 33, baseType: !1093, size: 64, offset: 576)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !1094, file: !1095, line: 35, baseType: !1121, size: 64, offset: 640)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !1095, line: 17, flags: DIFlagFwdDecl)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1094, file: !1095, line: 37, baseType: !513, size: 64, offset: 704)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1094, file: !1095, line: 38, baseType: !651, size: 64, offset: 768)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1094, file: !1095, line: 39, baseType: !22, size: 32, offset: 832)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1094, file: !1095, line: 40, baseType: !546, size: 192, offset: 896)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !1094, file: !1095, line: 42, baseType: !22, size: 32, offset: 1088)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1050, file: !239, line: 951, baseType: !107, size: 32, offset: 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1050, file: !239, line: 952, baseType: !283, size: 32, offset: 160)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1050, file: !239, line: 952, baseType: !283, size: 32, offset: 192)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1050, file: !239, line: 953, baseType: !22, size: 32, offset: 224)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1027, file: !239, line: 1012, baseType: !268, size: 64, offset: 896)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1027, file: !239, line: 1013, baseType: !1134, size: 256, offset: 960)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !239, line: 970, size: 256, elements: !1135)
!1135 = !{!1136, !1137, !1138, !1139, !1140, !1141}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1134, file: !239, line: 971, baseType: !39, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1134, file: !239, line: 972, baseType: !7, size: 32, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1134, file: !239, line: 973, baseType: !7, size: 32, offset: 96)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1134, file: !239, line: 974, baseType: !7, size: 32, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1134, file: !239, line: 975, baseType: !7, size: 32, offset: 160)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1134, file: !239, line: 976, baseType: !41, size: 64, offset: 192)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1027, file: !239, line: 1014, baseType: !1143, size: 128, offset: 1216)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1144, line: 8, size: 128, elements: !1145)
!1144 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1145 = !{!1146, !4750}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1143, file: !1144, line: 9, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1149, line: 70, size: 256, elements: !1150)
!1149 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1150 = !{!1151, !4747, !4748, !4749}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1148, file: !1149, line: 71, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1154, line: 82, size: 1536, elements: !1155)
!1154 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1155 = !{!1156, !1157, !1162, !1170, !1171, !1186, !4715, !4717, !4730, !4731, !4732, !4733, !4734, !4739, !4740, !4741}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1153, file: !1154, line: 84, baseType: !7, size: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1153, file: !1154, line: 85, baseType: !1158, size: 32, offset: 32)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !871, line: 275, baseType: !1159)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !871, line: 275, size: 32, elements: !1160)
!1160 = !{!1161}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1159, file: !871, line: 275, baseType: !875, size: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1153, file: !1154, line: 86, baseType: !1163, size: 128, offset: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1164, line: 38, size: 128, elements: !1165)
!1164 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1165 = !{!1166, !1168}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1163, file: !1164, line: 39, baseType: !1167, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1163, file: !1164, line: 39, baseType: !1169, size: 64, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1153, file: !1154, line: 87, baseType: !1152, size: 64, offset: 192)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1153, file: !1154, line: 88, baseType: !1172, size: 128, offset: 256)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1154, line: 49, size: 128, elements: !1173)
!1173 = !{!1174, !1183}
!1174 = !DIDerivedType(tag: DW_TAG_member, scope: !1172, file: !1154, line: 50, baseType: !1175, size: 64)
!1175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1172, file: !1154, line: 50, size: 64, elements: !1176)
!1176 = !{!1177, !1182}
!1177 = !DIDerivedType(tag: DW_TAG_member, scope: !1175, file: !1154, line: 51, baseType: !1178, size: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1175, file: !1154, line: 51, size: 64, elements: !1179)
!1179 = !{!1180, !1181}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1178, file: !1154, line: 52, baseType: !377, size: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1178, file: !1154, line: 52, baseType: !377, size: 32, offset: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1175, file: !1154, line: 54, baseType: !310, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1172, file: !1154, line: 56, baseType: !1184, size: 64, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1153, file: !1154, line: 89, baseType: !1187, size: 64, offset: 384)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !239, line: 641, size: 4800, elements: !1189)
!1189 = !{!1190, !1191, !1192, !1193, !1194, !1195, !1196, !1199, !1200, !1387, !4530, !4531, !4532, !4533, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4697, !4700, !4701, !4702, !4711, !4712, !4713, !4714}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1188, file: !239, line: 642, baseType: !24, size: 16)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1188, file: !239, line: 643, baseType: !26, size: 16, offset: 16)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1188, file: !239, line: 644, baseType: !283, size: 32, offset: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1188, file: !239, line: 645, baseType: !97, size: 128, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1188, file: !239, line: 646, baseType: !291, size: 32, offset: 192)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1188, file: !239, line: 647, baseType: !7, size: 32, offset: 224)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1188, file: !239, line: 650, baseType: !1197, size: 64, offset: 256)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !239, line: 607, flags: DIFlagFwdDecl)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1188, file: !239, line: 651, baseType: !1197, size: 64, offset: 320)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1188, file: !239, line: 654, baseType: !1201, size: 64, offset: 384)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1203)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !239, line: 1966, size: 2048, align: 512, elements: !1204)
!1204 = !{!1205, !1209, !1222, !1228, !1232, !1236, !1240, !1244, !1248, !1252, !1256, !1257, !1263, !1267, !1304, !1335, !1342, !1348, !1352, !1356, !1360, !1364, !1368, !1374, !1378}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1203, file: !239, line: 1967, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!1152, !1187, !1152, !7}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1203, file: !239, line: 1968, baseType: !1210, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!16, !1152, !1187, !1213}
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1215, line: 10, size: 128, elements: !1216)
!1215 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1216 = !{!1217, !1221}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1214, file: !1215, line: 11, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{null, !20}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1214, file: !1215, line: 12, baseType: !20, size: 64, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1203, file: !239, line: 1969, baseType: !1223, size: 64, offset: 128)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!22, !1226, !1187, !22}
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !306, line: 42, flags: DIFlagFwdDecl)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1203, file: !239, line: 1970, baseType: !1229, size: 64, offset: 192)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!1197, !1187, !22, !421}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1203, file: !239, line: 1972, baseType: !1233, size: 64, offset: 256)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!22, !1152, !432, !22}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1203, file: !239, line: 1974, baseType: !1237, size: 64, offset: 320)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!22, !1226, !1187, !1152, !24, !421}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1203, file: !239, line: 1976, baseType: !1241, size: 64, offset: 384)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!22, !1152, !1187, !1152}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1203, file: !239, line: 1977, baseType: !1245, size: 64, offset: 448)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!22, !1187, !1152}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1203, file: !239, line: 1978, baseType: !1249, size: 64, offset: 512)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!22, !1226, !1187, !1152, !16}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1203, file: !239, line: 1980, baseType: !1253, size: 64, offset: 576)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!22, !1226, !1187, !1152, !24}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1203, file: !239, line: 1982, baseType: !1245, size: 64, offset: 640)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1203, file: !239, line: 1983, baseType: !1258, size: 64, offset: 704)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!22, !1226, !1187, !1152, !24, !1261}
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !25, line: 21, baseType: !1262)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !25, line: 18, baseType: !377)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1203, file: !239, line: 1985, baseType: !1264, size: 64, offset: 768)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!22, !1226, !1187, !1152, !1187, !1152, !7}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1203, file: !239, line: 1987, baseType: !1268, size: 64, offset: 832)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!22, !1226, !1152, !1271}
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !239, line: 226, size: 640, elements: !1273)
!1273 = !{!1274, !1275, !1276, !1286, !1295, !1296, !1301, !1302, !1303}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1272, file: !239, line: 227, baseType: !7, size: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1272, file: !239, line: 228, baseType: !24, size: 16, offset: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, scope: !1272, file: !239, line: 241, baseType: !1277, size: 32, offset: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1272, file: !239, line: 241, size: 32, elements: !1278)
!1278 = !{!1279, !1280}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1277, file: !239, line: 242, baseType: !283, size: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1277, file: !239, line: 243, baseType: !1281, size: 32)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1282, line: 16, baseType: !1283)
!1282 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1282, line: 14, size: 32, elements: !1284)
!1284 = !{!1285}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1283, file: !1282, line: 15, baseType: !288, size: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, scope: !1272, file: !239, line: 245, baseType: !1287, size: 32, offset: 96)
!1287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1272, file: !239, line: 245, size: 32, elements: !1288)
!1288 = !{!1289, !1290}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1287, file: !239, line: 246, baseType: !291, size: 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1287, file: !239, line: 247, baseType: !1291, size: 32)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1282, line: 20, baseType: !1292)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1282, line: 18, size: 32, elements: !1293)
!1293 = !{!1294}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1292, file: !1282, line: 19, baseType: !295, size: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1272, file: !239, line: 249, baseType: !41, size: 64, offset: 128)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1272, file: !239, line: 250, baseType: !1297, size: 128, offset: 192)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !369, line: 13, size: 128, elements: !1298)
!1298 = !{!1299, !1300}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1297, file: !369, line: 14, baseType: !368, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1297, file: !369, line: 15, baseType: !666, size: 64, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1272, file: !239, line: 251, baseType: !1297, size: 128, offset: 320)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1272, file: !239, line: 252, baseType: !1297, size: 128, offset: 448)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1272, file: !239, line: 259, baseType: !1026, size: 64, offset: 576)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1203, file: !239, line: 1988, baseType: !1305, size: 64, offset: 896)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!22, !1226, !1308, !1310, !377, !7}
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1143)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1312, line: 22, size: 1280, elements: !1313)
!1312 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1313 = !{!1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1311, file: !1312, line: 23, baseType: !377, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1311, file: !1312, line: 24, baseType: !24, size: 16, offset: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1311, file: !1312, line: 25, baseType: !7, size: 32, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1311, file: !1312, line: 26, baseType: !376, size: 32, offset: 96)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1311, file: !1312, line: 27, baseType: !310, size: 64, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1311, file: !1312, line: 28, baseType: !310, size: 64, offset: 192)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1311, file: !1312, line: 41, baseType: !310, size: 64, offset: 256)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1311, file: !1312, line: 42, baseType: !1261, size: 32, offset: 320)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1311, file: !1312, line: 43, baseType: !1261, size: 32, offset: 352)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1311, file: !1312, line: 44, baseType: !283, size: 32, offset: 384)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1311, file: !1312, line: 45, baseType: !291, size: 32, offset: 416)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1311, file: !1312, line: 46, baseType: !41, size: 64, offset: 448)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1311, file: !1312, line: 47, baseType: !1297, size: 128, offset: 512)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1311, file: !1312, line: 48, baseType: !1297, size: 128, offset: 640)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1311, file: !1312, line: 49, baseType: !1297, size: 128, offset: 768)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1311, file: !1312, line: 50, baseType: !1297, size: 128, offset: 896)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1311, file: !1312, line: 51, baseType: !310, size: 64, offset: 1024)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1311, file: !1312, line: 52, baseType: !310, size: 64, offset: 1088)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1311, file: !1312, line: 53, baseType: !377, size: 32, offset: 1152)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1311, file: !1312, line: 54, baseType: !377, size: 32, offset: 1184)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1311, file: !1312, line: 55, baseType: !310, size: 64, offset: 1216)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1203, file: !239, line: 1990, baseType: !1336, size: 64, offset: 960)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!1339, !1152, !432, !35}
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !25, line: 66, baseType: !1340)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !37, line: 73, baseType: !1341)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !37, line: 15, baseType: !666)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1203, file: !239, line: 1991, baseType: !1343, size: 64, offset: 1024)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!22, !1187, !1346, !310, !310}
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !239, line: 55, flags: DIFlagFwdDecl)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1203, file: !239, line: 1993, baseType: !1349, size: 64, offset: 1088)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!22, !1187, !22}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1203, file: !239, line: 1994, baseType: !1353, size: 64, offset: 1152)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!22, !1187, !1152, !1026, !7, !24}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1203, file: !239, line: 1997, baseType: !1357, size: 64, offset: 1216)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!22, !1226, !1187, !1026, !24}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1203, file: !239, line: 1999, baseType: !1361, size: 64, offset: 1280)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!1197, !1226, !1152, !22}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1203, file: !239, line: 2001, baseType: !1365, size: 64, offset: 1344)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!22, !1226, !1152, !1197, !22}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1203, file: !239, line: 2003, baseType: !1369, size: 64, offset: 1408)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!22, !1226, !1152, !1372}
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !239, line: 76, flags: DIFlagFwdDecl)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1203, file: !239, line: 2005, baseType: !1375, size: 64, offset: 1472)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!22, !1152, !1372}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1203, file: !239, line: 2006, baseType: !1379, size: 64, offset: 1536)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!1382, !1187}
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !239, line: 3192, size: 192, elements: !1384)
!1384 = !{!1385, !1386}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1383, file: !239, line: 3193, baseType: !1102, size: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1383, file: !239, line: 3194, baseType: !377, size: 32, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1188, file: !239, line: 655, baseType: !1388, size: 64, offset: 448)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !239, line: 1190, size: 10752, elements: !1390)
!1390 = !{!1391, !1392, !1393, !1394, !1395, !1396, !4047, !4179, !4219, !4302, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4319, !4323, !4324, !4327, !4330, !4333, !4336, !4337, !4338, !4379, !4401, !4402, !4403, !4404, !4405, !4406, !4409, !4413, !4422, !4423, !4424, !4425, !4484, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1389, file: !239, line: 1191, baseType: !97, size: 128)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1389, file: !239, line: 1192, baseType: !1261, size: 32, offset: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1389, file: !239, line: 1193, baseType: !87, size: 8, offset: 160)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1389, file: !239, line: 1194, baseType: !39, size: 64, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1389, file: !239, line: 1195, baseType: !41, size: 64, offset: 256)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1389, file: !239, line: 1196, baseType: !1397, size: 64, offset: 320)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !239, line: 2366, size: 576, elements: !1399)
!1399 = !{!1400, !1401, !1402, !1408, !1412, !1416, !1420, !4035, !4036, !4037, !4039, !4040, !4041, !4043, !4044, !4045, !4046}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1398, file: !239, line: 2367, baseType: !16, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1398, file: !239, line: 2368, baseType: !22, size: 32, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1398, file: !239, line: 2376, baseType: !1403, size: 64, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!22, !1406}
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1149, line: 21, flags: DIFlagFwdDecl)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1398, file: !239, line: 2377, baseType: !1409, size: 64, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1411)
!1411 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !239, line: 75, flags: DIFlagFwdDecl)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1398, file: !239, line: 2378, baseType: !1413, size: 64, offset: 256)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!1152, !1397, !22, !16, !20}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1398, file: !239, line: 2380, baseType: !1417, size: 64, offset: 320)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{null, !1388}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1398, file: !239, line: 2381, baseType: !1421, size: 64, offset: 384)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !116, line: 402, size: 9216, align: 512, elements: !1423)
!1423 = !{!1424, !1425, !1426, !1430, !2241, !2267, !2268, !2269, !2270, !2274, !2277, !2278, !2279, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2347, !2351, !2371, !2391, !2392, !2393, !2394, !2403, !2426, !2427, !2430, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2444, !2445, !2544, !2552, !2553, !2554, !2556, !4013, !4014, !4023, !4024, !4025, !4026, !4028, !4029, !4030, !4031, !4032, !4033, !4034}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1422, file: !116, line: 403, baseType: !115, size: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1422, file: !116, line: 406, baseType: !97, size: 128, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1422, file: !116, line: 409, baseType: !1427, size: 448, offset: 192)
!1427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 448, elements: !1428)
!1428 = !{!1429}
!1429 = !DISubrange(count: 56)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1422, file: !116, line: 417, baseType: !1431, size: 768, offset: 640)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !116, line: 45, size: 768, elements: !1432)
!1432 = !{!1433, !2235, !2236, !2237, !2240}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1431, file: !116, line: 46, baseType: !1434, size: 512)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1435, line: 64, size: 512, elements: !1436)
!1435 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1436 = !{!1437, !1438, !1439, !1441, !1485, !2082, !2225, !2230, !2231, !2232, !2233, !2234}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1434, file: !1435, line: 65, baseType: !16, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1434, file: !1435, line: 66, baseType: !97, size: 128, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1434, file: !1435, line: 67, baseType: !1440, size: 64, offset: 192)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1434, file: !1435, line: 68, baseType: !1442, size: 64, offset: 256)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1435, line: 168, size: 768, elements: !1444)
!1444 = !{!1445, !1446, !1447, !1448}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1443, file: !1435, line: 169, baseType: !97, size: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1443, file: !1435, line: 170, baseType: !59, size: 32, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1443, file: !1435, line: 171, baseType: !1434, size: 512, offset: 192)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1443, file: !1435, line: 172, baseType: !1449, size: 64, offset: 704)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1451)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1435, line: 133, size: 192, elements: !1452)
!1452 = !{!1453, !1460, !1465}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1451, file: !1435, line: 134, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1455)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!22, !1458}
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1434)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1451, file: !1435, line: 135, baseType: !1461, size: 64, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1462)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!16, !1458}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1451, file: !1435, line: 136, baseType: !1466, size: 64, offset: 128)
!1466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1467)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!22, !1458, !1470}
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1435, line: 125, size: 20736, elements: !1472)
!1472 = !{!1473, !1475, !1479, !1480, !1484}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1471, file: !1435, line: 126, baseType: !1474, size: 192)
!1474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 192, elements: !1072)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1471, file: !1435, line: 127, baseType: !1476, size: 4096, offset: 192)
!1476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 4096, elements: !1477)
!1477 = !{!1478}
!1478 = !DISubrange(count: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1471, file: !1435, line: 128, baseType: !22, size: 32, offset: 4288)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1471, file: !1435, line: 129, baseType: !1481, size: 16384, offset: 4320)
!1481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 16384, elements: !1482)
!1482 = !{!1483}
!1483 = !DISubrange(count: 2048)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1471, file: !1435, line: 130, baseType: !22, size: 32, offset: 20704)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1434, file: !1435, line: 69, baseType: !1486, size: 64, offset: 320)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1488)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1435, line: 116, size: 384, elements: !1489)
!1489 = !{!1490, !1494, !1513, !2043, !2074, !2078}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1488, file: !1435, line: 117, baseType: !1491, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{null, !1440}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1488, file: !1435, line: 118, baseType: !1495, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1497)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1498, line: 254, size: 128, elements: !1499)
!1498 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1499 = !{!1500, !1509}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1497, file: !1498, line: 255, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!1339, !1440, !1504, !432}
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1498, line: 30, size: 128, elements: !1506)
!1506 = !{!1507, !1508}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1505, file: !1498, line: 31, baseType: !16, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1505, file: !1498, line: 32, baseType: !24, size: 16, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1497, file: !1498, line: 256, baseType: !1510, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!1339, !1440, !1504, !16, !35}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1488, file: !1435, line: 119, baseType: !1514, size: 64, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1517)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1498, line: 84, size: 320, elements: !1518)
!1518 = !{!1519, !1520, !1524, !2039, !2041}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1517, file: !1498, line: 85, baseType: !16, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1517, file: !1498, line: 86, baseType: !1521, size: 64, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!24, !1440, !1504, !22}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1517, file: !1498, line: 88, baseType: !1525, size: 64, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!24, !1440, !1528, !22}
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1498, line: 175, size: 512, elements: !1530)
!1530 = !{!1531, !1532, !1533, !1534, !2030, !2034, !2035}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1529, file: !1498, line: 176, baseType: !1505, size: 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1529, file: !1498, line: 177, baseType: !35, size: 64, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1529, file: !1498, line: 178, baseType: !20, size: 64, offset: 192)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1529, file: !1498, line: 179, baseType: !1535, size: 64, offset: 256)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!1538}
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !239, line: 472, size: 1536, align: 64, elements: !1540)
!1540 = !{!1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !2022, !2023, !2024, !2027, !2028, !2029}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1539, file: !239, line: 473, baseType: !1187, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1539, file: !239, line: 474, baseType: !1102, size: 128, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1539, file: !239, line: 475, baseType: !347, size: 320, offset: 192)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1539, file: !239, line: 476, baseType: !1107, size: 32, offset: 512)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1539, file: !239, line: 477, baseType: !49, size: 32, offset: 544)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1539, file: !239, line: 482, baseType: !884, size: 128, offset: 576)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1539, file: !239, line: 483, baseType: !39, size: 64, offset: 704)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1539, file: !239, line: 484, baseType: !39, size: 64, offset: 768)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1539, file: !239, line: 485, baseType: !1550, size: 64, offset: 832)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1552)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !239, line: 404, size: 1280, elements: !1553)
!1553 = !{!1554, !1847, !1917, !1921, !1925, !1931, !1937, !1941, !1946, !1950, !1954, !1958, !1986, !1990, !1994, !1998, !2003, !2007, !2014, !2018}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1552, file: !239, line: 405, baseType: !1555, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!22, !1558, !1845}
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !131, line: 74, size: 512, align: 128, elements: !1560)
!1560 = !{!1561, !1562, !1839, !1844}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1559, file: !131, line: 75, baseType: !39, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, scope: !1559, file: !131, line: 83, baseType: !1563, size: 320, offset: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1559, file: !131, line: 83, size: 320, elements: !1564)
!1564 = !{!1565, !1586, !1600, !1604, !1838}
!1565 = !DIDerivedType(tag: DW_TAG_member, scope: !1563, file: !131, line: 84, baseType: !1566, size: 320)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1563, file: !131, line: 84, size: 320, elements: !1567)
!1567 = !{!1568, !1579, !1580, !1585}
!1568 = !DIDerivedType(tag: DW_TAG_member, scope: !1566, file: !131, line: 90, baseType: !1569, size: 128)
!1569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1566, file: !131, line: 90, size: 128, elements: !1570)
!1570 = !{!1571, !1572, !1577, !1578}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1569, file: !131, line: 91, baseType: !97, size: 128)
!1572 = !DIDerivedType(tag: DW_TAG_member, scope: !1569, file: !131, line: 94, baseType: !1573, size: 128)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1569, file: !131, line: 94, size: 128, elements: !1574)
!1574 = !{!1575, !1576}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1573, file: !131, line: 96, baseType: !20, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1573, file: !131, line: 98, baseType: !7, size: 32, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1569, file: !131, line: 102, baseType: !97, size: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1569, file: !131, line: 103, baseType: !97, size: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1566, file: !131, line: 106, baseType: !1538, size: 64, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, scope: !1566, file: !131, line: 107, baseType: !1581, size: 64, offset: 192)
!1581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1566, file: !131, line: 107, size: 64, elements: !1582)
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1581, file: !131, line: 108, baseType: !39, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1581, file: !131, line: 109, baseType: !39, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1566, file: !131, line: 117, baseType: !39, size: 64, offset: 256)
!1586 = !DIDerivedType(tag: DW_TAG_member, scope: !1563, file: !131, line: 119, baseType: !1587, size: 320)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1563, file: !131, line: 119, size: 320, elements: !1588)
!1588 = !{!1589, !1590, !1593, !1594, !1595}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1587, file: !131, line: 124, baseType: !39, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1587, file: !131, line: 125, baseType: !1591, size: 64, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !131, line: 125, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1587, file: !131, line: 126, baseType: !39, size: 64, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1587, file: !131, line: 127, baseType: !39, size: 64, offset: 192)
!1595 = !DIDerivedType(tag: DW_TAG_member, scope: !1587, file: !131, line: 128, baseType: !1596, size: 64, offset: 256)
!1596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1587, file: !131, line: 128, size: 64, elements: !1597)
!1597 = !{!1598, !1599}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1596, file: !131, line: 133, baseType: !39, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1596, file: !131, line: 138, baseType: !274, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, scope: !1563, file: !131, line: 141, baseType: !1601, size: 64)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1563, file: !131, line: 141, size: 64, elements: !1602)
!1602 = !{!1603}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1601, file: !131, line: 142, baseType: !39, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, scope: !1563, file: !131, line: 144, baseType: !1605, size: 128)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1563, file: !131, line: 144, size: 128, elements: !1606)
!1606 = !{!1607, !1837}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1605, file: !131, line: 146, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !123, line: 126, size: 1216, elements: !1610)
!1610 = !{!1611, !1621, !1642, !1643, !1644, !1645, !1646, !1819, !1820, !1821}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1609, file: !123, line: 127, baseType: !1612, size: 384)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !123, line: 21, size: 384, elements: !1613)
!1613 = !{!1614, !1615, !1617, !1618, !1619, !1620}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1612, file: !123, line: 22, baseType: !39, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1612, file: !123, line: 23, baseType: !1616, size: 64, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1612, file: !123, line: 24, baseType: !1616, size: 64, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1612, file: !123, line: 25, baseType: !39, size: 64, offset: 192)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1612, file: !123, line: 26, baseType: !39, size: 64, offset: 256)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1612, file: !123, line: 27, baseType: !39, size: 64, offset: 320)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1609, file: !123, line: 128, baseType: !1622, size: 128, offset: 384)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1623, line: 105, size: 128, elements: !1624)
!1623 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1624 = !{!1625, !1626}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1622, file: !1623, line: 110, baseType: !39, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1622, file: !1623, line: 118, baseType: !1627, size: 64, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1623, line: 95, size: 448, elements: !1629)
!1629 = !{!1630, !1631, !1637, !1638, !1639, !1640, !1641}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1628, file: !1623, line: 96, baseType: !274, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1628, file: !1623, line: 97, baseType: !1632, size: 64, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1623, line: 60, baseType: !1634)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{null, !1636}
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1628, file: !1623, line: 98, baseType: !1632, size: 64, offset: 128)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1628, file: !1623, line: 99, baseType: !421, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1628, file: !1623, line: 100, baseType: !421, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1628, file: !1623, line: 101, baseType: !411, size: 128, align: 64, offset: 256)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1628, file: !1623, line: 102, baseType: !1636, size: 64, offset: 384)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1609, file: !123, line: 129, baseType: !601, size: 256, offset: 512)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1609, file: !123, line: 130, baseType: !122, size: 32, offset: 768)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1609, file: !123, line: 131, baseType: !7, size: 32, offset: 800)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1609, file: !123, line: 132, baseType: !39, size: 64, offset: 832)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1609, file: !123, line: 133, baseType: !1647, size: 64, offset: 896)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1649)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !123, line: 77, size: 192, elements: !1650)
!1650 = !{!1651, !1655, !1815}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1649, file: !123, line: 83, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{null, !1558}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1649, file: !123, line: 89, baseType: !1656, size: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!1659, !1660}
!1659 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !131, line: 1184, baseType: !7)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1662, line: 512, size: 896, elements: !1663)
!1662 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1663 = !{!1664, !1782, !1783, !1790, !1797, !1807, !1808, !1809, !1811, !1813}
!1664 = !DIDerivedType(tag: DW_TAG_member, scope: !1661, file: !1662, line: 513, baseType: !1665, size: 320)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1661, file: !1662, line: 513, size: 320, elements: !1666)
!1666 = !{!1667, !1778, !1779, !1780, !1781}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1665, file: !1662, line: 514, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !131, line: 625, size: 1344, elements: !1670)
!1670 = !{!1671, !1680, !1681, !1689, !1696, !1697, !1702, !1703, !1708, !1709, !1712, !1771, !1772, !1773, !1774, !1775, !1776}
!1671 = !DIDerivedType(tag: DW_TAG_member, scope: !1669, file: !131, line: 628, baseType: !1672, size: 128)
!1672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1669, file: !131, line: 628, size: 128, elements: !1673)
!1673 = !{!1674, !1679}
!1674 = !DIDerivedType(tag: DW_TAG_member, scope: !1672, file: !131, line: 629, baseType: !1675, size: 128)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1672, file: !131, line: 629, size: 128, elements: !1676)
!1676 = !{!1677, !1678}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1675, file: !131, line: 631, baseType: !39, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1675, file: !131, line: 632, baseType: !39, size: 64, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1672, file: !131, line: 635, baseType: !411, size: 128, align: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1669, file: !131, line: 639, baseType: !998, size: 64, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1669, file: !131, line: 640, baseType: !1682, size: 64, offset: 192)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1683, line: 297, baseType: !1684)
!1683 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1683, line: 297, size: 64, elements: !1685)
!1685 = !{!1686}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1684, file: !1683, line: 297, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1688, line: 19, baseType: !39)
!1688 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1689 = !DIDerivedType(tag: DW_TAG_member, scope: !1669, file: !131, line: 646, baseType: !1690, size: 64, offset: 256)
!1690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1669, file: !131, line: 646, size: 64, elements: !1691)
!1691 = !{!1692, !1695}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1690, file: !131, line: 647, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1694)
!1694 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !131, line: 542, baseType: !39)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1690, file: !131, line: 648, baseType: !1694, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1669, file: !131, line: 666, baseType: !22, size: 32, offset: 320)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1669, file: !131, line: 667, baseType: !1698, size: 64, offset: 384)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !131, line: 579, size: 320, elements: !1700)
!1700 = !{!1701}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1699, file: !131, line: 580, baseType: !347, size: 320)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1669, file: !131, line: 670, baseType: !421, size: 8, offset: 448)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1669, file: !131, line: 681, baseType: !1704, size: 256, offset: 512)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1669, file: !131, line: 678, size: 256, elements: !1705)
!1705 = !{!1706, !1707}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1704, file: !131, line: 679, baseType: !339, size: 192, align: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1704, file: !131, line: 680, baseType: !39, size: 64, offset: 192)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1669, file: !131, line: 689, baseType: !97, size: 128, offset: 768)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1669, file: !131, line: 691, baseType: !1710, size: 64, offset: 896)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !131, line: 691, flags: DIFlagFwdDecl)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1669, file: !131, line: 694, baseType: !1713, size: 64, offset: 960)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1715)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1662, line: 563, size: 1024, elements: !1716)
!1716 = !{!1717, !1721, !1722, !1726, !1730, !1734, !1735, !1739, !1743, !1747, !1748, !1749, !1753, !1757, !1763, !1767}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1715, file: !1662, line: 564, baseType: !1718, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{null, !1668}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1715, file: !1662, line: 569, baseType: !1718, size: 64, offset: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1715, file: !1662, line: 571, baseType: !1723, size: 64, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!22, !1668, !39}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1715, file: !1662, line: 572, baseType: !1727, size: 64, offset: 192)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!22, !1668}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1715, file: !1662, line: 578, baseType: !1731, size: 64, offset: 256)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!22, !1668, !39, !39, !39}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1715, file: !1662, line: 580, baseType: !1656, size: 64, offset: 320)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1715, file: !1662, line: 581, baseType: !1736, size: 64, offset: 384)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!1659, !1660, !7}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1715, file: !1662, line: 582, baseType: !1740, size: 64, offset: 448)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!1659, !1660, !39, !39}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1715, file: !1662, line: 584, baseType: !1744, size: 64, offset: 512)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!39, !1668}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1715, file: !1662, line: 588, baseType: !1656, size: 64, offset: 576)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1715, file: !1662, line: 591, baseType: !1656, size: 64, offset: 640)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1715, file: !1662, line: 597, baseType: !1750, size: 64, offset: 704)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!22, !1668, !39, !20, !22, !22}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1715, file: !1662, line: 603, baseType: !1754, size: 64, offset: 768)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!16, !1668}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1715, file: !1662, line: 613, baseType: !1758, size: 64, offset: 832)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!22, !1668, !1761}
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !705, line: 54, flags: DIFlagFwdDecl)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1715, file: !1662, line: 625, baseType: !1764, size: 64, offset: 896)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!1761, !1668, !39}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1715, file: !1662, line: 633, baseType: !1768, size: 64, offset: 960)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!1558, !1668, !39}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1669, file: !131, line: 697, baseType: !39, size: 64, offset: 1024)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1669, file: !131, line: 699, baseType: !1026, size: 64, offset: 1088)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1669, file: !131, line: 700, baseType: !20, size: 64, offset: 1152)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1669, file: !131, line: 711, baseType: !274, size: 64, offset: 1216)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1669, file: !131, line: 717, baseType: !1761, size: 64, offset: 1280)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1669, file: !131, line: 722, baseType: !1777, offset: 1344)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !131, line: 570, elements: !1019)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1665, file: !1662, line: 515, baseType: !1107, size: 32, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1665, file: !1662, line: 516, baseType: !39, size: 64, offset: 128)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1665, file: !1662, line: 517, baseType: !39, size: 64, offset: 192)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1665, file: !1662, line: 518, baseType: !39, size: 64, offset: 256)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1661, file: !1662, line: 520, baseType: !130, size: 32, offset: 320)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1661, file: !1662, line: 522, baseType: !1784, size: 64, offset: 384)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1688, line: 22, baseType: !1786)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1688, line: 22, size: 64, elements: !1787)
!1787 = !{!1788}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1786, file: !1688, line: 22, baseType: !1789, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1688, line: 15, baseType: !39)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1661, file: !1662, line: 524, baseType: !1791, size: 64, offset: 448)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1683, line: 372, baseType: !1793)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1683, line: 372, size: 64, elements: !1794)
!1794 = !{!1795}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1793, file: !1683, line: 372, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1688, line: 16, baseType: !39)
!1797 = !DIDerivedType(tag: DW_TAG_member, scope: !1661, file: !1662, line: 527, baseType: !1798, size: 64, offset: 512)
!1798 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1661, file: !1662, line: 527, size: 64, elements: !1799)
!1799 = !{!1800, !1806}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1798, file: !1662, line: 528, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1688, line: 21, baseType: !1802)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1688, line: 21, size: 64, elements: !1803)
!1803 = !{!1804}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1802, file: !1688, line: 21, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1688, line: 14, baseType: !39)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1798, file: !1662, line: 529, baseType: !1785, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1661, file: !1662, line: 534, baseType: !1558, size: 64, offset: 576)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1661, file: !1662, line: 535, baseType: !1558, size: 64, offset: 640)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1661, file: !1662, line: 541, baseType: !1810, size: 64, offset: 704)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1661, file: !1662, line: 545, baseType: !1812, size: 64, offset: 768)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1661, file: !1662, line: 549, baseType: !1814, size: 64, offset: 832)
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1683, line: 520, baseType: !1558)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1649, file: !123, line: 100, baseType: !1816, size: 64, offset: 128)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!22, !1608, !39, !39, !22}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1609, file: !123, line: 134, baseType: !20, size: 64, offset: 960)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1609, file: !123, line: 135, baseType: !22, size: 32, offset: 1024)
!1821 = !DIDerivedType(tag: DW_TAG_member, scope: !1609, file: !123, line: 136, baseType: !1822, size: 128, offset: 1088)
!1822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1609, file: !123, line: 136, size: 128, elements: !1823)
!1823 = !{!1824, !1830}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1822, file: !123, line: 137, baseType: !1825, size: 128)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1826, line: 6, size: 128, elements: !1827)
!1826 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1827 = !{!1828, !1829}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1825, file: !1826, line: 7, baseType: !310, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1825, file: !1826, line: 8, baseType: !310, size: 64, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, scope: !1822, file: !123, line: 138, baseType: !1831)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1822, file: !123, line: 138, elements: !1832)
!1832 = !{!1833, !1835}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1831, file: !123, line: 138, baseType: !1834)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1831, file: !123, line: 138, elements: !1019)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1831, file: !123, line: 138, baseType: !1836)
!1836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1825, elements: !678)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1605, file: !131, line: 147, baseType: !20, size: 64, offset: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1563, file: !131, line: 161, baseType: !411, size: 128, align: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, scope: !1559, file: !131, line: 164, baseType: !1840, size: 32, offset: 384)
!1840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1559, file: !131, line: 164, size: 32, elements: !1841)
!1841 = !{!1842, !1843}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1840, file: !131, line: 169, baseType: !49, size: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1840, file: !131, line: 177, baseType: !7, size: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1559, file: !131, line: 181, baseType: !49, size: 32, offset: 416)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !239, line: 309, flags: DIFlagFwdDecl)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1552, file: !239, line: 406, baseType: !1848, size: 64, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!22, !1026, !1851}
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !131, line: 293, size: 1536, elements: !1853)
!1853 = !{!1854, !1884, !1898}
!1854 = !DIDerivedType(tag: DW_TAG_member, scope: !1852, file: !131, line: 295, baseType: !1855, size: 512)
!1855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1852, file: !131, line: 295, size: 512, elements: !1856)
!1856 = !{!1857, !1883}
!1857 = !DIDerivedType(tag: DW_TAG_member, scope: !1855, file: !131, line: 296, baseType: !1858, size: 448)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1855, file: !131, line: 296, size: 448, elements: !1859)
!1859 = !{!1860, !1861, !1870, !1871, !1872, !1881, !1882}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1858, file: !131, line: 298, baseType: !39, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, scope: !1858, file: !131, line: 299, baseType: !1862, size: 128, offset: 64)
!1862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1858, file: !131, line: 299, size: 128, elements: !1863)
!1863 = !{!1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1862, file: !131, line: 300, baseType: !97, size: 128)
!1865 = !DIDerivedType(tag: DW_TAG_member, scope: !1862, file: !131, line: 302, baseType: !1866, size: 128)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1862, file: !131, line: 302, size: 128, elements: !1867)
!1867 = !{!1868, !1869}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1866, file: !131, line: 303, baseType: !20, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1866, file: !131, line: 305, baseType: !7, size: 32, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1858, file: !131, line: 310, baseType: !1538, size: 64, offset: 192)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1858, file: !131, line: 311, baseType: !39, size: 64, offset: 256)
!1872 = !DIDerivedType(tag: DW_TAG_member, scope: !1858, file: !131, line: 312, baseType: !1873, size: 64, offset: 320)
!1873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1858, file: !131, line: 312, size: 64, elements: !1874)
!1874 = !{!1875, !1876}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1873, file: !131, line: 313, baseType: !20, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1873, file: !131, line: 314, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !131, line: 257, baseType: !1878)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 255, size: 64, elements: !1879)
!1879 = !{!1880}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1878, file: !131, line: 256, baseType: !39, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1858, file: !131, line: 316, baseType: !49, size: 32, offset: 384)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1858, file: !131, line: 317, baseType: !49, size: 32, offset: 416)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1855, file: !131, line: 323, baseType: !1559, size: 512, align: 128)
!1884 = !DIDerivedType(tag: DW_TAG_member, scope: !1852, file: !131, line: 325, baseType: !1885, size: 512, offset: 512)
!1885 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1852, file: !131, line: 325, size: 512, elements: !1886)
!1886 = !{!1887, !1897}
!1887 = !DIDerivedType(tag: DW_TAG_member, scope: !1885, file: !131, line: 326, baseType: !1888, size: 320)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1885, file: !131, line: 326, size: 320, elements: !1889)
!1889 = !{!1890, !1891, !1892, !1893, !1894, !1895, !1896}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1888, file: !131, line: 327, baseType: !39, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1888, file: !131, line: 328, baseType: !39, size: 64, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1888, file: !131, line: 329, baseType: !39, size: 64, offset: 128)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1888, file: !131, line: 331, baseType: !49, size: 32, offset: 192)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1888, file: !131, line: 332, baseType: !49, size: 32, offset: 224)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1888, file: !131, line: 333, baseType: !49, size: 32, offset: 256)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1888, file: !131, line: 335, baseType: !7, size: 32, offset: 288)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1885, file: !131, line: 339, baseType: !1559, size: 512, align: 128)
!1898 = !DIDerivedType(tag: DW_TAG_member, scope: !1852, file: !131, line: 341, baseType: !1899, size: 512, offset: 1024)
!1899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1852, file: !131, line: 341, size: 512, elements: !1900)
!1900 = !{!1901, !1910, !1916}
!1901 = !DIDerivedType(tag: DW_TAG_member, scope: !1899, file: !131, line: 342, baseType: !1902, size: 384)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1899, file: !131, line: 342, size: 384, elements: !1903)
!1903 = !{!1904, !1905, !1906, !1907, !1908, !1909}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1902, file: !131, line: 343, baseType: !39, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1902, file: !131, line: 344, baseType: !39, size: 64, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1902, file: !131, line: 346, baseType: !20, size: 64, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1902, file: !131, line: 347, baseType: !20, size: 64, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1902, file: !131, line: 348, baseType: !20, size: 64, offset: 256)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1902, file: !131, line: 349, baseType: !20, size: 64, offset: 320)
!1910 = !DIDerivedType(tag: DW_TAG_member, scope: !1899, file: !131, line: 352, baseType: !1911, size: 256)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1899, file: !131, line: 352, size: 256, elements: !1912)
!1912 = !{!1913, !1914, !1915}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1911, file: !131, line: 353, baseType: !39, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1911, file: !131, line: 354, baseType: !39, size: 64, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1911, file: !131, line: 356, baseType: !97, size: 128, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1899, file: !131, line: 359, baseType: !1559, size: 512, align: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1552, file: !239, line: 409, baseType: !1918, size: 64, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!22, !1538, !1845}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1552, file: !239, line: 412, baseType: !1922, size: 64, offset: 192)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!421, !1538, !1851}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1552, file: !239, line: 414, baseType: !1926, size: 64, offset: 256)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{null, !1929}
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !239, line: 310, flags: DIFlagFwdDecl)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1552, file: !239, line: 416, baseType: !1932, size: 64, offset: 320)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!22, !1026, !1538, !41, !7, !1935, !1936}
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1552, file: !239, line: 419, baseType: !1938, size: 64, offset: 384)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!22, !1026, !1538, !41, !7, !7, !1558, !20}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1552, file: !239, line: 424, baseType: !1942, size: 64, offset: 448)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!1945, !1538, !1945}
!1945 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !25, line: 131, baseType: !310)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1552, file: !239, line: 425, baseType: !1947, size: 64, offset: 512)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{null, !1851, !35, !35}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1552, file: !239, line: 426, baseType: !1951, size: 64, offset: 576)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!421, !1851, !1107}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1552, file: !239, line: 427, baseType: !1955, size: 64, offset: 640)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{null, !1851}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1552, file: !239, line: 428, baseType: !1959, size: 64, offset: 704)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!1339, !1962, !1984}
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !239, line: 373, size: 384, elements: !1964)
!1964 = !{!1965, !1966, !1967, !1971, !1972, !1973, !1974}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1963, file: !239, line: 374, baseType: !1026, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1963, file: !239, line: 375, baseType: !41, size: 64, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1963, file: !239, line: 376, baseType: !1968, size: 64, offset: 128)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{null, !1962, !666}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1963, file: !239, line: 377, baseType: !20, size: 64, offset: 192)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1963, file: !239, line: 378, baseType: !22, size: 32, offset: 256)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1963, file: !239, line: 379, baseType: !93, size: 16, offset: 288)
!1974 = !DIDerivedType(tag: DW_TAG_member, scope: !1963, file: !239, line: 380, baseType: !1975, size: 64, offset: 320)
!1975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1963, file: !239, line: 380, size: 64, elements: !1976)
!1976 = !{!1977, !1980}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1975, file: !239, line: 386, baseType: !1978, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !239, line: 386, flags: DIFlagFwdDecl)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1975, file: !239, line: 395, baseType: !1981, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!1339, !20}
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !239, line: 69, flags: DIFlagFwdDecl)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1552, file: !239, line: 433, baseType: !1987, size: 64, offset: 768)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!22, !1538, !1851, !1851, !146}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1552, file: !239, line: 435, baseType: !1991, size: 64, offset: 832)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!22, !1851}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1552, file: !239, line: 436, baseType: !1995, size: 64, offset: 896)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!421, !1851, !35, !35}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1552, file: !239, line: 438, baseType: !1999, size: 64, offset: 960)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{null, !1851, !2002, !2002}
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1552, file: !239, line: 439, baseType: !2004, size: 64, offset: 1024)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!22, !1538, !1558}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1552, file: !239, line: 442, baseType: !2008, size: 64, offset: 1088)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!22, !2011, !1026, !2013}
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !239, line: 66, flags: DIFlagFwdDecl)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1552, file: !239, line: 444, baseType: !2015, size: 64, offset: 1152)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{null, !1026}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1552, file: !239, line: 445, baseType: !2019, size: 64, offset: 1216)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!22, !1962, !1984}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1539, file: !239, line: 486, baseType: !39, size: 64, offset: 896)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1539, file: !239, line: 487, baseType: !347, size: 320, offset: 960)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1539, file: !239, line: 488, baseType: !2025, size: 32, offset: 1280)
!2025 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2026, line: 8, baseType: !377)
!2026 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1539, file: !239, line: 489, baseType: !59, size: 32, offset: 1312)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1539, file: !239, line: 490, baseType: !97, size: 128, offset: 1344)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1539, file: !239, line: 491, baseType: !20, size: 64, offset: 1472)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1529, file: !1498, line: 180, baseType: !2031, size: 64, offset: 320)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!1339, !1026, !1440, !1528, !432, !41, !35}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1529, file: !1498, line: 182, baseType: !2031, size: 64, offset: 384)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1529, file: !1498, line: 184, baseType: !2036, size: 64, offset: 448)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!22, !1026, !1440, !1528, !1668}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1517, file: !1498, line: 90, baseType: !2040, size: 64, offset: 192)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1517, file: !1498, line: 91, baseType: !2042, size: 64, offset: 256)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1488, file: !1435, line: 120, baseType: !2044, size: 64, offset: 192)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!2047, !1458}
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2049)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !154, line: 39, size: 384, elements: !2050)
!2050 = !{!2051, !2052, !2056, !2060, !2069, !2073}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2049, file: !154, line: 40, baseType: !153, size: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2049, file: !154, line: 41, baseType: !2053, size: 64, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!421}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2049, file: !154, line: 42, baseType: !2057, size: 64, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!20}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2049, file: !154, line: 43, baseType: !2061, size: 64, offset: 192)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!2064, !2066}
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !2068, line: 177, flags: DIFlagFwdDecl)
!2068 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2049, file: !154, line: 44, baseType: !2070, size: 64, offset: 256)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!2064}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2049, file: !154, line: 45, baseType: !1218, size: 64, offset: 320)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1488, file: !1435, line: 121, baseType: !2075, size: 64, offset: 256)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!2064, !1458}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1488, file: !1435, line: 122, baseType: !2079, size: 64, offset: 320)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{null, !1458, !626, !627}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1434, file: !1435, line: 70, baseType: !2083, size: 64, offset: 384)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2085, line: 190, size: 1152, elements: !2086)
!2085 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2086 = !{!2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2217, !2218, !2219, !2220, !2221, !2224}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2084, file: !2085, line: 191, baseType: !49, size: 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2084, file: !2085, line: 192, baseType: !49, size: 32, offset: 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2084, file: !2085, line: 202, baseType: !2083, size: 64, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2084, file: !2085, line: 203, baseType: !16, size: 64, offset: 128)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2084, file: !2085, line: 205, baseType: !339, size: 192, align: 64, offset: 192)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2084, file: !2085, line: 207, baseType: !2064, size: 64, offset: 384)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2084, file: !2085, line: 208, baseType: !7, size: 32, offset: 448)
!2094 = !DIDerivedType(tag: DW_TAG_member, scope: !2084, file: !2085, line: 209, baseType: !2095, size: 256, offset: 512)
!2095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2084, file: !2085, line: 209, size: 256, elements: !2096)
!2096 = !{!2097, !2106, !2110}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2095, file: !2085, line: 210, baseType: !2098, size: 256)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2085, line: 153, size: 256, elements: !2099)
!2099 = !{!2100, !2101, !2102, !2105}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2098, file: !2085, line: 154, baseType: !39, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2098, file: !2085, line: 156, baseType: !646, size: 64, offset: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2098, file: !2085, line: 162, baseType: !2103, size: 64, offset: 128)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2085, line: 162, flags: DIFlagFwdDecl)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2098, file: !2085, line: 167, baseType: !39, size: 64, offset: 192)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2095, file: !2085, line: 211, baseType: !2107, size: 64)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2085, line: 170, size: 64, elements: !2108)
!2108 = !{!2109}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2107, file: !2085, line: 171, baseType: !2083, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2095, file: !2085, line: 212, baseType: !2111, size: 256)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2085, line: 174, size: 256, elements: !2112)
!2112 = !{!2113, !2212, !2215, !2216}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2111, file: !2085, line: 175, baseType: !2114, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2116)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2085, line: 271, size: 768, elements: !2117)
!2117 = !{!2118, !2176, !2180, !2181, !2182, !2183, !2184, !2188, !2189, !2190, !2191, !2208}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2116, file: !2085, line: 276, baseType: !2119, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!22, !2122}
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2085, line: 251, size: 1216, elements: !2124)
!2124 = !{!2125, !2126, !2127, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2123, file: !2085, line: 253, baseType: !2083, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2123, file: !2085, line: 254, baseType: !1026, size: 64, offset: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2123, file: !2085, line: 255, baseType: !2128, size: 64, offset: 128)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2130, line: 17, size: 960, elements: !2131)
!2130 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2131 = !{!2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2161, !2162, !2165}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2129, file: !2130, line: 18, baseType: !432, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2129, file: !2130, line: 19, baseType: !35, size: 64, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2129, file: !2130, line: 20, baseType: !35, size: 64, offset: 128)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2129, file: !2130, line: 21, baseType: !35, size: 64, offset: 192)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2129, file: !2130, line: 22, baseType: !35, size: 64, offset: 256)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2129, file: !2130, line: 23, baseType: !41, size: 64, offset: 320)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2129, file: !2130, line: 24, baseType: !41, size: 64, offset: 384)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2129, file: !2130, line: 25, baseType: !1040, size: 256, offset: 448)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2129, file: !2130, line: 26, baseType: !2141, size: 64, offset: 704)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2143)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2130, line: 32, size: 256, elements: !2144)
!2144 = !{!2145, !2149, !2153, !2157}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2143, file: !2130, line: 33, baseType: !2146, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!20, !2128, !40}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2143, file: !2130, line: 34, baseType: !2150, size: 64, offset: 64)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{null, !2128, !20}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2143, file: !2130, line: 35, baseType: !2154, size: 64, offset: 128)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!20, !2128, !20, !40}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2143, file: !2130, line: 36, baseType: !2158, size: 64, offset: 192)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!22, !2128, !20}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2129, file: !2130, line: 27, baseType: !22, size: 32, offset: 768)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2129, file: !2130, line: 28, baseType: !2163, size: 64, offset: 832)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1027)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2129, file: !2130, line: 29, baseType: !20, size: 64, offset: 896)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2123, file: !2085, line: 256, baseType: !20, size: 64, offset: 192)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2123, file: !2085, line: 259, baseType: !1040, size: 256, offset: 256)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2123, file: !2085, line: 260, baseType: !1040, size: 256, offset: 512)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2123, file: !2085, line: 261, baseType: !22, size: 32, offset: 768)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2123, file: !2085, line: 262, baseType: !97, size: 128, offset: 832)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2123, file: !2085, line: 263, baseType: !432, size: 64, offset: 960)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2123, file: !2085, line: 265, baseType: !35, size: 64, offset: 1024)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2123, file: !2085, line: 266, baseType: !421, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2123, file: !2085, line: 267, baseType: !421, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2123, file: !2085, line: 268, baseType: !1713, size: 64, offset: 1152)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2116, file: !2085, line: 277, baseType: !2177, size: 64, offset: 64)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{null, !2122}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2116, file: !2085, line: 290, baseType: !2158, size: 64, offset: 128)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2116, file: !2085, line: 292, baseType: !2146, size: 64, offset: 192)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2116, file: !2085, line: 293, baseType: !2154, size: 64, offset: 256)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2116, file: !2085, line: 294, baseType: !2150, size: 64, offset: 320)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2116, file: !2085, line: 296, baseType: !2185, size: 64, offset: 384)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!1339, !2122, !432, !35, !41}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2116, file: !2085, line: 306, baseType: !35, size: 64, offset: 448)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2116, file: !2085, line: 313, baseType: !421, size: 8, offset: 512)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2116, file: !2085, line: 314, baseType: !2185, size: 64, offset: 576)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2116, file: !2085, line: 317, baseType: !2192, size: 64, offset: 640)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!2195, !2122, !2197}
!2195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2196, line: 59, baseType: !7)
!2196 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2199, line: 37, size: 128, elements: !2200)
!2199 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2200 = !{!2201, !2207}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2198, file: !2199, line: 38, baseType: !2202, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2199, line: 31, baseType: !2203)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{null, !1026, !2206, !2197}
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2198, file: !2199, line: 39, baseType: !2195, size: 32, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2116, file: !2085, line: 320, baseType: !2209, size: 64, offset: 704)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!22, !2122, !1668}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2111, file: !2085, line: 176, baseType: !2213, size: 64, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2085, line: 35, flags: DIFlagFwdDecl)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2111, file: !2085, line: 177, baseType: !41, size: 64, offset: 128)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2111, file: !2085, line: 178, baseType: !2083, size: 64, offset: 192)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2084, file: !2085, line: 215, baseType: !20, size: 64, offset: 768)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2084, file: !2085, line: 221, baseType: !310, size: 64, offset: 832)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2084, file: !2085, line: 223, baseType: !26, size: 16, offset: 896)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2084, file: !2085, line: 224, baseType: !24, size: 16, offset: 912)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2084, file: !2085, line: 225, baseType: !2222, size: 64, offset: 960)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2085, line: 36, flags: DIFlagFwdDecl)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2084, file: !2085, line: 227, baseType: !411, size: 128, align: 64, offset: 1024)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1434, file: !1435, line: 71, baseType: !2226, size: 32, offset: 448)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2227, line: 19, size: 32, elements: !2228)
!2227 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2228 = !{!2229}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2226, file: !2227, line: 20, baseType: !324, size: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1434, file: !1435, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1434, file: !1435, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1434, file: !1435, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1434, file: !1435, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1434, file: !1435, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1431, file: !116, line: 47, baseType: !1421, size: 64, offset: 512)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1431, file: !116, line: 48, baseType: !1440, size: 64, offset: 576)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1431, file: !116, line: 49, baseType: !2238, size: 64, offset: 640)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !116, line: 49, flags: DIFlagFwdDecl)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1431, file: !116, line: 50, baseType: !600, size: 64, offset: 704)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1422, file: !116, line: 418, baseType: !2242, size: 64, offset: 1408)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !116, line: 53, size: 448, elements: !2244)
!2244 = !{!2245, !2246, !2251, !2255, !2259, !2263}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2243, file: !116, line: 54, baseType: !1505, size: 128)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2243, file: !116, line: 55, baseType: !2247, size: 64, offset: 128)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!1339, !2242, !2250, !432}
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2243, file: !116, line: 57, baseType: !2252, size: 64, offset: 192)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!1339, !2242, !2250, !16, !35}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2243, file: !116, line: 59, baseType: !2256, size: 64, offset: 256)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{null, !1421, !16}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2243, file: !116, line: 60, baseType: !2260, size: 64, offset: 320)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!22, !1421}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2243, file: !116, line: 61, baseType: !2264, size: 64, offset: 384)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{null, !1421}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1422, file: !116, line: 419, baseType: !16, size: 64, offset: 1472)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1422, file: !116, line: 420, baseType: !16, size: 64, offset: 1536)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1422, file: !116, line: 421, baseType: !1440, size: 64, offset: 1600)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1422, file: !116, line: 424, baseType: !2271, size: 64, offset: 1664)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2273)
!2273 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !116, line: 424, flags: DIFlagFwdDecl)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1422, file: !116, line: 425, baseType: !2275, size: 64, offset: 1728)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1422, file: !116, line: 426, baseType: !7, size: 32, offset: 1792)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1422, file: !116, line: 435, baseType: !1040, size: 256, offset: 1856)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1422, file: !116, line: 437, baseType: !2280, size: 64, offset: 2112)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2282, line: 69, size: 320, elements: !2283)
!2282 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2283 = !{!2284, !2285, !2286, !2303, !2305, !2309, !2310}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2281, file: !2282, line: 70, baseType: !16, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2281, file: !2282, line: 71, baseType: !1421, size: 64, offset: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2281, file: !2282, line: 72, baseType: !2287, size: 64, offset: 128)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2289)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2282, line: 47, size: 256, elements: !2290)
!2290 = !{!2291, !2292, !2298, !2302}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2289, file: !2282, line: 49, baseType: !7, size: 32)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2289, file: !2282, line: 51, baseType: !2293, size: 64, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!22, !16, !2296}
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2281)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2289, file: !2282, line: 53, baseType: !2299, size: 64, offset: 128)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!22, !432, !2296}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2289, file: !2282, line: 55, baseType: !1218, size: 64, offset: 192)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2281, file: !2282, line: 73, baseType: !2304, size: 16, offset: 192)
!2304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2281, file: !2282, line: 74, baseType: !2306, size: 8, offset: 208)
!2306 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !84, line: 16, baseType: !2307)
!2307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !86, line: 20, baseType: !2308)
!2308 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2281, file: !2282, line: 75, baseType: !83, size: 8, offset: 216)
!2310 = !DIDerivedType(tag: DW_TAG_member, scope: !2281, file: !2282, line: 76, baseType: !2311, size: 64, offset: 256)
!2311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2281, file: !2282, line: 76, size: 64, elements: !2312)
!2312 = !{!2313, !2314, !2321}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2311, file: !2282, line: 77, baseType: !20, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2311, file: !2282, line: 78, baseType: !2315, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2317)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2282, line: 86, size: 128, elements: !2318)
!2318 = !{!2319, !2320}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2317, file: !2282, line: 87, baseType: !7, size: 32)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2317, file: !2282, line: 88, baseType: !432, size: 64, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2311, file: !2282, line: 79, baseType: !2322, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2324)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2282, line: 92, size: 256, elements: !2325)
!2325 = !{!2326, !2327, !2328, !2330, !2331}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2324, file: !2282, line: 94, baseType: !7, size: 32)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2324, file: !2282, line: 95, baseType: !7, size: 32, offset: 32)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2324, file: !2282, line: 96, baseType: !2329, size: 64, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2324, file: !2282, line: 97, baseType: !2287, size: 64, offset: 128)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2324, file: !2282, line: 98, baseType: !20, size: 64, offset: 192)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1422, file: !116, line: 438, baseType: !7, size: 32, offset: 2176)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1422, file: !116, line: 441, baseType: !7, size: 32, offset: 2208)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1422, file: !116, line: 442, baseType: !2271, size: 64, offset: 2240)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1422, file: !116, line: 443, baseType: !2275, size: 64, offset: 2304)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1422, file: !116, line: 444, baseType: !421, size: 8, offset: 2368)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1422, file: !116, line: 451, baseType: !421, size: 8, offset: 2376)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1422, file: !116, line: 454, baseType: !7, size: 32, offset: 2400)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1422, file: !116, line: 455, baseType: !2340, size: 64, offset: 2432)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2342, line: 23, size: 96, elements: !2343)
!2342 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2343 = !{!2344, !2345, !2346}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2341, file: !2342, line: 24, baseType: !22, size: 32)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2341, file: !2342, line: 24, baseType: !22, size: 32, offset: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2341, file: !2342, line: 24, baseType: !22, size: 32, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1422, file: !116, line: 458, baseType: !2348, size: 64, offset: 2496)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!22}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1422, file: !116, line: 460, baseType: !2352, size: 4032, align: 512, offset: 2560)
!2352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2353, size: 4032, elements: !2369)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !116, line: 362, size: 576, elements: !2354)
!2354 = !{!2355, !2356, !2357}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2353, file: !116, line: 363, baseType: !20, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2353, file: !116, line: 364, baseType: !7, size: 32, offset: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2353, file: !116, line: 367, baseType: !2358, size: 448, offset: 128)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !116, line: 319, size: 448, elements: !2359)
!2359 = !{!2360, !2361}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2358, file: !116, line: 320, baseType: !1421, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2358, file: !116, line: 321, baseType: !2362, size: 384, offset: 64)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2363, line: 40, size: 384, elements: !2364)
!2363 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2364 = !{!2365}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2362, file: !2363, line: 41, baseType: !2366, size: 384, align: 64)
!2366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 384, align: 64, elements: !2367)
!2367 = !{!2368}
!2368 = !DISubrange(count: 2)
!2369 = !{!2370}
!2370 = !DISubrange(count: 7)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1422, file: !116, line: 463, baseType: !2372, size: 192, offset: 6592)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2373, line: 8, size: 192, elements: !2374)
!2373 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2374 = !{!2375, !2376, !2378}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2372, file: !2373, line: 10, baseType: !7, size: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2372, file: !2373, line: 11, baseType: !2377, size: 64, offset: 64)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2372, file: !2373, line: 12, baseType: !2379, size: 64, offset: 128)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2381, line: 59, size: 48, elements: !2382)
!2381 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2382 = !{!2383, !2386, !2387, !2388, !2389, !2390}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2380, file: !2381, line: 60, baseType: !2384, size: 16)
!2384 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !84, line: 18, baseType: !2385)
!2385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !86, line: 23, baseType: !382)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2380, file: !2381, line: 61, baseType: !2384, size: 16, offset: 16)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2380, file: !2381, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2380, file: !2381, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2380, file: !2381, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2380, file: !2381, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1422, file: !116, line: 465, baseType: !39, size: 64, offset: 6784)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1422, file: !116, line: 469, baseType: !7, size: 32, offset: 6848)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1422, file: !116, line: 470, baseType: !97, size: 128, offset: 6912)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1422, file: !116, line: 471, baseType: !2395, size: 64, offset: 7040)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2397, line: 33, size: 96, elements: !2398)
!2397 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2398 = !{!2399, !2400, !2401, !2402}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2396, file: !2397, line: 37, baseType: !22, size: 32)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2396, file: !2397, line: 43, baseType: !22, size: 32, offset: 32)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2396, file: !2397, line: 45, baseType: !26, size: 16, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2396, file: !2397, line: 47, baseType: !26, size: 16, offset: 80)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1422, file: !116, line: 476, baseType: !2404, size: 64, offset: 7104)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !116, line: 378, size: 256, elements: !2406)
!2406 = !{!2407, !2423, !2424, !2425}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2405, file: !116, line: 379, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2410, line: 204, baseType: !2411)
!2410 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2410, line: 197, size: 192, elements: !2412)
!2412 = !{!2413, !2415, !2416, !2417, !2419, !2421}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2411, file: !2410, line: 198, baseType: !2414, size: 32)
!2414 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2410, line: 21, baseType: !378)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2411, file: !2410, line: 199, baseType: !87, size: 8, offset: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2411, file: !2410, line: 200, baseType: !87, size: 8, offset: 40)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2411, file: !2410, line: 201, baseType: !2418, size: 16, offset: 48)
!2418 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2410, line: 17, baseType: !94)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2411, file: !2410, line: 202, baseType: !2420, size: 64, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2410, line: 16, baseType: !311)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2411, file: !2410, line: 203, baseType: !2422, size: 64, offset: 128)
!2422 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2410, line: 22, baseType: !311)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2405, file: !116, line: 380, baseType: !7, size: 32, offset: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2405, file: !116, line: 381, baseType: !432, size: 64, offset: 128)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2405, file: !116, line: 382, baseType: !432, size: 64, offset: 192)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1422, file: !116, line: 477, baseType: !2405, size: 256, offset: 7168)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1422, file: !116, line: 480, baseType: !2428, size: 64, offset: 7424)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !116, line: 480, flags: DIFlagFwdDecl)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1422, file: !116, line: 483, baseType: !2431, size: 64, offset: 7488)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !116, line: 483, flags: DIFlagFwdDecl)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1422, file: !116, line: 488, baseType: !432, size: 64, offset: 7552)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1422, file: !116, line: 492, baseType: !20, size: 64, offset: 7616)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1422, file: !116, line: 493, baseType: !7, size: 32, offset: 7680)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1422, file: !116, line: 495, baseType: !20, size: 64, offset: 7744)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1422, file: !116, line: 496, baseType: !7, size: 32, offset: 7808)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1422, file: !116, line: 499, baseType: !7, size: 32, offset: 7840)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1422, file: !116, line: 500, baseType: !2440, size: 64, offset: 7872)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2442, line: 45, baseType: !2443)
!2442 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1422, file: !116, line: 503, baseType: !7, size: 32, offset: 7936)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1422, file: !116, line: 504, baseType: !2446, size: 64, offset: 8000)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2449, line: 96, size: 192, elements: !2450)
!2449 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2450 = !{!2451, !2452, !2505, !2508}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2448, file: !2449, line: 97, baseType: !7, size: 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2448, file: !2449, line: 98, baseType: !2453, size: 64, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2449, line: 24, size: 3072, elements: !2455)
!2455 = !{!2456, !2458, !2459, !2460, !2461, !2474, !2475, !2476, !2477, !2489, !2490, !2491, !2502, !2503, !2504}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2454, file: !2449, line: 26, baseType: !2457, size: 128)
!2457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 128, elements: !2367)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2454, file: !2449, line: 27, baseType: !2457, size: 128, offset: 128)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2454, file: !2449, line: 28, baseType: !22, size: 32, offset: 256)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2454, file: !2449, line: 31, baseType: !59, size: 32, align: 512, offset: 512)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2454, file: !2449, line: 32, baseType: !2462, size: 960, offset: 576)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2463, line: 206, size: 960, elements: !2464)
!2463 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2464 = !{!2465, !2466, !2469, !2471, !2472, !2473}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2462, file: !2463, line: 207, baseType: !414, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2462, file: !2463, line: 208, baseType: !2467, size: 256, offset: 64)
!2467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2468, size: 256, elements: !442)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2462, file: !2463, line: 209, baseType: !2470, size: 256, offset: 320)
!2470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 256, elements: !442)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2462, file: !2463, line: 213, baseType: !666, size: 64, offset: 576)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2462, file: !2463, line: 215, baseType: !668, size: 256, offset: 640)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2462, file: !2463, line: 216, baseType: !83, size: 8, offset: 896)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2454, file: !2449, line: 33, baseType: !39, size: 64, offset: 1536)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2454, file: !2449, line: 34, baseType: !39, size: 64, offset: 1600)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2454, file: !2449, line: 35, baseType: !421, size: 8, offset: 1664)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2454, file: !2449, line: 36, baseType: !2478, size: 320, offset: 1728)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2479, line: 11, size: 320, elements: !2480)
!2479 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2480 = !{!2481, !2482, !2483, !2488}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2478, file: !2479, line: 16, baseType: !493, size: 128)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2478, file: !2479, line: 17, baseType: !39, size: 64, offset: 128)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2478, file: !2479, line: 18, baseType: !2484, size: 64, offset: 192)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{null, !2487}
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2478, file: !2479, line: 19, baseType: !377, size: 32, offset: 256)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2454, file: !2449, line: 37, baseType: !562, size: 256, offset: 2048)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2454, file: !2449, line: 38, baseType: !411, size: 128, align: 64, offset: 2304)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2454, file: !2449, line: 39, baseType: !2492, size: 64, offset: 2432)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2449, line: 49, size: 768, elements: !2494)
!2494 = !{!2495, !2496, !2497, !2498, !2499, !2500, !2501}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2493, file: !2449, line: 50, baseType: !59, size: 32)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2493, file: !2449, line: 51, baseType: !2470, size: 256, offset: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2493, file: !2449, line: 53, baseType: !2470, size: 256, offset: 320)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2493, file: !2449, line: 54, baseType: !39, size: 64, offset: 576)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2493, file: !2449, line: 55, baseType: !2492, size: 64, offset: 640)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2493, file: !2449, line: 56, baseType: !22, size: 32, offset: 704)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2493, file: !2449, line: 57, baseType: !22, size: 32, offset: 736)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2454, file: !2449, line: 40, baseType: !39, size: 64, offset: 2496)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2454, file: !2449, line: 42, baseType: !22, size: 32, offset: 2560)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2454, file: !2449, line: 43, baseType: !2447, size: 64, offset: 2624)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2448, file: !2449, line: 99, baseType: !2506, offset: 128)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2507, line: 211, elements: !1019)
!2507 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2448, file: !2449, line: 100, baseType: !2509, size: 64, offset: 128)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2449, line: 63, size: 3008, elements: !2511)
!2511 = !{!2512, !2513, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2543}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2510, file: !2449, line: 64, baseType: !2492, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2510, file: !2449, line: 65, baseType: !2514, size: 192, offset: 64)
!2514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2492, size: 192, elements: !1072)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2510, file: !2449, line: 67, baseType: !22, size: 32, offset: 256)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2510, file: !2449, line: 68, baseType: !1040, size: 256, offset: 320)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2510, file: !2449, line: 69, baseType: !59, size: 32, offset: 576)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2510, file: !2449, line: 70, baseType: !1040, size: 256, offset: 640)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2510, file: !2449, line: 71, baseType: !39, size: 64, offset: 896)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2510, file: !2449, line: 72, baseType: !39, size: 64, offset: 960)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2510, file: !2449, line: 73, baseType: !39, size: 64, offset: 1024)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2510, file: !2449, line: 74, baseType: !39, size: 64, offset: 1088)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2510, file: !2449, line: 75, baseType: !39, size: 64, offset: 1152)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2510, file: !2449, line: 76, baseType: !39, size: 64, offset: 1216)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2510, file: !2449, line: 77, baseType: !39, size: 64, offset: 1280)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2510, file: !2449, line: 78, baseType: !39, size: 64, offset: 1344)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2510, file: !2449, line: 79, baseType: !421, size: 8, offset: 1408)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2510, file: !2449, line: 80, baseType: !39, size: 64, offset: 1472)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2510, file: !2449, line: 81, baseType: !1040, size: 256, offset: 1536)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2510, file: !2449, line: 82, baseType: !601, size: 256, offset: 1792)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2510, file: !2449, line: 84, baseType: !49, size: 32, offset: 2048)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2510, file: !2449, line: 87, baseType: !39, size: 64, offset: 2112)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2510, file: !2449, line: 88, baseType: !39, size: 64, offset: 2176)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2510, file: !2449, line: 89, baseType: !2535, size: 704, offset: 2240)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !563, line: 111, size: 704, elements: !2536)
!2536 = !{!2537, !2538, !2539, !2542}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2535, file: !563, line: 112, baseType: !562, size: 256)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2535, file: !563, line: 113, baseType: !2478, size: 320, offset: 256)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2535, file: !563, line: 116, baseType: !2540, size: 64, offset: 576)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !563, line: 18, flags: DIFlagFwdDecl)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2535, file: !563, line: 117, baseType: !22, size: 32, offset: 640)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2510, file: !2449, line: 90, baseType: !2447, size: 64, offset: 2944)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1422, file: !116, line: 515, baseType: !2545, size: 64, offset: 8064)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2547, line: 117, size: 128, elements: !2548)
!2547 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2548 = !{!2549, !2550, !2551}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2546, file: !2547, line: 118, baseType: !332, size: 32)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2546, file: !2547, line: 119, baseType: !332, size: 32, offset: 32)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2546, file: !2547, line: 120, baseType: !666, size: 64, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1422, file: !116, line: 516, baseType: !7, size: 32, offset: 8128)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1422, file: !116, line: 519, baseType: !7, size: 32, offset: 8160)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1422, file: !116, line: 520, baseType: !2555, size: 64, offset: 8192)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1422, file: !116, line: 523, baseType: !2557, size: 64, offset: 8256)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !160, line: 372, size: 1024, elements: !2560)
!2560 = !{!2561, !2562, !2602, !2662, !2743, !2744, !2747, !2752, !2753, !2754, !2755, !2757, !2760}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2559, file: !160, line: 373, baseType: !97, size: 128)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2559, file: !160, line: 374, baseType: !2563, size: 64, offset: 128)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !160, line: 291, size: 576, elements: !2565)
!2565 = !{!2566, !2567, !2568, !2569, !2573, !2596, !2600, !2601}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2564, file: !160, line: 292, baseType: !16, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2564, file: !160, line: 293, baseType: !20, size: 64, offset: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !2564, file: !160, line: 295, baseType: !20, size: 64, offset: 128)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2564, file: !160, line: 297, baseType: !2570, size: 64, offset: 192)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!22, !2558, !159, !20}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !2564, file: !160, line: 299, baseType: !2574, size: 64, offset: 256)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !160, line: 275, size: 320, elements: !2576)
!2576 = !{!2577, !2578}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2575, file: !160, line: 276, baseType: !16, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, scope: !2575, file: !160, line: 277, baseType: !2579, size: 256, offset: 64)
!2579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2575, file: !160, line: 277, size: 256, elements: !2580)
!2580 = !{!2581, !2592}
!2581 = !DIDerivedType(tag: DW_TAG_member, scope: !2579, file: !160, line: 278, baseType: !2582, size: 256)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2579, file: !160, line: 278, size: 256, elements: !2583)
!2583 = !{!2584, !2585, !2586, !2587, !2589, !2590, !2591}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2582, file: !160, line: 279, baseType: !16, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2582, file: !160, line: 280, baseType: !2443, size: 32, offset: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2582, file: !160, line: 281, baseType: !2443, size: 32, offset: 96)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !2582, file: !160, line: 282, baseType: !2588, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !2582, file: !160, line: 283, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !2582, file: !160, line: 284, baseType: !2443, size: 32, offset: 160)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2582, file: !160, line: 285, baseType: !2443, size: 32, offset: 192)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !2579, file: !160, line: 287, baseType: !2593, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!22, !2558}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !2564, file: !160, line: 300, baseType: !2597, size: 64, offset: 320)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!100, !2558}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !2564, file: !160, line: 301, baseType: !97, size: 128, offset: 384)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !2564, file: !160, line: 302, baseType: !2593, size: 64, offset: 512)
!2602 = !DIDerivedType(tag: DW_TAG_member, scope: !2559, file: !160, line: 375, baseType: !2603, size: 64, offset: 192)
!2603 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2559, file: !160, line: 375, size: 64, elements: !2604)
!2604 = !{!2605, !2606}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2603, file: !160, line: 376, baseType: !16, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !2603, file: !160, line: 378, baseType: !2607, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !2442, line: 32, size: 640, elements: !2609)
!2609 = !{!2610, !2611, !2623, !2647, !2648, !2649, !2650, !2651, !2655}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2608, file: !2442, line: 33, baseType: !16, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2608, file: !2442, line: 34, baseType: !2612, size: 128, offset: 64)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2547, line: 85, size: 128, elements: !2613)
!2613 = !{!2614, !2615}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2612, file: !2547, line: 86, baseType: !49, size: 32)
!2615 = !DIDerivedType(tag: DW_TAG_member, scope: !2612, file: !2547, line: 101, baseType: !2616, size: 64, offset: 64)
!2616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2612, file: !2547, line: 101, size: 64, elements: !2617)
!2617 = !{!2618, !2619, !2620}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2616, file: !2547, line: 102, baseType: !39, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2616, file: !2547, line: 103, baseType: !2545, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2616, file: !2547, line: 104, baseType: !2621, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2547, line: 104, flags: DIFlagFwdDecl)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !2608, file: !2442, line: 35, baseType: !2624, size: 64, offset: 192)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !2626, line: 61, size: 128, elements: !2627)
!2626 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2627 = !{!2628, !2629}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2625, file: !2626, line: 62, baseType: !20, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, scope: !2625, file: !2626, line: 63, baseType: !2630, size: 64, offset: 64)
!2630 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2625, file: !2626, line: 63, size: 64, elements: !2631)
!2631 = !{!2632, !2633, !2646}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2630, file: !2626, line: 65, baseType: !39, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !2630, file: !2626, line: 66, baseType: !2634, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !2636, line: 169, size: 192, elements: !2637)
!2636 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!2637 = !{!2638, !2639, !2640}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2635, file: !2636, line: 170, baseType: !2634, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2635, file: !2636, line: 171, baseType: !1421, size: 64, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2635, file: !2636, line: 172, baseType: !2641, size: 64, offset: 128)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2626, line: 32, size: 64, elements: !2643)
!2643 = !{!2644, !2645}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2642, file: !2626, line: 33, baseType: !332, size: 32)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2642, file: !2626, line: 34, baseType: !332, size: 32, offset: 32)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2630, file: !2626, line: 67, baseType: !2641, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !2608, file: !2442, line: 36, baseType: !20, size: 64, offset: 256)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !2608, file: !2442, line: 37, baseType: !20, size: 64, offset: 320)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !2608, file: !2442, line: 38, baseType: !20, size: 64, offset: 384)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !2608, file: !2442, line: 39, baseType: !2348, size: 64, offset: 448)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !2608, file: !2442, line: 40, baseType: !2652, size: 64, offset: 512)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{null}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2608, file: !2442, line: 41, baseType: !2656, size: 64, offset: 576)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !2442, line: 26, size: 192, elements: !2658)
!2658 = !{!2659, !2660, !2661}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2657, file: !2442, line: 27, baseType: !20, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2657, file: !2442, line: 28, baseType: !20, size: 64, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2657, file: !2442, line: 29, baseType: !22, size: 32, offset: 128)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2559, file: !160, line: 380, baseType: !2663, size: 256, offset: 256)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !160, line: 148, size: 256, elements: !2664)
!2664 = !{!2665, !2666, !2667}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2663, file: !160, line: 149, baseType: !493, size: 128)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2663, file: !160, line: 150, baseType: !22, size: 32, offset: 128)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2663, file: !160, line: 151, baseType: !2668, size: 64, offset: 192)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !160, line: 141, size: 256, elements: !2670)
!2670 = !{!2671, !2740, !2741, !2742}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2669, file: !160, line: 142, baseType: !2672, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !160, line: 138, baseType: !2673)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!170, !2676, !22, !2739}
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !160, line: 93, size: 67776, elements: !2678)
!2678 = !{!2679, !2682, !2685, !2688, !2689, !2690, !2691, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2719, !2722, !2723, !2724, !2732, !2733, !2734, !2735, !2736, !2737, !2738}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2677, file: !160, line: 94, baseType: !2680, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !160, line: 13, flags: DIFlagFwdDecl)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2677, file: !160, line: 95, baseType: !2683, size: 64, offset: 64)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !160, line: 15, flags: DIFlagFwdDecl)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !2677, file: !160, line: 96, baseType: !2686, size: 64, offset: 128)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !160, line: 14, flags: DIFlagFwdDecl)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2677, file: !160, line: 97, baseType: !20, size: 64, offset: 192)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !2677, file: !160, line: 98, baseType: !22, size: 32, offset: 256)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2677, file: !160, line: 99, baseType: !1040, size: 256, offset: 320)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !2677, file: !160, line: 100, baseType: !2692, size: 64, offset: 576)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !2695, line: 10, flags: DIFlagFwdDecl)
!2695 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !2677, file: !160, line: 101, baseType: !39, size: 64, offset: 640)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2677, file: !160, line: 102, baseType: !20, size: 64, offset: 704)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !2677, file: !160, line: 103, baseType: !7, size: 32, offset: 768)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !2677, file: !160, line: 104, baseType: !432, size: 64, offset: 832)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !2677, file: !160, line: 105, baseType: !7, size: 32, offset: 896)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !2677, file: !160, line: 106, baseType: !666, size: 64, offset: 960)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !2677, file: !160, line: 109, baseType: !2703, size: 33088, offset: 1024)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !2704, line: 14, size: 33088, elements: !2705)
!2704 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!2705 = !{!2706, !2710, !2717, !2718}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2703, file: !2704, line: 15, baseType: !2707, size: 32768)
!2707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32768, elements: !2708)
!2708 = !{!2709}
!2709 = !DISubrange(count: 4096)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2703, file: !2704, line: 16, baseType: !2711, size: 192, offset: 32768)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !2712, line: 18, size: 192, elements: !2713)
!2712 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!2713 = !{!2714, !2715, !2716}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2711, file: !2712, line: 19, baseType: !432, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2711, file: !2712, line: 20, baseType: !35, size: 64, offset: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2711, file: !2712, line: 21, baseType: !35, size: 64, offset: 128)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !2703, file: !2704, line: 17, baseType: !35, size: 64, offset: 32960)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !2703, file: !2704, line: 18, baseType: !22, size: 32, offset: 33024)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !2677, file: !160, line: 111, baseType: !2720, size: 64, offset: 34112)
!2720 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !945, line: 913, baseType: !2721)
!2721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !946, size: 64, elements: !950)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !2677, file: !160, line: 114, baseType: !421, size: 8, offset: 34176)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2677, file: !160, line: 117, baseType: !2703, size: 33088, offset: 34240)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !2677, file: !160, line: 118, baseType: !2725, size: 64, offset: 67328)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !160, line: 79, size: 64, elements: !2727)
!2727 = !{!2728, !2729, !2730, !2731}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2726, file: !160, line: 80, baseType: !26, size: 16)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2726, file: !160, line: 81, baseType: !87, size: 8, offset: 16)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !2726, file: !160, line: 82, baseType: !87, size: 8, offset: 24)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2726, file: !160, line: 83, baseType: !22, size: 32, offset: 32)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !2677, file: !160, line: 119, baseType: !39, size: 64, offset: 67392)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !2677, file: !160, line: 120, baseType: !22, size: 32, offset: 67456)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !2677, file: !160, line: 121, baseType: !22, size: 32, offset: 67488)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2677, file: !160, line: 122, baseType: !22, size: 32, offset: 67520)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !2677, file: !160, line: 123, baseType: !310, size: 64, offset: 67584)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2677, file: !160, line: 125, baseType: !41, size: 64, offset: 67648)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2677, file: !160, line: 126, baseType: !666, size: 64, offset: 67712)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2669, file: !160, line: 143, baseType: !2672, size: 64, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !2669, file: !160, line: 144, baseType: !2672, size: 64, offset: 128)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !2669, file: !160, line: 145, baseType: !2672, size: 64, offset: 192)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !2559, file: !160, line: 381, baseType: !432, size: 64, offset: 512)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2559, file: !160, line: 382, baseType: !2745, size: 64, offset: 576)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !230, line: 821, flags: DIFlagFwdDecl)
!2747 = !DIDerivedType(tag: DW_TAG_member, scope: !2559, file: !160, line: 387, baseType: !2748, size: 64, offset: 640)
!2748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2559, file: !160, line: 387, size: 64, elements: !2749)
!2749 = !{!2750, !2751}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2748, file: !160, line: 388, baseType: !20, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2748, file: !160, line: 389, baseType: !49, size: 32)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2559, file: !160, line: 391, baseType: !20, size: 64, offset: 704)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2559, file: !160, line: 394, baseType: !22, size: 32, offset: 768)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !2559, file: !160, line: 397, baseType: !22, size: 32, offset: 800)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !2559, file: !160, line: 398, baseType: !2756, size: 64, offset: 832)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !2559, file: !160, line: 399, baseType: !2758, size: 64, offset: 896)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !160, line: 399, flags: DIFlagFwdDecl)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !2559, file: !160, line: 401, baseType: !2761, size: 64, offset: 960)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!22, !2558, !2764}
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !230, line: 671, size: 8512, elements: !2766)
!2766 = !{!2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !3299, !3300, !3301, !3302, !3308, !3309, !3310, !3311, !3312, !3396, !3397, !3398, !3399, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3519, !3520, !3521, !3522, !3523, !3524, !3539, !3540, !3541, !3542, !3543, !3549, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3566, !3737, !3738, !3739, !3740, !4010, !4011, !4012}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !2765, file: !230, line: 678, baseType: !97, size: 128)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !2765, file: !230, line: 684, baseType: !97, size: 128, offset: 128)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !2765, file: !230, line: 685, baseType: !97, size: 128, offset: 256)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2765, file: !230, line: 689, baseType: !339, size: 192, align: 64, offset: 384)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !2765, file: !230, line: 690, baseType: !310, size: 64, offset: 576)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !2765, file: !230, line: 696, baseType: !97, size: 128, offset: 640)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !2765, file: !230, line: 698, baseType: !493, size: 128, offset: 768)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !2765, file: !230, line: 699, baseType: !97, size: 128, offset: 896)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !2765, file: !230, line: 700, baseType: !22, size: 32, offset: 1024)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !2765, file: !230, line: 703, baseType: !22, size: 32, offset: 1056)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !2765, file: !230, line: 705, baseType: !22, size: 32, offset: 1088)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !2765, file: !230, line: 707, baseType: !7, size: 32, offset: 1120)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2765, file: !230, line: 708, baseType: !2764, size: 64, offset: 1152)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !2765, file: !230, line: 714, baseType: !2781, size: 64, offset: 1216)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !230, line: 302, size: 2432, elements: !2783)
!2783 = !{!2784, !2785, !2786, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3209, !3210, !3211, !3212, !3213, !3217, !3218, !3222, !3226, !3227, !3231, !3235, !3236, !3237, !3241, !3245, !3249, !3250, !3251, !3255, !3256, !3260, !3264, !3265, !3285, !3289, !3290, !3291, !3295}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2782, file: !230, line: 303, baseType: !97, size: 128)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2782, file: !230, line: 305, baseType: !1421, size: 64, offset: 128)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2782, file: !230, line: 306, baseType: !2787, size: 64, offset: 192)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !183, line: 705, size: 5824, elements: !2789)
!2789 = !{!2790, !2791, !2792, !2795, !2796, !2849, !2919, !2920, !2921, !2922, !2923, !2930, !3022, !3035, !3045, !3049, !3051, !3052, !3053, !3057, !3064, !3065, !3068, !3071, !3075, !3078, !3079, !3080, !3081, !3082, !3083, !3113, !3114, !3115, !3118, !3121, !3130, !3131, !3132, !3133, !3134, !3135}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2788, file: !183, line: 706, baseType: !1434, size: 512)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2788, file: !183, line: 707, baseType: !2787, size: 64, offset: 512)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2788, file: !183, line: 709, baseType: !2793, size: 64, offset: 576)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !183, line: 37, flags: DIFlagFwdDecl)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2788, file: !183, line: 711, baseType: !16, size: 64, offset: 640)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2788, file: !183, line: 712, baseType: !2797, size: 64, offset: 704)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2799)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !183, line: 89, size: 384, elements: !2800)
!2800 = !{!2801, !2802, !2803, !2809, !2814, !2818}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2799, file: !183, line: 90, baseType: !16, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2799, file: !183, line: 91, baseType: !1514, size: 64, offset: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2799, file: !183, line: 92, baseType: !2804, size: 64, offset: 128)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!22, !2807, !1470}
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2788)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2799, file: !183, line: 93, baseType: !2810, size: 64, offset: 192)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!432, !2807, !2813, !626, !627}
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2799, file: !183, line: 95, baseType: !2815, size: 64, offset: 256)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{null, !2787}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2799, file: !183, line: 97, baseType: !2819, size: 64, offset: 320)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2821)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !190, line: 286, size: 1472, elements: !2822)
!2822 = !{!2823, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2821, file: !190, line: 287, baseType: !2824, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!22, !2787}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2821, file: !190, line: 288, baseType: !2815, size: 64, offset: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2821, file: !190, line: 289, baseType: !2824, size: 64, offset: 128)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2821, file: !190, line: 290, baseType: !2824, size: 64, offset: 192)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2821, file: !190, line: 291, baseType: !2824, size: 64, offset: 256)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2821, file: !190, line: 292, baseType: !2824, size: 64, offset: 320)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2821, file: !190, line: 293, baseType: !2824, size: 64, offset: 384)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2821, file: !190, line: 294, baseType: !2824, size: 64, offset: 448)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2821, file: !190, line: 295, baseType: !2824, size: 64, offset: 512)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2821, file: !190, line: 296, baseType: !2824, size: 64, offset: 576)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2821, file: !190, line: 297, baseType: !2824, size: 64, offset: 640)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2821, file: !190, line: 298, baseType: !2824, size: 64, offset: 704)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2821, file: !190, line: 299, baseType: !2824, size: 64, offset: 768)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2821, file: !190, line: 300, baseType: !2824, size: 64, offset: 832)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2821, file: !190, line: 301, baseType: !2824, size: 64, offset: 896)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2821, file: !190, line: 302, baseType: !2824, size: 64, offset: 960)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2821, file: !190, line: 303, baseType: !2824, size: 64, offset: 1024)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2821, file: !190, line: 304, baseType: !2824, size: 64, offset: 1088)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2821, file: !190, line: 305, baseType: !2824, size: 64, offset: 1152)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2821, file: !190, line: 306, baseType: !2824, size: 64, offset: 1216)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2821, file: !190, line: 307, baseType: !2824, size: 64, offset: 1280)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2821, file: !190, line: 308, baseType: !2824, size: 64, offset: 1344)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2821, file: !190, line: 309, baseType: !2824, size: 64, offset: 1408)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2788, file: !183, line: 714, baseType: !2850, size: 64, offset: 768)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2852)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2853, line: 80, size: 1344, elements: !2854)
!2853 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2854 = !{!2855, !2856, !2857, !2858, !2859, !2860, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2918}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2852, file: !2853, line: 81, baseType: !16, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2852, file: !2853, line: 82, baseType: !16, size: 64, offset: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2852, file: !2853, line: 83, baseType: !1514, size: 64, offset: 128)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2852, file: !2853, line: 84, baseType: !1514, size: 64, offset: 192)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2852, file: !2853, line: 85, baseType: !1514, size: 64, offset: 256)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2852, file: !2853, line: 87, baseType: !2861, size: 64, offset: 320)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!22, !2787, !2864}
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !177, line: 96, size: 1152, elements: !2866)
!2866 = !{!2867, !2868, !2869, !2870, !2871, !2872, !2873, !2877, !2881, !2882, !2883, !2884, !2885, !2893, !2894, !2895, !2896, !2897, !2898}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2865, file: !177, line: 97, baseType: !16, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2865, file: !177, line: 98, baseType: !2850, size: 64, offset: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2865, file: !177, line: 100, baseType: !1421, size: 64, offset: 128)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2865, file: !177, line: 101, baseType: !16, size: 64, offset: 192)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2865, file: !177, line: 103, baseType: !421, size: 8, offset: 256)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2865, file: !177, line: 104, baseType: !176, size: 32, offset: 288)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2865, file: !177, line: 106, baseType: !2874, size: 64, offset: 320)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2876)
!2876 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !177, line: 106, flags: DIFlagFwdDecl)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2865, file: !177, line: 107, baseType: !2878, size: 64, offset: 384)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2880)
!2880 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !177, line: 107, flags: DIFlagFwdDecl)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2865, file: !177, line: 109, baseType: !2824, size: 64, offset: 448)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2865, file: !177, line: 110, baseType: !2815, size: 64, offset: 512)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2865, file: !177, line: 111, baseType: !2824, size: 64, offset: 576)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2865, file: !177, line: 112, baseType: !2815, size: 64, offset: 640)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2865, file: !177, line: 113, baseType: !2886, size: 64, offset: 704)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!22, !2787, !2889}
!2889 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !190, line: 60, baseType: !2890)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !190, line: 58, size: 32, elements: !2891)
!2891 = !{!2892}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2890, file: !190, line: 59, baseType: !22, size: 32)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2865, file: !177, line: 114, baseType: !2824, size: 64, offset: 768)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2865, file: !177, line: 115, baseType: !1514, size: 64, offset: 832)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2865, file: !177, line: 116, baseType: !1514, size: 64, offset: 896)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2865, file: !177, line: 118, baseType: !2819, size: 64, offset: 960)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2865, file: !177, line: 119, baseType: !2815, size: 64, offset: 1024)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2865, file: !177, line: 121, baseType: !2899, size: 64, offset: 1088)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !177, line: 121, flags: DIFlagFwdDecl)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2852, file: !2853, line: 88, baseType: !2804, size: 64, offset: 384)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2852, file: !2853, line: 89, baseType: !2824, size: 64, offset: 448)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2852, file: !2853, line: 90, baseType: !2815, size: 64, offset: 512)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2852, file: !2853, line: 91, baseType: !2815, size: 64, offset: 576)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2852, file: !2853, line: 92, baseType: !2815, size: 64, offset: 640)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2852, file: !2853, line: 94, baseType: !2824, size: 64, offset: 704)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2852, file: !2853, line: 95, baseType: !2824, size: 64, offset: 768)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2852, file: !2853, line: 97, baseType: !2886, size: 64, offset: 832)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2852, file: !2853, line: 98, baseType: !2824, size: 64, offset: 896)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2852, file: !2853, line: 100, baseType: !2824, size: 64, offset: 960)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2852, file: !2853, line: 102, baseType: !2824, size: 64, offset: 1024)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2852, file: !2853, line: 103, baseType: !2815, size: 64, offset: 1088)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2852, file: !2853, line: 105, baseType: !2819, size: 64, offset: 1152)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2852, file: !2853, line: 107, baseType: !2915, size: 64, offset: 1216)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2917)
!2917 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2853, line: 107, flags: DIFlagFwdDecl)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2852, file: !2853, line: 109, baseType: !421, size: 8, offset: 1280)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2788, file: !183, line: 715, baseType: !2864, size: 64, offset: 832)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2788, file: !183, line: 717, baseType: !20, size: 64, offset: 896)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2788, file: !183, line: 719, baseType: !20, size: 64, offset: 960)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2788, file: !183, line: 721, baseType: !1040, size: 256, offset: 1024)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2788, file: !183, line: 725, baseType: !2924, size: 448, offset: 1280)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !183, line: 517, size: 448, elements: !2925)
!2925 = !{!2926, !2927, !2928, !2929}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2924, file: !183, line: 518, baseType: !97, size: 128)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2924, file: !183, line: 519, baseType: !97, size: 128, offset: 128)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2924, file: !183, line: 520, baseType: !97, size: 128, offset: 256)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2924, file: !183, line: 521, baseType: !182, size: 32, offset: 384)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2788, file: !183, line: 726, baseType: !2931, size: 2496, offset: 1728)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !190, line: 663, size: 2496, elements: !2932)
!2932 = !{!2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3015, !3019}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2931, file: !190, line: 664, baseType: !2889, size: 32)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2931, file: !190, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2931, file: !190, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2931, file: !190, line: 667, baseType: !421, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2931, file: !190, line: 668, baseType: !421, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2931, file: !190, line: 669, baseType: !421, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2931, file: !190, line: 670, baseType: !421, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2931, file: !190, line: 671, baseType: !421, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2931, file: !190, line: 672, baseType: !421, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2931, file: !190, line: 673, baseType: !421, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2931, file: !190, line: 674, baseType: !421, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2931, file: !190, line: 675, baseType: !377, size: 32, offset: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2931, file: !190, line: 676, baseType: !59, size: 32, offset: 96)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2931, file: !190, line: 678, baseType: !97, size: 128, offset: 128)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2931, file: !190, line: 679, baseType: !601, size: 256, offset: 256)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2931, file: !190, line: 680, baseType: !2949, size: 64, offset: 512)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2951, line: 43, size: 1536, elements: !2952)
!2951 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2952 = !{!2953, !2954, !2955, !2956, !2957, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2950, file: !2951, line: 44, baseType: !16, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2950, file: !2951, line: 45, baseType: !22, size: 32, offset: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2950, file: !2951, line: 46, baseType: !97, size: 128, offset: 128)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2950, file: !2951, line: 47, baseType: !59, size: 32, offset: 256)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2950, file: !2951, line: 48, baseType: !2958, size: 64, offset: 320)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !190, line: 629, flags: DIFlagFwdDecl)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2950, file: !2951, line: 49, baseType: !2478, size: 320, offset: 384)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2950, file: !2951, line: 50, baseType: !39, size: 64, offset: 704)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2950, file: !2951, line: 51, baseType: !828, size: 64, offset: 768)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2950, file: !2951, line: 52, baseType: !828, size: 64, offset: 832)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2950, file: !2951, line: 53, baseType: !828, size: 64, offset: 896)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2950, file: !2951, line: 54, baseType: !828, size: 64, offset: 960)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2950, file: !2951, line: 55, baseType: !828, size: 64, offset: 1024)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2950, file: !2951, line: 56, baseType: !39, size: 64, offset: 1088)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2950, file: !2951, line: 57, baseType: !39, size: 64, offset: 1152)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2950, file: !2951, line: 58, baseType: !39, size: 64, offset: 1216)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2950, file: !2951, line: 59, baseType: !39, size: 64, offset: 1280)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2950, file: !2951, line: 60, baseType: !39, size: 64, offset: 1344)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2950, file: !2951, line: 61, baseType: !2787, size: 64, offset: 1408)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2950, file: !2951, line: 62, baseType: !421, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2950, file: !2951, line: 63, baseType: !421, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2931, file: !190, line: 681, baseType: !421, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2931, file: !190, line: 682, baseType: !421, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2931, file: !190, line: 683, baseType: !421, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2931, file: !190, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2931, file: !190, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2931, file: !190, line: 690, baseType: !820, size: 512, offset: 640)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2931, file: !190, line: 691, baseType: !310, size: 64, offset: 1152)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2931, file: !190, line: 692, baseType: !562, size: 256, offset: 1216)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2931, file: !190, line: 693, baseType: !54, size: 192, offset: 1472)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2931, file: !190, line: 694, baseType: !2958, size: 64, offset: 1664)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2931, file: !190, line: 695, baseType: !49, size: 32, offset: 1728)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2931, file: !190, line: 696, baseType: !49, size: 32, offset: 1760)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2931, file: !190, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2931, file: !190, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2931, file: !190, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2931, file: !190, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2931, file: !190, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2931, file: !190, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2931, file: !190, line: 703, baseType: !421, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2931, file: !190, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2931, file: !190, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2931, file: !190, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2931, file: !190, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2931, file: !190, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2931, file: !190, line: 709, baseType: !7, size: 32, offset: 1824)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2931, file: !190, line: 710, baseType: !189, size: 32, offset: 1856)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2931, file: !190, line: 711, baseType: !197, size: 32, offset: 1888)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2931, file: !190, line: 712, baseType: !197, size: 32, offset: 1920)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2931, file: !190, line: 713, baseType: !22, size: 32, offset: 1952)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2931, file: !190, line: 714, baseType: !22, size: 32, offset: 1984)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2931, file: !190, line: 715, baseType: !310, size: 64, offset: 2048)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2931, file: !190, line: 716, baseType: !310, size: 64, offset: 2112)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2931, file: !190, line: 717, baseType: !310, size: 64, offset: 2176)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2931, file: !190, line: 718, baseType: !310, size: 64, offset: 2240)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2931, file: !190, line: 720, baseType: !3010, size: 64, offset: 2304)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !190, line: 632, size: 64, elements: !3012)
!3012 = !{!3013, !3014}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3011, file: !190, line: 633, baseType: !59, size: 32)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3011, file: !190, line: 634, baseType: !7, size: 32, offset: 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2931, file: !190, line: 721, baseType: !3016, size: 64, offset: 2368)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{null, !2787, !332}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2931, file: !190, line: 722, baseType: !3020, size: 64, offset: 2432)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !190, line: 722, flags: DIFlagFwdDecl)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2788, file: !183, line: 727, baseType: !3023, size: 64, offset: 4224)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !190, line: 742, size: 1792, elements: !3025)
!3025 = !{!3026, !3027, !3028, !3032, !3033, !3034}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3024, file: !190, line: 743, baseType: !2821, size: 1472)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3024, file: !190, line: 744, baseType: !2824, size: 64, offset: 1472)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3024, file: !190, line: 745, baseType: !3029, size: 64, offset: 1536)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{null, !2787, !421}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3024, file: !190, line: 746, baseType: !2824, size: 64, offset: 1600)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3024, file: !190, line: 747, baseType: !2815, size: 64, offset: 1664)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3024, file: !190, line: 748, baseType: !2815, size: 64, offset: 1728)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2788, file: !183, line: 736, baseType: !3036, size: 128, offset: 4288)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !183, line: 529, size: 128, elements: !3037)
!3037 = !{!3038, !3042}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3036, file: !183, line: 531, baseType: !3039, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3041, line: 13, flags: DIFlagFwdDecl)
!3041 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3036, file: !183, line: 532, baseType: !3043, size: 64, offset: 64)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !183, line: 49, flags: DIFlagFwdDecl)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2788, file: !183, line: 738, baseType: !3046, size: 64, offset: 4416)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3048)
!3048 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !183, line: 738, flags: DIFlagFwdDecl)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2788, file: !183, line: 740, baseType: !3050, size: 64, offset: 4480)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2788, file: !183, line: 741, baseType: !310, size: 64, offset: 4544)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2788, file: !183, line: 746, baseType: !310, size: 64, offset: 4608)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2788, file: !183, line: 747, baseType: !3054, size: 64, offset: 4672)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3056)
!3056 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !183, line: 747, flags: DIFlagFwdDecl)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2788, file: !183, line: 749, baseType: !3058, size: 64, offset: 4736)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !183, line: 428, size: 128, elements: !3060)
!3060 = !{!3061, !3062, !3063}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3059, file: !183, line: 433, baseType: !7, size: 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3059, file: !183, line: 434, baseType: !7, size: 32, offset: 32)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3059, file: !183, line: 435, baseType: !39, size: 64, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2788, file: !183, line: 751, baseType: !97, size: 128, offset: 4800)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2788, file: !183, line: 762, baseType: !3066, size: 64, offset: 4928)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !183, line: 762, flags: DIFlagFwdDecl)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2788, file: !183, line: 770, baseType: !3069, offset: 4992)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3070, line: 5, elements: !1019)
!3070 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2788, file: !183, line: 772, baseType: !3072, size: 64, offset: 4992)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3074, line: 18, flags: DIFlagFwdDecl)
!3074 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2788, file: !183, line: 773, baseType: !3076, size: 64, offset: 5056)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2853, line: 22, flags: DIFlagFwdDecl)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2788, file: !183, line: 776, baseType: !22, size: 32, offset: 5120)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2788, file: !183, line: 778, baseType: !1261, size: 32, offset: 5152)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2788, file: !183, line: 779, baseType: !377, size: 32, offset: 5184)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2788, file: !183, line: 781, baseType: !59, size: 32, offset: 5216)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2788, file: !183, line: 782, baseType: !97, size: 128, offset: 5248)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2788, file: !183, line: 784, baseType: !3084, size: 64, offset: 5376)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3086)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3087, line: 52, size: 768, elements: !3088)
!3087 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3088 = !{!3089, !3090, !3091, !3092, !3093, !3097, !3101, !3102, !3103, !3104, !3108, !3112}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3086, file: !3087, line: 53, baseType: !16, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3086, file: !3087, line: 55, baseType: !1514, size: 64, offset: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3086, file: !3087, line: 56, baseType: !1514, size: 64, offset: 128)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3086, file: !3087, line: 58, baseType: !2804, size: 64, offset: 192)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3086, file: !3087, line: 59, baseType: !3094, size: 64, offset: 256)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!432, !2807, !2813}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3086, file: !3087, line: 61, baseType: !3098, size: 64, offset: 320)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{null, !3084}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3086, file: !3087, line: 62, baseType: !2815, size: 64, offset: 384)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3086, file: !3087, line: 64, baseType: !2824, size: 64, offset: 448)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3086, file: !3087, line: 66, baseType: !2047, size: 64, offset: 512)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3086, file: !3087, line: 67, baseType: !3105, size: 64, offset: 576)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!2064, !2807}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3086, file: !3087, line: 69, baseType: !3109, size: 64, offset: 640)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{null, !2807, !626, !627}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3086, file: !3087, line: 71, baseType: !2819, size: 64, offset: 704)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2788, file: !183, line: 785, baseType: !1514, size: 64, offset: 5440)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2788, file: !183, line: 787, baseType: !2815, size: 64, offset: 5504)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2788, file: !183, line: 788, baseType: !3116, size: 64, offset: 5568)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !183, line: 46, flags: DIFlagFwdDecl)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2788, file: !183, line: 789, baseType: !3119, size: 64, offset: 5632)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !183, line: 48, flags: DIFlagFwdDecl)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2788, file: !183, line: 791, baseType: !3122, size: 64, offset: 5696)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !183, line: 597, size: 128, elements: !3124)
!3124 = !{!3125, !3126, !3127, !3128, !3129}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3123, file: !183, line: 598, baseType: !204, size: 32)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3123, file: !183, line: 599, baseType: !213, size: 32, offset: 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3123, file: !183, line: 600, baseType: !218, size: 32, offset: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3123, file: !183, line: 601, baseType: !421, size: 8, offset: 96)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3123, file: !183, line: 602, baseType: !421, size: 8, offset: 104)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2788, file: !183, line: 793, baseType: !223, size: 32, offset: 5760)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2788, file: !183, line: 795, baseType: !421, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2788, file: !183, line: 796, baseType: !421, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2788, file: !183, line: 797, baseType: !421, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2788, file: !183, line: 798, baseType: !421, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2788, file: !183, line: 799, baseType: !421, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2782, file: !230, line: 307, baseType: !2787, size: 64, offset: 256)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !2782, file: !230, line: 308, baseType: !1514, size: 64, offset: 320)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !2782, file: !230, line: 309, baseType: !1514, size: 64, offset: 384)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2782, file: !230, line: 310, baseType: !16, size: 64, offset: 448)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2782, file: !230, line: 311, baseType: !22, size: 32, offset: 512)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2782, file: !230, line: 316, baseType: !22, size: 32, offset: 544)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !2782, file: !230, line: 318, baseType: !2377, size: 64, offset: 576)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !2782, file: !230, line: 319, baseType: !3144, size: 64, offset: 640)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !230, line: 977, size: 1856, elements: !3146)
!3146 = !{!3147, !3199, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3145, file: !230, line: 978, baseType: !3148, size: 896)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !230, line: 873, size: 896, elements: !3149)
!3149 = !{!3150, !3151, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3148, file: !230, line: 874, baseType: !2781, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3148, file: !230, line: 875, baseType: !3152, size: 64, offset: 64)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !230, line: 912, size: 1792, elements: !3154)
!3154 = !{!3155, !3156, !3157, !3158, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3153, file: !230, line: 917, baseType: !358, size: 32)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3153, file: !230, line: 923, baseType: !1040, size: 256, offset: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3153, file: !230, line: 925, baseType: !97, size: 128, offset: 320)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3153, file: !230, line: 926, baseType: !3159, size: 128, offset: 448)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !230, line: 901, size: 128, elements: !3160)
!3160 = !{!3161, !3162}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3159, file: !230, line: 902, baseType: !646, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3159, file: !230, line: 903, baseType: !310, size: 64, offset: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3153, file: !230, line: 927, baseType: !3159, size: 128, offset: 576)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3153, file: !230, line: 928, baseType: !97, size: 128, offset: 704)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3153, file: !230, line: 930, baseType: !22, size: 32, offset: 832)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3153, file: !230, line: 931, baseType: !22, size: 32, offset: 864)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3153, file: !230, line: 932, baseType: !22, size: 32, offset: 896)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3153, file: !230, line: 934, baseType: !22, size: 32, offset: 928)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3153, file: !230, line: 935, baseType: !22, size: 32, offset: 960)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3153, file: !230, line: 936, baseType: !22, size: 32, offset: 992)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3153, file: !230, line: 937, baseType: !22, size: 32, offset: 1024)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3153, file: !230, line: 939, baseType: !324, size: 32, offset: 1056)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3153, file: !230, line: 940, baseType: !703, size: 64, offset: 1088)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3153, file: !230, line: 945, baseType: !310, size: 64, offset: 1152)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3153, file: !230, line: 946, baseType: !310, size: 64, offset: 1216)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3153, file: !230, line: 947, baseType: !310, size: 64, offset: 1280)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3153, file: !230, line: 953, baseType: !3152, size: 64, offset: 1344)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3153, file: !230, line: 954, baseType: !310, size: 64, offset: 1408)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3153, file: !230, line: 955, baseType: !310, size: 64, offset: 1472)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3153, file: !230, line: 956, baseType: !22, size: 32, offset: 1536)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3153, file: !230, line: 958, baseType: !22, size: 32, offset: 1568)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3153, file: !230, line: 960, baseType: !411, size: 128, align: 64, offset: 1600)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3153, file: !230, line: 968, baseType: !3184, size: 64, offset: 1728)
!3184 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3185, line: 12, baseType: !3186)
!3185 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3185, line: 10, size: 64, elements: !3187)
!3187 = !{!3188}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3186, file: !3185, line: 11, baseType: !274, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3148, file: !230, line: 877, baseType: !97, size: 128, offset: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3148, file: !230, line: 879, baseType: !97, size: 128, offset: 256)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3148, file: !230, line: 880, baseType: !97, size: 128, offset: 384)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3148, file: !230, line: 883, baseType: !7, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3148, file: !230, line: 885, baseType: !7, size: 32, offset: 544)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3148, file: !230, line: 886, baseType: !7, size: 32, offset: 576)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3148, file: !230, line: 888, baseType: !49, size: 32, offset: 608)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3148, file: !230, line: 889, baseType: !411, size: 128, align: 64, offset: 640)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3148, file: !230, line: 891, baseType: !20, size: 64, offset: 768)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3148, file: !230, line: 898, baseType: !22, size: 32, offset: 832)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3145, file: !230, line: 979, baseType: !3200, size: 64, offset: 896)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3145, file: !230, line: 981, baseType: !97, size: 128, offset: 960)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3145, file: !230, line: 982, baseType: !22, size: 32, offset: 1088)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3145, file: !230, line: 984, baseType: !22, size: 32, offset: 1120)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3145, file: !230, line: 985, baseType: !22, size: 32, offset: 1152)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3145, file: !230, line: 987, baseType: !358, size: 32, offset: 1184)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3145, file: !230, line: 988, baseType: !820, size: 512, offset: 1216)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3145, file: !230, line: 989, baseType: !828, size: 64, offset: 1728)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3145, file: !230, line: 990, baseType: !7, size: 32, offset: 1792)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !2782, file: !230, line: 320, baseType: !49, size: 32, offset: 704)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !2782, file: !230, line: 321, baseType: !22, size: 32, offset: 736)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !2782, file: !230, line: 322, baseType: !22, size: 32, offset: 768)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !2782, file: !230, line: 325, baseType: !7, size: 32, offset: 800)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !2782, file: !230, line: 331, baseType: !3214, size: 64, offset: 832)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{null, !2781}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !2782, file: !230, line: 332, baseType: !3214, size: 64, offset: 896)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !2782, file: !230, line: 350, baseType: !3219, size: 64, offset: 960)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!22, !2764}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !2782, file: !230, line: 356, baseType: !3223, size: 64, offset: 1024)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{null, !2764, !998}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !2782, file: !230, line: 357, baseType: !3223, size: 64, offset: 1088)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2782, file: !230, line: 385, baseType: !3228, size: 64, offset: 1152)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!22, !2764, !22}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !2782, file: !230, line: 386, baseType: !3232, size: 64, offset: 1216)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{null, !2764, !22}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2782, file: !230, line: 406, baseType: !3232, size: 64, offset: 1280)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2782, file: !230, line: 407, baseType: !3232, size: 64, offset: 1344)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2782, file: !230, line: 415, baseType: !3238, size: 64, offset: 1408)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{null, !2764}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !2782, file: !230, line: 427, baseType: !3242, size: 64, offset: 1472)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{null, !2781, !7}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !2782, file: !230, line: 436, baseType: !3246, size: 64, offset: 1536)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!22, !2781}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !2782, file: !230, line: 443, baseType: !3214, size: 64, offset: 1600)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !2782, file: !230, line: 450, baseType: !3219, size: 64, offset: 1664)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !2782, file: !230, line: 455, baseType: !3252, size: 64, offset: 1728)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{null, !3200, !421}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !2782, file: !230, line: 461, baseType: !1115, size: 64, offset: 1792)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !2782, file: !230, line: 469, baseType: !3257, size: 64, offset: 1856)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{null, !3200, !3200}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !2782, file: !230, line: 476, baseType: !3261, size: 64, offset: 1920)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!20, !2764, !1936, !22, !421}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !2782, file: !230, line: 483, baseType: !1218, size: 64, offset: 1984)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !2782, file: !230, line: 494, baseType: !3266, size: 64, offset: 2048)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!666, !2764, !3269, !39}
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !230, line: 1014, size: 448, elements: !3271)
!3271 = !{!3272, !3273, !3276, !3277, !3278, !3279, !3284}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3270, file: !230, line: 1015, baseType: !2764, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3270, file: !230, line: 1016, baseType: !3274, size: 64, offset: 64)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !230, line: 641, flags: DIFlagFwdDecl)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3270, file: !230, line: 1017, baseType: !39, size: 64, offset: 128)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3270, file: !230, line: 1018, baseType: !39, size: 64, offset: 192)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3270, file: !230, line: 1019, baseType: !310, size: 64, offset: 256)
!3279 = !DIDerivedType(tag: DW_TAG_member, scope: !3270, file: !230, line: 1020, baseType: !3280, size: 64, offset: 320)
!3280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3270, file: !230, line: 1020, size: 64, elements: !3281)
!3281 = !{!3282, !3283}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3280, file: !230, line: 1021, baseType: !20, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3280, file: !230, line: 1022, baseType: !39, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3270, file: !230, line: 1024, baseType: !22, size: 32, offset: 384)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !2782, file: !230, line: 506, baseType: !3286, size: 64, offset: 2112)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!22, !100}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !2782, file: !230, line: 520, baseType: !3238, size: 64, offset: 2176)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !2782, file: !230, line: 530, baseType: !3219, size: 64, offset: 2240)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2782, file: !230, line: 537, baseType: !3292, size: 64, offset: 2304)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!421, !2781, !22}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !2782, file: !230, line: 542, baseType: !3296, size: 64, offset: 2368)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!22, !2764, !310}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !2765, file: !230, line: 715, baseType: !20, size: 64, offset: 1280)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2765, file: !230, line: 717, baseType: !229, size: 32, offset: 1344)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !2765, file: !230, line: 718, baseType: !7, size: 32, offset: 1376)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2765, file: !230, line: 719, baseType: !3303, size: 64, offset: 1408)
!3303 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3304, line: 26, baseType: !3305)
!3304 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3304, line: 24, size: 64, elements: !3306)
!3306 = !{!3307}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3305, file: !3304, line: 25, baseType: !3184, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2765, file: !230, line: 720, baseType: !276, size: 64, offset: 1472)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !2765, file: !230, line: 728, baseType: !310, size: 64, offset: 1536)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !2765, file: !230, line: 729, baseType: !310, size: 64, offset: 1600)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !2765, file: !230, line: 730, baseType: !310, size: 64, offset: 1664)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2765, file: !230, line: 732, baseType: !3313, size: 1088, offset: 1728)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3314, line: 385, size: 1088, elements: !3315)
!3314 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3315 = !{!3316, !3317, !3318, !3319, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3369, !3370, !3377, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3313, file: !3314, line: 390, baseType: !378, size: 32)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3313, file: !3314, line: 395, baseType: !378, size: 32, offset: 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3313, file: !3314, line: 400, baseType: !311, size: 64, offset: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, scope: !3313, file: !3314, line: 402, baseType: !3320, size: 64, offset: 128)
!3320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3313, file: !3314, line: 402, size: 64, elements: !3321)
!3321 = !{!3322, !3323}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3320, file: !3314, line: 403, baseType: !311, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3320, file: !3314, line: 404, baseType: !311, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3313, file: !3314, line: 407, baseType: !311, size: 64, offset: 192)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3313, file: !3314, line: 408, baseType: !311, size: 64, offset: 256)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3313, file: !3314, line: 410, baseType: !311, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3313, file: !3314, line: 411, baseType: !311, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3313, file: !3314, line: 412, baseType: !311, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3313, file: !3314, line: 413, baseType: !311, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3313, file: !3314, line: 414, baseType: !311, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3313, file: !3314, line: 415, baseType: !311, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3313, file: !3314, line: 416, baseType: !311, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3313, file: !3314, line: 417, baseType: !311, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3313, file: !3314, line: 418, baseType: !311, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3313, file: !3314, line: 419, baseType: !311, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3313, file: !3314, line: 420, baseType: !311, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3313, file: !3314, line: 421, baseType: !311, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3313, file: !3314, line: 422, baseType: !311, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3313, file: !3314, line: 423, baseType: !311, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3313, file: !3314, line: 424, baseType: !311, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3313, file: !3314, line: 435, baseType: !311, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3313, file: !3314, line: 436, baseType: !311, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3313, file: !3314, line: 437, baseType: !311, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3313, file: !3314, line: 439, baseType: !311, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3313, file: !3314, line: 440, baseType: !311, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3313, file: !3314, line: 442, baseType: !311, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3313, file: !3314, line: 443, baseType: !311, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3313, file: !3314, line: 444, baseType: !311, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3313, file: !3314, line: 445, baseType: !311, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3313, file: !3314, line: 446, baseType: !311, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3313, file: !3314, line: 447, baseType: !311, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3313, file: !3314, line: 448, baseType: !311, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3313, file: !3314, line: 449, baseType: !311, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3313, file: !3314, line: 450, baseType: !311, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3313, file: !3314, line: 451, baseType: !311, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3313, file: !3314, line: 452, baseType: !311, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3313, file: !3314, line: 453, baseType: !311, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3313, file: !3314, line: 454, baseType: !311, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3313, file: !3314, line: 455, baseType: !311, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3313, file: !3314, line: 456, baseType: !311, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3313, file: !3314, line: 457, baseType: !311, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3313, file: !3314, line: 458, baseType: !311, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3313, file: !3314, line: 459, baseType: !311, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3364 = !DIDerivedType(tag: DW_TAG_member, scope: !3313, file: !3314, line: 461, baseType: !3365, size: 32, offset: 384)
!3365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3313, file: !3314, line: 461, size: 32, elements: !3366)
!3366 = !{!3367, !3368}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3365, file: !3314, line: 462, baseType: !378, size: 32)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3365, file: !3314, line: 463, baseType: !378, size: 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3313, file: !3314, line: 466, baseType: !378, size: 32, offset: 416)
!3370 = !DIDerivedType(tag: DW_TAG_member, scope: !3313, file: !3314, line: 467, baseType: !3371, size: 64, offset: 448)
!3371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3313, file: !3314, line: 467, size: 64, elements: !3372)
!3372 = !{!3373, !3374, !3375, !3376}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3371, file: !3314, line: 468, baseType: !311, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3371, file: !3314, line: 469, baseType: !311, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3371, file: !3314, line: 470, baseType: !311, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3371, file: !3314, line: 471, baseType: !311, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, scope: !3313, file: !3314, line: 473, baseType: !3378, size: 64, offset: 512)
!3378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3313, file: !3314, line: 473, size: 64, elements: !3379)
!3379 = !{!3380, !3381, !3382, !3383}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3378, file: !3314, line: 474, baseType: !311, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3378, file: !3314, line: 475, baseType: !311, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3378, file: !3314, line: 476, baseType: !311, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3378, file: !3314, line: 477, baseType: !311, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3313, file: !3314, line: 479, baseType: !311, size: 64, offset: 576)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3313, file: !3314, line: 485, baseType: !311, size: 64, offset: 640)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3313, file: !3314, line: 490, baseType: !378, size: 32, offset: 704)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3313, file: !3314, line: 492, baseType: !333, size: 32, offset: 736)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3313, file: !3314, line: 501, baseType: !311, size: 64, offset: 768)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3313, file: !3314, line: 506, baseType: !378, size: 32, offset: 832)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3313, file: !3314, line: 507, baseType: !94, size: 16, offset: 864)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3313, file: !3314, line: 508, baseType: !94, size: 16, offset: 880)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3313, file: !3314, line: 509, baseType: !378, size: 32, offset: 896)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3313, file: !3314, line: 510, baseType: !378, size: 32, offset: 928)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3313, file: !3314, line: 518, baseType: !311, size: 64, offset: 960)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3313, file: !3314, line: 520, baseType: !311, size: 64, offset: 1024)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !2765, file: !230, line: 733, baseType: !93, size: 16, offset: 2816)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !2765, file: !230, line: 734, baseType: !93, size: 16, offset: 2832)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !2765, file: !230, line: 735, baseType: !93, size: 16, offset: 2848)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !2765, file: !230, line: 736, baseType: !3400, size: 1536, offset: 2880)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !230, line: 155, size: 1536, elements: !3401)
!3401 = !{!3402, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3486, !3487, !3488, !3489}
!3402 = !DIDerivedType(tag: DW_TAG_member, scope: !3400, file: !230, line: 157, baseType: !3403, size: 768)
!3403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3400, file: !230, line: 157, size: 768, elements: !3404)
!3404 = !{!3405, !3424, !3428, !3432, !3437, !3459}
!3405 = !DIDerivedType(tag: DW_TAG_member, scope: !3403, file: !230, line: 158, baseType: !3406, size: 768)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3403, file: !230, line: 158, size: 768, elements: !3407)
!3407 = !{!3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3423}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3406, file: !230, line: 159, baseType: !310, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3406, file: !230, line: 160, baseType: !310, size: 64, offset: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3406, file: !230, line: 161, baseType: !39, size: 64, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3406, file: !230, line: 162, baseType: !39, size: 64, offset: 192)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3406, file: !230, line: 163, baseType: !22, size: 32, offset: 256)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3406, file: !230, line: 164, baseType: !22, size: 32, offset: 288)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3406, file: !230, line: 165, baseType: !22, size: 32, offset: 320)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3406, file: !230, line: 166, baseType: !22, size: 32, offset: 352)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3406, file: !230, line: 168, baseType: !3417, size: 192, offset: 384)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !230, line: 134, size: 192, elements: !3418)
!3418 = !{!3419, !3420, !3421, !3422}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3417, file: !230, line: 135, baseType: !310, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3417, file: !230, line: 136, baseType: !7, size: 32, offset: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3417, file: !230, line: 137, baseType: !22, size: 32, offset: 96)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3417, file: !230, line: 138, baseType: !22, size: 32, offset: 128)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3406, file: !230, line: 169, baseType: !3417, size: 192, offset: 576)
!3424 = !DIDerivedType(tag: DW_TAG_member, scope: !3403, file: !230, line: 171, baseType: !3425, size: 512)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3403, file: !230, line: 171, size: 512, elements: !3426)
!3426 = !{!3427}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3425, file: !230, line: 172, baseType: !820, size: 512)
!3428 = !DIDerivedType(tag: DW_TAG_member, scope: !3403, file: !230, line: 174, baseType: !3429, size: 128)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3403, file: !230, line: 174, size: 128, elements: !3430)
!3430 = !{!3431}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3429, file: !230, line: 176, baseType: !97, size: 128)
!3432 = !DIDerivedType(tag: DW_TAG_member, scope: !3403, file: !230, line: 178, baseType: !3433, size: 128)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3403, file: !230, line: 178, size: 128, elements: !3434)
!3434 = !{!3435, !3436}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3433, file: !230, line: 179, baseType: !310, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3433, file: !230, line: 180, baseType: !310, size: 64, offset: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, scope: !3403, file: !230, line: 183, baseType: !3438, size: 320)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3403, file: !230, line: 183, size: 320, elements: !3439)
!3439 = !{!3440, !3448}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3438, file: !230, line: 189, baseType: !3441, size: 192)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3442, line: 14, size: 192, elements: !3443)
!3442 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3443 = !{!3444, !3445, !3446, !3447}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3441, file: !3442, line: 15, baseType: !39, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3441, file: !3442, line: 16, baseType: !39, size: 64, offset: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3441, file: !3442, line: 17, baseType: !83, size: 8, offset: 128)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3441, file: !3442, line: 18, baseType: !83, size: 8, offset: 136)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3438, file: !230, line: 190, baseType: !3449, size: 128, offset: 192)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3450, line: 21, size: 128, elements: !3451)
!3450 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3451 = !{!3452, !3457}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3449, file: !3450, line: 22, baseType: !3453, size: 64)
!3453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3450, line: 17, size: 64, elements: !3454)
!3454 = !{!3455}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3453, file: !3450, line: 18, baseType: !3456, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3449, file: !3450, line: 23, baseType: !3458, size: 64, offset: 64)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, scope: !3403, file: !230, line: 193, baseType: !3460, size: 192)
!3460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3403, file: !230, line: 193, size: 192, elements: !3461)
!3461 = !{!3462, !3463, !3464, !3465, !3466}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3460, file: !230, line: 194, baseType: !83, size: 8)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3460, file: !230, line: 195, baseType: !83, size: 8, offset: 8)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3460, file: !230, line: 196, baseType: !93, size: 16, offset: 16)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3460, file: !230, line: 197, baseType: !310, size: 64, offset: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3460, file: !230, line: 198, baseType: !310, size: 64, offset: 128)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3400, file: !230, line: 205, baseType: !703, size: 64, offset: 768)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3400, file: !230, line: 211, baseType: !20, size: 64, offset: 832)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3400, file: !230, line: 214, baseType: !39, size: 64, offset: 896)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3400, file: !230, line: 223, baseType: !22, size: 32, offset: 960)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3400, file: !230, line: 229, baseType: !3303, size: 64, offset: 1024)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3400, file: !230, line: 234, baseType: !310, size: 64, offset: 1088)
!3473 = !DIDerivedType(tag: DW_TAG_member, scope: !3400, file: !230, line: 236, baseType: !3474, size: 128, offset: 1152)
!3474 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3400, file: !230, line: 236, size: 128, elements: !3475)
!3475 = !{!3476, !3481}
!3476 = !DIDerivedType(tag: DW_TAG_member, scope: !3474, file: !230, line: 237, baseType: !3477, size: 128)
!3477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3474, file: !230, line: 237, size: 128, elements: !3478)
!3478 = !{!3479, !3480}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3477, file: !230, line: 241, baseType: !310, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3477, file: !230, line: 249, baseType: !3303, size: 64, offset: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, scope: !3474, file: !230, line: 251, baseType: !3482, size: 128)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3474, file: !230, line: 251, size: 128, elements: !3483)
!3483 = !{!3484, !3485}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3482, file: !230, line: 252, baseType: !310, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3482, file: !230, line: 253, baseType: !310, size: 64, offset: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3400, file: !230, line: 261, baseType: !310, size: 64, offset: 1280)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3400, file: !230, line: 262, baseType: !310, size: 64, offset: 1344)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3400, file: !230, line: 268, baseType: !310, size: 64, offset: 1408)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3400, file: !230, line: 269, baseType: !310, size: 64, offset: 1472)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2765, file: !230, line: 738, baseType: !3152, size: 64, offset: 4416)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !2765, file: !230, line: 744, baseType: !3200, size: 64, offset: 4480)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2765, file: !230, line: 745, baseType: !274, size: 64, offset: 4544)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !2765, file: !230, line: 751, baseType: !276, size: 64, offset: 4608)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !2765, file: !230, line: 752, baseType: !276, size: 64, offset: 4672)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !2765, file: !230, line: 757, baseType: !1040, size: 256, offset: 4736)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !2765, file: !230, line: 758, baseType: !97, size: 128, offset: 4992)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2765, file: !230, line: 759, baseType: !2764, size: 64, offset: 5120)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !2765, file: !230, line: 761, baseType: !22, size: 32, offset: 5184)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2765, file: !230, line: 762, baseType: !22, size: 32, offset: 5216)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !2765, file: !230, line: 764, baseType: !97, size: 128, offset: 5248)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2765, file: !230, line: 765, baseType: !703, size: 64, offset: 5376)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !2765, file: !230, line: 768, baseType: !1040, size: 256, offset: 5440)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !2765, file: !230, line: 769, baseType: !49, size: 32, offset: 5696)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2765, file: !230, line: 771, baseType: !3274, size: 64, offset: 5760)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !2765, file: !230, line: 772, baseType: !97, size: 128, offset: 5824)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !2765, file: !230, line: 773, baseType: !39, size: 64, offset: 5952)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !2765, file: !230, line: 774, baseType: !22, size: 32, offset: 6016)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !2765, file: !230, line: 777, baseType: !54, size: 192, offset: 6080)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2765, file: !230, line: 778, baseType: !3510, size: 64, offset: 6272)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !239, line: 1083, size: 384, elements: !3512)
!3512 = !{!3513, !3514, !3515, !3516, !3517, !3518}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3511, file: !239, line: 1084, baseType: !1053, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3511, file: !239, line: 1085, baseType: !22, size: 32, offset: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3511, file: !239, line: 1086, baseType: !22, size: 32, offset: 96)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3511, file: !239, line: 1087, baseType: !3510, size: 64, offset: 128)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3511, file: !239, line: 1088, baseType: !1026, size: 64, offset: 192)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3511, file: !239, line: 1089, baseType: !411, size: 128, align: 64, offset: 256)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !2765, file: !230, line: 781, baseType: !7, size: 32, offset: 6336)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !2765, file: !230, line: 782, baseType: !7, size: 32, offset: 6368)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !2765, file: !230, line: 783, baseType: !7, size: 32, offset: 6400)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !2765, file: !230, line: 784, baseType: !7, size: 32, offset: 6432)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !2765, file: !230, line: 785, baseType: !39, size: 64, offset: 6464)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !2765, file: !230, line: 786, baseType: !3525, size: 256, offset: 6528)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !3526, line: 17, size: 256, elements: !3527)
!3526 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!3527 = !{!3528, !3529, !3534}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3525, file: !3526, line: 18, baseType: !722, size: 128)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3525, file: !3526, line: 19, baseType: !3530, size: 64, offset: 128)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{null, !3533}
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !3525, file: !3526, line: 20, baseType: !3535, size: 64, offset: 192)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3536, line: 16, size: 64, elements: !3537)
!3536 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3537 = !{!3538}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3535, file: !3536, line: 17, baseType: !703, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !2765, file: !230, line: 787, baseType: !411, size: 128, align: 64, offset: 6784)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !2765, file: !230, line: 788, baseType: !7, size: 32, offset: 6912)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !2765, file: !230, line: 789, baseType: !3535, size: 64, offset: 6976)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !2765, file: !230, line: 791, baseType: !49, size: 32, offset: 7040)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !2765, file: !230, line: 794, baseType: !3544, size: 192, offset: 7104)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !230, line: 579, size: 192, elements: !3545)
!3545 = !{!3546, !3547, !3548}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3544, file: !230, line: 580, baseType: !97, size: 128)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3544, file: !230, line: 581, baseType: !358, size: 32, offset: 128)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3544, file: !230, line: 582, baseType: !7, size: 32, offset: 160)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !2765, file: !230, line: 796, baseType: !3550, size: 64, offset: 7296)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !230, line: 585, size: 128, elements: !3552)
!3552 = !{!3553, !3554}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3551, file: !230, line: 586, baseType: !39, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3551, file: !230, line: 587, baseType: !39, size: 64, offset: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !2765, file: !230, line: 797, baseType: !39, size: 64, offset: 7360)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !2765, file: !230, line: 800, baseType: !2764, size: 64, offset: 7424)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2765, file: !230, line: 802, baseType: !3238, size: 64, offset: 7488)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2765, file: !230, line: 803, baseType: !411, size: 128, align: 64, offset: 7552)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2765, file: !230, line: 805, baseType: !1093, size: 64, offset: 7680)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2765, file: !230, line: 806, baseType: !310, size: 64, offset: 7744)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !2765, file: !230, line: 808, baseType: !276, size: 64, offset: 7808)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !2765, file: !230, line: 810, baseType: !3563, size: 64, offset: 7872)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!310}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !2765, file: !230, line: 811, baseType: !3567, size: 64, offset: 7936)
!3567 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !230, line: 605, baseType: !3568)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{null, !2764, !3571, !3676}
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !230, line: 1148, size: 2048, align: 512, elements: !3573)
!3573 = !{!3574, !3575, !3576, !3577, !3578, !3583, !3584, !3585, !3590, !3591, !3598, !3619, !3641, !3651, !3669, !3670, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !3572, file: !230, line: 1153, baseType: !310, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3572, file: !230, line: 1154, baseType: !310, size: 64, offset: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !3572, file: !230, line: 1155, baseType: !310, size: 64, offset: 128)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3572, file: !230, line: 1161, baseType: !310, size: 64, offset: 192)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3572, file: !230, line: 1165, baseType: !3579, size: 64, offset: 256)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3572, file: !230, line: 1162, size: 64, elements: !3580)
!3580 = !{!3581, !3582}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3579, file: !230, line: 1163, baseType: !377, size: 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3579, file: !230, line: 1164, baseType: !377, size: 32, offset: 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3572, file: !230, line: 1166, baseType: !310, size: 64, offset: 320)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3572, file: !230, line: 1167, baseType: !310, size: 64, offset: 384)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3572, file: !230, line: 1171, baseType: !3586, size: 64, offset: 448)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3572, file: !230, line: 1168, size: 64, elements: !3587)
!3587 = !{!3588, !3589}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3586, file: !230, line: 1169, baseType: !377, size: 32)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3586, file: !230, line: 1170, baseType: !377, size: 32, offset: 32)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3572, file: !230, line: 1177, baseType: !310, size: 64, offset: 512)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3572, file: !230, line: 1178, baseType: !3592, size: 64, offset: 576)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !230, line: 67, size: 64, elements: !3594)
!3594 = !{!3595, !3596}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3593, file: !230, line: 68, baseType: !311, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3593, file: !230, line: 69, baseType: !3597, offset: 64)
!3597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, elements: !678)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3572, file: !230, line: 1179, baseType: !3599, size: 64, offset: 640)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !230, line: 93, size: 256, elements: !3601)
!3601 = !{!3602, !3618}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3600, file: !230, line: 94, baseType: !3603, size: 224)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !230, line: 83, size: 224, elements: !3604)
!3604 = !{!3605, !3611, !3616, !3617}
!3605 = !DIDerivedType(tag: DW_TAG_member, scope: !3603, file: !230, line: 84, baseType: !3606, size: 64)
!3606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3603, file: !230, line: 84, size: 64, elements: !3607)
!3607 = !{!3608, !3610}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3606, file: !230, line: 85, baseType: !3609, size: 64)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3606, file: !230, line: 86, baseType: !39, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3603, file: !230, line: 88, baseType: !3612, size: 64, offset: 64)
!3612 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !230, line: 80, baseType: !3613)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!39, !20, !2064, !39, !39}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3603, file: !230, line: 89, baseType: !20, size: 64, offset: 128)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3603, file: !230, line: 90, baseType: !377, size: 32, offset: 192)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3600, file: !230, line: 95, baseType: !377, size: 32, offset: 224)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3572, file: !230, line: 1180, baseType: !3620, size: 64, offset: 704)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !230, line: 123, size: 128, elements: !3622)
!3622 = !{!3623, !3624, !3625}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3621, file: !230, line: 124, baseType: !311, size: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3621, file: !230, line: 125, baseType: !311, size: 64, offset: 64)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3621, file: !230, line: 126, baseType: !3626, offset: 128)
!3626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3627, elements: !678)
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3314, line: 1415, size: 192, elements: !3628)
!3628 = !{!3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3627, file: !3314, line: 1416, baseType: !311, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3627, file: !3314, line: 1417, baseType: !311, size: 64, offset: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3627, file: !3314, line: 1418, baseType: !311, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3627, file: !3314, line: 1419, baseType: !311, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3627, file: !3314, line: 1420, baseType: !311, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3627, file: !3314, line: 1421, baseType: !311, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3627, file: !3314, line: 1422, baseType: !311, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3627, file: !3314, line: 1423, baseType: !311, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !3627, file: !3314, line: 1424, baseType: !311, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !3627, file: !3314, line: 1425, baseType: !311, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3627, file: !3314, line: 1426, baseType: !311, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3627, file: !3314, line: 1427, baseType: !311, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3572, file: !230, line: 1181, baseType: !3642, size: 64, offset: 768)
!3642 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3314, line: 1430, size: 64, elements: !3643)
!3643 = !{!3644, !3645}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3642, file: !3314, line: 1431, baseType: !311, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, scope: !3642, file: !3314, line: 1433, baseType: !3646, size: 64)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3642, file: !3314, line: 1433, size: 64, elements: !3647)
!3647 = !{!3648, !3649, !3650}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !3646, file: !3314, line: 1434, baseType: !378, size: 32)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !3646, file: !3314, line: 1435, baseType: !94, size: 16, offset: 32)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !3646, file: !3314, line: 1436, baseType: !94, size: 16, offset: 48)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3572, file: !230, line: 1182, baseType: !3652, size: 64, offset: 832)
!3652 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3314, line: 1267, size: 64, elements: !3653)
!3653 = !{!3654, !3655}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3652, file: !3314, line: 1268, baseType: !311, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, scope: !3652, file: !3314, line: 1269, baseType: !3656, size: 64)
!3656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3652, file: !3314, line: 1269, size: 64, elements: !3657)
!3657 = !{!3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !3656, file: !3314, line: 1270, baseType: !311, size: 5, flags: DIFlagBitField, extraData: i64 0)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !3656, file: !3314, line: 1271, baseType: !311, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !3656, file: !3314, line: 1272, baseType: !311, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !3656, file: !3314, line: 1273, baseType: !311, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !3656, file: !3314, line: 1274, baseType: !311, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !3656, file: !3314, line: 1275, baseType: !311, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !3656, file: !3314, line: 1276, baseType: !311, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !3656, file: !3314, line: 1277, baseType: !311, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !3656, file: !3314, line: 1278, baseType: !311, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !3656, file: !3314, line: 1279, baseType: !311, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !3656, file: !3314, line: 1280, baseType: !311, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3572, file: !230, line: 1183, baseType: !310, size: 64, offset: 896)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3572, file: !230, line: 1185, baseType: !3671, size: 128, offset: 960)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !3672, line: 7, size: 128, elements: !3673)
!3672 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!3673 = !{!3674, !3675}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !3671, file: !3672, line: 8, baseType: !311, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3671, file: !3672, line: 9, baseType: !3676, size: 64, offset: 64)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3678, line: 103, size: 1344, elements: !3679)
!3678 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3679 = !{!3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3708, !3709, !3710}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3677, file: !3678, line: 109, baseType: !39, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3677, file: !3678, line: 110, baseType: !39, size: 64, offset: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3677, file: !3678, line: 111, baseType: !39, size: 64, offset: 128)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3677, file: !3678, line: 112, baseType: !39, size: 64, offset: 192)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3677, file: !3678, line: 113, baseType: !39, size: 64, offset: 256)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3677, file: !3678, line: 114, baseType: !39, size: 64, offset: 320)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3677, file: !3678, line: 117, baseType: !39, size: 64, offset: 384)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3677, file: !3678, line: 118, baseType: !39, size: 64, offset: 448)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3677, file: !3678, line: 119, baseType: !39, size: 64, offset: 512)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3677, file: !3678, line: 120, baseType: !39, size: 64, offset: 576)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3677, file: !3678, line: 121, baseType: !39, size: 64, offset: 640)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3677, file: !3678, line: 122, baseType: !39, size: 64, offset: 704)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3677, file: !3678, line: 123, baseType: !39, size: 64, offset: 768)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3677, file: !3678, line: 124, baseType: !39, size: 64, offset: 832)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3677, file: !3678, line: 125, baseType: !39, size: 64, offset: 896)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3677, file: !3678, line: 139, baseType: !39, size: 64, offset: 960)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3677, file: !3678, line: 142, baseType: !39, size: 64, offset: 1024)
!3697 = !DIDerivedType(tag: DW_TAG_member, scope: !3677, file: !3678, line: 144, baseType: !3698, size: 64, offset: 1088)
!3698 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3677, file: !3678, line: 144, size: 64, elements: !3699)
!3699 = !{!3700, !3701, !3702}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3698, file: !3678, line: 146, baseType: !93, size: 16)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3698, file: !3678, line: 148, baseType: !310, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3698, file: !3678, line: 150, baseType: !3703, size: 64)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3678, line: 59, size: 64, elements: !3704)
!3704 = !{!3705, !3706, !3707}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3703, file: !3678, line: 61, baseType: !310, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3703, file: !3678, line: 63, baseType: !310, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3703, file: !3678, line: 65, baseType: !310, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3677, file: !3678, line: 153, baseType: !39, size: 64, offset: 1152)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3677, file: !3678, line: 154, baseType: !39, size: 64, offset: 1216)
!3710 = !DIDerivedType(tag: DW_TAG_member, scope: !3677, file: !3678, line: 156, baseType: !3711, size: 64, offset: 1280)
!3711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3677, file: !3678, line: 156, size: 64, elements: !3712)
!3712 = !{!3713, !3714, !3715}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3711, file: !3678, line: 158, baseType: !93, size: 16)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3711, file: !3678, line: 160, baseType: !310, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3711, file: !3678, line: 162, baseType: !3716, size: 64)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3678, line: 69, size: 64, elements: !3717)
!3717 = !{!3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3716, file: !3678, line: 71, baseType: !310, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3716, file: !3678, line: 73, baseType: !310, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3716, file: !3678, line: 75, baseType: !310, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3716, file: !3678, line: 77, baseType: !310, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3716, file: !3678, line: 80, baseType: !310, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3716, file: !3678, line: 83, baseType: !310, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3716, file: !3678, line: 86, baseType: !310, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3716, file: !3678, line: 88, baseType: !310, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3716, file: !3678, line: 93, baseType: !310, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3716, file: !3678, line: 100, baseType: !310, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3572, file: !230, line: 1186, baseType: !3671, size: 128, offset: 1088)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3572, file: !230, line: 1187, baseType: !310, size: 64, offset: 1216)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3572, file: !230, line: 1189, baseType: !310, size: 64, offset: 1280)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3572, file: !230, line: 1190, baseType: !310, size: 64, offset: 1344)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3572, file: !230, line: 1191, baseType: !310, size: 64, offset: 1408)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3572, file: !230, line: 1192, baseType: !310, size: 64, offset: 1472)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !3572, file: !230, line: 1193, baseType: !310, size: 64, offset: 1536)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !3572, file: !230, line: 1194, baseType: !310, size: 64, offset: 1600)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3572, file: !230, line: 1195, baseType: !310, size: 64, offset: 1664)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !2765, file: !230, line: 812, baseType: !20, size: 64, offset: 8000)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !2765, file: !230, line: 820, baseType: !2558, size: 64, offset: 8064)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2765, file: !230, line: 821, baseType: !2745, size: 64, offset: 8128)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2765, file: !230, line: 828, baseType: !3741, size: 64, offset: 8192)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !230, line: 1046, size: 1664, elements: !3743)
!3743 = !{!3744, !4002}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !3742, file: !230, line: 1047, baseType: !3745, size: 1600)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3746, line: 152, size: 1600, elements: !3747)
!3746 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3747 = !{!3748, !3858, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !4001}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3745, file: !3746, line: 154, baseType: !3749, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3746, line: 389, size: 7872, elements: !3751)
!3751 = !{!3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3771, !3772, !3776, !3777, !3778, !3779, !3780, !3785, !3801, !3802, !3804, !3805, !3806, !3828, !3829, !3830, !3831, !3837, !3838, !3839, !3840, !3841, !3845, !3848, !3849, !3856}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3750, file: !3746, line: 391, baseType: !3745, size: 1600)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3750, file: !3746, line: 393, baseType: !39, size: 64, offset: 1600)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3750, file: !3746, line: 401, baseType: !22, size: 32, offset: 1664)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3750, file: !3746, line: 404, baseType: !22, size: 32, offset: 1696)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3750, file: !3746, line: 417, baseType: !22, size: 32, offset: 1728)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3750, file: !3746, line: 418, baseType: !22, size: 32, offset: 1760)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3750, file: !3746, line: 419, baseType: !22, size: 32, offset: 1792)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3750, file: !3746, line: 432, baseType: !22, size: 32, offset: 1824)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3750, file: !3746, line: 433, baseType: !22, size: 32, offset: 1856)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3750, file: !3746, line: 434, baseType: !22, size: 32, offset: 1888)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3750, file: !3746, line: 436, baseType: !22, size: 32, offset: 1920)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3750, file: !3746, line: 439, baseType: !7, size: 32, offset: 1952)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3750, file: !3746, line: 441, baseType: !2083, size: 64, offset: 1984)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3750, file: !3746, line: 442, baseType: !3766, size: 448, offset: 2048)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3746, line: 138, size: 448, elements: !3767)
!3767 = !{!3768, !3769, !3770}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3766, file: !3746, line: 140, baseType: !2083, size: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3766, file: !3746, line: 141, baseType: !39, size: 64, offset: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3766, file: !3746, line: 142, baseType: !2478, size: 320, offset: 128)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3750, file: !3746, line: 443, baseType: !3766, size: 448, offset: 2496)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3750, file: !3746, line: 446, baseType: !3773, offset: 2944)
!3773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3766, elements: !3774)
!3774 = !{!3775}
!3775 = !DISubrange(count: 0)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3750, file: !3746, line: 455, baseType: !93, size: 16, offset: 2944)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3750, file: !3746, line: 456, baseType: !93, size: 16, offset: 2960)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3750, file: !3746, line: 457, baseType: !93, size: 16, offset: 2976)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3750, file: !3746, line: 458, baseType: !93, size: 16, offset: 2992)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3750, file: !3746, line: 461, baseType: !3781, size: 896, offset: 3008)
!3781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3782, size: 896, elements: !3783)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3783 = !{!3784}
!3784 = !DISubrange(count: 14)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3750, file: !3746, line: 463, baseType: !3786, size: 64, offset: 3904)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3746, line: 537, size: 41664, elements: !3788)
!3788 = !{!3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3787, file: !3746, line: 538, baseType: !2103, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3787, file: !3746, line: 541, baseType: !7, size: 32, offset: 64)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3787, file: !3746, line: 544, baseType: !22, size: 32, offset: 96)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3787, file: !3746, line: 547, baseType: !97, size: 128, offset: 128)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3787, file: !3746, line: 548, baseType: !411, size: 128, align: 64, offset: 256)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3787, file: !3746, line: 555, baseType: !3750, size: 7872, offset: 384)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3787, file: !3746, line: 558, baseType: !3749, size: 64, offset: 8256)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3787, file: !3746, line: 561, baseType: !49, size: 32, offset: 8320)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3787, file: !3746, line: 564, baseType: !7, size: 32, offset: 8352)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3787, file: !3746, line: 567, baseType: !2707, size: 32768, offset: 8384)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3787, file: !3746, line: 570, baseType: !3800, size: 512, offset: 41152)
!3800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 512, elements: !1477)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3750, file: !3746, line: 469, baseType: !97, size: 128, offset: 3968)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3750, file: !3746, line: 478, baseType: !3803, size: 1792, offset: 4096)
!3803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 1792, elements: !3783)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3750, file: !3746, line: 487, baseType: !3749, size: 64, offset: 5888)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3750, file: !3746, line: 488, baseType: !3749, size: 64, offset: 5952)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3750, file: !3746, line: 491, baseType: !3807, size: 64, offset: 6016)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3746, line: 327, size: 896, elements: !3809)
!3809 = !{!3810, !3813, !3823, !3824, !3825, !3826, !3827}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3808, file: !3746, line: 332, baseType: !3811)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3812, line: 64, elements: !1019)
!3812 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3808, file: !3746, line: 333, baseType: !3814, size: 192)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3746, line: 299, size: 192, elements: !3815)
!3815 = !{!3816}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3814, file: !3746, line: 300, baseType: !3817, size: 192)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3818, line: 17, size: 192, elements: !3819)
!3818 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3819 = !{!3820, !3821, !3822}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3817, file: !3818, line: 18, baseType: !310, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3817, file: !3818, line: 19, baseType: !310, size: 64, offset: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3817, file: !3818, line: 20, baseType: !312, size: 64, offset: 128)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3808, file: !3746, line: 339, baseType: !3814, size: 192, offset: 192)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3808, file: !3746, line: 347, baseType: !3814, size: 192, offset: 384)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3808, file: !3746, line: 353, baseType: !3814, size: 192, offset: 576)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3808, file: !3746, line: 366, baseType: !3749, size: 64, offset: 768)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3808, file: !3746, line: 367, baseType: !3749, size: 64, offset: 832)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3750, file: !3746, line: 492, baseType: !97, size: 128, offset: 6080)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3750, file: !3746, line: 495, baseType: !3814, size: 192, offset: 6208)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3750, file: !3746, line: 496, baseType: !3814, size: 192, offset: 6400)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3750, file: !3746, line: 497, baseType: !3832, size: 192, offset: 6592)
!3832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !705, line: 324, size: 192, elements: !3833)
!3833 = !{!3834, !3835, !3836}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3832, file: !705, line: 326, baseType: !310, size: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3832, file: !705, line: 327, baseType: !310, size: 64, offset: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3832, file: !705, line: 328, baseType: !358, size: 32, offset: 128)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3750, file: !3746, line: 503, baseType: !97, size: 128, offset: 6784)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3750, file: !3746, line: 504, baseType: !1040, size: 256, offset: 6912)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3750, file: !3746, line: 507, baseType: !54, size: 192, offset: 7168)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3750, file: !3746, line: 510, baseType: !562, size: 256, offset: 7360)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3750, file: !3746, line: 513, baseType: !3842, size: 64, offset: 7616)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3844, line: 214, elements: !1019)
!3844 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3750, file: !3746, line: 516, baseType: !3846, offset: 7680)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3847, line: 76, elements: !1019)
!3847 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3750, file: !3746, line: 519, baseType: !49, size: 32, offset: 7680)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3750, file: !3746, line: 522, baseType: !3850, size: 128, offset: 7712)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3746, line: 370, size: 128, elements: !3851)
!3851 = !{!3852, !3853, !3854, !3855}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3850, file: !3746, line: 372, baseType: !421, size: 8)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3850, file: !3746, line: 375, baseType: !22, size: 32, offset: 32)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3850, file: !3746, line: 380, baseType: !22, size: 32, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3850, file: !3746, line: 386, baseType: !22, size: 32, offset: 96)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3750, file: !3746, line: 529, baseType: !3857, offset: 7872)
!3857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3749, elements: !678)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3745, file: !3746, line: 157, baseType: !3859, size: 64, offset: 64)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3746, line: 669, size: 1984, elements: !3861)
!3861 = !{!3862, !3866, !3870, !3874, !3875, !3876, !3877, !3881, !3885, !3886, !3892, !3896, !3897, !3898, !3927, !3931, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3984, !3985}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3860, file: !3746, line: 670, baseType: !3863, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!3782, !3782}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3860, file: !3746, line: 671, baseType: !3867, size: 64, offset: 64)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!22, !3782}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3860, file: !3746, line: 672, baseType: !3871, size: 64, offset: 128)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{null, !3782}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3860, file: !3746, line: 673, baseType: !3871, size: 64, offset: 192)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3860, file: !3746, line: 674, baseType: !3871, size: 64, offset: 256)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3860, file: !3746, line: 675, baseType: !3871, size: 64, offset: 320)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3860, file: !3746, line: 676, baseType: !3878, size: 64, offset: 384)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{null, !3782, !22}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3860, file: !3746, line: 677, baseType: !3882, size: 64, offset: 448)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!22, !2128, !3782}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3860, file: !3746, line: 679, baseType: !3882, size: 64, offset: 512)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3860, file: !3746, line: 682, baseType: !3887, size: 64, offset: 576)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!22, !3890}
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3746, line: 30, flags: DIFlagFwdDecl)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3860, file: !3746, line: 683, baseType: !3893, size: 64, offset: 640)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{null, !3890}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3860, file: !3746, line: 684, baseType: !3893, size: 64, offset: 704)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3860, file: !3746, line: 685, baseType: !2652, size: 64, offset: 768)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3860, file: !3746, line: 686, baseType: !3899, size: 64, offset: 832)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!22, !703, !3902}
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3746, line: 209, size: 4736, elements: !3904)
!3904 = !{!3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3903, file: !3746, line: 215, baseType: !3781, size: 896)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3903, file: !3746, line: 218, baseType: !324, size: 32, offset: 896)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !3903, file: !3746, line: 226, baseType: !3902, size: 64, offset: 960)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !3903, file: !3746, line: 229, baseType: !3749, size: 64, offset: 1024)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3903, file: !3746, line: 232, baseType: !22, size: 32, offset: 1088)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3903, file: !3746, line: 241, baseType: !97, size: 128, offset: 1152)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !3903, file: !3746, line: 242, baseType: !97, size: 128, offset: 1280)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !3903, file: !3746, line: 243, baseType: !97, size: 128, offset: 1408)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !3903, file: !3746, line: 246, baseType: !97, size: 128, offset: 1536)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !3903, file: !3746, line: 255, baseType: !3803, size: 1792, offset: 1664)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !3903, file: !3746, line: 258, baseType: !97, size: 128, offset: 3456)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !3903, file: !3746, line: 259, baseType: !97, size: 128, offset: 3584)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !3903, file: !3746, line: 265, baseType: !493, size: 128, offset: 3712)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !3903, file: !3746, line: 271, baseType: !97, size: 128, offset: 3840)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !3903, file: !3746, line: 277, baseType: !97, size: 128, offset: 3968)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !3903, file: !3746, line: 278, baseType: !97, size: 128, offset: 4096)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !3903, file: !3746, line: 279, baseType: !97, size: 128, offset: 4224)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !3903, file: !3746, line: 288, baseType: !3749, size: 64, offset: 4352)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !3903, file: !3746, line: 289, baseType: !3749, size: 64, offset: 4416)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !3903, file: !3746, line: 290, baseType: !3902, size: 64, offset: 4480)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3903, file: !3746, line: 293, baseType: !421, size: 8, offset: 4544)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3903, file: !3746, line: 296, baseType: !411, size: 128, align: 64, offset: 4608)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3860, file: !3746, line: 688, baseType: !3928, size: 64, offset: 896)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{null, !703, !3902}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3860, file: !3746, line: 689, baseType: !3932, size: 64, offset: 960)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{null, !703}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3860, file: !3746, line: 690, baseType: !3932, size: 64, offset: 1024)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3860, file: !3746, line: 691, baseType: !3932, size: 64, offset: 1088)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3860, file: !3746, line: 692, baseType: !3871, size: 64, offset: 1152)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3860, file: !3746, line: 694, baseType: !421, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3860, file: !3746, line: 707, baseType: !421, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3860, file: !3746, line: 719, baseType: !421, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3860, file: !3746, line: 722, baseType: !22, size: 32, offset: 1248)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3860, file: !3746, line: 723, baseType: !16, size: 64, offset: 1280)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3860, file: !3746, line: 726, baseType: !16, size: 64, offset: 1344)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3860, file: !3746, line: 729, baseType: !3786, size: 64, offset: 1408)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3860, file: !3746, line: 732, baseType: !1098, size: 192, offset: 1472)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3860, file: !3746, line: 738, baseType: !97, size: 128, offset: 1664)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3860, file: !3746, line: 744, baseType: !3948, size: 64, offset: 1792)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3746, line: 580, size: 1728, elements: !3950)
!3950 = !{!3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3960, !3961, !3962, !3966, !3970, !3971, !3972, !3973, !3974, !3978, !3982, !3983}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3949, file: !3746, line: 586, baseType: !3800, size: 512)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3949, file: !3746, line: 587, baseType: !39, size: 64, offset: 512)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !3949, file: !3746, line: 593, baseType: !35, size: 64, offset: 576)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3949, file: !3746, line: 596, baseType: !7, size: 32, offset: 640)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !3949, file: !3746, line: 604, baseType: !7, size: 32, offset: 672)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3949, file: !3746, line: 610, baseType: !3859, size: 64, offset: 704)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3949, file: !3746, line: 611, baseType: !97, size: 128, offset: 768)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !3949, file: !3746, line: 612, baseType: !3959, size: 64, offset: 896)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3949, file: !3746, line: 614, baseType: !2119, size: 64, offset: 960)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3949, file: !3746, line: 615, baseType: !2177, size: 64, offset: 1024)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !3949, file: !3746, line: 621, baseType: !3963, size: 64, offset: 1088)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!310, !3782, !3948}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !3949, file: !3746, line: 625, baseType: !3967, size: 64, offset: 1152)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!280, !3782, !3948}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3949, file: !3746, line: 628, baseType: !2158, size: 64, offset: 1216)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3949, file: !3746, line: 631, baseType: !2146, size: 64, offset: 1280)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3949, file: !3746, line: 632, baseType: !2154, size: 64, offset: 1344)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3949, file: !3746, line: 633, baseType: !2150, size: 64, offset: 1408)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !3949, file: !3746, line: 640, baseType: !3975, size: 64, offset: 1472)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!22, !3782, !3948, !310}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !3949, file: !3746, line: 645, baseType: !3979, size: 64, offset: 1536)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!22, !3782, !3948, !280}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3949, file: !3746, line: 654, baseType: !2185, size: 64, offset: 1600)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3949, file: !3746, line: 657, baseType: !2192, size: 64, offset: 1664)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3860, file: !3746, line: 745, baseType: !3948, size: 64, offset: 1856)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3860, file: !3746, line: 754, baseType: !7, size: 32, offset: 1920)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3745, file: !3746, line: 160, baseType: !1622, size: 128, offset: 128)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3745, file: !3746, line: 163, baseType: !97, size: 128, offset: 256)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3745, file: !3746, line: 164, baseType: !97, size: 128, offset: 384)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3745, file: !3746, line: 167, baseType: !97, size: 128, offset: 512)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3745, file: !3746, line: 173, baseType: !22, size: 32, offset: 640)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3745, file: !3746, line: 175, baseType: !7, size: 32, offset: 672)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3745, file: !3746, line: 183, baseType: !310, size: 64, offset: 704)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3745, file: !3746, line: 189, baseType: !49, size: 32, offset: 768)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3745, file: !3746, line: 192, baseType: !562, size: 256, offset: 832)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3745, file: !3746, line: 193, baseType: !3996, size: 448, offset: 1088)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !563, line: 120, size: 448, elements: !3997)
!3997 = !{!3998, !3999, !4000}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3996, file: !563, line: 121, baseType: !562, size: 256)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3996, file: !563, line: 122, baseType: !411, size: 128, align: 64, offset: 256)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3996, file: !563, line: 125, baseType: !2540, size: 64, offset: 384)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3745, file: !3746, line: 199, baseType: !3782, size: 64, offset: 1536)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3742, file: !230, line: 1048, baseType: !4003, size: 64, offset: 1600)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !230, line: 1039, size: 256, elements: !4005)
!4005 = !{!4006, !4007, !4008, !4009}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4004, file: !230, line: 1040, baseType: !310, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4004, file: !230, line: 1041, baseType: !310, size: 64, offset: 64)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4004, file: !230, line: 1042, baseType: !310, size: 64, offset: 128)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4004, file: !230, line: 1043, baseType: !22, size: 32, offset: 192)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2765, file: !230, line: 832, baseType: !20, size: 64, offset: 8256)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !2765, file: !230, line: 834, baseType: !97, size: 128, offset: 8320)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !2765, file: !230, line: 842, baseType: !378, size: 32, offset: 8448)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1422, file: !116, line: 524, baseType: !7, size: 32, offset: 8320)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1422, file: !116, line: 525, baseType: !4015, size: 64, offset: 8384)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !4018, line: 28, size: 192, elements: !4019)
!4018 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!4019 = !{!4020, !4021, !4022}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4017, file: !4018, line: 29, baseType: !16, size: 64)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !4017, file: !4018, line: 30, baseType: !16, size: 64, offset: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !4017, file: !4018, line: 31, baseType: !39, size: 64, offset: 128)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1422, file: !116, line: 526, baseType: !7, size: 32, offset: 8448)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1422, file: !116, line: 533, baseType: !20, size: 64, offset: 8512)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1422, file: !116, line: 534, baseType: !7, size: 32, offset: 8576)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1422, file: !116, line: 535, baseType: !4027, size: 64, offset: 8640)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1422, file: !116, line: 536, baseType: !7, size: 32, offset: 8704)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1422, file: !116, line: 539, baseType: !22, size: 32, offset: 8736)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1422, file: !116, line: 540, baseType: !2641, size: 64, offset: 8768)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1422, file: !116, line: 563, baseType: !97, size: 128, offset: 8832)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1422, file: !116, line: 565, baseType: !97, size: 128, offset: 8960)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1422, file: !116, line: 568, baseType: !2652, size: 64, offset: 9088)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1422, file: !116, line: 570, baseType: !49, size: 32, offset: 9152)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1398, file: !239, line: 2382, baseType: !1397, size: 64, offset: 448)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1398, file: !239, line: 2383, baseType: !642, size: 64, offset: 512)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1398, file: !239, line: 2385, baseType: !4038, offset: 576)
!4038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2507, line: 206, elements: !1019)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1398, file: !239, line: 2386, baseType: !4038, offset: 576)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1398, file: !239, line: 2387, baseType: !4038, offset: 576)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1398, file: !239, line: 2388, baseType: !4042, offset: 576)
!4042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4038, elements: !1072)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1398, file: !239, line: 2390, baseType: !4038, offset: 576)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1398, file: !239, line: 2391, baseType: !4038, offset: 576)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1398, file: !239, line: 2392, baseType: !4038, offset: 576)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1398, file: !239, line: 2393, baseType: !4038, offset: 576)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1389, file: !239, line: 1197, baseType: !4048, size: 64, offset: 384)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4050)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !239, line: 2057, size: 1664, elements: !4051)
!4051 = !{!4052, !4056, !4060, !4061, !4065, !4069, !4073, !4074, !4075, !4079, !4083, !4087, !4088, !4089, !4095, !4099, !4100, !4104, !4105, !4106, !4107, !4111, !4115, !4162, !4177, !4178}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !4050, file: !239, line: 2058, baseType: !4053, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!1187, !1388}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !4050, file: !239, line: 2059, baseType: !4057, size: 64, offset: 64)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{null, !1187}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4050, file: !239, line: 2060, baseType: !4057, size: 64, offset: 128)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !4050, file: !239, line: 2062, baseType: !4062, size: 64, offset: 192)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{null, !1187, !22}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !4050, file: !239, line: 2063, baseType: !4066, size: 64, offset: 256)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!22, !1187, !1845}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !4050, file: !239, line: 2064, baseType: !4070, size: 64, offset: 320)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!22, !1187}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !4050, file: !239, line: 2065, baseType: !4057, size: 64, offset: 384)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !4050, file: !239, line: 2066, baseType: !1417, size: 64, offset: 448)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !4050, file: !239, line: 2067, baseType: !4076, size: 64, offset: 512)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!22, !1388, !22}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !4050, file: !239, line: 2068, baseType: !4080, size: 64, offset: 576)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!22, !1388, !238}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !4050, file: !239, line: 2069, baseType: !4084, size: 64, offset: 640)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{!22, !1388}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !4050, file: !239, line: 2070, baseType: !4080, size: 64, offset: 704)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !4050, file: !239, line: 2071, baseType: !4084, size: 64, offset: 768)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !4050, file: !239, line: 2072, baseType: !4090, size: 64, offset: 832)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!22, !1152, !4093}
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !239, line: 62, flags: DIFlagFwdDecl)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !4050, file: !239, line: 2073, baseType: !4096, size: 64, offset: 896)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!22, !1388, !2377, !432}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !4050, file: !239, line: 2074, baseType: !1417, size: 64, offset: 960)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4050, file: !239, line: 2076, baseType: !4101, size: 64, offset: 1024)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!22, !2128, !1152}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !4050, file: !239, line: 2077, baseType: !4101, size: 64, offset: 1088)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4050, file: !239, line: 2078, baseType: !4101, size: 64, offset: 1152)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !4050, file: !239, line: 2079, baseType: !4101, size: 64, offset: 1216)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !4050, file: !239, line: 2081, baseType: !4108, size: 64, offset: 1280)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!1339, !1388, !22, !432, !35, !41}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !4050, file: !239, line: 2082, baseType: !4112, size: 64, offset: 1344)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!1339, !1388, !22, !16, !35, !41}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !4050, file: !239, line: 2083, baseType: !4116, size: 64, offset: 1408)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!4119, !1187}
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !244, line: 296, size: 1664, elements: !4122)
!4122 = !{!4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4147, !4148, !4149}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4121, file: !244, line: 297, baseType: !493, size: 128)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4121, file: !244, line: 298, baseType: !97, size: 128, offset: 128)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4121, file: !244, line: 299, baseType: !97, size: 128, offset: 256)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4121, file: !244, line: 300, baseType: !97, size: 128, offset: 384)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4121, file: !244, line: 301, baseType: !1040, size: 256, offset: 512)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4121, file: !244, line: 302, baseType: !59, size: 32, offset: 768)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4121, file: !244, line: 303, baseType: !49, size: 32, offset: 800)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4121, file: !244, line: 304, baseType: !1388, size: 64, offset: 832)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4121, file: !244, line: 305, baseType: !4132, size: 64, offset: 896)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !244, line: 68, size: 64, elements: !4133)
!4133 = !{!4134, !4146}
!4134 = !DIDerivedType(tag: DW_TAG_member, scope: !4132, file: !244, line: 69, baseType: !4135, size: 32)
!4135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4132, file: !244, line: 69, size: 32, elements: !4136)
!4136 = !{!4137, !4138, !4139}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4135, file: !244, line: 70, baseType: !283, size: 32)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4135, file: !244, line: 71, baseType: !291, size: 32)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4135, file: !244, line: 72, baseType: !4140, size: 32)
!4140 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4141, line: 24, baseType: !4142)
!4141 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4141, line: 22, size: 32, elements: !4143)
!4143 = !{!4144}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4142, file: !4141, line: 23, baseType: !4145, size: 32)
!4145 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4141, line: 20, baseType: !289)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4132, file: !244, line: 74, baseType: !243, size: 32, offset: 32)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4121, file: !244, line: 306, baseType: !41, size: 64, offset: 960)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4121, file: !244, line: 307, baseType: !39, size: 64, offset: 1024)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4121, file: !244, line: 308, baseType: !4150, size: 576, offset: 1088)
!4150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !244, line: 205, size: 576, elements: !4151)
!4151 = !{!4152, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4150, file: !244, line: 206, baseType: !4153, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !244, line: 66, baseType: !43)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4150, file: !244, line: 207, baseType: !4153, size: 64, offset: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4150, file: !244, line: 208, baseType: !4153, size: 64, offset: 128)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4150, file: !244, line: 209, baseType: !4153, size: 64, offset: 192)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4150, file: !244, line: 210, baseType: !4153, size: 64, offset: 256)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4150, file: !244, line: 211, baseType: !4153, size: 64, offset: 320)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4150, file: !244, line: 212, baseType: !4153, size: 64, offset: 384)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4150, file: !244, line: 213, baseType: !368, size: 64, offset: 448)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4150, file: !244, line: 214, baseType: !368, size: 64, offset: 512)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !4050, file: !239, line: 2085, baseType: !4163, size: 64, offset: 1472)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!666, !1388, !4166}
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4168, line: 15, size: 256, elements: !4169)
!4168 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4169 = !{!4170, !4171, !4172, !4173, !4174}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4167, file: !4168, line: 16, baseType: !1107, size: 32)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4167, file: !4168, line: 19, baseType: !22, size: 32, offset: 32)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4167, file: !4168, line: 26, baseType: !39, size: 64, offset: 64)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4167, file: !4168, line: 33, baseType: !39, size: 64, offset: 128)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4167, file: !4168, line: 36, baseType: !4175, size: 64, offset: 192)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !131, line: 33, flags: DIFlagFwdDecl)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !4050, file: !239, line: 2087, baseType: !4163, size: 64, offset: 1536)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4050, file: !239, line: 2089, baseType: !1417, size: 64, offset: 1600)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1389, file: !239, line: 1198, baseType: !4180, size: 64, offset: 448)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4182)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !244, line: 324, size: 704, elements: !4183)
!4183 = !{!4184, !4188, !4192, !4196, !4197, !4198, !4199, !4200, !4205, !4210, !4214}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4182, file: !244, line: 325, baseType: !4185, size: 64)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!22, !4120}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4182, file: !244, line: 326, baseType: !4189, size: 64, offset: 64)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!4120, !1388, !22}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4182, file: !244, line: 327, baseType: !4193, size: 64, offset: 128)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{null, !4120}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4182, file: !244, line: 328, baseType: !4185, size: 64, offset: 192)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4182, file: !244, line: 329, baseType: !4185, size: 64, offset: 256)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4182, file: !244, line: 330, baseType: !4185, size: 64, offset: 320)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4182, file: !244, line: 331, baseType: !4076, size: 64, offset: 384)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4182, file: !244, line: 334, baseType: !4201, size: 64, offset: 448)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{!4204, !1187}
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4182, file: !244, line: 335, baseType: !4206, size: 64, offset: 512)
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{!22, !1187, !4209}
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4182, file: !244, line: 337, baseType: !4211, size: 64, offset: 576)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{!22, !1187, !4204}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4182, file: !244, line: 339, baseType: !4215, size: 64, offset: 640)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{!22, !1388, !4218}
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1389, file: !239, line: 1199, baseType: !4220, size: 64, offset: 512)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4222)
!4222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !244, line: 430, size: 704, elements: !4223)
!4223 = !{!4224, !4228, !4229, !4233, !4234, !4235, !4250, !4273, !4277, !4278, !4301}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4222, file: !244, line: 431, baseType: !4225, size: 64)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!22, !1388, !22, !22, !1308}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4222, file: !244, line: 432, baseType: !4076, size: 64, offset: 64)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4222, file: !244, line: 433, baseType: !4230, size: 64, offset: 128)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!22, !1388, !7}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4222, file: !244, line: 434, baseType: !4230, size: 64, offset: 192)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4222, file: !244, line: 435, baseType: !4076, size: 64, offset: 256)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4222, file: !244, line: 436, baseType: !4236, size: 64, offset: 320)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!22, !1388, !22, !4239}
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !244, line: 417, size: 256, elements: !4241)
!4241 = !{!4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4240, file: !244, line: 418, baseType: !22, size: 32)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4240, file: !244, line: 419, baseType: !7, size: 32, offset: 32)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4240, file: !244, line: 420, baseType: !7, size: 32, offset: 64)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4240, file: !244, line: 422, baseType: !7, size: 32, offset: 96)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4240, file: !244, line: 423, baseType: !7, size: 32, offset: 128)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4240, file: !244, line: 424, baseType: !7, size: 32, offset: 160)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4240, file: !244, line: 425, baseType: !7, size: 32, offset: 192)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4240, file: !244, line: 426, baseType: !7, size: 32, offset: 224)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4222, file: !244, line: 437, baseType: !4251, size: 64, offset: 384)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!22, !1388, !4132, !4254}
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !244, line: 345, size: 960, elements: !4256)
!4256 = !{!4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4255, file: !244, line: 346, baseType: !22, size: 32)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4255, file: !244, line: 347, baseType: !310, size: 64, offset: 64)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4255, file: !244, line: 348, baseType: !310, size: 64, offset: 128)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4255, file: !244, line: 349, baseType: !310, size: 64, offset: 192)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4255, file: !244, line: 350, baseType: !310, size: 64, offset: 256)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4255, file: !244, line: 351, baseType: !310, size: 64, offset: 320)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4255, file: !244, line: 352, baseType: !310, size: 64, offset: 384)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4255, file: !244, line: 353, baseType: !280, size: 64, offset: 448)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4255, file: !244, line: 355, baseType: !280, size: 64, offset: 512)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4255, file: !244, line: 356, baseType: !22, size: 32, offset: 576)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4255, file: !244, line: 357, baseType: !22, size: 32, offset: 608)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4255, file: !244, line: 358, baseType: !310, size: 64, offset: 640)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4255, file: !244, line: 359, baseType: !310, size: 64, offset: 704)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4255, file: !244, line: 360, baseType: !310, size: 64, offset: 768)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4255, file: !244, line: 361, baseType: !280, size: 64, offset: 832)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4255, file: !244, line: 362, baseType: !22, size: 32, offset: 896)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4222, file: !244, line: 438, baseType: !4274, size: 64, offset: 448)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!22, !1388, !4218, !4254}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4222, file: !244, line: 440, baseType: !4251, size: 64, offset: 512)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4222, file: !244, line: 441, baseType: !4279, size: 64, offset: 576)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!22, !1388, !4282}
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !244, line: 411, size: 1408, elements: !4284)
!4284 = !{!4285, !4286}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4283, file: !244, line: 412, baseType: !7, size: 32)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4283, file: !244, line: 413, baseType: !4287, size: 1344, offset: 64)
!4287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4288, size: 1344, elements: !1072)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !244, line: 397, size: 448, elements: !4289)
!4289 = !{!4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4300}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4288, file: !244, line: 398, baseType: !7, size: 32)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4288, file: !244, line: 399, baseType: !7, size: 32, offset: 32)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4288, file: !244, line: 401, baseType: !7, size: 32, offset: 64)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4288, file: !244, line: 402, baseType: !7, size: 32, offset: 96)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4288, file: !244, line: 403, baseType: !7, size: 32, offset: 128)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4288, file: !244, line: 404, baseType: !7, size: 32, offset: 160)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4288, file: !244, line: 405, baseType: !7, size: 32, offset: 192)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4288, file: !244, line: 406, baseType: !312, size: 64, offset: 256)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4288, file: !244, line: 407, baseType: !4299, size: 64, offset: 320)
!4299 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !25, line: 132, baseType: !310)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4288, file: !244, line: 408, baseType: !4299, size: 64, offset: 384)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4222, file: !244, line: 442, baseType: !4230, size: 64, offset: 640)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1389, file: !239, line: 1200, baseType: !4303, size: 64, offset: 576)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4305)
!4305 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !239, line: 54, flags: DIFlagFwdDecl)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1389, file: !239, line: 1201, baseType: !39, size: 64, offset: 640)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1389, file: !239, line: 1202, baseType: !39, size: 64, offset: 704)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1389, file: !239, line: 1203, baseType: !39, size: 64, offset: 768)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1389, file: !239, line: 1204, baseType: !1152, size: 64, offset: 832)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1389, file: !239, line: 1205, baseType: !347, size: 320, offset: 896)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1389, file: !239, line: 1206, baseType: !22, size: 32, offset: 1216)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1389, file: !239, line: 1207, baseType: !49, size: 32, offset: 1248)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1389, file: !239, line: 1209, baseType: !20, size: 64, offset: 1280)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1389, file: !239, line: 1211, baseType: !4315, size: 64, offset: 1344)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4318)
!4318 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !239, line: 1211, flags: DIFlagFwdDecl)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1389, file: !239, line: 1223, baseType: !4320, size: 64, offset: 1408)
!4320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1164, line: 34, size: 64, elements: !4321)
!4321 = !{!4322}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4320, file: !1164, line: 35, baseType: !1167, size: 64)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1389, file: !239, line: 1224, baseType: !97, size: 128, offset: 1472)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1389, file: !239, line: 1225, baseType: !4325, size: 64, offset: 1600)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !239, line: 1225, flags: DIFlagFwdDecl)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1389, file: !239, line: 1226, baseType: !4328, size: 64, offset: 1664)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !239, line: 1226, flags: DIFlagFwdDecl)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1389, file: !239, line: 1227, baseType: !4331, size: 64, offset: 1728)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !239, line: 50, flags: DIFlagFwdDecl)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1389, file: !239, line: 1228, baseType: !4334, size: 64, offset: 1792)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !239, line: 1228, flags: DIFlagFwdDecl)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1389, file: !239, line: 1229, baseType: !493, size: 128, offset: 1856)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1389, file: !239, line: 1230, baseType: !7, size: 32, offset: 1984)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1389, file: !239, line: 1231, baseType: !4339, size: 2496, offset: 2048)
!4339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !244, line: 521, size: 2496, elements: !4340)
!4340 = !{!4341, !4342, !4343, !4345, !4377}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4339, file: !244, line: 522, baseType: !7, size: 32)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4339, file: !244, line: 523, baseType: !347, size: 320, offset: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4339, file: !244, line: 524, baseType: !4344, size: 192, offset: 384)
!4344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1187, size: 192, elements: !1072)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4339, file: !244, line: 525, baseType: !4346, size: 1728, offset: 576)
!4346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4347, size: 1728, elements: !1072)
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !244, line: 222, size: 576, elements: !4348)
!4348 = !{!4349, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4347, file: !244, line: 223, baseType: !4350, size: 64)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !244, line: 445, size: 256, elements: !4352)
!4352 = !{!4353, !4354, !4367, !4368}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4351, file: !244, line: 446, baseType: !22, size: 32)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4351, file: !244, line: 447, baseType: !4355, size: 64, offset: 64)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4357)
!4357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !244, line: 312, size: 512, elements: !4358)
!4358 = !{!4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366}
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4357, file: !244, line: 313, baseType: !4076, size: 64)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4357, file: !244, line: 314, baseType: !4076, size: 64, offset: 64)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4357, file: !244, line: 315, baseType: !4076, size: 64, offset: 128)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4357, file: !244, line: 316, baseType: !4076, size: 64, offset: 192)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4357, file: !244, line: 317, baseType: !4185, size: 64, offset: 256)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4357, file: !244, line: 318, baseType: !4185, size: 64, offset: 320)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4357, file: !244, line: 319, baseType: !4185, size: 64, offset: 384)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4357, file: !244, line: 320, baseType: !4215, size: 64, offset: 448)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4351, file: !244, line: 448, baseType: !1421, size: 64, offset: 128)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4351, file: !244, line: 449, baseType: !4350, size: 64, offset: 192)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4347, file: !244, line: 224, baseType: !22, size: 32, offset: 64)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4347, file: !244, line: 226, baseType: !97, size: 128, offset: 128)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4347, file: !244, line: 227, baseType: !39, size: 64, offset: 256)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4347, file: !244, line: 228, baseType: !7, size: 32, offset: 320)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4347, file: !244, line: 229, baseType: !7, size: 32, offset: 352)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4347, file: !244, line: 230, baseType: !4153, size: 64, offset: 384)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4347, file: !244, line: 231, baseType: !4153, size: 64, offset: 448)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4347, file: !244, line: 232, baseType: !20, size: 64, offset: 512)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4339, file: !244, line: 526, baseType: !4378, size: 192, offset: 2304)
!4378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4355, size: 192, elements: !1072)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1389, file: !239, line: 1233, baseType: !4380, size: 2368, offset: 4544)
!4380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !239, line: 1184, size: 2368, elements: !4381)
!4381 = !{!4382, !4383, !4384}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4380, file: !239, line: 1185, baseType: !26, size: 16)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4380, file: !239, line: 1186, baseType: !26, size: 16, offset: 16)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4380, file: !239, line: 1187, baseType: !4385, size: 2304, offset: 64)
!4385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4386, size: 2304, elements: !1072)
!4386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4387, line: 12, size: 768, elements: !4388)
!4387 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4388 = !{!4389, !4397, !4398, !4399, !4400}
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4386, file: !4387, line: 13, baseType: !4390, size: 384)
!4390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4391, line: 17, size: 384, elements: !4392)
!4391 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4392 = !{!4393, !4394, !4395, !4396}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4390, file: !4391, line: 18, baseType: !22, size: 32)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4390, file: !4391, line: 19, baseType: !22, size: 32, offset: 32)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4390, file: !4391, line: 20, baseType: !54, size: 192, offset: 64)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4390, file: !4391, line: 22, baseType: !411, size: 128, align: 64, offset: 256)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4386, file: !4387, line: 14, baseType: !2329, size: 64, offset: 384)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4386, file: !4387, line: 15, baseType: !3535, size: 64, offset: 448)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4386, file: !4387, line: 16, baseType: !54, size: 192, offset: 512)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4386, file: !4387, line: 17, baseType: !49, size: 32, offset: 704)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1389, file: !239, line: 1240, baseType: !20, size: 64, offset: 6912)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1389, file: !239, line: 1243, baseType: !377, size: 32, offset: 6976)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1389, file: !239, line: 1245, baseType: !368, size: 64, offset: 7040)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1389, file: !239, line: 1246, baseType: !368, size: 64, offset: 7104)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1389, file: !239, line: 1248, baseType: !378, size: 32, offset: 7168)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1389, file: !239, line: 1249, baseType: !4407, size: 64, offset: 7232)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !239, line: 634, flags: DIFlagFwdDecl)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1389, file: !239, line: 1252, baseType: !4410, size: 256, offset: 7296)
!4410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 256, elements: !4411)
!4411 = !{!4412}
!4412 = !DISubrange(count: 32)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1389, file: !239, line: 1253, baseType: !4414, size: 128, offset: 7552)
!4414 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4415, line: 21, baseType: !4416)
!4415 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4416 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4415, line: 19, size: 128, elements: !4417)
!4417 = !{!4418}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4416, file: !4415, line: 20, baseType: !4419, size: 128)
!4419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 128, elements: !4420)
!4420 = !{!4421}
!4421 = !DISubrange(count: 16)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1389, file: !239, line: 1255, baseType: !7, size: 32, offset: 7680)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1389, file: !239, line: 1261, baseType: !1040, size: 256, offset: 7744)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1389, file: !239, line: 1267, baseType: !16, size: 64, offset: 8000)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1389, file: !239, line: 1269, baseType: !4426, size: 64, offset: 8064)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4428)
!4428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1154, line: 128, size: 1024, align: 512, elements: !4429)
!4429 = !{!4430, !4434, !4435, !4442, !4448, !4452, !4456, !4460, !4461, !4465, !4469, !4474, !4478}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4428, file: !1154, line: 129, baseType: !4431, size: 64)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = !DISubroutineType(types: !4433)
!4433 = !{!22, !1152, !7}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4428, file: !1154, line: 130, baseType: !4431, size: 64, offset: 64)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4428, file: !1154, line: 131, baseType: !4436, size: 64, offset: 128)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!22, !4439, !4441}
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1153)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4428, file: !1154, line: 132, baseType: !4443, size: 64, offset: 192)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!22, !4439, !7, !16, !4446}
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1172)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4428, file: !1154, line: 134, baseType: !4449, size: 64, offset: 256)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!22, !4439}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4428, file: !1154, line: 135, baseType: !4453, size: 64, offset: 320)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!22, !1152}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4428, file: !1154, line: 136, baseType: !4457, size: 64, offset: 384)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{null, !1152}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4428, file: !1154, line: 137, baseType: !4457, size: 64, offset: 448)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4428, file: !1154, line: 138, baseType: !4462, size: 64, offset: 512)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{null, !1152, !1187}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4428, file: !1154, line: 139, baseType: !4466, size: 64, offset: 576)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!432, !1152, !432, !22}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4428, file: !1154, line: 140, baseType: !4470, size: 64, offset: 640)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DISubroutineType(types: !4472)
!4472 = !{!1147, !4473}
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4428, file: !1154, line: 141, baseType: !4475, size: 64, offset: 704)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!22, !1308, !421}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4428, file: !1154, line: 142, baseType: !4479, size: 64, offset: 768)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{!1152, !1152, !4482}
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1188)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1389, file: !239, line: 1271, baseType: !4485, size: 448, offset: 8128)
!4485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4168, line: 63, size: 448, elements: !4486)
!4486 = !{!4487, !4492, !4493, !4494, !4495, !4496, !4497}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4485, file: !4168, line: 64, baseType: !4488, size: 64)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!39, !4491, !4166}
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4485, file: !4168, line: 66, baseType: !4488, size: 64, offset: 64)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4485, file: !4168, line: 69, baseType: !666, size: 64, offset: 128)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4485, file: !4168, line: 70, baseType: !22, size: 32, offset: 192)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4485, file: !4168, line: 71, baseType: !7, size: 32, offset: 224)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4485, file: !4168, line: 74, baseType: !97, size: 128, offset: 256)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4485, file: !4168, line: 85, baseType: !4498, size: 64, offset: 384)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1389, file: !239, line: 1274, baseType: !274, size: 64, offset: 8576)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1389, file: !239, line: 1280, baseType: !274, size: 64, offset: 8640)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1389, file: !239, line: 1283, baseType: !22, size: 32, offset: 8704)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1389, file: !239, line: 1286, baseType: !2025, size: 32, offset: 8736)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1389, file: !239, line: 1289, baseType: !2540, size: 64, offset: 8768)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1389, file: !239, line: 1290, baseType: !642, size: 64, offset: 8832)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1389, file: !239, line: 1297, baseType: !513, size: 64, offset: 8896)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1389, file: !239, line: 1304, baseType: !4507, size: 64, offset: 8960)
!4507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4508, line: 49, size: 64, elements: !4509)
!4508 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4509 = !{!4510}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4507, file: !4508, line: 50, baseType: !4511, size: 64)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4508, line: 41, size: 512, align: 512, elements: !4513)
!4513 = !{!4514, !4515, !4520}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4512, file: !4508, line: 43, baseType: !59, size: 32)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4512, file: !4508, line: 45, baseType: !4516, size: 192, offset: 64)
!4516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4508, line: 29, size: 192, elements: !4517)
!4517 = !{!4518, !4519}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4516, file: !4508, line: 30, baseType: !97, size: 128)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4516, file: !4508, line: 32, baseType: !666, size: 64, offset: 128)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4512, file: !4508, line: 46, baseType: !666, size: 64, offset: 256)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1389, file: !239, line: 1305, baseType: !4507, size: 64, offset: 9024)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1389, file: !239, line: 1306, baseType: !411, size: 128, align: 64, offset: 9088)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1389, file: !239, line: 1307, baseType: !562, size: 256, offset: 9216)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1389, file: !239, line: 1309, baseType: !1040, size: 256, offset: 9472)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1389, file: !239, line: 1314, baseType: !22, size: 32, offset: 9728)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1389, file: !239, line: 1317, baseType: !59, size: 32, align: 512, offset: 10240)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1389, file: !239, line: 1318, baseType: !97, size: 128, offset: 10304)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1389, file: !239, line: 1320, baseType: !59, size: 32, offset: 10432)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1389, file: !239, line: 1321, baseType: !97, size: 128, offset: 10496)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1188, file: !239, line: 656, baseType: !1538, size: 64, offset: 512)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1188, file: !239, line: 659, baseType: !20, size: 64, offset: 576)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1188, file: !239, line: 663, baseType: !39, size: 64, offset: 640)
!4533 = !DIDerivedType(tag: DW_TAG_member, scope: !1188, file: !239, line: 671, baseType: !4534, size: 32, offset: 704)
!4534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1188, file: !239, line: 671, size: 32, elements: !4535)
!4535 = !{!4536, !4537}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4534, file: !239, line: 672, baseType: !2588, size: 32)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4534, file: !239, line: 673, baseType: !7, size: 32)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1188, file: !239, line: 675, baseType: !1261, size: 32, offset: 736)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1188, file: !239, line: 676, baseType: !41, size: 64, offset: 768)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1188, file: !239, line: 677, baseType: !1297, size: 128, offset: 832)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1188, file: !239, line: 678, baseType: !1297, size: 128, offset: 960)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1188, file: !239, line: 679, baseType: !1297, size: 128, offset: 1088)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1188, file: !239, line: 680, baseType: !59, size: 32, offset: 1216)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1188, file: !239, line: 681, baseType: !26, size: 16, offset: 1248)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1188, file: !239, line: 682, baseType: !83, size: 8, offset: 1264)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1188, file: !239, line: 683, baseType: !83, size: 8, offset: 1272)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1188, file: !239, line: 684, baseType: !4299, size: 64, offset: 1280)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1188, file: !239, line: 691, baseType: !39, size: 64, offset: 1344)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1188, file: !239, line: 692, baseType: !347, size: 320, offset: 1408)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1188, file: !239, line: 694, baseType: !39, size: 64, offset: 1728)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1188, file: !239, line: 695, baseType: !39, size: 64, offset: 1792)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1188, file: !239, line: 697, baseType: !493, size: 128, offset: 1856)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1188, file: !239, line: 698, baseType: !97, size: 128, offset: 1984)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1188, file: !239, line: 707, baseType: !97, size: 128, offset: 2112)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1188, file: !239, line: 708, baseType: !97, size: 128, offset: 2240)
!4556 = !DIDerivedType(tag: DW_TAG_member, scope: !1188, file: !239, line: 709, baseType: !4557, size: 128, offset: 2368)
!4557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1188, file: !239, line: 709, size: 128, elements: !4558)
!4558 = !{!4559, !4560}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4557, file: !239, line: 710, baseType: !642, size: 64)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4557, file: !239, line: 711, baseType: !411, size: 128, align: 64)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1188, file: !239, line: 713, baseType: !276, size: 64, offset: 2496)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1188, file: !239, line: 714, baseType: !276, size: 64, offset: 2560)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1188, file: !239, line: 715, baseType: !49, size: 32, offset: 2624)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1188, file: !239, line: 716, baseType: !49, size: 32, offset: 2656)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1188, file: !239, line: 717, baseType: !49, size: 32, offset: 2688)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1188, file: !239, line: 719, baseType: !49, size: 32, offset: 2720)
!4567 = !DIDerivedType(tag: DW_TAG_member, scope: !1188, file: !239, line: 721, baseType: !4568, size: 64, offset: 2752)
!4568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1188, file: !239, line: 721, size: 64, elements: !4569)
!4569 = !{!4570, !4696}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4568, file: !239, line: 722, baseType: !4571, size: 64)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4573)
!4573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !239, line: 1914, size: 2112, elements: !4574)
!4574 = !{!4575, !4576, !4580, !4584, !4588, !4589, !4590, !4596, !4609, !4613, !4617, !4618, !4622, !4623, !4627, !4632, !4633, !4637, !4641, !4647, !4648, !4652, !4653, !4659, !4663, !4664, !4669, !4673, !4677, !4681, !4685, !4686, !4692}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4573, file: !239, line: 1915, baseType: !1421, size: 64)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4573, file: !239, line: 1916, baseType: !4577, size: 64, offset: 64)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DISubroutineType(types: !4579)
!4579 = !{!41, !1026, !41, !22}
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4573, file: !239, line: 1917, baseType: !4581, size: 64, offset: 128)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!1339, !1026, !432, !35, !40}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4573, file: !239, line: 1918, baseType: !4585, size: 64, offset: 192)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{!1339, !1026, !16, !35, !40}
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4573, file: !239, line: 1919, baseType: !1959, size: 64, offset: 256)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4573, file: !239, line: 1920, baseType: !1959, size: 64, offset: 320)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4573, file: !239, line: 1921, baseType: !4591, size: 64, offset: 384)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{!22, !1962, !4594, !7}
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !239, line: 53, flags: DIFlagFwdDecl)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4573, file: !239, line: 1923, baseType: !4597, size: 64, offset: 448)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!22, !1026, !4600}
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !239, line: 1858, size: 128, elements: !4602)
!4602 = !{!4603, !4608}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4601, file: !239, line: 1859, baseType: !4604, size: 64)
!4604 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !239, line: 1855, baseType: !4605)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = !DISubroutineType(types: !4607)
!4607 = !{!421, !4600, !16, !22, !41, !310, !7}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4601, file: !239, line: 1860, baseType: !41, size: 64, offset: 64)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4573, file: !239, line: 1924, baseType: !4610, size: 64, offset: 512)
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!2195, !1026, !2197}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4573, file: !239, line: 1925, baseType: !4614, size: 64, offset: 576)
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4615 = !DISubroutineType(types: !4616)
!4616 = !{!666, !1026, !7, !39}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4573, file: !239, line: 1926, baseType: !4614, size: 64, offset: 640)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4573, file: !239, line: 1927, baseType: !4619, size: 64, offset: 704)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!22, !1026, !1668}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4573, file: !239, line: 1928, baseType: !39, size: 64, offset: 768)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4573, file: !239, line: 1929, baseType: !4624, size: 64, offset: 832)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{!22, !1187, !1026}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4573, file: !239, line: 1930, baseType: !4628, size: 64, offset: 896)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{!22, !1026, !4631}
!4631 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !239, line: 1061, baseType: !20)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4573, file: !239, line: 1931, baseType: !4624, size: 64, offset: 960)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4573, file: !239, line: 1932, baseType: !4634, size: 64, offset: 1024)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!22, !1026, !41, !41, !22}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4573, file: !239, line: 1933, baseType: !4638, size: 64, offset: 1088)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!22, !22, !1026, !22}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4573, file: !239, line: 1934, baseType: !4642, size: 64, offset: 1152)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = !DISubroutineType(types: !4644)
!4644 = !{!22, !1026, !22, !4645}
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !239, line: 1063, flags: DIFlagFwdDecl)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4573, file: !239, line: 1935, baseType: !1023, size: 64, offset: 1216)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4573, file: !239, line: 1936, baseType: !4649, size: 64, offset: 1280)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{!22, !22}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4573, file: !239, line: 1937, baseType: !4642, size: 64, offset: 1344)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4573, file: !239, line: 1938, baseType: !4654, size: 64, offset: 1408)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{!1339, !4657, !1026, !40, !35, !7}
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !705, line: 59, flags: DIFlagFwdDecl)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4573, file: !239, line: 1939, baseType: !4660, size: 64, offset: 1472)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!1339, !1026, !40, !4657, !35, !7}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4573, file: !239, line: 1940, baseType: !2015, size: 64, offset: 1536)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4573, file: !239, line: 1941, baseType: !4665, size: 64, offset: 1600)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!22, !1026, !22, !4668, !1936}
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4573, file: !239, line: 1942, baseType: !4670, size: 64, offset: 1664)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!666, !1026, !22, !41, !41}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4573, file: !239, line: 1944, baseType: !4674, size: 64, offset: 1728)
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4675, size: 64)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{null, !2128, !1026}
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4573, file: !239, line: 1948, baseType: !4678, size: 64, offset: 1792)
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = !DISubroutineType(types: !4680)
!4680 = !{!1339, !1026, !41, !1026, !41, !35, !7}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4573, file: !239, line: 1950, baseType: !4682, size: 64, offset: 1856)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!41, !1026, !41, !1026, !41, !41, !7}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4573, file: !239, line: 1953, baseType: !4634, size: 64, offset: 1920)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4573, file: !239, line: 1954, baseType: !4687, size: 64, offset: 1984)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!22, !4690, !7}
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !239, line: 1911, flags: DIFlagFwdDecl)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4573, file: !239, line: 1955, baseType: !4693, size: 64, offset: 2048)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = !DISubroutineType(types: !4695)
!4695 = !{!22, !4690, !4594, !7}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4568, file: !239, line: 723, baseType: !4057, size: 64)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1188, file: !239, line: 725, baseType: !4698, size: 64, offset: 2816)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !239, line: 725, flags: DIFlagFwdDecl)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1188, file: !239, line: 726, baseType: !1539, size: 1536, align: 64, offset: 2880)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1188, file: !239, line: 727, baseType: !97, size: 128, offset: 4416)
!4702 = !DIDerivedType(tag: DW_TAG_member, scope: !1188, file: !239, line: 728, baseType: !4703, size: 64, offset: 4544)
!4703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1188, file: !239, line: 728, size: 64, elements: !4704)
!4704 = !{!4705, !4706, !4709, !4710}
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4703, file: !239, line: 729, baseType: !4657, size: 64)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4703, file: !239, line: 730, baseType: !4707, size: 64)
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !239, line: 730, flags: DIFlagFwdDecl)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4703, file: !239, line: 731, baseType: !432, size: 64)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4703, file: !239, line: 732, baseType: !7, size: 32)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1188, file: !239, line: 735, baseType: !378, size: 32, offset: 4608)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1188, file: !239, line: 738, baseType: !378, size: 32, offset: 4640)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1188, file: !239, line: 739, baseType: !4407, size: 64, offset: 4672)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1188, file: !239, line: 750, baseType: !20, size: 64, offset: 4736)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1153, file: !1154, line: 91, baseType: !4716, size: 256, offset: 448)
!4716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 256, elements: !4411)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1153, file: !1154, line: 94, baseType: !4718, size: 64, offset: 704)
!4718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4719, line: 25, size: 64, elements: !4720)
!4719 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4720 = !{!4721}
!4721 = !DIDerivedType(tag: DW_TAG_member, scope: !4718, file: !4719, line: 26, baseType: !4722, size: 64)
!4722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4718, file: !4719, line: 26, size: 64, elements: !4723)
!4723 = !{!4724, !4725}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4722, file: !4719, line: 28, baseType: !311, size: 64, align: 64)
!4725 = !DIDerivedType(tag: DW_TAG_member, scope: !4722, file: !4719, line: 30, baseType: !4726, size: 64)
!4726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4722, file: !4719, line: 30, size: 64, elements: !4727)
!4727 = !{!4728, !4729}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4726, file: !4719, line: 31, baseType: !59, size: 32)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4726, file: !4719, line: 32, baseType: !22, size: 32, offset: 32)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1153, file: !1154, line: 95, baseType: !4426, size: 64, offset: 768)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1153, file: !1154, line: 96, baseType: !1388, size: 64, offset: 832)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1153, file: !1154, line: 97, baseType: !39, size: 64, offset: 896)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1153, file: !1154, line: 98, baseType: !20, size: 64, offset: 960)
!4734 = !DIDerivedType(tag: DW_TAG_member, scope: !1153, file: !1154, line: 100, baseType: !4735, size: 128, offset: 1024)
!4735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1153, file: !1154, line: 100, size: 128, elements: !4736)
!4736 = !{!4737, !4738}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4735, file: !1154, line: 101, baseType: !97, size: 128)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4735, file: !1154, line: 102, baseType: !2206, size: 64)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1153, file: !1154, line: 104, baseType: !97, size: 128, offset: 1152)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1153, file: !1154, line: 105, baseType: !97, size: 128, offset: 1280)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1153, file: !1154, line: 113, baseType: !4742, size: 128, offset: 1408)
!4742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1153, file: !1154, line: 109, size: 128, elements: !4743)
!4743 = !{!4744, !4745, !4746}
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4742, file: !1154, line: 110, baseType: !493, size: 128)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4742, file: !1154, line: 111, baseType: !1163, size: 128)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4742, file: !1154, line: 112, baseType: !411, size: 128, align: 64)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1148, file: !1149, line: 72, baseType: !1388, size: 64, offset: 64)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1148, file: !1149, line: 73, baseType: !22, size: 32, offset: 128)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1148, file: !1149, line: 74, baseType: !1226, size: 64, offset: 192)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1143, file: !1144, line: 10, baseType: !1152, size: 64, offset: 64)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1027, file: !239, line: 1015, baseType: !1187, size: 64, offset: 1344)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1027, file: !239, line: 1016, baseType: !4571, size: 64, offset: 1408)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1027, file: !239, line: 1018, baseType: !310, size: 64, offset: 1472)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1027, file: !239, line: 1020, baseType: !20, size: 64, offset: 1536)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1027, file: !239, line: 1023, baseType: !20, size: 64, offset: 1600)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1027, file: !239, line: 1027, baseType: !2756, size: 64, offset: 1664)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1027, file: !239, line: 1029, baseType: !1538, size: 64, offset: 1728)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1027, file: !239, line: 1030, baseType: !2025, size: 32, offset: 1792)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1027, file: !239, line: 1031, baseType: !2025, size: 32, offset: 1824)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1002, file: !131, line: 756, baseType: !39, size: 64, offset: 704)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1002, file: !131, line: 757, baseType: !39, size: 64, offset: 768)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1002, file: !131, line: 760, baseType: !39, size: 64, offset: 832)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1002, file: !131, line: 761, baseType: !39, size: 64, offset: 896)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1002, file: !131, line: 763, baseType: !39, size: 64, offset: 960)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1002, file: !131, line: 764, baseType: !4766, size: 64, offset: 1024)
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4767, size: 64)
!4767 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1683, line: 299, baseType: !4768)
!4768 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1683, line: 299, size: 64, elements: !4769)
!4769 = !{!4770}
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !4768, file: !1683, line: 299, baseType: !4771, size: 64)
!4771 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1688, line: 18, baseType: !39)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1002, file: !131, line: 773, baseType: !49, size: 32, offset: 1088)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1002, file: !131, line: 785, baseType: !49, size: 32, offset: 1120)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1002, file: !131, line: 795, baseType: !4775, size: 64, offset: 1152)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !131, line: 726, size: 128, elements: !4777)
!4777 = !{!4778, !4779}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4776, file: !131, line: 727, baseType: !310, size: 64)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !4776, file: !131, line: 728, baseType: !22, size: 32, offset: 64)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1002, file: !131, line: 801, baseType: !39, size: 64, offset: 1216)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1002, file: !131, line: 804, baseType: !274, size: 64, offset: 1280)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1002, file: !131, line: 806, baseType: !22, size: 32, offset: 1344)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1002, file: !131, line: 808, baseType: !59, size: 32, offset: 1376)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1002, file: !131, line: 823, baseType: !347, size: 320, offset: 1408)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1002, file: !131, line: 825, baseType: !97, size: 128, offset: 1728)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1002, file: !131, line: 845, baseType: !22, size: 32, offset: 1856)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1002, file: !131, line: 849, baseType: !39, size: 64, offset: 1920)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1002, file: !131, line: 850, baseType: !39, size: 64, offset: 1984)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1002, file: !131, line: 852, baseType: !39, size: 64, offset: 2048)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1002, file: !131, line: 853, baseType: !39, size: 64, offset: 2112)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1002, file: !131, line: 854, baseType: !276, size: 64, offset: 2176)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1002, file: !131, line: 855, baseType: !39, size: 64, offset: 2240)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1002, file: !131, line: 856, baseType: !39, size: 64, offset: 2304)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1002, file: !131, line: 857, baseType: !39, size: 64, offset: 2368)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1002, file: !131, line: 858, baseType: !39, size: 64, offset: 2432)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1002, file: !131, line: 865, baseType: !875, size: 32, offset: 2496)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1002, file: !131, line: 867, baseType: !59, size: 32, offset: 2528)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1002, file: !131, line: 869, baseType: !39, size: 64, offset: 2560)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1002, file: !131, line: 869, baseType: !39, size: 64, offset: 2624)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1002, file: !131, line: 869, baseType: !39, size: 64, offset: 2688)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1002, file: !131, line: 869, baseType: !39, size: 64, offset: 2752)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1002, file: !131, line: 870, baseType: !39, size: 64, offset: 2816)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1002, file: !131, line: 870, baseType: !39, size: 64, offset: 2880)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1002, file: !131, line: 870, baseType: !39, size: 64, offset: 2944)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1002, file: !131, line: 871, baseType: !39, size: 64, offset: 3008)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1002, file: !131, line: 871, baseType: !39, size: 64, offset: 3072)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1002, file: !131, line: 871, baseType: !39, size: 64, offset: 3136)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1002, file: !131, line: 871, baseType: !39, size: 64, offset: 3200)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1002, file: !131, line: 873, baseType: !4810, size: 3328, offset: 3264)
!4810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 3328, elements: !4811)
!4811 = !{!4812}
!4812 = !DISubrange(count: 52)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1002, file: !131, line: 875, baseType: !4814, size: 1280, offset: 6592)
!4814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 1280, elements: !442)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1002, file: !131, line: 877, baseType: !4816, size: 64, offset: 7872)
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4817, size: 64)
!4817 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !131, line: 877, flags: DIFlagFwdDecl)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1002, file: !131, line: 880, baseType: !4819, size: 1088, offset: 7936)
!4819 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !4820, line: 72, baseType: !4821)
!4820 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!4821 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4820, line: 23, size: 1088, elements: !4822)
!4822 = !{!4823, !4824, !4825, !4826, !4827, !4830, !4831, !4832, !4833, !4858, !4859, !4860}
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !4821, file: !4820, line: 28, baseType: !310, size: 64)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !4821, file: !4820, line: 38, baseType: !276, size: 64, offset: 64)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !4821, file: !4820, line: 40, baseType: !39, size: 64, offset: 128)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !4821, file: !4820, line: 43, baseType: !347, size: 320, offset: 192)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !4821, file: !4820, line: 44, baseType: !4828, size: 64, offset: 512)
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !4820, line: 44, flags: DIFlagFwdDecl)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4821, file: !4820, line: 48, baseType: !39, size: 64, offset: 576)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4821, file: !4820, line: 59, baseType: !1040, size: 256, offset: 640)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !4821, file: !4820, line: 60, baseType: !20, size: 64, offset: 896)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !4821, file: !4820, line: 61, baseType: !4834, size: 64, offset: 960)
!4834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4835, size: 64)
!4835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4836)
!4836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !4837, line: 13, size: 1216, elements: !4838)
!4837 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!4838 = !{!4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857}
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4836, file: !4837, line: 14, baseType: !20, size: 64)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4836, file: !4837, line: 15, baseType: !39, size: 64, offset: 64)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !4836, file: !4837, line: 17, baseType: !39, size: 64, offset: 128)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !4836, file: !4837, line: 17, baseType: !39, size: 64, offset: 192)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !4836, file: !4837, line: 18, baseType: !39, size: 64, offset: 256)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !4836, file: !4837, line: 18, baseType: !39, size: 64, offset: 320)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !4836, file: !4837, line: 19, baseType: !2064, size: 64, offset: 384)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !4836, file: !4837, line: 21, baseType: !666, size: 64, offset: 448)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !4836, file: !4837, line: 23, baseType: !666, size: 64, offset: 512)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !4836, file: !4837, line: 24, baseType: !666, size: 64, offset: 576)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !4836, file: !4837, line: 25, baseType: !666, size: 64, offset: 640)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !4836, file: !4837, line: 26, baseType: !666, size: 64, offset: 704)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !4836, file: !4837, line: 27, baseType: !666, size: 64, offset: 768)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !4836, file: !4837, line: 28, baseType: !666, size: 64, offset: 832)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !4836, file: !4837, line: 29, baseType: !666, size: 64, offset: 896)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !4836, file: !4837, line: 30, baseType: !666, size: 64, offset: 960)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !4836, file: !4837, line: 31, baseType: !666, size: 64, offset: 1024)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !4836, file: !4837, line: 32, baseType: !666, size: 64, offset: 1088)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !4836, file: !4837, line: 33, baseType: !666, size: 64, offset: 1152)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !4821, file: !4820, line: 63, baseType: !49, size: 32, offset: 1024)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !4821, file: !4820, line: 69, baseType: !93, size: 16, offset: 1056)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !4821, file: !4820, line: 70, baseType: !2384, size: 16, offset: 1072)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1002, file: !131, line: 882, baseType: !39, size: 64, offset: 9024)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1002, file: !131, line: 885, baseType: !59, size: 32, offset: 9088)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1002, file: !131, line: 886, baseType: !4864, size: 64, offset: 9152)
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !131, line: 732, flags: DIFlagFwdDecl)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1002, file: !131, line: 901, baseType: !513, size: 64, offset: 9216)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1002, file: !131, line: 904, baseType: !1026, size: 64, offset: 9280)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1002, file: !131, line: 906, baseType: !4869, size: 64, offset: 9344)
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !131, line: 906, flags: DIFlagFwdDecl)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1002, file: !131, line: 930, baseType: !49, size: 32, offset: 9408)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1002, file: !131, line: 933, baseType: !49, size: 32, offset: 9440)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1002, file: !131, line: 935, baseType: !4874, size: 64, offset: 9472)
!4874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !256, line: 103, size: 64, elements: !4875)
!4875 = !{!4876}
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !4874, file: !256, line: 104, baseType: !4877, size: 64)
!4877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4878, size: 64)
!4878 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !256, line: 101, flags: DIFlagFwdDecl)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1002, file: !131, line: 940, baseType: !274, size: 64, offset: 9536)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1002, file: !131, line: 942, baseType: !562, size: 256, offset: 9600)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !999, file: !131, line: 986, baseType: !4882, offset: 10240)
!4882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, elements: !678)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !704, file: !705, line: 882, baseType: !998, size: 64, offset: 9792)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !704, file: !705, line: 884, baseType: !22, size: 32, offset: 9856)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !704, file: !705, line: 885, baseType: !22, size: 32, offset: 9888)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !704, file: !705, line: 886, baseType: !22, size: 32, offset: 9920)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !704, file: !705, line: 888, baseType: !22, size: 32, offset: 9952)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !704, file: !705, line: 890, baseType: !39, size: 64, offset: 9984)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !704, file: !705, line: 893, baseType: !7, size: 32, offset: 10048)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !704, file: !705, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !704, file: !705, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !704, file: !705, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !704, file: !705, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !704, file: !705, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !704, file: !705, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !704, file: !705, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !704, file: !705, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !704, file: !705, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !704, file: !705, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !704, file: !705, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !704, file: !705, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !704, file: !705, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !704, file: !705, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !704, file: !705, line: 969, baseType: !39, size: 64, offset: 10176)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !704, file: !705, line: 971, baseType: !4906, size: 448, offset: 10240)
!4906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !250, line: 25, size: 448, elements: !4907)
!4907 = !{!4908, !4909, !4914}
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !4906, file: !250, line: 26, baseType: !39, size: 64)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4906, file: !250, line: 27, baseType: !4910, size: 64, offset: 64)
!4910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4911, size: 64)
!4911 = !DISubroutineType(types: !4912)
!4912 = !{!666, !4913}
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4906, size: 64)
!4914 = !DIDerivedType(tag: DW_TAG_member, scope: !4906, file: !250, line: 28, baseType: !4915, size: 320, offset: 128)
!4915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4906, file: !250, line: 28, size: 320, elements: !4916)
!4916 = !{!4917, !4927, !4952}
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !4915, file: !250, line: 37, baseType: !4918, size: 320)
!4918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4915, file: !250, line: 30, size: 320, elements: !4919)
!4919 = !{!4920, !4922, !4923, !4924, !4925, !4926}
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !4918, file: !250, line: 31, baseType: !4921, size: 64)
!4921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4918, file: !250, line: 32, baseType: !377, size: 32, offset: 64)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4918, file: !250, line: 33, baseType: !377, size: 32, offset: 96)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !4918, file: !250, line: 34, baseType: !377, size: 32, offset: 128)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4918, file: !250, line: 35, baseType: !310, size: 64, offset: 192)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !4918, file: !250, line: 36, baseType: !4921, size: 64, offset: 256)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !4915, file: !250, line: 47, baseType: !4928, size: 192)
!4928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4915, file: !250, line: 39, size: 192, elements: !4929)
!4929 = !{!4930, !4931, !4932, !4951}
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4928, file: !250, line: 40, baseType: !867, size: 32)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4928, file: !250, line: 41, baseType: !249, size: 32, offset: 32)
!4932 = !DIDerivedType(tag: DW_TAG_member, scope: !4928, file: !250, line: 42, baseType: !4933, size: 64, offset: 64)
!4933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4928, file: !250, line: 42, size: 64, elements: !4934)
!4934 = !{!4935, !4943}
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !4933, file: !250, line: 43, baseType: !4936, size: 64)
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4937, size: 64)
!4937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !4938, line: 7, size: 128, elements: !4939)
!4938 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!4939 = !{!4940, !4942}
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4937, file: !4938, line: 8, baseType: !4941, size: 64)
!4941 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !37, line: 93, baseType: !43)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4937, file: !4938, line: 9, baseType: !43, size: 64, offset: 64)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !4933, file: !250, line: 44, baseType: !4944, size: 64)
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4945, size: 64)
!4945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !4946, line: 7, size: 64, elements: !4947)
!4946 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!4947 = !{!4948, !4950}
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4945, file: !4946, line: 8, baseType: !4949, size: 32)
!4949 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !4946, line: 5, baseType: !332)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4945, file: !4946, line: 9, baseType: !332, size: 32, offset: 32)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4928, file: !250, line: 46, baseType: !310, size: 64, offset: 128)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4915, file: !250, line: 55, baseType: !4953, size: 256)
!4953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4915, file: !250, line: 49, size: 256, elements: !4954)
!4954 = !{!4955, !4963, !4964, !4965, !4966}
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !4953, file: !250, line: 50, baseType: !4956, size: 64)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !4958, line: 36, size: 64, elements: !4959)
!4958 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!4959 = !{!4960, !4961, !4962}
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !4957, file: !4958, line: 37, baseType: !22, size: 32)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4957, file: !4958, line: 38, baseType: !382, size: 16, offset: 32)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !4957, file: !4958, line: 39, baseType: !382, size: 16, offset: 48)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !4953, file: !250, line: 51, baseType: !22, size: 32, offset: 64)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !4953, file: !250, line: 52, baseType: !22, size: 32, offset: 96)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4953, file: !250, line: 53, baseType: !39, size: 64, offset: 128)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4953, file: !250, line: 54, baseType: !39, size: 64, offset: 192)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !704, file: !705, line: 973, baseType: !4968, size: 32, offset: 10688)
!4968 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !25, line: 27, baseType: !4969)
!4969 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !37, line: 28, baseType: !22)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !704, file: !705, line: 974, baseType: !4968, size: 32, offset: 10720)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !704, file: !705, line: 978, baseType: !39, size: 64, offset: 10752)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !704, file: !705, line: 987, baseType: !703, size: 64, offset: 10816)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !704, file: !705, line: 990, baseType: !703, size: 64, offset: 10880)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !704, file: !705, line: 995, baseType: !97, size: 128, offset: 10944)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !704, file: !705, line: 996, baseType: !97, size: 128, offset: 11072)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !704, file: !705, line: 997, baseType: !703, size: 64, offset: 11200)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !704, file: !705, line: 1005, baseType: !97, size: 128, offset: 11264)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !704, file: !705, line: 1006, baseType: !97, size: 128, offset: 11392)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !704, file: !705, line: 1009, baseType: !1076, size: 64, offset: 11520)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !704, file: !705, line: 1010, baseType: !4981, size: 512, offset: 11584)
!4981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !493, size: 512, elements: !442)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !704, file: !705, line: 1011, baseType: !97, size: 128, offset: 12096)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !704, file: !705, line: 1012, baseType: !97, size: 128, offset: 12224)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !704, file: !705, line: 1014, baseType: !600, size: 64, offset: 12352)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !704, file: !705, line: 1017, baseType: !2377, size: 64, offset: 12416)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !704, file: !705, line: 1020, baseType: !2377, size: 64, offset: 12480)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !704, file: !705, line: 1023, baseType: !20, size: 64, offset: 12544)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !704, file: !705, line: 1025, baseType: !310, size: 64, offset: 12608)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !704, file: !705, line: 1026, baseType: !310, size: 64, offset: 12672)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !704, file: !705, line: 1031, baseType: !310, size: 64, offset: 12736)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !704, file: !705, line: 1032, baseType: !3832, size: 192, offset: 12800)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !704, file: !705, line: 1041, baseType: !39, size: 64, offset: 12992)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !704, file: !705, line: 1042, baseType: !39, size: 64, offset: 13056)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !704, file: !705, line: 1045, baseType: !310, size: 64, offset: 13120)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !704, file: !705, line: 1048, baseType: !310, size: 64, offset: 13184)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !704, file: !705, line: 1051, baseType: !39, size: 64, offset: 13248)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !704, file: !705, line: 1052, baseType: !39, size: 64, offset: 13312)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !704, file: !705, line: 1055, baseType: !4999, size: 640, offset: 13376)
!4999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !5000, line: 132, size: 640, elements: !5001)
!5000 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!5001 = !{!5002, !5008, !5009}
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !4999, file: !5000, line: 133, baseType: !5003, size: 576)
!5003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5004, size: 576, elements: !1072)
!5004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !5000, line: 117, size: 192, elements: !5005)
!5005 = !{!5006, !5007}
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !5004, file: !5000, line: 118, baseType: !310, size: 64)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !5004, file: !5000, line: 119, baseType: !881, size: 128, offset: 64)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !4999, file: !5000, line: 134, baseType: !7, size: 32, offset: 576)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !4999, file: !5000, line: 135, baseType: !7, size: 32, offset: 608)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !704, file: !705, line: 1058, baseType: !5011, size: 448, offset: 14016)
!5011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !5000, line: 144, size: 448, elements: !5012)
!5012 = !{!5013, !5014, !5015}
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5011, file: !5000, line: 145, baseType: !411, size: 128, align: 64)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5011, file: !5000, line: 146, baseType: !1040, size: 256, offset: 128)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !5011, file: !5000, line: 147, baseType: !7, size: 32, offset: 384)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !704, file: !705, line: 1064, baseType: !268, size: 64, offset: 14464)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !704, file: !705, line: 1067, baseType: !268, size: 64, offset: 14528)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !704, file: !705, line: 1070, baseType: !268, size: 64, offset: 14592)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !704, file: !705, line: 1074, baseType: !319, size: 64, offset: 14656)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !704, file: !705, line: 1084, baseType: !5021, size: 128, offset: 14720)
!5021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, elements: !4420)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !704, file: !705, line: 1086, baseType: !5023, size: 64, offset: 14848)
!5023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5024, size: 64)
!5024 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !705, line: 55, flags: DIFlagFwdDecl)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !704, file: !705, line: 1089, baseType: !5026, size: 64, offset: 14912)
!5026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !5027, line: 12, size: 64, elements: !5028)
!5027 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!5028 = !{!5029}
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !5026, file: !5027, line: 13, baseType: !5030, size: 64)
!5030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5031, size: 64)
!5031 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !5027, line: 8, flags: DIFlagFwdDecl)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !704, file: !705, line: 1090, baseType: !5033, size: 128, offset: 14976)
!5033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !5034, line: 13, size: 128, elements: !5035)
!5034 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!5035 = !{!5036}
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !5033, file: !5034, line: 14, baseType: !97, size: 128)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !704, file: !705, line: 1097, baseType: !5038, size: 64, offset: 15104)
!5038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5039, size: 64)
!5039 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !705, line: 50, flags: DIFlagFwdDecl)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !704, file: !705, line: 1100, baseType: !5041, size: 64, offset: 15168)
!5041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5042, size: 64)
!5042 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !705, line: 1100, flags: DIFlagFwdDecl)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !704, file: !705, line: 1103, baseType: !5044, size: 64, offset: 15232)
!5044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5045, size: 64)
!5045 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !705, line: 53, flags: DIFlagFwdDecl)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !704, file: !705, line: 1107, baseType: !5047, size: 64, offset: 15296)
!5047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5048, size: 64)
!5048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !5049, line: 31, size: 576, elements: !5050)
!5049 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!5050 = !{!5051, !5052, !5055, !5058, !5061, !5062, !5065, !5068, !5069}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5048, file: !5049, line: 32, baseType: !324, size: 32)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !5048, file: !5049, line: 33, baseType: !5053, size: 64, offset: 64)
!5053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5054, size: 64)
!5054 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !5049, line: 9, flags: DIFlagFwdDecl)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !5048, file: !5049, line: 34, baseType: !5056, size: 64, offset: 128)
!5056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5057, size: 64)
!5057 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !5049, line: 10, flags: DIFlagFwdDecl)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !5048, file: !5049, line: 35, baseType: !5059, size: 64, offset: 192)
!5059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5060, size: 64)
!5060 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !5049, line: 8, flags: DIFlagFwdDecl)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !5048, file: !5049, line: 36, baseType: !1093, size: 64, offset: 256)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !5048, file: !5049, line: 37, baseType: !5063, size: 64, offset: 320)
!5063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5064, size: 64)
!5064 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !321, line: 34, flags: DIFlagFwdDecl)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !5048, file: !5049, line: 38, baseType: !5066, size: 64, offset: 384)
!5066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5067, size: 64)
!5067 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !5049, line: 38, flags: DIFlagFwdDecl)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !5048, file: !5049, line: 39, baseType: !5066, size: 64, offset: 448)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !5048, file: !5049, line: 40, baseType: !5070, size: 64, offset: 512)
!5070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5071, size: 64)
!5071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !5072, line: 771, size: 384, elements: !5073)
!5072 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!5073 = !{!5074, !5075, !5076, !5077}
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5071, file: !5072, line: 772, baseType: !546, size: 192)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !5071, file: !5072, line: 773, baseType: !513, size: 64, offset: 192)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !5071, file: !5072, line: 774, baseType: !651, size: 64, offset: 256)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !5071, file: !5072, line: 775, baseType: !3902, size: 64, offset: 320)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !704, file: !705, line: 1110, baseType: !5079, size: 64, offset: 15360)
!5079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5080, size: 64)
!5080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !5081, line: 93, size: 8768, elements: !5082)
!5081 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!5082 = !{!5083, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5101, !5102, !5103, !5104, !5105, !5106, !5107, !5119, !5120, !5121, !5122, !5123, !5124, !5125, !5131, !5140, !5141, !5143, !5144, !5145, !5148, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5186, !5187, !5194, !5204, !5266, !5267, !5270, !5271, !5272, !5273, !5274, !5275}
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !5080, file: !5081, line: 94, baseType: !324, size: 32)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !5080, file: !5081, line: 95, baseType: !49, size: 32, offset: 32)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5080, file: !5081, line: 96, baseType: !22, size: 32, offset: 64)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !5080, file: !5081, line: 97, baseType: !22, size: 32, offset: 96)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !5080, file: !5081, line: 98, baseType: !97, size: 128, offset: 128)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !5080, file: !5081, line: 100, baseType: !54, size: 192, offset: 256)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !5080, file: !5081, line: 103, baseType: !703, size: 64, offset: 448)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !5080, file: !5081, line: 106, baseType: !5091, size: 192, offset: 512)
!5091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !5092, line: 32, size: 192, elements: !5093)
!5092 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!5093 = !{!5094, !5095}
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5091, file: !5092, line: 33, baseType: !97, size: 128)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5091, file: !5092, line: 34, baseType: !5096, size: 64, offset: 128)
!5096 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !5097, line: 25, baseType: !5098)
!5097 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!5098 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5097, line: 23, size: 64, elements: !5099)
!5099 = !{!5100}
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5098, file: !5097, line: 24, baseType: !949, size: 64)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !5080, file: !5081, line: 109, baseType: !642, size: 64, offset: 704)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !5080, file: !5081, line: 112, baseType: !22, size: 32, offset: 768)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !5080, file: !5081, line: 114, baseType: !22, size: 32, offset: 800)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !5080, file: !5081, line: 115, baseType: !703, size: 64, offset: 832)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !5080, file: !5081, line: 118, baseType: !22, size: 32, offset: 896)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5080, file: !5081, line: 119, baseType: !7, size: 32, offset: 928)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !5080, file: !5081, line: 121, baseType: !5108, size: 64, offset: 960)
!5108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5109, size: 64)
!5109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !5081, line: 80, size: 448, elements: !5110)
!5110 = !{!5111, !5112, !5118}
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5109, file: !5081, line: 81, baseType: !49, size: 32)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5109, file: !5081, line: 82, baseType: !5113, size: 128, offset: 64)
!5113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !5081, line: 75, size: 128, elements: !5114)
!5114 = !{!5115, !5116}
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5113, file: !5081, line: 76, baseType: !703, size: 64)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5113, file: !5081, line: 77, baseType: !5117, size: 64, offset: 64)
!5117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5113, size: 64)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5109, file: !5081, line: 83, baseType: !601, size: 256, offset: 192)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !5080, file: !5081, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !5080, file: !5081, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !5080, file: !5081, line: 138, baseType: !7, size: 32, offset: 1056)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !5080, file: !5081, line: 139, baseType: !97, size: 128, offset: 1088)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !5080, file: !5081, line: 142, baseType: !820, size: 512, offset: 1216)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !5080, file: !5081, line: 143, baseType: !828, size: 64, offset: 1728)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !5080, file: !5081, line: 150, baseType: !5126, size: 256, offset: 1792)
!5126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5127, size: 256, elements: !2367)
!5127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !5081, line: 38, size: 128, elements: !5128)
!5128 = !{!5129, !5130}
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5127, file: !5081, line: 39, baseType: !310, size: 64)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5127, file: !5081, line: 40, baseType: !310, size: 64, offset: 64)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !5080, file: !5081, line: 156, baseType: !5132, size: 192, offset: 2048)
!5132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !5081, line: 66, size: 192, elements: !5133)
!5133 = !{!5134}
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5132, file: !5081, line: 67, baseType: !5135, size: 192)
!5135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !5081, line: 47, size: 192, elements: !5136)
!5136 = !{!5137, !5138, !5139}
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5135, file: !5081, line: 48, baseType: !276, size: 64)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5135, file: !5081, line: 49, baseType: !276, size: 64, offset: 64)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5135, file: !5081, line: 50, baseType: !276, size: 64, offset: 128)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !5080, file: !5081, line: 160, baseType: !4999, size: 640, offset: 2240)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5080, file: !5081, line: 163, baseType: !5142, size: 256, offset: 2880)
!5142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1076, size: 256, elements: !442)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !5080, file: !5081, line: 169, baseType: !1076, size: 64, offset: 3136)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !5080, file: !5081, line: 172, baseType: !22, size: 32, offset: 3200)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5080, file: !5081, line: 174, baseType: !5146, size: 64, offset: 3264)
!5146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5147, size: 64)
!5147 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !5081, line: 174, flags: DIFlagFwdDecl)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !5080, file: !5081, line: 185, baseType: !5149, size: 64, offset: 3328)
!5149 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !871, line: 860, baseType: !5150)
!5150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !871, line: 853, size: 64, elements: !5151)
!5151 = !{!5152, !5153}
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5150, file: !871, line: 858, baseType: !1158, size: 32)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5150, file: !871, line: 859, baseType: !59, size: 32, offset: 32)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5080, file: !5081, line: 186, baseType: !310, size: 64, offset: 3392)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5080, file: !5081, line: 186, baseType: !310, size: 64, offset: 3456)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !5080, file: !5081, line: 186, baseType: !310, size: 64, offset: 3520)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !5080, file: !5081, line: 186, baseType: !310, size: 64, offset: 3584)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !5080, file: !5081, line: 187, baseType: !310, size: 64, offset: 3648)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !5080, file: !5081, line: 188, baseType: !310, size: 64, offset: 3712)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !5080, file: !5081, line: 189, baseType: !3832, size: 192, offset: 3776)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5080, file: !5081, line: 190, baseType: !39, size: 64, offset: 3968)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5080, file: !5081, line: 190, baseType: !39, size: 64, offset: 4032)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !5080, file: !5081, line: 190, baseType: !39, size: 64, offset: 4096)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !5080, file: !5081, line: 190, baseType: !39, size: 64, offset: 4160)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !5080, file: !5081, line: 191, baseType: !39, size: 64, offset: 4224)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !5080, file: !5081, line: 191, baseType: !39, size: 64, offset: 4288)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !5080, file: !5081, line: 191, baseType: !39, size: 64, offset: 4352)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !5080, file: !5081, line: 191, baseType: !39, size: 64, offset: 4416)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !5080, file: !5081, line: 192, baseType: !39, size: 64, offset: 4480)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !5080, file: !5081, line: 192, baseType: !39, size: 64, offset: 4544)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !5080, file: !5081, line: 192, baseType: !39, size: 64, offset: 4608)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !5080, file: !5081, line: 192, baseType: !39, size: 64, offset: 4672)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !5080, file: !5081, line: 193, baseType: !39, size: 64, offset: 4736)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !5080, file: !5081, line: 193, baseType: !39, size: 64, offset: 4800)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !5080, file: !5081, line: 194, baseType: !5176, size: 448, offset: 4864)
!5176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5177, line: 12, size: 448, elements: !5178)
!5177 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5178 = !{!5179, !5180, !5181, !5182, !5183, !5184, !5185}
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5176, file: !5177, line: 15, baseType: !310, size: 64)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5176, file: !5177, line: 17, baseType: !310, size: 64, offset: 64)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5176, file: !5177, line: 19, baseType: !310, size: 64, offset: 128)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5176, file: !5177, line: 21, baseType: !310, size: 64, offset: 192)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5176, file: !5177, line: 29, baseType: !310, size: 64, offset: 256)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5176, file: !5177, line: 35, baseType: !310, size: 64, offset: 320)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5176, file: !5177, line: 44, baseType: !310, size: 64, offset: 384)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !5080, file: !5081, line: 202, baseType: !312, size: 64, offset: 5312)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !5080, file: !5081, line: 213, baseType: !5188, size: 2048, offset: 5376)
!5188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5189, size: 2048, elements: !4420)
!5189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5190, line: 43, size: 128, elements: !5191)
!5190 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5191 = !{!5192, !5193}
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5189, file: !5190, line: 44, baseType: !38, size: 64)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5189, file: !5190, line: 45, baseType: !38, size: 64, offset: 64)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !5080, file: !5081, line: 216, baseType: !5195, size: 448, offset: 7424)
!5195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !5081, line: 30, size: 448, elements: !5196)
!5196 = !{!5197, !5198, !5199, !5200, !5201, !5202, !5203}
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5195, file: !5081, line: 31, baseType: !22, size: 32)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5195, file: !5081, line: 32, baseType: !666, size: 64, offset: 64)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5195, file: !5081, line: 33, baseType: !39, size: 64, offset: 128)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5195, file: !5081, line: 34, baseType: !310, size: 64, offset: 192)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5195, file: !5081, line: 34, baseType: !310, size: 64, offset: 256)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5195, file: !5081, line: 35, baseType: !39, size: 64, offset: 320)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5195, file: !5081, line: 35, baseType: !39, size: 64, offset: 384)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5080, file: !5081, line: 219, baseType: !5205, size: 64, offset: 7872)
!5205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5206, size: 64)
!5206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5207, line: 41, size: 3456, elements: !5208)
!5207 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5208 = !{!5209, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250, !5251, !5252, !5253, !5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265}
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5206, file: !5207, line: 47, baseType: !94, size: 16)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5206, file: !5207, line: 48, baseType: !378, size: 32, offset: 32)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5206, file: !5207, line: 54, baseType: !85, size: 8, offset: 64)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5206, file: !5207, line: 55, baseType: !85, size: 8, offset: 72)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5206, file: !5207, line: 73, baseType: !311, size: 64, align: 64, offset: 128)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5206, file: !5207, line: 74, baseType: !311, size: 64, offset: 192)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5206, file: !5207, line: 81, baseType: !311, size: 64, offset: 256)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5206, file: !5207, line: 82, baseType: !311, size: 64, offset: 320)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5206, file: !5207, line: 85, baseType: !311, size: 64, offset: 384)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5206, file: !5207, line: 86, baseType: !311, size: 64, offset: 448)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5206, file: !5207, line: 94, baseType: !311, size: 64, offset: 512)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5206, file: !5207, line: 102, baseType: !311, size: 64, offset: 576)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5206, file: !5207, line: 107, baseType: !4410, size: 256, offset: 640)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5206, file: !5207, line: 108, baseType: !85, size: 8, align: 64, offset: 896)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5206, file: !5207, line: 110, baseType: !5224, size: 24, offset: 904)
!5224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 24, elements: !1072)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5206, file: !5207, line: 111, baseType: !378, size: 32, align: 64, offset: 960)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5206, file: !5207, line: 113, baseType: !378, size: 32, offset: 992)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5206, file: !5207, line: 114, baseType: !378, size: 32, offset: 1024)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5206, file: !5207, line: 115, baseType: !378, size: 32, offset: 1056)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5206, file: !5207, line: 117, baseType: !378, size: 32, offset: 1088)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5206, file: !5207, line: 118, baseType: !311, size: 64, align: 64, offset: 1152)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5206, file: !5207, line: 120, baseType: !311, size: 64, offset: 1216)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5206, file: !5207, line: 121, baseType: !311, size: 64, offset: 1280)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5206, file: !5207, line: 122, baseType: !311, size: 64, offset: 1344)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5206, file: !5207, line: 123, baseType: !311, size: 64, offset: 1408)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5206, file: !5207, line: 133, baseType: !311, size: 64, offset: 1472)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5206, file: !5207, line: 137, baseType: !311, size: 64, offset: 1536)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5206, file: !5207, line: 142, baseType: !311, size: 64, offset: 1600)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5206, file: !5207, line: 143, baseType: !311, size: 64, offset: 1664)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5206, file: !5207, line: 146, baseType: !311, size: 64, offset: 1728)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5206, file: !5207, line: 147, baseType: !311, size: 64, offset: 1792)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5206, file: !5207, line: 148, baseType: !311, size: 64, offset: 1856)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5206, file: !5207, line: 149, baseType: !311, size: 64, offset: 1920)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5206, file: !5207, line: 154, baseType: !311, size: 64, offset: 1984)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5206, file: !5207, line: 155, baseType: !311, size: 64, offset: 2048)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5206, file: !5207, line: 156, baseType: !311, size: 64, offset: 2112)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5206, file: !5207, line: 158, baseType: !311, size: 64, offset: 2176)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5206, file: !5207, line: 159, baseType: !311, size: 64, offset: 2240)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5206, file: !5207, line: 162, baseType: !311, size: 64, offset: 2304)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5206, file: !5207, line: 163, baseType: !311, size: 64, offset: 2368)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5206, file: !5207, line: 164, baseType: !311, size: 64, offset: 2432)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5206, file: !5207, line: 167, baseType: !311, size: 64, offset: 2496)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5206, file: !5207, line: 168, baseType: !311, size: 64, offset: 2560)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5206, file: !5207, line: 171, baseType: !311, size: 64, offset: 2624)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5206, file: !5207, line: 172, baseType: !311, size: 64, offset: 2688)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5206, file: !5207, line: 175, baseType: !311, size: 64, offset: 2752)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5206, file: !5207, line: 178, baseType: !311, size: 64, offset: 2816)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5206, file: !5207, line: 179, baseType: !311, size: 64, offset: 2880)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5206, file: !5207, line: 182, baseType: !378, size: 32, offset: 2944)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5206, file: !5207, line: 186, baseType: !311, size: 64, align: 64, offset: 3008)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5206, file: !5207, line: 194, baseType: !311, size: 64, offset: 3072)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5206, file: !5207, line: 195, baseType: !311, size: 64, offset: 3136)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5206, file: !5207, line: 199, baseType: !311, size: 64, offset: 3200)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5206, file: !5207, line: 200, baseType: !311, size: 64, offset: 3264)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5206, file: !5207, line: 203, baseType: !311, size: 64, offset: 3328)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5206, file: !5207, line: 204, baseType: !311, size: 64, offset: 3392)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !5080, file: !5081, line: 222, baseType: !7, size: 32, offset: 7936)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !5080, file: !5081, line: 223, baseType: !5268, size: 64, offset: 8000)
!5268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5269, size: 64)
!5269 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !5081, line: 223, flags: DIFlagFwdDecl)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !5080, file: !5081, line: 230, baseType: !421, size: 8, offset: 8064)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !5080, file: !5081, line: 231, baseType: !382, size: 16, offset: 8080)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !5080, file: !5081, line: 232, baseType: !382, size: 16, offset: 8096)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !5080, file: !5081, line: 234, baseType: !998, size: 64, offset: 8128)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !5080, file: !5081, line: 237, baseType: !1040, size: 256, offset: 8192)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !5080, file: !5081, line: 243, baseType: !347, size: 320, offset: 8448)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !704, file: !705, line: 1111, baseType: !5277, size: 64, offset: 15424)
!5277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5278, size: 64)
!5278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !5081, line: 20, size: 16640, elements: !5279)
!5279 = !{!5280, !5281, !5282, !5283}
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5278, file: !5081, line: 21, baseType: !59, size: 32)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5278, file: !5081, line: 22, baseType: !324, size: 32, offset: 32)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5278, file: !5081, line: 23, baseType: !54, size: 192, offset: 64)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5278, file: !5081, line: 24, baseType: !5284, size: 16384, offset: 256)
!5284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5285, size: 16384, elements: !1477)
!5285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !5092, line: 51, size: 256, elements: !5286)
!5286 = !{!5287}
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5285, file: !5092, line: 52, baseType: !5288, size: 256)
!5288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !5092, line: 37, size: 256, elements: !5289)
!5289 = !{!5290, !5297, !5298, !5302}
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5288, file: !5092, line: 39, baseType: !5291, size: 64)
!5291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5292, line: 83, baseType: !5293)
!5292 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5294, size: 64)
!5294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5292, line: 82, baseType: !5295)
!5295 = !DISubroutineType(types: !5296)
!5296 = !{null, !22}
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5288, file: !5092, line: 40, baseType: !39, size: 64, offset: 64)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5288, file: !5092, line: 46, baseType: !5299, size: 64, offset: 128)
!5299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5292, line: 86, baseType: !5300)
!5300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5301, size: 64)
!5301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5292, line: 85, baseType: !2653)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5288, file: !5092, line: 48, baseType: !5096, size: 64, offset: 192)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !704, file: !705, line: 1112, baseType: !5096, size: 64, offset: 15488)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !704, file: !705, line: 1113, baseType: !5096, size: 64, offset: 15552)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !704, file: !705, line: 1115, baseType: !5096, size: 64, offset: 15616)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !704, file: !705, line: 1116, baseType: !5091, size: 192, offset: 15680)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !704, file: !705, line: 1117, baseType: !39, size: 64, offset: 15872)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !704, file: !705, line: 1118, baseType: !35, size: 64, offset: 15936)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !704, file: !705, line: 1119, baseType: !7, size: 32, offset: 16000)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !704, file: !705, line: 1121, baseType: !414, size: 64, offset: 16064)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !704, file: !705, line: 1125, baseType: !5312, size: 64, offset: 16128)
!5312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5313, size: 64)
!5313 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !705, line: 43, flags: DIFlagFwdDecl)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !704, file: !705, line: 1127, baseType: !283, size: 32, offset: 16192)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !704, file: !705, line: 1128, baseType: !7, size: 32, offset: 16224)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !704, file: !705, line: 1130, baseType: !5317, size: 128, offset: 16256)
!5317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5318, line: 37, size: 128, elements: !5319)
!5318 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5319 = !{!5320, !5321, !5322}
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5317, file: !5318, line: 38, baseType: !22, size: 32)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5317, file: !5318, line: 39, baseType: !49, size: 32, offset: 32)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5317, file: !5318, line: 40, baseType: !5323, size: 64, offset: 64)
!5323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5324, size: 64)
!5324 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5318, line: 24, flags: DIFlagFwdDecl)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !704, file: !705, line: 1131, baseType: !5326, size: 256, offset: 16384)
!5326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5327, line: 12, size: 256, elements: !5328)
!5327 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5328 = !{!5329, !5330, !5331, !5332}
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5326, file: !5327, line: 13, baseType: !432, size: 64)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5326, file: !5327, line: 14, baseType: !39, size: 64, offset: 64)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5326, file: !5327, line: 15, baseType: !39, size: 64, offset: 128)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5326, file: !5327, line: 16, baseType: !421, size: 8, offset: 192)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !704, file: !705, line: 1134, baseType: !310, size: 64, offset: 16640)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !704, file: !705, line: 1135, baseType: !310, size: 64, offset: 16704)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !704, file: !705, line: 1138, baseType: !59, size: 32, offset: 16768)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !704, file: !705, line: 1141, baseType: !358, size: 32, offset: 16800)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !704, file: !705, line: 1143, baseType: !5338, size: 64, offset: 16832)
!5338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !705, line: 735, size: 64, elements: !5339)
!5339 = !{!5340}
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5338, file: !705, line: 736, baseType: !5341, size: 64)
!5341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5338, size: 64)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !704, file: !705, line: 1147, baseType: !884, size: 128, offset: 16896)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !704, file: !705, line: 1149, baseType: !703, size: 64, offset: 17024)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !704, file: !705, line: 1151, baseType: !5345, size: 64, offset: 17088)
!5345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5346, size: 64)
!5346 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !705, line: 1151, flags: DIFlagFwdDecl)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !704, file: !705, line: 1188, baseType: !20, size: 64, offset: 17152)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !704, file: !705, line: 1191, baseType: !5349, size: 64, offset: 17216)
!5349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5350, size: 64)
!5350 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !705, line: 44, flags: DIFlagFwdDecl)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !704, file: !705, line: 1194, baseType: !5352, size: 64, offset: 17280)
!5352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5353, size: 64)
!5353 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !705, line: 45, flags: DIFlagFwdDecl)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !704, file: !705, line: 1197, baseType: !5355, size: 64, offset: 17344)
!5355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5356, size: 64)
!5356 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !705, line: 61, flags: DIFlagFwdDecl)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !704, file: !705, line: 1199, baseType: !5358, size: 64, offset: 17408)
!5358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5359, size: 64)
!5359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !5360, line: 99, size: 128, elements: !5361)
!5360 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!5361 = !{!5362, !5363, !5364}
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5359, file: !5360, line: 100, baseType: !274, size: 64)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5359, file: !5360, line: 101, baseType: !49, size: 32, offset: 64)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5359, file: !5360, line: 103, baseType: !26, size: 16, offset: 96)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !704, file: !705, line: 1202, baseType: !5366, size: 64, offset: 17472)
!5366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5367, size: 64)
!5367 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !705, line: 48, flags: DIFlagFwdDecl)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !704, file: !705, line: 1205, baseType: !39, size: 64, offset: 17536)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !704, file: !705, line: 1206, baseType: !5370, size: 64, offset: 17600)
!5370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5371, size: 64)
!5371 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !5092, line: 14, baseType: !5372)
!5372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !5092, line: 12, size: 384, elements: !5373)
!5373 = !{!5374}
!5374 = !DIDerivedType(tag: DW_TAG_member, scope: !5372, file: !5092, line: 13, baseType: !5375, size: 384)
!5375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5372, file: !5092, line: 13, size: 384, elements: !5376)
!5376 = !{!5377, !5378, !5379, !5380}
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5375, file: !5092, line: 13, baseType: !22, size: 32)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5375, file: !5092, line: 13, baseType: !22, size: 32, offset: 32)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5375, file: !5092, line: 13, baseType: !22, size: 32, offset: 64)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5375, file: !5092, line: 13, baseType: !5381, size: 256, offset: 128)
!5381 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5382, line: 37, size: 256, elements: !5383)
!5382 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5383 = !{!5384, !5389, !5402, !5408, !5417, !5444, !5449}
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5381, file: !5382, line: 42, baseType: !5385, size: 64)
!5385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5381, file: !5382, line: 39, size: 64, elements: !5386)
!5386 = !{!5387, !5388}
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5385, file: !5382, line: 40, baseType: !4969, size: 32)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5385, file: !5382, line: 41, baseType: !289, size: 32, offset: 32)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5381, file: !5382, line: 50, baseType: !5390, size: 192)
!5390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5381, file: !5382, line: 45, size: 192, elements: !5391)
!5391 = !{!5392, !5394, !5395, !5401}
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5390, file: !5382, line: 46, baseType: !5393, size: 32)
!5393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !37, line: 95, baseType: !22)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5390, file: !5382, line: 47, baseType: !22, size: 32, offset: 32)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5390, file: !5382, line: 48, baseType: !5396, size: 64, offset: 64)
!5396 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5382, line: 11, baseType: !5397)
!5397 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5382, line: 8, size: 64, elements: !5398)
!5398 = !{!5399, !5400}
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5397, file: !5382, line: 9, baseType: !22, size: 32)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5397, file: !5382, line: 10, baseType: !20, size: 64)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5390, file: !5382, line: 49, baseType: !22, size: 32, offset: 128)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5381, file: !5382, line: 57, baseType: !5403, size: 128)
!5403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5381, file: !5382, line: 53, size: 128, elements: !5404)
!5404 = !{!5405, !5406, !5407}
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5403, file: !5382, line: 54, baseType: !4969, size: 32)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5403, file: !5382, line: 55, baseType: !289, size: 32, offset: 32)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5403, file: !5382, line: 56, baseType: !5396, size: 64, offset: 64)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5381, file: !5382, line: 66, baseType: !5409, size: 256)
!5409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5381, file: !5382, line: 60, size: 256, elements: !5410)
!5410 = !{!5411, !5412, !5413, !5414, !5416}
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5409, file: !5382, line: 61, baseType: !4969, size: 32)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5409, file: !5382, line: 62, baseType: !289, size: 32, offset: 32)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5409, file: !5382, line: 63, baseType: !22, size: 32, offset: 64)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5409, file: !5382, line: 64, baseType: !5415, size: 64, offset: 128)
!5415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !37, line: 94, baseType: !1341)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5409, file: !5382, line: 65, baseType: !5415, size: 64, offset: 192)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5381, file: !5382, line: 105, baseType: !5418, size: 256)
!5418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5381, file: !5382, line: 69, size: 256, elements: !5419)
!5419 = !{!5420, !5421}
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5418, file: !5382, line: 70, baseType: !20, size: 64)
!5421 = !DIDerivedType(tag: DW_TAG_member, scope: !5418, file: !5382, line: 79, baseType: !5422, size: 192, offset: 64)
!5422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5418, file: !5382, line: 79, size: 192, elements: !5423)
!5423 = !{!5424, !5425, !5426, !5433, !5438}
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5422, file: !5382, line: 81, baseType: !22, size: 32)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5422, file: !5382, line: 86, baseType: !382, size: 16)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5422, file: !5382, line: 92, baseType: !5427, size: 192)
!5427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5422, file: !5382, line: 88, size: 192, elements: !5428)
!5428 = !{!5429, !5431, !5432}
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5427, file: !5382, line: 89, baseType: !5430, size: 64)
!5430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, elements: !863)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5427, file: !5382, line: 90, baseType: !20, size: 64, offset: 64)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5427, file: !5382, line: 91, baseType: !20, size: 64, offset: 128)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5422, file: !5382, line: 97, baseType: !5434, size: 96)
!5434 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5422, file: !5382, line: 94, size: 96, elements: !5435)
!5435 = !{!5436, !5437}
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5434, file: !5382, line: 95, baseType: !5430, size: 64)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5434, file: !5382, line: 96, baseType: !378, size: 32, offset: 64)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5422, file: !5382, line: 103, baseType: !5439, size: 128)
!5439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5422, file: !5382, line: 99, size: 128, elements: !5440)
!5440 = !{!5441, !5442, !5443}
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5439, file: !5382, line: 100, baseType: !39, size: 64)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5439, file: !5382, line: 101, baseType: !378, size: 32, offset: 64)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5439, file: !5382, line: 102, baseType: !378, size: 32, offset: 96)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5381, file: !5382, line: 111, baseType: !5445, size: 128)
!5445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5381, file: !5382, line: 108, size: 128, elements: !5446)
!5446 = !{!5447, !5448}
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5445, file: !5382, line: 109, baseType: !666, size: 64)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5445, file: !5382, line: 110, baseType: !22, size: 32, offset: 64)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5381, file: !5382, line: 118, baseType: !5450, size: 128)
!5450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5381, file: !5382, line: 114, size: 128, elements: !5451)
!5451 = !{!5452, !5453, !5454}
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5450, file: !5382, line: 115, baseType: !20, size: 64)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5450, file: !5382, line: 116, baseType: !22, size: 32, offset: 64)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5450, file: !5382, line: 117, baseType: !7, size: 32, offset: 96)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !704, file: !705, line: 1208, baseType: !5176, size: 448, offset: 17664)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !704, file: !705, line: 1215, baseType: !310, size: 64, offset: 18112)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !704, file: !705, line: 1217, baseType: !310, size: 64, offset: 18176)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !704, file: !705, line: 1219, baseType: !310, size: 64, offset: 18240)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !704, file: !705, line: 1223, baseType: !5460, size: 64, offset: 18304)
!5460 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5461, line: 99, baseType: !5462)
!5461 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5462 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5461, line: 99, size: 64, elements: !5463)
!5463 = !{!5464}
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5462, file: !5461, line: 99, baseType: !949, size: 64)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !704, file: !705, line: 1225, baseType: !1158, size: 32, offset: 18368)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !704, file: !705, line: 1226, baseType: !22, size: 32, offset: 18400)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !704, file: !705, line: 1227, baseType: !22, size: 32, offset: 18432)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !704, file: !705, line: 1231, baseType: !3902, size: 64, offset: 18496)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !704, file: !705, line: 1233, baseType: !97, size: 128, offset: 18560)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !704, file: !705, line: 1240, baseType: !5471, size: 64, offset: 18688)
!5471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5472, size: 64)
!5472 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !705, line: 62, flags: DIFlagFwdDecl)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !704, file: !705, line: 1242, baseType: !5474, size: 64, offset: 18752)
!5474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5475, size: 64)
!5475 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !705, line: 1242, flags: DIFlagFwdDecl)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !704, file: !705, line: 1244, baseType: !97, size: 128, offset: 18816)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !704, file: !705, line: 1245, baseType: !5478, size: 64, offset: 18944)
!5478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5479, size: 64)
!5479 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !705, line: 51, flags: DIFlagFwdDecl)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !704, file: !705, line: 1246, baseType: !1040, size: 256, offset: 19008)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !704, file: !705, line: 1247, baseType: !7, size: 32, offset: 19264)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !704, file: !705, line: 1250, baseType: !3152, size: 64, offset: 19328)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !704, file: !705, line: 1251, baseType: !1040, size: 256, offset: 19392)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !704, file: !705, line: 1252, baseType: !97, size: 128, offset: 19648)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !704, file: !705, line: 1259, baseType: !1761, size: 64, offset: 19776)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !704, file: !705, line: 1260, baseType: !382, size: 16, offset: 19840)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !704, file: !705, line: 1261, baseType: !382, size: 16, offset: 19856)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !704, file: !705, line: 1314, baseType: !5489, size: 64, offset: 19904)
!5489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5490, size: 64)
!5490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5491, line: 62, size: 256, align: 256, elements: !5492)
!5491 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5492 = !{!5493, !5494, !5495, !5496, !5497, !5498, !5499}
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5490, file: !5491, line: 75, baseType: !378, size: 32)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5490, file: !5491, line: 90, baseType: !378, size: 32, offset: 32)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5490, file: !5491, line: 112, baseType: !311, size: 64, offset: 64)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5490, file: !5491, line: 132, baseType: !378, size: 32, offset: 128)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5490, file: !5491, line: 140, baseType: !378, size: 32, offset: 160)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5490, file: !5491, line: 149, baseType: !378, size: 32, offset: 192)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5490, file: !5491, line: 154, baseType: !5500, offset: 224)
!5500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, elements: !678)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !704, file: !705, line: 1315, baseType: !377, size: 32, offset: 19968)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !704, file: !705, line: 1316, baseType: !377, size: 32, offset: 20000)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !704, file: !705, line: 1321, baseType: !39, size: 64, offset: 20032)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !704, file: !705, line: 1325, baseType: !22, size: 32, offset: 20096)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !704, file: !705, line: 1326, baseType: !22, size: 32, offset: 20128)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !704, file: !705, line: 1327, baseType: !22, size: 32, offset: 20160)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !704, file: !705, line: 1328, baseType: !22, size: 32, offset: 20192)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !704, file: !705, line: 1329, baseType: !411, size: 128, align: 64, offset: 20224)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !704, file: !705, line: 1332, baseType: !5510, size: 128, offset: 20352)
!5510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5511, line: 51, size: 128, elements: !5512)
!5511 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5512 = !{!5513, !5518, !5519}
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5510, file: !5511, line: 60, baseType: !5514, size: 64)
!5514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5515, line: 7, size: 64, elements: !5516)
!5515 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5516 = !{!5517}
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5514, file: !5515, line: 12, baseType: !946, size: 64)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5510, file: !5511, line: 63, baseType: !421, size: 8, offset: 64)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5510, file: !5511, line: 70, baseType: !421, size: 8, offset: 72)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !704, file: !705, line: 1335, baseType: !4657, size: 64, offset: 20480)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !704, file: !705, line: 1337, baseType: !5522, size: 128, offset: 20544)
!5522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5511, line: 39, size: 128, elements: !5523)
!5523 = !{!5524, !5525, !5526}
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5522, file: !5511, line: 40, baseType: !1558, size: 64)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5522, file: !5511, line: 42, baseType: !378, size: 32, offset: 64)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5522, file: !5511, line: 43, baseType: !378, size: 32, offset: 96)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !704, file: !705, line: 1340, baseType: !5528, size: 64, offset: 20672)
!5528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5529, size: 64)
!5529 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !705, line: 69, flags: DIFlagFwdDecl)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !704, file: !705, line: 1351, baseType: !22, size: 32, offset: 20736)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !704, file: !705, line: 1352, baseType: !22, size: 32, offset: 20768)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !704, file: !705, line: 1354, baseType: !39, size: 64, offset: 20800)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !704, file: !705, line: 1364, baseType: !310, size: 64, offset: 20864)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !704, file: !705, line: 1365, baseType: !310, size: 64, offset: 20928)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !704, file: !705, line: 1412, baseType: !39, size: 64, offset: 20992)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !704, file: !705, line: 1453, baseType: !5537, size: 64, offset: 21056)
!5537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5538, size: 64)
!5538 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !705, line: 1453, flags: DIFlagFwdDecl)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !704, file: !705, line: 1457, baseType: !5540, size: 64, offset: 21120)
!5540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5541, size: 64)
!5541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !256, line: 61, size: 576, elements: !5542)
!5542 = !{!5543, !5544, !5563, !5566, !5567, !5600, !5610}
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5541, file: !256, line: 62, baseType: !255, size: 32)
!5544 = !DIDerivedType(tag: DW_TAG_member, scope: !5541, file: !256, line: 64, baseType: !5545, size: 192, offset: 64)
!5545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5541, file: !256, line: 64, size: 192, elements: !5546)
!5546 = !{!5547, !5558}
!5547 = !DIDerivedType(tag: DW_TAG_member, scope: !5545, file: !256, line: 65, baseType: !5548, size: 192)
!5548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5545, file: !256, line: 65, size: 192, elements: !5549)
!5549 = !{!5550, !5557}
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5548, file: !256, line: 66, baseType: !5551, size: 128)
!5551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5552, line: 50, size: 128, elements: !5553)
!5552 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5553 = !{!5554, !5555, !5556}
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5551, file: !5552, line: 52, baseType: !39, size: 64)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5551, file: !5552, line: 54, baseType: !7, size: 32, offset: 64)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5551, file: !5552, line: 55, baseType: !7, size: 32, offset: 96)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5548, file: !256, line: 67, baseType: !39, size: 64, offset: 128)
!5558 = !DIDerivedType(tag: DW_TAG_member, scope: !5545, file: !256, line: 70, baseType: !5559, size: 192)
!5559 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5545, file: !256, line: 70, size: 192, elements: !5560)
!5560 = !{!5561, !5562}
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5559, file: !256, line: 71, baseType: !411, size: 128, align: 64)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5559, file: !256, line: 72, baseType: !39, size: 64, offset: 128)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5541, file: !256, line: 76, baseType: !5564, size: 64, offset: 256)
!5564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5565, size: 64)
!5565 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !256, line: 76, flags: DIFlagFwdDecl)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5541, file: !256, line: 77, baseType: !39, size: 64, offset: 320)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5541, file: !256, line: 79, baseType: !5568, size: 64, offset: 384)
!5568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5569, size: 64)
!5569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5552, line: 25, size: 256, elements: !5570)
!5570 = !{!5571, !5577, !5581}
!5571 = !DIDerivedType(tag: DW_TAG_member, scope: !5569, file: !5552, line: 26, baseType: !5572, size: 128)
!5572 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5569, file: !5552, line: 26, size: 128, elements: !5573)
!5573 = !{!5574, !5576}
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5572, file: !5552, line: 27, baseType: !5575, size: 128)
!5575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 128, elements: !4420)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5572, file: !5552, line: 28, baseType: !5575, size: 128)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5569, file: !5552, line: 31, baseType: !5578, size: 64, offset: 128)
!5578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5579, size: 64)
!5579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5580)
!5580 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5552, line: 23, flags: DIFlagFwdDecl)
!5581 = !DIDerivedType(tag: DW_TAG_member, scope: !5569, file: !5552, line: 33, baseType: !5582, size: 64, offset: 192)
!5582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5569, file: !5552, line: 33, size: 64, elements: !5583)
!5583 = !{!5584, !5590, !5595}
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5582, file: !5552, line: 38, baseType: !5585, size: 64)
!5585 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5582, file: !5552, line: 34, size: 64, elements: !5586)
!5586 = !{!5587, !5588, !5589}
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5585, file: !5552, line: 35, baseType: !332, size: 32)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5585, file: !5552, line: 36, baseType: !83, size: 8, offset: 32)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5585, file: !5552, line: 37, baseType: !83, size: 8, offset: 40)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5582, file: !5552, line: 42, baseType: !5591, size: 16)
!5591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5582, file: !5552, line: 39, size: 16, elements: !5592)
!5592 = !{!5593, !5594}
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5591, file: !5552, line: 40, baseType: !83, size: 8)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5591, file: !5552, line: 41, baseType: !83, size: 8, offset: 8)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5582, file: !5552, line: 46, baseType: !5596, size: 16)
!5596 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5582, file: !5552, line: 43, size: 16, elements: !5597)
!5597 = !{!5598, !5599}
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5596, file: !5552, line: 44, baseType: !83, size: 8)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5596, file: !5552, line: 45, baseType: !83, size: 8, offset: 8)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5541, file: !256, line: 81, baseType: !5601, size: 64, offset: 448)
!5601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5602, size: 64)
!5602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !256, line: 85, size: 384, elements: !5603)
!5603 = !{!5604, !5605, !5606, !5607, !5608, !5609}
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5602, file: !256, line: 86, baseType: !5564, size: 64)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5602, file: !256, line: 87, baseType: !39, size: 64, offset: 64)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5602, file: !256, line: 88, baseType: !39, size: 64, offset: 128)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5602, file: !256, line: 89, baseType: !39, size: 64, offset: 192)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5602, file: !256, line: 90, baseType: !421, size: 8, offset: 256)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5602, file: !256, line: 92, baseType: !5601, size: 64, offset: 320)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5541, file: !256, line: 82, baseType: !7, size: 32, offset: 512)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !704, file: !705, line: 1463, baseType: !5612, offset: 21184)
!5612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !705, line: 739, elements: !1019)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !704, file: !705, line: 1470, baseType: !411, size: 128, align: 64, offset: 21184)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !704, file: !705, line: 1471, baseType: !324, size: 32, offset: 21312)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !704, file: !705, line: 1472, baseType: !22, size: 32, offset: 21344)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !704, file: !705, line: 1474, baseType: !703, size: 64, offset: 21376)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !704, file: !705, line: 1475, baseType: !2478, size: 320, offset: 21440)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !704, file: !705, line: 1478, baseType: !5619, size: 64, offset: 21760)
!5619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5620, size: 64)
!5620 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !705, line: 1478, flags: DIFlagFwdDecl)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !704, file: !705, line: 1482, baseType: !324, size: 32, offset: 21824)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !704, file: !705, line: 1489, baseType: !20, size: 64, offset: 21888)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !704, file: !705, line: 1504, baseType: !20, size: 64, offset: 21952)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !704, file: !705, line: 1505, baseType: !311, size: 64, offset: 22016)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !704, file: !705, line: 1506, baseType: !310, size: 64, offset: 22080)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !704, file: !705, line: 1507, baseType: !311, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !704, file: !705, line: 1508, baseType: !311, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !704, file: !705, line: 1509, baseType: !311, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !704, file: !705, line: 1510, baseType: !411, size: 128, align: 64, offset: 22208)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !704, file: !705, line: 1511, baseType: !22, size: 32, offset: 22336)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !704, file: !705, line: 1515, baseType: !5632, size: 64, offset: 22400)
!5632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !727, line: 56, size: 64, elements: !5633)
!5633 = !{!5634}
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5632, file: !727, line: 57, baseType: !730, size: 64)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !704, file: !705, line: 1518, baseType: !5632, size: 64, offset: 22464)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !704, file: !705, line: 1528, baseType: !411, size: 128, align: 64, offset: 22528)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !704, file: !705, line: 1552, baseType: !5638, size: 35328, offset: 23040)
!5638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5639, line: 430, size: 35328, elements: !5640)
!5639 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5640 = !{!5641, !5659, !5660, !5661, !5662, !5663, !5664, !5665, !5666, !5668, !5669, !5670, !5671, !5672, !5673, !5676, !5677, !5678, !5679}
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5638, file: !5639, line: 432, baseType: !5642, size: 192)
!5642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5643, size: 192, elements: !1072)
!5643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5644, line: 16, size: 64, elements: !5645)
!5644 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5645 = !{!5646, !5647, !5648, !5649, !5650, !5651, !5652, !5653, !5654, !5655, !5656, !5657, !5658}
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5643, file: !5644, line: 17, baseType: !93, size: 16)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5643, file: !5644, line: 18, baseType: !93, size: 16, offset: 16)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5643, file: !5644, line: 19, baseType: !93, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5643, file: !5644, line: 19, baseType: !93, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5643, file: !5644, line: 19, baseType: !93, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5643, file: !5644, line: 19, baseType: !93, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5643, file: !5644, line: 19, baseType: !93, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5643, file: !5644, line: 20, baseType: !93, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5643, file: !5644, line: 20, baseType: !93, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5643, file: !5644, line: 20, baseType: !93, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5643, file: !5644, line: 20, baseType: !93, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5643, file: !5644, line: 20, baseType: !93, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5643, file: !5644, line: 20, baseType: !93, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5638, file: !5639, line: 436, baseType: !39, size: 64, offset: 192)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5638, file: !5639, line: 440, baseType: !26, size: 16, offset: 256)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5638, file: !5639, line: 441, baseType: !26, size: 16, offset: 272)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5638, file: !5639, line: 442, baseType: !26, size: 16, offset: 288)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5638, file: !5639, line: 443, baseType: !26, size: 16, offset: 304)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5638, file: !5639, line: 447, baseType: !39, size: 64, offset: 320)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5638, file: !5639, line: 448, baseType: !39, size: 64, offset: 384)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5638, file: !5639, line: 459, baseType: !5667, size: 256, offset: 448)
!5667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2764, size: 256, elements: !442)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5638, file: !5639, line: 461, baseType: !39, size: 64, offset: 704)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5638, file: !5639, line: 463, baseType: !39, size: 64, offset: 768)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5638, file: !5639, line: 465, baseType: !39, size: 64, offset: 832)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5638, file: !5639, line: 466, baseType: !39, size: 64, offset: 896)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5638, file: !5639, line: 467, baseType: !39, size: 64, offset: 960)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5638, file: !5639, line: 473, baseType: !5674, size: 64, offset: 1024)
!5674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5675, size: 64)
!5675 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5639, line: 10, flags: DIFlagFwdDecl)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5638, file: !5639, line: 480, baseType: !39, size: 64, offset: 1088)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5638, file: !5639, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5638, file: !5639, line: 491, baseType: !377, size: 32, offset: 1184)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5638, file: !5639, line: 501, baseType: !5680, size: 33792, offset: 1536)
!5680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5681, line: 448, size: 33792, elements: !5682)
!5681 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5682 = !{!5683, !5684, !5685, !5793, !5794, !5800, !5801}
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5680, file: !5681, line: 461, baseType: !7, size: 32)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5680, file: !5681, line: 468, baseType: !39, size: 64, offset: 64)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5680, file: !5681, line: 476, baseType: !5686, size: 64, offset: 128)
!5686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5687, size: 64)
!5687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5681, line: 356, size: 33280, align: 512, elements: !5688)
!5688 = !{!5689, !5690, !5691, !5692, !5693, !5694, !5695, !5696, !5697, !5698}
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5687, file: !5681, line: 358, baseType: !7, size: 32)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5687, file: !5681, line: 361, baseType: !7, size: 32, offset: 32)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5687, file: !5681, line: 364, baseType: !310, size: 64, offset: 64)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5687, file: !5681, line: 367, baseType: !310, size: 64, offset: 128)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5687, file: !5681, line: 370, baseType: !310, size: 64, offset: 192)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5687, file: !5681, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5687, file: !5681, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5687, file: !5681, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5687, file: !5681, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5687, file: !5681, line: 397, baseType: !5699, size: 32768, offset: 512)
!5699 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5681, line: 348, size: 32768, elements: !5700)
!5700 = !{!5701, !5716, !5753, !5778, !5791}
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5699, file: !5681, line: 349, baseType: !5702, size: 896)
!5702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5681, line: 12, size: 896, elements: !5703)
!5703 = !{!5704, !5705, !5706, !5707, !5708, !5709, !5710, !5711, !5715}
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5702, file: !5681, line: 13, baseType: !377, size: 32)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5702, file: !5681, line: 14, baseType: !377, size: 32, offset: 32)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5702, file: !5681, line: 15, baseType: !377, size: 32, offset: 64)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5702, file: !5681, line: 16, baseType: !377, size: 32, offset: 96)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5702, file: !5681, line: 17, baseType: !377, size: 32, offset: 128)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5702, file: !5681, line: 18, baseType: !377, size: 32, offset: 160)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5702, file: !5681, line: 19, baseType: !377, size: 32, offset: 192)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5702, file: !5681, line: 22, baseType: !5712, size: 640, offset: 224)
!5712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 640, elements: !5713)
!5713 = !{!5714}
!5714 = !DISubrange(count: 20)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5702, file: !5681, line: 25, baseType: !377, size: 32, offset: 864)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5699, file: !5681, line: 350, baseType: !5717, size: 4096, align: 128)
!5717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5681, line: 34, size: 4096, align: 128, elements: !5718)
!5718 = !{!5719, !5720, !5721, !5722, !5723, !5738, !5739, !5740, !5742, !5744, !5748}
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5717, file: !5681, line: 35, baseType: !93, size: 16)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5717, file: !5681, line: 36, baseType: !93, size: 16, offset: 16)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5717, file: !5681, line: 37, baseType: !93, size: 16, offset: 32)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5717, file: !5681, line: 38, baseType: !93, size: 16, offset: 48)
!5723 = !DIDerivedType(tag: DW_TAG_member, scope: !5717, file: !5681, line: 39, baseType: !5724, size: 128, offset: 64)
!5724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5717, file: !5681, line: 39, size: 128, elements: !5725)
!5725 = !{!5726, !5731}
!5726 = !DIDerivedType(tag: DW_TAG_member, scope: !5724, file: !5681, line: 40, baseType: !5727, size: 128)
!5727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5724, file: !5681, line: 40, size: 128, elements: !5728)
!5728 = !{!5729, !5730}
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5727, file: !5681, line: 41, baseType: !310, size: 64)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5727, file: !5681, line: 42, baseType: !310, size: 64, offset: 64)
!5731 = !DIDerivedType(tag: DW_TAG_member, scope: !5724, file: !5681, line: 44, baseType: !5732, size: 128)
!5732 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5724, file: !5681, line: 44, size: 128, elements: !5733)
!5733 = !{!5734, !5735, !5736, !5737}
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5732, file: !5681, line: 45, baseType: !377, size: 32)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5732, file: !5681, line: 46, baseType: !377, size: 32, offset: 32)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5732, file: !5681, line: 47, baseType: !377, size: 32, offset: 64)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5732, file: !5681, line: 48, baseType: !377, size: 32, offset: 96)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5717, file: !5681, line: 51, baseType: !377, size: 32, offset: 192)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5717, file: !5681, line: 52, baseType: !377, size: 32, offset: 224)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5717, file: !5681, line: 55, baseType: !5741, size: 1024, offset: 256)
!5741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 1024, elements: !4411)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5717, file: !5681, line: 58, baseType: !5743, size: 2048, offset: 1280)
!5743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 2048, elements: !1477)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5717, file: !5681, line: 60, baseType: !5745, size: 384, offset: 3328)
!5745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 384, elements: !5746)
!5746 = !{!5747}
!5747 = !DISubrange(count: 12)
!5748 = !DIDerivedType(tag: DW_TAG_member, scope: !5717, file: !5681, line: 62, baseType: !5749, size: 384, offset: 3712)
!5749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5717, file: !5681, line: 62, size: 384, elements: !5750)
!5750 = !{!5751, !5752}
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5749, file: !5681, line: 63, baseType: !5745, size: 384)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5749, file: !5681, line: 64, baseType: !5745, size: 384)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5699, file: !5681, line: 351, baseType: !5754, size: 1088)
!5754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5681, line: 79, size: 1088, elements: !5755)
!5755 = !{!5756, !5757, !5758, !5759, !5760, !5761, !5762, !5763, !5764, !5765, !5766, !5767, !5768, !5769, !5770, !5777}
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5754, file: !5681, line: 80, baseType: !377, size: 32)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5754, file: !5681, line: 81, baseType: !377, size: 32, offset: 32)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5754, file: !5681, line: 82, baseType: !377, size: 32, offset: 64)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5754, file: !5681, line: 83, baseType: !377, size: 32, offset: 96)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5754, file: !5681, line: 84, baseType: !377, size: 32, offset: 128)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5754, file: !5681, line: 85, baseType: !377, size: 32, offset: 160)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5754, file: !5681, line: 86, baseType: !377, size: 32, offset: 192)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5754, file: !5681, line: 88, baseType: !5712, size: 640, offset: 224)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5754, file: !5681, line: 89, baseType: !83, size: 8, offset: 864)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5754, file: !5681, line: 90, baseType: !83, size: 8, offset: 872)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5754, file: !5681, line: 91, baseType: !83, size: 8, offset: 880)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5754, file: !5681, line: 92, baseType: !83, size: 8, offset: 888)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5754, file: !5681, line: 93, baseType: !83, size: 8, offset: 896)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5754, file: !5681, line: 94, baseType: !83, size: 8, offset: 904)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5754, file: !5681, line: 95, baseType: !5771, size: 64, offset: 960)
!5771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5772, size: 64)
!5772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5773, line: 11, size: 128, elements: !5774)
!5773 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5774 = !{!5775, !5776}
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5772, file: !5773, line: 12, baseType: !666, size: 64)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5772, file: !5773, line: 13, baseType: !3676, size: 64, offset: 64)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5754, file: !5681, line: 96, baseType: !377, size: 32, offset: 1024)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5699, file: !5681, line: 352, baseType: !5779, size: 4608, align: 512)
!5779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5681, line: 333, size: 4608, align: 512, elements: !5780)
!5780 = !{!5781, !5782, !5789}
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5779, file: !5681, line: 334, baseType: !5717, size: 4096, align: 128)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5779, file: !5681, line: 335, baseType: !5783, size: 512, offset: 4096)
!5783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5681, line: 312, size: 512, elements: !5784)
!5784 = !{!5785, !5786, !5787}
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5783, file: !5681, line: 313, baseType: !310, size: 64)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5783, file: !5681, line: 314, baseType: !310, size: 64, offset: 64)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5783, file: !5681, line: 315, baseType: !5788, size: 384, offset: 128)
!5788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 384, elements: !400)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5779, file: !5681, line: 336, baseType: !5790, offset: 4608)
!5790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, elements: !678)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5699, file: !5681, line: 353, baseType: !5792, size: 32768)
!5792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 32768, elements: !2708)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5680, file: !5681, line: 484, baseType: !5686, size: 64, offset: 192)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5680, file: !5681, line: 491, baseType: !5795, size: 128, offset: 256)
!5795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5681, line: 404, size: 128, elements: !5796)
!5796 = !{!5797, !5798, !5799}
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5795, file: !5681, line: 424, baseType: !310, size: 64)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5795, file: !5681, line: 432, baseType: !7, size: 32, offset: 64)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5795, file: !5681, line: 440, baseType: !7, size: 32, offset: 96)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5680, file: !5681, line: 498, baseType: !5795, size: 128, offset: 384)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5680, file: !5681, line: 508, baseType: !5687, size: 33280, align: 512, offset: 512)
!5802 = !{!0, !5803, !5814, !5816, !5818, !5820, !5822, !5824, !5826, !5829, !5831, !5833, !5838, !5849, !5854, !5865, !5870, !5876}
!5803 = !DIGlobalVariableExpression(var: !5804, expr: !DIExpression())
!5804 = distinct !DIGlobalVariable(name: "__setup_file_caps_disable", scope: !2, file: !3, line: 30, type: !5805, isLocal: true, isDefinition: true, align: 64)
!5805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !5806, line: 324, size: 192, elements: !5807)
!5806 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!5807 = !{!5808, !5809, !5813}
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !5805, file: !5806, line: 325, baseType: !16, size: 64)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !5805, file: !5806, line: 326, baseType: !5810, size: 64, offset: 64)
!5810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5811, size: 64)
!5811 = !DISubroutineType(types: !5812)
!5812 = !{!22, !432}
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !5805, file: !5806, line: 327, baseType: !22, size: 32, offset: 128)
!5814 = !DIGlobalVariableExpression(var: !5815, expr: !DIExpression())
!5815 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_has_capability318", scope: !2, file: !3, line: 306, type: !20, isLocal: true, isDefinition: true)
!5816 = !DIGlobalVariableExpression(var: !5817, expr: !DIExpression())
!5817 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_has_capability_noaudit321", scope: !2, file: !3, line: 349, type: !20, isLocal: true, isDefinition: true)
!5818 = !DIGlobalVariableExpression(var: !5819, expr: !DIExpression())
!5819 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ns_capable322", scope: !2, file: !3, line: 385, type: !20, isLocal: true, isDefinition: true)
!5820 = !DIGlobalVariableExpression(var: !5821, expr: !DIExpression())
!5821 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ns_capable_noaudit323", scope: !2, file: !3, line: 403, type: !20, isLocal: true, isDefinition: true)
!5822 = !DIGlobalVariableExpression(var: !5823, expr: !DIExpression())
!5823 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ns_capable_setid324", scope: !2, file: !3, line: 422, type: !20, isLocal: true, isDefinition: true)
!5824 = !DIGlobalVariableExpression(var: !5825, expr: !DIExpression())
!5825 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_capable325", scope: !2, file: !3, line: 438, type: !20, isLocal: true, isDefinition: true)
!5826 = !DIGlobalVariableExpression(var: !5827, expr: !DIExpression())
!5827 = distinct !DIGlobalVariable(scope: null, file: !3, line: 457, type: !5828, isLocal: true, isDefinition: true)
!5828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 160, elements: !5713)
!5829 = !DIGlobalVariableExpression(var: !5830, expr: !DIExpression())
!5830 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_file_ns_capable326", scope: !2, file: !3, line: 465, type: !20, isLocal: true, isDefinition: true)
!5831 = !DIGlobalVariableExpression(var: !5832, expr: !DIExpression())
!5832 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_capable_wrt_inode_uidgid327", scope: !2, file: !3, line: 501, type: !20, isLocal: true, isDefinition: true)
!5833 = !DIGlobalVariableExpression(var: !5834, expr: !DIExpression())
!5834 = distinct !DIGlobalVariable(name: "__setup_str_file_caps_disable", scope: !2, file: !3, line: 30, type: !5835, isLocal: true, isDefinition: true, align: 8)
!5835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 104, elements: !5836)
!5836 = !{!5837}
!5837 = !DISubrange(count: 13)
!5838 = !DIGlobalVariableExpression(var: !5839, expr: !DIExpression())
!5839 = distinct !DIGlobalVariable(name: "__already_done", scope: !5840, file: !3, line: 43, type: !421, isLocal: true, isDefinition: true)
!5840 = distinct !DISubprogram(name: "warn_legacy_capability_use", scope: !3, file: !3, line: 39, type: !2653, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5841)
!5841 = !{!5842, !5843, !5845, !5848}
!5842 = !DILocalVariable(name: "name", scope: !5840, file: !3, line: 41, type: !5021)
!5843 = !DILocalVariable(name: "__ret_do_once", scope: !5844, file: !3, line: 43, type: !421)
!5844 = distinct !DILexicalBlock(scope: !5840, file: !3, line: 43, column: 2)
!5845 = !DILocalVariable(name: "__ret_cond", scope: !5846, file: !3, line: 43, type: !421)
!5846 = distinct !DILexicalBlock(scope: !5847, file: !3, line: 43, column: 2)
!5847 = distinct !DILexicalBlock(scope: !5844, file: !3, line: 43, column: 2)
!5848 = !DILocalVariable(name: "__ret_once", scope: !5846, file: !3, line: 43, type: !421)
!5849 = !DIGlobalVariableExpression(var: !5850, expr: !DIExpression())
!5850 = distinct !DIGlobalVariable(scope: null, file: !3, line: 43, type: !5851, isLocal: true, isDefinition: true)
!5851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 624, elements: !5852)
!5852 = !{!5853}
!5853 = !DISubrange(count: 78)
!5854 = !DIGlobalVariableExpression(var: !5855, expr: !DIExpression())
!5855 = distinct !DIGlobalVariable(name: "__already_done", scope: !5856, file: !3, line: 67, type: !421, isLocal: true, isDefinition: true)
!5856 = distinct !DISubprogram(name: "warn_deprecated_v2", scope: !3, file: !3, line: 63, type: !2653, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5857)
!5857 = !{!5858, !5859, !5861, !5864}
!5858 = !DILocalVariable(name: "name", scope: !5856, file: !3, line: 65, type: !5021)
!5859 = !DILocalVariable(name: "__ret_do_once", scope: !5860, file: !3, line: 67, type: !421)
!5860 = distinct !DILexicalBlock(scope: !5856, file: !3, line: 67, column: 2)
!5861 = !DILocalVariable(name: "__ret_cond", scope: !5862, file: !3, line: 67, type: !421)
!5862 = distinct !DILexicalBlock(scope: !5863, file: !3, line: 67, column: 2)
!5863 = distinct !DILexicalBlock(scope: !5860, file: !3, line: 67, column: 2)
!5864 = !DILocalVariable(name: "__ret_once", scope: !5862, file: !3, line: 67, type: !421)
!5865 = !DIGlobalVariableExpression(var: !5866, expr: !DIExpression())
!5866 = distinct !DIGlobalVariable(scope: null, file: !3, line: 67, type: !5867, isLocal: true, isDefinition: true)
!5867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 728, elements: !5868)
!5868 = !{!5869}
!5869 = !DISubrange(count: 91)
!5870 = !DIGlobalVariableExpression(var: !5871, expr: !DIExpression())
!5871 = distinct !DIGlobalVariable(scope: null, file: !5872, line: 249, type: !5873, isLocal: true, isDefinition: true)
!5872 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!5873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 224, elements: !5874)
!5874 = !{!5875}
!5875 = !DISubrange(count: 28)
!5876 = !DIGlobalVariableExpression(var: !5877, expr: !DIExpression())
!5877 = distinct !DIGlobalVariable(scope: null, file: !3, line: 358, type: !5878, isLocal: true, isDefinition: true)
!5878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 416, elements: !4811)
!5879 = !{!"rsp"}
!5880 = !{i32 7, !"Dwarf Version", i32 5}
!5881 = !{i32 2, !"Debug Info Version", i32 3}
!5882 = !{i32 1, !"wchar_size", i32 2}
!5883 = !{i32 8, !"cf-protection-branch", i32 1}
!5884 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5885 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5886 = !{i32 1, !"Code Model", i32 2}
!5887 = !{i32 1, !"override-stack-alignment", i32 8}
!5888 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5889 = distinct !DISubprogram(name: "file_caps_disable", scope: !3, file: !3, line: 25, type: !5811, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5890)
!5890 = !{!5891}
!5891 = !DILocalVariable(name: "str", arg: 1, scope: !5889, file: !3, line: 25, type: !432)
!5892 = !DILocation(line: 25, column: 43, scope: !5889)
!5893 = !DILocation(line: 27, column: 20, scope: !5889)
!5894 = !DILocation(line: 28, column: 2, scope: !5889)
!5895 = distinct !DISubprogram(name: "__x64_sys_capget", scope: !3, file: !3, line: 141, type: !5896, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5900)
!5896 = !DISubroutineType(types: !5897)
!5897 = !{!666, !5898}
!5898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5899, size: 64)
!5899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3677)
!5900 = !{!5901}
!5901 = !DILocalVariable(name: "regs", arg: 1, scope: !5895, file: !3, line: 141, type: !5898)
!5902 = !DILocation(line: 141, column: 1, scope: !5895)
!5903 = distinct !DISubprogram(name: "__se_sys_capget", scope: !3, file: !3, line: 141, type: !5904, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5906)
!5904 = !DISubroutineType(types: !5905)
!5905 = !{!666, !666, !666}
!5906 = !{!5907, !5908, !5909}
!5907 = !DILocalVariable(name: "header", arg: 1, scope: !5903, file: !3, line: 141, type: !666)
!5908 = !DILocalVariable(name: "dataptr", arg: 2, scope: !5903, file: !3, line: 141, type: !666)
!5909 = !DILocalVariable(name: "ret", scope: !5903, file: !3, line: 141, type: !666)
!5910 = !DILocation(line: 141, column: 1, scope: !5903)
!5911 = !DILocation(line: 141, column: 1, scope: !5912)
!5912 = distinct !DILexicalBlock(scope: !5903, file: !3, line: 141, column: 1)
!5913 = distinct !DISubprogram(name: "__ia32_sys_capget", scope: !3, file: !3, line: 141, type: !5896, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5914)
!5914 = !{!5915}
!5915 = !DILocalVariable(name: "regs", arg: 1, scope: !5913, file: !3, line: 141, type: !5898)
!5916 = !DILocation(line: 141, column: 1, scope: !5913)
!5917 = distinct !DISubprogram(name: "__x64_sys_capset", scope: !3, file: !3, line: 220, type: !5896, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5918)
!5918 = !{!5919}
!5919 = !DILocalVariable(name: "regs", arg: 1, scope: !5917, file: !3, line: 220, type: !5898)
!5920 = !DILocation(line: 220, column: 1, scope: !5917)
!5921 = distinct !DISubprogram(name: "__se_sys_capset", scope: !3, file: !3, line: 220, type: !5904, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5922)
!5922 = !{!5923, !5924, !5925}
!5923 = !DILocalVariable(name: "header", arg: 1, scope: !5921, file: !3, line: 220, type: !666)
!5924 = !DILocalVariable(name: "data", arg: 2, scope: !5921, file: !3, line: 220, type: !666)
!5925 = !DILocalVariable(name: "ret", scope: !5921, file: !3, line: 220, type: !666)
!5926 = !DILocation(line: 220, column: 1, scope: !5921)
!5927 = !DILocation(line: 220, column: 1, scope: !5928)
!5928 = distinct !DILexicalBlock(scope: !5921, file: !3, line: 220, column: 1)
!5929 = distinct !DISubprogram(name: "__ia32_sys_capset", scope: !3, file: !3, line: 220, type: !5896, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5930)
!5930 = !{!5931}
!5931 = !DILocalVariable(name: "regs", arg: 1, scope: !5929, file: !3, line: 220, type: !5898)
!5932 = !DILocation(line: 220, column: 1, scope: !5929)
!5933 = distinct !DISubprogram(name: "has_ns_capability", scope: !3, file: !3, line: 280, type: !5934, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5936)
!5934 = !DISubroutineType(types: !5935)
!5935 = !{!421, !703, !513, !22}
!5936 = !{!5937, !5938, !5939, !5940, !5941}
!5937 = !DILocalVariable(name: "t", arg: 1, scope: !5933, file: !3, line: 280, type: !703)
!5938 = !DILocalVariable(name: "ns", arg: 2, scope: !5933, file: !3, line: 281, type: !513)
!5939 = !DILocalVariable(name: "cap", arg: 3, scope: !5933, file: !3, line: 281, type: !22)
!5940 = !DILocalVariable(name: "ret", scope: !5933, file: !3, line: 283, type: !22)
!5941 = !DILocalVariable(name: "__UNIQUE_ID_rcu316", scope: !5942, file: !3, line: 286, type: !268)
!5942 = distinct !DILexicalBlock(scope: !5933, file: !3, line: 286, column: 25)
!5943 = !DILocation(line: 280, column: 44, scope: !5933)
!5944 = !DILocation(line: 281, column: 33, scope: !5933)
!5945 = !DILocation(line: 281, column: 41, scope: !5933)
!5946 = !DILocation(line: 283, column: 2, scope: !5933)
!5947 = !DILocation(line: 283, column: 6, scope: !5933)
!5948 = !DILocation(line: 285, column: 2, scope: !5933)
!5949 = !DILocation(line: 286, column: 25, scope: !5942)
!5950 = !DILocation(line: 286, column: 25, scope: !5951)
!5951 = distinct !DILexicalBlock(scope: !5942, file: !3, line: 286, column: 25)
!5952 = !DILocation(line: 286, column: 25, scope: !5953)
!5953 = distinct !DILexicalBlock(scope: !5951, file: !3, line: 286, column: 25)
!5954 = !DILocation(line: 286, column: 25, scope: !5955)
!5955 = distinct !DILexicalBlock(scope: !5942, file: !3, line: 286, column: 25)
!5956 = !DILocation(line: 286, column: 25, scope: !5933)
!5957 = !DILocation(line: 286, column: 41, scope: !5933)
!5958 = !DILocation(line: 286, column: 45, scope: !5933)
!5959 = !DILocation(line: 286, column: 8, scope: !5933)
!5960 = !DILocation(line: 286, column: 6, scope: !5933)
!5961 = !DILocation(line: 287, column: 2, scope: !5933)
!5962 = !DILocation(line: 289, column: 10, scope: !5933)
!5963 = !DILocation(line: 289, column: 14, scope: !5933)
!5964 = !DILocation(line: 290, column: 1, scope: !5933)
!5965 = !DILocation(line: 289, column: 2, scope: !5933)
!5966 = distinct !DISubprogram(name: "rcu_read_lock", scope: !5967, file: !5967, line: 782, type: !2653, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5967 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!5968 = !DILocation(line: 784, column: 2, scope: !5966)
!5969 = !DILocation(line: 786, column: 2, scope: !5966)
!5970 = !DILocation(line: 786, column: 2, scope: !5971)
!5971 = distinct !DILexicalBlock(scope: !5966, file: !5967, line: 786, column: 2)
!5972 = !DILocation(line: 787, column: 2, scope: !5966)
!5973 = !DILocation(line: 787, column: 2, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5966, file: !5967, line: 787, column: 2)
!5975 = !DILocation(line: 789, column: 1, scope: !5966)
!5976 = !DISubprogram(name: "security_capable", scope: !2068, file: !2068, line: 283, type: !5977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5977 = !DISubroutineType(types: !5978)
!5978 = !{!22, !268, !513, !22, !7}
!5979 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !5967, file: !5967, line: 813, type: !2653, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5980 = !DILocation(line: 815, column: 2, scope: !5979)
!5981 = !DILocation(line: 815, column: 2, scope: !5982)
!5982 = distinct !DILexicalBlock(scope: !5979, file: !5967, line: 815, column: 2)
!5983 = !DILocation(line: 818, column: 2, scope: !5979)
!5984 = !DILocation(line: 819, column: 2, scope: !5979)
!5985 = !DILocation(line: 819, column: 2, scope: !5986)
!5986 = distinct !DILexicalBlock(scope: !5979, file: !5967, line: 819, column: 2)
!5987 = !DILocation(line: 820, column: 1, scope: !5979)
!5988 = distinct !DISubprogram(name: "has_capability", scope: !3, file: !3, line: 302, type: !5989, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5991)
!5989 = !DISubroutineType(types: !5990)
!5990 = !{!421, !703, !22}
!5991 = !{!5992, !5993}
!5992 = !DILocalVariable(name: "t", arg: 1, scope: !5988, file: !3, line: 302, type: !703)
!5993 = !DILocalVariable(name: "cap", arg: 2, scope: !5988, file: !3, line: 302, type: !22)
!5994 = !DILocation(line: 302, column: 41, scope: !5988)
!5995 = !DILocation(line: 302, column: 48, scope: !5988)
!5996 = !DILocation(line: 304, column: 27, scope: !5988)
!5997 = !DILocation(line: 304, column: 45, scope: !5988)
!5998 = !DILocation(line: 304, column: 9, scope: !5988)
!5999 = !DILocation(line: 304, column: 2, scope: !5988)
!6000 = distinct !DISubprogram(name: "has_ns_capability_noaudit", scope: !3, file: !3, line: 321, type: !5934, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6001)
!6001 = !{!6002, !6003, !6004, !6005, !6006}
!6002 = !DILocalVariable(name: "t", arg: 1, scope: !6000, file: !3, line: 321, type: !703)
!6003 = !DILocalVariable(name: "ns", arg: 2, scope: !6000, file: !3, line: 322, type: !513)
!6004 = !DILocalVariable(name: "cap", arg: 3, scope: !6000, file: !3, line: 322, type: !22)
!6005 = !DILocalVariable(name: "ret", scope: !6000, file: !3, line: 324, type: !22)
!6006 = !DILocalVariable(name: "__UNIQUE_ID_rcu319", scope: !6007, file: !3, line: 327, type: !268)
!6007 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 327, column: 25)
!6008 = !DILocation(line: 321, column: 52, scope: !6000)
!6009 = !DILocation(line: 322, column: 34, scope: !6000)
!6010 = !DILocation(line: 322, column: 42, scope: !6000)
!6011 = !DILocation(line: 324, column: 2, scope: !6000)
!6012 = !DILocation(line: 324, column: 6, scope: !6000)
!6013 = !DILocation(line: 326, column: 2, scope: !6000)
!6014 = !DILocation(line: 327, column: 25, scope: !6007)
!6015 = !DILocation(line: 327, column: 25, scope: !6016)
!6016 = distinct !DILexicalBlock(scope: !6007, file: !3, line: 327, column: 25)
!6017 = !DILocation(line: 327, column: 25, scope: !6018)
!6018 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 327, column: 25)
!6019 = !DILocation(line: 327, column: 25, scope: !6020)
!6020 = distinct !DILexicalBlock(scope: !6007, file: !3, line: 327, column: 25)
!6021 = !DILocation(line: 327, column: 25, scope: !6000)
!6022 = !DILocation(line: 327, column: 41, scope: !6000)
!6023 = !DILocation(line: 327, column: 45, scope: !6000)
!6024 = !DILocation(line: 327, column: 8, scope: !6000)
!6025 = !DILocation(line: 327, column: 6, scope: !6000)
!6026 = !DILocation(line: 328, column: 2, scope: !6000)
!6027 = !DILocation(line: 330, column: 10, scope: !6000)
!6028 = !DILocation(line: 330, column: 14, scope: !6000)
!6029 = !DILocation(line: 331, column: 1, scope: !6000)
!6030 = !DILocation(line: 330, column: 2, scope: !6000)
!6031 = distinct !DISubprogram(name: "has_capability_noaudit", scope: !3, file: !3, line: 345, type: !5989, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6032)
!6032 = !{!6033, !6034}
!6033 = !DILocalVariable(name: "t", arg: 1, scope: !6031, file: !3, line: 345, type: !703)
!6034 = !DILocalVariable(name: "cap", arg: 2, scope: !6031, file: !3, line: 345, type: !22)
!6035 = !DILocation(line: 345, column: 49, scope: !6031)
!6036 = !DILocation(line: 345, column: 56, scope: !6031)
!6037 = !DILocation(line: 347, column: 35, scope: !6031)
!6038 = !DILocation(line: 347, column: 53, scope: !6031)
!6039 = !DILocation(line: 347, column: 9, scope: !6031)
!6040 = !DILocation(line: 347, column: 2, scope: !6031)
!6041 = distinct !DISubprogram(name: "ns_capable", scope: !3, file: !3, line: 381, type: !6042, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6044)
!6042 = !DISubroutineType(types: !6043)
!6043 = !{!421, !513, !22}
!6044 = !{!6045, !6046}
!6045 = !DILocalVariable(name: "ns", arg: 1, scope: !6041, file: !3, line: 381, type: !513)
!6046 = !DILocalVariable(name: "cap", arg: 2, scope: !6041, file: !3, line: 381, type: !22)
!6047 = !DILocation(line: 381, column: 40, scope: !6041)
!6048 = !DILocation(line: 381, column: 48, scope: !6041)
!6049 = !DILocation(line: 383, column: 27, scope: !6041)
!6050 = !DILocation(line: 383, column: 31, scope: !6041)
!6051 = !DILocation(line: 383, column: 9, scope: !6041)
!6052 = !DILocation(line: 383, column: 2, scope: !6041)
!6053 = distinct !DISubprogram(name: "ns_capable_common", scope: !3, file: !3, line: 351, type: !6054, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6056)
!6054 = !DISubroutineType(types: !6055)
!6055 = !{!421, !513, !22, !7}
!6056 = !{!6057, !6058, !6059, !6060}
!6057 = !DILocalVariable(name: "ns", arg: 1, scope: !6053, file: !3, line: 351, type: !513)
!6058 = !DILocalVariable(name: "cap", arg: 2, scope: !6053, file: !3, line: 352, type: !22)
!6059 = !DILocalVariable(name: "opts", arg: 3, scope: !6053, file: !3, line: 353, type: !7)
!6060 = !DILocalVariable(name: "capable", scope: !6053, file: !3, line: 355, type: !22)
!6061 = !DILocation(line: 351, column: 54, scope: !6053)
!6062 = !DILocation(line: 352, column: 14, scope: !6053)
!6063 = !DILocation(line: 353, column: 23, scope: !6053)
!6064 = !DILocation(line: 355, column: 2, scope: !6053)
!6065 = !DILocation(line: 355, column: 6, scope: !6053)
!6066 = !DILocation(line: 357, column: 6, scope: !6067)
!6067 = distinct !DILexicalBlock(scope: !6053, file: !3, line: 357, column: 6)
!6068 = !DILocation(line: 0, scope: !6067)
!6069 = !DILocation(line: 357, column: 6, scope: !6053)
!6070 = !DILocation(line: 358, column: 3, scope: !6071)
!6071 = distinct !DILexicalBlock(scope: !6072, file: !3, line: 358, column: 3)
!6072 = distinct !DILexicalBlock(scope: !6067, file: !3, line: 357, column: 33)
!6073 = !DILocation(line: 358, column: 3, scope: !6074)
!6074 = distinct !DILexicalBlock(scope: !6071, file: !3, line: 358, column: 3)
!6075 = !DILocation(line: 359, column: 3, scope: !6072)
!6076 = !DILocation(line: 359, column: 3, scope: !6077)
!6077 = distinct !DILexicalBlock(scope: !6072, file: !3, line: 359, column: 3)
!6078 = !DILocation(line: 359, column: 3, scope: !6079)
!6079 = distinct !DILexicalBlock(scope: !6077, file: !3, line: 359, column: 3)
!6080 = !DILocation(line: 359, column: 3, scope: !6081)
!6081 = distinct !DILexicalBlock(scope: !6077, file: !3, line: 359, column: 3)
!6082 = !{i64 2155641181, i64 2155641210, i64 2155641256, i64 2155641314, i64 2155641368, i64 2155641422, i64 2155641477, i64 2155641508}
!6083 = !DILocation(line: 360, column: 2, scope: !6072)
!6084 = !DILocation(line: 362, column: 29, scope: !6085)
!6085 = distinct !DILexicalBlock(scope: !6053, file: !3, line: 362, column: 29)
!6086 = !DILocation(line: 362, column: 29, scope: !6087)
!6087 = distinct !DILexicalBlock(scope: !6085, file: !3, line: 362, column: 29)
!6088 = !DILocation(line: 362, column: 45, scope: !6053)
!6089 = !DILocation(line: 362, column: 49, scope: !6053)
!6090 = !DILocation(line: 362, column: 54, scope: !6053)
!6091 = !DILocation(line: 362, column: 12, scope: !6053)
!6092 = !DILocation(line: 362, column: 10, scope: !6053)
!6093 = !DILocation(line: 363, column: 6, scope: !6094)
!6094 = distinct !DILexicalBlock(scope: !6053, file: !3, line: 363, column: 6)
!6095 = !DILocation(line: 363, column: 14, scope: !6094)
!6096 = !DILocation(line: 363, column: 6, scope: !6053)
!6097 = !DILocation(line: 364, column: 3, scope: !6098)
!6098 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 363, column: 20)
!6099 = !DILocation(line: 364, column: 12, scope: !6098)
!6100 = !DILocation(line: 364, column: 18, scope: !6098)
!6101 = !DILocation(line: 365, column: 3, scope: !6098)
!6102 = !DILocation(line: 367, column: 2, scope: !6053)
!6103 = !DILocation(line: 368, column: 1, scope: !6053)
!6104 = distinct !DISubprogram(name: "ns_capable_noaudit", scope: !3, file: !3, line: 399, type: !6042, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6105)
!6105 = !{!6106, !6107}
!6106 = !DILocalVariable(name: "ns", arg: 1, scope: !6104, file: !3, line: 399, type: !513)
!6107 = !DILocalVariable(name: "cap", arg: 2, scope: !6104, file: !3, line: 399, type: !22)
!6108 = !DILocation(line: 399, column: 48, scope: !6104)
!6109 = !DILocation(line: 399, column: 56, scope: !6104)
!6110 = !DILocation(line: 401, column: 27, scope: !6104)
!6111 = !DILocation(line: 401, column: 31, scope: !6104)
!6112 = !DILocation(line: 401, column: 9, scope: !6104)
!6113 = !DILocation(line: 401, column: 2, scope: !6104)
!6114 = distinct !DISubprogram(name: "ns_capable_setid", scope: !3, file: !3, line: 418, type: !6042, scopeLine: 419, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6115)
!6115 = !{!6116, !6117}
!6116 = !DILocalVariable(name: "ns", arg: 1, scope: !6114, file: !3, line: 418, type: !513)
!6117 = !DILocalVariable(name: "cap", arg: 2, scope: !6114, file: !3, line: 418, type: !22)
!6118 = !DILocation(line: 418, column: 46, scope: !6114)
!6119 = !DILocation(line: 418, column: 54, scope: !6114)
!6120 = !DILocation(line: 420, column: 27, scope: !6114)
!6121 = !DILocation(line: 420, column: 31, scope: !6114)
!6122 = !DILocation(line: 420, column: 9, scope: !6114)
!6123 = !DILocation(line: 420, column: 2, scope: !6114)
!6124 = distinct !DISubprogram(name: "capable", scope: !3, file: !3, line: 434, type: !6125, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6127)
!6125 = !DISubroutineType(types: !6126)
!6126 = !{!421, !22}
!6127 = !{!6128}
!6128 = !DILocalVariable(name: "cap", arg: 1, scope: !6124, file: !3, line: 434, type: !22)
!6129 = !DILocation(line: 434, column: 18, scope: !6124)
!6130 = !DILocation(line: 436, column: 35, scope: !6124)
!6131 = !DILocation(line: 436, column: 9, scope: !6124)
!6132 = !DILocation(line: 436, column: 2, scope: !6124)
!6133 = distinct !DISubprogram(name: "file_ns_capable", scope: !3, file: !3, line: 453, type: !6134, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6136)
!6134 = !DISubroutineType(types: !6135)
!6135 = !{!421, !2163, !513, !22}
!6136 = !{!6137, !6138, !6139, !6140, !6143}
!6137 = !DILocalVariable(name: "file", arg: 1, scope: !6133, file: !3, line: 453, type: !2163)
!6138 = !DILocalVariable(name: "ns", arg: 2, scope: !6133, file: !3, line: 453, type: !513)
!6139 = !DILocalVariable(name: "cap", arg: 3, scope: !6133, file: !3, line: 454, type: !22)
!6140 = !DILocalVariable(name: "__ret_warn_on", scope: !6141, file: !3, line: 457, type: !22)
!6141 = distinct !DILexicalBlock(scope: !6142, file: !3, line: 457, column: 6)
!6142 = distinct !DILexicalBlock(scope: !6133, file: !3, line: 457, column: 6)
!6143 = !DILocalVariable(name: "__flags", scope: !6144, file: !3, line: 457, type: !22)
!6144 = distinct !DILexicalBlock(scope: !6145, file: !3, line: 457, column: 6)
!6145 = distinct !DILexicalBlock(scope: !6141, file: !3, line: 457, column: 6)
!6146 = !DILocation(line: 453, column: 41, scope: !6133)
!6147 = !DILocation(line: 453, column: 70, scope: !6133)
!6148 = !DILocation(line: 454, column: 12, scope: !6133)
!6149 = !DILocation(line: 457, column: 6, scope: !6141)
!6150 = !DILocation(line: 0, scope: !6141)
!6151 = !DILocation(line: 457, column: 6, scope: !6145)
!6152 = !DILocation(line: 457, column: 6, scope: !6144)
!6153 = !DILocation(line: 457, column: 6, scope: !6154)
!6154 = distinct !DILexicalBlock(scope: !6144, file: !3, line: 457, column: 6)
!6155 = !DILocation(line: 457, column: 6, scope: !6156)
!6156 = distinct !DILexicalBlock(scope: !6144, file: !3, line: 457, column: 6)
!6157 = !{i64 2155649793, i64 2155649822, i64 2155649868, i64 2155649926, i64 2155649980, i64 2155650034, i64 2155650089, i64 2155650120, i64 2155650428, i64 2155650434, i64 2155650481, i64 2155650504, i64 2155650530}
!6158 = !DILocation(line: 457, column: 6, scope: !6159)
!6159 = distinct !DILexicalBlock(scope: !6144, file: !3, line: 457, column: 6)
!6160 = !DILocation(line: 457, column: 6, scope: !6142)
!6161 = !DILocation(line: 457, column: 6, scope: !6133)
!6162 = !DILocation(line: 458, column: 3, scope: !6142)
!6163 = !DILocation(line: 460, column: 23, scope: !6164)
!6164 = distinct !DILexicalBlock(scope: !6133, file: !3, line: 460, column: 6)
!6165 = !DILocation(line: 460, column: 29, scope: !6164)
!6166 = !DILocation(line: 460, column: 37, scope: !6164)
!6167 = !DILocation(line: 460, column: 41, scope: !6164)
!6168 = !DILocation(line: 460, column: 6, scope: !6164)
!6169 = !DILocation(line: 460, column: 60, scope: !6164)
!6170 = !DILocation(line: 460, column: 6, scope: !6133)
!6171 = !DILocation(line: 461, column: 3, scope: !6164)
!6172 = !DILocation(line: 463, column: 2, scope: !6133)
!6173 = !DILocation(line: 464, column: 1, scope: !6133)
!6174 = distinct !DISubprogram(name: "privileged_wrt_inode_uidgid", scope: !3, file: !3, line: 475, type: !6175, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6177)
!6175 = !DISubroutineType(types: !6176)
!6176 = !{!421, !513, !1226, !4482}
!6177 = !{!6178, !6179, !6180}
!6178 = !DILocalVariable(name: "ns", arg: 1, scope: !6174, file: !3, line: 475, type: !513)
!6179 = !DILocalVariable(name: "idmap", arg: 2, scope: !6174, file: !3, line: 476, type: !1226)
!6180 = !DILocalVariable(name: "inode", arg: 3, scope: !6174, file: !3, line: 477, type: !4482)
!6181 = !DILocation(line: 475, column: 57, scope: !6174)
!6182 = !DILocation(line: 476, column: 24, scope: !6174)
!6183 = !DILocation(line: 477, column: 26, scope: !6174)
!6184 = !DILocation(line: 479, column: 28, scope: !6174)
!6185 = !DILocation(line: 479, column: 50, scope: !6174)
!6186 = !DILocation(line: 479, column: 57, scope: !6174)
!6187 = !DILocation(line: 479, column: 32, scope: !6174)
!6188 = !DILocation(line: 479, column: 9, scope: !6174)
!6189 = !DILocation(line: 479, column: 65, scope: !6174)
!6190 = !DILocation(line: 480, column: 28, scope: !6174)
!6191 = !DILocation(line: 480, column: 50, scope: !6174)
!6192 = !DILocation(line: 480, column: 57, scope: !6174)
!6193 = !DILocation(line: 480, column: 32, scope: !6174)
!6194 = !DILocation(line: 480, column: 9, scope: !6174)
!6195 = !DILocation(line: 0, scope: !6174)
!6196 = !DILocation(line: 479, column: 2, scope: !6174)
!6197 = distinct !DISubprogram(name: "vfsuid_has_mapping", scope: !1282, file: !1282, line: 149, type: !6198, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6200)
!6198 = !DISubroutineType(types: !6199)
!6199 = !{!421, !513, !1281}
!6200 = !{!6201, !6202}
!6201 = !DILocalVariable(name: "userns", arg: 1, scope: !6197, file: !1282, line: 149, type: !513)
!6202 = !DILocalVariable(name: "vfsuid", arg: 2, scope: !6197, file: !1282, line: 150, type: !1281)
!6203 = !DILocation(line: 149, column: 62, scope: !6197)
!6204 = !DILocation(line: 150, column: 20, scope: !6197)
!6205 = !DILocation(line: 152, column: 19, scope: !6197)
!6206 = !DILocation(line: 152, column: 27, scope: !6197)
!6207 = !DILocation(line: 152, column: 9, scope: !6197)
!6208 = !DILocation(line: 152, column: 45, scope: !6197)
!6209 = !DILocation(line: 152, column: 2, scope: !6197)
!6210 = distinct !DISubprogram(name: "i_uid_into_vfsuid", scope: !239, file: !239, line: 1362, type: !6211, scopeLine: 1364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6213)
!6211 = !DISubroutineType(types: !6212)
!6212 = !{!1281, !1226, !4482}
!6213 = !{!6214, !6215}
!6214 = !DILocalVariable(name: "idmap", arg: 1, scope: !6210, file: !239, line: 1362, type: !1226)
!6215 = !DILocalVariable(name: "inode", arg: 2, scope: !6210, file: !239, line: 1363, type: !4482)
!6216 = !DILocation(line: 1362, column: 60, scope: !6210)
!6217 = !DILocation(line: 1363, column: 27, scope: !6210)
!6218 = !DILocation(line: 1365, column: 21, scope: !6210)
!6219 = !DILocation(line: 1365, column: 38, scope: !6210)
!6220 = !DILocation(line: 1365, column: 28, scope: !6210)
!6221 = !DILocation(line: 1365, column: 46, scope: !6210)
!6222 = !DILocation(line: 1365, column: 53, scope: !6210)
!6223 = !DILocation(line: 1365, column: 9, scope: !6210)
!6224 = !DILocation(line: 1365, column: 2, scope: !6210)
!6225 = distinct !DISubprogram(name: "vfsgid_has_mapping", scope: !1282, file: !1282, line: 187, type: !6226, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6228)
!6226 = !DISubroutineType(types: !6227)
!6227 = !{!421, !513, !1291}
!6228 = !{!6229, !6230}
!6229 = !DILocalVariable(name: "userns", arg: 1, scope: !6225, file: !1282, line: 187, type: !513)
!6230 = !DILocalVariable(name: "vfsgid", arg: 2, scope: !6225, file: !1282, line: 188, type: !1291)
!6231 = !DILocation(line: 187, column: 62, scope: !6225)
!6232 = !DILocation(line: 188, column: 20, scope: !6225)
!6233 = !DILocation(line: 190, column: 19, scope: !6225)
!6234 = !DILocation(line: 190, column: 27, scope: !6225)
!6235 = !DILocation(line: 190, column: 9, scope: !6225)
!6236 = !DILocation(line: 190, column: 45, scope: !6225)
!6237 = !DILocation(line: 190, column: 2, scope: !6225)
!6238 = distinct !DISubprogram(name: "i_gid_into_vfsgid", scope: !239, file: !239, line: 1414, type: !6239, scopeLine: 1416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6241)
!6239 = !DISubroutineType(types: !6240)
!6240 = !{!1291, !1226, !4482}
!6241 = !{!6242, !6243}
!6242 = !DILocalVariable(name: "idmap", arg: 1, scope: !6238, file: !239, line: 1414, type: !1226)
!6243 = !DILocalVariable(name: "inode", arg: 2, scope: !6238, file: !239, line: 1415, type: !4482)
!6244 = !DILocation(line: 1414, column: 60, scope: !6238)
!6245 = !DILocation(line: 1415, column: 27, scope: !6238)
!6246 = !DILocation(line: 1417, column: 21, scope: !6238)
!6247 = !DILocation(line: 1417, column: 38, scope: !6238)
!6248 = !DILocation(line: 1417, column: 28, scope: !6238)
!6249 = !DILocation(line: 1417, column: 46, scope: !6238)
!6250 = !DILocation(line: 1417, column: 53, scope: !6238)
!6251 = !DILocation(line: 1417, column: 9, scope: !6238)
!6252 = !DILocation(line: 1417, column: 2, scope: !6238)
!6253 = distinct !DISubprogram(name: "capable_wrt_inode_uidgid", scope: !3, file: !3, line: 493, type: !6254, scopeLine: 495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6256)
!6254 = !DISubroutineType(types: !6255)
!6255 = !{!421, !1226, !4482, !22}
!6256 = !{!6257, !6258, !6259, !6260}
!6257 = !DILocalVariable(name: "idmap", arg: 1, scope: !6253, file: !3, line: 493, type: !1226)
!6258 = !DILocalVariable(name: "inode", arg: 2, scope: !6253, file: !3, line: 494, type: !4482)
!6259 = !DILocalVariable(name: "cap", arg: 3, scope: !6253, file: !3, line: 494, type: !22)
!6260 = !DILocalVariable(name: "ns", scope: !6253, file: !3, line: 496, type: !513)
!6261 = !DILocation(line: 493, column: 49, scope: !6253)
!6262 = !DILocation(line: 494, column: 30, scope: !6253)
!6263 = !DILocation(line: 494, column: 41, scope: !6253)
!6264 = !DILocation(line: 496, column: 2, scope: !6253)
!6265 = !DILocation(line: 496, column: 25, scope: !6253)
!6266 = !DILocation(line: 496, column: 30, scope: !6253)
!6267 = !DILocation(line: 498, column: 20, scope: !6253)
!6268 = !DILocation(line: 498, column: 24, scope: !6253)
!6269 = !DILocation(line: 498, column: 9, scope: !6253)
!6270 = !DILocation(line: 498, column: 29, scope: !6253)
!6271 = !DILocation(line: 499, column: 37, scope: !6253)
!6272 = !DILocation(line: 499, column: 41, scope: !6253)
!6273 = !DILocation(line: 499, column: 48, scope: !6253)
!6274 = !DILocation(line: 499, column: 9, scope: !6253)
!6275 = !DILocation(line: 0, scope: !6253)
!6276 = !DILocation(line: 500, column: 1, scope: !6253)
!6277 = !DILocation(line: 498, column: 2, scope: !6253)
!6278 = distinct !DISubprogram(name: "current_user_ns", scope: !271, file: !271, line: 346, type: !6279, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6279 = !DISubroutineType(types: !6280)
!6280 = !{!513}
!6281 = !DILocation(line: 348, column: 2, scope: !6278)
!6282 = distinct !DISubprogram(name: "ptracer_capable", scope: !3, file: !3, line: 511, type: !6283, scopeLine: 512, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6285)
!6283 = !DISubroutineType(types: !6284)
!6284 = !{!421, !703, !513}
!6285 = !{!6286, !6287, !6288, !6289, !6290}
!6286 = !DILocalVariable(name: "tsk", arg: 1, scope: !6282, file: !3, line: 511, type: !703)
!6287 = !DILocalVariable(name: "ns", arg: 2, scope: !6282, file: !3, line: 511, type: !513)
!6288 = !DILocalVariable(name: "ret", scope: !6282, file: !3, line: 513, type: !22)
!6289 = !DILocalVariable(name: "cred", scope: !6282, file: !3, line: 514, type: !268)
!6290 = !DILocalVariable(name: "__UNIQUE_ID_rcu328", scope: !6291, file: !3, line: 517, type: !268)
!6291 = distinct !DILexicalBlock(scope: !6282, file: !3, line: 517, column: 9)
!6292 = !DILocation(line: 511, column: 42, scope: !6282)
!6293 = !DILocation(line: 511, column: 70, scope: !6282)
!6294 = !DILocation(line: 513, column: 2, scope: !6282)
!6295 = !DILocation(line: 513, column: 6, scope: !6282)
!6296 = !DILocation(line: 514, column: 2, scope: !6282)
!6297 = !DILocation(line: 514, column: 21, scope: !6282)
!6298 = !DILocation(line: 516, column: 2, scope: !6282)
!6299 = !DILocation(line: 517, column: 9, scope: !6291)
!6300 = !DILocation(line: 517, column: 9, scope: !6301)
!6301 = distinct !DILexicalBlock(scope: !6291, file: !3, line: 517, column: 9)
!6302 = !DILocation(line: 517, column: 9, scope: !6303)
!6303 = distinct !DILexicalBlock(scope: !6301, file: !3, line: 517, column: 9)
!6304 = !DILocation(line: 517, column: 9, scope: !6305)
!6305 = distinct !DILexicalBlock(scope: !6291, file: !3, line: 517, column: 9)
!6306 = !DILocation(line: 517, column: 9, scope: !6282)
!6307 = !DILocation(line: 517, column: 7, scope: !6282)
!6308 = !DILocation(line: 518, column: 6, scope: !6309)
!6309 = distinct !DILexicalBlock(scope: !6282, file: !3, line: 518, column: 6)
!6310 = !DILocation(line: 518, column: 6, scope: !6282)
!6311 = !DILocation(line: 519, column: 26, scope: !6309)
!6312 = !DILocation(line: 519, column: 32, scope: !6309)
!6313 = !DILocation(line: 519, column: 9, scope: !6309)
!6314 = !DILocation(line: 519, column: 7, scope: !6309)
!6315 = !DILocation(line: 519, column: 3, scope: !6309)
!6316 = !DILocation(line: 521, column: 2, scope: !6282)
!6317 = !DILocation(line: 522, column: 10, scope: !6282)
!6318 = !DILocation(line: 522, column: 14, scope: !6282)
!6319 = !DILocation(line: 523, column: 1, scope: !6282)
!6320 = !DILocation(line: 522, column: 2, scope: !6282)
!6321 = distinct !DISubprogram(name: "__do_sys_capget", scope: !3, file: !3, line: 141, type: !6322, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6324)
!6322 = !DISubroutineType(types: !6323)
!6323 = !{!666, !688, !695}
!6324 = !{!6325, !6326, !6327, !6328, !6329, !6330, !6331, !6332, !6333, !6335, !6339, !6340}
!6325 = !DILocalVariable(name: "header", arg: 1, scope: !6321, file: !3, line: 141, type: !688)
!6326 = !DILocalVariable(name: "dataptr", arg: 2, scope: !6321, file: !3, line: 141, type: !695)
!6327 = !DILocalVariable(name: "ret", scope: !6321, file: !3, line: 143, type: !22)
!6328 = !DILocalVariable(name: "pid", scope: !6321, file: !3, line: 144, type: !4968)
!6329 = !DILocalVariable(name: "tocopy", scope: !6321, file: !3, line: 145, type: !7)
!6330 = !DILocalVariable(name: "pE", scope: !6321, file: !3, line: 146, type: !305)
!6331 = !DILocalVariable(name: "pI", scope: !6321, file: !3, line: 146, type: !305)
!6332 = !DILocalVariable(name: "pP", scope: !6321, file: !3, line: 146, type: !305)
!6333 = !DILocalVariable(name: "kdata", scope: !6321, file: !3, line: 147, type: !6334)
!6334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !697, size: 192, elements: !2367)
!6335 = !DILocalVariable(name: "__ret_gu", scope: !6336, file: !3, line: 153, type: !22)
!6336 = distinct !DILexicalBlock(scope: !6337, file: !3, line: 153, column: 6)
!6337 = distinct !DILexicalBlock(scope: !6338, file: !3, line: 153, column: 6)
!6338 = distinct !DILexicalBlock(scope: !6321, file: !3, line: 153, column: 6)
!6339 = !DILocalVariable(name: "__val_gu", scope: !6336, file: !3, line: 153, type: !7)
!6340 = !DILocalVariable(name: "__tmp", scope: !6341, file: !3, line: 153, type: !310)
!6341 = distinct !DILexicalBlock(scope: !6336, file: !3, line: 153, column: 6)
!6342 = !DILocation(line: 141, column: 1, scope: !6321)
!6343 = !DILocation(line: 143, column: 2, scope: !6321)
!6344 = !DILocation(line: 143, column: 6, scope: !6321)
!6345 = !DILocation(line: 144, column: 2, scope: !6321)
!6346 = !DILocation(line: 144, column: 8, scope: !6321)
!6347 = !DILocation(line: 145, column: 2, scope: !6321)
!6348 = !DILocation(line: 145, column: 11, scope: !6321)
!6349 = !DILocation(line: 146, column: 2, scope: !6321)
!6350 = !DILocation(line: 146, column: 15, scope: !6321)
!6351 = !DILocation(line: 146, column: 19, scope: !6321)
!6352 = !DILocation(line: 146, column: 23, scope: !6321)
!6353 = !DILocation(line: 147, column: 2, scope: !6321)
!6354 = !DILocation(line: 147, column: 32, scope: !6321)
!6355 = !DILocation(line: 149, column: 27, scope: !6321)
!6356 = !DILocation(line: 149, column: 8, scope: !6321)
!6357 = !DILocation(line: 149, column: 6, scope: !6321)
!6358 = !DILocation(line: 150, column: 7, scope: !6359)
!6359 = distinct !DILexicalBlock(scope: !6321, file: !3, line: 150, column: 6)
!6360 = !DILocation(line: 150, column: 15, scope: !6359)
!6361 = !DILocation(line: 150, column: 24, scope: !6359)
!6362 = !DILocation(line: 150, column: 28, scope: !6359)
!6363 = !DILocation(line: 150, column: 32, scope: !6359)
!6364 = !DILocation(line: 150, column: 6, scope: !6321)
!6365 = !DILocation(line: 151, column: 12, scope: !6359)
!6366 = !DILocation(line: 151, column: 20, scope: !6359)
!6367 = !DILocation(line: 151, column: 29, scope: !6359)
!6368 = !DILocation(line: 151, column: 33, scope: !6359)
!6369 = !DILocation(line: 151, column: 37, scope: !6359)
!6370 = !DILocation(line: 151, column: 10, scope: !6359)
!6371 = !DILocation(line: 151, column: 56, scope: !6359)
!6372 = !DILocation(line: 151, column: 3, scope: !6359)
!6373 = !DILocation(line: 153, column: 6, scope: !6337)
!6374 = !DILocation(line: 153, column: 6, scope: !6336)
!6375 = !{i64 2155609799}
!6376 = !DILocation(line: 153, column: 6, scope: !6341)
!6377 = !DILocation(line: 153, column: 6, scope: !6338)
!6378 = !DILocation(line: 153, column: 6, scope: !6321)
!6379 = !DILocation(line: 154, column: 3, scope: !6338)
!6380 = !DILocation(line: 156, column: 6, scope: !6381)
!6381 = distinct !DILexicalBlock(scope: !6321, file: !3, line: 156, column: 6)
!6382 = !DILocation(line: 156, column: 10, scope: !6381)
!6383 = !DILocation(line: 156, column: 6, scope: !6321)
!6384 = !DILocation(line: 157, column: 3, scope: !6381)
!6385 = !DILocation(line: 159, column: 27, scope: !6321)
!6386 = !DILocation(line: 159, column: 8, scope: !6321)
!6387 = !DILocation(line: 159, column: 6, scope: !6321)
!6388 = !DILocation(line: 160, column: 6, scope: !6389)
!6389 = distinct !DILexicalBlock(scope: !6321, file: !3, line: 160, column: 6)
!6390 = !DILocation(line: 160, column: 6, scope: !6321)
!6391 = !DILocation(line: 161, column: 10, scope: !6389)
!6392 = !DILocation(line: 161, column: 3, scope: !6389)
!6393 = !DILocation(line: 168, column: 28, scope: !6321)
!6394 = !DILocation(line: 168, column: 25, scope: !6321)
!6395 = !DILocation(line: 168, column: 2, scope: !6321)
!6396 = !DILocation(line: 168, column: 11, scope: !6321)
!6397 = !DILocation(line: 168, column: 23, scope: !6321)
!6398 = !DILocation(line: 168, column: 59, scope: !6321)
!6399 = !DILocation(line: 168, column: 63, scope: !6321)
!6400 = !DILocation(line: 168, column: 56, scope: !6321)
!6401 = !DILocation(line: 168, column: 33, scope: !6321)
!6402 = !DILocation(line: 168, column: 42, scope: !6321)
!6403 = !DILocation(line: 168, column: 54, scope: !6321)
!6404 = !DILocation(line: 169, column: 28, scope: !6321)
!6405 = !DILocation(line: 169, column: 25, scope: !6321)
!6406 = !DILocation(line: 169, column: 2, scope: !6321)
!6407 = !DILocation(line: 169, column: 11, scope: !6321)
!6408 = !DILocation(line: 169, column: 23, scope: !6321)
!6409 = !DILocation(line: 169, column: 59, scope: !6321)
!6410 = !DILocation(line: 169, column: 63, scope: !6321)
!6411 = !DILocation(line: 169, column: 56, scope: !6321)
!6412 = !DILocation(line: 169, column: 33, scope: !6321)
!6413 = !DILocation(line: 169, column: 42, scope: !6321)
!6414 = !DILocation(line: 169, column: 54, scope: !6321)
!6415 = !DILocation(line: 170, column: 28, scope: !6321)
!6416 = !DILocation(line: 170, column: 25, scope: !6321)
!6417 = !DILocation(line: 170, column: 2, scope: !6321)
!6418 = !DILocation(line: 170, column: 11, scope: !6321)
!6419 = !DILocation(line: 170, column: 23, scope: !6321)
!6420 = !DILocation(line: 170, column: 59, scope: !6321)
!6421 = !DILocation(line: 170, column: 63, scope: !6321)
!6422 = !DILocation(line: 170, column: 56, scope: !6321)
!6423 = !DILocation(line: 170, column: 33, scope: !6321)
!6424 = !DILocation(line: 170, column: 42, scope: !6321)
!6425 = !DILocation(line: 170, column: 54, scope: !6321)
!6426 = !DILocation(line: 191, column: 19, scope: !6427)
!6427 = distinct !DILexicalBlock(scope: !6321, file: !3, line: 191, column: 6)
!6428 = !DILocation(line: 191, column: 28, scope: !6427)
!6429 = !DILocation(line: 191, column: 35, scope: !6427)
!6430 = !DILocation(line: 191, column: 42, scope: !6427)
!6431 = !DILocation(line: 191, column: 6, scope: !6427)
!6432 = !DILocation(line: 191, column: 6, scope: !6321)
!6433 = !DILocation(line: 192, column: 3, scope: !6427)
!6434 = !DILocation(line: 194, column: 2, scope: !6321)
!6435 = !DILocation(line: 195, column: 1, scope: !6321)
!6436 = distinct !DISubprogram(name: "cap_validate_magic", scope: !3, file: !3, line: 75, type: !6437, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6439)
!6437 = !DISubroutineType(types: !6438)
!6438 = !{!22, !688, !2329}
!6439 = !{!6440, !6441, !6442, !6443, !6447, !6448, !6450, !6455, !6456, !6457, !6458}
!6440 = !DILocalVariable(name: "header", arg: 1, scope: !6436, file: !3, line: 75, type: !688)
!6441 = !DILocalVariable(name: "tocopy", arg: 2, scope: !6436, file: !3, line: 75, type: !2329)
!6442 = !DILocalVariable(name: "version", scope: !6436, file: !3, line: 77, type: !378)
!6443 = !DILocalVariable(name: "__ret_gu", scope: !6444, file: !3, line: 79, type: !22)
!6444 = distinct !DILexicalBlock(scope: !6445, file: !3, line: 79, column: 6)
!6445 = distinct !DILexicalBlock(scope: !6446, file: !3, line: 79, column: 6)
!6446 = distinct !DILexicalBlock(scope: !6436, file: !3, line: 79, column: 6)
!6447 = !DILocalVariable(name: "__val_gu", scope: !6444, file: !3, line: 79, type: !7)
!6448 = !DILocalVariable(name: "__tmp", scope: !6449, file: !3, line: 79, type: !310)
!6449 = distinct !DILexicalBlock(scope: !6444, file: !3, line: 79, column: 6)
!6450 = !DILocalVariable(name: "__ret_pu", scope: !6451, file: !3, line: 94, type: !22)
!6451 = distinct !DILexicalBlock(scope: !6452, file: !3, line: 94, column: 7)
!6452 = distinct !DILexicalBlock(scope: !6453, file: !3, line: 94, column: 7)
!6453 = distinct !DILexicalBlock(scope: !6454, file: !3, line: 94, column: 7)
!6454 = distinct !DILexicalBlock(scope: !6436, file: !3, line: 82, column: 19)
!6455 = !DILocalVariable(name: "__ptr_pu", scope: !6451, file: !3, line: 94, type: !20)
!6456 = !DILocalVariable(name: "__val_pu", scope: !6451, file: !3, line: 94, type: !378)
!6457 = !DILocalVariable(name: "__x", scope: !6451, file: !3, line: 94, type: !378)
!6458 = !DILocalVariable(name: "__ptr", scope: !6451, file: !3, line: 94, type: !6459)
!6459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!6460 = !DILocation(line: 75, column: 49, scope: !6436)
!6461 = !DILocation(line: 75, column: 67, scope: !6436)
!6462 = !DILocation(line: 77, column: 2, scope: !6436)
!6463 = !DILocation(line: 77, column: 8, scope: !6436)
!6464 = !DILocation(line: 79, column: 6, scope: !6445)
!6465 = !DILocation(line: 79, column: 6, scope: !6444)
!6466 = !{i64 2155596528}
!6467 = !DILocation(line: 79, column: 6, scope: !6449)
!6468 = !DILocation(line: 79, column: 6, scope: !6446)
!6469 = !DILocation(line: 79, column: 6, scope: !6436)
!6470 = !DILocation(line: 80, column: 3, scope: !6446)
!6471 = !DILocation(line: 82, column: 10, scope: !6436)
!6472 = !DILocation(line: 82, column: 2, scope: !6436)
!6473 = !DILocation(line: 84, column: 3, scope: !6454)
!6474 = !DILocation(line: 85, column: 4, scope: !6454)
!6475 = !DILocation(line: 85, column: 11, scope: !6454)
!6476 = !DILocation(line: 86, column: 3, scope: !6454)
!6477 = !DILocation(line: 88, column: 3, scope: !6454)
!6478 = !DILocation(line: 91, column: 4, scope: !6454)
!6479 = !DILocation(line: 91, column: 11, scope: !6454)
!6480 = !DILocation(line: 92, column: 3, scope: !6454)
!6481 = !DILocation(line: 94, column: 7, scope: !6452)
!6482 = !DILocation(line: 94, column: 7, scope: !6451)
!6483 = !{i64 2155598942}
!6484 = !DILocation(line: 94, column: 7, scope: !6485)
!6485 = distinct !DILexicalBlock(scope: !6451, file: !3, line: 94, column: 7)
!6486 = !DILocation(line: 94, column: 7, scope: !6453)
!6487 = !DILocation(line: 94, column: 7, scope: !6454)
!6488 = !DILocation(line: 95, column: 4, scope: !6453)
!6489 = !DILocation(line: 96, column: 3, scope: !6454)
!6490 = !DILocation(line: 99, column: 2, scope: !6436)
!6491 = !DILocation(line: 100, column: 1, scope: !6436)
!6492 = distinct !DISubprogram(name: "might_fault", scope: !6493, file: !6493, line: 202, type: !2653, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6493 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!6494 = !DILocation(line: 202, column: 40, scope: !6492)
!6495 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !6496, file: !6496, line: 70, type: !6497, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6499)
!6496 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!6497 = !DISubroutineType(types: !6498)
!6498 = !{null, !2064, !35}
!6499 = !{!6500, !6501}
!6500 = !DILocalVariable(name: "address", arg: 1, scope: !6495, file: !6496, line: 70, type: !2064)
!6501 = !DILocalVariable(name: "size", arg: 2, scope: !6495, file: !6496, line: 70, type: !35)
!6502 = !DILocation(line: 70, column: 54, scope: !6495)
!6503 = !DILocation(line: 70, column: 70, scope: !6495)
!6504 = !DILocation(line: 72, column: 1, scope: !6495)
!6505 = distinct !DISubprogram(name: "cap_get_target_pid", scope: !3, file: !3, line: 109, type: !6506, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6509)
!6506 = !DISubroutineType(types: !6507)
!6507 = !{!22, !4968, !6508, !6508, !6508}
!6508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!6509 = !{!6510, !6511, !6512, !6513, !6514, !6515}
!6510 = !DILocalVariable(name: "pid", arg: 1, scope: !6505, file: !3, line: 109, type: !4968)
!6511 = !DILocalVariable(name: "pEp", arg: 2, scope: !6505, file: !3, line: 109, type: !6508)
!6512 = !DILocalVariable(name: "pIp", arg: 3, scope: !6505, file: !3, line: 110, type: !6508)
!6513 = !DILocalVariable(name: "pPp", arg: 4, scope: !6505, file: !3, line: 110, type: !6508)
!6514 = !DILocalVariable(name: "ret", scope: !6505, file: !3, line: 112, type: !22)
!6515 = !DILocalVariable(name: "target", scope: !6516, file: !3, line: 115, type: !6518)
!6516 = distinct !DILexicalBlock(scope: !6517, file: !3, line: 114, column: 45)
!6517 = distinct !DILexicalBlock(scope: !6505, file: !3, line: 114, column: 6)
!6518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6519, size: 64)
!6519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !704)
!6520 = !DILocation(line: 109, column: 44, scope: !6505)
!6521 = !DILocation(line: 109, column: 63, scope: !6505)
!6522 = !DILocation(line: 110, column: 24, scope: !6505)
!6523 = !DILocation(line: 110, column: 43, scope: !6505)
!6524 = !DILocation(line: 112, column: 2, scope: !6505)
!6525 = !DILocation(line: 112, column: 6, scope: !6505)
!6526 = !DILocation(line: 114, column: 6, scope: !6517)
!6527 = !DILocation(line: 114, column: 10, scope: !6517)
!6528 = !DILocation(line: 114, column: 14, scope: !6517)
!6529 = !DILocation(line: 114, column: 34, scope: !6517)
!6530 = !DILocation(line: 114, column: 21, scope: !6517)
!6531 = !DILocation(line: 114, column: 18, scope: !6517)
!6532 = !DILocation(line: 114, column: 6, scope: !6505)
!6533 = !DILocation(line: 115, column: 3, scope: !6516)
!6534 = !DILocation(line: 115, column: 29, scope: !6516)
!6535 = !DILocation(line: 117, column: 3, scope: !6516)
!6536 = !DILocation(line: 119, column: 30, scope: !6516)
!6537 = !DILocation(line: 119, column: 12, scope: !6516)
!6538 = !DILocation(line: 119, column: 10, scope: !6516)
!6539 = !DILocation(line: 120, column: 8, scope: !6540)
!6540 = distinct !DILexicalBlock(scope: !6516, file: !3, line: 120, column: 7)
!6541 = !DILocation(line: 120, column: 7, scope: !6516)
!6542 = !DILocation(line: 121, column: 8, scope: !6540)
!6543 = !DILocation(line: 121, column: 4, scope: !6540)
!6544 = !DILocation(line: 123, column: 26, scope: !6540)
!6545 = !DILocation(line: 123, column: 34, scope: !6540)
!6546 = !DILocation(line: 123, column: 39, scope: !6540)
!6547 = !DILocation(line: 123, column: 44, scope: !6540)
!6548 = !DILocation(line: 123, column: 10, scope: !6540)
!6549 = !DILocation(line: 123, column: 8, scope: !6540)
!6550 = !DILocation(line: 125, column: 3, scope: !6516)
!6551 = !DILocation(line: 126, column: 2, scope: !6517)
!6552 = !DILocation(line: 126, column: 2, scope: !6516)
!6553 = !DILocation(line: 127, column: 25, scope: !6517)
!6554 = !DILocation(line: 127, column: 34, scope: !6517)
!6555 = !DILocation(line: 127, column: 39, scope: !6517)
!6556 = !DILocation(line: 127, column: 44, scope: !6517)
!6557 = !DILocation(line: 127, column: 9, scope: !6517)
!6558 = !DILocation(line: 127, column: 7, scope: !6517)
!6559 = !DILocation(line: 129, column: 9, scope: !6505)
!6560 = !DILocation(line: 130, column: 1, scope: !6505)
!6561 = !DILocation(line: 129, column: 2, scope: !6505)
!6562 = distinct !DISubprogram(name: "copy_to_user", scope: !6563, file: !6563, line: 188, type: !6564, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6566)
!6563 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!6564 = !DISubroutineType(types: !6565)
!6565 = !{!39, !20, !2064, !39}
!6566 = !{!6567, !6568, !6569}
!6567 = !DILocalVariable(name: "to", arg: 1, scope: !6562, file: !6563, line: 188, type: !20)
!6568 = !DILocalVariable(name: "from", arg: 2, scope: !6562, file: !6563, line: 188, type: !2064)
!6569 = !DILocalVariable(name: "n", arg: 3, scope: !6562, file: !6563, line: 188, type: !39)
!6570 = !DILocation(line: 188, column: 27, scope: !6562)
!6571 = !DILocation(line: 188, column: 43, scope: !6562)
!6572 = !DILocation(line: 188, column: 63, scope: !6562)
!6573 = !DILocation(line: 190, column: 22, scope: !6574)
!6574 = distinct !DILexicalBlock(scope: !6562, file: !6563, line: 190, column: 6)
!6575 = !DILocation(line: 190, column: 28, scope: !6574)
!6576 = !DILocation(line: 190, column: 6, scope: !6574)
!6577 = !DILocation(line: 190, column: 6, scope: !6562)
!6578 = !DILocation(line: 191, column: 21, scope: !6574)
!6579 = !DILocation(line: 191, column: 25, scope: !6574)
!6580 = !DILocation(line: 191, column: 31, scope: !6574)
!6581 = !DILocation(line: 191, column: 7, scope: !6574)
!6582 = !DILocation(line: 191, column: 5, scope: !6574)
!6583 = !DILocation(line: 191, column: 3, scope: !6574)
!6584 = !DILocation(line: 192, column: 9, scope: !6562)
!6585 = !DILocation(line: 192, column: 2, scope: !6562)
!6586 = !DILocation(line: 41, column: 2, scope: !5840)
!6587 = !DILocation(line: 41, column: 7, scope: !5840)
!6588 = !DILocation(line: 43, column: 2, scope: !5844)
!6589 = !DILocation(line: 43, column: 2, scope: !5846)
!6590 = !{i8 0, i8 2}
!6591 = !DILocation(line: 43, column: 2, scope: !6592)
!6592 = distinct !DILexicalBlock(scope: !5846, file: !3, line: 43, column: 2)
!6593 = !DILocation(line: 0, scope: !6592)
!6594 = !DILocation(line: 43, column: 2, scope: !6595)
!6595 = distinct !DILexicalBlock(scope: !6592, file: !3, line: 43, column: 2)
!6596 = !DILocation(line: 43, column: 2, scope: !5847)
!6597 = !DILocation(line: 43, column: 2, scope: !6598)
!6598 = distinct !DILexicalBlock(scope: !5847, file: !3, line: 43, column: 2)
!6599 = !DILocation(line: 43, column: 2, scope: !6600)
!6600 = distinct !DILexicalBlock(scope: !6598, file: !3, line: 43, column: 2)
!6601 = !DILocation(line: 43, column: 2, scope: !6602)
!6602 = distinct !DILexicalBlock(scope: !6598, file: !3, line: 43, column: 2)
!6603 = !DILocation(line: 43, column: 2, scope: !6604)
!6604 = distinct !DILexicalBlock(scope: !6602, file: !3, line: 43, column: 2)
!6605 = !DILocation(line: 43, column: 2, scope: !5840)
!6606 = !DILocation(line: 45, column: 1, scope: !5840)
!6607 = !DILocation(line: 65, column: 2, scope: !5856)
!6608 = !DILocation(line: 65, column: 7, scope: !5856)
!6609 = !DILocation(line: 67, column: 2, scope: !5860)
!6610 = !DILocation(line: 67, column: 2, scope: !5862)
!6611 = !DILocation(line: 67, column: 2, scope: !6612)
!6612 = distinct !DILexicalBlock(scope: !5862, file: !3, line: 67, column: 2)
!6613 = !DILocation(line: 0, scope: !6612)
!6614 = !DILocation(line: 67, column: 2, scope: !6615)
!6615 = distinct !DILexicalBlock(scope: !6612, file: !3, line: 67, column: 2)
!6616 = !DILocation(line: 67, column: 2, scope: !5863)
!6617 = !DILocation(line: 67, column: 2, scope: !6618)
!6618 = distinct !DILexicalBlock(scope: !5863, file: !3, line: 67, column: 2)
!6619 = !DILocation(line: 67, column: 2, scope: !6620)
!6620 = distinct !DILexicalBlock(scope: !6618, file: !3, line: 67, column: 2)
!6621 = !DILocation(line: 67, column: 2, scope: !6622)
!6622 = distinct !DILexicalBlock(scope: !6618, file: !3, line: 67, column: 2)
!6623 = !DILocation(line: 67, column: 2, scope: !6624)
!6624 = distinct !DILexicalBlock(scope: !6622, file: !3, line: 67, column: 2)
!6625 = !DILocation(line: 67, column: 2, scope: !5856)
!6626 = !DILocation(line: 69, column: 1, scope: !5856)
!6627 = distinct !DISubprogram(name: "kmsan_copy_to_user", scope: !6496, file: !6496, line: 76, type: !6628, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6630)
!6628 = !DISubroutineType(types: !6629)
!6629 = !{null, !20, !2064, !35, !35}
!6630 = !{!6631, !6632, !6633, !6634}
!6631 = !DILocalVariable(name: "to", arg: 1, scope: !6627, file: !6496, line: 76, type: !20)
!6632 = !DILocalVariable(name: "from", arg: 2, scope: !6627, file: !6496, line: 76, type: !2064)
!6633 = !DILocalVariable(name: "to_copy", arg: 3, scope: !6627, file: !6496, line: 77, type: !35)
!6634 = !DILocalVariable(name: "left", arg: 4, scope: !6627, file: !6496, line: 77, type: !35)
!6635 = !DILocation(line: 76, column: 52, scope: !6627)
!6636 = !DILocation(line: 76, column: 68, scope: !6627)
!6637 = !DILocation(line: 77, column: 18, scope: !6627)
!6638 = !DILocation(line: 77, column: 34, scope: !6627)
!6639 = !DILocation(line: 79, column: 1, scope: !6627)
!6640 = !DISubprogram(name: "_printk", scope: !6641, file: !6641, line: 153, type: !6642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6641 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6642 = !DISubroutineType(types: !6643)
!6643 = !{!22, !16, null}
!6644 = !DISubprogram(name: "__get_task_comm", scope: !705, file: !705, line: 2014, type: !6645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6645 = !DISubroutineType(types: !6646)
!6646 = !{!432, !432, !35, !703}
!6647 = distinct !DISubprogram(name: "get_current", scope: !6648, file: !6648, line: 39, type: !6649, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6651)
!6648 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6649 = !DISubroutineType(types: !6650)
!6650 = !{!703}
!6651 = !{!6652, !6654, !6656}
!6652 = !DILocalVariable(name: "pscr_ret__", scope: !6653, file: !6648, line: 41, type: !703)
!6653 = distinct !DILexicalBlock(scope: !6647, file: !6648, line: 41, column: 9)
!6654 = !DILocalVariable(name: "__vpp_verify", scope: !6655, file: !6648, line: 41, type: !2064)
!6655 = distinct !DILexicalBlock(scope: !6653, file: !6648, line: 41, column: 9)
!6656 = !DILocalVariable(name: "pfo_val__", scope: !6657, file: !6648, line: 41, type: !310)
!6657 = distinct !DILexicalBlock(scope: !6653, file: !6648, line: 41, column: 9)
!6658 = !DILocation(line: 41, column: 9, scope: !6653)
!6659 = !DILocation(line: 41, column: 9, scope: !6655)
!6660 = !DILocation(line: 41, column: 9, scope: !6657)
!6661 = !{i64 2148224781}
!6662 = !DILocation(line: 41, column: 9, scope: !6647)
!6663 = !DILocation(line: 41, column: 2, scope: !6647)
!6664 = distinct !DISubprogram(name: "task_pid_vnr", scope: !705, file: !705, line: 1590, type: !6665, scopeLine: 1591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6667)
!6665 = !DISubroutineType(types: !6666)
!6666 = !{!4968, !703}
!6667 = !{!6668}
!6668 = !DILocalVariable(name: "tsk", arg: 1, scope: !6664, file: !705, line: 1590, type: !703)
!6669 = !DILocation(line: 1590, column: 54, scope: !6664)
!6670 = !DILocation(line: 1592, column: 26, scope: !6664)
!6671 = !DILocation(line: 1592, column: 9, scope: !6664)
!6672 = !DILocation(line: 1592, column: 2, scope: !6664)
!6673 = !DISubprogram(name: "find_task_by_vpid", scope: !705, file: !705, line: 1989, type: !6674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6674 = !DISubroutineType(types: !6675)
!6675 = !{!703, !4968}
!6676 = !DISubprogram(name: "security_capget", scope: !2068, file: !2068, line: 275, type: !6677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6677 = !DISubroutineType(types: !6678)
!6678 = !{!22, !6518, !6508, !6508, !6508}
!6679 = !DISubprogram(name: "__task_pid_nr_ns", scope: !705, file: !705, line: 1578, type: !6680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6680 = !DISubroutineType(types: !6681)
!6681 = !{!4968, !703, !107, !1093}
!6682 = distinct !DISubprogram(name: "check_copy_size", scope: !5872, file: !5872, line: 237, type: !6683, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6685)
!6683 = !DISubroutineType(types: !6684)
!6684 = !{!421, !2064, !35, !421}
!6685 = !{!6686, !6687, !6688, !6689, !6690, !6693}
!6686 = !DILocalVariable(name: "addr", arg: 1, scope: !6682, file: !5872, line: 237, type: !2064)
!6687 = !DILocalVariable(name: "bytes", arg: 2, scope: !6682, file: !5872, line: 237, type: !35)
!6688 = !DILocalVariable(name: "is_source", arg: 3, scope: !6682, file: !5872, line: 237, type: !421)
!6689 = !DILocalVariable(name: "sz", scope: !6682, file: !5872, line: 239, type: !22)
!6690 = !DILocalVariable(name: "__ret_warn_on", scope: !6691, file: !5872, line: 249, type: !22)
!6691 = distinct !DILexicalBlock(scope: !6692, file: !5872, line: 249, column: 6)
!6692 = distinct !DILexicalBlock(scope: !6682, file: !5872, line: 249, column: 6)
!6693 = !DILocalVariable(name: "__flags", scope: !6694, file: !5872, line: 249, type: !22)
!6694 = distinct !DILexicalBlock(scope: !6695, file: !5872, line: 249, column: 6)
!6695 = distinct !DILexicalBlock(scope: !6691, file: !5872, line: 249, column: 6)
!6696 = !DILocation(line: 237, column: 29, scope: !6682)
!6697 = !DILocation(line: 237, column: 42, scope: !6682)
!6698 = !DILocation(line: 237, column: 54, scope: !6682)
!6699 = !DILocation(line: 239, column: 2, scope: !6682)
!6700 = !DILocation(line: 239, column: 6, scope: !6682)
!6701 = !DILocation(line: 239, column: 33, scope: !6682)
!6702 = !DILocation(line: 239, column: 11, scope: !6682)
!6703 = !DILocation(line: 240, column: 6, scope: !6704)
!6704 = distinct !DILexicalBlock(scope: !6682, file: !5872, line: 240, column: 6)
!6705 = !DILocation(line: 0, scope: !6704)
!6706 = !DILocation(line: 240, column: 6, scope: !6682)
!6707 = !DILocation(line: 241, column: 29, scope: !6708)
!6708 = distinct !DILexicalBlock(scope: !6709, file: !5872, line: 241, column: 7)
!6709 = distinct !DILexicalBlock(scope: !6704, file: !5872, line: 240, column: 39)
!6710 = !DILocation(line: 241, column: 8, scope: !6708)
!6711 = !DILocation(line: 241, column: 7, scope: !6709)
!6712 = !DILocation(line: 242, column: 18, scope: !6708)
!6713 = !DILocation(line: 242, column: 22, scope: !6708)
!6714 = !DILocation(line: 242, column: 4, scope: !6708)
!6715 = !DILocation(line: 243, column: 12, scope: !6716)
!6716 = distinct !DILexicalBlock(scope: !6708, file: !5872, line: 243, column: 12)
!6717 = !DILocation(line: 243, column: 12, scope: !6708)
!6718 = !DILocation(line: 244, column: 4, scope: !6716)
!6719 = !{i32 1639192}
!6720 = !DILocation(line: 246, column: 4, scope: !6716)
!6721 = !{i32 1639221}
!6722 = !DILocation(line: 247, column: 3, scope: !6709)
!6723 = !DILocation(line: 249, column: 6, scope: !6691)
!6724 = !DILocation(line: 249, column: 6, scope: !6695)
!6725 = !DILocation(line: 249, column: 6, scope: !6694)
!6726 = !DILocation(line: 249, column: 6, scope: !6727)
!6727 = distinct !DILexicalBlock(scope: !6694, file: !5872, line: 249, column: 6)
!6728 = !DILocation(line: 249, column: 6, scope: !6729)
!6729 = distinct !DILexicalBlock(scope: !6694, file: !5872, line: 249, column: 6)
!6730 = !{i64 2149610115, i64 2149610144, i64 2149610190, i64 2149610248, i64 2149610302, i64 2149610356, i64 2149610411, i64 2149610442, i64 2149610750, i64 2149610756, i64 2149610803, i64 2149610826, i64 2149610852}
!6731 = !DILocation(line: 249, column: 6, scope: !6732)
!6732 = distinct !DILexicalBlock(scope: !6694, file: !5872, line: 249, column: 6)
!6733 = !DILocation(line: 249, column: 6, scope: !6692)
!6734 = !DILocation(line: 249, column: 6, scope: !6682)
!6735 = !DILocation(line: 250, column: 3, scope: !6692)
!6736 = !DILocation(line: 251, column: 20, scope: !6682)
!6737 = !DILocation(line: 251, column: 26, scope: !6682)
!6738 = !DILocation(line: 251, column: 33, scope: !6682)
!6739 = !DILocation(line: 251, column: 2, scope: !6682)
!6740 = !DILocation(line: 252, column: 2, scope: !6682)
!6741 = !DILocation(line: 253, column: 1, scope: !6682)
!6742 = !DISubprogram(name: "_copy_to_user", scope: !6563, file: !6563, line: 176, type: !6564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6743 = distinct !DISubprogram(name: "copy_overflow", scope: !5872, file: !5872, line: 230, type: !6744, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6746)
!6744 = !DISubroutineType(types: !6745)
!6745 = !{null, !22, !39}
!6746 = !{!6747, !6748}
!6747 = !DILocalVariable(name: "size", arg: 1, scope: !6743, file: !5872, line: 230, type: !22)
!6748 = !DILocalVariable(name: "count", arg: 2, scope: !6743, file: !5872, line: 230, type: !39)
!6749 = !DILocation(line: 230, column: 38, scope: !6743)
!6750 = !DILocation(line: 230, column: 58, scope: !6743)
!6751 = !DILocation(line: 233, column: 19, scope: !6752)
!6752 = distinct !DILexicalBlock(scope: !6743, file: !5872, line: 232, column: 6)
!6753 = !DILocation(line: 233, column: 25, scope: !6752)
!6754 = !DILocation(line: 233, column: 3, scope: !6752)
!6755 = !DILocation(line: 234, column: 1, scope: !6743)
!6756 = !DISubprogram(name: "__bad_copy_from", scope: !5872, file: !5872, line: 224, type: !2653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6757 = !DISubprogram(name: "__bad_copy_to", scope: !5872, file: !5872, line: 226, type: !2653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6758 = distinct !DISubprogram(name: "check_object_size", scope: !5872, file: !5872, line: 218, type: !6759, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6761)
!6759 = !DISubroutineType(types: !6760)
!6760 = !{null, !2064, !39, !421}
!6761 = !{!6762, !6763, !6764}
!6762 = !DILocalVariable(name: "ptr", arg: 1, scope: !6758, file: !5872, line: 218, type: !2064)
!6763 = !DILocalVariable(name: "n", arg: 2, scope: !6758, file: !5872, line: 218, type: !39)
!6764 = !DILocalVariable(name: "to_user", arg: 3, scope: !6758, file: !5872, line: 219, type: !421)
!6765 = !DILocation(line: 218, column: 50, scope: !6758)
!6766 = !DILocation(line: 218, column: 69, scope: !6758)
!6767 = !DILocation(line: 219, column: 15, scope: !6758)
!6768 = !DILocation(line: 220, column: 3, scope: !6758)
!6769 = !DISubprogram(name: "__copy_overflow", scope: !5872, file: !5872, line: 228, type: !6744, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6770 = distinct !DISubprogram(name: "__do_sys_capset", scope: !3, file: !3, line: 220, type: !6771, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6774)
!6771 = !DISubroutineType(types: !6772)
!6772 = !{!666, !688, !6773}
!6773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !695)
!6774 = !{!6775, !6776, !6777, !6778, !6779, !6780, !6781, !6782, !6783, !6785, !6786, !6787, !6791, !6792, !6794}
!6775 = !DILocalVariable(name: "header", arg: 1, scope: !6770, file: !3, line: 220, type: !688)
!6776 = !DILocalVariable(name: "data", arg: 2, scope: !6770, file: !3, line: 220, type: !6773)
!6777 = !DILocalVariable(name: "kdata", scope: !6770, file: !3, line: 222, type: !6334)
!6778 = !DILocalVariable(name: "tocopy", scope: !6770, file: !3, line: 223, type: !7)
!6779 = !DILocalVariable(name: "copybytes", scope: !6770, file: !3, line: 223, type: !7)
!6780 = !DILocalVariable(name: "inheritable", scope: !6770, file: !3, line: 224, type: !305)
!6781 = !DILocalVariable(name: "permitted", scope: !6770, file: !3, line: 224, type: !305)
!6782 = !DILocalVariable(name: "effective", scope: !6770, file: !3, line: 224, type: !305)
!6783 = !DILocalVariable(name: "new", scope: !6770, file: !3, line: 225, type: !6784)
!6784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!6785 = !DILocalVariable(name: "ret", scope: !6770, file: !3, line: 226, type: !22)
!6786 = !DILocalVariable(name: "pid", scope: !6770, file: !3, line: 227, type: !4968)
!6787 = !DILocalVariable(name: "__ret_gu", scope: !6788, file: !3, line: 233, type: !22)
!6788 = distinct !DILexicalBlock(scope: !6789, file: !3, line: 233, column: 6)
!6789 = distinct !DILexicalBlock(scope: !6790, file: !3, line: 233, column: 6)
!6790 = distinct !DILexicalBlock(scope: !6770, file: !3, line: 233, column: 6)
!6791 = !DILocalVariable(name: "__val_gu", scope: !6788, file: !3, line: 233, type: !7)
!6792 = !DILocalVariable(name: "__tmp", scope: !6793, file: !3, line: 233, type: !310)
!6793 = distinct !DILexicalBlock(scope: !6788, file: !3, line: 233, column: 6)
!6794 = !DILabel(scope: !6770, name: "error", file: !3, line: 264)
!6795 = !DILocation(line: 220, column: 1, scope: !6770)
!6796 = !DILocation(line: 222, column: 2, scope: !6770)
!6797 = !DILocation(line: 222, column: 32, scope: !6770)
!6798 = !DILocation(line: 223, column: 2, scope: !6770)
!6799 = !DILocation(line: 223, column: 11, scope: !6770)
!6800 = !DILocation(line: 223, column: 19, scope: !6770)
!6801 = !DILocation(line: 224, column: 2, scope: !6770)
!6802 = !DILocation(line: 224, column: 15, scope: !6770)
!6803 = !DILocation(line: 224, column: 28, scope: !6770)
!6804 = !DILocation(line: 224, column: 39, scope: !6770)
!6805 = !DILocation(line: 225, column: 2, scope: !6770)
!6806 = !DILocation(line: 225, column: 15, scope: !6770)
!6807 = !DILocation(line: 226, column: 2, scope: !6770)
!6808 = !DILocation(line: 226, column: 6, scope: !6770)
!6809 = !DILocation(line: 227, column: 2, scope: !6770)
!6810 = !DILocation(line: 227, column: 8, scope: !6770)
!6811 = !DILocation(line: 229, column: 27, scope: !6770)
!6812 = !DILocation(line: 229, column: 8, scope: !6770)
!6813 = !DILocation(line: 229, column: 6, scope: !6770)
!6814 = !DILocation(line: 230, column: 6, scope: !6815)
!6815 = distinct !DILexicalBlock(scope: !6770, file: !3, line: 230, column: 6)
!6816 = !DILocation(line: 230, column: 10, scope: !6815)
!6817 = !DILocation(line: 230, column: 6, scope: !6770)
!6818 = !DILocation(line: 231, column: 10, scope: !6815)
!6819 = !DILocation(line: 231, column: 3, scope: !6815)
!6820 = !DILocation(line: 233, column: 6, scope: !6789)
!6821 = !DILocation(line: 233, column: 6, scope: !6788)
!6822 = !{i64 2155621967}
!6823 = !DILocation(line: 233, column: 6, scope: !6793)
!6824 = !DILocation(line: 233, column: 6, scope: !6790)
!6825 = !DILocation(line: 233, column: 6, scope: !6770)
!6826 = !DILocation(line: 234, column: 3, scope: !6790)
!6827 = !DILocation(line: 237, column: 6, scope: !6828)
!6828 = distinct !DILexicalBlock(scope: !6770, file: !3, line: 237, column: 6)
!6829 = !DILocation(line: 237, column: 10, scope: !6828)
!6830 = !DILocation(line: 237, column: 15, scope: !6828)
!6831 = !DILocation(line: 237, column: 18, scope: !6828)
!6832 = !DILocation(line: 237, column: 38, scope: !6828)
!6833 = !DILocation(line: 237, column: 25, scope: !6828)
!6834 = !DILocation(line: 237, column: 22, scope: !6828)
!6835 = !DILocation(line: 237, column: 6, scope: !6770)
!6836 = !DILocation(line: 238, column: 3, scope: !6828)
!6837 = !DILocation(line: 240, column: 14, scope: !6770)
!6838 = !DILocation(line: 240, column: 21, scope: !6770)
!6839 = !DILocation(line: 240, column: 12, scope: !6770)
!6840 = !DILocation(line: 241, column: 6, scope: !6841)
!6841 = distinct !DILexicalBlock(scope: !6770, file: !3, line: 241, column: 6)
!6842 = !DILocation(line: 241, column: 16, scope: !6841)
!6843 = !DILocation(line: 241, column: 6, scope: !6770)
!6844 = !DILocation(line: 242, column: 3, scope: !6841)
!6845 = !DILocation(line: 244, column: 29, scope: !6846)
!6846 = distinct !DILexicalBlock(scope: !6770, file: !3, line: 244, column: 6)
!6847 = !DILocation(line: 244, column: 35, scope: !6846)
!6848 = !DILocation(line: 244, column: 6, scope: !6846)
!6849 = !DILocation(line: 244, column: 6, scope: !6770)
!6850 = !DILocation(line: 245, column: 3, scope: !6846)
!6851 = !DILocation(line: 247, column: 16, scope: !6770)
!6852 = !DILocation(line: 247, column: 30, scope: !6770)
!6853 = !DILocation(line: 247, column: 39, scope: !6770)
!6854 = !DILocation(line: 247, column: 52, scope: !6770)
!6855 = !DILocation(line: 247, column: 61, scope: !6770)
!6856 = !DILocation(line: 248, column: 16, scope: !6770)
!6857 = !DILocation(line: 248, column: 30, scope: !6770)
!6858 = !DILocation(line: 248, column: 39, scope: !6770)
!6859 = !DILocation(line: 248, column: 52, scope: !6770)
!6860 = !DILocation(line: 248, column: 61, scope: !6770)
!6861 = !DILocation(line: 249, column: 16, scope: !6770)
!6862 = !DILocation(line: 249, column: 30, scope: !6770)
!6863 = !DILocation(line: 249, column: 39, scope: !6770)
!6864 = !DILocation(line: 249, column: 52, scope: !6770)
!6865 = !DILocation(line: 249, column: 61, scope: !6770)
!6866 = !DILocation(line: 251, column: 8, scope: !6770)
!6867 = !DILocation(line: 251, column: 6, scope: !6770)
!6868 = !DILocation(line: 252, column: 7, scope: !6869)
!6869 = distinct !DILexicalBlock(scope: !6770, file: !3, line: 252, column: 6)
!6870 = !DILocation(line: 252, column: 6, scope: !6770)
!6871 = !DILocation(line: 253, column: 3, scope: !6869)
!6872 = !DILocation(line: 255, column: 24, scope: !6770)
!6873 = !DILocation(line: 255, column: 29, scope: !6874)
!6874 = distinct !DILexicalBlock(scope: !6770, file: !3, line: 255, column: 29)
!6875 = !DILocation(line: 255, column: 29, scope: !6876)
!6876 = distinct !DILexicalBlock(scope: !6874, file: !3, line: 255, column: 29)
!6877 = !DILocation(line: 255, column: 8, scope: !6770)
!6878 = !DILocation(line: 255, column: 6, scope: !6770)
!6879 = !DILocation(line: 257, column: 6, scope: !6880)
!6880 = distinct !DILexicalBlock(scope: !6770, file: !3, line: 257, column: 6)
!6881 = !DILocation(line: 257, column: 10, scope: !6880)
!6882 = !DILocation(line: 257, column: 6, scope: !6770)
!6883 = !DILocation(line: 258, column: 3, scope: !6880)
!6884 = !DILocation(line: 260, column: 19, scope: !6770)
!6885 = !DILocation(line: 260, column: 24, scope: !6886)
!6886 = distinct !DILexicalBlock(scope: !6770, file: !3, line: 260, column: 24)
!6887 = !DILocation(line: 260, column: 24, scope: !6888)
!6888 = distinct !DILexicalBlock(scope: !6886, file: !3, line: 260, column: 24)
!6889 = !DILocation(line: 260, column: 2, scope: !6770)
!6890 = !DILocation(line: 262, column: 22, scope: !6770)
!6891 = !DILocation(line: 262, column: 9, scope: !6770)
!6892 = !DILocation(line: 262, column: 2, scope: !6770)
!6893 = !DILocation(line: 264, column: 1, scope: !6770)
!6894 = !DILocation(line: 265, column: 14, scope: !6770)
!6895 = !DILocation(line: 265, column: 2, scope: !6770)
!6896 = !DILocation(line: 266, column: 9, scope: !6770)
!6897 = !DILocation(line: 266, column: 2, scope: !6770)
!6898 = !DILocation(line: 267, column: 1, scope: !6770)
!6899 = distinct !DISubprogram(name: "copy_from_user", scope: !6563, file: !6563, line: 180, type: !6564, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6900)
!6900 = !{!6901, !6902, !6903}
!6901 = !DILocalVariable(name: "to", arg: 1, scope: !6899, file: !6563, line: 180, type: !20)
!6902 = !DILocalVariable(name: "from", arg: 2, scope: !6899, file: !6563, line: 180, type: !2064)
!6903 = !DILocalVariable(name: "n", arg: 3, scope: !6899, file: !6563, line: 180, type: !39)
!6904 = !DILocation(line: 180, column: 22, scope: !6899)
!6905 = !DILocation(line: 180, column: 45, scope: !6899)
!6906 = !DILocation(line: 180, column: 65, scope: !6899)
!6907 = !DILocation(line: 182, column: 22, scope: !6908)
!6908 = distinct !DILexicalBlock(scope: !6899, file: !6563, line: 182, column: 6)
!6909 = !DILocation(line: 182, column: 26, scope: !6908)
!6910 = !DILocation(line: 182, column: 6, scope: !6908)
!6911 = !DILocation(line: 182, column: 6, scope: !6899)
!6912 = !DILocation(line: 183, column: 23, scope: !6908)
!6913 = !DILocation(line: 183, column: 27, scope: !6908)
!6914 = !DILocation(line: 183, column: 33, scope: !6908)
!6915 = !DILocation(line: 183, column: 7, scope: !6908)
!6916 = !DILocation(line: 183, column: 5, scope: !6908)
!6917 = !DILocation(line: 183, column: 3, scope: !6908)
!6918 = !DILocation(line: 184, column: 9, scope: !6899)
!6919 = !DILocation(line: 184, column: 2, scope: !6899)
!6920 = distinct !DISubprogram(name: "mk_kernel_cap", scope: !3, file: !3, line: 197, type: !6921, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6923)
!6921 = !DISubroutineType(types: !6922)
!6922 = !{!305, !377, !377}
!6923 = !{!6924, !6925}
!6924 = !DILocalVariable(name: "low", arg: 1, scope: !6920, file: !3, line: 197, type: !377)
!6925 = !DILocalVariable(name: "high", arg: 2, scope: !6920, file: !3, line: 197, type: !377)
!6926 = !DILocation(line: 197, column: 39, scope: !6920)
!6927 = !DILocation(line: 197, column: 48, scope: !6920)
!6928 = !DILocation(line: 199, column: 24, scope: !6920)
!6929 = !DILocation(line: 199, column: 27, scope: !6920)
!6930 = !DILocation(line: 199, column: 39, scope: !6920)
!6931 = !DILocation(line: 199, column: 34, scope: !6920)
!6932 = !DILocation(line: 199, column: 44, scope: !6920)
!6933 = !DILocation(line: 199, column: 31, scope: !6920)
!6934 = !DILocation(line: 199, column: 52, scope: !6920)
!6935 = !DILocation(line: 199, column: 2, scope: !6920)
!6936 = !DISubprogram(name: "prepare_creds", scope: !271, file: !271, line: 153, type: !6937, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6937 = !DISubroutineType(types: !6938)
!6938 = !{!6784}
!6939 = !DISubprogram(name: "security_capset", scope: !2068, file: !2068, line: 279, type: !6940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6940 = !DISubroutineType(types: !6941)
!6941 = !{!22, !6784, !268, !6942, !6942, !6942}
!6942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6943, size: 64)
!6943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!6944 = distinct !DISubprogram(name: "audit_log_capset", scope: !6945, file: !6945, line: 502, type: !6946, scopeLine: 504, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6948)
!6945 = !DIFile(filename: "./include/linux/audit.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51efc630de17afc22cb4c49faf2d3079")
!6946 = !DISubroutineType(types: !6947)
!6947 = !{null, !268, !268}
!6948 = !{!6949, !6950}
!6949 = !DILocalVariable(name: "new", arg: 1, scope: !6944, file: !6945, line: 502, type: !268)
!6950 = !DILocalVariable(name: "old", arg: 2, scope: !6944, file: !6945, line: 503, type: !268)
!6951 = !DILocation(line: 502, column: 56, scope: !6944)
!6952 = !DILocation(line: 503, column: 27, scope: !6944)
!6953 = !DILocation(line: 505, column: 6, scope: !6954)
!6954 = distinct !DILexicalBlock(scope: !6944, file: !6945, line: 505, column: 6)
!6955 = !DILocation(line: 505, column: 6, scope: !6944)
!6956 = !DILocation(line: 506, column: 22, scope: !6954)
!6957 = !DILocation(line: 506, column: 27, scope: !6954)
!6958 = !DILocation(line: 506, column: 3, scope: !6954)
!6959 = !DILocation(line: 507, column: 1, scope: !6944)
!6960 = !DISubprogram(name: "commit_creds", scope: !271, file: !271, line: 155, type: !6961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6961 = !DISubroutineType(types: !6962)
!6962 = !{!22, !6784}
!6963 = !DISubprogram(name: "abort_creds", scope: !271, file: !271, line: 156, type: !6964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6964 = !DISubroutineType(types: !6965)
!6965 = !{null, !6784}
!6966 = !DISubprogram(name: "_copy_from_user", scope: !6563, file: !6563, line: 158, type: !6564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6967 = distinct !DISubprogram(name: "audit_dummy_context", scope: !6945, file: !6945, line: 318, type: !2054, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6968)
!6968 = !{!6969}
!6969 = !DILocalVariable(name: "p", scope: !6967, file: !6945, line: 320, type: !20)
!6970 = !DILocation(line: 320, column: 2, scope: !6967)
!6971 = !DILocation(line: 320, column: 8, scope: !6967)
!6972 = !DILocation(line: 320, column: 12, scope: !6967)
!6973 = !DILocation(line: 321, column: 10, scope: !6967)
!6974 = !DILocation(line: 321, column: 12, scope: !6967)
!6975 = !DILocation(line: 321, column: 23, scope: !6967)
!6976 = !DILocation(line: 321, column: 15, scope: !6967)
!6977 = !DILocation(line: 322, column: 1, scope: !6967)
!6978 = !DILocation(line: 321, column: 2, scope: !6967)
!6979 = !DISubprogram(name: "__audit_log_capset", scope: !6945, file: !6945, line: 416, type: !6946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6980 = distinct !DISubprogram(name: "audit_context", scope: !6945, file: !6945, line: 313, type: !6981, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6981 = !DISubroutineType(types: !6982)
!6982 = !{!5312}
!6983 = !DILocation(line: 315, column: 9, scope: !6980)
!6984 = !DILocation(line: 315, column: 18, scope: !6980)
!6985 = !DILocation(line: 315, column: 2, scope: !6980)
!6986 = !DISubprogram(name: "__rcu_read_lock", scope: !5967, file: !5967, line: 74, type: !2653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6987 = !DISubprogram(name: "__rcu_read_unlock", scope: !5967, file: !5967, line: 75, type: !2653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6988 = distinct !DISubprogram(name: "from_kuid", scope: !284, file: !284, line: 153, type: !6989, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6991)
!6989 = !DISubroutineType(types: !6990)
!6990 = !{!288, !513, !283}
!6991 = !{!6992, !6993}
!6992 = !DILocalVariable(name: "to", arg: 1, scope: !6988, file: !284, line: 153, type: !513)
!6993 = !DILocalVariable(name: "kuid", arg: 2, scope: !6988, file: !284, line: 153, type: !283)
!6994 = !DILocation(line: 153, column: 54, scope: !6988)
!6995 = !DILocation(line: 153, column: 65, scope: !6988)
!6996 = !DILocation(line: 155, column: 9, scope: !6988)
!6997 = !DILocation(line: 155, column: 2, scope: !6988)
!6998 = distinct !DISubprogram(name: "__vfsuid_val", scope: !1282, file: !1282, line: 28, type: !6999, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7001)
!6999 = !DISubroutineType(types: !7000)
!7000 = !{!288, !1281}
!7001 = !{!7002}
!7002 = !DILocalVariable(name: "uid", arg: 1, scope: !6998, file: !1282, line: 28, type: !1281)
!7003 = !DILocation(line: 28, column: 43, scope: !6998)
!7004 = !DILocation(line: 30, column: 13, scope: !6998)
!7005 = !DILocation(line: 30, column: 2, scope: !6998)
!7006 = distinct !DISubprogram(name: "__kuid_val", scope: !284, file: !284, line: 34, type: !7007, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7009)
!7007 = !DISubroutineType(types: !7008)
!7008 = !{!288, !283}
!7009 = !{!7010}
!7010 = !DILocalVariable(name: "uid", arg: 1, scope: !7006, file: !284, line: 34, type: !283)
!7011 = !DILocation(line: 34, column: 39, scope: !7006)
!7012 = !DILocation(line: 36, column: 13, scope: !7006)
!7013 = !DILocation(line: 36, column: 2, scope: !7006)
!7014 = !DISubprogram(name: "make_vfsuid", scope: !1282, file: !1282, line: 118, type: !7015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7015 = !DISubroutineType(types: !7016)
!7016 = !{!1281, !1226, !513, !283}
!7017 = distinct !DISubprogram(name: "i_user_ns", scope: !239, file: !239, line: 1324, type: !7018, scopeLine: 1325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7020)
!7018 = !DISubroutineType(types: !7019)
!7019 = !{!513, !4482}
!7020 = !{!7021}
!7021 = !DILocalVariable(name: "inode", arg: 1, scope: !7017, file: !239, line: 1324, type: !4482)
!7022 = !DILocation(line: 1324, column: 68, scope: !7017)
!7023 = !DILocation(line: 1326, column: 9, scope: !7017)
!7024 = !DILocation(line: 1326, column: 16, scope: !7017)
!7025 = !DILocation(line: 1326, column: 22, scope: !7017)
!7026 = !DILocation(line: 1326, column: 2, scope: !7017)
!7027 = distinct !DISubprogram(name: "from_kgid", scope: !284, file: !284, line: 158, type: !7028, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7030)
!7028 = !DISubroutineType(types: !7029)
!7029 = !{!295, !513, !291}
!7030 = !{!7031, !7032}
!7031 = !DILocalVariable(name: "to", arg: 1, scope: !7027, file: !284, line: 158, type: !513)
!7032 = !DILocalVariable(name: "kgid", arg: 2, scope: !7027, file: !284, line: 158, type: !291)
!7033 = !DILocation(line: 158, column: 54, scope: !7027)
!7034 = !DILocation(line: 158, column: 65, scope: !7027)
!7035 = !DILocation(line: 160, column: 9, scope: !7027)
!7036 = !DILocation(line: 160, column: 2, scope: !7027)
!7037 = distinct !DISubprogram(name: "__vfsgid_val", scope: !1282, file: !1282, line: 33, type: !7038, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7040)
!7038 = !DISubroutineType(types: !7039)
!7039 = !{!295, !1291}
!7040 = !{!7041}
!7041 = !DILocalVariable(name: "gid", arg: 1, scope: !7037, file: !1282, line: 33, type: !1291)
!7042 = !DILocation(line: 33, column: 43, scope: !7037)
!7043 = !DILocation(line: 35, column: 13, scope: !7037)
!7044 = !DILocation(line: 35, column: 2, scope: !7037)
!7045 = distinct !DISubprogram(name: "__kgid_val", scope: !284, file: !284, line: 39, type: !7046, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7048)
!7046 = !DISubroutineType(types: !7047)
!7047 = !{!295, !291}
!7048 = !{!7049}
!7049 = !DILocalVariable(name: "gid", arg: 1, scope: !7045, file: !284, line: 39, type: !291)
!7050 = !DILocation(line: 39, column: 39, scope: !7045)
!7051 = !DILocation(line: 41, column: 13, scope: !7045)
!7052 = !DILocation(line: 41, column: 2, scope: !7045)
!7053 = !DISubprogram(name: "make_vfsgid", scope: !1282, file: !1282, line: 121, type: !7054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7054 = !DISubroutineType(types: !7055)
!7055 = !{!1291, !1226, !513, !291}
